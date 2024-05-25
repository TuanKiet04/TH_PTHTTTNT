-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 11, 2024 lúc 11:27 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_quanao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hoodie', '2021-07-07 11:50:15', '2022-11-06 15:07:28'),
(2, 'T-shirt', '2021-07-07 11:50:15', '2022-11-06 15:03:28'),
(3, 'Shorts', '2021-07-07 11:50:15', '2022-11-06 15:57:28'),
(4, 'Trousers', '2021-07-13 10:57:52', '2022-11-06 15:14:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collections`
--

CREATE TABLE `collections` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `collections`
--

INSERT INTO `collections` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'One Piece', '2023-12-26 18:08:52', '2023-12-26 18:08:52'),
(2, 'The Spring', '2023-12-26 18:08:52', '2023-12-26 18:08:52'),
(3, 'Liliwyun', '2023-12-26 18:08:52', '2023-12-26 18:08:52'),
(49, 'Mixi', '2024-04-07 16:58:47', '2024-04-07 16:58:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message_contact` varchar(255) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `hoten`, `email`, `message_contact`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', 'Tôi cần hỗ trợ', 2, '2023-12-27 22:39:08', '2023-12-27 22:39:08'),
(11, 'hug', 'hahuyhung.0310@gmail.com', ' ', 2, '2024-03-26 09:09:54', '2024-03-26 09:09:54'),
(12, 'Hung', 'hug@gmail.com', ' ầdfafas', 8, '2024-05-05 11:10:31', '2024-05-05 11:10:31'),
(13, 'gfdsafa', 'adfasf@gmail.com', ' adfas', 2, '2024-05-05 11:22:42', '2024-05-05 11:22:42'),
(14, 'user', 'user@gmail.com', ' tôi có ý kiến', 2, '2024-05-05 17:15:34', '2024-05-05 17:15:34'),
(15, 'user', 'user@gmail.com', ' dịch vụ tốt', 2, '2024-05-05 22:49:45', '2024-05-05 17:33:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `fullname`, `phone_number`, `email`, `address`, `note`, `order_date`) VALUES
(163, 'ninnin_1', '12345678', 'admin@gmail.com', 'Tphcm', 'DC x OP Luffy Raglan Hoodie - Multicolor', '2024-03-06 22:39:49'),
(164, 'ninnin_2', '12345678', 'admin@gmail.com', 'HaNoi', 'DC x OP Brook Hoodie - Blue', '2024-03-06 22:40:51'),
(165, 'ninnin_4', '12345678', 'admin@gmail.com', 'CanTho', 'DC x OP Chopper Hoodie - Black', '2024-03-06 22:44:20'),
(166, 'ninnin_3', '12345678', 'admin@gmail.com', 'NhaTrang', 'Hoodie - Black', '2024-03-16 22:47:24'),
(172, 'ninnin', '0866206976', 'testweb@gmail.com', 'Tphcm', 'ok', '2024-03-17 12:11:03'),
(173, 'donhang', '0866206976', 'testweb@gmail.com', 'Tphcm', '', '2024-03-17 13:54:55'),
(174, 'user_test', '0934373832', 'user@gmail.com', 'TPHCM', 'Thanh toán khi nhận hàng', '2024-03-18 14:00:20'),
(175, 'hehe', '2343333444', 'testweb@gmail.com', 'Tphcm', 'Thanh toán khi nhận hàng', '2024-03-18 17:13:36'),
(176, 'hehe', '0866206976', 'testweb@gmail.com', 'Tphcm', '', '2024-03-19 17:14:16'),
(177, 'chuchu', '2343333444', 'luo63332@nezid.com', 'Tphcm', '', '2024-03-19 17:14:46'),
(178, 'test123', '0866206976', 'testweb@gmail.com', 'Tphcm', '', '2024-03-20 20:39:16'),
(179, 'Hùng Hà', '0824936289', 'hahuyhung.0310@gmail.com', 'Hương Sơn', '', '2024-03-26 09:51:20'),
(180, 'Hung', 'asdasda', 'adasdadafasd@gmail.com', 'sadasda', '', '2024-04-07 16:37:44'),
(181, 'ha huy dan', '0394567807', 'mail@gmail.com', 'Hương Sơn', '', '2024-04-26 05:44:11'),
(182, 'ha huy dan', '0394567807', 'hung@gmail.com', 'Hương Sơn', '', '2024-04-26 05:45:13'),
(183, 'ha huy dan', '0394567807', 'hung@gmail.com', 'Hương Sơn', '', '2024-04-26 05:49:14'),
(184, 'user', '0394567807', 'user@gmail.com', 'Hương Sơn', '', '2024-05-06 14:31:16'),
(185, 'ha huy dan', '0394567807', 'hahuyhung.0310@gmail.com', 'Hương Sơn', '', '2024-05-10 04:24:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `id_user`, `num`, `price`, `status`) VALUES
(172, 163, 1, 1, 1, 720000, 'Đã nhận hàng'),
(173, 164, 2, 1, 1, 699000, 'Đã nhận hàng'),
(176, 165, 5, 1, 1, 699000, 'Đang chuẩn bị'),
(177, 166, 4, 1, 1, 648000, 'Đã nhận hàng'),
(191, 179, 1, 2, 1, 750000, 'Đã hủy'),
(192, 180, 2, 8, 1, 699000, 'Đang giao'),
(193, 181, 7, 8, 1, 490000, 'Đã nhận hàng'),
(194, 182, 6, 8, 1, 450000, 'Đã nhận hàng'),
(195, 183, 3, 8, 3, 420000, 'Đã nhận hàng'),
(196, 184, 3, 2, 6, 420000, 'Đang chuẩn bị'),
(197, 185, 1, 2, 2, 750000, 'Đã nhận hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `number` float NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `thumbnail_1` varchar(500) NOT NULL,
  `thumbnail_2` varchar(500) NOT NULL,
  `thumbnail_3` varchar(500) NOT NULL,
  `thumbnail_4` varchar(500) NOT NULL,
  `thumbnail_5` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `number`, `thumbnail`, `thumbnail_1`, `thumbnail_2`, `thumbnail_3`, `thumbnail_4`, `thumbnail_5`, `content`, `id_category`, `id_sanpham`, `created_at`, `updated_at`) VALUES
(1, 'DC x OP Luffy Raglan Hoodie - Multicolor Special', 750000, 10, 'uploads/p1.png', 'uploads/p2.png', 'uploads/p3.png', 'uploads/p4.png', 'uploads/p5.png', 'uploads/p6.png', 'Chất liệu nỉ cotton. Hình in thân trước và tay áo áp dụng công nghệ in kéo lụa thủ công. Bo cổ tay và bo thân trùng với màu vải tay áo và thân áo tương ứng. Tag vải riêng của BST được may trên túi phía trước.', 1, 1, '2022-10-30 10:37:18', '2023-12-27 15:24:13'),
(2, 'DC x OP Brook Hoodie - Blue', 699000, 20, 'uploads/p7.png', 'uploads/p8.png', 'uploads/p9.png', 'uploads/p12.png', 'uploads/p11.png', 'uploads/p10.png', 'Chất liệu nỉ cotton. Hình in thân trước và tay áo áp dụng công nghệ in kéo lụa thủ công. Bo cổ tay và bo thân trùng với màu vải tay áo và thân áo tương ứng. Tag vải riêng của BST được may trên túi phía trước.', 1, 1, '2022-10-30 15:11:49', '2022-10-30 15:11:49'),
(3, 'DC x OP Luffy Attack T-shirt - White', 420000, 20, 'uploads/p13.png', 'uploads/p18.png', 'uploads/p15.png', 'uploads/p14.png', 'uploads/p17.png', 'uploads/p18.png', 'Chất liệu nỉ cotton. Hình in thân trước và tay áo áp dụng công nghệ in kéo lụa thủ công. Bo cổ tay và bo thân trùng với màu vải tay áo và thân áo tương ứng. Tag vải riêng của BST được may trên túi phía trước.', 2, 1, '2022-10-30 17:31:22', '2023-12-27 12:09:25'),
(4, 'DirtyCoins Don\'t Test Us Hoodie - Black', 648000, 20, 'uploads/p31.png', 'uploads/p32.png', 'uploads/p33.png', 'uploads/p36.png', 'uploads/p35.png', 'uploads/p34.png', 'Chất liệu nỉ cotton. Hình in thân trước và tay áo áp dụng công nghệ in kéo lụa thủ công. Bo cổ tay và bo thân trùng với màu vải tay áo và thân áo tương ứng. Tag vải riêng của BST được may trên túi phía trước.', 1, 2, '2022-10-30 21:59:06', '2022-10-30 21:59:06'),
(5, 'DC x OP Chopper Hoodie - Black', 699000, 10, 'uploads/p67.png', 'uploads/p71.png', 'uploads/p69.png', 'uploads/p68-1.png', 'uploads/p70.png', 'uploads/p72.png', 'Chất liệu nỉ cotton. Hình in thân trước và tay áo áp dụng công nghệ in kéo lụa thủ công. Bo cổ tay và bo thân trùng với màu vải tay áo và thân áo tương ứng. Tag vải riêng của BST được may trên túi phía trước.', 1, 1, '2022-10-30 22:10:40', '2022-10-30 22:10:40'),
(6, 'DirtyCoins x LilWuyn Logo Shorts - Black', 450000, 10, 'uploads/p25.png', 'uploads/p26.png', 'uploads/p27.png', 'uploads/p28.png', 'uploads/p29.png', 'uploads/p30.png', 'Chất liệu vải sợi tổng hợp. Hình mặt trước quần và logo DirtyCoins áp dụng kĩ thuật in lụa, lưng thun, có túi hai bên. Túi quần sau có nắp kèm nút bấm. Logo DirtyCoins thêu trên túi.', 3, 3, '2022-10-31 12:37:46', '2023-12-27 08:41:12'),
(7, 'Dico Wavy Shorts - Black', 490000, 20, 'uploads/p55.png', 'uploads/p56.png', 'uploads/p57.png', 'uploads/p58.png', 'uploads/p59.png', 'uploads/p60.png', 'Chất liệu vải sợi tổng hợp. Hình mặt trước quần và logo DirtyCoins áp dụng kĩ thuật in lụa, lưng thun, có túi hai bên. Túi quần sau có nắp kèm nút bấm. Logo DirtyCoins thêu trên túi.', 3, 2, '2022-10-31 12:40:58', '2022-10-31 12:40:58'),
(8, 'Shorts - Green', 450000, 20, 'uploads/p61.png', 'uploads/p62.png', 'uploads/p63.png', 'uploads/p64.png', 'uploads/p65.png', 'uploads/p66.png', 'Chất liệu vải sợi tổng hợp. Hình mặt trước quần và logo DirtyCoins áp dụng kĩ thuật in lụa, lưng thun, có túi hai bên. Túi quần sau có nắp kèm nút bấm. Logo DirtyCoins thêu trên túi.', 3, 2, '2022-10-31 12:43:18', '2022-10-31 12:43:18'),
(9, 'Cargo Pants - Black', 620000, 15, 'uploads/p43.png', 'uploads/p44.png', 'uploads/p45.png', 'uploads/p46.png', 'uploads/p47.png', 'uploads/p48.png', 'Chất liệu vải sợi tổng hợp. Hình mặt trước quần và logo DirtyCoins áp dụng kĩ thuật in lụa, lưng thun, có túi hai bên. Túi quần sau có nắp kèm nút bấm. Logo DirtyCoins thêu trên túi.', 4, 2, '2022-10-31 12:55:56', '2022-10-31 12:55:56'),
(10, 'DirtyCoins Dico Starry Jogger Pants - Red', 490000, 20, 'uploads/p49-1.png', 'uploads/p50.png', 'uploads/p51.png', 'uploads/p52.png', 'uploads/p53.png', 'uploads/p54.png', 'Chất liệu vải sợi tổng hợp. Hình mặt trước quần và logo DirtyCoins áp dụng kĩ thuật in lụa, lưng thun, có túi hai bên. Túi quần sau có nắp kèm nút bấm. Logo DirtyCoins thêu trên túi.', 4, 2, '2022-10-31 12:59:42', '2022-10-31 12:59:42'),
(11, 'DC x OP Logo Print Khaki Pants - Black', 620000, 10, 'uploads/p73.png', 'uploads/p74.png', 'uploads/p75.png', 'uploads/p76.png', 'uploads/p77.png', 'uploads/p78.png', 'Chất liệu vải sợi tổng hợp. Hình mặt trước quần và logo DirtyCoins áp dụng kĩ thuật in lụa, lưng thun, có túi hai bên. Túi quần sau có nắp kèm nút bấm. Logo DirtyCoins thêu trên túi.', 4, 1, '2022-10-31 13:06:27', '2022-10-31 13:06:27'),
(12, 'DirtyCoins Print Cardigan - Ivory/Green', 490000, 15, 'uploads/p37.png', 'uploads/p39.png', 'uploads/p40.png', 'uploads/p38.png', 'uploads/p41.png', 'uploads/p42.png', 'Chất liệu nỉ cotton. Hình in thân trước và tay áo áp dụng công nghệ in kéo lụa thủ công. Bo cổ tay và bo thân trùng với màu vải tay áo và thân áo tương ứng. Tag vải riêng của BST được may trên túi phía trước.', 1, 2, '2022-11-05 21:03:16', '2022-11-05 21:03:16'),
(13, 'DirtyCoins x LilWuyn Print L/S T-Shirt - Tan', 550000, 10, 'uploads/p19.png', 'uploads/p21.png', 'uploads/p22.png', 'uploads/p20.png', 'uploads/p23.png', 'uploads/p24.png', 'Chất liệu nỉ cotton. Hình in thân trước và tay áo áp dụng công nghệ in kéo lụa thủ công. Bo cổ tay và bo thân trùng với màu vải tay áo và thân áo tương ứng. Tag vải riêng của BST được may trên túi phía trước.', 1, 3, '2022-11-05 21:07:54', '2022-11-05 21:07:54'),
(14, 'DirtyCoins x LilWuyn Basic T-Shirt - Silver Lining', 699000, 10, 'uploads/1.png', 'uploads/3.png', 'uploads/4.png', 'uploads/2.png', 'uploads/5.png', 'uploads/6.png', 'Chất liệu nỉ cotton. Hình in thân trước và tay áo áp dụng công nghệ in kéo lụa thủ công. Bo cổ tay và bo thân trùng với màu vải tay áo và thân áo tương ứng. Tag vải riêng của BST được may trên túi phía trước.', 2, 3, '2022-11-07 08:44:17', '2022-11-07 08:44:17'),
(15, 'DirtyCoins Twin Flowers T-shirt - White', 420000, 20, 'uploads/7.png', 'uploads/9.png', 'uploads/10.png', 'uploads/8.png', 'uploads/11.png', 'uploads/12.png', 'Chất liệu nỉ cotton. Hình in thân trước và tay áo áp dụng công nghệ in kéo lụa thủ công. Bo cổ tay và bo thân trùng với màu vải tay áo và thân áo tương ứng. Tag vải riêng của BST được may trên túi phía trước.', 2, 1, '2022-11-07 08:48:39', '2022-11-07 08:48:39'),
(61, 'Áo nỉ dài tay MXG – Đen', 350000, 5, 'uploads/anilogomxgden-scaled.jpg', '', '', '', '', '', '<p>Ao colab voi thuong hieu Mixigaming<br></p>', 2, 49, '2024-04-07 16:07:51', '2024-04-07 16:44:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `tendangnhap` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `fullname`, `tendangnhap`, `email`, `diachi`, `matkhau`, `dienthoai`, `role`) VALUES
(1, 'Hug Hug', 'Admin', 'admin@gmail.com', 'TP.Vinh', '9999', 123456789, 'admin'),
(2, 'User', 'user', 'user@gmail.com', 'Ha Tinh', '1234', 123452289, 'user'),
(8, 'Ha Huy Hung', 'user1', 'Hung@gmail.com', 'Huong Son', '1234', 123456789, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ibfk_1` (`id_user`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `collections` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
