<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Xác nhận đăng ký tư vấn - Evo Education</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="color-scheme" content="light dark">
</head>
<body
    style="margin: 0; padding: 20px; box-sizing: border-box; font-family: 'Inter', Arial, sans-serif; line-height: 1.6; background: #f8fafc; min-height: 100vh;">
<div class="email-container"
     style="max-width: 600px; margin: 0 auto; background: rgba(255, 255, 255, 0.95); backdrop-filter: blur(20px); border-radius: 20px; box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1); overflow: hidden; border: 1px solid #e2e8f0;">
    <div class="header"
         style="background: linear-gradient(135deg, #38bdf8 0%, #0ea5e9 100%); padding: 40px 30px; text-align: center; position: relative;">
        <div class="success-badge"
             style="display: inline-block; background: rgba(255, 255, 255, 0.95); color: #16a34a; padding: 8px 20px; border-radius: 25px; font-size: 14px; font-weight: 600; margin-bottom: 20px; position: relative; z-index: 1; border: 2px solid rgba(255, 255, 255, 0.3); box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);">
            Đăng ký thành công
        </div>
        <h2 style="color: white; font-size: 28px; font-weight: 700; margin-bottom: 15px; position: relative; z-index: 1;">
            Cảm ơn bạn đã đăng ký tư vấn!</h2>
        <div class="company-name"
             style="color: rgba(255, 255, 255, 0.9); font-size: 16px; font-weight: 500; position: relative; z-index: 1; margin-top: 10px;">
            Evo Education
        </div>
    </div>
    <div class="content" style="padding: 40px 30px;">
        <div class="greeting" style="font-size: 18px; color: #1e293b; margin-bottom: 25px; font-weight: 600;">
            Kính gửi Quý phụ huynh <span class="highlight-name"
                                         style="font-weight: 600;">{{ $customerData['full_name_parent'] }}</span>,
        </div>
        <p class="content-text" style="font-size: 16px; color: #475569; margin-bottom: 20px; line-height: 1.7;">
            Trường học Sáng tạo Công nghệ Trẻ Evo.edu.vn đã nhận được thông tin đăng ký tư vấn của bạn cho học viên
            <span class="highlight-name" style="font-weight: 600;">{{ $customerData['full_name_children'] }}</span>.
        </p>
        <div class="info-box"
             style="background: linear-gradient(135deg, #f0f9ff 0%, #e0f2fe 100%); border-left: 4px solid #0ea5e9; padding: 20px; border-radius: 12px; margin: 25px 0; box-shadow: 0 2px 8px rgba(14, 165, 233, 0.1);">
            <div class="info-box-title" style="font-size: 16px; font-weight: 600; color: #0c4a6e; margin-bottom: 10px;">
                Các bước tiếp theo
            </div>
            <div class="info-box-text" style="font-size: 15px; color: #075985; line-height: 1.6;">
                Evo Education sẽ liên hệ với bạn trong thời gian sớm nhất để xác nhận và tư vấn chi tiết hơn về lộ trình
                học tập phù hợp nhất cho con bạn.
            </div>
        </div>
        <div class="divider"
             style="height: 3px; background: linear-gradient(135deg, #38bdf8 0%, #0ea5e9 100%); border-radius: 2px; margin: 30px 0; opacity: 0.3;"></div>
        <div class="contact-section"
             style="background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%); padding: 25px; border-radius: 15px; margin: 30px 0; border: 1px solid #e2e8f0;">
            <div class="contact-title" style="font-size: 18px; font-weight: 600; color: #1e293b; margin-bottom: 15px;">
                Thông tin liên hệ
            </div>
            <div class="contact-item"
                 style="display: flex; align-items: flex-start; gap: 12px; margin-bottom: 12px; font-size: 15px;">
                <span class="contact-label" style="font-weight: 600; color: #1e293b; min-width: 80px;">Hotline:</span>
                <span class="contact-value" style="color: #475569;"><a href="tel:0979798426" class="contact-link"
                                                                       style="color: #0ea5e9; font-weight: 600; text-decoration: none;">0979798426 - 0868234966</a></span>
            </div>
            <div class="contact-item"
                 style="display: flex; align-items: flex-start; gap: 12px; margin-bottom: 12px; font-size: 15px;">
                <span class="contact-label" style="font-weight: 600; color: #1e293b; min-width: 80px;">Email:</span>
                <span class="contact-value" style="color: #475569;"><a href="mailto:{{env("ADMIN_EMAIL_RECIPIENT")}}"
                                                                       class="contact-link"
                                                                       style="color: #0ea5e9; font-weight: 600; text-decoration: none;">{{env("ADMIN_EMAIL_RECIPIENT")}}</a></span>
            </div>
            <div class="contact-item"
                 style="display: flex; align-items: flex-start; gap: 12px; margin-bottom: 0; font-size: 15px;">
                <span class="contact-label"
                      style="font-weight: 600; color: #1e293b; min-width: 80px;">Giờ làm việc:</span>
                <span class="contact-value" style="color: #475569;">Thứ 2 - Chủ nhật (8:00 - 20:00)</span>
            </div>
        </div>
        <p class="content-text" style="font-size: 16px; color: #475569; margin-bottom: 20px; line-height: 1.7;">
            Cảm ơn bạn đã tin tưởng và lựa chọn Evo Education. Chúng tôi cam kết mang đến chương trình học công nghệ tốt
            nhất cho con bạn!
        </p>
    </div>
    <div class="footer"
         style="background: linear-gradient(135deg, #38bdf8 0%, #0ea5e9 100%); padding: 30px; text-align: center; color: white;">
        <div class="signature" style="font-size: 16px; font-weight: 500; margin-bottom: 10px;">Trân trọng,</div>
        <div class="company-footer" style="font-size: 18px; font-weight: 700;">
            Evo Education
        </div>
    </div>
</div>
</body>
</html>
