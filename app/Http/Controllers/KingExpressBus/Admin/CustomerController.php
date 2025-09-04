<?php

namespace App\Http\Controllers\KingExpressBus\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use Throwable;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Mail;
use App\Mail\KingExpressBus\CustomerRegistrationSuccess;
use App\Mail\KingExpressBus\AdminNewCustomerNotification;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $query = DB::table('customers')
            ->leftJoin('trainings', 'customers.training_id', '=', 'trainings.id')
            ->select('customers.id', 'customers.full_name_parent', 'customers.phone', 'customers.full_name_children', 'customers.created_at', 'trainings.title as training_title', 'customers.status');

        // Lọc theo trạng thái
        if ($request->filled('status')) {
            $query->where('customers.status', $request->input('status'));
        }

        // Lọc theo khoảng ngày
        if ($request->filled('date_range')) {
            try {
                $dateParts = explode(' - ', $request->input('date_range'));
                if (count($dateParts) == 2) {
                    $startDate = \Carbon\Carbon::createFromFormat('d/m/Y', $dateParts[0])->startOfDay();
                    $endDate = \Carbon\Carbon::createFromFormat('d/m/Y', $dateParts[1])->endOfDay();
                    $query->whereBetween('customers.created_at', [$startDate, $endDate]);
                }
            } catch (\Exception $e) {
                Log::warning('Invalid date format for customer filter: ' . $request->input('date_range'));
            }
        }

        // Logic tìm kiếm theo tên phụ huynh hoặc tên học viên
        if ($request->filled('search')) {
            $searchTerm = $request->input('search');
            $query->where(function ($q) use ($searchTerm) {
                $q->where('customers.full_name_parent', 'like', '%' . $searchTerm . '%')
                    ->orWhere('customers.full_name_children', 'like', '%' . $searchTerm . '%');
            });
        }

        $customers = $query->orderBy('customers.created_at', 'desc')->paginate(10);

        return view('kingexpressbus.admin.modules.customers.index', compact('customers'));
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $customer = DB::table('customers')
            ->leftJoin('trainings', 'customers.training_id', '=', 'trainings.id')
            ->select('customers.*', 'trainings.title as training_title')
            ->where('customers.id', $id)
            ->firstOrFail();

        return view('kingexpressbus.admin.modules.customers.show', compact('customer'));
    }

    /**
     * Update the status of a customer.
     */
    public function updateStatus(Request $request, string $id)
    {
        $validator = Validator::make($request->all(), [
            'status' => ['required', Rule::in(['pending', 'confirmed', 'cancelled'])],
        ]);

        if ($validator->fails()) {
            return back()->with('error', 'Trạng thái không hợp lệ.');
        }

        $customer = DB::table('customers')->where('id', $id);
        if (!$customer->exists()) {
            return back()->with('error', 'Không tìm thấy khách hàng.');
        }

        try {
            $customer->update(['status' => $request->input('status')]);
        } catch (Throwable $e) {
            Log::error("Error updating customer status: " . $e->getMessage());
            return back()->with('error', 'Đã có lỗi xảy ra khi cập nhật trạng thái.');
        }

        return back()->with('success', 'Cập nhật trạng thái thành công!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $customer = DB::table('customers')->find($id);
        if (!$customer) {
            return back()->with('error', 'Không tìm thấy khách hàng để xóa.');
        }

        DB::table('customers')->where('id', $id)->delete();

        return redirect()->route('admin.customers.index')->with('success', 'Thông tin khách hàng đã được xóa thành công!');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): JsonResponse
    {
        // CHANGED: Cập nhật quy tắc validation
        $validator = Validator::make($request->all(), [
            'full_name_parent' => 'required|string|max:255',
            'phone' => ['required', 'string', 'regex:/^(0\d{9})$/'],
            'full_name_children' => 'required|string|max:255',
            'age' => 'required|integer|min:1|max:100',
            'address' => 'required|string',
            'training_id' => 'nullable|exists:trainings,id',
            'email' => 'nullable|email|max:50',
            'note' => 'nullable|string',
        ]);

        // CHANGED: Cập nhật tên thuộc tính cho thông báo lỗi
        $validator->setAttributeNames([
            'full_name_parent' => 'họ tên phụ huynh',
            'phone' => 'số điện thoại',
            'full_name_children' => 'họ tên học viên',
            'age' => 'tuổi',
            'address' => 'địa chỉ',
            'training_id' => 'khóa học',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Dữ liệu không hợp lệ.',
                'errors' => $validator->errors()
            ], 422);
        }

        $validatedData = $validator->validated();
        $validatedData['created_at'] = now();
        $validatedData['updated_at'] = now();

        try {
            $customerId = DB::table('customers')->insertGetId($validatedData);

            // Lấy thêm tên khóa học để hiển thị trong email (nếu có)
            if (!empty($validatedData['training_id'])) {
                $training = DB::table('trainings')->find($validatedData['training_id']);
                $validatedData['training_title'] = $training ? $training->title : 'Chưa chọn';
            } else {
                $validatedData['training_title'] = 'Chưa chọn';
            }

            // === CHANGED: LOGIC GỬI EMAIL CÓ ĐIỀU KIỆN ===
            try {
                // 1. Gửi email cho khách hàng NẾU có email được cung cấp
                if (!empty($validatedData['email'])) {
                    Mail::to($validatedData['email'])->send(new CustomerRegistrationSuccess($validatedData));
                }

                // 2. Luôn gửi email thông báo cho admin
                $adminEmail = env("ADMIN_EMAIL_RECIPIENT");
                if ($adminEmail) {
                    Mail::to($adminEmail)->send(new AdminNewCustomerNotification($validatedData));
                }
            } catch (Throwable $e) {
                // Nếu gửi mail lỗi, chỉ ghi log chứ không làm ảnh hưởng đến response của API
                Log::error('Failed to send registration emails for customer ID ' . $customerId . ': ' . $e->getMessage());
            }

        } catch (Throwable $e) {
            Log::error('API Customer Store Error: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Đã có lỗi xảy ra, không thể lưu thông tin.'
            ], 500);
        }

        return response()->json([
            'success' => true,
            'message' => 'Đăng ký thông tin thành công!',
            'data' => [
                'customer_id' => $customerId
            ]
        ], 201);
    }
}
