-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 26, 2018 lúc 05:31 PM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `suhouse`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`, `phone_number`) VALUES
(1, 'Nguyễn Đình Duy', 'toiladuy22@gmail.com', '$2y$10$t9SQMUhbZ/8DPwGm.0bSyOcUlCy0oFxSYv1YEINjJdwNm1pwVEmSa', 1, 'qQJ2EuQJpM0CzEcKQAOD9CbBYBk2WVUYsCd46NJ34P3Af8HB6crNUpzFuvKZ', NULL, '2018-05-31 19:05:33', '0987654321'),
(3, 'Nguyễn Văn Nam', 'namntt223@gmail.com', '$2y$10$jToAe68PBUrynuzJB7EITuFa4DHp0xMbusy.2epsC2Fa0qU/lMpwO', 1, 'm9nFxLTUlI4AIOddDC9egBZMZu0kjnsOSJ7KeiWhuy9HWaw61oGDIgeXHV4W', NULL, '2018-05-31 18:57:45', '0987654321'),
(10, 'Member', 'member@gmail.com', '$2y$10$1Q3lMkn3L2wnVZ6oMriWP.Vq9vkdRSRSkFO4gF7.swX1XVdWWbSbW', 2, 'JuK16hMtETDZsSUR8AkdcHlNFLsC44dMyukaio3A57J0HVRkKni2QDzerQF3', '2018-05-31 18:54:26', '2018-05-31 19:22:13', '23456'),
(11, 'Duy Member', 'nguyendinhduy2864@gmail.com', '$2y$10$zzD94XDA.gBFM6Zx2mJqy.TJCmhDwwuUlipxsI3wH/IEAunUDlN7O', 1, 'mTadvyJtR5yI4H05y6l572gCeMfE6REvErZghr2sLjOgmwswCesoVGWwREmw', '2018-05-31 18:58:07', '2018-05-31 19:27:58', '43523522');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(1, 'Sơ mi', 'so-mi', NULL, NULL),
(2, 'Áo phông', 'ao-phong', NULL, NULL),
(3, 'Áo khoác', 'ao-khoac', NULL, NULL),
(4, 'Áo nỉ', 'ao-ni', NULL, NULL),
(5, 'Quần short', 'quan-short', NULL, NULL),
(6, 'Quần dài', 'quan-dai', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'An Giang', NULL, NULL),
(2, 'Bà Rịa – Vũng Tàu	', NULL, NULL),
(3, 'Bạc Liêu', NULL, NULL),
(4, 'Bắc Kạn', NULL, NULL),
(5, 'Bắc Giang', NULL, NULL),
(6, 'Bắc Ninh', NULL, NULL),
(7, 'Bến Tre', NULL, NULL),
(8, 'Bình Dương', NULL, NULL),
(9, 'Bình Định', NULL, NULL),
(10, 'Bình Phước', NULL, NULL),
(11, 'Bình Thuận', NULL, NULL),
(12, 'Cà Mau', NULL, NULL),
(13, 'Cao Bằng', NULL, NULL),
(14, 'Cần Thơ', NULL, NULL),
(15, 'Đà Nẵng', NULL, NULL),
(16, 'Đắk Lắk', NULL, NULL),
(17, 'Đắk Nông', NULL, NULL),
(18, 'Điện Biên', NULL, NULL),
(19, 'Đồng Nai', NULL, NULL),
(20, 'Đồng Tháp', NULL, NULL),
(21, 'Gia Lai', NULL, NULL),
(22, 'Hà Giang', NULL, NULL),
(23, 'Hà Nam', NULL, NULL),
(24, 'Hà Nội', NULL, NULL),
(25, 'Hà Tĩnh', NULL, NULL),
(26, 'Hải Dương', NULL, NULL),
(27, 'Hải Phòng', NULL, NULL),
(28, 'Hòa Bình', NULL, NULL),
(29, 'Hồ Chí Minh', NULL, NULL),
(30, 'Hậu Giang', NULL, NULL),
(31, 'Hưng Yên', NULL, NULL),
(32, 'Khánh Hòa', NULL, NULL),
(33, 'Kiên Giang', NULL, NULL),
(34, 'Kon Tum', NULL, NULL),
(35, 'Lai Châu', NULL, NULL),
(36, 'Lào Cai', NULL, NULL),
(37, 'Lạng Sơn', NULL, NULL),
(38, 'Lâm Đồng', NULL, NULL),
(39, 'Long An', NULL, NULL),
(40, 'Nam Định', NULL, NULL),
(41, 'Nghệ An', NULL, NULL),
(42, 'Ninh Bình', NULL, NULL),
(43, 'Ninh Thuận', NULL, NULL),
(44, 'Phú Thọ', NULL, NULL),
(45, 'Phú Yên', NULL, NULL),
(46, 'Quảng Bình', NULL, NULL),
(47, 'Quảng Nam', NULL, NULL),
(48, 'Quảng Ngãi', NULL, NULL),
(49, 'Quảng Ninh', NULL, NULL),
(50, 'Quảng Trị', NULL, NULL),
(51, 'Sóc Trăng', NULL, NULL),
(52, 'Sơn La', NULL, NULL),
(53, 'Tây Ninh', NULL, NULL),
(54, 'Thái Bình', NULL, NULL),
(55, 'Thái Nguyên', NULL, NULL),
(56, 'Thanh Hóa', NULL, NULL),
(57, 'Thừa Thiên-Huế', NULL, NULL),
(58, 'Tiền Giang', NULL, NULL),
(59, 'Trà Vinh', NULL, NULL),
(60, 'Tuyên Quang', NULL, NULL),
(61, 'Vĩnh Long', NULL, NULL),
(62, 'Vĩnh Phúc', NULL, NULL),
(63, 'Yên Bái', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(2, 'DEF456', 'percent', NULL, 20, '2018-05-12 08:27:45', '2018-05-12 08:27:45'),
(3, 'TRE123', 'fixed', 100000, NULL, NULL, NULL),
(4, 'HTG426', 'percent', NULL, 10, NULL, NULL),
(5, 'LSD415', 'percent', NULL, 15, NULL, NULL),
(8, 'AKA047', 'percent', NULL, 30, '2018-06-01 04:05:05', '2018-06-01 04:05:05'),
(10, 'YOU987', 'fixed', 50000, NULL, '2018-06-03 10:13:40', '2018-06-03 10:13:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`id`, `name`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'Quận Ninh Kiều', 14, NULL, NULL),
(2, 'Quận Ô Môn', 14, NULL, NULL),
(3, 'Quận Bình Thủy', 14, NULL, NULL),
(4, 'Quận Cái Răng', 14, NULL, NULL),
(5, 'Quận Thốt Nốt', 14, NULL, NULL),
(6, 'Huyện Vĩnh Thanh', 14, NULL, NULL),
(7, 'Huyện Cờ Đỏ', 14, NULL, NULL),
(8, 'Huyện Phong Điền', 14, NULL, NULL),
(9, 'Huyện Thới Lai', 14, NULL, NULL),
(10, 'Thành Phố Long Xuyên', 1, NULL, NULL),
(11, 'Thành Phố Châu Đốc', 1, NULL, NULL),
(12, 'Huyện An Phú', 1, NULL, NULL),
(13, 'Thị xã Tân Châu', 1, NULL, NULL),
(14, 'Huyện Phú Tân', 1, NULL, NULL),
(15, 'Huyện Châu Phú', 1, NULL, NULL),
(16, 'Huyện Tịnh Biên', 1, NULL, NULL),
(17, 'Huyện Tri Tôn', 1, NULL, NULL),
(18, 'Huyện Châu Thành', 1, NULL, NULL),
(19, 'Huyện Chợ Mới', 1, NULL, NULL),
(20, 'Huyện Thoại Sơn', 1, NULL, NULL),
(31, 'Huyện Tân Thành', 2, NULL, NULL),
(32, 'Thành Phố Vũng Tàu', 2, NULL, NULL),
(33, 'Thành Phố Bà Rịa', 2, NULL, NULL),
(34, 'Huyện Châu Đức', 2, NULL, NULL),
(35, 'Huyện Xuyên Mộc', 2, NULL, NULL),
(36, 'Huyện Long Điền', 2, NULL, NULL),
(37, 'Huyện Đất Đỏ', 2, NULL, NULL),
(38, 'Huyện Hòa Bình', 3, NULL, NULL),
(39, 'Thành Phố Bạc Liêu', 3, NULL, NULL),
(40, 'Huyện Hồng Dân', 3, NULL, NULL),
(41, 'Huyện Phước Long', 3, NULL, NULL),
(42, 'Huyện Vĩnh Lợi', 3, NULL, NULL),
(43, 'Thị xã Giá Rai', 3, NULL, NULL),
(44, 'Huyện Đồng Hải', 3, NULL, NULL),
(45, 'Thành Phố Bắc Kạn', 4, NULL, NULL),
(46, 'Huyện Pác Nặm', 4, NULL, NULL),
(47, 'Huyện Ba Bể', 4, NULL, NULL),
(48, 'Huyện Ngân Sơn', 4, NULL, NULL),
(49, 'Huyện Bạch Thông', 4, NULL, NULL),
(50, 'Huyện Chợ Đồn', 4, NULL, NULL),
(51, 'Huyện Chợ Mới', 4, NULL, NULL),
(52, 'Huyện Na Rì', 4, NULL, NULL),
(53, 'Thành Phố Bắc Giang', 5, NULL, NULL),
(54, 'Huyện Yên Thế', 5, NULL, NULL),
(55, 'Huyện Tân Yên', 5, NULL, NULL),
(56, 'Huyện Lạng Giang', 5, NULL, NULL),
(57, 'Huyện Lục Nam', 5, NULL, NULL),
(58, 'Huyện Lục Ngạn', 5, NULL, NULL),
(59, 'Huyện Sơn Động ', 5, NULL, NULL),
(60, 'Huyện Yên Dũng', 5, NULL, NULL),
(61, 'Huyện Việt Yên', 5, NULL, NULL),
(62, 'Huyện Hiệp Hòa', 5, NULL, NULL),
(63, 'Thành Phố Bắc Ninh', 6, NULL, NULL),
(64, 'Huyện Yên Phong', 6, NULL, NULL),
(65, 'Huyện Quế Võ', 6, NULL, NULL),
(66, 'Huyện Tiên Du', 6, NULL, NULL),
(67, 'Huyện Từ Sơn', 6, NULL, NULL),
(68, 'Huyện Thuận Thành', 6, NULL, NULL),
(69, 'Huyện Gia Bình', 6, NULL, NULL),
(70, 'Huyện Lương Tài', 6, NULL, NULL),
(71, 'Thành Phố Bến Tre', 7, NULL, NULL),
(72, 'Huyện Châu Thành', 7, NULL, NULL),
(73, 'Huyện Chợ Lách', 7, NULL, NULL),
(74, 'Huyện Mỏ Cày Nam', 7, NULL, NULL),
(75, 'Huyện Giồng Trôm', 7, NULL, NULL),
(76, 'Huyện Bình Đại', 7, NULL, NULL),
(77, 'Huyện Ba Tri', 7, NULL, NULL),
(78, 'Huyện Thạnh Phú', 7, NULL, NULL),
(79, 'Huyện Mỏ Cày Bắc', 7, NULL, NULL),
(80, 'Huyện Sóc Sơn', 24, NULL, NULL),
(81, 'Huyện Đông Anh', 24, NULL, NULL),
(82, 'Huyện Gia Lâm', 24, NULL, NULL),
(83, 'Quận Nam Từ Liêm', 24, NULL, NULL),
(84, 'Quận Bắc Từ Liêm', 24, NULL, NULL),
(85, 'Huyện Thanh Trì', 24, NULL, NULL),
(86, 'Huyện Mê Linh', 24, NULL, NULL),
(87, 'Thị xã Sơn Tây', 24, NULL, NULL),
(88, 'Huyện Ba Vì', 24, NULL, NULL),
(89, 'Huyện Phúc Thọ', 24, NULL, NULL),
(90, 'Huyện Đan Phượng', 24, NULL, NULL),
(91, 'Huyện Hoài Đức', 24, NULL, NULL),
(92, 'Huyện Quốc Oai', 24, NULL, NULL),
(93, 'Huyện Thạch Thất', 24, NULL, NULL),
(94, 'Huyện Chương Mỹ', 24, NULL, NULL),
(95, 'Huyện Thanh Oai', 24, NULL, NULL),
(96, 'Huyện Thường Tín', 24, NULL, NULL),
(97, 'Huyện Phú Xuyên', 24, NULL, NULL),
(98, 'Huyện Ứng Hòa', 24, NULL, NULL),
(99, 'Huyện Mỹ Đức', 24, NULL, NULL),
(100, 'Thành Phố Thủ Dầu Một', 8, NULL, NULL),
(101, 'Huyện Bàu Bàng', 8, NULL, NULL),
(102, 'Huyện Dầu Tiếng', 8, NULL, NULL),
(103, 'Thị xã Bến Cát', 8, NULL, NULL),
(104, 'Huyện Phú Giáo', 8, NULL, NULL),
(105, 'Thị xã Tân Uyên', 8, NULL, NULL),
(106, 'Thị xã Dĩ An', 8, NULL, NULL),
(107, 'Thị xã Thuận An', 8, NULL, NULL),
(108, 'Huyện Bắc Tân Uyên', 8, NULL, NULL),
(109, 'Thành Phố Qui Nhơn', 9, NULL, NULL),
(110, 'Huyện An Lão', 9, NULL, NULL),
(111, 'Huyện Hoài Nhơn', 9, NULL, NULL),
(112, 'Huyện Hoài Ân', 9, NULL, NULL),
(113, 'Huyện Phú Mỹ', 9, NULL, NULL),
(114, 'Huyện Vĩnh Thạnh', 9, NULL, NULL),
(115, 'Hyện Tây Sơn', 9, NULL, NULL),
(116, 'Huyện Phú Cát', 9, NULL, NULL),
(117, 'Thị xã An Nhơn', 9, NULL, NULL),
(118, 'Huyện Tuy Phước', 9, NULL, NULL),
(119, 'Huyện Vân Canh', 9, NULL, NULL),
(120, 'Thị xã Đồng Hoài', 10, NULL, NULL),
(121, 'Thị xã Bình Long', 10, NULL, NULL),
(122, 'Huyện Bù Gia Mập', 10, NULL, NULL),
(123, 'Huyện Lộc Ninh', 10, NULL, NULL),
(124, 'Huyện Bù Đốp', 10, NULL, NULL),
(125, 'Huyện Hớn Quản', 10, NULL, NULL),
(126, 'Huyện Đồng Phú', 10, NULL, NULL),
(127, 'Huyện Bù Đằn', 10, NULL, NULL),
(128, 'Huyện Chơn Thành', 10, NULL, NULL),
(129, 'Huyện Phú Riềng', 10, NULL, NULL),
(130, 'Huyện Thoại Sơn', 10, NULL, NULL),
(131, 'Quận Ninh Kiều', 11, NULL, NULL),
(132, 'Quận Ô Môn', 11, NULL, NULL),
(133, 'Quận Bình Thủy', 11, NULL, NULL),
(134, 'Quận Cái Răng', 11, NULL, NULL),
(135, 'Quận Thốt Nốt', 11, NULL, NULL),
(136, 'Huyện Vĩnh Thanh', 11, NULL, NULL),
(137, 'Huyện Cờ Đỏ', 11, NULL, NULL),
(138, 'Huyện Phong Điền', 11, NULL, NULL),
(139, 'Huyện Thới Lai', 11, NULL, NULL),
(140, 'Thành phố Long Xuyên', 11, NULL, NULL),
(141, 'Quận Ninh Kiều', 12, NULL, NULL),
(142, 'Quận Ô Môn', 12, NULL, NULL),
(143, 'Quận Bình Thủy', 12, NULL, NULL),
(144, 'Quận Cái Răng', 12, NULL, NULL),
(145, 'Quận Thốt Nốt', 12, NULL, NULL),
(146, 'Huyện Vĩnh Thanh', 12, NULL, NULL),
(147, 'Huyện Cờ Đỏ', 12, NULL, NULL),
(148, 'Huyện Phong Điền', 12, NULL, NULL),
(149, 'Huyện Thới Lai', 12, NULL, NULL),
(150, 'Thành phố Long Xuyên', 12, NULL, NULL),
(151, 'Quận Ninh Kiều', 13, NULL, NULL),
(152, 'Quận Ô Môn', 13, NULL, NULL),
(153, 'Quận Bình Thủy', 13, NULL, NULL),
(154, 'Quận Cái Răng', 13, NULL, NULL),
(155, 'Quận Thốt Nốt', 13, NULL, NULL),
(156, 'Huyện Vĩnh Thanh', 13, NULL, NULL),
(157, 'Huyện Cờ Đỏ', 13, NULL, NULL),
(158, 'Huyện Phong Điền', 13, NULL, NULL),
(159, 'Huyện Thới Lai', 13, NULL, NULL),
(160, 'Thành phố Long Xuyên', 13, NULL, NULL),
(171, 'Quận Ninh Kiều', 15, NULL, NULL),
(172, 'Quận Ô Môn', 15, NULL, NULL),
(173, 'Quận Bình Thủy', 15, NULL, NULL),
(174, 'Quận Cái Răng', 15, NULL, NULL),
(175, 'Quận Thốt Nốt', 15, NULL, NULL),
(176, 'Huyện Vĩnh Thanh', 15, NULL, NULL),
(177, 'Huyện Cờ Đỏ', 15, NULL, NULL),
(178, 'Huyện Phong Điền', 15, NULL, NULL),
(179, 'Huyện Thới Lai', 15, NULL, NULL),
(180, 'Thành phố Long Xuyên', 15, NULL, NULL),
(181, 'Quận Ninh Kiều', 16, NULL, NULL),
(182, 'Quận Ô Môn', 16, NULL, NULL),
(183, 'Quận Bình Thủy', 16, NULL, NULL),
(184, 'Quận Cái Răng', 16, NULL, NULL),
(185, 'Quận Thốt Nốt', 16, NULL, NULL),
(186, 'Huyện Vĩnh Thanh', 16, NULL, NULL),
(187, 'Huyện Cờ Đỏ', 16, NULL, NULL),
(188, 'Huyện Phong Điền', 16, NULL, NULL),
(189, 'Huyện Thới Lai', 16, NULL, NULL),
(190, 'Thành phố Long Xuyên', 16, NULL, NULL),
(191, 'Quận Ninh Kiều', 17, NULL, NULL),
(192, 'Quận Ô Môn', 17, NULL, NULL),
(193, 'Quận Bình Thủy', 17, NULL, NULL),
(194, 'Quận Cái Răng', 17, NULL, NULL),
(195, 'Quận Thốt Nốt', 17, NULL, NULL),
(196, 'Huyện Vĩnh Thanh', 17, NULL, NULL),
(197, 'Huyện Cờ Đỏ', 17, NULL, NULL),
(198, 'Huyện Phong Điền', 17, NULL, NULL),
(199, 'Huyện Thới Lai', 17, NULL, NULL),
(200, 'Thành phố Long Xuyên', 17, NULL, NULL),
(201, 'Quận Ninh Kiều', 18, NULL, NULL),
(202, 'Quận Ô Môn', 18, NULL, NULL),
(203, 'Quận Bình Thủy', 18, NULL, NULL),
(204, 'Quận Cái Răng', 18, NULL, NULL),
(205, 'Quận Thốt Nốt', 18, NULL, NULL),
(206, 'Huyện Vĩnh Thanh', 18, NULL, NULL),
(207, 'Huyện Cờ Đỏ', 18, NULL, NULL),
(208, 'Huyện Phong Điền', 18, NULL, NULL),
(209, 'Huyện Thới Lai', 18, NULL, NULL),
(210, 'Thành phố Long Xuyên', 18, NULL, NULL),
(211, 'Quận Ninh Kiều', 19, NULL, NULL),
(212, 'Quận Ô Môn', 19, NULL, NULL),
(213, 'Quận Bình Thủy', 19, NULL, NULL),
(214, 'Quận Cái Răng', 19, NULL, NULL),
(215, 'Quận Thốt Nốt', 19, NULL, NULL),
(216, 'Huyện Vĩnh Thanh', 19, NULL, NULL),
(217, 'Huyện Cờ Đỏ', 19, NULL, NULL),
(218, 'Huyện Phong Điền', 19, NULL, NULL),
(219, 'Huyện Thới Lai', 19, NULL, NULL),
(220, 'Thành phố Long Xuyên', 19, NULL, NULL),
(221, 'Quận Ninh Kiều', 20, NULL, NULL),
(222, 'Quận Ô Môn', 20, NULL, NULL),
(223, 'Quận Bình Thủy', 20, NULL, NULL),
(224, 'Quận Cái Răng', 20, NULL, NULL),
(225, 'Quận Thốt Nốt', 20, NULL, NULL),
(226, 'Huyện Vĩnh Thanh', 20, NULL, NULL),
(227, 'Huyện Cờ Đỏ', 20, NULL, NULL),
(228, 'Huyện Phong Điền', 20, NULL, NULL),
(229, 'Huyện Thới Lai', 20, NULL, NULL),
(230, 'Thành phố Long Xuyên', 20, NULL, NULL),
(231, 'Quận Ninh Kiều', 21, NULL, NULL),
(232, 'Quận Ô Môn', 21, NULL, NULL),
(233, 'Quận Bình Thủy', 21, NULL, NULL),
(234, 'Quận Cái Răng', 21, NULL, NULL),
(235, 'Quận Thốt Nốt', 21, NULL, NULL),
(236, 'Huyện Vĩnh Thanh', 21, NULL, NULL),
(237, 'Huyện Cờ Đỏ', 21, NULL, NULL),
(238, 'Huyện Phong Điền', 21, NULL, NULL),
(239, 'Huyện Thới Lai', 21, NULL, NULL),
(240, 'Thành phố Long Xuyên', 21, NULL, NULL),
(241, 'Quận Ninh Kiều', 22, NULL, NULL),
(242, 'Quận Ô Môn', 22, NULL, NULL),
(243, 'Quận Bình Thủy', 22, NULL, NULL),
(244, 'Quận Cái Răng', 22, NULL, NULL),
(245, 'Quận Thốt Nốt', 22, NULL, NULL),
(246, 'Huyện Vĩnh Thanh', 22, NULL, NULL),
(247, 'Huyện Cờ Đỏ', 22, NULL, NULL),
(248, 'Huyện Phong Điền', 22, NULL, NULL),
(249, 'Huyện Thới Lai', 22, NULL, NULL),
(250, 'Thành phố Long Xuyên', 22, NULL, NULL),
(251, 'Quận Ninh Kiều', 23, NULL, NULL),
(252, 'Quận Ô Môn', 23, NULL, NULL),
(253, 'Quận Bình Thủy', 23, NULL, NULL),
(254, 'Quận Cái Răng', 23, NULL, NULL),
(255, 'Quận Thốt Nốt', 23, NULL, NULL),
(256, 'Huyện Vĩnh Thanh', 23, NULL, NULL),
(257, 'Huyện Cờ Đỏ', 23, NULL, NULL),
(258, 'Huyện Phong Điền', 23, NULL, NULL),
(259, 'Huyện Thới Lai', 23, NULL, NULL),
(260, 'Thành phố Long Xuyên', 23, NULL, NULL),
(271, 'Quận Ninh Kiều', 25, NULL, NULL),
(272, 'Quận Ô Môn', 25, NULL, NULL),
(273, 'Quận Bình Thủy', 25, NULL, NULL),
(274, 'Quận Cái Răng', 25, NULL, NULL),
(275, 'Quận Thốt Nốt', 25, NULL, NULL),
(276, 'Huyện Vĩnh Thanh', 25, NULL, NULL),
(277, 'Huyện Cờ Đỏ', 25, NULL, NULL),
(278, 'Huyện Phong Điền', 25, NULL, NULL),
(279, 'Huyện Thới Lai', 25, NULL, NULL),
(280, 'Thành phố Long Xuyên', 25, NULL, NULL),
(281, 'Quận Ninh Kiều', 26, NULL, NULL),
(282, 'Quận Ô Môn', 26, NULL, NULL),
(283, 'Quận Bình Thủy', 26, NULL, NULL),
(284, 'Quận Cái Răng', 26, NULL, NULL),
(285, 'Quận Thốt Nốt', 26, NULL, NULL),
(286, 'Huyện Vĩnh Thanh', 26, NULL, NULL),
(287, 'Huyện Cờ Đỏ', 26, NULL, NULL),
(288, 'Huyện Phong Điền', 26, NULL, NULL),
(289, 'Huyện Thới Lai', 26, NULL, NULL),
(290, 'Thành phố Long Xuyên', 26, NULL, NULL),
(291, 'Quận Ninh Kiều', 27, NULL, NULL),
(292, 'Quận Ô Môn', 27, NULL, NULL),
(293, 'Quận Bình Thủy', 27, NULL, NULL),
(294, 'Quận Cái Răng', 27, NULL, NULL),
(295, 'Quận Thốt Nốt', 27, NULL, NULL),
(296, 'Huyện Vĩnh Thanh', 27, NULL, NULL),
(297, 'Huyện Cờ Đỏ', 27, NULL, NULL),
(298, 'Huyện Phong Điền', 27, NULL, NULL),
(299, 'Huyện Thới Lai', 27, NULL, NULL),
(300, 'Thành phố Long Xuyên', 27, NULL, NULL),
(301, 'Quận Ninh Kiều', 28, NULL, NULL),
(302, 'Quận Ô Môn', 28, NULL, NULL),
(303, 'Quận Bình Thủy', 28, NULL, NULL),
(304, 'Quận Cái Răng', 28, NULL, NULL),
(305, 'Quận Thốt Nốt', 28, NULL, NULL),
(306, 'Huyện Vĩnh Thanh', 28, NULL, NULL),
(307, 'Huyện Cờ Đỏ', 28, NULL, NULL),
(308, 'Huyện Phong Điền', 28, NULL, NULL),
(309, 'Huyện Thới Lai', 28, NULL, NULL),
(310, 'Thành phố Long Xuyên', 28, NULL, NULL),
(311, 'Quận Ninh Kiều', 29, NULL, NULL),
(312, 'Quận Ô Môn', 29, NULL, NULL),
(313, 'Quận Bình Thủy', 29, NULL, NULL),
(314, 'Quận Cái Răng', 29, NULL, NULL),
(315, 'Quận Thốt Nốt', 29, NULL, NULL),
(316, 'Huyện Vĩnh Thanh', 29, NULL, NULL),
(317, 'Huyện Cờ Đỏ', 29, NULL, NULL),
(318, 'Huyện Phong Điền', 29, NULL, NULL),
(319, 'Huyện Thới Lai', 29, NULL, NULL),
(320, 'Thành phố Long Xuyên', 29, NULL, NULL),
(321, 'Quận Ninh Kiều', 30, NULL, NULL),
(322, 'Quận Ô Môn', 30, NULL, NULL),
(323, 'Quận Bình Thủy', 30, NULL, NULL),
(324, 'Quận Cái Răng', 30, NULL, NULL),
(325, 'Quận Thốt Nốt', 30, NULL, NULL),
(326, 'Huyện Vĩnh Thanh', 30, NULL, NULL),
(327, 'Huyện Cờ Đỏ', 30, NULL, NULL),
(328, 'Huyện Phong Điền', 30, NULL, NULL),
(329, 'Huyện Thới Lai', 30, NULL, NULL),
(330, 'Thành phố Long Xuyên', 30, NULL, NULL),
(331, 'Quận Ninh Kiều', 31, NULL, NULL),
(332, 'Quận Ô Môn', 31, NULL, NULL),
(333, 'Quận Bình Thủy', 31, NULL, NULL),
(334, 'Quận Cái Răng', 31, NULL, NULL),
(335, 'Quận Thốt Nốt', 31, NULL, NULL),
(336, 'Huyện Vĩnh Thanh', 31, NULL, NULL),
(337, 'Huyện Cờ Đỏ', 31, NULL, NULL),
(338, 'Huyện Phong Điền', 31, NULL, NULL),
(339, 'Huyện Thới Lai', 31, NULL, NULL),
(340, 'Thành phố Long Xuyên', 31, NULL, NULL),
(341, 'Quận Ninh Kiều', 32, NULL, NULL),
(342, 'Quận Ô Môn', 32, NULL, NULL),
(343, 'Quận Bình Thủy', 32, NULL, NULL),
(344, 'Quận Cái Răng', 32, NULL, NULL),
(345, 'Quận Thốt Nốt', 32, NULL, NULL),
(346, 'Huyện Vĩnh Thanh', 32, NULL, NULL),
(347, 'Huyện Cờ Đỏ', 32, NULL, NULL),
(348, 'Huyện Phong Điền', 32, NULL, NULL),
(349, 'Huyện Thới Lai', 32, NULL, NULL),
(350, 'Thành phố Long Xuyên', 32, NULL, NULL),
(351, 'Quận Ninh Kiều', 33, NULL, NULL),
(352, 'Quận Ô Môn', 33, NULL, NULL),
(353, 'Quận Bình Thủy', 33, NULL, NULL),
(354, 'Quận Cái Răng', 33, NULL, NULL),
(355, 'Quận Thốt Nốt', 33, NULL, NULL),
(356, 'Huyện Vĩnh Thanh', 33, NULL, NULL),
(357, 'Huyện Cờ Đỏ', 33, NULL, NULL),
(358, 'Huyện Phong Điền', 33, NULL, NULL),
(359, 'Huyện Thới Lai', 33, NULL, NULL),
(360, 'Thành phố Long Xuyên', 33, NULL, NULL),
(361, 'Quận Ninh Kiều', 34, NULL, NULL),
(362, 'Quận Ô Môn', 34, NULL, NULL),
(363, 'Quận Bình Thủy', 34, NULL, NULL),
(364, 'Quận Cái Răng', 34, NULL, NULL),
(365, 'Quận Thốt Nốt', 34, NULL, NULL),
(366, 'Huyện Vĩnh Thanh', 34, NULL, NULL),
(367, 'Huyện Cờ Đỏ', 34, NULL, NULL),
(368, 'Huyện Phong Điền', 34, NULL, NULL),
(369, 'Huyện Thới Lai', 34, NULL, NULL),
(370, 'Thành phố Long Xuyên', 34, NULL, NULL),
(371, 'Quận Ninh Kiều', 35, NULL, NULL),
(372, 'Quận Ô Môn', 35, NULL, NULL),
(373, 'Quận Bình Thủy', 35, NULL, NULL),
(374, 'Quận Cái Răng', 35, NULL, NULL),
(375, 'Quận Thốt Nốt', 35, NULL, NULL),
(376, 'Huyện Vĩnh Thanh', 35, NULL, NULL),
(377, 'Huyện Cờ Đỏ', 35, NULL, NULL),
(378, 'Huyện Phong Điền', 35, NULL, NULL),
(379, 'Huyện Thới Lai', 35, NULL, NULL),
(380, 'Thành phố Long Xuyên', 35, NULL, NULL),
(381, 'Quận Ninh Kiều', 36, NULL, NULL),
(382, 'Quận Ô Môn', 36, NULL, NULL),
(383, 'Quận Bình Thủy', 36, NULL, NULL),
(384, 'Quận Cái Răng', 36, NULL, NULL),
(385, 'Quận Thốt Nốt', 36, NULL, NULL),
(386, 'Huyện Vĩnh Thanh', 36, NULL, NULL),
(387, 'Huyện Cờ Đỏ', 36, NULL, NULL),
(388, 'Huyện Phong Điền', 36, NULL, NULL),
(389, 'Huyện Thới Lai', 36, NULL, NULL),
(390, 'Thành phố Long Xuyên', 36, NULL, NULL),
(391, 'Quận Ninh Kiều', 37, NULL, NULL),
(392, 'Quận Ô Môn', 37, NULL, NULL),
(393, 'Quận Bình Thủy', 37, NULL, NULL),
(394, 'Quận Cái Răng', 37, NULL, NULL),
(395, 'Quận Thốt Nốt', 37, NULL, NULL),
(396, 'Huyện Vĩnh Thanh', 37, NULL, NULL),
(397, 'Huyện Cờ Đỏ', 37, NULL, NULL),
(398, 'Huyện Phong Điền', 37, NULL, NULL),
(399, 'Huyện Thới Lai', 37, NULL, NULL),
(400, 'Thành phố Long Xuyên', 37, NULL, NULL),
(401, 'Quận Ninh Kiều', 38, NULL, NULL),
(402, 'Quận Ô Môn', 38, NULL, NULL),
(403, 'Quận Bình Thủy', 38, NULL, NULL),
(404, 'Quận Cái Răng', 38, NULL, NULL),
(405, 'Quận Thốt Nốt', 38, NULL, NULL),
(406, 'Huyện Vĩnh Thanh', 38, NULL, NULL),
(407, 'Huyện Cờ Đỏ', 38, NULL, NULL),
(408, 'Huyện Phong Điền', 38, NULL, NULL),
(409, 'Huyện Thới Lai', 38, NULL, NULL),
(410, 'Thành phố Long Xuyên', 38, NULL, NULL),
(411, 'Quận Ninh Kiều', 39, NULL, NULL),
(412, 'Quận Ô Môn', 39, NULL, NULL),
(413, 'Quận Bình Thủy', 39, NULL, NULL),
(414, 'Quận Cái Răng', 39, NULL, NULL),
(415, 'Quận Thốt Nốt', 39, NULL, NULL),
(416, 'Huyện Vĩnh Thanh', 39, NULL, NULL),
(417, 'Huyện Cờ Đỏ', 39, NULL, NULL),
(418, 'Huyện Phong Điền', 39, NULL, NULL),
(419, 'Huyện Thới Lai', 39, NULL, NULL),
(420, 'Thành phố Long Xuyên', 39, NULL, NULL),
(421, 'Quận Ninh Kiều', 40, NULL, NULL),
(422, 'Quận Ô Môn', 40, NULL, NULL),
(423, 'Quận Bình Thủy', 40, NULL, NULL),
(424, 'Quận Cái Răng', 40, NULL, NULL),
(425, 'Quận Thốt Nốt', 40, NULL, NULL),
(426, 'Huyện Vĩnh Thanh', 40, NULL, NULL),
(427, 'Huyện Cờ Đỏ', 40, NULL, NULL),
(428, 'Huyện Phong Điền', 40, NULL, NULL),
(429, 'Huyện Thới Lai', 40, NULL, NULL),
(430, 'Thành phố Long Xuyên', 40, NULL, NULL),
(431, 'Quận Ninh Kiều', 41, NULL, NULL),
(432, 'Quận Ô Môn', 41, NULL, NULL),
(433, 'Quận Bình Thủy', 41, NULL, NULL),
(434, 'Quận Cái Răng', 41, NULL, NULL),
(435, 'Quận Thốt Nốt', 41, NULL, NULL),
(436, 'Huyện Vĩnh Thanh', 41, NULL, NULL),
(437, 'Huyện Cờ Đỏ', 41, NULL, NULL),
(438, 'Huyện Phong Điền', 41, NULL, NULL),
(439, 'Huyện Thới Lai', 41, NULL, NULL),
(440, 'Thành phố Long Xuyên', 41, NULL, NULL),
(441, 'Quận Ninh Kiều', 42, NULL, NULL),
(442, 'Quận Ô Môn', 42, NULL, NULL),
(443, 'Quận Bình Thủy', 42, NULL, NULL),
(444, 'Quận Cái Răng', 42, NULL, NULL),
(445, 'Quận Thốt Nốt', 42, NULL, NULL),
(446, 'Huyện Vĩnh Thanh', 42, NULL, NULL),
(447, 'Huyện Cờ Đỏ', 42, NULL, NULL),
(448, 'Huyện Phong Điền', 42, NULL, NULL),
(449, 'Huyện Thới Lai', 42, NULL, NULL),
(450, 'Thành phố Long Xuyên', 42, NULL, NULL),
(451, 'Quận Ninh Kiều', 43, NULL, NULL),
(452, 'Quận Ô Môn', 43, NULL, NULL),
(453, 'Quận Bình Thủy', 43, NULL, NULL),
(454, 'Quận Cái Răng', 43, NULL, NULL),
(455, 'Quận Thốt Nốt', 43, NULL, NULL),
(456, 'Huyện Vĩnh Thanh', 43, NULL, NULL),
(457, 'Huyện Cờ Đỏ', 43, NULL, NULL),
(458, 'Huyện Phong Điền', 43, NULL, NULL),
(459, 'Huyện Thới Lai', 43, NULL, NULL),
(460, 'Thành phố Long Xuyên', 43, NULL, NULL),
(461, 'Quận Ninh Kiều', 44, NULL, NULL),
(462, 'Quận Ô Môn', 44, NULL, NULL),
(463, 'Quận Bình Thủy', 44, NULL, NULL),
(464, 'Quận Cái Răng', 44, NULL, NULL),
(465, 'Quận Thốt Nốt', 44, NULL, NULL),
(466, 'Huyện Vĩnh Thanh', 44, NULL, NULL),
(467, 'Huyện Cờ Đỏ', 44, NULL, NULL),
(468, 'Huyện Phong Điền', 44, NULL, NULL),
(469, 'Huyện Thới Lai', 44, NULL, NULL),
(470, 'Thành phố Long Xuyên', 44, NULL, NULL),
(471, 'Quận Ninh Kiều', 45, NULL, NULL),
(472, 'Quận Ô Môn', 45, NULL, NULL),
(473, 'Quận Bình Thủy', 45, NULL, NULL),
(474, 'Quận Cái Răng', 45, NULL, NULL),
(475, 'Quận Thốt Nốt', 45, NULL, NULL),
(476, 'Huyện Vĩnh Thanh', 45, NULL, NULL),
(477, 'Huyện Cờ Đỏ', 45, NULL, NULL),
(478, 'Huyện Phong Điền', 45, NULL, NULL),
(479, 'Huyện Thới Lai', 45, NULL, NULL),
(480, 'Thành phố Long Xuyên', 45, NULL, NULL),
(481, 'Quận Ninh Kiều', 46, NULL, NULL),
(482, 'Quận Ô Môn', 46, NULL, NULL),
(483, 'Quận Bình Thủy', 46, NULL, NULL),
(484, 'Quận Cái Răng', 46, NULL, NULL),
(485, 'Quận Thốt Nốt', 46, NULL, NULL),
(486, 'Huyện Vĩnh Thanh', 46, NULL, NULL),
(487, 'Huyện Cờ Đỏ', 46, NULL, NULL),
(488, 'Huyện Phong Điền', 46, NULL, NULL),
(489, 'Huyện Thới Lai', 46, NULL, NULL),
(490, 'Thành phố Long Xuyên', 46, NULL, NULL),
(491, 'Quận Ninh Kiều', 47, NULL, NULL),
(492, 'Quận Ô Môn', 47, NULL, NULL),
(493, 'Quận Bình Thủy', 47, NULL, NULL),
(494, 'Quận Cái Răng', 47, NULL, NULL),
(495, 'Quận Thốt Nốt', 47, NULL, NULL),
(496, 'Huyện Vĩnh Thanh', 47, NULL, NULL),
(497, 'Huyện Cờ Đỏ', 47, NULL, NULL),
(498, 'Huyện Phong Điền', 47, NULL, NULL),
(499, 'Huyện Thới Lai', 47, NULL, NULL),
(500, 'Thành phố Long Xuyên', 47, NULL, NULL),
(501, 'Quận Ninh Kiều', 48, NULL, NULL),
(502, 'Quận Ô Môn', 48, NULL, NULL),
(503, 'Quận Bình Thủy', 48, NULL, NULL),
(504, 'Quận Cái Răng', 48, NULL, NULL),
(505, 'Quận Thốt Nốt', 48, NULL, NULL),
(506, 'Huyện Vĩnh Thanh', 48, NULL, NULL),
(507, 'Huyện Cờ Đỏ', 48, NULL, NULL),
(508, 'Huyện Phong Điền', 48, NULL, NULL),
(509, 'Huyện Thới Lai', 48, NULL, NULL),
(510, 'Thành phố Long Xuyên', 48, NULL, NULL),
(511, 'Quận Ninh Kiều', 49, NULL, NULL),
(512, 'Quận Ô Môn', 49, NULL, NULL),
(513, 'Quận Bình Thủy', 49, NULL, NULL),
(514, 'Quận Cái Răng', 49, NULL, NULL),
(515, 'Quận Thốt Nốt', 49, NULL, NULL),
(516, 'Huyện Vĩnh Thanh', 49, NULL, NULL),
(517, 'Huyện Cờ Đỏ', 49, NULL, NULL),
(518, 'Huyện Phong Điền', 49, NULL, NULL),
(519, 'Huyện Thới Lai', 49, NULL, NULL),
(520, 'Thành phố Long Xuyên', 49, NULL, NULL),
(521, 'Quận Ninh Kiều', 50, NULL, NULL),
(522, 'Quận Ô Môn', 50, NULL, NULL),
(523, 'Quận Bình Thủy', 50, NULL, NULL),
(524, 'Quận Cái Răng', 50, NULL, NULL),
(525, 'Quận Thốt Nốt', 50, NULL, NULL),
(526, 'Huyện Vĩnh Thanh', 50, NULL, NULL),
(527, 'Huyện Cờ Đỏ', 50, NULL, NULL),
(528, 'Huyện Phong Điền', 50, NULL, NULL),
(529, 'Huyện Thới Lai', 50, NULL, NULL),
(530, 'Thành phố Long Xuyên', 50, NULL, NULL),
(531, 'Quận Ninh Kiều', 51, NULL, NULL),
(532, 'Quận Ô Môn', 51, NULL, NULL),
(533, 'Quận Bình Thủy', 51, NULL, NULL),
(534, 'Quận Cái Răng', 51, NULL, NULL),
(535, 'Quận Thốt Nốt', 51, NULL, NULL),
(536, 'Huyện Vĩnh Thanh', 51, NULL, NULL),
(537, 'Huyện Cờ Đỏ', 51, NULL, NULL),
(538, 'Huyện Phong Điền', 51, NULL, NULL),
(539, 'Huyện Thới Lai', 51, NULL, NULL),
(540, 'Thành phố Long Xuyên', 51, NULL, NULL),
(541, 'Quận Ninh Kiều', 52, NULL, NULL),
(542, 'Quận Ô Môn', 52, NULL, NULL),
(543, 'Quận Bình Thủy', 52, NULL, NULL),
(544, 'Quận Cái Răng', 52, NULL, NULL),
(545, 'Quận Thốt Nốt', 52, NULL, NULL),
(546, 'Huyện Vĩnh Thanh', 52, NULL, NULL),
(547, 'Huyện Cờ Đỏ', 52, NULL, NULL),
(548, 'Huyện Phong Điền', 52, NULL, NULL),
(549, 'Huyện Thới Lai', 52, NULL, NULL),
(550, 'Thành phố Long Xuyên', 52, NULL, NULL),
(551, 'Quận Ninh Kiều', 53, NULL, NULL),
(552, 'Quận Ô Môn', 53, NULL, NULL),
(553, 'Quận Bình Thủy', 53, NULL, NULL),
(554, 'Quận Cái Răng', 53, NULL, NULL),
(555, 'Quận Thốt Nốt', 53, NULL, NULL),
(556, 'Huyện Vĩnh Thanh', 53, NULL, NULL),
(557, 'Huyện Cờ Đỏ', 53, NULL, NULL),
(558, 'Huyện Phong Điền', 53, NULL, NULL),
(559, 'Huyện Thới Lai', 53, NULL, NULL),
(560, 'Thành phố Long Xuyên', 53, NULL, NULL),
(561, 'Quận Ninh Kiều', 54, NULL, NULL),
(562, 'Quận Ô Môn', 54, NULL, NULL),
(563, 'Quận Bình Thủy', 54, NULL, NULL),
(564, 'Quận Cái Răng', 54, NULL, NULL),
(565, 'Quận Thốt Nốt', 54, NULL, NULL),
(566, 'Huyện Vĩnh Thanh', 54, NULL, NULL),
(567, 'Huyện Cờ Đỏ', 54, NULL, NULL),
(568, 'Huyện Phong Điền', 54, NULL, NULL),
(569, 'Huyện Thới Lai', 54, NULL, NULL),
(570, 'Thành phố Long Xuyên', 54, NULL, NULL),
(571, 'Quận Ninh Kiều', 55, NULL, NULL),
(572, 'Quận Ô Môn', 55, NULL, NULL),
(573, 'Quận Bình Thủy', 55, NULL, NULL),
(574, 'Quận Cái Răng', 55, NULL, NULL),
(575, 'Quận Thốt Nốt', 55, NULL, NULL),
(576, 'Huyện Vĩnh Thanh', 55, NULL, NULL),
(577, 'Huyện Cờ Đỏ', 55, NULL, NULL),
(578, 'Huyện Phong Điền', 55, NULL, NULL),
(579, 'Huyện Thới Lai', 55, NULL, NULL),
(580, 'Thành phố Long Xuyên', 55, NULL, NULL),
(581, 'Quận Ninh Kiều', 56, NULL, NULL),
(582, 'Quận Ô Môn', 56, NULL, NULL),
(583, 'Quận Bình Thủy', 56, NULL, NULL),
(584, 'Quận Cái Răng', 56, NULL, NULL),
(585, 'Quận Thốt Nốt', 56, NULL, NULL),
(586, 'Huyện Vĩnh Thanh', 56, NULL, NULL),
(587, 'Huyện Cờ Đỏ', 56, NULL, NULL),
(588, 'Huyện Phong Điền', 56, NULL, NULL),
(589, 'Huyện Thới Lai', 56, NULL, NULL),
(590, 'Thành phố Long Xuyên', 56, NULL, NULL),
(591, 'Quận Ninh Kiều', 57, NULL, NULL),
(592, 'Quận Ô Môn', 57, NULL, NULL),
(593, 'Quận Bình Thủy', 57, NULL, NULL),
(594, 'Quận Cái Răng', 57, NULL, NULL),
(595, 'Quận Thốt Nốt', 57, NULL, NULL),
(596, 'Huyện Vĩnh Thanh', 57, NULL, NULL),
(597, 'Huyện Cờ Đỏ', 57, NULL, NULL),
(598, 'Huyện Phong Điền', 57, NULL, NULL),
(599, 'Huyện Thới Lai', 57, NULL, NULL),
(600, 'Thành phố Long Xuyên', 57, NULL, NULL),
(601, 'Quận Ninh Kiều', 58, NULL, NULL),
(602, 'Quận Ô Môn', 58, NULL, NULL),
(603, 'Quận Bình Thủy', 58, NULL, NULL),
(604, 'Quận Cái Răng', 58, NULL, NULL),
(605, 'Quận Thốt Nốt', 58, NULL, NULL),
(606, 'Huyện Vĩnh Thanh', 58, NULL, NULL),
(607, 'Huyện Cờ Đỏ', 58, NULL, NULL),
(608, 'Huyện Phong Điền', 58, NULL, NULL),
(609, 'Huyện Thới Lai', 58, NULL, NULL),
(610, 'Thành phố Long Xuyên', 58, NULL, NULL),
(611, 'Quận Ninh Kiều', 59, NULL, NULL),
(612, 'Quận Ô Môn', 59, NULL, NULL),
(613, 'Quận Bình Thủy', 59, NULL, NULL),
(614, 'Quận Cái Răng', 59, NULL, NULL),
(615, 'Quận Thốt Nốt', 59, NULL, NULL),
(616, 'Huyện Vĩnh Thanh', 59, NULL, NULL),
(617, 'Huyện Cờ Đỏ', 59, NULL, NULL),
(618, 'Huyện Phong Điền', 59, NULL, NULL),
(619, 'Huyện Thới Lai', 59, NULL, NULL),
(620, 'Thành phố Long Xuyên', 59, NULL, NULL),
(621, 'Quận Ninh Kiều', 60, NULL, NULL),
(622, 'Quận Ô Môn', 60, NULL, NULL),
(623, 'Quận Bình Thủy', 60, NULL, NULL),
(624, 'Quận Cái Răng', 60, NULL, NULL),
(625, 'Quận Thốt Nốt', 60, NULL, NULL),
(626, 'Huyện Vĩnh Thanh', 60, NULL, NULL),
(627, 'Huyện Cờ Đỏ', 60, NULL, NULL),
(628, 'Huyện Phong Điền', 60, NULL, NULL),
(629, 'Huyện Thới Lai', 60, NULL, NULL),
(630, 'Thành phố Long Xuyên', 60, NULL, NULL),
(631, 'Quận Ninh Kiều', 61, NULL, NULL),
(632, 'Quận Ô Môn', 61, NULL, NULL),
(633, 'Quận Bình Thủy', 61, NULL, NULL),
(634, 'Quận Cái Răng', 61, NULL, NULL),
(635, 'Quận Thốt Nốt', 61, NULL, NULL),
(636, 'Huyện Vĩnh Thanh', 61, NULL, NULL),
(637, 'Huyện Cờ Đỏ', 61, NULL, NULL),
(638, 'Huyện Phong Điền', 61, NULL, NULL),
(639, 'Huyện Thới Lai', 61, NULL, NULL),
(640, 'Thành phố Long Xuyên', 61, NULL, NULL),
(641, 'Quận Ninh Kiều', 62, NULL, NULL),
(642, 'Quận Ô Môn', 62, NULL, NULL),
(643, 'Quận Bình Thủy', 62, NULL, NULL),
(644, 'Quận Cái Răng', 62, NULL, NULL),
(645, 'Quận Thốt Nốt', 62, NULL, NULL),
(646, 'Huyện Vĩnh Thanh', 62, NULL, NULL),
(647, 'Huyện Cờ Đỏ', 62, NULL, NULL),
(648, 'Huyện Phong Điền', 62, NULL, NULL),
(649, 'Huyện Thới Lai', 62, NULL, NULL),
(650, 'Thành phố Long Xuyên', 62, NULL, NULL),
(651, 'Quận Ninh Kiều', 63, NULL, NULL),
(652, 'Quận Ô Môn', 63, NULL, NULL),
(653, 'Quận Bình Thủy', 63, NULL, NULL),
(654, 'Quận Cái Răng', 63, NULL, NULL),
(655, 'Quận Thốt Nốt', 63, NULL, NULL),
(656, 'Huyện Vĩnh Thanh', 63, NULL, NULL),
(657, 'Huyện Cờ Đỏ', 63, NULL, NULL),
(658, 'Huyện Phong Điền', 63, NULL, NULL),
(659, 'Huyện Thới Lai', 63, NULL, NULL),
(660, 'Thành phố Long Xuyên', 63, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `histories`
--

CREATE TABLE `histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `histories`
--

