<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class EnglishCenterSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run(): void
    {
        // Tạm thời vô hiệu hóa kiểm tra khóa ngoại để tránh lỗi khi truncate
        Schema::disableForeignKeyConstraints();

        // Xóa dữ liệu cũ trong các bảng
        DB::table('users')->truncate();
        DB::table('categories')->truncate();
        DB::table('contact')->truncate();
        DB::table('customers')->truncate();
        DB::table('document')->truncate();
        DB::table('home_page')->truncate();
        DB::table('menus')->truncate();
        DB::table('news')->truncate();
        DB::table('parents_corner')->truncate();
        DB::table('teachers')->truncate();
        DB::table('trainings')->truncate();

        // Thêm dữ liệu cho bảng 'users'
        DB::table('users')->insert([
            [
                'id' => 1,
                'name' => 'root',
                'email' => 'root@gmail.com',
                'password' => '$2y$12$mRctHCuGjzuVn2DrIXLtm.LPsqC./pnoZN3A3BHh/rxgR1lNTkWxi', // Mật khẩu đã được hash
                'remember_token' => 'rB7bVF443il2gYRdNDzHZF4A22CUMfx8xEhCvERsv5ZstGTkIQqDTUUQRX8f',
                'created_at' => null,
                'updated_at' => null,
            ],
        ]);

        // Thêm dữ liệu cho bảng 'categories'
        DB::table('categories')->insert([
            [
                'id' => 1,
                'name' => 'Kiến thức và kinh nghiệm',
                'slug' => 'kien-thuc-va-kinh-nghiem-1',
                'count' => 5,
                'created_at' => '2025-07-21 03:53:45',
                'updated_at' => '2025-07-21 03:53:45',
            ],
            [
                'id' => 2,
                'name' => 'Tin tức',
                'slug' => 'tin-tuc-2',
                'count' => 6,
                'created_at' => '2025-08-04 09:57:45',
                'updated_at' => '2025-08-04 09:57:45',
            ],
        ]);

        // Thêm dữ liệu cho bảng 'contact'
        DB::table('contact')->insert([
            [
                'id' => 1,
                'address' => '[{"address":"AU Lạng Giang: Số 50.51 khu HDB, tổ dân phố Toàn Mỹ, xã Lạng Giang, tỉnh Bắc Giang.","googlemap":"<iframe src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3715.481839542269!2d106.22817431051976!3d21.370924280283436!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31356bc73070c9b3%3A0x7d43afddc5504ba1!2zQ8O0bmcgVHkgVE5ISCBN4buZdCBUaMOgbmggVmnDqm4gVMawIFbhuqVuIFbDoCBYw6J5IEThu7FuZyBUb8OgbiBN4bu5!5e0!3m2!1svi!2s!4v1754303261818!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>"},{"address":"AU Bắc Giang: Tầng 1, nhà B, kí túc xá sinh viên, đường Hoàng Văn Thụ, phường Bắc Giang, tỉnh Bắc Giang","googlemap":"<iframe src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3717.6938145474705!2d106.21017691051715!3d21.283584280348666!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31356da5c23132b3%3A0xb9acbbfb694a6a4a!2zS8O9IHTDumMgeMOhIFNpbmggdmnDqm4gQuG6r2MgR2lhbmc!5e0!3m2!1svi!2s!4v1754303286922!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>"}]',
                'phone' => '0979798426',
                'hotline' => '0979798426 - 0868234966',
                'email' => 'aubacgiang@gmail.com',
                'zalo' => 'https://zalo.me/0979798426', // Lưu đường dẫn tới ảnh QR Zalo
                'facebook' => 'https://www.facebook.com/AULangInstitute.BG/',
                'youtube' => 'https://www.youtube.com/@nguyenminhnguyet3478',
                'created_at' => '2025-08-04 01:54:47',
                'updated_at' => '2025-08-07 00:30:00',
            ],
        ]);

        // Thêm dữ liệu cho bảng 'home_page'
        DB::table('home_page')->insert([
            [
                'id' => 1,
                'banners' => '{"title":"Khơi dậy tiềm năng, vững bước tương lai cùng AU English","description":"Môi trường học tập chuẩn quốc tế, giúp con tự tin giao tiếp và chinh phục các kỳ thi.","images":["/userfiles/images/home/ANH%20TRANG%20CHU.jpg","/userfiles/images/home/491417692_1256480809817417_4821618544474045259_n.jpg","/userfiles/images/home/DSC04324.jpg","/userfiles/images/home/R5AT0512.jpg","/userfiles/images/home/R5AT4278.jpg","/userfiles/images/home/R5AT4246.jpg","/userfiles/images/home/R5AT4176.jpg","/userfiles/images/home/z5581456363302_b57dac4162e102d9e48ad685e3c2334b.jpg","/userfiles/images/home/z5581592846335_1c090589e126117b71c3760cf42f7908.jpg"]}',
                'stats' => '[{"value":"10","description":"Năm kinh nghiệm","images":"\\/userfiles\\/images\\/home\\/10%20n%C4%83m%20kinh%20nghi%E1%BB%87m%20.JPG"},{"value":"30","description":"Giáo viên ưu tú","images":"\\/userfiles\\/images\\/home\\/Gi%C3%A1o%20vi%C3%AAn%20%C6%B0u%20t%C3%BA.JPG"}]',
                'fags' => '[{"question":"Trung tâm có lớp học thử miễn phí không?","answer":"Có, chúng tôi có các buổi học thử định kỳ. Vui lòng để lại thông tin để được tư vấn lịch học gần nhất."},{"question":"Lộ trình học cho bé được xây dựng như thế nào?","answer":"Mỗi học viên sẽ được kiểm tra đầu vào và tư vấn lộ trình cá nhân hóa để đảm bảo hiệu quả học tập tốt nhất."},{"question":"Đội ngũ giáo viên của trung tâm có trình độ như thế nào?","answer":"100% giáo viên tại AU English có bằng cấp sư phạm, chứng chỉ giảng dạy quốc tế (TESOL/IELTS) và nhiều năm kinh nghiệm."}]',
                'images' => '["/userfiles/images/home/491417692_1256480809817417_4821618544474045259_n.jpg","/userfiles/images/home/ANH%20TRANG%20CHU.jpg","/userfiles/images/home/DSC04324.jpg","/userfiles/images/home/R5AT0512.jpg","/userfiles/images/home/R5AT4027.jpg","/userfiles/images/home/R5AT4176.jpg","/userfiles/images/home/R5AT4246.jpg","/userfiles/images/home/R5AT4278.jpg","/userfiles/images/home/z5581456363302_b57dac4162e102d9e48ad685e3c2334b.jpg","/userfiles/images/home/z5581592846335_1c090589e126117b71c3760cf42f7908.jpg"]',
                'link_youtubes' => '["https://www.youtube.com/watch?v=MjD-vIFhkOU","https://www.youtube.com/watch?v=MeBtmLRtUoQ","https://www.youtube.com/watch?v=IlAw2WBLlxg","https://www.youtube.com/watch?v=-ru1Qs4PNeA"]',
                'created_at' => '2025-08-04 01:54:47',
                'updated_at' => '2025-08-06 14:44:48',
            ],
        ]);

        // Thêm dữ liệu cho bảng 'menus'
        DB::table('menus')->insert([
            ['id' => 2, 'name' => 'Tin tức & Sự kiện', 'url' => '/news', 'priority' => 2, 'parent_id' => null, 'created_at' => '2025-07-27 14:09:34', 'updated_at' => '2025-07-28 02:21:26'],
            ['id' => 3, 'name' => 'Chương trình học', 'url' => '/training', 'priority' => 3, 'parent_id' => null, 'created_at' => '2025-07-27 14:10:00', 'updated_at' => '2025-07-28 02:22:26'],
            ['id' => 7, 'name' => 'Tiếng Anh Mẫu giáo', 'url' => '/training/tieng-anh-mau-giao-3-6-tuoi-1', 'priority' => 1, 'parent_id' => 3, 'created_at' => '2025-07-27 14:23:40', 'updated_at' => '2025-08-04 10:04:35'],
            ['id' => 8, 'name' => 'Tiếng Anh Tiểu học', 'url' => '/training/tieng-anh-tieu-hoc-6-11-tuoi-2', 'priority' => 2, 'parent_id' => 3, 'created_at' => '2025-07-27 14:25:13', 'updated_at' => '2025-08-04 10:04:53'],
            ['id' => 9, 'name' => 'Tiếng Anh THCS', 'url' => '/training/tieng-anh-thcs-11-13-tuoi-3', 'priority' => 3, 'parent_id' => 3, 'created_at' => '2025-07-27 14:25:36', 'updated_at' => '2025-08-04 10:05:07'],
            ['id' => 10, 'name' => 'Kiến thức và kinh nghiệm', 'url' => '/category/kien-thuc-va-kinh-nghiem-1', 'priority' => 1, 'parent_id' => 2, 'created_at' => '2025-07-27 14:26:06', 'updated_at' => '2025-08-04 10:04:17'],
            ['id' => 11, 'name' => 'Tin tức', 'url' => '/category/tin-tuc-2', 'priority' => 2, 'parent_id' => 2, 'created_at' => '2025-08-04 10:03:30', 'updated_at' => '2025-08-04 10:03:54'],
            ['id' => 12, 'name' => 'Chương trình Bán Trú hè', 'url' => '/training/chuong-trinh-ban-tru-he-4', 'priority' => 4, 'parent_id' => 3, 'created_at' => '2025-08-04 10:05:37', 'updated_at' => '2025-08-04 10:05:37'],
            ['id' => 13, 'name' => 'Tiếng Anh Doanh Nghiệp', 'url' => '/training/tieng-anh-doanh-nghiep-5', 'priority' => 5, 'parent_id' => 3, 'created_at' => '2025-08-04 10:06:03', 'updated_at' => '2025-08-04 10:06:03'],
        ]);

        // Thêm dữ liệu cho bảng 'news'
        DB::table('news')->insert([
            [
                'id' => 1, 'slug' => 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-1', 'title' => 'Bí quyết giúp con học tiếng Anh tại nhà',
                'excerpt' => 'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
                'thumbnail' => '/userfiles/images/R5AT3841.jpg', 'author' => 'Admin', 'view' => 1456, 'category_id' => 1,
                'content' => '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><blockquote><p>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</p></blockquote>',
                'created_at' => '2025-07-21 03:53:45', 'updated_at' => '2025-07-21 05:41:02'
            ],
            [
                'id' => 13, 'slug' => 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-13', 'title' => 'Bí quyết giúp con học tiếng Anh tại nhà 5',
                'excerpt' => 'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
                'thumbnail' => '/userfiles/images/R5AT3841.jpg', 'author' => 'Admin', 'view' => 1456, 'category_id' => 1,
                'content' => '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><blockquote><p>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</p></blockquote>',
                'created_at' => '2025-07-21 03:53:45', 'updated_at' => '2025-07-21 05:41:02'
            ]
        ]);

        // Thêm dữ liệu cho bảng 'parents_corner'
        DB::table('parents_corner')->insert([
            [
                'id' => 1, 'priority' => 1, 'slug' => 'phu-huynh-tra-dan-chuong-0', 'image' => '/userfiles/images/R5AT4198.jpg',
                'rate' => 'Sau khi cho con học tại trung tâm con tôi đã tự tin hơn trước rất nhiều!', 'name' => 'Phụ huynh Trà Đan Chương',
                'describe' => 'Phụ huynh bé Phúc',
                'content' => '<p>Sau một khóa học tại AU, bé nhà mình đã mạnh dạn hơn rất nhiều. Trước đây con rất nhát, không dám nói tiếng Anh, nhưng giờ con có thể tự tin giới thiệu bản thân và hát các bài hát tiếng Anh. Các thầy cô rất nhiệt tình và kiên nhẫn, phương pháp học qua trò chơi thực sự hiệu quả.</p>',
                'created_at' => '2025-07-21 03:53:45', 'updated_at' => '2025-07-21 05:44:12'
            ],
            [
                'id' => 2, 'priority' => 2, 'slug' => 'phu-huynh-anh-tiep-chinh-vy-1', 'image' => '/userfiles/images/R5AT4200.jpg',
                'rate' => 'Chương trình học bài bản, con tiến bộ rõ rệt.', 'name' => 'Phụ huynh Anh. Tiếp Chính Vỹ',
                'describe' => 'Phụ huynh bé Vũ',
                'content' => 'Tôi rất hài lòng với lộ trình học tập tại trung tâm. Con không chỉ được học với giáo viên bản xứ mà còn được củng cố ngữ pháp thường xuyên. Điểm số trên lớp của con đã cải thiện đáng kể, và quan trọng nhất là con tìm thấy niềm yêu thích với môn tiếng Anh.',
                'created_at' => '2025-07-21 03:53:45', 'updated_at' => '2025-07-21 03:53:45'
            ],
            [
                'id' => 3, 'priority' => 3, 'slug' => 'phu-huynh-lo-trung-2', 'image' => '/userfiles/images/R5AT4202.jpg',
                'rate' => 'Trung tâm chuyên nghiệp, giáo viên tận tâm.', 'name' => 'Phụ huynh Lò Trung',
                'describe' => 'Phụ huynh bé Khương',
                'content' => 'Điều tôi ấn tượng nhất là sự chuyên nghiệp và tận tâm của đội ngũ AU. Từ giáo viên đến các bạn trợ giảng đều rất quan tâm đến từng học viên. Trung tâm thường xuyên cập nhật tình hình học tập của con, giúp tôi nắm bắt được sự tiến bộ và phối hợp cùng nhà trường để hỗ trợ con tốt nhất.',
                'created_at' => '2025-07-21 03:53:45', 'updated_at' => '2025-07-21 03:53:45'
            ],
        ]);

        // Thêm dữ liệu cho bảng 'teachers'
        DB::table('teachers')->insert([
            [
                'id' => 1, 'priority' => 1, 'full_name' => 'Thầy giáo JASON TYLER REILLY', 'role' => 'Quốc tịch Mỹ',
                'qualifications' => 'Trình độ: Cử nhân khoa học giáo dục Đại Học Wisconsin - Madison - Mỹ, Chứng chỉ giảng dạy Quốc tế tại Đại Học Wisconsin - Madison, Gần 10 năm kinh nghiệm giảng dạy các độ tuổi mầm non và tiểu học',
                'avatar' => '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-38-18.png', 'slug' => 'thay-giao-jason-tyler-reilly-1',
                'facebook' => 'https://facebook.com/auenglish', 'email' => 'chu.kiem@example.net',
                'description' => '<h3>Kinh nghiệm giảng dạy</h3><p>Với hơn 5 năm kinh nghiệm giảng dạy, thầy/cô đã giúp đỡ hàng trăm học viên cải thiện trình độ tiếng Anh và đạt được mục tiêu học tập. Phương pháp giảng dạy tập trung vào sự tương tác và truyền cảm hứng cho học viên.</p>',
                'created_at' => '2025-07-21 03:53:45', 'updated_at' => '2025-07-27 15:41:35'
            ],
            [
                'id' => 2, 'priority' => 2, 'full_name' => 'Thầy giáo ELLIS JOHN WARD', 'role' => 'Quốc tịch Anh',
                'qualifications' => 'Trình độ: Cử nhân sư phạm Ngôn Ngữ Anh tại Đại học Leicester Anh Quốc, Chứng chỉ giảng dạy Quốc tế tại Anh Quốc',
                'avatar' => '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-42-24.png', 'slug' => 'thay-giao-ellis-john-ward-2',
                'facebook' => 'https://facebook.com/auenglish', 'email' => 'nghia.khau@example.org',
                'description' => '<h3>Kinh nghiệm giảng dạy</h3><p>Với hơn 5 năm kinh nghiệm giảng dạy, thầy/cô đã giúp đỡ hàng trăm học viên cải thiện trình độ tiếng Anh và đạt được mục tiêu học tập. Phương pháp giảng dạy tập trung vào sự tương tác và truyền cảm hứng cho học viên.</p>',
                'created_at' => '2025-07-21 03:53:45', 'updated_at' => '2025-07-27 15:43:43'
            ],
            [
                'id' => 3, 'priority' => 3, 'full_name' => 'Thầy giáo JACOB ADAM MCDONNELL', 'role' => 'Quốc tịch Anh',
                'qualifications' => 'Trình độ: Thạc sĩ kĩ thuật chuyên nghành hàng không - Anh Quốc, Chứng chỉ giảng dạy Quốc tế tại Anh Quốc',
                'avatar' => '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-44-00.png', 'slug' => 'thay-giao-jacob-adam-mcdonnell-3',
                'facebook' => 'https://facebook.com/auenglish', 'email' => 'thy68@example.org',
                'description' => '<h3>Kinh nghiệm giảng dạy</h3><p>Với hơn 5 năm kinh nghiệm giảng dạy, thầy/cô đã giúp đỡ hàng trăm học viên cải thiện trình độ tiếng Anh và đạt được mục tiêu học tập. Phương pháp giảng dạy tập trung vào sự tương tác và truyền cảm hứng cho học viên.</p>',
                'created_at' => '2025-07-21 03:53:45', 'updated_at' => '2025-07-27 15:44:41'
            ],
            [
                'id' => 4, 'priority' => 4, 'full_name' => 'Thầy giáo Jai Kattenberg', 'role' => 'Quốc tịch Úc',
                'qualifications' => 'Trình độ: Cử nhân nghệ thuật Đại học Griffith -Úc , Chứng chỉ giảng dạy Quốc tế , Kinh nghiệm dạy các độ tuổi: 3 năm dạy các độ tuổi mầm non - tiểu học - THCS',
                'avatar' => '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-45-43.png', 'slug' => 'thay-giao-jai-kattenberg-4',
                'facebook' => 'https://facebook.com/auenglish', 'email' => 'aubacgiang@gmail.com', 'description' => null,
                'created_at' => '2025-07-27 15:47:11', 'updated_at' => '2025-07-27 15:47:11'
            ]
        ]);

        // Thêm dữ liệu cho bảng 'trainings'
        DB::table('trainings')->insert([
            [
                'id' => 1, 'priority' => 1, 'slug' => 'tieng-anh-mau-giao-3-6-tuoi-1', 'title' => 'Tiếng Anh Mẫu giáo (3 - 6 tuổi)', 'age' => '3 - 6 tuổi',
                'description' => 'Khóa học tiếng Anh mẫu giáo tại AU giúp trẻ 3-6 tuổi phát triển kỹ năng nghe - nói và phản xạ ngôn ngữ tự nhiên thông qua phương pháp ngữ âm 5 cấp độ cùng các hoạt động vui nhộn như bài hát và trò chơi.',
                'thumbnail' => '/userfiles/images/course/z5581456363302_b57dac4162e102d9e48ad685e3c2334b.jpg',
                'outcome' => 'Phát âm đúng theo phương pháp ngữ âm quốc tế | Nhận biết và đánh vần lưu loát | Giao tiếp tự tin ngay từ những năm đầu học | Phát triển kỹ năng đọc và viết từ sớm',
                'method' => 'Phương pháp giảng dạy tập trung vào ngữ âm và giao tiếp, giúp trẻ 3–6 tuổi phát âm chuẩn, phản xạ nhanh và sử dụng tiếng Anh tự nhiên thông qua bài hát, trò chơi và hoạt động tương tác.',
                'content' => '<ol><li>Tập trung đặc biệt vào khả năng nghe – nói, giúp con phản xạ nhanh với ngôn ngữ và phát âm chuẩn bản xứ từ nhỏ. Tiếng Anh mẫu giáo của AU là chương trình ngữ âm tiếng Anh 5 cấp độ, phù hợp với trẻ từ 3 đến 6 tuổi. Chương trình giúp trẻ làm quen và thành thạo 44 âm trong tiếng Anh thông qua các hoạt động tương tác như bài hát, trò chơi và câu đố.</li><li>Chương trình sử dụng hình ảnh sinh động, trò chơi, bài hát và hoạt động tương tác, giúp trẻ học tập một cách vui vẻ và hiệu quả. Qua mỗi cấp độ, trẻ dần phát triển kỹ năng ngôn ngữ và tự tin sử dụng tiếng Anh trong giao tiếp hàng ngày.</li><li>Chương trình giúp trẻ tiếp cận tiếng Anh một cách tự nhiên thông qua phương pháp ngữ âm hiện đại. Trẻ sẽ được làm quen với âm chữ cái, ghép vần và phát âm chuẩn ngay từ những năm đầu đời, tạo nền tảng vững chắc cho kỹ năng đọc và viết.</li></ol>',
                'images' => '["/userfiles/images/course/m%C3%A2m%20non%201.jpg","/userfiles/images/course/mn%203.jpg","/userfiles/images/course/mn4.jpg","/userfiles/images/course/mn5.jpg","/userfiles/images/course/z5581456363302_b57dac4162e102d9e48ad685e3c2334b.jpg"]',
                'youtube_review_link' => 'https://www.youtube.com/watch?v=MjD-vIFhkOU',
                'created_at' => '2025-07-21 03:53:45', 'updated_at' => '2025-08-04 09:13:33'
            ],
            [
                'id' => 2, 'priority' => 2, 'slug' => 'tieng-anh-tieu-hoc-6-11-tuoi-2', 'title' => 'Tiếng Anh Tiểu học (6 - 11 tuổi)', 'age' => '6 - 11 tuổi',
                'description' => 'Giúp học sinh Tiểu học phát triển vững chắc kỹ năng giao tiếp tiếng Anh, tư duy ngôn ngữ và khả năng học thuật theo chuẩn quốc tế. Khóa học hướng tới việc xây dựng nền tảng ngôn ngữ lâu dài, đồng thời cải thiện điểm số và sự tự tin trong chương trình học chính khóa.',
                'thumbnail' => '/userfiles/images/course/ti%E1%BA%BBu%20hoc%202.jpg',
                'outcome' => 'Lộ trình học tập bài bản với 100% giáo viên nước ngoài. Rèn luyện kỹ năng sống, tư duy phản xạ và khả năng sử dụng tiếng Anh trong thực tế một cách tự nhiên và hiệu quả.',
                'method' => 'Tập trung phát triển kỹ năng giao tiếp thực tế qua 100% giáo viên bản ngữ, kết hợp chương trình học thuật chuẩn Cambridge và lộ trình cá nhân hóa theo năng lực từng học sinh.',
                'content' => '<p><strong>100% HỌC VỚI GIÁO VIÊN NƯỚC NGOÀI:</strong> Chương trình tập trung vào phát triển kỹ năng giao tiếp thực tế, giúp con tự tin nói tiếng Anh ngay từ những buổi học đầu tiên. Với sự hướng dẫn của giáo viên bản xứ và trợ giảng tận tâm, con sẽ được thực hành phát âm chuẩn, học cách diễn đạt suy nghĩ mạch lạc và thể hiện bản thân bằng tiếng Anh một cách tự nhiên nhất.</p><p><strong>CHƯƠNG TRÌNH HỌC TẬP TÍCH HỢP:</strong> Tại AU, các con được học song song theo lộ trình tiếng Anh học thuật bài bản, bám sát khung chương trình Cambridge do Nhà xuất bản Đại học Oxford phát triển. Bên cạnh đó, AU đặc biệt chú trọng hỗ trợ học sinh nâng cao kết quả học tập tại trường thông qua các buổi học ngữ pháp bổ trợ miễn phí, giúp củng cố kiến thức, cải thiện điểm số và tăng sự tự tin trong lớp học chính khóa.</p><p><strong>LỘ TRÌNH CÁ NHÂN HÓA và HỆ THỐNG HỌC LIỆU TOÀN DIỆN:</strong> Với lộ trình cá nhân hóa theo khả năng của con và hệ thống đánh giá kép. Con được điều chỉnh kịp thời nhờ được đánh giá liên tục. Bố mẹ biết chính xác con đang ở đâu, mạnh gì – yếu gì qua báo cáo chi tiết định kỳ. Hệ thống giao bài tập online trên nền tảng trực tuyến của nhà xuất bản đại học Oxford giúp con hào hứng và tiến bộ nhanh trong học tập.</p>',
                'images' => '["/userfiles/images/course/Ti%E1%BB%83u%20h%E1%BB%8Dc%201.jpg","/userfiles/images/course/ti%E1%BA%BBu%20hoc%202.jpg","/userfiles/images/course/tieu%20hoc%203.jpg"]',
                'youtube_review_link' => 'https://www.youtube.com/watch?v=MeBtmLRtUoQ',
                'created_at' => '2025-07-21 03:53:45', 'updated_at' => '2025-08-04 09:22:11'
            ],
            [
                'id' => 3, 'priority' => 3, 'slug' => 'tieng-anh-thcs-11-13-tuoi-3', 'title' => 'Tiếng Anh THCS (11 - 13 tuổi)', 'age' => '11 - 13 tuổi',
                'description' => 'Lộ trình học tiếng Anh tại AU dành cho học sinh THCS được thiết kế bài bản, giúp xây nền tảng ngôn ngữ vững chắc và phát triển toàn diện 4 kỹ năng. Học sinh được làm quen sớm với tư duy và cấu trúc bài thi IELTS, sẵn sàng chinh phục mục tiêu ngay từ cấp 3.',
                'thumbnail' => '/userfiles/images/course/thcs/z6761734186314_db682a9e2e4ab2bb8af1aaa5c6c2b34c.jpg',
                'outcome' => 'Giúp học sinh THCS phát triển toàn diện năng lực tiếng Anh học thuật, đạt trình độ B1–B2 theo khung CEFR, và sẵn sàng bước vào lộ trình luyện thi IELTS hiệu quả ở bậc THPT.',
                'method' => 'Xây dựng nền tảng ngôn ngữ vững chắc, phát triển toàn diện 4 kỹ năng và lồng ghép chiến lược làm bài IELTS từ sớm. Chương trình theo chuẩn Cambridge với đánh giá liên tục, cùng giáo viên nước ngoài hỗ trợ luyện phản xạ giao tiếp và tư duy tiếng Anh.',
                'content' => '<p>Giai đoạn học THCS (từ lớp 6 đến lớp 9) là thời điểm quan trọng để học sinh xây dựng nền tảng tiếng Anh vững chắc, chuẩn bị cho các mục tiêu học thuật cao hơn như IELTS ở cấp 3. Tại AU Bắc Giang, chương trình học dành cho học sinh THCS được thiết kế với định hướng tối đa hoá năng lực, phát triển đều cả về kiến thức, kỹ năng và tư duy ngôn ngữ.</p><p><strong>Xây nền tảng học thuật vững chắc:</strong> Hệ thống từ vựng – ngữ pháp – phát âm được củng cố sâu, giúp học sinh hiểu rõ bản chất ngôn ngữ và ứng dụng thành thạo.</p><p><strong>Phát triển toàn diện 4 kỹ năng (Nghe – Nói – Đọc – Viết):</strong> Thông qua các chủ đề học thuật và tình huống thực tế, học sinh được rèn luyện đầy đủ kỹ năng, tạo nền tảng chuyển tiếp mượt mà lên chương trình IELTS.</p><p><strong>Lồng ghép chiến lược làm bài IELTS từ sớm:</strong> Các dạng bài đọc hiểu, viết luận và kỹ năng phản xạ được giới thiệu từng bước, giúp học sinh làm quen dần với cách tư duy và cấu trúc bài thi.</p><p><strong>Học tập theo cấp độ Cambridge – Chuẩn hoá trình độ:</strong> Chương trình học được thiết kế theo hệ thống CEFR (A2–B1–B2), giúp học sinh xác định rõ mục tiêu và theo dõi được tiến độ phát triển của bản thân.</p><p><strong>Luyện phản xạ giao tiếp – Tư duy tiếng Anh:</strong> Giáo viên nước ngoài đồng hành trong các buổi speaking chuyên biệt, giúp học sinh tự tin nói tiếng Anh và tư duy bằng tiếng Anh ngay từ giai đoạn THCS.</p><p><strong>Theo dõi sát sao – Phản hồi kịp thời:</strong> Mỗi học sinh đều được theo dõi tiến độ cá nhân, nhận phản hồi thường xuyên từ giáo viên để kịp thời điều chỉnh phương pháp học phù hợp.</p>',
                'images' => '["/userfiles/images/course/thcs/z6761734186314_db682a9e2e4ab2bb8af1aaa5c6c2b34c.jpg","/userfiles/images/course/thcs/z6784471826211_e9e3bab4247f70ef66e47731efde9c3e.jpg","/userfiles/images/course/thcs/z6784471845994_a4e1a26b2d683e634c271bd65f4650f1.jpg","/userfiles/images/course/thcs/z6834235330215_2c619a699a939bf64de1c3358088d62c.jpg"]',
                'youtube_review_link' => 'https://www.youtube.com/watch?v=2',
                'created_at' => '2025-07-21 03:53:45', 'updated_at' => '2025-08-04 09:25:21'
            ],
            [
                'id' => 4, 'priority' => 4, 'slug' => 'chuong-trinh-ban-tru-he-4', 'title' => 'Chương trình Bán Trú hè', 'age' => '3 - 13 tuổi',
                'description' => 'Chương trình Bán trú hè AU mang đến môi trường “du học tại chỗ” với hơn 20 giờ học tiếng Anh/tuần cùng giáo viên bản ngữ, kết hợp đa dạng hoạt động ngoại khóa, kỹ năng, nghệ thuật và môn văn hóa. Trẻ được học trong không gian hiện đại, an toàn tuyệt đối, phụ huynh có thể theo dõi mọi hoạt động hằng ngày.',
                'thumbnail' => '/userfiles/images/course/bantruhe/z6675687609743_ee84a441e35f88d27e6ce27c424ff573.jpg',
                'outcome' => 'Tự tin sử dụng tiếng anh để giao tiếp. Phát triển toàn diện cả về kiến thức học thuật, kỹ năng sống và thể chất, hình thành tư duy sáng tạo, tinh thần hợp tác và sẵn sàng cho năm học mới với nền tảng vững chắc.',
                'method' => 'Tạo môi trường “du học tại chỗ” với hơn 20 giờ tiếng Anh/tuần cùng 100% giáo viên bản ngữ, kết hợp học tập và sinh hoạt hoàn toàn bằng tiếng Anh.',
                'content' => '<p>Mô hình “<strong>du học tại chỗ</strong>”: Thời lượng sử dụng Tiếng Anh với giáo viên bản ngữ trên 20 tiếng 1 tuần thông qua: các giờ học tiếng Anh hàng ngày, vui chơi sinh hoạt bằng Tiếng Anh, các trải nghiệm hàng tuần cũng bằng Tiếng Anh để các con được "tắm" trong ngôn ngữ một cách tự nhiên như người bản xứ.</p><p><strong>Cơ sở vật chất khang trang hiện đại</strong>: Không gian rộng lên đến hàng ngàn m2 với khu sinh hoạt chung, thư viện, sân chơi thể thao và khu vực ngoài trời.</p><p><strong>Chương trình đào tạo đa dạng và tiên tiến</strong>: Ngoài tiếng Anh chuyên sâu, các con tham gia các lớp năng khiếu (cầu lông, nhảy, Yoga, vẽ), kỹ năng sống và các môn văn hoá (Toán, Văn).</p><p><strong>Hoạt động ngoại khóa đa dạng:</strong> Các chuyến dã ngoại, thăm quan, hoạt động xã hội, từ thiện, khoá tu được hướng dẫn bằng tiếng Anh.</p><p><strong>Dự án thực hành sáng tạo hàng tuần: </strong>Tham gia các dự án khoa học, nghệ thuật, văn hóa để khuyến khích tư duy sáng tạo và kỹ năng làm việc nhóm.</p><p><strong>An ninh và liên lạc:</strong> Hệ thống camera cho phép phụ huynh theo dõi, kèm sổ liên lạc điện tử cập nhật tiến trình học tập.</p>',
                'images' => '["/userfiles/images/course/bantruhe/R5AT0507.jpg","/userfiles/images/course/bantruhe/R5AT0534.jpg","/userfiles/images/course/bantruhe/z6675687609743_ee84a441e35f88d27e6ce27c424ff573.jpg","/userfiles/images/course/bantruhe/z6811120022873_92c391d365ca803a583c9d2196b3f559.jpg","/userfiles/images/course/bantruhe/z6841060234506_221c56f16ec5311af07f14ec5849a8bf.jpg"]',
                'youtube_review_link' => 'https://www.youtube.com/watch?v=IlAw2WBLlxg',
                'created_at' => '2025-08-04 09:38:32', 'updated_at' => '2025-08-06 15:08:13'
            ],
            [
                'id' => 5, 'priority' => 5, 'slug' => 'tieng-anh-doanh-nghiep-5', 'title' => 'Tiếng Anh Doanh Nghiệp', 'age' => 'Người đi làm',
                'description' => 'Khóa học chất lượng cao, giúp người đi làm nâng cao khả năng giao tiếp Tiếng Anh, phục vụ cho nhu cầu làm việc và hợp tác quốc tế.',
                'thumbnail' => '/userfiles/images/course/doanhnghiep/490451643_1257623563036475_4296857575183842521_n.jpg',
                'outcome' => 'Nâng cao khả năng giao tiếp trong môi trường làm việc quốc tế, tự tin sử dụng tiếng Anh trong các tình huống chuyên môn như thuyết trình, họp, viết email, và đàm phán.',
                'method' => 'Tập trung vào chương trình đào tạo cá nhân hóa, nâng cao kỹ năng giao tiếp tiếng Anh chuyên nghiệp phù hợp môi trường quốc tế và yêu cầu doanh nghiệp.',
                'content' => '<p><strong>TỰ HÀO KHI ĐƯỢC CHỌN LÀ ĐƠN VỊ CHO CÁC CHUYÊN GIA NGƯỜI HÀN QUỐC&nbsp;</strong></p><p>&nbsp;</p><p style="text-align:justify;">AU Bắc Giang vô cùng vinh dự và tự hào khi được Công ty TNHH Hana Micron Vina (Hàn Quốc), một trong những Công ty lớn và uy tín của Hàn Quốc, chọn làm đối tác đào tạo Tiếng Anh cho các CHUYÊN GIA đến từ HÀN QUỐC. Đây không chỉ là một dấu mốc quan trọng, mà còn là minh chứng rõ ràng cho chất lượng giảng dạy và sự tận tâm của đội ngũ giáo viên tại trung tâm.&nbsp;</p><p style="text-align:justify;">&nbsp;</p><p style="text-align:justify;">Việc được Hana Micron Vina tin tưởng và giao phó nhiệm vụ đào tạo Tiếng Anh cho các chuyên gia không chỉ khẳng định uy tín của Trung tâm trong lĩnh vực đào tạo, mà còn là cơ hội để chúng tôi góp phần phát triển kỹ năng ngôn ngữ cho những người đang làm việc trong môi trường quốc tế. Đây cũng là minh chứng cho sự cam kết của trung tâm trong việc đáp ứng những yêu cầu khắt khe nhất từ phía đối tác doanh nghiệp.&nbsp;</p><p style="text-align:justify;">&nbsp;</p><p style="text-align:justify;">Với đội ngũ giáo viên giàu kinh nghiệm, phương pháp giảng dạy hiệu quả và chương trình học được thiết kế riêng biệt, AU Bắc Giang cam kết mang đến những khóa học chất lượng cao, giúp người đi làm nâng cao khả năng giao tiếp Tiếng Anh, phục vụ cho nhu cầu làm việc và hợp tác quốc tế.</p>',
                'images' => '["/userfiles/images/course/doanhnghiep/490451643_1257623563036475_4296857575183842521_n.jpg","/userfiles/images/course/doanhnghiep/490591983_1257623613036470_1438223622612507161_n.jpg","/userfiles/images/course/doanhnghiep/491279359_1257623556369809_6607203990488324089_n.jpg"]',
                'youtube_review_link' => '',
                'created_at' => '2025-08-04 09:49:35', 'updated_at' => '2025-08-04 09:56:32'
            ]
        ]);

        // Kích hoạt lại kiểm tra khóa ngoại
        Schema::enableForeignKeyConstraints();
    }
}
