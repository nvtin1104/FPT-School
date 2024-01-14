-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 21, 2023 lúc 06:35 PM
-- Phiên bản máy phục vụ: 10.6.15-MariaDB-cll-lve
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `u481797560_bookshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,0) NOT NULL,
  `create_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `change_email_token`
--

CREATE TABLE `change_email_token` (
  `id` int(11) NOT NULL,
  `token` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `labels`
--

CREATE TABLE `labels` (
  `id` int(11) NOT NULL,
  `label_name` varchar(45) NOT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  `id_group` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `labels`
--

INSERT INTO `labels` (`id`, `label_name`, `create_at`, `id_group`) VALUES
(69, 'Sách Giáo Khoa', '2023-10-03 12:33:23', 17),
(70, 'Văn Học', '2023-10-03 12:33:45', 17),
(71, 'Kỹ Năng Sống', '2023-10-03 12:34:12', 17),
(72, 'Sách Học Ngoại Ngữ', '2023-10-03 12:34:40', 17),
(73, 'Khác', '2023-10-03 12:35:09', 17),
(74, 'FICTION', '2023-10-03 12:35:52', 15),
(75, 'BUSINESS &#38; MANAGEMENT', '2023-10-03 12:36:17', 15),
(76, 'PERSONAL DEVELOPMENT', '2023-10-03 12:36:41', 15),
(77, 'CHILDREN&#39;S BOOK', '2023-10-03 12:37:04', 15),
(78, 'OTHER LANGUAES', '2023-10-03 12:37:24', 15),
(79, 'Truyện Ngắn', '2023-10-03 12:37:46', 18),
(80, 'Tiểu Thuyết', '2023-10-03 12:38:05', 18),
(81, 'Ngôn Tình', '2023-10-03 12:38:32', 18),
(82, 'Light Novel', '2023-10-03 12:39:55', 18),
(83, 'Tản Văn', '2023-10-03 12:40:50', 18),
(84, 'Manga - Comic', '2023-10-03 12:41:34', 19),
(85, 'Kiến Thức Bách Khoa', '2023-10-03 12:42:14', 19),
(86, 'Sách Tranh Kỹ Năng Sống', '2023-10-03 12:42:51', 19),
(87, 'Vừa Học Vừa Chơi', '2023-10-03 12:43:27', 19),
(88, 'Truyện Cổ Tích', '2023-10-03 12:44:03', 19),
(89, 'Đồ Chơi Nổi ', '2023-10-03 12:45:07', 12),
(90, 'Phương Tiện Các Loại', '2023-10-03 12:45:31', 12),
(91, 'Mô Hình Các Loại', '2023-10-03 12:46:01', 12),
(92, 'Đồ Chơi Theo Phim', '2023-10-03 12:46:31', 12),
(93, 'Đồ Chơi Khác', '2023-10-03 12:47:04', 12),
(94, 'Bút - Viết', '2023-10-03 12:52:22', 9),
(95, 'Dụng Cụ Học Sinh', '2023-10-03 12:52:40', 9),
(96, 'Dụng Cụ Văn Phòng', '2023-10-03 12:53:23', 9),
(97, 'Sản Phẩm Về Giấy', '2023-10-03 12:54:13', 9),
(98, 'Sản Phẩm Khác', '2023-10-03 12:54:38', 9),
(99, 'Đồ Dùng Cá Nhân', '2023-10-03 12:55:10', 6),
(100, 'Đồ Điện Gia Dụng', '2023-10-03 12:56:13', 6),
(101, 'Nhà Cửa - Đời Sống', '2023-10-03 12:56:45', 6),
(102, 'Lưu Niệm', '2023-10-03 12:57:12', 6),
(103, 'Sản Phẩm Khác', '2023-10-03 12:57:39', 6),
(104, 'Sách Giáo Khoa', '2023-10-03 12:59:10', 5),
(105, 'Sách Tham Khảo', '2023-10-03 12:59:34', 5),
(106, 'Luyện Thi THPTQG', '2023-10-03 13:00:16', 5),
(107, 'Đồ Nghề Đến Trường', '2023-10-03 13:00:59', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `label_group`
--

CREATE TABLE `label_group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(45) NOT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `category_group` varchar(15) DEFAULT 'orther_group'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `label_group`
--

INSERT INTO `label_group` (`id`, `group_name`, `create_at`, `category_group`) VALUES
(5, 'HÀNH TRANG ĐẾN TRƯỜNG', '2023-09-22 14:37:07', 'orther_group'),
(6, 'ĐỒ LƯU NIỆM', '2023-09-22 15:19:04', 'orther_group'),
(9, 'VPP - DỤNG CỤ HỌC SINH', '2023-09-24 15:29:35', 'orther_group'),
(12, 'ĐỒ CHƠI ', '2023-09-28 12:28:39', 'orther_group'),
(15, 'SÁCH NƯỚC NGOÀI', '2023-10-03 09:26:10', 'book_product'),
(17, 'SÁCH TRONG NƯỚC', '2023-10-03 11:56:29', 'book_product'),
(18, 'VĂN HỌC', '2023-10-03 12:15:48', 'book_product'),
(19, 'SÁCH THIẾU NHI', '2023-10-03 12:18:34', 'book_product');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_code` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'null',
  `total_price` decimal(10,0) UNSIGNED NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `note` text DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `payment` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `create_at` datetime DEFAULT current_timestamp(),
  `cf_at` datetime DEFAULT NULL,
  `success_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `total_price`, `phone`, `note`, `address`, `payment`, `user_id`, `fullname`, `email`, `status`, `create_at`, `cf_at`, `success_at`) VALUES
(1, '#OD20231018191843', 240000, '0905085920', '', '(An Giang) -  Nguyễn Văn Tín', '1', 1, ' Nguyễn Văn Tín', 'bgusyt46@gmail.com', 2, '2023-10-18 12:18:43', NULL, NULL),
(2, '#OD20231116152944', 170000, '0905085920', '', '(An Giang) - 90 - Nguyễn Xuân Nguyên', '1', 1, ' Nguyễn Văn Tín', 'bgusyt46@gmail.com', 1, '2023-11-16 08:29:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_cancel`
--

CREATE TABLE `order_cancel` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `agent` varchar(8) DEFAULT 'admin',
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_list`
--

CREATE TABLE `order_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `total_price` decimal(10,2) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `total_price`, `quantity`) VALUES
(132, 1, 9, 230000.00, 1),
(133, 2, 2, 160000.00, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `price` decimal(10,0) UNSIGNED NOT NULL,
  `old_price` decimal(10,0) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `update_at` datetime DEFAULT current_timestamp(),
  `description` text NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `policy` varchar(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `made_in` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `form` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `short_description` text NOT NULL,
  `specification` text NOT NULL,
  `sale` varchar(5) DEFAULT 'true',
  `category` varchar(45) NOT NULL DEFAULT 'other_product'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_name`, `create_at`, `price`, `old_price`, `status`, `update_at`, `description`, `quantity`, `policy`, `made_in`, `author`, `form`, `short_description`, `specification`, `sale`, `category`) VALUES
(1, 'Sách giáo khoa Lớp 12 - Bán lẻ kèm 1 bút bi TL-027', '2023-10-18 08:49:07', 150000, NULL, 1, '2023-10-18 08:49:07', '&#13;&#10;Tác giả: Nhiều tác giả.&#13;&#10;Nhà xuất bản: NXB Giáo Dục Việt Nam&#13;&#10;Công ty phát hành: NXB Giáo dục Việt Nam&#13;&#10;Số trang: 100&#13;&#10;Hình thức: bìa mềm&#13;&#10;Kích thước: 17x24 cm&#13;&#10;Năm xuất bản: 2022&#13;&#10;Sách giáo khoa được phát hành bởi Bộ Giáo Dục và Đạo Tạo, áp dụng cho chương trình học lớp 12.&#13;&#10;', 100, 'false', 'NXB Giáo Dục Việt Nam', 'Nhiều tác giả.', 'Bìa mềm', 'Sách giáo khoa được phát hành bởi Bộ Giáo Dục và Đạo Tạo, áp dụng cho chương trình học lớp 12.&#13;&#10;', 'Sách giáo khoa được phát hành bởi Bộ Giáo Dục và Đạo Tạo, áp dụng cho chương trình học lớp 12.&#13;&#10;', 'false', 'book_product'),
(2, 'Sách tham khảo cấp III ', '2023-10-18 08:59:04', 160000, NULL, 1, '2023-10-18 08:59:04', ' Sách tham khảo cấp III - Combo 3 quyển sách Đọc hiểu mở rộng văn bản Ngữ văn từ lớp 10 - 12 Theo Chương trình Giáo dục phổ thông 2018', 20, 'false', 'NXB Giáo Dục Việt Nam', 'Nhiều tác giả.', 'Bìa mềm', ' Sách tham khảo cấp III - Combo 3 quyển sách Đọc hiểu mở rộng văn bản Ngữ văn từ lớp 10 - 12 Theo Chương trình Giáo dục phổ thông 2018', '   Sách được thiết kế theo Chương trình Ngữ văn mới (2018)', 'false', 'book_product'),
(3, 'Combo 3 cuốn Hướng dẫn luyện đề ôn thi', '2023-10-18 09:04:21', 375000, NULL, 1, '2023-10-18 09:04:21', 'Hướng dẫn luyện đề ôn thi Đánh giá năng lực - HSA Khoa Học&#13;&#10;Hướng dẫn luyện đề ôn thi Đánh giá năng lực - HSA Tư duy định lượng&#13;&#10;Hướng dẫn luyện đề ôn thi Đánh giá năng lực - HSA tư duy định tính', 64, 'false', ' Nhà Xuất Bản Dân Trí', 'Nhiều tác giả.', 'Bìa mềm', 'Văn học – Ngôn ngữ và Khoa học Tự nhiên – Xã hội.', 'ôn thi Đánh giá năng lực (HSA) do đội ngũ tác giả bao gồm các chuyên gia, giảng viên Đại học, giáo viên THPT Chuyên – những người có kinh nghiệm', 'false', 'book_product'),
(5, 'Bộ đồ dùng cá nhân du lịch', '2023-10-18 09:18:21', 19000, NULL, 1, '2023-10-18 09:18:21', 'Gồm nhiều món như bàn chải, kem đánh răng, dao cạo râu... shop đã phân loại từng món. &#13;&#10;Thích hợp sử dụng trong khách sạn, dùng khi đi dã ngoại, cắm trại...&#13;&#10;', 105, 'true', ' Trung Quốc', ' Trung Quốc', 'Không', 'Gồm nhiều món như bàn chải, kem đánh răng, dao cạo râu... shop đã phân loại từng món. &#13;&#10;Thích hợp sử dụng trong khách sạn, dùng khi đi dã ngoại, cắm trại...&#13;&#10;', 'Công Ty TNHH THƯƠNG MẠI VÀ DỊCH VỤ NHẬP KHẨU TRƯỜNG LÂM&#13;&#10;Số Nhà 488 Dãy C8, tổ 44, Thị Trấn Đông Anh, Huyện Đông Anh, Hà Nội&#13;&#10;Tránh xa tầm tay trẻ em', 'true', 'other_product'),
(6, 'Nồi chiên không dầu Rapido', '2023-10-18 09:23:20', 1920000, NULL, 1, '2023-10-18 09:23:20', 'Có đèn báo hoạt độngMặt trước trong suốt, quan sát được quá trình nấu Tự động hoạt động khi đẩy lòng nồi vàoĐèn chiếu sáng bên trong', 12, 'true', 'Đức', 'Đức', 'Vỏ nhựa ABS', 'Có đèn báo hoạt động Mặt trước trong suốt, quan sát được quá trình nấu Tự động hoạt động khi đẩy lòng nồi vào Đèn chiếu sáng bên trong', 'SMART-7.0M 7 lít rộng rãi giúp chiên nướng,điều chỉnh bằng nút xoay đơn giản dễ dùng', 'true', 'other_product'),
(8, 'Tượng miss Việt Nam ', '2023-10-18 09:39:11', 120000, NULL, 1, '2023-10-18 09:39:11', 'Cô gái đội nón lá thắt bím tóc bên vai là mẫu tượng đặc trưng mang nét Việt Nam ', 6, 'false', ' Việt Nam', ' Việt Nam', 'Gốm, sứ', 'Cô gái đội nón lá thắt bím tóc bên vai là mẫu tượng đặc trưng mang nét Việt Nam ', 'Tượng cao 12 cm các cô gái mặc 10 màu sắc áo khác nhau với họa tiết khác nhau chất liệu đá ép vẽ thủ công ', 'true', 'other_product'),
(9, 'Balo công sở balo sinh viên ', '2023-10-18 09:42:36', 230000, NULL, 1, '2023-10-18 09:42:36', 'Chất liệu: vải tổng hợp chống nước, dây đeo xốp êm điều chỉnh, khóa hợp kim chống rỉ', 14, 'true', ' Trung Quốc', ' Trung Quốc', 'Vải tổng hợp', 'Chất liệu: vải tổng hợp chống nước, dây đeo xốp êm điều chỉnh, khóa hợp kim chống rỉ', 'Màu sắc: Màu Đen và Màu Xám&#13;&#10;Kích thước: 40 x 30 x 15 cm (cao x ngang x rộng)&#13;&#10;Đựng vừa laptop 15.6in', 'true', 'other_product'),
(10, 'Ghế Công Thái Học ', '2023-10-18 09:48:04', 540000, NULL, 1, '2023-10-18 09:48:04', 'Ghế văn phòng  lịch lãm là dòng ghế đặc biệt được tạo ra từ sự nghiên cứu chuyên sâu về thói quen cũng như sức khỏe của dân văn phòng', 32, 'true', ' Trung Quốc', ' Trung Quốc', 'Vải,nhựa', 'Ghế văn phòng  lịch lãm là dòng ghế đặc biệt được tạo ra từ sự nghiên cứu chuyên sâu về thói quen cũng như sức khỏe của dân văn phòng', 'Ghế có thiết kế đẹp, hiện đại, sang trọng, lưng ghế uốn cong , có lò xo đàn hồi, giúp giảm mỏi lưng và thư giãn hiệu quả giúp bảo vệ sức khỏe người dùng.', 'true', 'other_product'),
(11, 'Set 4 Bút Mực ', '2023-10-18 09:52:13', 24000, NULL, 1, '2023-10-18 09:52:13', '1. Tên: bút gel&#13;&#10;2. Chất liệu: Khác&#13;&#10;3. Phong cách: Nhật Bản và Hàn Quốc&#13;&#10;4. Kích thước: Như được hiển thị&#13;&#10;5. Hình dạng: Như được hiển thị&#13;&#10;6. Thời gian: 2022', 102, 'false', ' Trung Quốc', ' Trung Quốc', 'Nhựa', 'Bao bì tinh tế, chất lượng cao và giá thấp.', 'Chúng tôi là một nhà máy văn phòng phẩm chuyên nghiệp.', 'true', 'other_product'),
(12, 'Hộp Bút Kèm ', '2023-10-18 09:57:56', 54000, NULL, 1, '2023-10-18 09:57:56', 'Hộp Bút Kèm Dụng Cụ Học Tập Mã Họa Tiết Cute 3318', 102, 'false', ' Trung Quốc', ' Trung Quốc', 'Nhựa', 'Hộp Bút Kèm Dụng Cụ Học Tập Mã Họa Tiết Cute 3318', 'Hộp Bút Kèm Dụng Cụ Học Tập Mã Họa Tiết Cute 3318', 'true', 'other_product'),
(13, 'Giá, khay để tài liệu', '2023-10-18 10:00:59', 31000, NULL, 1, '2023-10-18 10:00:59', 'Giá, khay để tài liệu đa năng xếp tầng dạng đan lưới kim loại bền đẹp -  dụng cụ văn phòng tiện ích', 81, 'false', 'Việt nam', 'Việt Nam', 'Nhôm', 'Giá, khay để tài liệu đa năng xếp tầng dạng đan lưới kim loại bền đẹp -  dụng cụ văn phòng tiện ích', 'Chất liệu : kim loại&#13;&#10;Công dụng : lưu giữ và quản lý hồ sơ, tài liệu.&#13;&#10;Phân loại: 2 tầng, 3 tầng, 4 tầng, 5 tầng, 6 tầng', 'true', 'other_product'),
(14, 'Tập giấy vẽ tranh', '2023-10-18 10:05:48', 11000, NULL, 1, '2023-10-18 10:05:48', 'Hàm lượng : 200gms&#13;&#10;Kích thước: 10*10cm,15*15cm, 20*20cm, 18.8*26cm, 13*18.8cm, A5(14.8*21CM), A4(21*29.7cm&#13;&#10;Dùng để vẽ tranh sơn dầu, sơn acrylic.', 112, 'true', 'Việt nam', 'Việt Nam', 'Mỏng nhẹ', 'Hàm lượng : 200gms&#13;&#10;Kích thước: 10*10cm,15*15cm, 20*20cm, 18.8*26cm, 13*18.8cm, A5(14.8*21CM), A4(21*29.7cm&#13;&#10;Dùng để vẽ tranh sơn dầu, sơn acrylic.', 'Hàm lượng : 200gms&#13;&#10;Kích thước: 10*10cm,15*15cm, 20*20cm, 18.8*26cm, 13*18.8cm, A5(14.8*21CM), A4(21*29.7cm&#13;&#10;Dùng để vẽ tranh sơn dầu, sơn acrylic.', 'true', 'other_product'),
(15, 'Phao bơi liền thân', '2023-10-18 10:10:18', 61000, NULL, 1, '2023-10-18 10:10:18', 'Phù hợp với bé từ 14kg đến 25kg&#13;&#10;Khối lượng: 0.17 kg.&#13;&#10;Kích thước: 57 x 18 x 16 cm&#13;&#10;Màu sắc: Nhiều Màu.', 43, 'false', 'Việt nam', 'Việt Nam', ' Nhựa ABS', 'Phao Bơi Liền Thân được làm từ lõi mút xốp bọt biển, không bị đâm thủng như các loại phao hơi', 'Chất liệu siêu nhẹ đạt tiểu chuẩn EU- Thiết kế hình ảnh màu sắc vui nhộn tạo cảm giác thích thú cho bé', 'false', 'other_product'),
(16, 'Ô tô xe điện', '2023-10-18 10:15:04', 610000, NULL, 1, '2023-10-18 10:15:04', 'Kích thước: 122 x 55 x 64 (cm)&#13;&#10;Màu sắc: Đỏ - Đen - Trắng &#13;&#10;Tải trọng: 50 kg&#13;&#10;Ắc quy: 12V/7AH&#13;&#10;Thời gian sạc 8-10 tiếng, cắm sạc ở mui xe (dưới nắp capo)&#13;&#10;4 Động cơ to 550W&#13;&#10;Tốc độ:  ~3 - 6 km/h, 2 nấc tốc độ nhanh chậm', 33, 'true', 'Đức', 'Đức', ' Nhựa ABS', 'Siêu phẩm ô tô điện trẻ em', 'Các phụ kiện thay thế  luôn sẵn và hỗ trợ cho khách hàng với giá tốt nhất, vui lòng liên hệ shop qua chat hoặc kênh hotline bảo hành để được tư vấn đúng chủng loại.', 'false', 'other_product'),
(18, 'Bộ đồ siêu nhân hóa trang ', '2023-10-18 10:27:56', 91000, NULL, 1, '2023-10-18 10:27:56', 'Thun lạnh Hàn Quốc 100% co giãn 4 chiều, mịn mát&#13;&#10;Hình in : in 3D full 2 mặt trước sau , sắc nét bền màu, không nứt hình , sử dụng mực của NHẬT đạt tiêu chuẩn quốc tế, không làm hại đến làn da của trẻ nhỏ.&#13;&#10;Mặt nạ &#34;full face&#34; in 3D mỏng mịn, co dãn tạo sự thoải mái cho bé thỏa thích COSPLAY.', 13, 'false', 'Việt nam', 'Việt nam', 'Vải tổng hợp', 'Size: 5 15-17kg&#13;&#10;Size: 6 17-19kg. &#13;&#10;Size: 7 19-21kg. &#13;&#10;Size: 8 21-23kg.&#13;&#10;Size: 9 23-26kg. &#13;&#10;Size: 10 26-29kg. &#13;&#10;Size: 11 30-32kg. &#13;&#10;Size: 12 32-34kg.', 'Form size do nhà sản xuất được ra theo số đo trung bình chuẩn của bé theo độ tuổi nên sẽ có sai sai số có thể từ 1-3cm, mong quý khách thông cảm.', 'false', 'other_product'),
(19, 'Combo 2 cuốn Sách: t Starts with Us', '2023-10-18 10:36:00', 791000, NULL, 1, '2023-10-18 10:36:00', 'Điều kiện thương hiệu mới&#13;&#10;Đóng sách: bìa mềm&#13;&#10;Trang: 432&#13;&#10;Kích thước: 198 x 130 x 26 | 300 (gam)', 25, 'false', 'Nước ngoài', 'Nước ngoài', 'Bìa Cứng', 'Điều kiện thương hiệu mới&#13;&#10;Đóng sách: bìa mềm&#13;&#10;Trang: 432&#13;&#10;Kích thước: 198 x 130 x 26 | 300 (gam)', 'Điều kiện thương hiệu mới&#13;&#10;Đóng sách: bìa mềm&#13;&#10;Trang: 432&#13;&#10;Kích thước: 198 x 130 x 26 | 300 (gam)', 'true', 'book_product'),
(20, 'Trọn bộ 8 cuốn Preliminary English Test ', '2023-10-18 10:47:22', 551000, NULL, 1, '2023-10-18 10:47:22', 'PET là viết tắt của cụm từ trong tiếng Anh: Preliminary English Test – dành cho đối tượng là học sinh trung học cơ sở, cho những bạn có mục đích làm việc, du học hay phát triển sự nghiệp trong môi trường quốc tế.', 20, 'false', 'Nước ngoài', 'Nước ngoài', 'Bìa Cứng', 'PET là viết tắt của cụm từ trong tiếng Anh: Preliminary English Test – dành cho đối tượng là học sinh trung học cơ sở, cho những bạn có mục đích làm việc, du học hay phát triển sự nghiệp trong môi trường quốc tế.', 'Theo chuẩn khung Châu Âu bằng PET của cambridge tương đương với trình độ B1, Ielts 3.5-4.0, Toefl iBT 45 và Toeic 400-500. Chứng chỉ PET được công nhận trên toàn thế giới về trình độ ngoại ngữ tương tự như Ielts, Toeic, Toefl.', 'true', 'book_product'),
(21, ' Combo Eckhart Tolle - FirstNews', '2023-10-18 11:00:20', 151000, NULL, 1, '2023-10-18 11:00:20', 'Giá bộ: 186. Nhà phát hành: First News - Trí Việt. Ngày phát hành: 2022. Kích thước: 14. 5 cm. Xuất xứ: Trong nước. Giá bìa: 58. KHÁM PHÁ SỨC MẠNH BẢN THÂN. Sức mạnh đó sẽ tác động không chỉ đến suy nghĩ và cuộc sống của riêng bạn mà còn ảnh hưởng trực tiếp đến những người mà', 54, 'false', 'Nước ngoài', 'Nước ngoài', 'Bìa Cứng', 'Giá bộ: 186. Nhà phát hành: First News - Trí Việt. Ngày phát hành: 2022. Kích thước: 14. 5 cm. Xuất xứ: Trong nước. Giá bìa: 58. KHÁM PHÁ SỨC MẠNH BẢN THÂN. Sức mạnh đó sẽ tác động không chỉ đến suy nghĩ và cuộc sống của riêng bạn mà còn ảnh hưởng trực tiếp đến những người mà', 'Giá bộ: 186. Nhà phát hành: First News - Trí Việt. Ngày phát hành: 2022. Kích thước: 14. 5 cm. Xuất xứ: Trong nước. Giá bìa: 58. KHÁM PHÁ SỨC MẠNH BẢN THÂN. Sức mạnh đó sẽ tác động không chỉ đến suy nghĩ và cuộc sống của riêng bạn mà còn ảnh hưởng trực tiếp đến những người mà', 'true', 'book_product'),
(22, 'THE TREEHOUSE COLLECTION 9 BOOK SET COLLECTION', '2023-10-18 11:06:37', 444000, NULL, 1, '2023-10-18 11:06:37', 'Giá bộ: 186. Nhà phát hành: First News - Trí Việt. Ngày phát hành: 2022. Kích thước: 14. 5 cm. Xuất xứ: Trong nước. Giá bìa: 58. KHÁM PHÁ SỨC MẠNH BẢN THÂN. Sức mạnh đó sẽ tác động không chỉ đến suy nghĩ và cuộc sống của riêng bạn mà còn ảnh hưởng trực tiếp đến những người mà', 12, 'false', 'Nước ngoài', 'Nước ngoài', 'Bìa Cứng', 'Giá bộ: 186. Nhà phát hành: First News - Trí Việt. Ngày phát hành: 2022. Kích thước: 14. 5 cm. Xuất xứ: Trong nước. Giá bìa: 58. KHÁM PHÁ SỨC MẠNH BẢN THÂN. Sức mạnh đó sẽ tác động không chỉ đến suy nghĩ và cuộc sống của riêng bạn mà còn ảnh hưởng trực tiếp đến những người mà', 'Giá bộ: 186. Nhà phát hành: First News - Trí Việt. Ngày phát hành: 2022. Kích thước: 14. 5 cm. Xuất xứ: Trong nước. Giá bìa: 58. KHÁM PHÁ SỨC MẠNH BẢN THÂN. Sức mạnh đó sẽ tác động không chỉ đến suy nghĩ và cuộc sống của riêng bạn mà còn ảnh hưởng trực tiếp đến những người mà', 'false', 'book_product'),
(23, 'Combo Yêu Lại Tiếng Anh Từ Đầu ', '2023-10-18 11:09:26', 174000, NULL, 1, '2023-10-18 11:09:26', 'Giá bộ: 186. Nhà phát hành: First News - Trí Việt. Ngày phát hành: 2022. Kích thước: 14. 5 cm. Xuất xứ: Trong nước. Giá bìa: 58. KHÁM PHÁ SỨC MẠNH BẢN THÂN. Sức mạnh đó sẽ tác động không chỉ đến suy nghĩ và cuộc sống của riêng bạn mà còn ảnh hưởng trực tiếp đến những người mà', 121, 'true', 'Nước ngoài', 'Nước ngoài', 'Bìa Cứng', 'Giá bộ: 186. Nhà phát hành: First News - Trí Việt. Ngày phát hành: 2022. Kích thước: 14. 5 cm. Xuất xứ: Trong nước. Giá bìa: 58. KHÁM PHÁ SỨC MẠNH BẢN THÂN. Sức mạnh đó sẽ tác động không chỉ đến suy nghĩ và cuộc sống của riêng bạn mà còn ảnh hưởng trực tiếp đến những người mà', 'Giá bộ: 186. Nhà phát hành: First News - Trí Việt. Ngày phát hành: 2022. Kích thước: 14. 5 cm. Xuất xứ: Trong nước. Giá bìa: 58. KHÁM PHÁ SỨC MẠNH BẢN THÂN. Sức mạnh đó sẽ tác động không chỉ đến suy nghĩ và cuộc sống của riêng bạn mà còn ảnh hưởng trực tiếp đến những người mà', 'true', 'book_product'),
(24, 'Bộ sách giáo khoa lớp 9', '2023-10-18 11:19:29', 234000, NULL, 1, '2023-10-18 11:19:29', 'Cấp Độ/ Lớp&#9;Lớp 9&#13;&#10;Cấp Học&#9;Cấp 2&#13;&#10;Tên Nhà Cung Cấp&#9;Nhà xuất bản Giáo Dục&#13;&#10;Tác giả Bộ Giáo Dục Và Đào Tạo&#13;&#10;NXB&#9;Giáo Dục Việt Nam&#13;&#10;Năm XB&#9;2023&#13;&#10;Trọng lượng (gr)1286&#13;&#10;Kích Thước Bao Bì 24.2 x 17.5 x 4 cm&#13;&#10;Hình thức Bìa Mềm', 75, 'false', 'Việt Nam', 'Bộ Giáo Dục Và Đào Tạo', 'Bìa mềm', 'Cấp Độ/ Lớp&#9;Lớp 9&#13;&#10;Cấp Học&#9;Cấp 2&#13;&#10;Tên Nhà Cung Cấp&#9;Nhà xuất bản Giáo Dục&#13;&#10;Tác giả Bộ Giáo Dục Và Đào Tạo&#13;&#10;NXB&#9;Giáo Dục Việt Nam&#13;&#10;Năm XB&#9;2023&#13;&#10;Trọng lượng (gr)1286&#13;&#10;Kích Thước Bao Bì 24.2 x 17.5 x 4 cm&#13;&#10;Hình thức Bìa Mềm', 'Cấp Độ/ Lớp&#9;Lớp 9&#13;&#10;Cấp Học&#9;Cấp 2&#13;&#10;Tên Nhà Cung Cấp&#9;Nhà xuất bản Giáo Dục&#13;&#10;Tác giả Bộ Giáo Dục Và Đào Tạo&#13;&#10;NXB&#9;Giáo Dục Việt Nam&#13;&#10;Năm XB&#9;2023&#13;&#10;Trọng lượng (gr)1286&#13;&#10;Kích Thước Bao Bì 24.2 x 17.5 x 4 cm&#13;&#10;Hình thức Bìa Mềm', 'true', 'book_product'),
(25, 'Combo Văn Học Việt Nam Hiện Đại', '2023-10-18 11:24:45', 392000, NULL, 1, '2023-10-18 11:24:45', 'Các tác tiểu thuyết nổi tiếng cảu các nhà văn tài nổi tiếng', 82, 'true', 'NXB Giáo Dục Việt Nam', 'Nhiều tác giả.', 'Bìa mềm', 'Các tác tiểu thuyết nổi tiếng cảu các nhà văn tài nổi tiếng', 'Các tác tiểu thuyết nổi tiếng cảu các nhà văn tài nổi tiếng', 'false', 'book_product'),
(26, 'BỘ SÁCH KỸ NĂNG SỐNG DÀNH CHO TRẺ – TRỌN BỘ 4 CUỐN', '2023-10-18 11:29:00', 172000, NULL, 1, '2023-10-18 11:29:00', 'Bộ sách gồm hững bài học thực tế được kể qua những câu chuyện và minh họa sống động dễ đọc, dễ hiểu giúp bé rèn luyện các kỹ năng mềm.', 22, 'true', 'NXB Văn Học', 'Nhiều tác giả.', 'Bìa mềm', 'Bộ sách gồm những bài học thực tế được kể qua những câu chuyện và minh họa sống động dễ đọc, dễ hiểu giúp bé rèn luyện các kỹ năng mềm.', 'Bộ sách gồm những bài học thực tế được kể qua những câu chuyện và minh họa sống động dễ đọc, dễ hiểu giúp bé rèn luyện các kỹ năng mềm.', 'false', 'book_product'),
(27, 'Combo 2 Cuốn Nghiền Từ Vựng Tiếng Anh', '2023-10-18 11:34:15', 160000, NULL, 1, '2023-10-18 11:34:15', 'Hầu hết người mua hài lòng với chất lượng sách, đánh giá sách đẹp, dễ hiểu, hình ảnh minh họa dễ thương.&#13;&#10;Một số nhận xét cho rằng sách bổ ích, giúp nâng cao vốn từ vựng và dễ nhớ.&#13;&#10;Tuy nhiên, có một nhận xét cho rằng sách khó hiểu và phân tích từ không liên quan.', 43, 'true', ' Megabook', 'Nhiều tác giả.', 'Bìa mềm', 'Hầu hết người mua hài lòng với chất lượng sách, đánh giá sách đẹp, dễ hiểu, hình ảnh minh họa dễ thương.&#13;&#10;Một số nhận xét cho rằng sách bổ ích, giúp nâng cao vốn từ vựng và dễ nhớ.&#13;&#10;Tuy nhiên, có một nhận xét cho rằng sách khó hiểu và phân tích từ không liên quan.', 'Hầu hết người mua hài lòng với chất lượng sách, đánh giá sách đẹp, dễ hiểu, hình ảnh minh họa dễ thương.&#13;&#10;Một số nhận xét cho rằng sách bổ ích, giúp nâng cao vốn từ vựng và dễ nhớ.&#13;&#10;Tuy nhiên, có một nhận xét cho rằng sách khó hiểu và phân tích từ không liên quan.', 'false', 'book_product'),
(28, 'Truyện ngắn Kawabata', '2023-10-18 11:45:22', 320000, NULL, 1, '2023-10-18 11:45:22', 'Thông số cơ bản:&#13;&#10;Khổ sách: 15x 24 cm&#13;&#10;Số trang: 526 trang&#13;&#10;Khối lượng: 500gr', 11, 'false', 'Việt nam', 'Kawabata', 'Bìa cứng', 'Thông số cơ bản:&#13;&#10;Khổ sách: 15x 24 cm&#13;&#10;Số trang: 526 trang&#13;&#10;Khối lượng: 500gr', 'Thông số cơ bản:&#13;&#10;Khổ sách: 15x 24 cm&#13;&#10;Số trang: 526 trang&#13;&#10;Khối lượng: 500gr', 'true', 'book_product'),
(29, 'Combo Sách Bài Tập Lớp 1', '2023-10-18 12:07:14', 129000, NULL, 1, '2023-10-18 12:07:14', 'Bài TậpTiếng Việt 1 Tập 1&#13;&#10;Bài TậpTiếng Việt 1 Tập 2&#13;&#10;Bài TậpToán 1Tập 1&#13;&#10;Bài TậpToán 1Tập 2&#13;&#10;Luyện Viết 1Tập 1&#13;&#10;Luyện Viết 1Tập 2&#13;&#10;Vở Bài TậpĐạo Đức 1&#13;&#10;VởBài Tập Tự Nhiên Và Xã Hội 1&#13;&#10;Vở Thực Hành Âm Nhạc 1&#13;&#10;Vở Thực Hành Mỹ Thuật 1&#13;&#10;Vở Thực Hành Hoạt Động Trải Nghiệm 1', 33, 'true', 'NXB Giáo Dục Việt Nam', 'Nhiều tác giả.', 'Bìa mềm', 'Bài TậpTiếng Việt 1 Tập 1&#13;&#10;Bài TậpTiếng Việt 1 Tập 2&#13;&#10;Bài TậpToán 1Tập 1&#13;&#10;Bài TậpToán 1Tập 2&#13;&#10;Luyện Viết 1Tập 1&#13;&#10;Luyện Viết 1Tập 2&#13;&#10;Vở Bài TậpĐạo Đức 1&#13;&#10;VởBài Tập Tự Nhiên Và Xã Hội 1&#13;&#10;Vở Thực Hành Âm Nhạc 1&#13;&#10;Vở Thực Hành Mỹ Thuật 1&#13;&#10;Vở Thực Hành Hoạt Động Trải Nghiệm 1', 'Bài TậpTiếng Việt 1 Tập 1&#13;&#10;Bài TậpTiếng Việt 1 Tập 2&#13;&#10;Bài TậpToán 1Tập 1&#13;&#10;Bài TậpToán 1Tập 2&#13;&#10;Luyện Viết 1Tập 1&#13;&#10;Luyện Viết 1Tập 2&#13;&#10;Vở Bài TậpĐạo Đức 1&#13;&#10;VởBài Tập Tự Nhiên Và Xã Hội 1&#13;&#10;Vở Thực Hành Âm Nhạc 1&#13;&#10;Vở Thực Hành Mỹ Thuật 1&#13;&#10;Vở Thực Hành Hoạt Động Trải Nghiệm 1', 'false', 'book_product'),
(30, 'Quản trị game', '2023-11-22 14:58:08', 1000, NULL, 1, '2023-11-24 19:27:04', 'Báo cáo asm quản trị website', 1000, 'true', 'WEB18302', 'Không', 'Không', 'Báo cáo asm quản trị website', 'Báo cáo asm quản trị website', 'false', 'book_product'),
(31, 'Lab 7', '2023-12-11 03:05:38', 1000, NULL, 1, '2023-12-11 03:05:38', 'Đầy là lab 7', 1, 'true', 'NXB Thanh Niên', 'Lưu Chấn Hồng', '&#9;Bìa Mềm', 'Đầy là lab 7', 'Đầy là lab 7', 'false', 'book_product');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_img`
--

CREATE TABLE `product_img` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img_dir` varchar(150) NOT NULL,
  `alt` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `link` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_img`
--

INSERT INTO `product_img` (`id`, `product_id`, `img_dir`, `alt`, `link`) VALUES
(92, 1, './uploads/sgk-12.jpg', NULL, NULL),
(93, 1, './uploads/sgk-12.jpg', NULL, NULL),
(94, 1, './uploads/sgk-12.jpg', NULL, NULL),
(95, 1, './uploads/sgk-moi.png', NULL, NULL),
(96, 2, './uploads/1.png', NULL, NULL),
(97, 2, './uploads/2.png', NULL, NULL),
(98, 2, './uploads/3.png', NULL, NULL),
(99, 2, './uploads/4.png', NULL, NULL),
(100, 3, './uploads/5b07c010f66de6b426c9d81909518935.png', NULL, NULL),
(101, 3, './uploads/58f2bb77e0bcf5a197587eb8330b9718.png', NULL, NULL),
(102, 3, './uploads/d3fdac5a5083f1c3885da10a7de192f9.png', NULL, NULL),
(103, 3, './uploads/fa303547bdf243eda258338e5d4c49cc.png', NULL, NULL),
(108, 5, './uploads/vn-11134207-7qukw-lk1skp525lmc67-Copy.jpg', NULL, NULL),
(109, 5, './uploads/vn-11134207-7qukw-lk1skp528er823-Copy.jpg', NULL, NULL),
(110, 5, './uploads/vn-11134207-7qukw-lk1skp529tbo68-Copy.jpg', NULL, NULL),
(111, 5, './uploads/vn-11134207-7qukw-lk1skp52cmgkc4-Copy.jpg', NULL, NULL),
(112, 6, './uploads/noi-chien-khong-dau-rapido-smart-70m-7-lit638215750176666568.jpg', NULL, NULL),
(113, 6, './uploads/noi-chien-khong-dau-rapido-smart-70m-7-lit638215750177976576.jpg', NULL, NULL),
(114, 6, './uploads/noi-chien-khong-dau-rapido-smart-70m-7-lit638215750178906564.jpg', NULL, NULL),
(115, 6, './uploads/noi-chien-khong-dau-rapido-smart-70m-7-lit638215750179756563.jpg', NULL, NULL),
(120, 8, './uploads/9584db5b5a99a328aa922923cca0729c.jpg', NULL, NULL),
(121, 8, './uploads/a1aa6753ad2dcca1757707efc26831d3.jpg', NULL, NULL),
(122, 8, './uploads/aa03f3a4c7c5227a41aaccc4e789f51f.jpg', NULL, NULL),
(123, 8, './uploads/44fd994fcd32cf37f19132ea818d3c1f.jpg', NULL, NULL),
(124, 9, './uploads/vn-11134207-7qukw-lkdf0jn7vuzg49-Copy(2).jpg', NULL, NULL),
(125, 9, './uploads/vn-11134207-7qukw-ljukrlt6ga9u4b.jpg', NULL, NULL),
(126, 9, './uploads/vn-11134207-7qukw-ljukrlt6evpee6.jpg', NULL, NULL),
(127, 9, './uploads/vn-11134207-7qukw-ljukrlt6opoic9-Copy(2).jpg', NULL, NULL),
(128, 10, './uploads/O1CN01jRu3kE24ETTETu7ws_2212393697359-0-cib-Copy(1).jpg', NULL, NULL),
(129, 10, './uploads/z4271222236946-Copy(1).jpg', NULL, NULL),
(130, 10, './uploads/z4271222195319_e513e0d896956a36479459a14cc55e46-Copy(1).jpg', NULL, NULL),
(131, 10, './uploads/z4226144039273_a36ca92e8dd7d584b73cce6d7baccaf5-Copy(1).jpg', NULL, NULL),
(132, 11, './uploads/cn-11134207-7qukw-lfdjysh4r6mj03.jpg', NULL, NULL),
(133, 11, './uploads/vn-11134201-23030-1e2x2uj0ugov93.jpg', NULL, NULL),
(134, 11, './uploads/vn-11134201-23030-95mmubu0ugov5d.jpg', NULL, NULL),
(135, 11, './uploads/vn-11134201-23030-k3g6y5m0ugov65.jpg', NULL, NULL),
(136, 12, './uploads/vn-11134207-7qukw-lhsroqg01l8h21.jpg', NULL, NULL),
(137, 12, './uploads/vn-11134207-7qukw-lhsroqg02zsx44.jpg', NULL, NULL),
(138, 12, './uploads/vn-11134207-7qukw-lhsroqg04edd32.jpg', NULL, NULL),
(139, 12, './uploads/vn-11134207-7qukw-lhsroqg05sxt45.jpg', NULL, NULL),
(140, 13, './uploads/858053ce8205e8659b53ea5742c4002c.jpg', NULL, NULL),
(141, 13, './uploads/5f3b5fc0abfbe2eca6d49c7dde9b40c7.jpg', NULL, NULL),
(142, 13, './uploads/5aa625739c09cd7207bb32f55a004778.jpg', NULL, NULL),
(143, 13, './uploads/969b885f179a45117045040f84820b12.jpg', NULL, NULL),
(144, 14, './uploads/vn-11134207-7qukw-lk0bjmdjj40275.jpg', NULL, NULL),
(145, 14, './uploads/vn-11134207-7qukw-lk0bjmdjdhqa33.jpg', NULL, NULL),
(146, 14, './uploads/vn-11134207-7qukw-lk0bjmdk8e8243.jpg', NULL, NULL),
(147, 14, './uploads/vn-11134207-7qukw-lk0bjmdjdhv804.jpg', NULL, NULL),
(148, 15, './uploads/c6bf9a2821eed5a43216274735726c2a.jpg', NULL, NULL),
(149, 15, './uploads/f7ee3b4dbbc09e3a38c403cf23151a2f.jpg', NULL, NULL),
(150, 15, './uploads/1525dac37ba2cbc20e7ea0b662541d49.jpg', NULL, NULL),
(151, 15, './uploads/09ac1b20784b9ceb80242d3e0d2f6287.jpg', NULL, NULL),
(152, 16, './uploads/vn-11134207-7qukw-lgucmp6b08xe8e.jpg', NULL, NULL),
(153, 16, './uploads/95b33f112efa0b08b8259a364d4fd4ce.jpg', NULL, NULL),
(154, 16, './uploads/1b80000133b3081aa01429cf0f3dd41e.jpg', NULL, NULL),
(155, 16, './uploads/a1cecab0437dc535a61e1c02b4aad3c2.jpg', NULL, NULL),
(160, 18, './uploads/sg-11134201-22110-xhxofn9u8mjv33.jpg', NULL, NULL),
(161, 18, './uploads/sg-11134201-22110-i6w44e9u8mjv48.jpg', NULL, NULL),
(162, 18, './uploads/sg-11134201-22110-k2tufi9u8mjv92.jpg', NULL, NULL),
(163, 18, './uploads/sg-11134201-22110-lw1rfi9u8mjvc2.jpg', NULL, NULL),
(164, 19, './uploads/4b261f87d2910f65eb062565150cfeaa.jpg', NULL, NULL),
(165, 19, './uploads/b580ef1f99d4883bd67ec812b4962ef9.jpg', NULL, NULL),
(166, 19, './uploads/ba203e9fdfd92d79dee619d3ac97b6ea.jpg', NULL, NULL),
(167, 19, './uploads/fcf6fb2cd80ea525a769dfbfb5e38292.jpg', NULL, NULL),
(168, 20, './uploads/trong-bo-pet-8-c1.jpg', NULL, NULL),
(169, 20, './uploads/trong-bo-pet-8-c4.jpg', NULL, NULL),
(170, 20, './uploads/trong-bo-pet-8-c7.jpg', NULL, NULL),
(171, 20, './uploads/trong-bo-pet-8-c9.jpg', NULL, NULL),
(172, 21, './uploads/67038.jpg', NULL, NULL),
(173, 21, './uploads/409dce37346a0172ff5370399e9250f2.jpg', NULL, NULL),
(174, 21, './uploads/833346f49db36b94852.jpg', NULL, NULL),
(175, 21, './uploads/880a70dd0245104da9763d3c3955.jpg', NULL, NULL),
(176, 22, './uploads/1649053778187_277365924_10221161132433091_6889750766954520328_n.jpg', NULL, NULL),
(177, 22, './uploads/1649053778187_277674699_10221161131873077_3707749941893573763_n.jpg', NULL, NULL),
(178, 22, './uploads/1649053778187_277574129_10221161143553369_7290074827517193486_n.jpg', NULL, NULL),
(179, 22, './uploads/1684917457049_treehouse9.jpg', NULL, NULL),
(180, 23, './uploads/1.jpg', NULL, NULL),
(181, 23, './uploads/2c.jpg', NULL, NULL),
(182, 23, './uploads/11a.jpg', NULL, NULL),
(183, 23, './uploads/32.jpg', NULL, NULL),
(184, 24, './uploads/30beba9617c5254bef746ce80c9db674.jpg', NULL, NULL),
(185, 24, './uploads/Toan-9-Tap-2.jpg', NULL, NULL),
(186, 24, './uploads/sach-giao-khoa-tieng-anh-lop-9.jpg', NULL, NULL),
(187, 24, './uploads/Ngu-Van-9-Tap-1.jpg', NULL, NULL),
(188, 25, './uploads/8935246914175-1.u5505.d20170818.t101521.111119-Copy.jpg', NULL, NULL),
(189, 25, './uploads/8935246914175-2.u5505.d20170818.t101521.172222-Copy.jpg', NULL, NULL),
(190, 25, './uploads/8935246914175-3.u5505.d20170818.t101521.218511.jpg', NULL, NULL),
(191, 25, './uploads/8935246914175-4.u5505.d20170818.t101521.255358-Copy.jpg', NULL, NULL),
(192, 26, './uploads/z3237876564988-220b1ecdabcbce19d8d13becdb0868f5.jpg', NULL, NULL),
(193, 26, './uploads/z3237876531801-f3541d65c3915b8e0259dfe85fad7ed8-768x620.jpg', NULL, NULL),
(194, 26, './uploads/z3237876515795-a7e06cb18a05e6b9475203fb50f93120-768x628.jpg', NULL, NULL),
(195, 26, './uploads/z3237876498946-e726d2944afc220c17c455f708d5f146-768x687.jpg', NULL, NULL),
(196, 27, './uploads/f9f90b06c283a272206d82450da7359a.jpg', NULL, NULL),
(197, 27, './uploads/851033335389f4b9a2094427c55f9204.jpg', NULL, NULL),
(198, 27, './uploads/f12fb5dd865af36f63357e01dacb2cc1.jpg', NULL, NULL),
(199, 27, './uploads/f6c56e2a55a6ded8a86f2ca3aa08b212.jpg', NULL, NULL),
(200, 28, './uploads/vn-11139lnh1f5yr47.jpg', NULL, NULL),
(201, 28, './uploads/vn-11134207-7qukw-lgq9lnh2a2gj91.jpg', NULL, NULL),
(202, 28, './uploads/vn-11134207-7qukw-lgq9lnh1f5te0d.jpg', NULL, NULL),
(203, 28, './uploads/vn-11134207-7qukw-lgq9lnhber76d7.jpg', NULL, NULL),
(204, 29, './uploads/4f5f926f4e30379570ed1da52e263da2-Copy(1).jpg', NULL, NULL),
(205, 29, './uploads/4548c90d46f1729f88948ac158e039cb-.jpg', NULL, NULL),
(206, 29, './uploads/Sach-giao-khoa-tieng-anh-1-moi-500x554-Copy(1).jpg', NULL, NULL),
(207, 29, './uploads/tv-1-Copy(1).jpg', NULL, NULL),
(208, 30, './uploads/ads.jpg', NULL, NULL),
(209, 30, './uploads/Ảnh chụp màn hình 2023-03-27 195228.png', NULL, NULL),
(210, 30, './uploads/l.png', NULL, NULL),
(211, 30, './uploads/Ảnh chụp màn hình 2023-03-27 195711.png', NULL, NULL),
(212, 31, './uploads/jakob-owens-Nl0oJIURoZg-unsplash.jpg', NULL, NULL),
(213, 31, './uploads/omer-salom-xnynBH_ux_I-unsplash.jpg', NULL, NULL),
(214, 31, './uploads/jakob-owens-Nl0oJIURoZg-unsplash-Copy.jpg', NULL, NULL),
(215, 31, './uploads/jakob-owens-Nl0oJIURoZg-unsplash-Copy(1).jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_label`
--

CREATE TABLE `product_label` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_label`
--

INSERT INTO `product_label` (`id`, `product_id`, `label_id`) VALUES
(18, 1, 104),
(19, 2, 105),
(20, 3, 106),
(23, 5, 99),
(24, 6, 100),
(26, 8, 102),
(27, 9, 107),
(28, 10, 101),
(29, 11, 94),
(30, 12, 95),
(31, 13, 96),
(32, 14, 97),
(33, 15, 89),
(34, 16, 90),
(36, 18, 92),
(37, 19, 74),
(38, 20, 75),
(39, 21, 76),
(40, 22, 77),
(41, 23, 78),
(42, 24, 69),
(43, 25, 70),
(44, 25, 80),
(45, 26, 71),
(46, 27, 72),
(47, 28, 79),
(48, 29, 104),
(49, 29, 69),
(50, 30, 107),
(51, 30, 103),
(52, 31, 104);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp(),
  `role` varchar(10) NOT NULL DEFAULT 'user',
  `status` varchar(6) NOT NULL DEFAULT 'active',
  `phone` varchar(10) DEFAULT NULL,
  `fullname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'Khach hang',
  `sex` varchar(10) DEFAULT 'Nam',
  `address` varchar(200) DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `create_at`, `update_at`, `role`, `status`, `phone`, `fullname`, `sex`, `address`, `birthday`) VALUES
(1, 'adminroot', 'bgusyt46@gmail.com', '$2y$10$3/Ru0ey.6x6wxlftf8VnVevy.pu/3XzDSayeOw2cd59psADjv4Yxa', '2023-09-20 13:43:35', '2023-09-20 13:43:35', 'adminroot', 'active', '0905085920', 'Nguyễn Văn Tín', 'Nam', '  28 y wang eatam 2', NULL),
(2, 'thai', 'thai123@gmail.com', '$2y$10$qZn9glA8z0NurvCSsEWif.X7kxHfWu8fuXkk5ZzXNrdERs1KOZQ2C', '2023-09-21 02:37:07', '2023-09-21 02:37:07', 'user', 'active', NULL, 'Khach hang', 'Nam', NULL, NULL),
(3, 'thai2', 'thai1d23@gmail.com', '$2y$10$15P4EOG5uENohUFAb6l1E.jE3e4qFv9maJGmgA1FjIlUlgmwWSQ7i', '2023-09-21 02:59:31', '2023-09-21 02:59:31', 'user', 'active', NULL, 'Khach hang', 'Nam', NULL, NULL),
(4, 'nvtin1104', 'nvtin1104@gmail.com', '$2y$10$o09S2PQhUsvHErHq9c.phuPLG0HOvoxbRmffHyckIxwLfi44CACWW', '2023-09-21 03:28:39', '2023-09-21 03:28:39', 'admin', 'active', '0905085920', 'Nguyen Van Tin', '', '0905085920', '2004-04-20'),
(7, 'admidn', 'ga@mgail.com', '$2y$10$1xwltJxZ1J9Pc34M6JtBeeB69mdD9mCH61yKZY/tuzKC7tvW6zzju', '2023-09-21 07:28:35', '2023-09-21 07:28:35', 'user', 'active', NULL, 'Khach hang', 'Nam', NULL, NULL),
(8, 'tintest', '2@gmail.com', '$2y$10$iTlh/JZwL36h20hejaXpduk7ggpqbIi9dXC9y.410mEDc0GLevY7y', '2023-09-21 08:04:30', '2023-09-21 08:04:30', 'user', 'active', NULL, 'Khach hang', 'Nam', NULL, NULL),
(9, 'thaitest', 'nguyenngocthai2332003@gmail.com', '$2y$10$gPL0.H69.ggf1e7oyxAW9e6nK23NTC7hJybQI/hp8tmaSsI2RxCRe', '2023-09-21 10:33:53', '2023-09-21 10:33:53', 'user', 'active', NULL, 'Khach hang', 'Nam', NULL, NULL),
(10, 'thai1', 'nguyenngocthai23302003@gmail.com', '9LHwoxbeiQ', '2023-09-22 12:20:10', '2023-09-22 12:20:10', 'user', 'active', NULL, 'Thái xa lem', '', NULL, '2004-03-23'),
(11, 'melax', 'thainnpk03331@fpt.edu.vn', '$2y$10$U8wf7X86YTR5z4ZvMQ1FwevXHBw/MmQdpV8at.D8ulIf2fRREa0ou', '2023-09-22 12:36:40', '2023-09-22 12:36:40', 'user', 'active', NULL, 'thai xa lem', '', NULL, '1990-12-11'),
(12, 'huydeptrai', 'phamtrangiahuy2004@gmail.com', '$2y$10$rkjssVaf/5x/4txbyErbRux68HWc5o/MxsJMctZDhoKaFTV1bErxe', '2023-09-22 12:53:25', '2023-09-22 12:53:25', 'user', 'active', NULL, 'huy đẹp trai vãi òn', '', NULL, '2004-09-08'),
(13, 'tin114', 'ti@gmail.com', '$2y$10$lffX4FBow69pRkMoqZ7h8.4sAdHduK3zpJd7/HZUZQUZX6L2LeaX6', '2023-09-24 15:54:20', '2023-09-24 15:54:20', 'admin', 'active', NULL, 'Khach hang', 'Nam', NULL, NULL),
(14, 'dangnhap123', 'dangnhap@gmail.com', '$2y$10$TBromlIPj/TwqztOv4DXhevMW/dDXj58Ir1RJn/xSLVIdEyxbR/TG', '2023-09-25 01:48:24', '2023-09-25 01:48:24', 'user', 'active', NULL, 'Khach hang', 'Nam', NULL, NULL),
(15, 'tin123', 'tinhataki123@gmail.com', '$2y$10$DJLce7zHqzuBsxNwqGDpcOsJGGYD5l3DgocrMJGuOUlJI1EFfzoyK', '2023-10-03 15:05:30', '2023-10-03 15:05:30', 'user', 'active', NULL, 'Khach hang', 'Khác', NULL, '2023-10-26'),
(16, 'tin1', 't@gmail.com', '$2y$10$yG438XUL58s9E/c77SZ8AevbeHR7gk5Ge97RPdxDtZsHlH7dxsZxe', '2023-10-04 12:39:28', '2023-10-04 12:39:28', 'user', 'active', NULL, 'Khach hang', 'Nam', NULL, NULL),
(17, 'test1', 'mail@gmail.com', '$2y$10$ORCjezWqLzOgOR8zHD0/4.GuiCg.piCvNisfDNHggqUH6s2Lyldae', '2023-10-04 12:57:14', '2023-10-04 12:57:14', 'user', 'ban', NULL, 'Khach hang', 'Nam', NULL, NULL),
(18, 'tin12345', 'sad@gmail.com', '$2y$10$IE45STfOXoWxQkSNsAqUX.lmI7/5XTwxF1V8lQqx50q62ssui/i4G', '2023-10-10 01:44:23', '2023-10-10 01:44:23', 'admin', 'ban', NULL, 'NGuyen van tin', '', NULL, '2023-10-10'),
(19, ' admin', 'bguyt46@gmail.com', '$2y$10$PQqT.Ry8sYid2E4.KZfTX.A1e2Vch/nyFuOTM6SAzMnBeLz1Bq4Qi', '2023-10-14 12:53:43', '2023-10-14 12:53:43', 'adminroot', 'active', '0905085920', 'Quản lý', 'Nữ', 'EaTam BMT, Dak Lak', '2023-11-15'),
(20, ' tomnyson', 'tablekindfire@gmail.com', '$2y$10$l3Cmqf/O5.ytS.Y5UNYQ0eNrGwVWL8Q4UjT6nBi58JhRc2JVDrT16', '2023-10-19 02:21:28', '2023-10-19 02:21:28', 'user', 'ban', '0349528472', ' Khach hang', 'Nữ', '84 dang tran con', '2023-10-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `id` int(11) NOT NULL,
  `voucher_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `voucher_code` varchar(15) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `website`
--

CREATE TABLE `website` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `website`
--

INSERT INTO `website` (`id`, `name`, `value`) VALUES
(1, 'business_name', 'BookShop'),
(2, 'address', '28 Ywang, Eatam, Bmt, Đăk Lăk 2'),
(3, 'email', 'bguyt46@gmail.com'),
(4, 'phone', '0905085921');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,0) NOT NULL,
  `create_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `change_email_token`
--
ALTER TABLE `change_email_token`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_group` (`id_group`);

--
-- Chỉ mục cho bảng `label_group`
--
ALTER TABLE `label_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_cancel`
--
ALTER TABLE `order_cancel`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_oder` (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product` (`product_id`);

--
-- Chỉ mục cho bảng `product_label`
--
ALTER TABLE `product_label`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `label_id` (`label_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT cho bảng `change_email_token`
--
ALTER TABLE `change_email_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `labels`
--
ALTER TABLE `labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `label_group`
--
ALTER TABLE `label_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `order_cancel`
--
ALTER TABLE `order_cancel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `product_img`
--
ALTER TABLE `product_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT cho bảng `product_label`
--
ALTER TABLE `product_label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `website`
--
ALTER TABLE `website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `labels`
--
ALTER TABLE `labels`
  ADD CONSTRAINT `fk_group` FOREIGN KEY (`id_group`) REFERENCES `label_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `fk_oder` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_img`
--
ALTER TABLE `product_img`
  ADD CONSTRAINT `fk_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_label`
--
ALTER TABLE `product_label`
  ADD CONSTRAINT `product_label_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_label_ibfk_2` FOREIGN KEY (`label_id`) REFERENCES `labels` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
