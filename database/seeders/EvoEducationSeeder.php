<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class EvoEducationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Tạm thời vô hiệu hóa kiểm tra khóa ngoại để xóa dữ liệu
        Schema::disableForeignKeyConstraints();

        DB::table('categories')->truncate();
        DB::table('contact')->truncate();
        DB::table('customers')->truncate(); // Thường không seed dữ liệu khách hàng thực tế
        DB::table('document')->truncate();
        DB::table('home_page')->truncate();
        DB::table('menus')->truncate();
        DB::table('news')->truncate();
        DB::table('parents_corner')->truncate();
        DB::table('teachers')->truncate();
        DB::table('trainings')->truncate();

        // Kích hoạt lại kiểm tra khóa ngoại
        Schema::enableForeignKeyConstraints();

        // --- Bắt đầu Seed dữ liệu ---

        // 2. Bảng Contact (Thông tin liên hệ)
        DB::table('contact')->insert([
            [
                'address' => json_encode([
                    [
                        "address" => "Tầng 3, Tòa Dolphin Plaza, 06 Nguyễn Hoàng, Phường Mỹ Đình, Quận Nam Từ Liêm, Hà Nội",
                        "googlemap" => '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.096949099318!2d105.77972187594519!3d21.0288118878231!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454ab43c0c4db%3A0xdb684fe19231432!2sDolphin%20Plaza!5e0!3m2!1svi!2s!4v1723539699049!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'
                    ]
                ]),
                'phone' => '0847432432',
                'hotline' => '0847 432 432',
                'email' => 'contact@evo.edu.vn',
                'zalo' => 'https://zalo.me/0847432432',
                'facebook' => 'https://www.facebook.com/evo.education.vn',
                'youtube' => 'https://www.youtube.com/@EvoEducation',
                'created_at' => now(),
                'updated_at' => now(),
            ]
        ]);

        // 3. Bảng Categories (Danh mục tin tức)
        DB::table('categories')->insert([
            ['id' => 1, 'name' => 'Tin tức Công nghệ', 'slug' => 'tin-tuc-cong-nghe-1', 'count' => 3, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 2, 'name' => 'Sự kiện & Workshop', 'slug' => 'su-kien-workshop-2', 'count' => 2, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'name' => 'Hướng dẫn Lập trình', 'slug' => 'huong-dan-lap-trinh-3', 'count' => 2, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'name' => 'Câu chuyện thành công', 'slug' => 'cau-chuyen-thanh-cong-4', 'count' => 1, 'created_at' => now(), 'updated_at' => now()],
        ]);

        // 4. Bảng Trainings (Các khóa học)
        DB::table('trainings')->insert([
            [
                'id' => 1,
                'priority' => 1,
                'slug' => 'khoa-hoc-evo-kid-1',
                'title' => 'EVO KID',
                'age' => '6 - 15 Tuổi',
                'description' => 'Lộ trình được thiết kế cho những bạn nhỏ từ lớp 1 đến lớp 9 làm quen với máy tính và công nghệ, khơi dậy đam mê lập trình từ sớm.',
                'thumbnail' => '/userfiles/images/evo-images/1.jpg',
                'outcome' => 'Tư duy logic và giải quyết vấn đề|Làm quen với lập trình kéo thả Scratch|Sáng tạo sản phẩm game, hoạt hình 2D đầu tay',
                'method' => 'Học theo dự án (Project-based Learning), học qua trò chơi (Gamification), khơi dậy sự sáng tạo và tư duy phản biện.',
                'content' => '<p>Chương trình <strong>EVO KID</strong> giúp các em xây dựng nền tảng vững chắc về tư duy máy tính, làm quen với các khái niệm lập trình cơ bản thông qua công cụ Scratch trực quan và sinh động. Các em sẽ được thực hành liên tục qua các dự án nhỏ, từ đó tự tin sáng tạo ra các sản phẩm công nghệ của riêng mình.</p>',
                'images' => json_encode(['/userfiles/images/evo-images/2.jpg', '/userfiles/images/evo-images/3.jpg', '/userfiles/images/evo-images/4.jpg']),
                'youtube_review_link' => 'https://www.youtube.com/watch?v=example1',
                'created_at' => now(), 'updated_at' => now()
            ],
            [
                'id' => 2,
                'priority' => 2,
                'slug' => 'khoa-hoc-evo-teen-2',
                'title' => 'EVO TEEN',
                'age' => '16 - 18 Tuổi',
                'description' => 'Lộ trình dành cho học sinh cấp 3, tiếp cận các ngôn ngữ lập trình phổ biến như Python, JavaScript, và xây dựng các ứng dụng web thực tế.',
                'thumbnail' => '/userfiles/images/evo-images/5.jpg',
                'outcome' => 'Nắm vững kiến thức nền tảng về Python/JavaScript|Xây dựng được website cá nhân hoàn chỉnh|Kỹ năng làm việc nhóm và quản lý dự án',
                'method' => 'Học tập kết hợp lý thuyết và thực hành chuyên sâu. Giảng viên là các lập trình viên nhiều kinh nghiệm sẽ hướng dẫn và review code trực tiếp.',
                'content' => '<p>Với <strong>EVO TEEN</strong>, học viên sẽ được định hướng nghề nghiệp sớm, trang bị kiến thức và kỹ năng cần thiết để theo đuổi ngành Công nghệ thông tin. Khóa học tập trung vào các project thực tế, giúp các em xây dựng portfolio ấn tượng ngay từ khi còn ngồi trên ghế nhà trường.</p>',
                'images' => json_encode(['/userfiles/images/evo-images/6.jpg', '/userfiles/images/evo-images/7.jpg']),
                'youtube_review_link' => 'https://www.youtube.com/watch?v=example2',
                'created_at' => now(), 'updated_at' => now()
            ],
            [
                'id' => 3,
                'priority' => 3,
                'slug' => 'khoa-hoc-evo-adult-3',
                'title' => 'EVO ADULT',
                'age' => 'Trên 18 Tuổi',
                'description' => 'Lộ trình học để đi làm, định hướng chuyên sâu theo Backend (Java, Go), Frontend (ReactJS, VueJS) hoặc App Developer (Flutter, React Native).',
                'thumbnail' => '/userfiles/images/evo-images/8.jpg',
                'outcome' => 'Kiến thức chuyên sâu và sẵn sàng làm việc|Xây dựng dự án lớn theo quy trình chuyên nghiệp|Cơ hội việc làm tại các công ty công nghệ hàng đầu',
                'method' => 'Chương trình đào tạo cường độ cao (bootcamp), mô phỏng môi trường làm việc thực tế tại doanh nghiệp, có Mentor 1-1 hỗ trợ.',
                'content' => '<p><strong>EVO ADULT</strong> là chương trình dành cho sinh viên và người đi làm muốn chuyển ngành hoặc nâng cao kỹ năng. Học viên được lựa chọn lộ trình chuyên sâu, được đào tạo bởi các chuyên gia đầu ngành và cam kết hỗ trợ việc làm sau khi tốt nghiệp.</p>',
                'images' => json_encode(['/userfiles/images/evo-images/9.jpg', '/userfiles/images/evo-images/10.jpg', '/userfiles/images/evo-images/11.jpg']),
                'youtube_review_link' => 'https://www.youtube.com/watch?v=example3',
                'created_at' => now(), 'updated_at' => now()
            ],
            [
                'id' => 4,
                'priority' => 4,
                'slug' => 'lap-trinh-game-unity-4',
                'title' => 'Lập trình Game với Unity',
                'age' => '12+ Tuổi',
                'description' => 'Khóa học đưa học viên vào thế giới phát triển game chuyên nghiệp với nền tảng Unity, từ xây dựng nhân vật đến tạo màn chơi và xuất bản game.',
                'thumbnail' => '/userfiles/images/evo-images/12.jpg',
                'outcome' => 'Thành thạo C# và Unity Engine|Tự phát triển một game 2D/3D hoàn chỉnh|Hiểu quy trình sản xuất game chuyên nghiệp',
                'method' => 'Thực hành liên tục trên dự án game thực tế, học viên được hướng dẫn từ khâu lên ý tưởng, thiết kế đến lập trình và tối ưu game.',
                'content' => '<p>Khóa học <strong>Lập trình Game với Unity</strong> sẽ biến ước mơ tạo ra trò chơi của riêng bạn thành hiện thực. Bạn sẽ được học cách sử dụng công cụ mạnh mẽ nhất trong ngành game, hiểu về vật lý, đồ họa và trí tuệ nhân tạo trong game.</p>',
                'images' => json_encode(['/userfiles/images/evo-images/13.jpg', '/userfiles/images/evo-images/14.jpg']),
                'youtube_review_link' => 'https://www.youtube.com/watch?v=example4',
                'created_at' => now(), 'updated_at' => now()
            ],
             [
                'id' => 5,
                'priority' => 5,
                'slug' => 'khoa-hoc-du-lieu-python-5',
                'title' => 'Khoa học Dữ liệu với Python',
                'age' => 'Trên 18 Tuổi',
                'description' => 'Trang bị kiến thức nền tảng và kỹ năng thực hành về phân tích, trực quan hóa và xây dựng mô hình học máy với Python.',
                'thumbnail' => '/userfiles/images/evo-images/15.jpg',
                'outcome' => 'Sử dụng thành thạo Pandas, NumPy, Matplotlib|Xây dựng được các mô hình dự đoán cơ bản|Kỹ năng xử lý và làm sạch dữ liệu lớn',
                'method' => 'Học tập qua các case study thực tế từ ngành tài chính, marketing, y tế. Học viên được làm việc với các bộ dữ liệu thực và xây dựng portfolio riêng.',
                'content' => '<p>Trở thành một nhà khoa học dữ liệu với khóa học <strong>Khoa học Dữ liệu với Python</strong>. Khóa học cung cấp lộ trình từ cơ bản đến nâng cao, giúp bạn làm chủ các công cụ mạnh mẽ và áp dụng vào giải quyết các bài toán kinh doanh thực tế.</p>',
                'images' => json_encode(['/userfiles/images/evo-images/16.jpg', '/userfiles/images/evo-images/17.jpg']),
                'youtube_review_link' => 'https://www.youtube.com/watch?v=example5',
                'created_at' => now(), 'updated_at' => now()
            ]
        ]);

        // 5. Bảng Teachers (Đội ngũ giảng viên)
        DB::table('teachers')->insert([
            ['id' => 1, 'priority' => 1, 'full_name' => 'Trịnh Xuân Đào', 'role' => 'Giám đốc Đào tạo', 'qualifications' => 'Cử nhân Kỹ thuật phần mềm - ĐH Công nghiệp HN, 10+ năm kinh nghiệm', 'avatar' => '/userfiles/images/evo-images/18.jpg', 'slug' => 'trinh-xuan-dao-1', 'facebook' => 'https://facebook.com/evo.education.vn', 'email' => 'daotx@evo.edu.vn', 'description' => '<p>Với hơn 10 năm kinh nghiệm trong ngành phát triển phần mềm và đào tạo, thầy Đào là người truyền lửa và xây dựng lộ trình học tập hiệu quả tại EVO.</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 2, 'priority' => 2, 'full_name' => 'Nguyễn Văn An', 'role' => 'Chuyên gia Backend', 'qualifications' => 'Thạc sĩ Khoa học Máy tính - ĐH Bách Khoa, Senior Developer tại VNG', 'avatar' => '/userfiles/images/evo-images/19.jpg', 'slug' => 'nguyen-van-an-2', 'facebook' => 'https://facebook.com/evo.education.vn', 'email' => 'annv@evo.edu.vn', 'description' => '<p>Thầy An có kinh nghiệm chuyên sâu về xây dựng các hệ thống backend chịu tải cao với Java và Golang.</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'priority' => 3, 'full_name' => 'Lê Thị Bích', 'role' => 'Chuyên gia Frontend', 'qualifications' => 'Cử nhân CNTT - Học viện Bưu chính Viễn thông, Tech Lead tại NashTech', 'avatar' => '/userfiles/images/evo-images/20.jpg', 'slug' => 'le-thi-bich-3', 'facebook' => 'https://facebook.com/evo.education.vn', 'email' => 'bichlt@evo.edu.vn', 'description' => '<p>Cô Bích là chuyên gia về ReactJS và các công nghệ frontend hiện đại, luôn cập nhật những xu hướng mới nhất vào bài giảng.</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'priority' => 4, 'full_name' => 'Trần Minh Quang', 'role' => 'Giảng viên Lập trình Game', 'qualifications' => 'Cử nhân Đồ họa Game - ĐH FPT, 5 năm kinh nghiệm làm game tại Gameloft', 'avatar' => '/userfiles/images/evo-images/21.jpg', 'slug' => 'tran-minh-quang-4', 'facebook' => 'https://facebook.com/evo.education.vn', 'email' => 'quangtm@evo.edu.vn', 'description' => '<p>Thầy Quang có niềm đam mê bất tận với game và mong muốn truyền cảm hứng đó đến các bạn trẻ qua các khóa học Unity.</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'priority' => 5, 'full_name' => 'Phạm Thị Hoài', 'role' => 'Giảng viên Lập trình Kid', 'qualifications' => 'Cử nhân Sư phạm Tin học - ĐH Sư phạm Hà Nội', 'avatar' => '/userfiles/images/evo-images/22.jpg', 'slug' => 'pham-thi-hoai-5', 'facebook' => 'https://facebook.com/evo.education.vn', 'email' => 'hoaipth@evo.edu.vn', 'description' => '<p>Cô Hoài có phương pháp sư phạm tuyệt vời, giúp các bạn nhỏ tiếp cận lập trình một cách tự nhiên và đầy hứng thú.</p>', 'created_at' => now(), 'updated_at' => now()],
        ]);

        // 6. Bảng Home Page (Dữ liệu cho trang chủ)
        DB::table('home_page')->insert([
            [
                'banners' => json_encode([
                    "title" => "PHÁT TRIỂN TƯ DUY VÀ KỸ NĂNG",
                    "description" => "Cung cấp các khóa học cho trẻ em từ 6 - Trên 18 Tuổi",
                    "images" => ["/userfiles/images/evo-images/23.jpg", "/userfiles/images/evo-images/24.jpg", "/userfiles/images/evo-images/25.jpg"]
                ]),
                'stats' => json_encode([
                    ["value" => "50", "description" => "Khóa học đa dạng", "images" => "/userfiles/images/evo-images/1.jpg"],
                    ["value" => "1000", "description" => "Học viên đã tốt nghiệp", "images" => "/userfiles/images/evo-images/2.jpg"],
                    ["value" => "20", "description" => "Giảng viên chuyên gia", "images" => "/userfiles/images/evo-images/3.jpg"]
                ]),
                'fags' => json_encode([
                    ["question" => "Con tôi chưa biết gì về lập trình có học được không?", "answer" => "Hoàn toàn được! Các khóa học EVO KID được thiết kế cho người mới bắt đầu, giúp con làm quen từ những khái niệm đơn giản nhất."],
                    ["question" => "Cần chuẩn bị máy tính cấu hình như thế nào?", "answer" => "Đối với các khóa học cơ bản, chỉ cần một máy tính xách tay thông thường. Với các khóa học nâng cao, trung tâm sẽ có hướng dẫn chi tiết về cấu hình."],
                    ["question" => "Trung tâm có hỗ trợ việc làm sau khóa học không?", "answer" => "Có, với lộ trình EVO ADULT, chúng tôi có mạng lưới đối tác và cam kết hỗ trợ kết nối việc làm cho các học viên xuất sắc."]
                ]),
                'images' => json_encode(["/userfiles/images/evo-images/26.jpg", "/userfiles/images/evo-images/27.jpg", "/userfiles/images/evo-images/28.jpg", "/userfiles/images/evo-images/29.jpg"]),
                'link_youtubes' => json_encode(["https://www.youtube.com/watch?v=example1", "https://www.youtube.com/watch?v=example2"]),
                'created_at' => now(),
                'updated_at' => now(),
            ]
        ]);

        // 7. Bảng News (Tin tức)
        DB::table('news')->insert([
            ['id' => 1, 'slug' => 'top-5-ngon-ngu-lap-trinh-dang-hoc-nhat-2025-1', 'title' => 'Top 5 Ngôn ngữ Lập trình Đáng học nhất 2025', 'excerpt' => 'Khám phá những ngôn ngữ lập trình đang dẫn đầu xu hướng và có cơ hội việc làm tốt nhất trong năm tới.', 'thumbnail' => '/userfiles/images/evo-images/1.jpg', 'author' => 'EVO Admin', 'view' => 1250, 'category_id' => 1, 'content' => '<p>Năm 2025 đang đến gần, hãy cùng EVO điểm qua 5 ngôn ngữ lập trình mà bạn nên đầu tư thời gian học hỏi...</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 2, 'slug' => 'workshop-xay-dung-website-dau-tien-2', 'title' => 'Workshop: Xây dựng Website Đầu tiên trong 2 giờ', 'excerpt' => 'Sự kiện miễn phí dành cho các bạn học sinh cấp 3 yêu thích lập trình, được hướng dẫn bởi chuyên gia frontend của EVO.', 'thumbnail' => '/userfiles/images/evo-images/2.jpg', 'author' => 'EVO Admin', 'view' => 890, 'category_id' => 2, 'content' => '<p>Hãy tham gia workshop cuối tuần này để tự tay tạo ra một trang web cá nhân ấn tượng...</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'slug' => 'huong-dan-debug-javascript-hieu-qua-3', 'title' => 'Hướng dẫn Debug Javascript hiệu quả cho người mới', 'excerpt' => 'Tổng hợp các kỹ thuật và công cụ giúp bạn tìm và sửa lỗi trong code JavaScript một cách nhanh chóng và chuyên nghiệp.', 'thumbnail' => '/userfiles/images/evo-images/3.jpg', 'author' => 'EVO Admin', 'view' => 2100, 'category_id' => 3, 'content' => '<p>Debug là một kỹ năng không thể thiếu của lập trình viên. Bài viết này sẽ chỉ cho bạn cách làm chủ nó...</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'slug' => 'su-khac-biet-giua-frontend-va-backend-4', 'title' => 'Sự khác biệt giữa Frontend và Backend', 'excerpt' => 'Bài viết giải thích một cách dễ hiểu về hai mảng quan trọng trong lập trình web, giúp bạn định hướng con đường sự nghiệp.', 'thumbnail' => '/userfiles/images/evo-images/4.jpg', 'author' => 'EVO Admin', 'view' => 3500, 'category_id' => 1, 'content' => '<p>Bạn đang phân vân giữa Frontend và Backend? Hãy cùng tìm hiểu xem đâu là lựa chọn phù hợp với bạn...</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'slug' => 'hoc-vien-evo-gianh-giai-cao-tai-tin-hoc-tre-5', 'title' => 'Học viên EVO giành giải cao tại cuộc thi Tin học trẻ', 'excerpt' => 'Chúc mừng em Nguyễn Minh Khôi, học viên lớp EVO KID, đã xuất sắc đạt giải Nhì trong cuộc thi Tin học trẻ toàn quốc.', 'thumbnail' => '/userfiles/images/evo-images/5.jpg', 'author' => 'EVO Admin', 'view' => 950, 'category_id' => 4, 'content' => '<p>Đây là thành quả xứng đáng cho những nỗ lực không ngừng của Khôi và sự dìu dắt của các thầy cô tại EVO...</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 6, 'slug' => 'trien-lam-san-pham-cong-nghe-hoc-vien-evo-6', 'title' => 'Triển lãm Sản phẩm Công nghệ của Học viên EVO', 'excerpt' => 'Sự kiện trưng bày các dự án game, website và ứng dụng di động do chính các học viên EVO thực hiện.', 'thumbnail' => '/userfiles/images/evo-images/6.jpg', 'author' => 'EVO Admin', 'view' => 600, 'category_id' => 2, 'content' => '<p>Mời quý phụ huynh và các bạn học sinh đến tham quan và trải nghiệm những sản phẩm sáng tạo...</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 7, 'slug' => 'cach-viet-clean-code-trong-python-7', 'title' => '5 Nguyên tắc viết Clean Code trong Python', 'excerpt' => 'Để trở thành một lập trình viên giỏi, code chạy được là chưa đủ. Hãy học cách viết code sạch, dễ đọc và dễ bảo trì.', 'thumbnail' => '/userfiles/images/evo-images/7.jpg', 'author' => 'EVO Admin', 'view' => 4200, 'category_id' => 3, 'content' => '<p>Bài viết này sẽ giới thiệu 5 nguyên tắc vàng giúp bạn nâng tầm kỹ năng viết code Python của mình...</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 8, 'slug' => 'ai-dang-thay-doi-nganh-lap-trinh-nhu-the-nao-8', 'title' => 'AI đang thay đổi ngành lập trình như thế nào?', 'excerpt' => 'Trí tuệ nhân tạo không chỉ là một công cụ, nó đang định hình lại cách chúng ta phát triển phần mềm.', 'thumbnail' => '/userfiles/images/evo-images/8.jpg', 'author' => 'EVO Admin', 'view' => 1800, 'category_id' => 1, 'content' => '<p>Từ Github Copilot đến các mô hình sinh code, AI đang trở thành trợ thủ đắc lực cho lập trình viên...</p>', 'created_at' => now(), 'updated_at' => now()],
        ]);

        // 8. Bảng Parents Corner (Cảm nhận phụ huynh)
        DB::table('parents_corner')->insert([
            ['id' => 1, 'priority' => 1, 'slug' => 'phu-huynh-be-minh-anh-1', 'image' => '/userfiles/images/evo-images/9.jpg', 'rate' => 'Con tôi đã tự tin và yêu thích môn tin học hơn rất nhiều!', 'name' => 'Chị Thanh Hằng', 'describe' => 'Phụ huynh bé Minh Anh - Lớp EVO KID', 'content' => '<p>Sau khóa học Scratch, con không chỉ biết lập trình game mà còn tư duy logic hơn hẳn. Cảm ơn các thầy cô EVO rất nhiều.</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 2, 'priority' => 2, 'slug' => 'hoc-vien-quoc-bao-2', 'image' => '/userfiles/images/evo-images/10.jpg', 'rate' => 'Khóa học cung cấp kiến thức rất thực tế.', 'name' => 'Bạn Quốc Bảo', 'describe' => 'Học viên lớp EVO TEEN', 'content' => '<p>Em đã tự xây dựng được trang portfolio của riêng mình và có định hướng rõ ràng hơn cho con đường đại học. Các anh chị giảng viên rất nhiệt tình.</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'priority' => 3, 'slug' => 'anh-hoang-long-3', 'image' => '/userfiles/images/evo-images/11.jpg', 'rate' => 'Chương trình học như một bootcamp thực thụ.', 'name' => 'Anh Hoàng Long', 'describe' => 'Học viên lớp EVO ADULT', 'content' => '<p>Mình là dân trái ngành nhưng sau khóa học Backend, mình đã tự tin ứng tuyển và có được công việc lập trình viên như mơ ước.</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'priority' => 4, 'slug' => 'phu-huynh-be-gia-han-4', 'image' => '/userfiles/images/evo-images/12.jpg', 'rate' => 'Môi trường học tập năng động, sáng tạo.', 'name' => 'Anh Tuấn Kiệt', 'describe' => 'Phụ huynh bé Gia Hân - Lớp EVO KID', 'content' => '<p>Con gái mình rất thích các giờ học tại EVO. Trung tâm có phương pháp dạy rất hay, giúp các con vừa học vừa chơi.</p>', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'priority' => 5, 'slug' => 'ban-thuy-linh-5', 'image' => '/userfiles/images/evo-images/13.jpg', 'rate' => 'Giảng viên hỗ trợ rất tận tình.', 'name' => 'Bạn Thùy Linh', 'describe' => 'Học viên lớp EVO ADULT', 'content' => '<p>Các anh mentor đã giúp đỡ em rất nhiều trong dự án cuối khóa. Nhờ vậy mà em có một sản phẩm chất lượng để đưa vào CV.</p>', 'created_at' => now(), 'updated_at' => now()],
        ]);

        // 9. Bảng Document (Tài liệu học tập)
        DB::table('document')->insert([
            ['id' => 1, 'priority' => 1, 'name' => 'Giáo trình Lập trình Scratch cơ bản', 'src' => '/userfiles/files/giao-trinh-scratch.pdf', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 2, 'priority' => 2, 'name' => 'Tổng hợp cú pháp Python cho người mới bắt đầu', 'src' => '/userfiles/files/python-cheatsheet.pdf', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'priority' => 3, 'name' => 'Bộ cài đặt Visual Studio Code', 'src' => '/userfiles/files/vscode-setup.zip', 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'priority' => 4, 'name' => 'Tài liệu hướng dẫn Git và Github', 'src' => '/userfiles/files/git-github-guide.pdf', 'created_at' => now(), 'updated_at' => now()],
        ]);

        // 10. Bảng Menus (Menu điều hướng)
        DB::table('menus')->insert([
            // Menu cấp 1
            ['id' => 1, 'name' => 'Trang chủ', 'url' => '/', 'priority' => 1, 'parent_id' => null, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 2, 'name' => 'Khóa học', 'url' => '/khoa-hoc', 'priority' => 2, 'parent_id' => null, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'name' => 'Tin tức', 'url' => '/tin-tuc', 'priority' => 3, 'parent_id' => null, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'name' => 'Về chúng tôi', 'url' => '/gioi-thieu', 'priority' => 4, 'parent_id' => null, 'created_at' => now(), 'updated_at' => now()],
            // Menu cấp 2 - con của Khóa học (id=2)
            ['id' => 5, 'name' => 'EVO KID', 'url' => '/khoa-hoc/khoa-hoc-evo-kid-1', 'priority' => 1, 'parent_id' => 2, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 6, 'name' => 'EVO TEEN', 'url' => '/khoa-hoc/khoa-hoc-evo-teen-2', 'priority' => 2, 'parent_id' => 2, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 7, 'name' => 'EVO ADULT', 'url' => '/khoa-hoc/khoa-hoc-evo-adult-3', 'priority' => 3, 'parent_id' => 2, 'created_at' => now(), 'updated_at' => now()],
            // Menu cấp 2 - con của Tin tức (id=3)
            ['id' => 8, 'name' => 'Tin tức Công nghệ', 'url' => '/danh-muc/tin-tuc-cong-nghe-1', 'priority' => 1, 'parent_id' => 3, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 9, 'name' => 'Sự kiện & Workshop', 'url' => '/danh-muc/su-kien-workshop-2', 'priority' => 2, 'parent_id' => 3, 'created_at' => now(), 'updated_at' => now()],
        ]);

        $this->command->info('Seeding EVO Education data completed successfully.');
    }
}
