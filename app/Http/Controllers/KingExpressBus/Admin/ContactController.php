<?php

namespace App\Http\Controllers\KingExpressBus\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use Throwable;

class ContactController extends Controller
{
    public function index()
    {
        $contactInfo = DB::table('contact')->first();

        if ($contactInfo) {
            $contactInfo->address = json_decode($contactInfo->address, true) ?? [];
        } else {
            // ADDED: Thêm các trường mới vào đối tượng mặc định
            $contactInfo = (object) [
                'id' => null,
                'address' => [],
                'phone' => '',
                'hotline' => '',
                'email' => '',
                'zalo' => '',
                'facebook' => '',
            ];
        }

        return view('kingexpressbus.admin.modules.contact.edit', ['contactInfo' => $contactInfo]);
    }

    public function update(Request $request)
    {
        // CHANGED: Cập nhật validation
        $validator = Validator::make($request->all(), [
            'address' => 'nullable|array',
            'address.*.address' => 'required|string',
            'address.*.googlemap' => 'required|string',
            'phone' => 'required|string|max:20',
            'hotline' => 'required|string|max:20',
            'email' => 'required|email|max:50',
            'zalo' => 'required|string|max:50',
            'facebook' => 'required|string|max:50|url',
        ]);

        // CHANGED: Cập nhật tên thuộc tính
        $validator->setAttributeNames([
            'address.*.address' => 'địa chỉ',
            'address.*.googlemap' => 'link Google Map',
            'phone' => 'số điện thoại',
            'hotline' => 'hotline',
            'email' => 'email',
            'zalo' => 'link Zalo',
            'facebook' => 'link Facebook',
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        try {
            $addressJson = json_encode($request->input('address', []));

            // CHANGED: Thêm các trường mới vào mảng data
            $dataToUpdate = [
                'address'    => $addressJson,
                'phone'      => $request->input('phone'),
                'hotline'    => $request->input('hotline'),
                'email'      => $request->input('email'),
                'zalo'       => $request->input('zalo'),
                'facebook'   => $request->input('facebook'),
                'updated_at' => now()
            ];

            DB::table('contact')->updateOrInsert(
                ['id' => 1],
                $dataToUpdate
            );
        } catch (Throwable $e) {
            Log::error("Error updating contact info: " . $e->getMessage());
            return back()->with('error', 'Đã xảy ra lỗi khi cập nhật thông tin liên hệ.')->withInput();
        }

        return redirect()->route('admin.contact.index')->with('success', 'Cập nhật thông tin liên hệ thành công!');
    }

    // Phương thức này không cần thay đổi vì nó trả về toàn bộ object đã được truy vấn
    public function getContactApi(): JsonResponse
    {
        $contactInfo = DB::table('contact')->first();

        if (!$contactInfo) {
            return response()->json([
                'success' => false,
                'message' => 'Contact information not found.'
            ], 404);
        }

        $contactInfo->address = json_decode($contactInfo->address, true) ?? [];

        return response()->json([
            'success' => true,
            'data' => $contactInfo
        ]);
    }
}
