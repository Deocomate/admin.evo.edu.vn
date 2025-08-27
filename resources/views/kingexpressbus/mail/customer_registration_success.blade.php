<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Xác nhận đăng ký tư vấn - Evo Education</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="color-scheme" content="light dark">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap');

        /* ===== Bảng màu mới cho Evo Education ===== */
        :root {
            --bg-primary: #f8fafc;
            --bg-secondary: rgba(255, 255, 255, 0.95);
            --text-primary: #1e293b;
            --text-secondary: #475569;
            --text-muted: #64748b;
            --border-color: #e2e8f0;

            /* Tone màu Xanh Dương chủ đạo */
            --color-primary-start: #38bdf8; /* sky-400 */
            --color-primary-end: #0ea5e9; /* sky-500 */

            /* Info box với tone xanh dương nhạt */
            --info-box-bg: linear-gradient(135deg, #f0f9ff 0%, #e0f2fe 100%); /* sky-50, sky-100 */
            --info-box-text: #075985; /* sky-800 */
            --info-box-title: #0c4a6e; /* sky-900 */
            --info-box-border: #0ea5e9; /* sky-500 */

            --contact-bg: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%);
        }

        @media (prefers-color-scheme: dark) {
            :root {
                --bg-primary: #0f172a;
                --bg-secondary: rgba(30, 41, 59, 0.95);
                --text-primary: #f1f5f9;
                --text-secondary: #94a3b8;
                --text-muted: #cbd5e1;
                --border-color: #334155;

                --info-box-bg: linear-gradient(135deg, #1e293b 0%, #0f172a 100%);
                --info-box-text: #e0f2fe;
                --info-box-title: #7dd3fc;
                --info-box-border: #38bdf8;

                --contact-bg: linear-gradient(135deg, #1e293b 0%, #334155 100%);
            }
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', Arial, sans-serif;
            line-height: 1.6;
            background: var(--bg-primary);
            min-height: 100vh;
            padding: 20px;
        }

        .email-container {
            max-width: 600px;
            margin: 0 auto;
            background: var(--bg-secondary);
            backdrop-filter: blur(20px);
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            border: 1px solid var(--border-color);
        }

        /* ===== Header với tone màu Xanh Dương ===== */
        .header {
            background: linear-gradient(135deg, var(--color-primary-start) 0%, var(--color-primary-end) 100%);
            padding: 40px 30px;
            text-align: center;
            position: relative;
        }

        .header::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><defs><pattern id="grain" width="100" height="100" patternUnits="userSpaceOnUse"><circle cx="25" cy="25" r="1" fill="rgba(255,255,255,0.1)"/><circle cx="75" cy="75" r="1" fill="rgba(255,255,255,0.1)"/><circle cx="50" cy="50" r="0.5" fill="rgba(255,255,255,0.05)"/></pattern></defs><rect width="100" height="100" fill="url(%23grain)"/></svg>');
            opacity: 0.3;
        }

        .success-badge {
            display: inline-block;
            background: rgba(255, 255, 255, 0.95);
            color: #16a34a; /* Giữ màu xanh lá cho sự thành công */
            padding: 8px 20px;
            border-radius: 25px;
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 20px;
            position: relative;
            z-index: 1;
            border: 2px solid rgba(255, 255, 255, 0.3);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .header h2 {
            color: white;
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 15px;
            position: relative;
            z-index: 1;
        }

        .company-name {
            color: rgba(255, 255, 255, 0.9);
            font-size: 16px;
            font-weight: 500;
            position: relative;
            z-index: 1;
            margin-top: 10px;
        }

        .content {
            padding: 40px 30px;
        }

        .greeting {
            font-size: 18px;
            color: var(--text-primary);
            margin-bottom: 25px;
            font-weight: 600;
        }

        .content-text {
            font-size: 16px;
            color: var(--text-secondary);
            margin-bottom: 20px;
            line-height: 1.7;
        }

        .highlight-name {
            font-weight: 600;
        }

        /* ===== Info Box với tone xanh dương ===== */
        .info-box {
            background: var(--info-box-bg);
            border-left: 4px solid var(--info-box-border);
            padding: 20px;
            border-radius: 12px;
            margin: 25px 0;
            box-shadow: 0 2px 8px rgba(14, 165, 233, 0.1);
        }

        .info-box-title {
            font-size: 16px;
            font-weight: 600;
            color: var(--info-box-title);
            margin-bottom: 10px;
        }

        .info-box-text {
            font-size: 15px;
            color: var(--info-box-text);
            line-height: 1.6;
        }

        .contact-section {
            background: var(--contact-bg);
            padding: 25px;
            border-radius: 15px;
            margin: 30px 0;
            border: 1px solid var(--border-color);
        }

        .contact-title {
            font-size: 18px;
            font-weight: 600;
            color: var(--text-primary);
            margin-bottom: 15px;
        }

        .contact-item {
            display: flex;
            align-items: flex-start;
            gap: 12px;
            margin-bottom: 12px;
            font-size: 15px;
        }

        .contact-item:last-child {
            margin-bottom: 0;
        }

        .contact-label {
            font-weight: 600;
            color: var(--text-primary);
            min-width: 80px;
        }

        .contact-value {
            color: var(--text-secondary);
        }

        .contact-link {
            color: var(--color-primary-end); /* Màu link xanh dương */
            font-weight: 600;
            text-decoration: none;
        }

        .contact-link:hover {
            text-decoration: underline;
        }

        /* ===== Footer với tone xanh dương ===== */
        .footer {
            background: linear-gradient(135deg, var(--color-primary-start) 0%, var(--color-primary-end) 100%);
            padding: 30px;
            text-align: center;
            color: white;
        }

        .signature {
            font-size: 16px;
            font-weight: 500;
            margin-bottom: 10px;
        }

        .company-footer {
            font-size: 18px;
            font-weight: 700;
        }

        /* ===== Divider với tone xanh dương ===== */
        .divider {
            height: 3px;
            background: linear-gradient(135deg, var(--color-primary-start) 0%, var(--color-primary-end) 100%);
            border-radius: 2px;
            margin: 30px 0;
            opacity: 0.3;
        }

        @media (max-width: 600px) {
            body {
                padding: 10px;
            }

            .email-container {
                border-radius: 15px;
            }

            .header {
                padding: 30px 20px;
            }

            .header h2 {
                font-size: 24px;
            }

            .content {
                padding: 30px 20px;
            }

            .contact-section {
                padding: 20px;
            }

            .greeting {
                font-size: 16px;
            }

            .content-text {
                font-size: 15px;
            }
        }
    </style>
</head>
<body>
<div class="email-container">
    <div class="header">
        <div class="success-badge">Đăng ký thành công</div>
        <h2>Cảm ơn bạn đã đăng ký tư vấn!</h2>
        <div class="company-name">Evo Education</div>
    </div>

    <div class="content">
        <div class="greeting">
            Kính gửi Quý phụ huynh <span class="highlight-name">{{ $customerData['full_name_parent'] }}</span>,
        </div>

        <p class="content-text">
            Học viện Sáng tạo Công nghệ Trẻ Evo.edu.vn đã nhận được thông tin đăng ký tư vấn của bạn cho học viên
            <span class="highlight-name">{{ $customerData['full_name_children'] }}</span>.
        </p>

        <div class="info-box">
            <div class="info-box-title">
                Các bước tiếp theo
            </div>
            <div class="info-box-text">
                Evo Education sẽ liên hệ với bạn trong thời gian sớm nhất để xác nhận và tư vấn chi tiết hơn về lộ trình
                học tập phù hợp nhất cho con bạn.
            </div>
        </div>

        <div class="divider"></div>

        <div class="contact-section">
            <div class="contact-title">
                Thông tin liên hệ
            </div>
            <div class="contact-item">
                <span class="contact-label">Hotline:</span>
                <span class="contact-value"><a href="tel:0979798426"
                                               class="contact-link">0979798426 - 0868234966</a></span>
            </div>
            <div class="contact-item">
                <span class="contact-label">Email:</span>
                <span class="contact-value"><a href="mailto:aubacgiang@gmail.com" class="contact-link">aubacgiang@gmail.com</a></span>
            </div>
            <div class="contact-item">
                <span class="contact-label">Giờ làm việc:</span>
                <span class="contact-value">Thứ 2 - Chủ nhật (8:00 - 20:00)</span>
            </div>
        </div>

        <p class="content-text">
            Cảm ơn bạn đã tin tưởng và lựa chọn Evo Education. Chúng tôi cam kết mang đến chương trình học công nghệ tốt
            nhất cho con bạn!
        </p>
    </div>

    <div class="footer">
        <div class="signature">Trân trọng,</div>
        <div class="company-footer">
            Evo Education
        </div>
    </div>
</div>
</body>
</html>
