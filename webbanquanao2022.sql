-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 26, 2022 lúc 04:58 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanquanao2022`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$wHqjnF1KZkiephAY77gXfebuXJrGh/MT5UkUy6UZAAX8sLb.Gxe0W', '0828568959', NULL, 'HAUI', 'NHổn', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type_id`, `created_at`, `updated_at`) VALUES
(3, 'Trắng', 'trang', 1, '2020-11-20 16:45:10', '2020-11-20 16:45:10'),
(4, 'Đen', 'den', 1, '2020-11-20 16:45:10', '2020-11-20 16:45:10'),
(5, 'Đỏ', 'do', 1, '2020-11-20 16:45:10', '2020-11-20 16:45:10'),
(6, 'Size M', 'm', 2, '2020-11-20 16:45:10', '2020-11-20 16:45:10'),
(7, 'Size L', 'l', 2, '2020-11-20 16:45:10', '2020-11-20 16:45:10'),
(8, 'Size XL', 'xl', 2, '2020-11-20 16:45:10', '2020-11-20 16:45:10'),
(9, 'Vàng', 'vang', 1, NULL, NULL),
(11, 'Hồng', 'hong', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(22, 'THỜI TRANG BÉ GÁI', 0, 'thoi-trang-be-gai', NULL, NULL, NULL, 0, 1, '2022-04-26 12:47:49', NULL),
(23, 'QUẦN ÁO BÉ TRAI', 0, 'quan-ao-be-trai', NULL, NULL, NULL, 0, 1, '2022-04-26 12:48:21', NULL),
(24, 'ĐỒ DÙNG CHO BÉ', 0, 'do-dung-cho-be', NULL, NULL, NULL, 0, 1, '2022-04-26 12:48:44', NULL),
(25, 'ĐỒ ĐÔI CHO BÉ', 0, 'do-doi-cho-be', NULL, NULL, NULL, 0, 1, '2022-04-26 12:50:07', NULL),
(26, 'PHỤ KIỆN QUẦN ÁO', 0, 'phu-kien-quan-ao', NULL, NULL, NULL, 0, 1, '2022-04-26 12:50:15', NULL),
(27, 'Váy Đầm bé gái', 22, 'vay-dam-be-gai', NULL, NULL, NULL, 0, 1, '2022-04-26 12:51:40', NULL),
(28, 'Áo bé Gái', 22, 'ao-be-gai', NULL, NULL, NULL, 0, 1, '2022-04-26 13:35:43', NULL),
(29, 'Áo thun bé trai', 23, 'ao-thun-be-trai', NULL, NULL, NULL, 0, 1, '2022-04-26 13:35:55', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Sản phẩm rất tuyệt vời', 0, 11, 0, 2, 0, 0, '2020-11-20 16:45:44', '2020-11-20 16:45:44'),
(2, NULL, NULL, '@Nguyen Quang Duc: cám ơn shop', 1, 11, 0, 2, 0, 0, '2020-11-20 16:45:44', '2020-11-20 16:45:44'),
(5, NULL, NULL, 'sản phẩm này còn hàng không ?', 0, 10, 0, 35, 0, 0, '2022-01-07 15:17:59', NULL),
(6, NULL, NULL, '@Minh Lan: còn ạ', 5, 10, 0, 35, 0, 0, '2022-01-07 15:18:28', NULL),
(7, NULL, NULL, 'Sản phẩm này rất tốt', 0, 14, 0, 41, 0, 0, '2022-01-08 08:53:44', NULL),
(8, NULL, NULL, 'ok', 0, 11, 0, 43, 0, 0, '2022-03-29 09:54:24', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT 0,
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `e_detail_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_detail_2` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `e_detail_1`, `e_detail_2`, `created_at`, `updated_at`) VALUES
(2, 'sale 2', '2022-04-26__banner-honikids-shop.webp', '/', 0, 1, 0, 0, 0, 0, '2022-04-26 11:21:45', '2022-04-26 11:21:45'),
(3, 'sale 3', '2022-04-26__260190925-5019761438042882-2961265294494724110-n.jpg', '/', 0, 0, 1, 0, 0, 0, '2022-04-26 11:23:25', '2022-04-26 11:23:25'),
(4, 'sale 4', '2022-04-26__banner-02.png', '/', 1, 0, 0, 0, 1, 0, '2022-04-26 11:22:42', '2022-04-26 11:22:42'),
(5, 'sale 5', '2020-11-21__follow-nhan-uu-dai.jpg', '/', 0, 0, 0, 0, 0, 1, '2020-11-21 04:02:48', '2020-11-21 04:02:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức mới', 'tin-tuc-moi', NULL, NULL, NULL, 0, 1, '2020-11-20 16:46:44', '2020-11-20 16:46:44'),
(2, 'Sự Kiện', 'su-kien', NULL, NULL, NULL, 0, 1, '2020-11-20 16:46:44', '2020-11-20 16:46:44'),
(3, 'Tin nổi bậc', 'tin-noi-bac', NULL, NULL, NULL, 0, 1, '2022-01-07 15:06:11', NULL),
(4, 'Tin Xem Nhiều', 'tin-xem-nhieu', NULL, NULL, NULL, 0, 1, '2022-01-08 08:54:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_02_02_041429_create_categories_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_04_09_231820_create_producer_table', 1),
(31, '2020_04_11_010440_create_types_table', 1),
(32, '2021_03_14_204259_create_discount_code_table', 2),
(33, '2021_03_30_105937_create_payments_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(8, 10, 11, 0, 1, 33000, NULL, NULL),
(9, 10, 9, 0, 1, 42000, NULL, NULL),
(10, 10, 8, 0, 1, 65000, NULL, NULL),
(11, 11, 11, 0, 1, 33000, NULL, NULL),
(12, 11, 8, 0, 1, 65000, NULL, NULL),
(13, 12, 9, 0, 3, 42000, NULL, NULL),
(14, 12, 10, 0, 2, 16000, NULL, NULL),
(15, 13, 10, 0, 4, 16000, NULL, NULL),
(16, 14, 7, 0, 1, 33000, NULL, NULL),
(17, 14, 9, 0, 1, 42000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('duocnvoit@gmail.com', '$2y$10$pbrzwKceNbJ/t6ay5uJODOz4bweHblK6bPysnuctlVyCFO58YkoSq', '2020-05-03 15:29:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` double(8,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_vnp_response_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producer`
--

CREATE TABLE `producer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdr_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_country`, `updated_at`) VALUES
(15, 'Đầm Thun Sát Nách Bé Gái Nhiều Họa Tiết Hoa Xinh Xắn (5 - 10 tuổi)', 'dam-thun-sat-nach-be-gai-nhieu-hoa-tiet-hoa-xinh-xan-5-10-tuoi', 159000, 0, 27, 0, 5, '2022-04-26__a1.jpg', 1, 0, 1, 0, '<p>M&ugrave;a h&egrave;, đầm thun l&agrave; lựa chọn đ&uacute;ng đắn nhất bởi chất thun mềm mại, thấm h&uacute;t mồ h&ocirc;i tốt, mặc m&aacute;t. Kiểu đầm s<span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">&aacute;t&nbsp;n&aacute;ch,</span></span></span></span>&nbsp;t&ugrave;ng x&ograve;e nhẹ, phối t&uacute;i nhỏ, đầm mặc ngắn tr&ecirc;n gối, nhiều họa tiết xinh xắn. Nhiều m&agrave;u trắng m&egrave;o, trắng dưa hấu, trắng chữ, trắng hoa, hồng nữ t&iacute;nh. Size lớn cho b&eacute; từ 5 tuổi - 10 tuổi mặc nh&agrave;, đi chơi, xuống phố m&ugrave;a n&oacute;ng m&aacute;t mẻ.</p>', '<h2 style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"color:#465363\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">Đầm thun cho b&eacute; g&aacute;i mặc h&egrave; m&aacute;t mẻ, dễ thương</span></span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">M&ugrave;a h&egrave;, đầm thun l&agrave; lựa chọn đ&uacute;ng đắn nhất bởi chất thun mềm mại, thấm h&uacute;t mồ h&ocirc;i tốt, mặc m&aacute;t. Kiểu đầm s&aacute;t&nbsp;n&aacute;ch,&nbsp;t&ugrave;ng x&ograve;e nhẹ, phối t&uacute;i nhỏ, đầm mặc ngắn tr&ecirc;n gối, nhiều họa tiết xinh xắn. Nhiều m&agrave;u trắng m&egrave;o, trắng dưa hấu, trắng chữ, trắng hoa, hồng nữ t&iacute;nh. Size lớn cho b&eacute; từ 5 tuổi - 10 tuổi mặc nh&agrave;, đi chơi, xuống phố m&ugrave;a n&oacute;ng m&aacute;t mẻ.</span></span></span></span></p>\r\n\r\n<div class=\"img_desc_top\" style=\"-webkit-text-stroke-width:0px; border-radius:5px; border:1px solid #f2f2f2; margin-bottom:30px; max-width:95%; padding:10px; text-align:center; text-indent:0px; width:auto\">\r\n<p><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img alt=\"\" src=\"https://babi.vn/images/companies/1/Up%20hinh%20san%20pham/312084/dam-thun-sat-nach-be-gai%20(4).jpg?1649322689110\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border:0px; font-size:0px; height:800px; max-width:100%; outline:none !important; vertical-align:middle; width:800px\" /></span></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img alt=\"\" src=\"https://babi.vn/images/companies/1/Up%20hinh%20san%20pham/312084/dam-thun-sat-nach-be-gai%20(1).jpg?1649322700251\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border:0px; font-size:0px; height:800px; max-width:100%; outline:none !important; vertical-align:middle; width:800px\" /></span></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img alt=\"\" src=\"https://babi.vn/images/companies/1/Up%20hinh%20san%20pham/312084/dam-thun-sat-nach-be-gai%20(2).jpg?1649322705719\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border:0px; font-size:0px; height:800px; max-width:100%; outline:none !important; vertical-align:middle; width:800px\" /></span></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img alt=\"\" src=\"https://babi.vn/images/companies/1/Up%20hinh%20san%20pham/312084/dam-thun-sat-nach-be-gai%20(3).jpg?1649322710551\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border:0px; font-size:0px; height:800px; max-width:100%; outline:none !important; vertical-align:middle; width:800px\" /></span></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img alt=\"\" src=\"https://babi.vn/images/companies/1/Up%20hinh%20san%20pham/312084/dam-thun-sat-nach-be-gai%20(5).jpg?1649322715780\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border:0px; font-size:0px; height:800px; max-width:100%; outline:none !important; vertical-align:middle; width:800px\" /></span></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img alt=\"\" src=\"https://babi.vn/images/companies/1/Up%20hinh%20san%20pham/312084/dam-thun-sat-nach-be-gai%20(7).jpg?1649322729143\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border:0px; font-size:0px; height:800px; max-width:100%; outline:none !important; vertical-align:middle; width:800px\" /></span></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img alt=\"\" src=\"https://babi.vn/images/companies/1/Up%20hinh%20san%20pham/312084/dam-thun-sat-nach-be-gai%20(6).jpg?1649322738067\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border:0px; font-size:0px; height:800px; max-width:100%; outline:none !important; vertical-align:middle; width:800px\" /></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong>&nbsp;</span></span></span></span></span></span></span></p>\r\n\r\n<table align=\"center\" border=\"1\" cellspacing=\"0\" dir=\"ltr\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border-collapse:collapse; border-spacing:0px; border:1px solid #cccccc; color:#465363; font-family:arial,sans,sans-serif; line-height:20.8px; outline:none !important; table-layout:fixed; text-align:center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:1px solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">T&ecirc;n Sản Phẩm</span></span></span></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:thin solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Đầm Thun S&aacute;t&nbsp;N&aacute;ch&nbsp;B&eacute; G&aacute;i Nhiều Họa Tiết Hoa Xinh Xắn (5 - 10 tuổi)</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:1px solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">M&atilde; Sản Phẩm</span></span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:thin solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">312084</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:1px solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">M&ocirc; tả</span></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:thin solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Đầm s&aacute;t&nbsp;n&aacute;ch,&nbsp;t&ugrave;ng x&ograve;e nhẹ, phối t&uacute;i nhỏ, đầm mặc ngắn tr&ecirc;n gối, nhiều họa tiết xinh xắn, chi tiết sản phẩm như h&igrave;nh chụp&nbsp;</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:1px solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">M&agrave;u sắc</span></span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:thin solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; vertical-align:middle\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">1 - Trắng m&egrave;o<br />\r\n			2 - Trắng dưa hấu<br />\r\n			3 - Trắng chữ<br />\r\n			4 - Trắng hoa<br />\r\n			5 - H</span></span>ồng</span></span></span></span></span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:1px solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Chất liệu</span></span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:thin solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:justify; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Thun cotton mềm, mịn</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:1px solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Size Quần &aacute;o</span></span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:thin solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">9, 10, 11, 12, 13, 14</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:1px solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Size Babi</span></span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:thin solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">05, 06, 07, 08, 09, 10</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:1px solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Độ tuổi</span></span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:thin solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Từ 5 tuổi&nbsp;- 10 tuổi</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:1px solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">C&acirc;n nặng</span></span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:thin solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\">\r\n			<p><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Từ 17kg - 40kg</span></span></span></span></span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:1px solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Xuất xứ</span></span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #dcdcdc; border-left:thin solid #dcdcdc; border-right:1px solid #dcdcdc; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"color:#333333\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Việt Nam</span></span></span></span></span></span></span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 0, 0, 0, '2022-04-26 13:58:17', 150, 0, '2022-04-26 14:05:10'),
(16, 'Áo Thun Tay Ngắn Bé Gái In Hình Giày Xinh Xắn (17kg - 50kg)', 'ao-thun-tay-ngan-be-gai-in-hinh-giay-xinh-xan-17kg-50kg', 250000, 0, 28, 0, 15, '2022-04-26__ao-thun-tay-ngan-be-gai-in-hinh-giay.jpg', 0, 0, 1, 0, '<h2>&Aacute;o croptop ngắn tay thời trang cho b&eacute; g&aacute;i mặc s&agrave;nh điệu</h2>\r\n\r\n<p>Chiếc &aacute;o thun croptop lu&ocirc;n l&agrave; xu hướng thời trang h&agrave;ng đầu của Bộ sưu tập thể thao năng động cho b&eacute; g&aacute;i. Babi tiếp tục bổ sung 3 m&agrave;u: cam, đen., trắng đi size từ 17kg đến 50kg. Chất thun cotton co gi&atilde;n, thấm mồ h&ocirc;i cực th&iacute;ch. Vừa mặc đẹp, vừa thoải m&aacute;i, c&oacute; size đại. Qu&aacute; ưng lu&ocirc;n n&egrave;. Mua ngay cho b&eacute;.</p>', '<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong>&nbsp;</span></span></span></span></p>\r\n\r\n<div class=\"img_desc_top\" style=\"-webkit-text-stroke-width:0px; border-radius:5px; border:1px solid #f2f2f2; margin-bottom:30px; max-width:95%; padding:10px; text-align:center; text-indent:0px; width:auto\">\r\n<table align=\"center\" border=\"1\" cellspacing=\"0\" dir=\"ltr\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border-collapse:collapse; border-spacing:0px; border:1px solid #cccccc; font-family:arial,sans,sans-serif; line-height:20.8px; outline:none !important; table-layout:fixed\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">T&ecirc;n sản phẩm&nbsp;</span></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:1px solid #000000; text-align:left; vertical-align:middle\">\r\n			<p><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#0000cd\"><strong>&Aacute;o Thun Tay Ngắn B&eacute; G&aacute;i In H&igrave;nh Gi</strong>&agrave;y<strong>&nbsp;Xinh Xắn&nbsp; (17kg -&nbsp; 50kg)</strong></span></span></span></span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">M&atilde; sản phẩm</span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\">32570</span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">M&agrave;u sắc</span></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; vertical-align:middle\">\r\n			<p style=\"text-align:left\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">1 - Cam<br />\r\n			2 -&nbsp;</span>Đen<br />\r\n			<span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">3 - Trắng</span></span></span></span></span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\">&nbsp;</span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">Cổ tr&ograve;n, mặc rộng, &aacute;o d&aacute;ng croptpo, &aacute;o in h&igrave;nh đ&ocirc;i gi&agrave;y, h&igrave;nh in xinh xắn, sản phẩm chi tiết như h&igrave;nh chụp</span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Chất liệu&nbsp;</span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\">Vải thun cotton</span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Size Quần &aacute;o</span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Size Babi</span></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\">\r\n			<p><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\">05, 06(9,10), 07(11,12), 08(13,14), 09(15), 10(16,17), 11, 12, 13, 14</span></span></span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Tuổi</span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Từ 5 tuổi -&nbsp; 12 tuổi</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">C&acirc;n nặng</span></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Từ 17kg - 50kg</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Xuất xứ</span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Việt Nam</span></span></span></span></span></span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 0, 0, 0, '2022-04-26 14:16:33', 0, 0, NULL),
(17, 'Áo Thun Trẻ Em Tay Ngắn In Hình Dễ Thương (13kg - 55kg)', 'ao-thun-tre-em-tay-ngan-in-hinh-de-thuong-13kg-55kg', 68000, 0, 23, 0, 10, '2022-04-26__ao-thun-tay-ngan-in-hinh-de-thuong-2.jpg', 0, 0, 1, 0, '<h2>&Aacute;o thun trẻ em in h&igrave;nh dễ thương, 2 m&agrave;u đen trắng dễ phối đồ</h2>\r\n\r\n<p>Quần th&igrave; kh&ocirc;ng cần nhiều nhưng &aacute;o th&igrave; cần nhiều đấy ạ. &Aacute;o thun tay ngắn, cổ tr&ograve;n, form rộng phong c&aacute;ch, &aacute;o in h&igrave;nh dễ thương, h&igrave;nh in đẹp. Chất thun cotton mềm mại thấm h&uacute;t mồ h&ocirc;i mặc th&ocirc;ng tho&aacute;ng. 2 m&agrave;u đen v&agrave; trắng dễ phối đồ mặc sang nữa ạ. Mẹ c&oacute; con trong độ tuổi từ 3 tuổi - 12 tuổi mua ngay mặc xinh lắm ạ.</p>', '<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><img alt=\"\" src=\"https://babi.vn/images/companies/1/Up%20hinh%20san%20pham/22619/ao-thun-tay-ngan-in-hinh-de-thuong%20(4).jpg?1641976749200\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border:0px; font-size:0px; height:800px; max-width:100%; outline:none !important; vertical-align:middle; width:800px\" />H&Igrave;NH MINH HỌA</span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><img alt=\"\" src=\"https://babi.vn/images/companies/1/Up%20hinh%20san%20pham/22619/ao-thun-tay-ngan-in-hinh-de-thuong%20(5).jpg?1641976771276\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border:0px; font-size:0px; height:800px; max-width:100%; outline:none !important; vertical-align:middle; width:800px\" /></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><img alt=\"\" src=\"https://babi.vn/images/companies/1/Up%20hinh%20san%20pham/22619/ao-thun-tay-ngan-in-hinh-de-thuong%20(2).jpg?1641976780961\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border:0px; font-size:0px; height:800px; max-width:100%; outline:none !important; vertical-align:middle; width:800px\" /></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><img alt=\"\" src=\"https://babi.vn/images/companies/1/Up%20hinh%20san%20pham/22619/ao-thun-tay-ngan-in-hinh-de-thuong%20(1).jpg?1641976799032\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border:0px; font-size:0px; height:800px; max-width:100%; outline:none !important; vertical-align:middle; width:800px\" /></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><img alt=\"\" src=\"https://babi.vn/images/companies/1/Up%20hinh%20san%20pham/22619/ao-thun-tay-ngan-in-hinh-de-thuong%20(6).jpg?1641976803134\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border:0px; font-size:0px; height:800px; max-width:100%; outline:none !important; vertical-align:middle; width:800px\" /></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><img alt=\"\" src=\"https://babi.vn/images/companies/1/Up%20hinh%20san%20pham/22619/ao-thun-tay-ngan-in-hinh-de-thuong%20(3).jpg?1641976808171\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border:0px; font-size:0px; height:800px; max-width:100%; outline:none !important; vertical-align:middle; width:800px\" /></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong>&nbsp;</span></span></span></span></p>\r\n\r\n<div class=\"img_desc_top\" style=\"-webkit-text-stroke-width:0px; border-radius:5px; border:1px solid #f2f2f2; margin-bottom:30px; max-width:95%; padding:10px; text-align:center; text-indent:0px; width:auto\">\r\n<table align=\"center\" border=\"1\" cellspacing=\"0\" dir=\"ltr\" style=\"-webkit-tap-highlight-color:rgba(0, 0, 0, 0); border-collapse:collapse; border-spacing:0px; border:1px solid #cccccc; font-family:arial,sans,sans-serif; line-height:20.8px; outline:none !important; table-layout:fixed\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">T&ecirc;n sản phẩm&nbsp;</span></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:1px solid #000000; text-align:left; vertical-align:middle\">\r\n			<p><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#0000cd\"><strong>&Aacute;o Thun Tay Ngắn In H&igrave;nh Dễ Thương Cho B&eacute; (13kg -&nbsp; 55kg)</strong></span></span></span></span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">M&atilde; sản phẩm</span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\">22619</span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">M&agrave;u sắc</span></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; vertical-align:middle\">\r\n			<p style=\"text-align:left\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">1 - Trắng<br />\r\n			2 - Đen</span></span></span></span></span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">M&ocirc; tả</span></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">&Aacute;o tay ngắn, cổ tr&ograve;n, mặc rộng, &aacute;o in h&igrave;nh dẽ thương, h&igrave;nh in đẹp, &aacute;o mặc rộng, sản phẩm chi tiết như h&igrave;nh chụp</span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Chất liệu&nbsp;</span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\">Vải thun cotton</span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Size Quần &aacute;o</span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">4, 6, 8, 10, 12, 14, S, M, L</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Size Babi</span></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\">\r\n			<p><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\">03, 04, 06, 08, 09, 10, 11, 12, 13</span></span></span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Tuổi</span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Từ 3 tuổi -&nbsp; 12 tuổi</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">C&acirc;n nặng</span></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Từ 13.5kg - 55kg</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><strong><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Xuất xứ</span></span></strong></span></span></span></span></span></td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:thin solid #dcdcdc; border-right:1px solid #000000; border-top:thin solid #dcdcdc; text-align:left; vertical-align:middle\"><span style=\"font-size:13px\"><span style=\"color:#465363\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-family:sans-serif,Arial,Verdana,Trebuchet MS\">Việt Nam</span></span></span></span></span></span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 0, 0, 0, '2022-04-26 14:21:09', 160, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(156, 10, 1),
(157, 9, 1),
(158, 9, 2),
(159, 9, 3),
(160, 8, 1),
(161, 8, 2),
(162, 6, 1),
(163, 6, 2),
(164, 6, 3),
(165, 6, 4),
(166, 6, 5),
(167, 5, 6),
(168, 5, 7),
(169, 4, 1),
(172, 2, 6),
(173, 3, 6),
(175, 1, 1),
(182, 7, 2),
(189, 12, 5),
(190, 12, 6),
(191, 13, 5),
(192, 13, 7),
(195, 14, 5),
(196, 14, 8),
(197, 11, 1),
(198, 11, 2),
(199, 11, 3),
(209, 15, 3),
(210, 15, 6),
(211, 15, 7),
(212, 16, 3),
(213, 16, 4),
(214, 16, 6),
(215, 16, 7),
(216, 16, 8),
(217, 17, 3),
(218, 17, 4),
(219, 17, 9),
(220, 17, 6),
(221, 17, 7),
(222, 17, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(69, 10, 2),
(70, 10, 6),
(71, 10, 7),
(72, 9, 1),
(73, 9, 3),
(74, 9, 6),
(75, 8, 3),
(76, 8, 5),
(77, 8, 6),
(81, 6, 3),
(82, 5, 3),
(83, 5, 4),
(84, 5, 5),
(85, 4, 1),
(86, 4, 2),
(87, 4, 3),
(92, 2, 1),
(93, 2, 2),
(94, 3, 1),
(95, 3, 2),
(96, 3, 7),
(100, 1, 1),
(101, 1, 2),
(102, 1, 3),
(106, 7, 3),
(107, 7, 4),
(108, 7, 5),
(115, 12, 5),
(116, 12, 8),
(117, 13, 2),
(119, 14, 8),
(120, 11, 1),
(121, 11, 2),
(122, 11, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(3, 37, 11, 2, 0, 'Sản phẩm rất tốt', '2022-01-07 14:53:54', '2022-01-07 14:53:54'),
(4, 38, 12, 5, 0, 'Sản phẩm rất tuyệt', '2022-01-07 14:53:54', '2022-01-07 14:53:54'),
(5, 39, 9, 3, 0, 'sản phẩm tốt nhất tôi từng mua!', '2022-01-07 14:53:54', '2022-01-07 14:53:54'),
(6, 36, 7, 5, 0, 'giá cả rất phải chăng!', '2022-01-07 14:53:54', '2022-01-07 14:53:54'),
(7, 35, 7, 4, 0, 'giao hàng rất nhanh, rất tốt !', '2022-01-07 14:53:54', '2022-01-07 14:53:54'),
(8, 41, 14, 5, 0, 'rất tốt đánh giá 5*', '2022-01-08 08:53:56', '2022-01-08 08:53:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'slide 1', '/', '2022-04-26__kclosetvn-648225.jpg', 1, 1, 1, '2022-04-26 10:19:00', '2022-04-26 10:19:00'),
(2, 'slide 2', '/', '2022-04-26__slider-1.webp', 1, 1, 0, '2022-04-26 11:03:37', '2022-04-26 11:03:37'),
(3, 'slide 5', '/', '2022-04-26__promo-banner4-2429366b8e9c49fa98cdcb0d68e042f5.webp', 1, 1, 0, '2022-04-26 11:03:54', '2022-04-26 11:03:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng dẫn chi tiết mua hàng', NULL, 1, NULL, '<p>Khi mua h&agrave;ng bạn k&iacute;ch chọn size sản phẩm</p>\r\n\r\n<p>Tiếp theo đ&oacute; k&iacute;ch v&agrave;o mua ngay&nbsp;</p>', '2020-11-20 16:48:17', '2020-11-20 16:48:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tst_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `t_name`, `t_slug`, `created_at`, `updated_at`) VALUES
(1, 'Màu sắc', 'khoi-luong', '2021-12-20 16:48:39', '2021-12-20 16:48:39'),
(2, 'Size', 'don-vi', '2020-11-20 16:48:39', '2020-11-20 16:48:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `log_login`, `count_comment`, `address`, `avatar`, `google_id`, `facebook_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(34, 'Minh Khanh', 'minhkhanh@gmail.com', NULL, '$2y$10$aA0To1xYapIqk4.bmSsAAe9p9n4iGAXtYnm6WAnQYKf2NkBSfNRKW', '037575713213', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-01-07 14:00:35', NULL),
(36, 'Minh Thái', 'minhthai@gmail.com', NULL, '$2y$10$MA1dE0zHKmBh/559L4WQDOpiRabbG7.sLvxwSjAge2bWfIsjEIusi', '0375754147', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-01-07 14:34:57', NULL),
(37, 'Minh Dương', 'minhduong@gmail.com', NULL, '$2y$10$wHqjnF1KZkiephAY77gXfebuXJrGh/MT5UkUy6UZAAX8sLb.Gxe0W', '9437284632', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-01-07 14:35:40', NULL),
(38, 'Minh Châu', 'minhchau@gmail.com', NULL, '$2y$10$wHqjnF1KZkiephAY77gXfebuXJrGh/MT5UkUy6UZAAX8sLb.Gxe0W', '0364543134', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-01-07 14:35:40', NULL),
(39, 'Minh Mạnh', 'minhmanh@gmail.com', NULL, '$2y$10$wHqjnF1KZkiephAY77gXfebuXJrGh/MT5UkUy6UZAAX8sLb.Gxe0W', '03765323323', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-01-07 14:35:40', NULL),
(41, 'Khánh Minh', 'minhkhanhchanel@gmail.com', NULL, 'eyJpdiI6IjlobDg5SHRcL3kzbThiNENQT0g4eVp3PT0iLCJ2YWx1ZSI6InZBbnk2b3lnWE9MYU1GQlwvdGxPS3k0RFp0ckdXYmdkTmo5bjFvV3YzQ1lzPSIsIm1hYyI6ImQ0NTQ5NzI2ODM5YTkyMzMwN2YxMjU1ODQ5NzAzMzE0Mjc0ZTZlZDRlNmFjZjI5YTIyZjYyZDY4NGIzZGY2ZTEifQ==', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-01-08 08:53:24', '2022-01-08 08:53:24'),
(42, 'Giày Nike Hot', 'admin1s@gmail.com', NULL, '$2y$10$THuOhd/f70vSUOOpJrmcKem7Wy.EQ2NZQTIkBCk.mVTlvduzUUIvS', '0828568959', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-21 14:05:10', NULL),
(43, 'Giày Nike Cá Tính', 'duocphamrivervn@gmail.com', NULL, '$2y$10$LcVje1OQcvcQslJ8bWSWb.a4zxC5Ra0umlKlNgQVpSP6L16vtDW.G', '0928568959', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-03-29 09:51:11', NULL),
(44, 'Giày Nike Cá Tính', 'adminaa2@gmail.com', NULL, '$2y$10$qREscY9juMp4kPrIr6/GU.tOcwm6yRKwzgnHVpvzCNqNWzmHDqOti', '0822568959', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-04-26 13:59:25', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_type_id_index` (`atb_type_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producer_pdr_slug_unique` (`pdr_slug`),
  ADD UNIQUE KEY `producer_pdr_email_unique` (`pdr_email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_t_name_unique` (`t_name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `producer`
--
ALTER TABLE `producer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