INSERT INTO `histories` (`id`, `user_id`, `order_id`, `created_at`, `updated_at`) VALUES
(3, 15, 126, '2018-06-01 07:38:55', '2018-06-01 07:38:55'),
(4, 15, 127, '2018-06-01 16:26:19', '2018-06-01 16:26:19'),
(5, 15, 128, '2018-06-01 16:51:52', '2018-06-01 16:51:52'),
(6, 15, 129, '2018-06-01 16:52:20', '2018-06-01 16:52:20'),
(7, 15, 130, '2018-06-01 16:55:16', '2018-06-01 16:55:16'),
(8, 15, 131, '2018-06-01 17:16:40', '2018-06-01 17:16:40'),
(9, 15, 132, '2018-06-01 17:27:14', '2018-06-01 17:27:14'),
(10, 15, 133, '2018-06-01 17:29:13', '2018-06-01 17:29:13'),
(11, 15, 134, '2018-06-01 17:30:04', '2018-06-01 17:30:04'),
(12, 15, 135, '2018-06-01 17:31:01', '2018-06-01 17:31:01'),
(13, 15, 136, '2018-06-01 17:51:54', '2018-06-01 17:51:54'),
(14, 15, 137, '2018-06-01 17:56:22', '2018-06-01 17:56:22'),
(15, 15, 138, '2018-06-02 05:03:50', '2018-06-02 05:03:50'),
(16, 15, 139, '2018-06-02 05:13:15', '2018-06-02 05:13:15'),
(17, 15, 140, '2018-06-02 05:24:49', '2018-06-02 05:24:49'),
(18, 15, 141, '2018-06-02 05:28:39', '2018-06-02 05:28:39'),
(19, 15, 142, '2018-06-02 05:30:04', '2018-06-02 05:30:04'),
(20, 15, 143, '2018-06-02 05:32:01', '2018-06-02 05:32:01'),
(21, 15, 144, '2018-06-02 05:32:34', '2018-06-02 05:32:34'),
(22, 15, 145, '2018-06-02 05:33:37', '2018-06-02 05:33:37'),
(23, 15, 146, '2018-06-02 05:34:51', '2018-06-02 05:34:51'),
(24, 15, 147, '2018-06-02 05:39:56', '2018-06-02 05:39:56'),
(25, 15, 148, '2018-06-02 05:40:29', '2018-06-02 05:40:29'),
(26, 15, 149, '2018-06-02 05:47:34', '2018-06-02 05:47:34'),
(27, 15, 150, '2018-06-02 05:48:15', '2018-06-02 05:48:15'),
(28, 15, 151, '2018-06-02 05:50:10', '2018-06-02 05:50:10'),
(29, 15, 152, '2018-06-02 05:50:38', '2018-06-02 05:50:38'),
(30, 15, 153, '2018-06-02 05:51:25', '2018-06-02 05:51:25'),
(31, 15, 154, '2018-06-02 05:53:12', '2018-06-02 05:53:12'),
(32, 15, 155, '2018-06-02 05:53:42', '2018-06-02 05:53:42'),
(33, 15, 156, '2018-06-02 06:00:00', '2018-06-02 06:00:00'),
(34, 15, 157, '2018-06-02 06:10:21', '2018-06-02 06:10:21'),
(35, 15, 158, '2018-06-02 06:10:55', '2018-06-02 06:10:55'),
(36, 15, 164, '2018-06-02 06:12:33', '2018-06-02 06:12:33'),
(37, 15, 165, '2018-06-02 06:12:36', '2018-06-02 06:12:36'),
(38, 15, 166, '2018-06-02 06:14:03', '2018-06-02 06:14:03'),
(39, 15, 167, '2018-06-02 06:16:43', '2018-06-02 06:16:43'),
(40, 15, 168, '2018-06-02 06:16:56', '2018-06-02 06:16:56'),
(41, 15, 169, '2018-06-02 06:17:38', '2018-06-02 06:17:38'),
(42, 15, 170, '2018-06-02 06:17:52', '2018-06-02 06:17:52'),
(43, 15, 171, '2018-06-02 06:19:34', '2018-06-02 06:19:34'),
(44, 15, 172, '2018-06-02 06:25:22', '2018-06-02 06:25:22'),
(45, 15, 173, '2018-06-02 06:40:52', '2018-06-02 06:40:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `product_id`, `created_at`, `updated_at`, `path`) VALUES
(95, 45, '2018-05-29 16:58:26', '2018-05-29 16:58:26', '1_2_21_2_06_010_118_01_10600036_01_thumb_294x440.jpg'),
(96, 45, '2018-05-29 16:58:26', '2018-05-29 16:58:26', '1_2_21_2_06_010_118_01_10600036_02_thumb_294x440.jpg'),
(97, 45, '2018-05-29 16:58:26', '2018-05-29 16:58:26', '1_2_21_2_06_010_118_01_10600036_03_thumb_294x440.jpg'),
(98, 45, '2018-05-29 16:58:26', '2018-05-29 16:58:26', '1_2_21_2_06_010_118_01_10600036_04_thumb_294x441.jpg'),
(99, 45, '2018-05-29 16:58:26', '2018-05-29 16:58:26', '1_2_21_2_06_010_118_01_10600036_06_thumb_294x441.jpg'),
(100, 45, '2018-05-29 16:58:26', '2018-05-29 16:58:26', '1_2_21_2_06_010_118_01_1060003605_thumb_294x440.jpg'),
(101, 46, '2018-05-29 17:09:19', '2018-05-29 17:09:19', '1_2_21_2_05_001_118_02_10600033_01_thumb_294x440.jpg'),
(102, 46, '2018-05-29 17:09:19', '2018-05-29 17:09:19', '1_2_21_2_05_001_118_02_10600033_02_thumb_294x441.jpg'),
(103, 46, '2018-05-29 17:09:19', '2018-05-29 17:09:19', '1_2_21_2_05_001_118_02_10600033_03_thumb_294x440.jpg'),
(104, 46, '2018-05-29 17:09:19', '2018-05-29 17:09:19', '1_2_21_2_05_001_118_02_10600033_04_thumb_294x440.jpg'),
(105, 46, '2018-05-29 17:09:19', '2018-05-29 17:09:19', '1_2_21_2_05_001_118_02_10600033_06_thumb_294x440.jpg'),
(106, 46, '2018-05-29 17:09:19', '2018-05-29 17:09:19', '1_2_21_2_05_001_118_02_1060003305_thumb_294x440.jpg'),
(107, 47, '2018-05-29 17:25:46', '2018-05-29 17:25:46', '1_2_22_2_06_005_118_01_10700002_01_thumb_294x441.jpg'),
(108, 47, '2018-05-29 17:25:46', '2018-05-29 17:25:46', '1_2_22_2_06_005_118_01_10700002_02_thumb_294x441.jpg'),
(109, 47, '2018-05-29 17:25:46', '2018-05-29 17:25:46', '1_2_22_2_06_005_118_01_10700002_03_thumb_294x441.jpg'),
(110, 47, '2018-05-29 17:25:46', '2018-05-29 17:25:46', '1_2_22_2_06_005_118_01_10700002_04_thumb_294x441.jpg'),
(111, 47, '2018-05-29 17:25:46', '2018-05-29 17:25:46', '1_2_22_2_06_005_118_01_10700002_06_thumb_294x441.jpg'),
(112, 47, '2018-05-29 17:25:46', '2018-05-29 17:25:46', '1_2_22_2_06_005_118_01_1070000205_thumb_294x441.jpg'),
(113, 55, '2018-05-29 17:43:22', '2018-05-29 17:43:22', '1_2_24_2_06_016_118_01_10600003_01_thumb_294x441.jpg'),
(114, 55, '2018-05-29 17:43:22', '2018-05-29 17:43:22', '1_2_24_2_06_016_118_01_10600003_02_thumb_294x440.jpg'),
(115, 55, '2018-05-29 17:43:22', '2018-05-29 17:43:22', '1_2_24_2_06_016_118_01_10600003_03_thumb_294x440.jpg'),
(116, 55, '2018-05-29 17:43:22', '2018-05-29 17:43:22', '1_2_24_2_06_016_118_01_10600003_04_thumb_294x440 (1).jpg'),
(117, 55, '2018-05-29 17:43:22', '2018-05-29 17:43:22', '1_2_24_2_06_016_118_01_10600003_04_thumb_294x440.jpg'),
(118, 55, '2018-05-29 17:43:23', '2018-05-29 17:43:23', '1_2_24_2_06_016_118_01_10600003_06_thumb_294x440.jpg'),
(119, 55, '2018-05-29 17:43:23', '2018-05-29 17:43:23', '1_2_24_2_06_016_118_01_20300004_01_thumb_294x440.jpg'),
(120, 55, '2018-05-29 17:43:23', '2018-05-29 17:43:23', '1_2_24_2_06_016_118_01_20300004_02_thumb_294x440.jpg'),
(121, 55, '2018-05-29 17:43:23', '2018-05-29 17:43:23', '1_2_24_2_06_016_118_01_20300004_03_thumb_294x440.jpg'),
(122, 55, '2018-05-29 17:43:23', '2018-05-29 17:43:23', '1_2_24_2_06_016_118_01_20300004_04_thumb_294x440.jpg'),
(123, 55, '2018-05-29 17:43:23', '2018-05-29 17:43:23', '1_2_24_2_06_016_118_01_20300004_06_thumb_294x440.jpg'),
(124, 55, '2018-05-29 17:43:23', '2018-05-29 17:43:23', '1_2_24_2_06_016_118_01_2030000405_thumb_294x440.jpg'),
(125, 56, '2018-05-29 17:49:14', '2018-05-29 17:49:14', '1_2_09_2_13_004_118_03_30700013_01_thumb_294x441.jpg'),
(126, 56, '2018-05-29 17:49:14', '2018-05-29 17:49:14', '1_2_09_2_13_004_118_03_30700013_02_thumb_294x440.jpg'),
(127, 56, '2018-05-29 17:49:14', '2018-05-29 17:49:14', '1_2_09_2_13_004_118_03_30700013_03_thumb_294x440.jpg'),
(128, 56, '2018-05-29 17:49:14', '2018-05-29 17:49:14', '1_2_09_2_13_004_118_03_30700013_04_thumb_294x440.jpg'),
(129, 56, '2018-05-29 17:49:15', '2018-05-29 17:49:15', '1_2_09_2_13_004_118_03_30700013_06_thumb_294x441.jpg'),
(130, 56, '2018-05-29 17:49:15', '2018-05-29 17:49:15', '1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg'),
(131, 56, '2018-05-29 17:49:15', '2018-05-29 17:49:15', '1_2_09_2_13_004_118_03_30800011_02_thumb_294x441.jpg'),
(132, 56, '2018-05-29 17:49:15', '2018-05-29 17:49:15', '1_2_09_2_13_004_118_03_30800011_03_thumb_294x440.jpg'),
(133, 56, '2018-05-29 17:49:15', '2018-05-29 17:49:15', '1_2_09_2_13_004_118_03_30800011_04_thumb_294x440.jpg'),
(134, 56, '2018-05-29 17:49:15', '2018-05-29 17:49:15', '1_2_09_2_13_004_118_03_30800011_06_thumb_294x441.jpg'),
(135, 56, '2018-05-29 17:49:15', '2018-05-29 17:49:15', '1_2_09_2_13_004_118_03_3070001305_thumb_294x440.jpg'),
(136, 56, '2018-05-29 17:49:15', '2018-05-29 17:49:15', '1_2_09_2_13_004_118_03_3080001105_thumb_294x440.jpg'),
(137, 57, '2018-05-29 17:58:05', '2018-05-29 17:58:05', '1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg'),
(138, 57, '2018-05-29 17:58:05', '2018-05-29 17:58:05', '1_2_09_2_06_001_118_02_10400003_02_thumb_294x441.jpg'),
(139, 57, '2018-05-29 17:58:05', '2018-05-29 17:58:05', '1_2_09_2_06_001_118_02_10400003_03_thumb_294x440.jpg'),
(140, 57, '2018-05-29 17:58:05', '2018-05-29 17:58:05', '1_2_09_2_06_001_118_02_10400003_04_thumb_294x440.jpg'),
(142, 57, '2018-05-30 05:36:47', '2018-05-30 05:36:47', '1_2_09_2_06_001_118_02_1040000305_thumb_294x440.jpg'),
(143, 58, '2018-05-30 08:52:21', '2018-05-30 08:52:21', '1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg'),
(144, 58, '2018-05-30 08:52:21', '2018-05-30 08:52:21', '1_2_22_2_06_005_217_01_10200002_03_thumb_294x441.jpg'),
(145, 58, '2018-05-30 08:52:21', '2018-05-30 08:52:21', '1_2_22_2_06_005_217_01_10200002_04_thumb_294x441.jpg'),
(146, 58, '2018-05-30 08:52:21', '2018-05-30 08:52:21', '1_2_22_2_06_005_217_01_10300002_01_thumb_294x441.jpg'),
(147, 58, '2018-05-30 08:52:21', '2018-05-30 08:52:21', '1_2_22_2_06_005_217_01_10300002_02_thumb_294x441.jpg'),
(148, 58, '2018-05-30 08:52:21', '2018-05-30 08:52:21', '1_2_22_2_06_005_217_01_10300002_03_thumb_294x441.jpg'),
(149, 58, '2018-05-30 08:52:21', '2018-05-30 08:52:21', '1_2_22_2_06_005_217_01_10300002_04_thumb_294x441.jpg'),
(150, 58, '2018-05-30 08:52:21', '2018-05-30 08:52:21', '1_2_22_2_06_005_217_01_10700002_03_thumb_294x441.jpg'),
(151, 58, '2018-05-30 08:52:21', '2018-05-30 08:52:21', '1_2_22_2_06_005_217_01_10700002_04_thumb_294x441.jpg'),
(152, 58, '2018-05-30 08:52:21', '2018-05-30 08:52:21', '1_2_22_2_06_005_217_01_1030000205_thumb_294x441.jpg'),
(153, 59, '2018-05-30 08:55:12', '2018-05-30 08:55:12', '1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg'),
(154, 59, '2018-05-30 08:55:13', '2018-05-30 08:55:13', '1_2_11_2_04_004_118_23_10200002_02_thumb_294x440.jpg'),
(155, 59, '2018-05-30 08:55:13', '2018-05-30 08:55:13', '1_2_11_2_04_004_118_23_10200002_03_thumb_294x441.jpg'),
(156, 59, '2018-05-30 08:55:13', '2018-05-30 08:55:13', '1_2_11_2_04_004_118_23_10200002_04_thumb_294x440.jpg'),
(157, 59, '2018-05-30 08:55:13', '2018-05-30 08:55:13', '1_2_11_2_04_004_118_23_10200002_06_thumb_294x440.jpg'),
(158, 59, '2018-05-30 08:55:13', '2018-05-30 08:55:13', '1_2_11_2_04_004_118_23_1020000205_401x600_thumb.jpg'),
(159, 61, '2018-06-05 11:25:34', '2018-06-05 11:25:34', '1_2_09_2_06_011_118_01_20300004_01_thumb_294x440.jpg'),
(160, 61, '2018-06-05 11:25:34', '2018-06-05 11:25:34', '1_2_09_2_06_011_118_01_20300004_02_401x600_thumb.jpg'),
(161, 61, '2018-06-05 11:25:34', '2018-06-05 11:25:34', '1_2_09_2_06_011_118_01_20300004_03_400x600.jpg'),
(162, 61, '2018-06-05 11:25:34', '2018-06-05 11:25:34', '1_2_09_2_06_011_118_01_20300004_04_thumb_294x440.jpg'),
(163, 61, '2018-06-05 11:25:34', '2018-06-05 11:25:34', '1_2_09_2_06_011_118_01_20300004_06_400x600.jpg'),
(164, 61, '2018-06-05 11:25:35', '2018-06-05 11:25:35', '1_2_09_2_06_011_118_01_30700013_01_thumb_294x440.jpg'),
(165, 61, '2018-06-05 11:25:35', '2018-06-05 11:25:35', '1_2_09_2_06_011_118_01_30700013_02_thumb_294x440.jpg'),
(166, 61, '2018-06-05 11:25:35', '2018-06-05 11:25:35', '1_2_09_2_06_011_118_01_30700013_03_thumb_294x440.jpg'),
(167, 61, '2018-06-05 11:25:35', '2018-06-05 11:25:35', '1_2_09_2_06_011_118_01_30700013_04_thumb_294x440.jpg'),
(168, 61, '2018-06-05 11:25:35', '2018-06-05 11:25:35', '1_2_09_2_06_011_118_01_30700013_06_thumb_294x441.jpg'),
(169, 61, '2018-06-05 11:25:35', '2018-06-05 11:25:35', '1_2_09_2_06_011_118_01_2030000405_401x600.jpg'),
(170, 61, '2018-06-05 11:25:35', '2018-06-05 11:25:35', '1_2_09_2_06_011_118_01_3070001305_thumb_294x440.jpg'),
(171, 62, '2018-06-05 12:04:58', '2018-06-05 12:04:58', '1_2_09_2_05_007_118_02_10200011_01_thumb_294x440.jpg'),
(172, 62, '2018-06-05 12:04:58', '2018-06-05 12:04:58', '1_2_09_2_05_007_118_02_10200011_02_thumb_294x440.jpg'),
(173, 62, '2018-06-05 12:04:58', '2018-06-05 12:04:58', '1_2_09_2_05_007_118_02_10200011_03_thumb_294x441.jpg'),
(174, 62, '2018-06-05 12:04:58', '2018-06-05 12:04:58', '1_2_09_2_05_007_118_02_10200011_04_thumb_294x441.jpg'),
(175, 62, '2018-06-05 12:04:58', '2018-06-05 12:04:58', '1_2_09_2_05_007_118_02_10200011_06_thumb_294x440.jpg'),
(176, 62, '2018-06-05 12:04:58', '2018-06-05 12:04:58', '1_2_09_2_05_007_118_02_10800011_01_thumb_294x440.jpg'),
(177, 62, '2018-06-05 12:04:58', '2018-06-05 12:04:58', '1_2_09_2_05_007_118_02_10800011_02_thumb_294x441.jpg'),
(178, 62, '2018-06-05 12:04:58', '2018-06-05 12:04:58', '1_2_09_2_05_007_118_02_10800011_03_thumb_294x440.jpg'),
(179, 62, '2018-06-05 12:04:58', '2018-06-05 12:04:58', '1_2_09_2_05_007_118_02_10800011_04_thumb_294x440.jpg'),
(180, 62, '2018-06-05 12:04:58', '2018-06-05 12:04:58', '1_2_09_2_05_007_118_02_10800011_06_thumb_294x441.jpg'),
(181, 62, '2018-06-05 12:04:58', '2018-06-05 12:04:58', '1_2_09_2_05_007_118_02_1020001105_thumb_294x440.jpg'),
(182, 62, '2018-06-05 12:04:58', '2018-06-05 12:04:58', '1_2_09_2_05_007_118_02_1080001105_thumb_294x440.jpg'),
(183, 65, '2018-06-05 12:36:47', '2018-06-05 12:36:47', '1_2_17_2_05_002_118_23_10100002_01_thumb_294x441.jpg'),
(184, 65, '2018-06-05 12:36:47', '2018-06-05 12:36:47', '1_2_17_2_05_002_118_23_10100002_02_thumb_294x441.jpg'),
(185, 65, '2018-06-05 12:36:47', '2018-06-05 12:36:47', '1_2_17_2_05_002_118_23_10100002_03_thumb_294x441.jpg'),
(186, 65, '2018-06-05 12:36:47', '2018-06-05 12:36:47', '1_2_17_2_05_002_118_23_10100002_06_thumb_294x441.jpg'),
(187, 65, '2018-06-05 12:36:47', '2018-06-05 12:36:47', '1_2_17_2_05_002_118_23_1010000205_thumb_294x441.jpg'),
(188, 66, '2018-06-05 12:45:26', '2018-06-05 12:45:26', '1_2_17_2_06_003_118_01_10600004_01_thumb_294x441.jpg'),
(189, 66, '2018-06-05 12:45:26', '2018-06-05 12:45:26', '1_2_17_2_06_003_118_01_10600004_02_thumb_294x441.jpg'),
(190, 66, '2018-06-05 12:45:26', '2018-06-05 12:45:26', '1_2_17_2_06_003_118_01_10600004_03_thumb_294x441.jpg'),
(191, 66, '2018-06-05 12:45:26', '2018-06-05 12:45:26', '1_2_17_2_06_003_118_01_10600004_04_thumb_294x441.jpg'),
(192, 66, '2018-06-05 12:45:26', '2018-06-05 12:45:26', '1_2_17_2_06_003_118_01_10600004_06_thumb_294x441.jpg'),
(193, 66, '2018-06-05 12:45:26', '2018-06-05 12:45:26', '1_2_17_2_06_003_118_01_11200002_01_thumb_294x441.jpg'),
(194, 66, '2018-06-05 12:45:26', '2018-06-05 12:45:26', '1_2_17_2_06_003_118_01_11200002_02_thumb_294x441.jpg'),
(195, 66, '2018-06-05 12:45:26', '2018-06-05 12:45:26', '1_2_17_2_06_003_118_01_11200002_03_thumb_294x441.jpg'),
(196, 66, '2018-06-05 12:45:26', '2018-06-05 12:45:26', '1_2_17_2_06_003_118_01_11200002_04_thumb_294x441.jpg'),
(197, 66, '2018-06-05 12:45:26', '2018-06-05 12:45:26', '1_2_17_2_06_003_118_01_11200002_06_thumb_294x441.jpg'),
(198, 66, '2018-06-05 12:45:26', '2018-06-05 12:45:26', '1_2_17_2_06_003_118_01_1060000405_thumb_294x441.jpg'),
(199, 66, '2018-06-05 12:45:26', '2018-06-05 12:45:26', '1_2_17_2_06_003_118_01_1120000205_thumb_294x441.jpg'),
(202, 64, '2018-06-05 13:01:26', '2018-06-05 13:01:26', '1_2_17_2_05_002_118_23_10400002_01_thumb_294x441.jpg'),
(203, 64, '2018-06-05 13:01:27', '2018-06-05 13:01:27', '1_2_17_2_05_002_118_23_10400002_02_thumb_294x441.jpg'),
(204, 64, '2018-06-05 13:01:27', '2018-06-05 13:01:27', '1_2_17_2_05_002_118_23_10400002_03_thumb_294x441.jpg'),
(205, 64, '2018-06-05 13:01:27', '2018-06-05 13:01:27', '1_2_17_2_05_002_118_23_10400002_04_thumb_294x441.jpg'),
(206, 64, '2018-06-05 13:01:27', '2018-06-05 13:01:27', '1_2_17_2_05_002_118_23_10400002_06_thumb_294x441.jpg'),
(207, 64, '2018-06-05 13:01:27', '2018-06-05 13:01:27', '1_2_17_2_05_002_118_23_10600027_01_thumb_294x441.jpg'),
(208, 64, '2018-06-05 13:01:27', '2018-06-05 13:01:27', '1_2_17_2_05_002_118_23_10600027_02_thumb_294x441.jpg'),
(209, 64, '2018-06-05 13:01:27', '2018-06-05 13:01:27', '1_2_17_2_05_002_118_23_10600027_03_thumb_294x441.jpg'),
(210, 64, '2018-06-05 13:01:27', '2018-06-05 13:01:27', '1_2_17_2_05_002_118_23_10600027_04_thumb_294x441.jpg'),
(211, 64, '2018-06-05 13:01:27', '2018-06-05 13:01:27', '1_2_17_2_05_002_118_23_10600027_06_thumb_294x441.jpg'),
(212, 64, '2018-06-05 13:01:27', '2018-06-05 13:01:27', '1_2_17_2_05_002_118_23_1040000205_thumb_294x441.jpg'),
(213, 64, '2018-06-05 13:01:27', '2018-06-05 13:01:27', '1_2_17_2_05_002_118_23_1060002705_thumb_294x441.jpg'),
(214, 68, '2018-06-05 13:02:39', '2018-06-05 13:02:39', '1_2_04_2_06_010_118_01_10200039_01_thumb_294x441 - Copy.jpg'),
(215, 68, '2018-06-05 13:02:39', '2018-06-05 13:02:39', '1_2_04_2_06_010_118_01_10200039_02_thumb_294x441 - Copy.jpg'),
(216, 68, '2018-06-05 13:02:39', '2018-06-05 13:02:39', '1_2_04_2_06_010_118_01_10200039_03_600x899 - Copy.jpg'),
(217, 68, '2018-06-05 13:02:39', '2018-06-05 13:02:39', '1_2_04_2_06_010_118_01_10200039_04_thumb_294x441.jpg'),
(218, 68, '2018-06-05 13:02:39', '2018-06-05 13:02:39', '1_2_04_2_06_010_118_01_10200039_06_thumb_294x441.jpg'),
(219, 68, '2018-06-05 13:02:39', '2018-06-05 13:02:39', '1_2_04_2_06_010_118_01_10800028_01_thumb_294x441.jpg'),
(220, 68, '2018-06-05 13:02:39', '2018-06-05 13:02:39', '1_2_04_2_06_010_118_01_10800028_02_thumb_294x441.jpg'),
(221, 68, '2018-06-05 13:02:39', '2018-06-05 13:02:39', '1_2_04_2_06_010_118_01_10800028_03_thumb_294x441.jpg'),
(222, 68, '2018-06-05 13:02:39', '2018-06-05 13:02:39', '1_2_04_2_06_010_118_01_10800028_04_thumb_294x441 (1).jpg'),
(223, 68, '2018-06-05 13:02:39', '2018-06-05 13:02:39', '1_2_04_2_06_010_118_01_10800028_04_thumb_294x441.jpg'),
(224, 68, '2018-06-05 13:02:39', '2018-06-05 13:02:39', '1_2_04_2_06_010_118_01_1020003905_thumb_294x441.jpg'),
(225, 68, '2018-06-05 13:02:39', '2018-06-05 13:02:39', '1_2_04_2_06_010_118_01_1080002805_thumb_294x441.jpg'),
(226, 63, '2018-06-05 13:04:19', '2018-06-05 13:04:19', '1_2_17_2_05_004_118_23_10100011_01_thumb_294x440.jpg'),
(227, 63, '2018-06-05 13:04:19', '2018-06-05 13:04:19', '1_2_17_2_05_004_118_23_10100011_02_thumb_294x440.jpg'),
(228, 63, '2018-06-05 13:04:19', '2018-06-05 13:04:19', '1_2_17_2_05_004_118_23_10100011_03_thumb_294x440.jpg'),
(229, 63, '2018-06-05 13:04:19', '2018-06-05 13:04:19', '1_2_17_2_05_004_118_23_10100011_04_thumb_294x440.jpg'),
(230, 63, '2018-06-05 13:04:19', '2018-06-05 13:04:19', '1_2_17_2_05_004_118_23_10100011_06_thumb_294x440.jpg'),
(231, 63, '2018-06-05 13:04:19', '2018-06-05 13:04:19', '1_2_17_2_05_004_118_23_10600054_01_401x600.jpg'),
(232, 63, '2018-06-05 13:04:19', '2018-06-05 13:04:19', '1_2_17_2_05_004_118_23_10600054_02_thumb_294x440.jpg'),
(233, 63, '2018-06-05 13:04:19', '2018-06-05 13:04:19', '1_2_17_2_05_004_118_23_10600054_03_thumb_294x440.jpg'),
(234, 63, '2018-06-05 13:04:19', '2018-06-05 13:04:19', '1_2_17_2_05_004_118_23_10600054_04_thumb_294x440.jpg'),
(235, 63, '2018-06-05 13:04:19', '2018-06-05 13:04:19', '1_2_17_2_05_004_118_23_10600054_06_thumb_294x440.jpg'),
(236, 63, '2018-06-05 13:04:19', '2018-06-05 13:04:19', '1_2_17_2_05_004_118_23_1010001105_thumb_294x440.jpg'),
(237, 63, '2018-06-05 13:04:19', '2018-06-05 13:04:19', '1_2_17_2_05_004_118_23_1060005405_thumb_294x440.jpg'),
(354, 88, '2018-06-07 06:42:40', '2018-06-07 06:42:40', '1_2_17_2_06_006_217_01_40300032_01_thumb_294x441.jpg'),
(355, 88, '2018-06-07 06:42:40', '2018-06-07 06:42:40', '1_2_17_2_06_006_217_01_40300032_02_thumb_294x441.jpg'),
(356, 88, '2018-06-07 06:42:40', '2018-06-07 06:42:40', '1_2_17_2_06_006_217_01_40300032_03_thumb_294x441.jpg'),
(357, 88, '2018-06-07 06:42:41', '2018-06-07 06:42:41', '1_2_17_2_06_006_217_01_40300032_04_thumb_294x441.jpg'),
(358, 88, '2018-06-07 06:42:41', '2018-06-07 06:42:41', '1_2_17_2_06_006_217_01_40300032_06_thumb_294x441.jpg'),
(359, 88, '2018-06-07 06:42:41', '2018-06-07 06:42:41', '1_2_17_2_06_006_217_01_40300044_01_thumb_294x441.jpg'),
(360, 88, '2018-06-07 06:42:41', '2018-06-07 06:42:41', '1_2_17_2_06_006_217_01_40300044_02_thumb_294x441.jpg'),
(361, 88, '2018-06-07 06:42:41', '2018-06-07 06:42:41', '1_2_17_2_06_006_217_01_40300044_03_thumb_294x441.jpg'),
(362, 88, '2018-06-07 06:42:41', '2018-06-07 06:42:41', '1_2_17_2_06_006_217_01_40300044_04_thumb_294x441.jpg'),
(363, 88, '2018-06-07 06:42:41', '2018-06-07 06:42:41', '1_2_17_2_06_006_217_01_40300044_06_thumb_294x441.jpg'),
(364, 88, '2018-06-07 06:42:41', '2018-06-07 06:42:41', '1_2_17_2_06_006_217_01_4030003205_thumb_294x441.jpg'),
(365, 88, '2018-06-07 06:42:41', '2018-06-07 06:42:41', '1_2_17_2_06_006_217_01_4030004405_thumb_294x441.jpg'),
(366, 89, '2018-06-07 06:47:55', '2018-06-07 06:47:55', '1_2_17_2_06_005_118_23_10600034_01_thumb_294x441.jpg'),
(367, 89, '2018-06-07 06:47:55', '2018-06-07 06:47:55', '1_2_17_2_06_005_118_23_10600034_02_thumb_294x441.jpg'),
(368, 89, '2018-06-07 06:47:55', '2018-06-07 06:47:55', '1_2_17_2_06_005_118_23_10600034_03_thumb_294x441.jpg'),
(369, 89, '2018-06-07 06:47:55', '2018-06-07 06:47:55', '1_2_17_2_06_005_118_23_10600034_04_thumb_294x441.jpg'),
(370, 89, '2018-06-07 06:47:55', '2018-06-07 06:47:55', '1_2_17_2_06_005_118_23_10600034_06_thumb_294x441.jpg'),
(371, 89, '2018-06-07 06:47:55', '2018-06-07 06:47:55', '1_2_17_2_06_005_118_23_1060003405_thumb_294x441.jpg'),
(372, 89, '2018-06-07 06:47:55', '2018-06-07 06:47:55', '1_2_17_2_06_009_118_23_10200047_01_thumb_294x440.jpg'),
(373, 89, '2018-06-07 06:47:55', '2018-06-07 06:47:55', '1_2_17_2_06_009_118_23_10200047_02_thumb_294x440.jpg'),
(374, 89, '2018-06-07 06:47:55', '2018-06-07 06:47:55', '1_2_17_2_06_009_118_23_10200047_03_thumb_294x440.jpg'),
(375, 89, '2018-06-07 06:47:55', '2018-06-07 06:47:55', '1_2_17_2_06_009_118_23_10200047_04_thumb_294x440 (1).jpg'),
(376, 89, '2018-06-07 06:47:55', '2018-06-07 06:47:55', '1_2_17_2_06_009_118_23_10200047_04_thumb_294x440.jpg'),
(377, 89, '2018-06-07 06:47:55', '2018-06-07 06:47:55', '1_2_17_2_06_009_118_23_1020004705_thumb_294x440.jpg'),
(378, 90, '2018-06-07 17:15:49', '2018-06-07 17:15:49', '1_2_09_2_06_007_118_01_20300050_01_thumb_294x440.jpg'),
(379, 90, '2018-06-07 17:15:49', '2018-06-07 17:15:49', '1_2_09_2_06_007_118_01_20300050_02_thumb_294x440.jpg'),
(380, 90, '2018-06-07 17:15:49', '2018-06-07 17:15:49', '1_2_09_2_06_007_118_01_20300050_03_thumb_294x441.jpg'),
(381, 90, '2018-06-07 17:15:49', '2018-06-07 17:15:49', '1_2_09_2_06_007_118_01_20300050_04_thumb_294x440 (1).jpg'),
(382, 90, '2018-06-07 17:15:49', '2018-06-07 17:15:49', '1_2_09_2_06_007_118_01_20300050_04_thumb_294x440.jpg'),
(383, 90, '2018-06-07 17:15:49', '2018-06-07 17:15:49', '1_2_09_2_06_007_118_01_20600053_01_thumb_294x441.jpg'),
(384, 90, '2018-06-07 17:15:49', '2018-06-07 17:15:49', '1_2_09_2_06_007_118_01_20600053_02_thumb_294x441.jpg'),
(385, 90, '2018-06-07 17:15:49', '2018-06-07 17:15:49', '1_2_09_2_06_007_118_01_20600053_03_thumb_294x441.jpg'),
(386, 90, '2018-06-07 17:15:49', '2018-06-07 17:15:49', '1_2_09_2_06_007_118_01_20600053_04_thumb_294x440.jpg'),
(387, 90, '2018-06-07 17:15:49', '2018-06-07 17:15:49', '1_2_09_2_06_007_118_01_20600053_06_thumb_294x440.jpg'),
(388, 90, '2018-06-07 17:15:49', '2018-06-07 17:15:49', '1_2_09_2_06_007_118_01_2030005005_thumb_294x441.jpg'),
(389, 90, '2018-06-07 17:15:49', '2018-06-07 17:15:49', '1_2_09_2_06_007_118_01_2060005305_thumb_294x440.jpg'),
(390, 91, '2018-06-07 17:22:11', '2018-06-07 17:22:11', '1_2_09_2_13_001_118_03_10200011_01_thumb_294x440.jpg'),
(391, 91, '2018-06-07 17:22:11', '2018-06-07 17:22:11', '1_2_09_2_13_001_118_03_10200011_02_thumb_294x440.jpg'),
(392, 91, '2018-06-07 17:22:11', '2018-06-07 17:22:11', '1_2_09_2_13_001_118_03_10200011_03_thumb_294x440.jpg'),
(393, 91, '2018-06-07 17:22:11', '2018-06-07 17:22:11', '1_2_09_2_13_001_118_03_10200011_04_thumb_294x440.jpg'),
(394, 91, '2018-06-07 17:22:11', '2018-06-07 17:22:11', '1_2_09_2_13_001_118_03_10200011_06_thumb_294x440.jpg'),
(395, 91, '2018-06-07 17:22:11', '2018-06-07 17:22:11', '1_2_09_2_13_001_118_03_30600017_01_thumb_294x440.jpg'),
(396, 91, '2018-06-07 17:22:11', '2018-06-07 17:22:11', '1_2_09_2_13_001_118_03_30600017_02_thumb_294x440.jpg'),
(397, 91, '2018-06-07 17:22:11', '2018-06-07 17:22:11', '1_2_09_2_13_001_118_03_30600017_03_thumb_294x441.jpg'),
(398, 91, '2018-06-07 17:22:11', '2018-06-07 17:22:11', '1_2_09_2_13_001_118_03_30600017_04_thumb_294x440 (1).jpg'),
(399, 91, '2018-06-07 17:22:11', '2018-06-07 17:22:11', '1_2_09_2_13_001_118_03_30600017_04_thumb_294x440.jpg'),
(400, 91, '2018-06-07 17:22:11', '2018-06-07 17:22:11', '1_2_09_2_13_001_118_03_1020001105_thumb_294x440.jpg'),
(401, 91, '2018-06-07 17:22:11', '2018-06-07 17:22:11', '1_2_09_2_13_001_118_03_3060001705_thumb_294x440.jpg'),
(402, 92, '2018-06-08 04:20:02', '2018-06-08 04:20:02', '1_2_02_2_02_068_118_01_10500003_01_thumb_294x440.jpg'),
(403, 92, '2018-06-08 04:20:02', '2018-06-08 04:20:02', '1_2_02_2_02_068_118_01_10500003_02_thumb_294x440.jpg'),
(404, 92, '2018-06-08 04:20:02', '2018-06-08 04:20:02', '1_2_02_2_02_068_118_01_10500003_03_thumb_294x440.jpg'),
(405, 92, '2018-06-08 04:20:02', '2018-06-08 04:20:02', '1_2_02_2_02_068_118_01_10500003_04_thumb_294x440 (1).jpg'),
(406, 92, '2018-06-08 04:20:02', '2018-06-08 04:20:02', '1_2_02_2_02_068_118_01_10500003_04_thumb_294x440.jpg'),
(407, 92, '2018-06-08 04:20:02', '2018-06-08 04:20:02', '1_2_02_2_02_068_118_01_1050000305_thumb_294x440.jpg'),
(408, 92, '2018-06-08 04:20:02', '2018-06-08 04:20:02', '1_2_02_2_02_069_118_01_10200002_01_thumb_294x441.jpg'),
(409, 92, '2018-06-08 04:20:02', '2018-06-08 04:20:02', '1_2_02_2_02_069_118_01_10200002_02_thumb_294x440.jpg'),
(410, 92, '2018-06-08 04:20:02', '2018-06-08 04:20:02', '1_2_02_2_02_069_118_01_10200002_03_thumb_294x440.jpg'),
(411, 92, '2018-06-08 04:20:02', '2018-06-08 04:20:02', '1_2_02_2_02_069_118_01_10200002_04_thumb_294x440 (1).jpg'),
(412, 92, '2018-06-08 04:20:02', '2018-06-08 04:20:02', '1_2_02_2_02_069_118_01_10200002_04_thumb_294x440.jpg'),
(413, 92, '2018-06-08 04:20:02', '2018-06-08 04:20:02', '1_2_02_2_02_069_118_01_1020000205_thumb_294x440.jpg'),
(414, 93, '2018-06-08 04:24:15', '2018-06-08 04:24:15', '1_2_02_2_02_057_118_01_20600004_01_600x899_thumb_294x441.jpg'),
(415, 93, '2018-06-08 04:24:15', '2018-06-08 04:24:15', '1_2_02_2_02_057_118_01_20600004_02_600x899_thumb_294x441.jpg'),
(416, 93, '2018-06-08 04:24:15', '2018-06-08 04:24:15', '1_2_02_2_02_057_118_01_20600004_03_600x899_thumb_294x441.jpg'),
(417, 93, '2018-06-08 04:24:15', '2018-06-08 04:24:15', '1_2_02_2_02_057_118_01_20600004_04_600x899_thumb_294x441.jpg'),
(418, 93, '2018-06-08 04:24:15', '2018-06-08 04:24:15', '1_2_02_2_02_057_118_01_2060000405_600x899_thumb_294x441.jpg'),
(419, 93, '2018-06-08 04:24:15', '2018-06-08 04:24:15', '1_2_02_2_02_074_118_01_10100002_01_thumb_294x441.jpg'),
(420, 93, '2018-06-08 04:24:15', '2018-06-08 04:24:15', '1_2_02_2_02_074_118_01_10100002_02_thumb_294x440.jpg'),
(421, 93, '2018-06-08 04:24:15', '2018-06-08 04:24:15', '1_2_02_2_02_074_118_01_10100002_03_thumb_294x440.jpg'),
(422, 93, '2018-06-08 04:24:15', '2018-06-08 04:24:15', '1_2_02_2_02_074_118_01_10100002_04_thumb_294x440.jpg'),
(423, 93, '2018-06-08 04:24:15', '2018-06-08 04:24:15', '1_2_02_2_02_074_118_01_1010000205_thumb_294x440.jpg'),
(424, 94, '2018-06-08 04:29:50', '2018-06-08 04:29:50', '1_2_02_2_02_055_118_01_10600003_01_thumb_294x441.jpg'),
(425, 94, '2018-06-08 04:29:50', '2018-06-08 04:29:50', '1_2_02_2_02_055_118_01_10600003_02_thumb_294x440.jpg'),
(426, 94, '2018-06-08 04:29:50', '2018-06-08 04:29:50', '1_2_02_2_02_055_118_01_10600003_03_thumb_294x440.jpg'),
(427, 94, '2018-06-08 04:29:50', '2018-06-08 04:29:50', '1_2_02_2_02_055_118_01_10600003_04_thumb_294x440.jpg'),
(428, 94, '2018-06-08 04:29:50', '2018-06-08 04:29:50', '1_2_02_2_02_055_118_01_10600003_06_thumb_294x440.jpg'),
(429, 94, '2018-06-08 04:29:50', '2018-06-08 04:29:50', '1_2_02_2_02_055_118_01_1060000305_thumb_294x440.jpg'),
(430, 94, '2018-06-08 04:29:50', '2018-06-08 04:29:50', '1_2_02_2_02_068_118_01_10500003_01_thumb_294x440.jpg'),
(431, 94, '2018-06-08 04:29:50', '2018-06-08 04:29:50', '1_2_02_2_02_068_118_01_10500003_02_thumb_294x440.jpg'),
(432, 94, '2018-06-08 04:29:50', '2018-06-08 04:29:50', '1_2_02_2_02_068_118_01_10500003_03_thumb_294x440.jpg'),
(433, 94, '2018-06-08 04:29:50', '2018-06-08 04:29:50', '1_2_02_2_02_068_118_01_10500003_04_thumb_294x440.jpg'),
(434, 94, '2018-06-08 04:29:50', '2018-06-08 04:29:50', '1_2_02_2_02_068_118_01_1050000305_thumb_294x440.jpg'),
(435, 95, '2018-06-08 04:47:00', '2018-06-08 04:47:00', '1_2_02_2_02_029_118_01_10400002_01_thumb_294x441.jpg'),
(436, 95, '2018-06-08 04:47:00', '2018-06-08 04:47:00', '1_2_02_2_02_029_118_01_10400002_02_thumb_294x441.jpg'),
(437, 95, '2018-06-08 04:47:00', '2018-06-08 04:47:00', '1_2_02_2_02_029_118_01_10400002_03_thumb_294x441.jpg'),
(438, 95, '2018-06-08 04:47:00', '2018-06-08 04:47:00', '1_2_02_2_02_029_118_01_10400002_04_thumb_294x441.jpg'),
(439, 95, '2018-06-08 04:47:00', '2018-06-08 04:47:00', '1_2_02_2_02_029_118_01_10400002_06_thumb_294x441.jpg'),
(440, 95, '2018-06-08 04:47:00', '2018-06-08 04:47:00', '1_2_02_2_02_029_118_01_10700001_03_thumb_294x441.jpg'),
(441, 95, '2018-06-08 04:47:00', '2018-06-08 04:47:00', '1_2_02_2_02_029_118_01_10700001_04_thumb_294x441.jpg'),
(442, 95, '2018-06-08 04:47:00', '2018-06-08 04:47:00', '1_2_02_2_02_029_118_01_10700001_06_thumb_294x441.jpg'),
(443, 95, '2018-06-08 04:47:00', '2018-06-08 04:47:00', '1_2_02_2_02_029_118_01_1040000205_thumb_294x441.jpg'),
(444, 95, '2018-06-08 04:47:00', '2018-06-08 04:47:00', '1_2_02_2_02_029_118_01_1070000105_thumb_294x441.jpg'),
(445, 96, '2018-06-08 04:50:34', '2018-06-08 04:50:34', '1_2_02_2_02_025_118_01_10100002_01_thumb_294x441.jpg'),
(446, 96, '2018-06-08 04:50:34', '2018-06-08 04:50:34', '1_2_02_2_02_025_118_01_10100002_02_thumb_294x441.jpg'),
(447, 96, '2018-06-08 04:50:34', '2018-06-08 04:50:34', '1_2_02_2_02_025_118_01_10100002_03_thumb_294x441.jpg'),
(448, 96, '2018-06-08 04:50:34', '2018-06-08 04:50:34', '1_2_02_2_02_025_118_01_10100002_04_thumb_294x441.jpg'),
(449, 96, '2018-06-08 04:50:34', '2018-06-08 04:50:34', '1_2_02_2_02_025_118_01_10100002_06_thumb_294x441.jpg'),
(450, 96, '2018-06-08 04:50:34', '2018-06-08 04:50:34', '1_2_02_2_02_025_118_01_1010000205_thumb_294x441.jpg'),
(451, 96, '2018-06-08 04:50:34', '2018-06-08 04:50:34', '1_2_02_2_02_035_118_01_10700001_01_thumb_294x441.jpg'),
(452, 96, '2018-06-08 04:50:34', '2018-06-08 04:50:34', '1_2_02_2_02_035_118_01_10700001_02_thumb_294x441.jpg'),
(453, 96, '2018-06-08 04:50:34', '2018-06-08 04:50:34', '1_2_02_2_02_035_118_01_10700001_03_thumb_294x441.jpg'),
(454, 96, '2018-06-08 04:50:34', '2018-06-08 04:50:34', '1_2_02_2_02_035_118_01_10700001_04_thumb_294x441.jpg'),
(455, 96, '2018-06-08 04:50:34', '2018-06-08 04:50:34', '1_2_02_2_02_035_118_01_10700001_06_thumb_294x441.jpg'),
(456, 96, '2018-06-08 04:50:34', '2018-06-08 04:50:34', '1_2_02_2_02_035_118_01_1070000105_thumb_294x441.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_11_152847_categories', 1),
(4, '2018_05_11_152933_prod_color', 1),
(5, '2018_05_11_152947_prod_size', 1),
(6, '2018_05_11_153354_user_active_code', 2),
(7, '2018_05_11_153414_products', 2),
(8, '2018_05_11_153841_prod_specifi', 3),
(9, '2018_05_12_151950_create_coupons_table', 4),
(10, '2018_05_13_085849_create_wishlists_table', 5),
(11, '2018_05_13_173046_create_admins_table', 6),
(12, '2018_05_14_062457_update_admin', 7),
(13, '2018_05_14_154032_drop_wishlists', 8),
(14, '2018_05_14_154202_recreate_wishlist', 9),
(15, '2018_05_15_071953_create_orders_table', 10),
(16, '2018_05_15_082027_drop_2_table', 11),
(17, '2018_05_15_082429_drop_order', 12),
(18, '2018_05_15_082525_orders', 13),
(19, '2018_05_15_082856_delete_od_prod', 14),
(20, '2018_05_15_083838_deel_order_product', 15),
(21, '2018_05_15_085737_del_order_detail', 16),
(22, '2018_05_15_085900_add_order_product', 17),
(23, '2018_05_17_160217_delete_histories', 18),
(24, '2018_05_17_160319_histories', 19),
(25, '2018_05_17_181003_city', 20),
(26, '2018_05_17_181144_district', 21),
(27, '2018_05_17_181307_xa', 22),
(28, '2018_05_17_215916_update_twwo_table', 23),
(29, '2018_05_17_232405_update_order_table', 24),
(30, '2018_05_23_174221_create_images', 25),
(31, '2018_05_27_205059_update_table_images', 26),
(32, '2018_06_01_133549_update_history_table', 27);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `bill_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `bill_discount_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `ship_price` int(11) NOT NULL DEFAULT '0',
  `total` int(11) NOT NULL,
  `bill_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `bill_email`, `bill_code`, `bill_name`, `bill_payment`, `bill_phone`, `bill_discount`, `bill_discount_code`, `status`, `subtotal`, `ship_price`, `total`, `bill_note`, `created_at`, `updated_at`, `address`) VALUES
(121, NULL, 'nguyendinhduy2864@gmail.com', '108953', 'fsfsd', 'COD', '43523522', '0', NULL, 1, 649000, 20000, 669000, NULL, '2018-05-30 07:28:06', '2018-05-30 17:32:00', 'dasfafas - Thành phố Long Xuyên - Hà Nội'),
(123, NULL, 'nguyendinhduy2864@gmail.com', '898486', 'fsfsd', 'COD', '43523522', '30000', 'ABC123', 0, 868000, 20000, 858000, NULL, '2018-05-31 17:16:25', '2018-06-01 06:14:46', 'dasfafas - Huyện Thanh Oai - Hà Nội'),
(126, 15, 'namntt223@gmail.com', '355844', 'Nam Nguyễn Văn', 'COD', '4256789', '0', NULL, 2, 798000, 20000, 818000, NULL, '2018-06-01 07:38:55', '2018-06-03 12:12:20', '345rytgfd - Quận Thốt Nốt - Đắk Lắk'),
(127, 15, 'namntt223@gmail.com', '854376', 'Nam Nguyễn Văn', 'COD', '1234567890', '0', NULL, 3, 549000, 20000, 569000, NULL, '2018-06-01 16:26:19', '2018-06-03 12:12:32', 'Xã Cao Dương - M37 Ngô Thì Nhậm - Huyện Thới Lai - Điện Biên'),
(128, 15, 'namntt223@gmail.com', '462274', 'Nam Nguyễn Văn', 'COD', '2345676543', '0', NULL, 1, 124143, 20000, 144143, NULL, '2018-06-01 16:51:52', '2018-06-03 12:13:03', 'ádfg - Thành phố Long Xuyên - Điện Biên'),
(129, 15, 'namntt223@gmail.com', '978741', 'Nam Nguyễn Văn', 'COD', '123875643', '0', NULL, 0, 124143, 20000, 144143, NULL, '2018-06-01 16:52:20', '2018-06-01 16:52:20', 'q23ewds - Thành Phố Vũng Tàu - Bà Rịa – Vũng Tàu	'),
(130, 15, 'namntt223@gmail.com', '761871', 'Nam Nguyễn Văn', 'ATM', '2345679', '0', NULL, 0, 124143, 20000, 144143, NULL, '2018-06-01 16:55:16', '2018-06-01 16:55:16', 'zdfmn, - Huyện Vĩnh Thanh - Điện Biên'),
(131, 15, 'namntt223@gmail.com', '908236', 'Nam Nguyễn Văn', 'COD', '01234567890', '0', NULL, 0, 124143, 20000, 144143, NULL, '2018-06-01 17:16:40', '2018-06-01 17:16:40', 'Xã Cao Dương - M37 Ngô Thì Nhậm - Huyện Phong Điền - Điện Biên'),
(132, 15, 'namntt223@gmail.com', '425415', 'Nam Nguyễn Văn', 'COD', '43523522', '0', NULL, 0, 124143, 20000, 144143, NULL, '2018-06-01 17:27:14', '2018-06-01 17:27:14', 'dasfafas - Huyện Phong Điền - Điện Biên'),
(133, 15, 'namntt223@gmail.com', '696804', 'Nam Nguyễn Văn', 'COD', '0968226146', '0', NULL, 0, 549000, 20000, 569000, NULL, '2018-06-01 17:29:13', '2018-06-01 17:29:13', 'M37- Ngô Thì Nhậm - Thành Phố Châu Đốc - An Giang'),
(134, 15, 'namntt223@gmail.com', '917575', 'Nam Nguyễn Văn', 'COD', '234567890', '0', NULL, 0, 599000, 20000, 619000, NULL, '2018-06-01 17:30:04', '2018-06-01 17:30:04', 'fsdgnm - Huyện Thới Lai - Đồng Nai'),
(135, 15, 'namntt223@gmail.com', '693811', 'Nam Nguyễn Văn', 'COD', '234567', '0', NULL, 0, 599000, 20000, 619000, NULL, '2018-06-01 17:31:01', '2018-06-01 17:31:01', 'ưdsfgbhj - Thành Phố Bạc Liêu - Bạc Liêu'),
(136, 15, 'namntt223@gmail.com', '231259', 'Nam Nguyễn Văn', 'COD', '234567890', '0', NULL, 0, 249000, 20000, 269000, NULL, '2018-06-01 17:51:54', '2018-06-01 17:51:54', 'fsdgnm - Huyện Thới Lai - Đồng Nai'),
(137, 15, 'namntt223@gmail.com', '789227', 'Nam Nguyễn Văn', 'COD', '234567890', '0', NULL, 0, 249000, 20000, 269000, NULL, '2018-06-01 17:56:22', '2018-06-01 17:56:22', 'fsdgnm - Quận Ninh Kiều - Đồng Nai'),
(138, 15, 'namntt223@gmail.com', '832238', 'Nam Nguyễn Văn', 'COD', '1234567890', '0', NULL, 0, 549000, 20000, 569000, NULL, '2018-06-02 05:03:50', '2018-06-02 05:03:50', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(139, 15, 'namntt223@gmail.com', '247436', 'Nam Nguyễn Văn', 'COD', '1234567890', '0', NULL, 0, 549000, 20000, 569000, NULL, '2018-06-02 05:13:15', '2018-06-02 05:13:15', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(140, 15, 'namntt223@gmail.com', '422146', 'Nam Nguyễn Văn', 'COD', '1234567890', '0', NULL, 0, 549000, 20000, 569000, NULL, '2018-06-02 05:24:49', '2018-06-02 05:24:49', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(141, 15, 'namntt223@gmail.com', '776483', 'Nam Nguyễn Văn', 'COD', '1234567890', '0', NULL, 0, 549000, 20000, 569000, NULL, '2018-06-02 05:28:39', '2018-06-02 05:28:39', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(142, 15, 'namntt223@gmail.com', '291354', 'Nam Nguyễn Văn', 'COD', '1234567890', '0', NULL, 0, 549000, 20000, 569000, NULL, '2018-06-02 05:30:04', '2018-06-02 05:30:04', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(143, 15, 'namntt223@gmail.com', '160754', 'Nam Nguyễn Văn', 'COD', '1234567890', '0', NULL, 0, 549000, 20000, 569000, NULL, '2018-06-02 05:32:01', '2018-06-02 05:32:01', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(144, 15, 'namntt223@gmail.com', '705044', 'Nam Nguyễn Văn', 'COD', '1234567890', '0', NULL, 0, 549000, 20000, 569000, NULL, '2018-06-02 05:32:34', '2018-06-02 05:32:34', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(145, 15, 'namntt223@gmail.com', '996841', 'Nam Nguyễn Văn', 'COD', '234567890', '0', NULL, 0, 549000, 20000, 569000, NULL, '2018-06-02 05:33:37', '2018-06-02 05:33:37', 'fsdgnm - Quận Ô Môn - Đồng Nai'),
(146, 15, 'namntt223@gmail.com', '618609', 'Nam Nguyễn Văn', 'COD', '0968226146', '0', NULL, 0, 549000, 20000, 569000, NULL, '2018-06-02 05:34:51', '2018-06-02 05:34:51', 'M37- Ngô Thì Nhậm - Huyện Thới Lai - Điện Biên'),
(147, 15, 'namntt223@gmail.com', '464389', 'Nam Nguyễn Văn', 'COD', '0968226146', '0', NULL, 0, 549000, 20000, 569000, NULL, '2018-06-02 05:39:56', '2018-06-02 05:39:56', 'M37- Ngô Thì Nhậm - Huyện Thới Lai - Điện Biên'),
(148, 15, 'namntt223@gmail.com', '320028', 'Nam Nguyễn Văn', 'COD', '43523522', '0', NULL, 0, 599000, 20000, 619000, NULL, '2018-06-02 05:40:29', '2018-06-02 05:40:29', 'dasfafas - Huyện Thới Lai - Đắk Nông'),
(149, 15, 'namntt223@gmail.com', '172097', 'Nam Nguyễn Văn', 'COD', '34567865', '0', NULL, 0, 249000, 20000, 269000, NULL, '2018-06-02 05:47:34', '2018-06-02 05:47:34', 'dsfghfd - Huyện Phong Điền - Đắk Nông'),
(150, 15, 'namntt223@gmail.com', '177783', 'Nam Nguyễn Văn', 'COD', '345678', '30000', 'ABC123', 0, 1248000, 0, 1218000, NULL, '2018-06-02 05:48:15', '2018-06-02 05:48:15', 'Xzxzx - Huyện Thới Lai - Đồng Nai'),
(151, 15, 'namntt223@gmail.com', '550384', 'Nam Nguyễn Văn', 'COD', '235678', '0', NULL, 0, 649000, 20000, 669000, NULL, '2018-06-02 05:50:10', '2018-06-02 05:50:10', 'dàghjgkh - Thành Phố Vũng Tàu - Bà Rịa – Vũng Tàu	'),
(152, 15, 'namntt223@gmail.com', '924468', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 649000, 20000, 639000, NULL, '2018-06-02 05:50:38', '2018-06-02 05:50:38', 'Xã Cao Dương - M37 Ngô Thì Nhậm - Huyện Phong Điền - Điện Biên'),
(153, 15, 'namntt223@gmail.com', '830700', 'Nam Nguyễn Văn', 'COD', '43523522', '30000', 'ABC123', 0, 649000, 20000, 639000, NULL, '2018-06-02 05:51:25', '2018-06-02 05:51:25', 'ẻty - Thành Phố Long Xuyên - An Giang'),
(154, 15, 'namntt223@gmail.com', '509103', 'Nam Nguyễn Văn', 'COD', '43523522', '30000', 'ABC123', 0, 649000, 20000, 639000, NULL, '2018-06-02 05:53:12', '2018-06-02 05:53:12', 'ẻty - Thành Phố Long Xuyên - An Giang'),
(155, 15, 'namntt223@gmail.com', '503060', 'Nam Nguyễn Văn', 'COD', '343634624', '30000', 'ABC123', 0, 649000, 20000, 639000, NULL, '2018-06-02 05:53:42', '2018-06-02 05:53:42', 'đasad - Huyện Vĩnh Thanh - Đắk Lắk'),
(156, 15, 'namntt223@gmail.com', '793017', 'Nam Nguyễn Văn', 'COD', '343634624', '30000', 'ABC123', 0, 649000, 20000, 639000, NULL, '2018-06-02 06:00:00', '2018-06-02 06:00:00', 'đasad - Huyện Vĩnh Thanh - Đắk Lắk'),
(157, 15, 'namntt223@gmail.com', '152981', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:10:21', '2018-06-02 06:10:21', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(158, 15, 'namntt223@gmail.com', '349993', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:10:55', '2018-06-02 06:10:55', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(159, 15, 'namntt223@gmail.com', '266525', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:11:12', '2018-06-02 06:11:12', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(160, 15, 'namntt223@gmail.com', '266882', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:11:14', '2018-06-02 06:11:14', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(161, 15, 'namntt223@gmail.com', '235488', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:11:44', '2018-06-02 06:11:44', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(162, 15, 'namntt223@gmail.com', '849542', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:12:10', '2018-06-02 06:12:10', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(163, 15, 'namntt223@gmail.com', '998544', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:12:21', '2018-06-02 06:12:21', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(164, 15, 'namntt223@gmail.com', '913208', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:12:33', '2018-06-02 06:12:33', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(165, 15, 'namntt223@gmail.com', '316238', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:12:36', '2018-06-02 06:12:36', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(166, 15, 'namntt223@gmail.com', '257489', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:14:03', '2018-06-02 06:14:03', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(167, 15, 'namntt223@gmail.com', '645993', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:16:43', '2018-06-02 06:16:43', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(168, 15, 'namntt223@gmail.com', '341369', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:16:56', '2018-06-02 06:16:56', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(169, 15, 'namntt223@gmail.com', '817105', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:17:37', '2018-06-02 06:17:37', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(170, 15, 'namntt223@gmail.com', '458209', 'Nam Nguyễn Văn', 'COD', '01234567890', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-02 06:17:52', '2018-06-02 06:17:52', 'ghjkljhgf - Huyện Tân Thành - Bà Rịa – Vũng Tàu	'),
(171, 15, 'namntt223@gmail.com', '716690', 'Nam Nguyễn Văn', 'ATM', '43523522', '0', NULL, 0, 249000, 20000, 269000, NULL, '2018-06-02 06:19:34', '2018-06-02 06:19:34', 'dasfafas - Thành phố Long Xuyên - Điện Biên'),
(172, 15, 'namntt223@gmail.com', '899667', 'Nam Nguyễn Văn', 'ATM', '43523522', '0', NULL, 0, 249000, 20000, 269000, NULL, '2018-06-02 06:25:22', '2018-06-02 06:25:22', 'dasfafas - Thành phố Long Xuyên - Điện Biên'),
(173, 15, 'namntt223@gmail.com', '607897', 'Nam Nguyễn Văn', 'COD', '0968226146', '0', NULL, 0, 249000, 20000, 269000, NULL, '2018-06-02 06:40:52', '2018-06-02 06:40:52', 'M37- Ngô Thì Nhậm - Thành Phố Long Xuyên - An Giang'),
(174, NULL, 'nguyendinhduy2864@gmail.com', '993682', 'Nguyễn Đình Duy', 'COD', '0968226146', '0', NULL, 0, 2628000, 0, 2628000, NULL, '2018-06-03 09:58:15', '2018-06-03 09:58:15', 'M37- Ngô Thì Nhậm - Thành Phố Vũng Tàu - Bà Rịa – Vũng Tàu	'),
(175, NULL, 'nguyendinhduy2864@gmail.com', '610946', 'fsfsd', 'COD', '43523522', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-03 10:01:41', '2018-06-03 10:01:41', 'dasfafas - Huyện Ứng Hòa - Hà Nội'),
(176, NULL, 'abc@gmail.com', '760278', 'fsfsd', 'COD', '43523522', '0', NULL, 3, 219000, 20000, 239000, NULL, '2018-06-03 10:04:33', '2018-06-11 19:00:57', 'dasfafas - Huyện Phong Điền - Đắk Nông'),
(177, NULL, 'abc@gmail.com', '907302', 'fsfsd', 'COD', '43523522', '30000', 'ABC123', 0, 219000, 20000, 209000, NULL, '2018-06-03 10:05:47', '2018-06-03 10:05:47', 'dasfafas - Huyện Hòa Bình - Bạc Liêu'),
(178, NULL, 'nguyendinhduy2864@gmail.com', '399871', 'fsfsd', 'COD', '43523522', '0', NULL, 0, 219000, 20000, 239000, NULL, '2018-06-03 10:07:22', '2018-06-03 10:07:22', 'dasfafas - Huyện Thường Tín - Hà Nội'),
(179, NULL, 'nguyendinhduy2864@gmail.com', '865719', 'fsfsd', 'COD', '43523522', '50000', 'YOU987', 1, 219000, 20000, 189000, NULL, '2018-06-03 10:10:22', '2018-06-03 10:11:58', 'dasfafas - Huyện Ứng Hòa - Hà Nội'),
(180, NULL, 'nguyendinhduy2864@gmail.com', '494601', 'fsfsd', 'COD', '43523522', '30000', 'ABC123', 2, 1497000, 0, 1467000, NULL, '2018-06-08 07:02:28', '2018-06-08 07:34:49', 'dasfafas - Huyện Thường Tín - Hà Nội'),
(181, NULL, 'nguyendinhduy2864@gmail.com', '651843', 'Nguyễn Đình Duy', 'COD', '0968226146', '50000', 'YOU987', 0, 6138000, 0, 6088000, NULL, '2018-06-11 19:09:29', '2018-06-11 19:09:29', 'M37- Ngô Thì Nhậm - Huyện Thanh Oai - Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `qty`, `price`, `options`, `created_at`, `updated_at`) VALUES
(63, 121, 46, 1, 649000, 'a:4:{s:4:\"size\";s:1:\"5\";s:5:\"color\";s:1:\"3\";s:3:\"img\";s:52:\"1_2_21_2_05_001_118_02_10600033_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"10\";}', NULL, NULL),
(64, NULL, 59, 1, 649000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"10\";}', NULL, NULL),
(65, 123, 59, 1, 649000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"10\";}', NULL, NULL),
(66, 123, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"10\";}', NULL, NULL),
(67, NULL, 55, 1, 599000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:1:\"3\";s:3:\"img\";s:52:\"1_2_24_2_06_016_118_01_10600003_01_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"10\";}', NULL, NULL),
(68, NULL, 57, 1, 249000, 'a:4:{s:4:\"size\";s:1:\"4\";s:5:\"color\";s:1:\"9\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"13\";}', NULL, NULL),
(69, 126, 57, 1, 249000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:1:\"9\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"10\";}', NULL, NULL),
(70, 126, 58, 1, 549000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"20\";}', NULL, NULL),
(71, 127, 58, 1, 549000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"19\";}', NULL, NULL),
(72, 128, NULL, 1, 124143, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"13\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"12\";}', NULL, NULL),
(73, 129, NULL, 1, 124143, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"13\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"12\";}', NULL, NULL),
(74, 130, NULL, 1, 124143, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"13\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"12\";}', NULL, NULL),
(75, 131, NULL, 1, 124143, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"13\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"12\";}', NULL, NULL),
(76, 132, NULL, 1, 124143, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"13\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"12\";}', NULL, NULL),
(77, 133, 58, 1, 549000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:1:\"5\";s:3:\"img\";s:52:\"1_2_22_2_06_005_217_01_10700002_03_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"15\";}', NULL, NULL),
(78, 134, 55, 1, 599000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_24_2_06_016_118_01_20300004_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"14\";}', NULL, NULL),
(79, 135, 47, 1, 599000, 'a:4:{s:4:\"size\";s:1:\"5\";s:5:\"color\";s:1:\"5\";s:3:\"img\";s:52:\"1_2_22_2_06_005_118_01_10700002_01_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"10\";}', NULL, NULL),
(80, 136, 57, 1, 249000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:1:\"9\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(81, 137, 57, 1, 249000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:1:\"9\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(82, 138, 58, 1, 549000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"18\";}', NULL, NULL),
(83, 139, 58, 1, 549000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"18\";}', NULL, NULL),
(84, 140, 58, 1, 549000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"18\";}', NULL, NULL),
(85, 141, 58, 1, 549000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"18\";}', NULL, NULL),
(86, 142, 58, 1, 549000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"18\";}', NULL, NULL),
(87, 143, 58, 1, 549000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"18\";}', NULL, NULL),
(88, 144, 58, 1, 549000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"18\";}', NULL, NULL),
(89, 145, 58, 1, 549000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"18\";}', NULL, NULL),
(90, 146, 58, 1, 549000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"18\";}', NULL, NULL),
(91, 147, 58, 1, 549000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"18\";}', NULL, NULL),
(92, 148, 55, 1, 599000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:1:\"3\";s:3:\"img\";s:52:\"1_2_24_2_06_016_118_01_10600003_01_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"10\";}', NULL, NULL),
(93, 149, 57, 1, 249000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:1:\"9\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"7\";}', NULL, NULL),
(94, 150, 47, 1, 599000, 'a:4:{s:4:\"size\";s:1:\"5\";s:5:\"color\";s:1:\"5\";s:3:\"img\";s:52:\"1_2_22_2_06_005_118_01_10700002_01_thumb_294x441.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(95, 150, 59, 1, 649000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(96, 151, 59, 1, 649000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"8\";}', NULL, NULL),
(97, 152, 59, 1, 649000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"8\";}', NULL, NULL),
(98, 153, 59, 1, 649000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"8\";}', NULL, NULL),
(99, 154, 59, 1, 649000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"8\";}', NULL, NULL),
(100, 155, 59, 1, 649000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"8\";}', NULL, NULL),
(101, 156, 59, 1, 649000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"10\";s:3:\"img\";s:52:\"1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"8\";}', NULL, NULL),
(102, 157, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(103, 158, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(104, 159, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(105, 160, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(106, 161, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(107, 162, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(108, 163, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(109, 164, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(110, 165, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(111, 166, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(112, 167, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(113, 168, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(114, 169, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(115, 170, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(116, 171, 57, 1, 249000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:1:\"9\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"6\";}', NULL, NULL),
(117, 172, 57, 1, 249000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:1:\"9\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"6\";}', NULL, NULL),
(118, 173, 57, 1, 249000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:1:\"9\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"4\";}', NULL, NULL),
(119, 174, 56, 12, 219000, 'a:4:{s:4:\"size\";s:1:\"2\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"12\";}', NULL, NULL),
(120, 175, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"15\";}', NULL, NULL),
(121, 176, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"14\";}', NULL, NULL),
(122, 177, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"13\";}', NULL, NULL),
(123, 178, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"12\";}', NULL, NULL),
(124, 179, 56, 1, 219000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"12\";s:3:\"img\";s:52:\"1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg\";s:5:\"slmax\";s:2:\"11\";}', NULL, NULL),
(125, 180, 46, 1, 649000, 'a:4:{s:4:\"size\";s:1:\"5\";s:5:\"color\";s:1:\"3\";s:3:\"img\";s:52:\"1_2_21_2_05_001_118_02_10600033_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(126, 180, 93, 1, 449000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:1:\"6\";s:3:\"img\";s:60:\"1_2_02_2_02_057_118_01_20600004_01_600x899_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"10\";}', NULL, NULL),
(127, 180, 95, 1, 399000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:2:\"13\";s:3:\"img\";s:52:\"1_2_02_2_02_029_118_01_10400002_01_thumb_294x441.jpg\";s:5:\"slmax\";s:2:\"11\";}', NULL, NULL),
(128, 181, 57, 3, 249000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:1:\"9\";s:3:\"img\";s:52:\"1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg\";s:5:\"slmax\";s:1:\"3\";}', NULL, NULL),
(129, 181, 55, 5, 599000, 'a:4:{s:4:\"size\";s:1:\"1\";s:5:\"color\";s:1:\"3\";s:3:\"img\";s:52:\"1_2_24_2_06_016_118_01_10600003_01_thumb_294x441.jpg\";s:5:\"slmax\";s:1:\"9\";}', NULL, NULL),
(130, 181, 47, 4, 599000, 'a:4:{s:4:\"size\";s:1:\"5\";s:5:\"color\";s:1:\"5\";s:3:\"img\";s:52:\"1_2_22_2_06_005_118_01_10700002_01_thumb_294x441.jpg\";s:5:\"slmax\";s:1:\"8\";}', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `promotion_price` int(11) NOT NULL,
  `prod_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_code`, `prod_slug`, `prod_thumbnail`, `prod_price`, `promotion_price`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(45, 'JEANS NAM CAN DỌC THÂN VÀ GẤU QUẦN RÁCH NHẸ. TREND XANH NHẠT', '2018QD111', 'jeans-nam-can-doc-than-va-gau-quan-rach-nhe-trend-xanh-nhat', '1_2_21_2_06_010_118_01_10600036_01_thumb_294x440.jpg', 649000, 649000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 0, 6, '2018-05-29 16:58:26', '2018-05-29 17:27:57'),
(46, 'JEANS NAM DÁNG SLIMFIT MÀI NHẸ THÊU CHỮ KÝ BÒ SỮA TÚI SAU. BASIC XANH DENIM DA TRỜI ĐẬM', '2018QD112', 'jeans-nam-dang-slimfit-mai-nhe-theu-chu-ky-bo-sua-tui-sau-basic-xanh-denim-da-troi-dam', '1_2_21_2_05_001_118_02_10600033_01_thumb_294x440.jpg', 649000, 649000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 1, 6, '2018-05-29 17:09:19', '2018-05-29 17:11:31'),
(47, 'JOGGER KAKI NAM PHỐI TÚI ỐP DỌC HAI BÊN THÂN. TREND RÊU', '2018QD113', 'jogger-kaki-nam-phoi-tui-op-doc-hai-ben-than-trend-reu', '1_2_22_2_06_005_118_01_10700002_01_thumb_294x441.jpg', 599000, 599000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 1, 6, '2018-05-29 17:25:46', '2018-05-29 17:26:47'),
(55, 'JOGGER TRACKPANT NAM DÁNG THỤNG PHỐI DÂY RÚT VÀ TÚI GIẢ PHÍA SAU', '2018QD114', 'jogger-trackpant-nam-dang-thung-phoi-day-rut-va-tui-gia-phia-sau', '1_2_24_2_06_016_118_01_10600003_01_thumb_294x441.jpg', 599000, 599000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 1, 6, '2018-05-29 17:43:22', '2018-05-29 17:43:22'),
(56, 'QUẦN LỬNG HỌA TIẾT LÁ CÂY ĐAI NHÁM DÍNH XẺ VẠT PHỐI VIỀN ỐNG QUẦN VÀ DÂY RÚT LÓT LƯỚI. BEACH', '2018QS111', 'quan-lung-hoa-tiet-la-cay-dai-nham-dinh-xe-vat-phoi-vien-ong-quan-va-day-rut-lot-luoi-beach', '1_2_09_2_13_004_118_03_30700013_01_thumb_294x441.jpg', 219000, 219000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 0, 5, '2018-05-29 17:49:14', '2018-06-03 10:00:47'),
(57, 'QUẦN SHORTS KAKI NAM DÁNG SLIMFIT PHỐI TÚI HỘP VÀ ĐAI CÀI KHÓA SẬP. TREND NÂU BE', '2018QS112', 'quan-shorts-kaki-nam-dang-slimfit-phoi-tui-hop-va-dai-cai-khoa-sap-trend-nau-be', '1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg', 249000, 249000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 1, 5, '2018-05-29 17:54:23', '2018-05-30 05:36:48'),
(58, 'QUẦN CHINOS KAKI NAM DÁNG CROP CƠ BẢN', '2018QD115', 'quan-chinos-kaki-nam-dang-crop-co-ban', '1_2_22_2_06_005_217_01_10300002_01_thumb_294x441.jpg', 549000, 549000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 1, 6, '2018-05-30 08:52:21', '2018-05-30 08:52:21'),
(59, 'QUẦN KAKI NAM PHỐI TRACK TAPE BS091 VÀ TÚI MIỆNG NGANG PHÍA SAU BLACKLINE', '2018QD116', 'quan-kaki-nam-phoi-track-tape-bs091-va-tui-mieng-ngang-phia-sau-blackline', '1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg', 649000, 649000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 0, 6, '2018-05-30 08:55:12', '2018-06-01 06:17:41'),
(61, 'QUẦN SHORTS TRACKPANTS NỈ NAM PHỐI VẢI MÀU KHÁC DỌC BÊN HÔNG VÀ DÂY RÚT', '2018QS130', 'quan-shorts-trackpants-ni-nam-phoi-vai-mau-khac-doc-ben-hong-va-day-rut', '1_2_09_2_06_011_118_01_20300004_01_thumb_294x440.jpg', 449000, 449000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 1, 5, '2018-06-05 11:25:33', '2018-06-05 11:51:23'),
(62, 'QUẦN SHORTS NAM DÁNG CƠ BẢN PHỐI TÚI HAI BÊN HÔNG VÀ TÚI GIẢ PHÍA SAU', '2018QS131', 'quan-shorts-nam-dang-co-ban-phoi-tui-hai-ben-hong-va-tui-gia-phia-sau', '1_2_09_2_05_007_118_02_10200011_01_thumb_294x440.jpg', 449000, 449000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 0, 5, '2018-06-05 11:56:34', '2018-06-05 12:04:58'),
(63, 'ÁO SƠ MI DÀI TAY NAM VẢI THÔ CỔ TÀU PHỐI TÚI LẬT Ở NGỰC THÊU CHỮ KÝ BÒ SỮA BASIC', '2018SM001', 'ao-so-mi-dai-tay-nam-vai-tho-co-tau-phoi-tui-lat-o-nguc-theu-chu-ky-bo-sua-basic', '1_2_17_2_05_004_118_23_10100011_01_thumb_294x440.jpg', 599000, 599000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 1, 1, '2018-06-05 12:15:36', '2018-06-05 13:04:20'),
(64, 'SƠ MI DÀI TAY NAM DÁNG FIT PHỐI TÚI NGỰC TRÁI THÊU LOGO BOSUA BASIC', '2018QS133', 'so-mi-dai-tay-nam-dang-fit-phoi-tui-nguc-trai-theu-logo-bosua-basic', '1_2_17_2_05_002_118_23_10400002_01_thumb_294x441.jpg', 549000, 549000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 0, 1, '2018-06-05 12:25:34', '2018-06-05 13:01:27'),
(65, 'SƠ MI DÀI TAY NAM DÁNG FIT TÚI NGỰC TRÁI THÊU LOGO BOSUA BASIC', '2018SM134', 'so-mi-dai-tay-nam-dang-fit-tui-nguc-trai-theu-logo-bosua-basic', '1_2_17_2_05_002_118_23_10100002_01_thumb_294x441.jpg', 449000, 449000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 0, 1, '2018-06-05 12:36:47', '2018-06-05 12:36:47'),
(66, 'SƠ MI DÀI TAY NAM DÁNG RỘNG PHỐI TÚI NGỰC THÊU GRAPHIC LƯNG VÀ CỔ TAY AFRICA IS ON THE RISE. TREND', '2018SM135', 'so-mi-dai-tay-nam-dang-rong-phoi-tui-nguc-theu-graphic-lung-va-co-tay-africa-is-on-the-rise-trend', '1_2_17_2_06_003_118_01_10600004_06_thumb_294x441.jpg', 519000, 519000, '<p><strong><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></strong></p>', 0, 1, '2018-06-05 12:45:26', '2018-06-05 12:45:52'),
(68, 'ÁO PHÔNG DÀI TAY NAM DÁNG RỘNG IN GRAPHIC HỔ THẦN THOẠI', '2018AP001', 'ao-phong-dai-tay-nam-dang-rong-in-graphic-ho-than-thoai', '1_2_04_2_06_010_118_01_10200039_01_thumb_294x441.jpg', 349000, 349000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 0, 2, '2018-06-05 12:54:23', '2018-06-05 13:02:40'),
(88, 'SƠ MI DẠ DÀI TAY NAM DÁNG CƠ BẢN PHỐI TÚI NGỰC CÓ NẮP. TREND BORDEAUX KẺ CARO', '2018SM138', 'so-mi-da-dai-tay-nam-dang-co-ban-phoi-tui-nguc-co-nap-trend-bordeaux-ke-caro', '1_2_17_2_06_006_217_01_40300032_01_thumb_294x441.jpg', 599000, 599000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 1, 1, '2018-06-07 06:42:40', '2018-06-07 06:51:34'),
(89, 'SƠ MI DÀI TAY NAM CỔ POLO PHỐI TÚI NGỰC CÓ NẮP XẺ VẠT', '1018SM139', 'so-mi-dai-tay-nam-co-polo-phoi-tui-nguc-co-nap-xe-vat', '1_2_17_2_06_005_118_23_10600034_01_thumb_294x441.jpg', 599000, 499000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 1, 1, '2018-06-07 06:47:54', '2018-06-07 06:49:21'),
(90, 'SHORTS NỈ NAM PHỐI HAI MÀU TRACKTAPE THÊU BS09 CÓ TÚI PHÍA SAU', '2018QS120', 'shorts-ni-nam-phoi-hai-mau-tracktape-theu-bs09-co-tui-phia-sau', '1_2_09_2_06_007_118_01_20300050_01_thumb_294x440.jpg', 449000, 449000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 0, 5, '2018-06-07 17:15:48', '2018-06-07 17:15:48'),
(91, 'SHORTS ĐI BIỂN NAM PHỐI DẢI DỌC HAI BÊN HÔNG CÓ DÂY RÚT LÓT LƯỚI BEACH', '2018QS122', 'shorts-di-bien-nam-phoi-dai-doc-hai-ben-hong-co-day-rut-lot-luoi-beach', '1_2_09_2_13_001_118_03_10200011_01_thumb_294x440.jpg', 449000, 449000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 0, 5, '2018-06-07 17:22:10', '2018-06-07 17:22:10'),
(92, 'ÁO THUN NGẮN TAY NAM DÁNG CƠ BẢN IN GRAPHIC ĐẠP VỊT KỶ NIỆM HÀ LỘI GRAPHIC LOCAL', '2018AP121', 'ao-thun-ngan-tay-nam-dang-co-ban-in-graphic-dap-vit-ky-niem-ha-loi-graphic-local', '1_2_02_2_02_068_118_01_10500003_01_thumb_294x440.jpg', 449000, 400000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 1, 2, '2018-06-08 04:20:01', '2018-06-08 04:20:01'),
(93, 'ÁO THUN NGẮN TAY NAM DÁNG FIT IN GRAPHIC LIẾM LIẾM. GRAPHIC. BUCHAR BUSTICKERS', '2018AP122', 'ao-thun-ngan-tay-nam-dang-fit-in-graphic-liem-liem-graphic-buchar-bustickers', '1_2_02_2_02_057_118_01_20600004_01_600x899_thumb_294x441.jpg', 449000, 449000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 0, 2, '2018-06-08 04:24:14', '2018-06-08 04:24:14'),
(94, 'ÁO THUN NGẮN TAY NAM DÁNG CƠ BẢN IN GRAPHIC LARVA COMIC TỔNG HỢP. GRAPHIC LARVA', '2018AP123', 'ao-thun-ngan-tay-nam-dang-co-ban-in-graphic-larva-comic-tong-hop-graphic-larva', '1_2_02_2_02_055_118_01_10600003_01_thumb_294x441.jpg', 449000, 399000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 1, 2, '2018-06-08 04:29:49', '2018-06-08 04:29:49'),
(95, 'ÁO PHÔNG NAM IN GRAPHIC SML XL. GRAPHIC. BU CHAR', '2018AP124', 'ao-phong-nam-in-graphic-sml-xl-graphic-bu-char', '1_2_02_2_02_029_118_01_10400002_01_thumb_294x441.jpg', 399000, 399000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 0, 2, '2018-06-08 04:46:59', '2018-06-08 04:46:59'),
(96, 'ÁO PHÔNG NGẮN TAY NAM DÁNG RỘNG IN GRAPHIC HOẠ TIẾT BÒ SỮA XƯƠNG CHÉO. GRAPHIC', '2018AP125', 'ao-phong-ngan-tay-nam-dang-rong-in-graphic-hoa-tiet-bo-sua-xuong-cheo-graphic', '1_2_02_2_02_025_118_01_10100002_01_thumb_294x441.jpg', 449000, 449000, '<p><tt>&Aacute;o kho&aacute;c nỉ nam ngắn tay, c&oacute; mũ, d&aacute;ng d&agrave;i, in graphic theme Punk sau lưng, c&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, phối gấu camo, phong c&aacute;ch trẻ trung c&aacute; t&iacute;nh.&nbsp;<br />\r\n- Chất liệu: Nỉ da c&aacute;&nbsp;<br />\r\n- Số đo mẫu: 70 kg, 97 - 76 - 98 - 180 (cm)&nbsp;<br />\r\n- Size mẫu mặc: L</tt></p>', 0, 2, '2018-06-08 04:50:33', '2018-06-08 04:50:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prod_color`
--

CREATE TABLE `prod_color` (
  `color_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `prod_color`
--

INSERT INTO `prod_color` (`color_id`, `value`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Đỏ', 'do', NULL, NULL),
(2, 'Đỏ Boocdo', 'do-boocdo', NULL, NULL),
(3, 'Xanh da trời', 'xanh-da-troi', NULL, NULL),
(4, 'Xanh lá cây', 'xanh-la-cay', NULL, NULL),
(5, 'Xanh rêu', 'xanh-reu', NULL, NULL),
(6, 'Xanh navy', 'xanh-navy', NULL, NULL),
(7, 'Vàng', 'vang', NULL, NULL),
(8, 'Da cam', 'da-cam', NULL, NULL),
(9, 'Nâu', 'nau', NULL, NULL),
(10, 'Đen', 'den', NULL, NULL),
(11, 'Trắng', 'trang', NULL, NULL),
(12, 'Xám', 'xam', NULL, NULL),
(13, 'Hồng đào', 'hong-dao', NULL, NULL),
(14, 'Xanh da trời nhạt', 'xanh-da-troi-nhat', '2018-05-29 16:54:19', '2018-05-29 16:54:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prod_size`
--

CREATE TABLE `prod_size` (
  `size_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `prod_size`
--

INSERT INTO `prod_size` (`size_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'S', NULL, NULL),
(2, 'M', NULL, NULL),
(3, 'L', NULL, NULL),
(4, 'XL', NULL, NULL),
(5, '28', NULL, NULL),
(6, '30', NULL, NULL),
(7, '32', NULL, NULL),
(8, '34', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prod_specifi`
--

CREATE TABLE `prod_specifi` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `prod_color_id` int(10) UNSIGNED NOT NULL,
  `prod_size_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `prod_specifi`
--

INSERT INTO `prod_specifi` (`product_id`, `prod_color_id`, `prod_size_id`, `quantity`, `image`, `created_at`, `updated_at`) VALUES
(45, 14, 5, 10, '1_2_21_2_06_010_118_01_10600036_01_thumb_294x440.jpg', '2018-05-29 16:58:26', '2018-05-29 17:27:57'),
(45, 14, 6, 12, '1_2_21_2_06_010_118_01_10600036_01_thumb_294x440.jpg', '2018-05-29 16:58:26', '2018-05-29 17:27:57'),
(45, 14, 7, 14, '1_2_21_2_06_010_118_01_10600036_01_thumb_294x440.jpg', '2018-05-29 16:58:26', '2018-05-29 17:27:57'),
(45, 14, 8, 16, '1_2_21_2_06_010_118_01_10600036_01_thumb_294x440.jpg', '2018-05-29 16:58:26', '2018-05-29 17:27:57'),
(46, 3, 5, 8, '1_2_21_2_05_001_118_02_10600033_01_thumb_294x440.jpg', '2018-05-29 17:09:19', '2018-05-29 17:11:31'),
(46, 3, 6, 10, '1_2_21_2_05_001_118_02_10600033_01_thumb_294x440.jpg', '2018-05-29 17:09:19', '2018-05-29 17:11:31'),
(46, 3, 7, 12, '1_2_21_2_05_001_118_02_10600033_01_thumb_294x440.jpg', '2018-05-29 17:09:19', '2018-05-29 17:11:31'),
(46, 3, 6, 10, '1_2_21_2_05_001_118_02_10600033_01_thumb_294x440.jpg', '2018-05-29 17:09:19', '2018-05-29 17:11:31'),
(47, 5, 5, 4, '1_2_22_2_06_005_118_01_10700002_01_thumb_294x441.jpg', '2018-05-29 17:26:47', '2018-05-29 17:26:47'),
(47, 5, 6, 11, '1_2_22_2_06_005_118_01_10700002_01_thumb_294x441.jpg', '2018-05-29 17:26:47', '2018-05-29 17:26:47'),
(47, 5, 7, 12, '1_2_22_2_06_005_118_01_10700002_01_thumb_294x441.jpg', '2018-05-29 17:26:47', '2018-05-29 17:26:47'),
(47, 5, 8, 13, '1_2_22_2_06_005_118_01_10700002_01_thumb_294x441.jpg', '2018-05-29 17:26:47', '2018-05-29 17:26:47'),
(55, 3, 1, 4, '1_2_24_2_06_016_118_01_10600003_01_thumb_294x441.jpg', '2018-05-29 17:43:22', '2018-05-29 17:43:22'),
(55, 3, 2, 12, '1_2_24_2_06_016_118_01_10600003_01_thumb_294x441.jpg', '2018-05-29 17:43:22', '2018-05-29 17:43:22'),
(55, 3, 3, 14, '1_2_24_2_06_016_118_01_10600003_01_thumb_294x441.jpg', '2018-05-29 17:43:22', '2018-05-29 17:43:22'),
(55, 12, 1, 13, '1_2_24_2_06_016_118_01_20300004_01_thumb_294x440.jpg', '2018-05-29 17:43:22', '2018-05-29 17:43:22'),
(55, 12, 2, 12, '1_2_24_2_06_016_118_01_20300004_01_thumb_294x440.jpg', '2018-05-29 17:43:22', '2018-05-29 17:43:22'),
(55, 12, 3, 10, '1_2_24_2_06_016_118_01_20300004_01_thumb_294x440.jpg', '2018-05-29 17:43:22', '2018-05-29 17:43:22'),
(56, 12, 1, 10, '1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg', '2018-05-29 17:49:14', '2018-06-03 10:00:47'),
(56, 12, 2, 10, '1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg', '2018-05-29 17:49:14', '2018-06-03 10:00:47'),
(56, 12, 4, 14, '1_2_09_2_13_004_118_03_30800011_01_thumb_294x440.jpg', '2018-05-29 17:49:14', '2018-06-03 10:00:47'),
(56, 5, 1, 15, '1_2_09_2_13_004_118_03_30700013_01_thumb_294x441.jpg', '2018-05-29 17:49:14', '2018-06-03 10:00:47'),
(56, 5, 2, 13, '1_2_09_2_13_004_118_03_30700013_01_thumb_294x441.jpg', '2018-05-29 17:49:14', '2018-06-03 10:00:47'),
(56, 5, 4, 11, '1_2_09_2_13_004_118_03_30700013_01_thumb_294x441.jpg', '2018-05-29 17:49:14', '2018-06-03 10:00:47'),
(57, 9, 1, 0, '1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg', '2018-05-29 17:54:24', '2018-05-30 05:36:48'),
(57, 9, 2, 11, '1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg', '2018-05-29 17:54:24', '2018-05-30 05:36:48'),
(57, 9, 3, 12, '1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg', '2018-05-29 17:54:24', '2018-05-30 05:36:48'),
(57, 9, 4, 12, '1_2_09_2_06_001_118_02_10400003_01_thumb_294x440.jpg', '2018-05-29 17:56:39', '2018-05-30 05:36:48'),
(58, 12, 1, 10, '1_2_22_2_06_005_217_01_10300002_01_thumb_294x441.jpg', '2018-05-30 08:52:21', '2018-05-30 08:52:21'),
(58, 12, 2, 10, '1_2_22_2_06_005_217_01_10300002_01_thumb_294x441.jpg', '2018-05-30 08:52:21', '2018-05-30 08:52:21'),
(58, 12, 3, 10, '1_2_22_2_06_005_217_01_10300002_01_thumb_294x441.jpg', '2018-05-30 08:52:21', '2018-05-30 08:52:21'),
(58, 5, 1, 14, '1_2_22_2_06_005_217_01_10700002_03_thumb_294x441.jpg', '2018-05-30 08:52:21', '2018-05-30 08:52:21'),
(58, 5, 2, 15, '1_2_22_2_06_005_217_01_10700002_03_thumb_294x441.jpg', '2018-05-30 08:52:21', '2018-05-30 08:52:21'),
(58, 5, 3, 15, '1_2_22_2_06_005_217_01_10700002_03_thumb_294x441.jpg', '2018-05-30 08:52:21', '2018-05-30 08:52:21'),
(58, 10, 1, 8, '1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg', '2018-05-30 08:52:21', '2018-05-30 08:52:21'),
(58, 10, 2, 20, '1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg', '2018-05-30 08:52:21', '2018-05-30 08:52:21'),
(58, 10, 3, 20, '1_2_22_2_06_005_217_01_10200002_02_thumb_294x441.jpg', '2018-05-30 08:52:21', '2018-05-30 08:52:21'),
(59, 10, 1, 2, '1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg', '2018-05-30 08:55:12', '2018-06-01 06:17:41'),
(59, 10, 2, 15, '1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg', '2018-05-30 08:55:12', '2018-06-01 06:17:41'),
(59, 10, 3, 20, '1_2_11_2_04_004_118_23_10200002_01_thumb_294x440.jpg', '2018-05-30 08:55:12', '2018-06-01 06:17:41'),
(61, 12, 1, 10, '1_2_09_2_06_011_118_01_20300004_01_thumb_294x440.jpg', '2018-06-05 11:25:34', '2018-06-05 11:51:23'),
(61, 12, 2, 10, '1_2_09_2_06_011_118_01_20300004_01_thumb_294x440.jpg', '2018-06-05 11:25:34', '2018-06-05 11:51:23'),
(61, 12, 3, 15, '1_2_09_2_06_011_118_01_20300004_01_thumb_294x440.jpg', '2018-06-05 11:25:34', '2018-06-05 11:51:23'),
(61, 12, 4, 10, '1_2_09_2_06_011_118_01_20300004_01_thumb_294x440.jpg', '2018-06-05 11:25:34', '2018-06-05 11:51:23'),
(61, 5, 1, 18, '1_2_09_2_06_011_118_01_30700013_01_thumb_294x440.jpg', '2018-06-05 11:25:34', '2018-06-05 11:51:23'),
(61, 5, 2, 16, '1_2_09_2_06_011_118_01_30700013_01_thumb_294x440.jpg', '2018-06-05 11:25:34', '2018-06-05 11:51:23'),
(61, 5, 3, 12, '1_2_09_2_06_011_118_01_30700013_01_thumb_294x440.jpg', '2018-06-05 11:25:34', '2018-06-05 11:51:23'),
(61, 5, 4, 13, '1_2_09_2_06_011_118_01_30700013_01_thumb_294x440.jpg', '2018-06-05 11:51:23', '2018-06-05 11:51:23'),
(62, 10, 1, 10, '1_2_09_2_05_007_118_02_10200011_01_thumb_294x440.jpg', '2018-06-05 11:56:34', '2018-06-05 12:04:58'),
(62, 10, 2, 11, '1_2_09_2_05_007_118_02_10200011_01_thumb_294x440.jpg', '2018-06-05 11:56:34', '2018-06-05 12:04:58'),
(62, 10, 3, 12, '1_2_09_2_05_007_118_02_10200011_01_thumb_294x440.jpg', '2018-06-05 11:56:34', '2018-06-05 12:04:58'),
(62, 10, 4, 13, '1_2_09_2_05_007_118_02_10200011_01_thumb_294x440.jpg', '2018-06-05 11:56:34', '2018-06-05 12:04:58'),
(62, 6, 2, 12, '1_2_09_2_05_007_118_02_10800011_01_thumb_294x440.jpg', '2018-06-05 11:56:34', '2018-06-05 12:04:58'),
(62, 6, 1, 13, '1_2_09_2_05_007_118_02_10800011_01_thumb_294x440.jpg', '2018-06-05 11:56:34', '2018-06-05 12:04:58'),
(62, 6, 3, 11, '1_2_09_2_05_007_118_02_10800011_01_thumb_294x440.jpg', '2018-06-05 11:56:34', '2018-06-05 12:04:58'),
(62, 6, 4, 10, '1_2_09_2_05_007_118_02_10800011_01_thumb_294x440.jpg', '2018-06-05 12:04:58', '2018-06-05 12:04:58'),
(63, 14, 1, 10, '1_2_17_2_05_004_118_23_10600054_01_401x600.jpg', '2018-06-05 12:15:36', '2018-06-05 13:04:20'),
(63, 14, 2, 11, '1_2_17_2_05_004_118_23_10600054_01_401x600.jpg', '2018-06-05 12:15:36', '2018-06-05 13:04:20'),
(63, 14, 3, 12, '1_2_17_2_05_004_118_23_10600054_01_401x600.jpg', '2018-06-05 12:15:36', '2018-06-05 13:04:20'),
(63, 14, 4, 13, '1_2_17_2_05_004_118_23_10600054_01_401x600.jpg', '2018-06-05 12:15:36', '2018-06-05 13:04:20'),
(63, 11, 2, 13, '1_2_17_2_05_004_118_23_10100011_01_thumb_294x440.jpg', '2018-06-05 12:15:36', '2018-06-05 13:04:20'),
(63, 11, 1, 12, '1_2_17_2_05_004_118_23_10100011_01_thumb_294x440.jpg', '2018-06-05 12:15:36', '2018-06-05 13:04:20'),
(63, 11, 4, 11, '1_2_17_2_05_004_118_23_10100011_01_thumb_294x440.jpg', '2018-06-05 12:15:36', '2018-06-05 13:04:20'),
(63, 11, 3, 10, '1_2_17_2_05_004_118_23_10100011_01_thumb_294x440.jpg', '2018-06-05 12:18:56', '2018-06-05 13:04:20'),
(64, 8, 1, 10, '1_2_17_2_05_002_118_23_10400002_01_thumb_294x441.jpg', '2018-06-05 12:25:34', '2018-06-05 13:01:27'),
(64, 8, 2, 11, '1_2_17_2_05_002_118_23_10400002_01_thumb_294x441.jpg', '2018-06-05 12:25:34', '2018-06-05 13:01:27'),
(64, 8, 3, 12, '1_2_17_2_05_002_118_23_10400002_01_thumb_294x441.jpg', '2018-06-05 12:25:34', '2018-06-05 13:01:27'),
(64, 8, 4, 13, '1_2_17_2_05_002_118_23_10400002_01_thumb_294x441.jpg', '2018-06-05 12:25:34', '2018-06-05 13:01:27'),
(64, 14, 1, 10, '1_2_17_2_05_002_118_23_10600027_01_thumb_294x441.jpg', '2018-06-05 12:25:34', '2018-06-05 13:01:27'),
(64, 14, 2, 11, '1_2_17_2_05_002_118_23_10600027_01_thumb_294x441.jpg', '2018-06-05 12:25:34', '2018-06-05 13:01:27'),
(64, 14, 3, 12, '1_2_17_2_05_002_118_23_10600027_01_thumb_294x441.jpg', '2018-06-05 12:25:34', '2018-06-05 13:01:27'),
(64, 14, 4, 13, '1_2_17_2_05_002_118_23_10600027_01_thumb_294x441.jpg', '2018-06-05 12:29:07', '2018-06-05 13:01:27'),
(65, 11, 1, 12, '1_2_17_2_05_002_118_23_10100002_01_thumb_294x441.jpg', '2018-06-05 12:36:47', '2018-06-05 12:36:47'),
(65, 11, 2, 13, '1_2_17_2_05_002_118_23_10100002_01_thumb_294x441.jpg', '2018-06-05 12:36:47', '2018-06-05 12:36:47'),
(65, 11, 3, 14, '1_2_17_2_05_002_118_23_10100002_01_thumb_294x441.jpg', '2018-06-05 12:36:47', '2018-06-05 12:36:47'),
(65, 11, 4, 15, '1_2_17_2_05_002_118_23_10100002_01_thumb_294x441.jpg', '2018-06-05 12:36:47', '2018-06-05 12:36:47'),
(66, 6, 1, 12, '1_2_17_2_06_003_118_01_10600004_06_thumb_294x441.jpg', '2018-06-05 12:45:26', '2018-06-05 12:45:52'),
(66, 6, 2, 13, '1_2_17_2_06_003_118_01_10600004_06_thumb_294x441.jpg', '2018-06-05 12:45:26', '2018-06-05 12:45:52'),
(66, 6, 3, 14, '1_2_17_2_06_003_118_01_10600004_06_thumb_294x441.jpg', '2018-06-05 12:45:26', '2018-06-05 12:45:52'),
(66, 6, 4, 15, '1_2_17_2_06_003_118_01_10600004_06_thumb_294x441.jpg', '2018-06-05 12:45:26', '2018-06-05 12:45:52'),
(66, 13, 1, 12, '1_2_17_2_06_003_118_01_11200002_06_thumb_294x441.jpg', '2018-06-05 12:45:26', '2018-06-05 12:45:52'),
(66, 13, 2, 13, '1_2_17_2_06_003_118_01_11200002_06_thumb_294x441.jpg', '2018-06-05 12:45:26', '2018-06-05 12:45:52'),
(66, 13, 3, 14, '1_2_17_2_06_003_118_01_11200002_06_thumb_294x441.jpg', '2018-06-05 12:45:26', '2018-06-05 12:45:52'),
(66, 13, 4, 15, '1_2_17_2_06_003_118_01_11200002_06_thumb_294x441.jpg', '2018-06-05 12:45:52', '2018-06-05 12:45:52'),
(68, 6, 1, 12, '1_2_04_2_06_010_118_01_10800028_01_thumb_294x441.jpg', '2018-06-05 12:54:23', '2018-06-05 13:02:39'),
(68, 6, 2, 15, '1_2_04_2_06_010_118_01_10800028_01_thumb_294x441.jpg', '2018-06-05 12:54:23', '2018-06-05 13:02:40'),
(68, 6, 3, 13, '1_2_04_2_06_010_118_01_10800028_01_thumb_294x441.jpg', '2018-06-05 12:54:23', '2018-06-05 13:02:40'),
(68, 6, 4, 14, '1_2_04_2_06_010_118_01_10800028_01_thumb_294x441.jpg', '2018-06-05 12:54:23', '2018-06-05 13:02:40'),
(68, 10, 1, 12, '1_2_04_2_06_010_118_01_10200039_01_thumb_294x441.jpg', '2018-06-05 12:54:23', '2018-06-05 13:02:40'),
(68, 10, 2, 14, '1_2_04_2_06_010_118_01_10200039_01_thumb_294x441.jpg', '2018-06-05 12:54:23', '2018-06-05 13:02:40'),
(68, 10, 3, 15, '1_2_04_2_06_010_118_01_10200039_01_thumb_294x441.jpg', '2018-06-05 12:54:23', '2018-06-05 13:02:40'),
(68, 10, 4, 16, '1_2_04_2_06_010_118_01_10200039_01_thumb_294x441.jpg', '2018-06-05 12:56:33', '2018-06-05 13:02:40'),
(88, 12, 1, 10, '1_2_17_2_06_006_217_01_40300032_01_thumb_294x441.jpg', '2018-06-07 06:42:40', '2018-06-07 06:51:34'),
(88, 12, 2, 11, '1_2_17_2_06_006_217_01_40300032_01_thumb_294x441.jpg', '2018-06-07 06:42:40', '2018-06-07 06:51:34'),
(88, 12, 3, 12, '1_2_17_2_06_006_217_01_40300032_01_thumb_294x441.jpg', '2018-06-07 06:42:40', '2018-06-07 06:51:34'),
(88, 12, 4, 13, '1_2_17_2_06_006_217_01_40300032_01_thumb_294x441.jpg', '2018-06-07 06:42:40', '2018-06-07 06:51:34'),
(88, 2, 1, 15, '1_2_17_2_06_006_217_01_40300044_01_thumb_294x441.jpg', '2018-06-07 06:42:40', '2018-06-07 06:51:34'),
(88, 2, 2, 16, '1_2_17_2_06_006_217_01_40300044_01_thumb_294x441.jpg', '2018-06-07 06:42:40', '2018-06-07 06:51:34'),
(88, 2, 3, 17, '1_2_17_2_06_006_217_01_40300044_01_thumb_294x441.jpg', '2018-06-07 06:42:40', '2018-06-07 06:51:34'),
(88, 2, 4, 18, '1_2_17_2_06_006_217_01_40300044_01_thumb_294x441.jpg', '2018-06-07 06:42:40', '2018-06-07 06:51:34'),
(89, 6, 1, 10, '1_2_17_2_06_005_118_23_10600034_01_thumb_294x441.jpg', '2018-06-07 06:47:55', '2018-06-07 06:49:21'),
(89, 6, 2, 11, '1_2_17_2_06_005_118_23_10600034_01_thumb_294x441.jpg', '2018-06-07 06:47:55', '2018-06-07 06:49:21'),
(89, 6, 3, 12, '1_2_17_2_06_005_118_23_10600034_01_thumb_294x441.jpg', '2018-06-07 06:47:55', '2018-06-07 06:49:21'),
(89, 6, 4, 13, '1_2_17_2_06_005_118_23_10600034_01_thumb_294x441.jpg', '2018-06-07 06:47:55', '2018-06-07 06:49:21'),
(89, 10, 1, 15, '1_2_17_2_06_009_118_23_10200047_01_thumb_294x440.jpg', '2018-06-07 06:47:55', '2018-06-07 06:49:21'),
(89, 10, 2, 16, '1_2_17_2_06_009_118_23_10200047_01_thumb_294x440.jpg', '2018-06-07 06:47:55', '2018-06-07 06:49:21'),
(89, 10, 3, 17, '1_2_17_2_06_009_118_23_10200047_01_thumb_294x440.jpg', '2018-06-07 06:47:55', '2018-06-07 06:49:21'),
(89, 10, 4, 18, '1_2_17_2_06_009_118_23_10200047_01_thumb_294x440.jpg', '2018-06-07 06:47:55', '2018-06-07 06:49:21'),
(90, 12, 1, 10, '1_2_09_2_06_007_118_01_20300050_01_thumb_294x440.jpg', '2018-06-07 17:15:49', '2018-06-07 17:15:49'),
(90, 12, 2, 11, '1_2_09_2_06_007_118_01_20300050_01_thumb_294x440.jpg', '2018-06-07 17:15:49', '2018-06-07 17:15:49'),
(90, 12, 3, 12, '1_2_09_2_06_007_118_01_20300050_01_thumb_294x440.jpg', '2018-06-07 17:15:49', '2018-06-07 17:15:49'),
(90, 12, 4, 13, '1_2_09_2_06_007_118_01_20300050_01_thumb_294x440.jpg', '2018-06-07 17:15:49', '2018-06-07 17:15:49'),
(90, 6, 1, 13, '1_2_09_2_06_007_118_01_20600053_01_thumb_294x441.jpg', '2018-06-07 17:15:49', '2018-06-07 17:15:49'),
(90, 6, 2, 12, '1_2_09_2_06_007_118_01_20600053_01_thumb_294x441.jpg', '2018-06-07 17:15:49', '2018-06-07 17:15:49'),
(90, 6, 3, 11, '1_2_09_2_06_007_118_01_20600053_01_thumb_294x441.jpg', '2018-06-07 17:15:49', '2018-06-07 17:15:49'),
(90, 6, 4, 10, '1_2_09_2_06_007_118_01_20600053_01_thumb_294x441.jpg', '2018-06-07 17:15:49', '2018-06-07 17:15:49'),
(91, 10, 1, 12, '1_2_09_2_13_001_118_03_10200011_01_thumb_294x440.jpg', '2018-06-07 17:22:10', '2018-06-07 17:22:10'),
(91, 10, 2, 13, '1_2_09_2_13_001_118_03_10200011_01_thumb_294x440.jpg', '2018-06-07 17:22:10', '2018-06-07 17:22:10'),
(91, 10, 3, 14, '1_2_09_2_13_001_118_03_10200011_01_thumb_294x440.jpg', '2018-06-07 17:22:10', '2018-06-07 17:22:10'),
(91, 10, 4, 15, '1_2_09_2_13_001_118_03_10200011_01_thumb_294x440.jpg', '2018-06-07 17:22:10', '2018-06-07 17:22:10'),
(91, 5, 1, 16, '1_2_09_2_13_001_118_03_30600017_01_thumb_294x440.jpg', '2018-06-07 17:22:10', '2018-06-07 17:22:10'),
(91, 5, 2, 17, '1_2_09_2_13_001_118_03_30600017_01_thumb_294x440.jpg', '2018-06-07 17:22:10', '2018-06-07 17:22:10'),
(91, 5, 3, 18, '1_2_09_2_13_001_118_03_30600017_01_thumb_294x440.jpg', '2018-06-07 17:22:10', '2018-06-07 17:22:10'),
(91, 5, 4, 19, '1_2_09_2_13_001_118_03_30600017_01_thumb_294x440.jpg', '2018-06-07 17:22:11', '2018-06-07 17:22:11'),
(92, 2, 1, 10, '1_2_02_2_02_068_118_01_10500003_01_thumb_294x440.jpg', '2018-06-08 04:20:02', '2018-06-08 04:20:02'),
(92, 2, 2, 11, '1_2_02_2_02_068_118_01_10500003_01_thumb_294x440.jpg', '2018-06-08 04:20:02', '2018-06-08 04:20:02'),
(92, 2, 3, 12, '1_2_02_2_02_068_118_01_10500003_01_thumb_294x440.jpg', '2018-06-08 04:20:02', '2018-06-08 04:20:02'),
(92, 2, 4, 13, '1_2_02_2_02_068_118_01_10500003_01_thumb_294x440.jpg', '2018-06-08 04:20:02', '2018-06-08 04:20:02'),
(92, 10, 1, 14, '1_2_02_2_02_069_118_01_10200002_01_thumb_294x441.jpg', '2018-06-08 04:20:02', '2018-06-08 04:20:02'),
(92, 10, 2, 15, '1_2_02_2_02_069_118_01_10200002_01_thumb_294x441.jpg', '2018-06-08 04:20:02', '2018-06-08 04:20:02'),
(92, 10, 3, 16, '1_2_02_2_02_069_118_01_10200002_01_thumb_294x441.jpg', '2018-06-08 04:20:02', '2018-06-08 04:20:02'),
(92, 10, 4, 17, '1_2_02_2_02_069_118_01_10200002_01_thumb_294x441.jpg', '2018-06-08 04:20:02', '2018-06-08 04:20:02'),
(93, 6, 1, 9, '1_2_02_2_02_057_118_01_20600004_01_600x899_thumb_294x441.jpg', '2018-06-08 04:24:14', '2018-06-08 04:24:14'),
(93, 6, 2, 10, '1_2_02_2_02_057_118_01_20600004_01_600x899_thumb_294x441.jpg', '2018-06-08 04:24:14', '2018-06-08 04:24:14'),
(93, 6, 3, 12, '1_2_02_2_02_057_118_01_20600004_01_600x899_thumb_294x441.jpg', '2018-06-08 04:24:14', '2018-06-08 04:24:14'),
(93, 6, 4, 12, '1_2_02_2_02_057_118_01_20600004_01_600x899_thumb_294x441.jpg', '2018-06-08 04:24:14', '2018-06-08 04:24:14'),
(93, 11, 1, 16, '1_2_02_2_02_074_118_01_10100002_01_thumb_294x441.jpg', '2018-06-08 04:24:14', '2018-06-08 04:24:14'),
(93, 11, 2, 16, '1_2_02_2_02_074_118_01_10100002_01_thumb_294x441.jpg', '2018-06-08 04:24:15', '2018-06-08 04:24:15'),
(93, 11, 3, 18, '1_2_02_2_02_074_118_01_10100002_01_thumb_294x441.jpg', '2018-06-08 04:24:15', '2018-06-08 04:24:15'),
(93, 11, 4, 18, '1_2_02_2_02_074_118_01_10100002_01_thumb_294x441.jpg', '2018-06-08 04:24:15', '2018-06-08 04:24:15'),
(94, 14, 1, 12, '1_2_02_2_02_055_118_01_10600003_01_thumb_294x441.jpg', '2018-06-08 04:29:49', '2018-06-08 04:29:49'),
(94, 14, 2, 13, '1_2_02_2_02_055_118_01_10600003_01_thumb_294x441.jpg', '2018-06-08 04:29:49', '2018-06-08 04:29:49'),
(94, 14, 3, 13, '1_2_02_2_02_055_118_01_10600003_01_thumb_294x441.jpg', '2018-06-08 04:29:49', '2018-06-08 04:29:49'),
(94, 14, 4, 14, '1_2_02_2_02_055_118_01_10600003_01_thumb_294x441.jpg', '2018-06-08 04:29:50', '2018-06-08 04:29:50'),
(94, 2, 1, 15, '1_2_02_2_02_068_118_01_10500003_01_thumb_294x440.jpg', '2018-06-08 04:29:50', '2018-06-08 04:29:50'),
(94, 2, 2, 16, '1_2_02_2_02_068_118_01_10500003_01_thumb_294x440.jpg', '2018-06-08 04:29:50', '2018-06-08 04:29:50'),
(94, 2, 3, 17, '1_2_02_2_02_068_118_01_10500003_01_thumb_294x440.jpg', '2018-06-08 04:29:50', '2018-06-08 04:29:50'),
(94, 2, 4, 18, '1_2_02_2_02_068_118_01_10500003_01_thumb_294x440.jpg', '2018-06-08 04:29:50', '2018-06-08 04:29:50'),
(95, 13, 1, 10, '1_2_02_2_02_029_118_01_10400002_01_thumb_294x441.jpg', '2018-06-08 04:46:59', '2018-06-08 04:46:59'),
(95, 13, 2, 12, '1_2_02_2_02_029_118_01_10400002_01_thumb_294x441.jpg', '2018-06-08 04:46:59', '2018-06-08 04:46:59'),
(95, 13, 3, 14, '1_2_02_2_02_029_118_01_10400002_01_thumb_294x441.jpg', '2018-06-08 04:46:59', '2018-06-08 04:46:59'),
(95, 13, 4, 15, '1_2_02_2_02_029_118_01_10400002_01_thumb_294x441.jpg', '2018-06-08 04:46:59', '2018-06-08 04:46:59'),
(95, 4, 1, 16, '1_2_02_2_02_029_118_01_10700001_03_thumb_294x441.jpg', '2018-06-08 04:46:59', '2018-06-08 04:46:59'),
(95, 4, 2, 17, '1_2_02_2_02_029_118_01_10700001_03_thumb_294x441.jpg', '2018-06-08 04:46:59', '2018-06-08 04:46:59'),
(95, 4, 3, 18, '1_2_02_2_02_029_118_01_10700001_03_thumb_294x441.jpg', '2018-06-08 04:46:59', '2018-06-08 04:46:59'),
(95, 4, 4, 19, '1_2_02_2_02_029_118_01_10700001_03_thumb_294x441.jpg', '2018-06-08 04:47:00', '2018-06-08 04:47:00'),
(96, 11, 1, 11, '1_2_02_2_02_025_118_01_10100002_01_thumb_294x441.jpg', '2018-06-08 04:50:33', '2018-06-08 04:50:33'),
(96, 11, 2, 12, '1_2_02_2_02_025_118_01_10100002_01_thumb_294x441.jpg', '2018-06-08 04:50:33', '2018-06-08 04:50:33'),
(96, 11, 3, 13, '1_2_02_2_02_025_118_01_10100002_01_thumb_294x441.jpg', '2018-06-08 04:50:33', '2018-06-08 04:50:33'),
(96, 11, 4, 14, '1_2_02_2_02_025_118_01_10100002_01_thumb_294x441.jpg', '2018-06-08 04:50:33', '2018-06-08 04:50:33'),
(96, 4, 1, 15, '1_2_02_2_02_035_118_01_10700001_01_thumb_294x441.jpg', '2018-06-08 04:50:33', '2018-06-08 04:50:33'),
(96, 4, 2, 16, '1_2_02_2_02_035_118_01_10700001_01_thumb_294x441.jpg', '2018-06-08 04:50:33', '2018-06-08 04:50:33'),
(96, 4, 3, 17, '1_2_02_2_02_035_118_01_10700001_01_thumb_294x441.jpg', '2018-06-08 04:50:34', '2018-06-08 04:50:34'),
(96, 4, 4, 18, '1_2_02_2_02_035_118_01_10700001_01_thumb_294x441.jpg', '2018-06-08 04:50:34', '2018-06-08 04:50:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Nguyễn Đình Duy', 'toiladuy22@gmail.com', '$2y$10$RDmgbg7mKLIzsYyLAWZK/exwv2vsnVEy2tURQ.pwYJhC0wFZUX0tW', 1, 'vUarghgO9N8cbXMdppaGFW565j7U7p5crkQ5SXtVvGM6OsPS9bt08HQdS5zU', '2018-05-11 13:40:02', '2018-05-11 13:43:43'),
(15, 'Nam Nguyễn Văn', 'namntt223@gmail.com', '$2y$10$cQu/GTJq1/Dl5iwOBXIusePDrgNkdoLraW7PyocTBD6947m.06Iaq', 1, 'dhq6vxsWA3m5GiZRvTDToxr2JaC6hccXIyVdl892LK03nCkcNxjnhC98VIfU', '2018-05-12 01:09:04', '2018-06-08 07:30:53'),
(18, 'dsfdsdfsdff', 'abcnoah12332@gmail.com', '$2y$10$yLkK8OX/QCy3vB8YpYgrluC6FHR1fr7rwvZABUaKZy.4.WMW2WY7u', 1, '03XzGPr5jER5dDkvyCQHWKmQLc44ilGmtaJuseEgiCGc6ennwAu9IRRYRpQP', '2018-05-14 22:17:44', '2018-05-14 22:17:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_activations`
--

CREATE TABLE `user_activations` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_activations`
--

INSERT INTO `user_activations` (`user_id`, `activation_code`, `created_at`, `updated_at`) VALUES
(6, '973676b1efdcf8d1b9631bac673fb7dbefe412cb8b165bb612cfe764c57944c6', '2018-05-11 13:20:27', NULL),
(8, '2bd0979c24d1375936095a28c5b60d67f1b6b1b1fb5789b8fc768e235c284b20', '2018-05-11 13:38:15', NULL),
(10, '475899a952d9c5583bbc68e228a3ebf99e7f998baca24c6c6aa49a2745e4833d', '2018-05-11 13:45:10', NULL),
(13, 'd19a138da793bf65182dca727f628b155c77ff7972f7b3847470daf9e7193e62', '2018-05-11 13:53:21', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 15, 55, '2018-06-02 04:13:26', '2018-06-02 04:13:26');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_city_id_foreign` (`city_id`);

--
-- Chỉ mục cho bảng `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `histories_user_id_foreign` (`user_id`),
  ADD KEY `histories_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `products_prod_cate_foreign` (`prod_cate`);

--
-- Chỉ mục cho bảng `prod_color`
--
ALTER TABLE `prod_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Chỉ mục cho bảng `prod_size`
--
ALTER TABLE `prod_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Chỉ mục cho bảng `prod_specifi`
--
ALTER TABLE `prod_specifi`
  ADD KEY `prod_specifi_product_id_foreign` (`product_id`),
  ADD KEY `prod_specifi_prod_color_id_foreign` (`prod_color_id`),
  ADD KEY `prod_specifi_prod_size_id_foreign` (`prod_size_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_activations`
--
ALTER TABLE `user_activations`
  ADD KEY `user_activations_activation_code_index` (`activation_code`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=661;

--
-- AUTO_INCREMENT cho bảng `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT cho bảng `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `prod_color`
--
ALTER TABLE `prod_color`
  MODIFY `color_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `prod_size`
--
ALTER TABLE `prod_size`
  MODIFY `size_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`prod_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `categories` (`cate_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `prod_specifi`
--
ALTER TABLE `prod_specifi`
  ADD CONSTRAINT `prod_specifi_prod_color_id_foreign` FOREIGN KEY (`prod_color_id`) REFERENCES `prod_color` (`color_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prod_specifi_prod_size_id_foreign` FOREIGN KEY (`prod_size_id`) REFERENCES `prod_size` (`size_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prod_specifi_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`prod_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
