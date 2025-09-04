<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thông báo khách hàng mới - Evo Education</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="color-scheme" content="light dark">
</head>
<body
    style="margin: 0; padding: 20px; box-sizing: border-box; font-family: 'Inter', Arial, sans-serif; line-height: 1.6; background: #f8fafc; min-height: 100vh;">
<div class="email-container"
     style="max-width: 600px; margin: 0 auto; background: rgba(255, 255, 255, 0.95); backdrop-filter: blur(20px); border-radius: 20px; box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1); overflow: hidden; border: 1px solid #e2e8f0;">
    <div class="header"
         style="background: linear-gradient(135deg, #38bdf8 0%, #0ea5e9 100%); padding: 40px 30px; text-align: center; position: relative;">
        <div class="notification-badge"
             style="display: inline-block; background: rgba(255, 255, 255, 0.95); color: #0ea5e9; padding: 8px 20px; border-radius: 25px; font-size: 14px; font-weight: 600; margin-bottom: 20px; position: relative; z-index: 1; border: 2px solid rgba(255, 255, 255, 0.3); box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);">
            Thông báo mới
        </div>
        <h2 style="color: white; font-size: 28px; font-weight: 700; margin-bottom: 15px; position: relative; z-index: 1;">
            Có khách hàng mới đăng ký tư vấn</h2>
        <div class="company-name"
             style="color: rgba(255, 255, 255, 0.9); font-size: 16px; font-weight: 500; position: relative; z-index: 1; margin-top: 10px;">
            Evo Education
        </div>
    </div>
    <div class="content" style="padding: 40px 30px;">
        <p class="intro-text"
           style="font-size: 16px; color: #475569; margin-bottom: 30px; text-align: center; line-height: 1.7;">
            Một khách hàng mới vừa gửi thông tin đăng ký tư vấn qua website. Vui lòng kiểm tra thông tin chi tiết bên
            dưới và liên hệ sớm nhất có thể.
        </p>
        <h3 class="section-title" style="font-size: 20px; font-weight: 600; color: #0f172a; margin-bottom: 25px;">Chi
            tiết thông tin:</h3>
        <table class="info-table"
               style="width: 100%; border-collapse: separate; border-spacing: 0; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);">
            <tbody>
            <tr style="transition: all 0.3s ease;">
                <th style="background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%); color: #0f172a; text-align: left; padding: 16px 20px; font-weight: 600; font-size: 14px; border-bottom: 1px solid #e2e8f0; width: 50%; position: relative;">
                    Tên phụ huynh
                </th>
                <td style="padding: 16px 20px; color: #334155; background: rgba(255, 255, 255, 0.95); border-bottom: 1px solid #f1f5f9; font-size: 15px; line-height: 1.6; font-weight: 600;">{{ $customerData['full_name_parent'] }}</td>
            </tr>
            <tr style="transition: all 0.3s ease;">
                <th style="background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%); color: #0f172a; text-align: left; padding: 16px 20px; font-weight: 600; font-size: 14px; border-bottom: 1px solid #e2e8f0; width: 50%; position: relative;">
                    Số điện thoại
                </th>
                <td style="padding: 16px 20px; color: #334155; background: rgba(255, 255, 255, 0.95); border-bottom: 1px solid #f1f5f9; font-size: 15px; line-height: 1.6; font-weight: 600;">{{ $customerData['phone'] }}</td>
            </tr>
            <tr style="transition: all 0.3s ease;">
                <th style="background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%); color: #0f172a; text-align: left; padding: 16px 20px; font-weight: 600; font-size: 14px; border-bottom: 1px solid #e2e8f0; width: 50%; position: relative;">
                    Email
                </th>
                <td style="padding: 16px 20px; color: #334155; background: rgba(255, 255, 255, 0.95); border-bottom: 1px solid #f1f5f9; font-size: 15px; line-height: 1.6; font-weight: 600;">{{ $customerData['email'] ?? 'Không cung cấp' }}</td>
            </tr>
            <tr style="transition: all 0.3s ease;">
                <th style="background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%); color: #0f172a; text-align: left; padding: 16px 20px; font-weight: 600; font-size: 14px; border-bottom: 1px solid #e2e8f0; width: 50%; position: relative;">
                    Tên học viên
                </th>
                <td style="padding: 16px 20px; color: #334155; background: rgba(255, 255, 255, 0.95); border-bottom: 1px solid #f1f5f9; font-size: 15px; line-height: 1.6; font-weight: 600;">{{ $customerData['full_name_children'] }}</td>
            </tr>
            <tr style="transition: all 0.3s ease;">
                <th style="background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%); color: #0f172a; text-align: left; padding: 16px 20px; font-weight: 600; font-size: 14px; border-bottom: 1px solid #e2e8f0; width: 50%; position: relative;">
                    Tuổi
                </th>
                <td style="padding: 16px 20px; color: #334155; background: rgba(255, 255, 255, 0.95); border-bottom: 1px solid #f1f5f9; font-size: 15px; line-height: 1.6;">{{ $customerData['age'] }}</td>
            </tr>
            <tr style="transition: all 0.3s ease;">
                <th style="background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%); color: #0f172a; text-align: left; padding: 16px 20px; font-weight: 600; font-size: 14px; border-bottom: 1px solid #e2e8f0; width: 50%; position: relative;">
                    Địa chỉ
                </th>
                <td style="padding: 16px 20px; color: #334155; background: rgba(255, 255, 255, 0.95); border-bottom: 1px solid #f1f5f9; font-size: 15px; line-height: 1.6;">{{ $customerData['address'] }}</td>
            </tr>
            <tr style="transition: all 0.3s ease;">
                <th style="background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%); color: #0f172a; text-align: left; padding: 16px 20px; font-weight: 600; font-size: 14px; border-bottom: 1px solid #e2e8f0; width: 50%; position: relative;">
                    Khóa học quan tâm
                </th>
                <td style="padding: 16px 20px; color: #334155; background: rgba(255, 255, 255, 0.95); border-bottom: 1px solid #f1f5f9; font-size: 15px; line-height: 1.6;">{{ $customerData['training_title'] ?? 'Chưa chọn' }}</td>
            </tr>
            <tr style="transition: all 0.3s ease;">
                <th style="background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%); color: #0f172a; text-align: left; padding: 16px 20px; font-weight: 600; font-size: 14px; border-bottom: none; width: 50%; position: relative;">
                    Ghi chú
                </th>
                <td style="padding: 16px 20px; color: #334155; background: rgba(255, 255, 255, 0.95); border-bottom: none; font-size: 15px; line-height: 1.6;">{{ $customerData['note'] ?? 'Không có' }}</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="footer" style="background: #f8fafc; padding: 30px; text-align: center; border-top: 1px solid #e2e8f0;">
        <p class="footer-text" style="color: #475569; font-size: 14px; margin-bottom: 15px;">
            Hãy liên hệ với khách hàng trong thời gian sớm nhất để có thể hỗ trợ tốt nhất.
        </p>
        <a href="{{ route('admin.customers.index') }}" class="action-button"
           style="display: inline-block; background: linear-gradient(135deg, #facc15 0%, #f59e0b 100%); color: #422006; padding: 12px 30px; text-decoration: none; border-radius: 25px; font-weight: 600; font-size: 14px; transition: all 0.3s ease; box-shadow: 0 4px 15px rgba(245, 158, 11, 0.3);">Xem
            chi tiết trong hệ thống</a>
    </div>
</div>
</body>
</html>
