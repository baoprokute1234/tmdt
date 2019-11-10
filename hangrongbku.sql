-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2019 lúc 06:22 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hangrongbku`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', NULL, NULL),
(2, 'Apple', NULL, NULL),
(3, 'Oneplus', NULL, NULL),
(4, 'Xiaomi', NULL, NULL),
(6, 'Oppo', NULL, NULL),
(7, 'Huawei', NULL, NULL),
(8, 'Google', NULL, NULL),
(9, 'Nokia', NULL, NULL),
(10, 'LG', NULL, NULL),
(11, 'Asus', NULL, NULL),
(12, 'Lenovo', NULL, NULL),
(13, 'Sony', NULL, NULL),
(14, 'BlackBerry', NULL, NULL),
(15, 'Meizu', NULL, NULL),
(16, 'HTC', NULL, NULL),
(17, 'Vsmart', NULL, NULL),
(18, 'ZTE', NULL, NULL),
(19, 'Vivo', NULL, NULL),
(20, 'Razer', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `productID` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `userID`, `productID`, `content`, `created_at`, `updated_at`) VALUES
(1, 10, 2, '<p>&aacute;o qu&aacute; đẹp</p>', '2019-05-04 07:20:58', '2019-05-04 07:20:58'),
(2, 10, 2, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">ấc</th>\r\n			<td>dscsd</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">sdscds</th>\r\n			<td>sdc</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">sdc</th>\r\n			<td>sdcs</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '2019-05-04 07:22:07', '2019-05-04 07:22:07'),
(3, 10, 2, '<blockquote>\r\n<h1><em>&Aacute;o rất đẹp Forza Milan</em></h1>\r\n</blockquote>', '2019-05-04 08:47:12', '2019-05-04 08:47:12'),
(4, 6, 1, '<p><span class=\"marker\">Quần t&agrave;o lao qu&aacute;</span></p>', '2019-05-04 21:12:36', '2019-05-04 21:12:36'),
(5, 6, 2, '<p>&Aacute;o đẹp m&agrave; rẻ</p>', '2019-05-04 21:15:53', '2019-05-04 21:15:53'),
(6, 6, 2, '<p><strong>Ao dep qua</strong></p>', '2019-05-08 20:10:55', '2019-05-08 20:10:55'),
(7, 10, 9, '<p>C&aacute;i n&agrave;y g&aacute;i x&agrave;i được ko</p>', '2019-05-16 02:57:27', '2019-05-16 02:57:27'),
(8, 10, 1, '<p>C&oacute; m&agrave;u trắng kh&ocirc;ng ad ?</p>', '2019-05-16 08:31:31', '2019-05-16 08:31:31'),
(9, 6, 6, '<p>Đồng hồ rất tốt</p>', '2019-05-25 08:42:42', '2019-05-25 08:42:42');

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_04_13_144429_create_categories_table', 1),
(10, '2019_04_13_145629_create_orders_table', 1),
(11, '2019_04_13_150400_create_products_table', 1),
(13, '2019_04_13_153235_create_order_detail_table', 2),
(14, '2019_04_13_154043_create_comments_table', 2),
(15, '2019_04_13_150439_create_usercarts_table', 3),
(19, '2019_05_10_233523_create_notifications_table', 4),
(20, '2019_05_19_102820_create_ratings_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `customerID` int(10) UNSIGNED NOT NULL,
  `orderID` int(10) UNSIGNED NOT NULL,
  `isNew` tinyint(1) NOT NULL,
  `isDone` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `userID`, `customerID`, `orderID`, `isNew`, `isDone`, `created_at`, `updated_at`) VALUES
(3, 1, 11, 42, 1, 0, '2019-05-13 10:20:40', '2019-05-13 10:20:40'),
(4, 10, 6, 50, 0, 0, '2019-05-18 06:32:18', '2019-05-18 06:32:18'),
(5, 10, 11, 51, 0, 0, '2019-05-18 06:43:22', '2019-05-18 06:43:22'),
(7, 6, 11, 54, 0, 0, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(8, 1, 11, 54, 1, 0, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(9, 1, 11, 54, 1, 0, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(10, 6, 11, 54, 0, 0, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(11, 6, 11, 54, 0, 0, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(12, 6, 11, 54, 0, 0, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(13, 6, 11, 54, 0, 1, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(14, 2, 6, 55, 1, 0, '2019-05-25 08:45:23', '2019-05-25 08:45:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userID` int(10) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `date`, `userID`, `total`, `created_at`, `updated_at`) VALUES
(11, '2019-05-13 11:48:27', 6, 20000000, '2019-05-13 04:48:27', '2019-05-13 04:48:27'),
(13, '2019-05-13 11:50:53', 6, 10000000, '2019-05-13 04:50:53', '2019-05-13 04:50:53'),
(14, '2019-05-13 11:52:44', 6, 10000000, '2019-05-13 04:52:44', '2019-05-13 04:52:44'),
(42, '2019-05-13 17:20:40', 11, 40045000, '2019-05-13 10:20:40', '2019-05-13 10:20:40'),
(48, '2019-05-15 17:56:47', 11, 700000, '2019-05-15 10:56:47', '2019-05-15 10:56:47'),
(49, '2019-05-16 07:32:12', 6, 360000, '2019-05-16 00:32:12', '2019-05-16 00:32:12'),
(50, '2019-05-18 13:32:18', 6, 10240000, '2019-05-18 06:32:18', '2019-05-18 06:32:18'),
(51, '2019-05-18 13:43:22', 11, 480000, '2019-05-18 06:43:22', '2019-05-18 06:43:22'),
(53, '2019-05-18 14:09:15', 10, 480000, '2019-05-18 07:09:15', '2019-05-18 07:09:15'),
(54, '2019-05-18 14:35:12', 11, 1965000, '2019-05-18 07:35:12', '2019-05-18 07:35:12'),
(55, '2019-05-25 15:45:22', 6, 30015000, '2019-05-25 08:45:22', '2019-05-25 08:45:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `productID` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oderID` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `productID`, `price`, `quantity`, `oderID`, `created_at`, `updated_at`) VALUES
(17, 6, 10000000, 2, 11, '2019-05-13 04:48:27', '2019-05-13 04:48:27'),
(20, 6, 10000000, 1, 13, '2019-05-13 04:50:53', '2019-05-13 04:50:53'),
(21, 6, 10000000, 1, 14, '2019-05-13 04:52:44', '2019-05-13 04:52:44'),
(30, 7, 15000, 3, 42, '2019-05-13 10:20:40', '2019-05-13 10:20:40'),
(31, 6, 10000000, 4, 42, '2019-05-13 10:20:40', '2019-05-13 10:20:40'),
(39, 8, 20000, 5, 48, '2019-05-15 10:56:47', '2019-05-15 10:56:47'),
(40, 2, 200000, 3, 48, '2019-05-15 10:56:48', '2019-05-15 10:56:48'),
(41, 10, 120000, 3, 49, '2019-05-16 00:32:13', '2019-05-16 00:32:13'),
(42, 10, 120000, 2, 50, '2019-05-18 06:32:18', '2019-05-18 06:32:18'),
(43, 6, 10000000, 1, 50, '2019-05-18 06:32:18', '2019-05-18 06:32:18'),
(44, 10, 120000, 3, 51, '2019-05-18 06:43:22', '2019-05-18 06:43:22'),
(45, 9, 40000, 3, 51, '2019-05-18 06:43:22', '2019-05-18 06:43:22'),
(48, 9, 40000, 2, 53, '2019-05-18 07:09:15', '2019-05-18 07:09:15'),
(49, 2, 200000, 2, 53, '2019-05-18 07:09:15', '2019-05-18 07:09:15'),
(50, 10, 120000, 4, 54, '2019-05-18 07:35:12', '2019-05-18 07:35:12'),
(51, 1, 200000, 4, 54, '2019-05-18 07:35:12', '2019-05-18 07:35:12'),
(52, 7, 15000, 3, 54, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(53, 2, 200000, 3, 54, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(54, 8, 20000, 2, 54, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(55, 7, 15000, 1, 55, '2019-05-25 08:45:23', '2019-05-25 08:45:23'),
(56, 6, 10000000, 3, 55, '2019-05-25 08:45:23', '2019-05-25 08:45:23');

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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sellerID` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cateID` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `lastTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `quantity` int(11) NOT NULL,
  `numRate` int(11) DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `numStar` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `sellerID`, `price`, `description`, `cateID`, `status`, `lastTime`, `quantity`, `numRate`, `image`, `created_at`, `updated_at`, `numStar`) VALUES
(1, 'BlackBerry KEY2', 6, 200000, '', 14, 1, '2019-11-10 05:13:27', 9, 4, 'blackberry-key2-3-400x460.png', NULL, NULL, 16),
(2, 'BlackBerry KEY2 LE', 6, 200000, '', 14, 1, '2019-11-10 05:13:31', 152, 0, 'blackberry-key2-le-1-400x460.png', NULL, NULL, 0),
(6, 'BlackBerry KEYone 4GB/64GB', 2, 10000000, '', 14, 1, '2019-11-10 05:13:33', 1090, 0, 'blackberry-keyone-1-400x460.png', NULL, NULL, 0),
(7, 'BlackBerry KEYone 3GB/32GB', 1, 15000, '', 14, 1, '2019-11-10 05:13:36', 93, 2, 'blackberry-keyone-3gb-400x460.png', NULL, NULL, 9),
(8, 'Iphone 7 Plus Gold', 6, 20000, '', 2, 1, '2019-11-10 05:13:44', 33, 0, 'iphone-7-plus-gold-400x460.png', '2019-05-10 18:43:27', '2019-05-10 18:43:27', 0),
(9, 'Iphone 8 Plus', 6, 40000, '', 2, 1, '2019-11-10 05:13:41', 3, 0, 'iphone-8-plus-1-400x460.png', '2019-05-13 04:05:07', '2019-05-13 04:05:07', 0),
(10, 'Iphone 11 Pro Max 512GB', 10, 120000, '', 2, 1, '2019-11-10 05:13:48', 34, 0, 'iphone-11-pro-max-512gb-gold-400x460.png', '2019-05-16 00:30:18', '2019-05-16 00:30:18', 0),
(11, 'Iphone XS Max 256GB White', 6, 400000, '', 2, 1, '2019-11-10 05:13:56', 20, 3, 'iphone-xs-max-256gb-white-400x460.png', '2019-05-17 21:40:08', '2019-05-17 21:40:08', 11),
(12, 'Nokia 2.2 Black', 11, 400000, '', 9, 1, '2019-11-10 05:13:52', 200, 1, 'nokia-22-black-400x460.png', '2019-05-18 07:34:13', '2019-05-18 07:34:13', 4),
(13, 'Vsmart Joy 2 Plus 2GB', 23, 2500000, '', 17, 1, '2019-11-10 04:54:56', 20, 5, 'vsmart-joy-2-plus-2gb-blue-18thangbh-400x460.png', NULL, NULL, 4),
(14, 'Vsmart Live 6GB White', 2, 2500000, '', 17, 1, '2019-11-10 04:55:20', 20, 3, 'vsmart-live-blue-18thangbh-1-400x460.png', NULL, NULL, 3),
(15, 'Vsmart Live Blue', 13, 2700000, '', 17, 1, '2019-11-10 04:57:00', 10, 3, 'vsmart-live-blue-18thangbh-1-400x460.png', NULL, NULL, 3),
(16, 'Vsmart Star Coral', 10, 2200000, '', 17, 1, '2019-11-10 04:58:13', 10, 3, 'vsmart-star-coral-400x460.png', NULL, NULL, 3),
(17, 'Samsung Galaxy A50 128GB Blue', 26, 4700000, '', 1, 1, '2019-11-10 05:00:39', 100, 4, 'samsung-galaxy-a50-128gb-blue-400x460.png', NULL, NULL, 4),
(18, 'Samsung Galaxy Note 10 Plus Silver', 26, 22900000, '', 1, 1, '2019-11-10 05:01:42', 100, 4, 'samsung-galaxy-note-10-plus-silver-400x460.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4),
(19, 'Vivo S1 Blue', 26, 2900000, '', 1, 1, '2019-11-10 05:03:18', 100, 4, 'vivo-s1-blue-400x460.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4),
(20, 'Vivo V15', 26, 2300000, '', 19, 1, '2019-11-10 05:08:18', 100, 4, 'vivo-v15-quanghai-400x460.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4),
(21, 'Vivo V17 Pro Blue', 11, 2500000, '', 19, 1, '2019-11-10 05:06:23', 77, 5, 'vivo-v17-pro-blue-noo-400x460.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5),
(22, 'Vivo Y19 White', 6, 2500000, '', 19, 1, '2019-11-10 05:08:12', 1, 3, 'vivo-y19-white-400x460.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3),
(23, 'Nokia 6.1 Plus ', 9, 2500000, '', 9, 1, '2019-11-10 05:10:01', 20, 4, 'nokia-61-plus-3-400x460.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4),
(24, 'Nokia 7.2 Black', 9, 2800000, '', 9, 1, '2019-11-10 05:10:48', 20, 4, 'nokia-72-black-400x460.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4),
(25, 'Nokia 8.1 Blue', 9, 2800000, '', 9, 1, '2019-11-10 05:11:23', 20, 4, 'nokia-81-blue-18thangbh-400x460.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4),
(26, 'Huawei Nova 2i Purple', 9, 2800000, '', 7, 1, '2019-11-10 05:17:49', 20, 4, 'huawei-nova-3i-purple-400x460.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4),
(27, 'Huawei P30 Lite', 9, 10800000, '', 7, 1, '2019-11-10 05:17:52', 20, 4, 'huawei-p30-lite-400x460.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4),
(28, 'Huawei P30 Pro', 9, 20800000, '', 7, 1, '2019-11-10 05:17:57', 20, 4, 'huawei-p30-pro-1-400x460.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4),
(29, 'Huawei Y9 Prime', 9, 1800000, '', 7, 1, '2019-11-10 05:19:29', 20, 4, 'huawei-y9-prime-2019-blue-400x460.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `rating_item` int(11) NOT NULL,
  `review` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `usercarts`
--

CREATE TABLE `usercarts` (
  `id` int(10) UNSIGNED NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `productID` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `usercarts`
--

INSERT INTO `usercarts` (`id`, `userID`, `productID`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(2, 11, 9, 1, 0, '2019-05-25 05:59:30', '2019-05-25 05:59:30'),
(3, 11, 6, 1, 0, '2019-05-25 06:08:26', '2019-05-25 06:08:26'),
(4, 26, 1, 2, 0, '2019-11-09 02:32:36', '2019-11-09 02:32:36'),
(5, 26, 9, 5, 0, '2019-11-09 02:32:46', '2019-11-09 02:32:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateOfBirth` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role` int(11) NOT NULL DEFAULT 0,
  `confirm` tinyint(1) NOT NULL DEFAULT 0,
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `avatar`, `sex`, `status`, `dateOfBirth`, `role`, `confirm`, `confirmation_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Đặng Hoàng Ân', 'an@gmail.com', '123456', '0123456789', 'Hà Nội', '256-512.png', 1, 1, '2019-05-25 15:08:19', 0, 1, NULL, NULL, NULL, NULL),
(2, 'Chu Chỉ Nhược', 'ccn@gmail.com', '123456', '0123456789', 'Trung Quốc', '256-512.png', 0, 1, '2019-05-25 15:08:23', 0, 1, NULL, NULL, NULL, NULL),
(6, 'Hoang An', '1610132@hcmut.edu.vn', '$2y$10$CCV9rISZJo2ZgmW4E0gz2OYUnsW5USZEBVhaZKvgHqsLOhvcMtdve', '0383998672', 'KTX khu A ĐHQG Thành phố Hồ Chí Minh', '1558153025.jpg', 1, 1, '2019-11-09 03:35:35', 0, 1, NULL, '5SAwyBcYGr6N2xDexSuSfCKBZeN99hign6TQ1NhyXRE6aITW6RUlYpRBGCVm', '2019-04-28 08:52:38', '2019-05-17 22:06:42'),
(9, 'Đặng Hoàng Ân', '16101322@hcmut.edu.vn', '$2y$10$laGqrtRqnX2JNT.tLEmK3e5GW7GaLnw15I9qzTnzLv/SgLqsKN/52', '0383998672', 'HCMC', '256-512.png', 1, 1, '2019-05-25 15:08:29', 0, 1, NULL, 'Zu5sDlevuWpEU0qfXjEFWbtPQ6RUdpkdcTSJCb3y', '2019-04-28 09:20:38', '2019-04-28 09:20:38'),
(10, 'Huỳnh Yến Nhi', 'nhihuynh@gmail.com', '$2y$10$xnL635mT9tfE0wb./6GiL..8w8ZDOy19yhF1kKhQxAv2MFTB4dl06', '0987654321', 'Nha Trang', '256-512.png', 0, 1, '2019-05-25 15:08:32', 0, 1, NULL, 'dLJMHorrjEhMX60WCMWAVb5DRAY82iZxKLDrxJzhFlWrnWgzlBPeuEzuoqSl', '2019-04-28 09:22:11', '2019-05-16 02:50:54'),
(11, 'Ricardo KaKa', 'rikaka@gmail.com', '$2y$10$NGT6wIUp/PeMB2SJDKX6MOz/0ZOGLOf3H0EPMSmq91NAwXlaLoapu', '0123456789', 'Brazil', '256-512.png', 1, 1, '2019-05-25 15:08:34', 0, 1, NULL, 'Ph7bA2qdDui5CACCiiZzJzBz6PnimUfwWsEQlWD8EePV9btn9XIBx3bAiGhB', '2019-05-13 08:13:02', '2019-05-25 06:13:43'),
(12, 'Alexandre Pato', 'patomilan@gmail.com', '$2y$10$YD46bymUhJvPs8qFRj7kCODOpJM4PqYagOXxeVy7a2hueP/MunLDe', '0987654321', 'Brazil', '256-512.png', 1, 1, '2019-05-25 15:08:37', 0, 1, NULL, 'WvefpgAz0uRI48s8kPUJLrcnTpSK7QPqjW2cQIZGi86BT4Hqa9D6PimyOWR8', '2019-05-17 20:37:12', '2019-05-17 20:37:12'),
(13, 'Kuroba Kaitou', 'kaitoukido1412@gmail.com', '$2y$10$947kwE7b3y1Y1g89PbKp6u8Kpz68Q4VoV.BsOonevU1oUii.C.BjO', '0123456789', 'Tokio, Japan', '256-512.png', 1, 1, '2019-05-25 15:08:40', 0, 1, NULL, 'db4rsehqM1qg714QaQXbcpk4Z6WBMhrNWJQJEdItYEkEIi403xTMrTXXkC27', '2019-05-17 20:39:18', '2019-05-17 20:39:18'),
(14, 'Supreme Admin', 'andang12111998@gmail.com', '$2y$10$c/W1WP0uYm9EgEKE/LFuzOcgZz4BXXbuU55N.OKM3BL/QQVOOm0FC', '0383998672', 'Nha Trang', '256-512.png', 1, 1, '2019-11-09 03:39:07', 1, 1, NULL, 'pvWCp3l32ZTmdPRfuFjYuKJnLK9g604PsBxJJwvFsY62tyzWAOOk2Q1viDvq', '2019-05-23 21:22:06', '2019-05-23 21:22:06'),
(23, 'Kudo Shinichi', 'phantomkaitoukido1412@gmail.com', '$2y$10$uwTVZyluTLdYIVjZuYMpM.ShmDvLJLVJikpby1YbQ6SHHSP8K.r6G', '0383998672', 'Bieka, Tokio, Japan', '256-512.png', 1, 1, '2019-05-26 04:18:14', 0, 1, NULL, 'fvt1U4le1XFWpjb7bnXJXWR3sRrHAUunErbx21m0AdCz48Cl89WUdJduRdT0', '2019-05-25 20:50:12', '2019-05-25 20:52:39'),
(24, 'dien', '1610179@hcmut.edu.vn', '$2y$10$6W92TxH/5p2rrpLZooTPquB85H9oYyV8HYJHpu91D8jXyGmzr/a32', '0123456789', 'HCMC', '256-512.png', 1, 1, '2019-05-26 04:20:26', 0, 1, NULL, 'i63q2lgtdUBj8VpIwoYOHKTvrnlwpLjKl6MsKO54', '2019-05-25 21:19:05', '2019-05-25 21:20:26'),
(26, 'Võ Khắc Trí', 'outofmilkyway@gmail.com', '$2y$10$L6oa73f8cGG1cMh8/gdXcOpyEn9Hg0JOJXo9aHBuroh9BSE0o8hPy', '0703230778', 'Tp. HCM', '256-512.png', 1, 1, '2019-11-09 08:49:44', 0, 1, NULL, '5hFft1XUndaiSeeim0EyERn0BZPYoSKjBkk4XKnz', '2019-11-09 01:48:57', '2019-11-09 01:49:44');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_userid_foreign` (`userID`),
  ADD KEY `comments_productid_foreign` (`productID`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_userid_foreign` (`userID`),
  ADD KEY `notifications_customerid_foreign` (`customerID`),
  ADD KEY `notifications_orderid_foreign` (`orderID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_userid_foreign` (`userID`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_detail_productid_foreign` (`productID`),
  ADD KEY `order_detail_oderid_foreign` (`oderID`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_sellerid_foreign` (`sellerID`),
  ADD KEY `products_cateid_foreign` (`cateID`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`),
  ADD KEY `ratings_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `usercarts`
--
ALTER TABLE `usercarts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usercarts_userid_foreign` (`userID`),
  ADD KEY `usercarts_productid_foreign` (`productID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `usercarts`
--
ALTER TABLE `usercarts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_customerid_foreign` FOREIGN KEY (`customerID`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_orderid_foreign` FOREIGN KEY (`orderID`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_oderid_foreign` FOREIGN KEY (`oderID`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_detail_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cateid_foreign` FOREIGN KEY (`cateID`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sellerid_foreign` FOREIGN KEY (`sellerID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `usercarts`
--
ALTER TABLE `usercarts`
  ADD CONSTRAINT `usercarts_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usercarts_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
