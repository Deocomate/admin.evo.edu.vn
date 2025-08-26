<?php

namespace App\Http\Controllers\KingExpressBus\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use Throwable;

class ChatbotController extends Controller
{
    /**
     * Xử lý yêu cầu chat từ người dùng và gọi Gemini API.
     */
    public function handleChat(Request $request): JsonResponse
    {
        // 1. Validate dữ liệu đầu vào
        $validator = Validator::make($request->all(), [
            'question' => 'required|string|max:5000',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Dữ liệu không hợp lệ.',
                'errors' => $validator->errors()
            ], 422);
        }

        $userQuestion = $request->input('question');
        $apiKey = env('GEMINI_API_KEY');

        if (!$apiKey) {
            Log::error('GEMINI_API_KEY is not set in .env file.');
            return response()->json([
                'success' => false,
                'message' => 'Lỗi cấu hình hệ thống, không thể kết nối với AI.'
            ], 500);
        }

        // 2. Xây dựng System Prompt và nội dung gửi đến Gemini
        $systemPrompt = $this->createSystemPrompt();
        $fullPrompt = $systemPrompt . "\n\nCâu hỏi của người dùng: " . $userQuestion;

        $apiUrl = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent';

        // 3. Gọi Gemini API bằng Laravel HTTP Client
        try {
            $response = Http::withHeaders([
                'x-goog-api-key' => $apiKey,
                'Content-Type' => 'application/json',
            ])->post($apiUrl, [
                'contents' => [
                    [
                        'parts' => [
                            ['text' => $fullPrompt]
                        ]
                    ]
                ]
            ]);

            if (!$response->successful()) {
                Log::error('Gemini API request failed', [
                    'status' => $response->status(),
                    'body' => $response->body()
                ]);
                return response()->json(['success' => false, 'message' => 'AI tạm thời không thể trả lời.'], 503);
            }

            $result = $response->json();
            $answer = $result['candidates'][0]['content']['parts'][0]['text'] ?? 'Xin lỗi, tôi chưa có câu trả lời cho vấn đề này.';

            return response()->json(['success' => true, 'answer' => $answer]);

        } catch (Throwable $e) {
            Log::error('Exception when calling Gemini API: ' . $e->getMessage());
            return response()->json(['success' => false, 'message' => 'Đã có lỗi xảy ra, vui lòng thử lại sau.'], 500);
        }
    }

    /**
     * Tạo system prompt dựa trên thông tin về Evo.edu.vn.
     */
    private function createSystemPrompt(): string
    {
        return <<<PROMPT
Bạn là một AI chatbot chuyên gia, trợ lý ảo của Học viện Sáng tạo Công nghệ Trẻ Evo.edu.vn. [cite: 1, 2]
Vai trò của bạn là cung cấp thông tin, tư vấn và trả lời các câu hỏi liên quan đến lĩnh vực giáo dục công nghệ, lập trình và tư duy sáng tạo cho trẻ em và thanh thiếu niên (từ 6 đến 18 tuổi). [cite: 3, 4]
Hãy luôn giữ giọng văn thân thiện, chuyên nghiệp, và dễ hiểu.

**Thông tin về Evo Education để bạn tham khảo:**
- **Tầm nhìn:** Trở thành hệ sinh thái giáo dục công nghệ hàng đầu Việt Nam. [cite: 5]
- **Sứ mệnh:** Giúp trẻ phát triển toàn diện kỹ năng thế kỷ 21 như tư duy logic, lập trình, sáng tạo, và làm việc nhóm. [cite: 6, 7, 8]
- **Triết lý:** Học tập dựa trên dự án (Project-Based Learning). [cite: 16]
- **Các chương trình đào tạo chính:**
  1.  **Evo KID (6-9 tuổi):** Làm quen tư duy máy tính qua ScratchJR, Code.org. [cite: 9]
  2.  **Evo JUNIOR (10-15 tuổi):** Lập trình sâu hơn với Scratch, Python để làm game, ứng dụng, website đơn giản. [cite: 11, 12]
  3.  **Evo ADULT (16-18 tuổi):** Kiến thức chuyên sâu về phát triển web (HTML, CSS, JavaScript), khoa học dữ liệu với Python để định hướng nghề nghiệp. [cite: 14]

Khi trả lời, hãy luôn đóng vai là một chuyên gia của Evo Education và sử dụng thông tin trên để tư vấn một cách chính xác nhất. Luôn trả lời bằng tiếng Việt.
PROMPT;
    }
}
