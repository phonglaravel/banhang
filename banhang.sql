-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2022 at 08:18 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug_blog` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` int(11) NOT NULL,
  `ngaytao` varchar(255) NOT NULL,
  `giotao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug_blog`, `image`, `content`, `status`, `ngaytao`, `giotao`) VALUES
(1, 'GIRLS PINK T SHIRT ARRIVED IN STORE', 'girls-pink-t-shirt-arrived-in-store', 'girls-pink-t-shirt-arrived-in-store_QeU3b.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>', 0, '16/07/2022', '15:25:47'),
(2, 'Duy Phong', 'duy-phong', 'nguyen-duy-phong_QjCbl.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>', 0, '16/07/2022', '15:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug_brand` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug_brand`, `description`, `meta_keywords`, `meta_title`, `status`) VALUES
(5, 'Dio', 'dio', 'Thời trang hiệu Dio đẹp và rẻ', 'Áo dio, quần dio, phụ kiện dio', 'Đồ dio', 0),
(6, 'Adidas', 'adidas', NULL, 'Áo addidas, quần adidas', 'đồ adidas', 0),
(7, 'Bitis', 'bitis', NULL, 'giày dép bitis', 'đồ bitis', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug_category` varchar(255) NOT NULL,
  `categoryproduct_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `description` text NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug_category`, `categoryproduct_id`, `status`, `description`, `meta_keywords`, `meta_title`) VALUES
(1, 'Áo nam', 'ao', 12, 1, 'Áo nam đẹp', 'Áo nam đẹp', 'Áo nam đẹp'),
(2, 'Quần nam', 'quan', 12, 0, 'Quần nam đẹp', 'Quần nam đẹp', 'Quần nam đẹp'),
(3, 'Bộ đồ nam', 'bo-do', 12, 1, 'Bộ đồ nam đẹp', 'Bộ đồ nam đẹp', 'Bộ đồ nam đẹp'),
(4, 'Giày dép nam', 'giay-dep', 12, 0, 'Giày dép nam đẹp', 'Giày dép nam đẹp', 'Giày dép nam đẹp'),
(5, 'Áo nữ', 'ao', 13, 0, 'Áo nữ đẹp', 'Áo nữ đẹp', 'Áo nữ đẹp'),
(6, 'Quần nữ', 'quan', 13, 0, 'Quần nữ đẹp', 'Quần nữ đẹp', 'Quần nữ đẹp'),
(7, 'Váy', 'vay', 13, 1, 'Váy nữ đẹp', 'Váy nữ đẹp', 'Váy nữ đẹp'),
(8, 'Phụ kiện nữ', 'phu-kien', 13, 1, 'Phụ kiện nữ đẹp', 'Phụ kiện nữ đẹp', 'Phụ kiện nữ đẹp'),
(9, 'Giày dép nữ', 'giay-dep', 13, 0, 'Giày dép nữ đẹp', 'Giày dép nữ đẹp', 'Giày dép nữ đẹp'),
(10, 'Phụ kiện nam', 'phu-kien-nam', 12, 1, 'Phụ kiện nam', 'Phụ kiện nam', 'Phụ kiện nam');

-- --------------------------------------------------------

--
-- Table structure for table `categoryproducts`
--

CREATE TABLE `categoryproducts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug_categoryproduct` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoryproducts`
--

INSERT INTO `categoryproducts` (`id`, `title`, `slug_categoryproduct`, `description`, `meta_keywords`, `meta_title`, `status`) VALUES
(12, 'Nam giới', 'nam-gioi', 'Áo quần phụ kiện nam đẹp mới và rẻ', 'Áo quần nam, phụ kiện nam', 'Đồ nam', 0),
(13, 'Phụ nữ', 'phu-nu', 'Áo quần phụ kiện nữ đẹp mới và rẻ', 'Áo quần nữ, phụ kiện nữ', 'Đồ nữ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cmts`
--

CREATE TABLE `cmts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `ngaytao` varchar(255) NOT NULL,
  `giotao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cmts`
--

INSERT INTO `cmts` (`id`, `name`, `comment_id`, `comment`, `ngaytao`, `giotao`) VALUES
(1, 'Duy Phong', 4, 'Đúng bạn ơi', '16/Jul/2022', '16:53:31'),
(2, 'Phong', 2, 'Đúng', '16/Jul/2022', '16:54:12'),
(3, 'phongs', 2, 'HAy', '16/Jul/2022', '16:54:29'),
(4, 'Tài khoản khách', 4, 'Hay quá', '16/Jul/2022', '16:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `comment_blog`
--

CREATE TABLE `comment_blog` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `ngaytao` varchar(255) NOT NULL,
  `giotao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment_blog`
--

INSERT INTO `comment_blog` (`id`, `blog_id`, `name`, `comment`, `ngaytao`, `giotao`) VALUES
(1, 1, 'Duy Phong', 'Bài viết rất hay', '16/Jul/2022', '16:19:17'),
(2, 2, 'Duy Thai', 'Bài viết rất ý nghĩa', '16/Jul/2022', '16:19:59'),
(3, 1, 'Duy Thai', 'Bài viết rất hay', '16/Jul/2022', '16:20:17'),
(4, 2, 'Nhoxdeptrai', 'Bài viết hay quá ad ơi', '16/Jul/2022', '16:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `comment_product`
--

CREATE TABLE `comment_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `comment` text NOT NULL,
  `giotao` varchar(255) NOT NULL,
  `ngaytao` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment_product`
--

INSERT INTO `comment_product` (`id`, `name`, `email`, `comment`, `giotao`, `ngaytao`, `product_id`) VALUES
(3, 'Duy Thai', 'thai@gmail.com', 'Sản phẩm rất đẹp', '11:44:58', '28/07/2022', 28),
(4, 'Duy Phong', 'phong@gmail.com', 'Giao hàng nhanh', '11:47:01', '28/07/2022', 28),
(5, 'Phong', NULL, 'Áo đẹp', '12:05:49', '28/07/2022', 26),
(6, 'Duy Thai', 'thai@gmail.com', 'Đẹp', '15:04:09', '28/07/2022', 29);

-- --------------------------------------------------------

--
-- Table structure for table `coupones`
--
-- Error reading structure for table banhang.coupones: #1030 - Got error 194 &quot;Tablespace is missing for a table&quot; from storage engine InnoDB
-- Error reading data for table banhang.coupones: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `banhang`.`coupones`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `coupon` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `tile` int(11) NOT NULL,
  `dieukien` int(20) NOT NULL,
  `start` varchar(50) NOT NULL,
  `end` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `amount`, `status`, `tile`, `dieukien`, `start`, `end`) VALUES
(12, 'abc', 2, 1, 50000, 0, '20/07/2022', '31/07/2022'),
(13, 'aaaa', 9, 2, 10, 0, '28/07/2022', '31/08/2022'),
(14, 'bbb', 2, 1, 50000, 0, '20/07/2022', '28/07/2022');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `like_product`
--

CREATE TABLE `like_product` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `like_product`
--

INSERT INTO `like_product` (`id`, `user_id`, `product_id`) VALUES
(123, 8, 24);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_11_100727_create_admins_table', 2),
(6, '2022_07_12_065706_tbl_payment', 3),
(7, '2022_07_12_065910_tbl_order', 3),
(8, '2022_07_12_070007_tbl_order_details', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phiship`
--

CREATE TABLE `phiship` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phiship`
--

INSERT INTO `phiship` (`id`, `ten`, `phi`) VALUES
(1, 'An Giang', 20000),
(2, 'Bà Rịa - Vũng Tàu', 30000),
(3, 'Bạc Liêu', 20000),
(4, 'Bắc Kạn', 20000),
(5, 'Bắc Giang', 20000),
(6, 'Bắc Ninh', 20000),
(7, 'Bến Tre', 20000),
(8, 'Bình Dương', 20000),
(9, 'Bình Định', 20000),
(10, 'Bình Phước', 20000),
(11, 'Bình Thuận', 20000),
(12, 'Cà Mau', 20000),
(13, 'Cao Bằng', 20000),
(14, 'Cần Thơ', 20000),
(15, 'Đà Nẵng', 20000),
(16, 'Đắk Lắk', 20000),
(17, 'Đắk Nông', 20000),
(18, 'Đồng Nai', 20000),
(19, 'Đồng Tháp', 20000),
(20, 'Điện Biên', 20000),
(21, 'Gia Lai', 20000),
(22, 'Hà Giang', 20000),
(23, 'Hà Nam', 20000),
(24, 'Hà Nội', 20000),
(25, 'Hà Tĩnh', 20000),
(26, 'Hải Dương', 20000),
(27, 'Hải Phòng', 20000),
(28, 'Hòa Bình', 20000),
(29, 'Hậu Giang', 20000),
(30, 'Hưng Yên', 20000),
(31, 'Thành phố Hồ Chí Minh', 0),
(32, 'Khánh Hòa', 20000),
(33, 'Kiên Giang', 20000),
(34, 'Kon Tum', 20000),
(35, 'Lai Châu', 20000),
(36, 'Lào Cai', 20000),
(37, 'Lạng Sơn', 20000),
(38, 'Lâm Đồng', 20000),
(39, 'Long An', 20000),
(40, 'Nam Định', 20000),
(41, 'Nghệ An', 20000),
(42, 'Ninh Bình', 20000),
(43, 'Ninh Thuận', 20000),
(44, 'Phú Thọ', 20000),
(45, 'Phú Yên', 20000),
(46, 'Quảng Bình', 20000),
(47, 'Quảng Nam', 20000),
(48, 'Quảng Ngãi', 20000),
(49, 'Quảng Ninh', 20000),
(50, 'Quảng Trị', 20000),
(51, 'Sóc Trăng', 20000),
(52, 'Sơn La', 20000),
(53, 'Tây Ninh', 20000),
(54, 'Thái Bình', 20000),
(55, 'Thái Nguyên', 20000),
(56, 'Thanh Hóa', 20000),
(57, 'Thừa Thiên - Huế', 20000),
(58, 'Tiền Giang', 20000),
(59, 'Trà Vinh', 20000),
(60, 'Tuyên Quang', 20000),
(61, 'Vĩnh Long', 20000),
(62, 'Vĩnh Phúc', 20000),
(63, 'Yên Bái', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug_product` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `content` text NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `ngaytao` date NOT NULL,
  `ngaycapnhat` date DEFAULT NULL,
  `tags` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug_product`, `quantity`, `category_id`, `cate_id`, `brand_id`, `description`, `content`, `price`, `image`, `status`, `ngaytao`, `ngaycapnhat`, `tags`) VALUES
(24, 'Kính', 'kinh', 20, 12, 8, 5, NULL, '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">\r\n<ul>\r\n	<li style=\"text-align:left\">Đặc điểm quang học của kính: UV400 、 Chống Xanh</li>\r\n	<li style=\"text-align:left\">Chất liệu khung: PC+Kim loại</li>\r\n	<li style=\"text-align:left\">Dành cho: Nữ/Nam</li>\r\n	<li style=\"text-align:left\">Dành cho: Người lớn</li>\r\n	<li style=\"text-align:left\">Kích thước mắt kính:</li>\r\n	<li style=\"text-align:left\">Tổng Chiều rộng khung (mm): năm 145</li>\r\n	<li style=\"text-align:left\">Chiều rộng mặt kính (mm) :47</li>\r\n	<li style=\"text-align:left\">Chiều cao mặt kính (mm) :40</li>\r\n	<li style=\"text-align:left\">Chiều rộng cầu mũi (mm) :18</li>\r\n	<li style=\"text-align:left\">Chiều dài của gọng (mm) :143</li>\r\n	<li style=\"text-align:left\">Gói hàng bao gồm: 1* kính mát</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245); color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\">\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\"><span style=\"font-family:none\">CHÀO MỪNG BẠN ĐẾN VỚI GMLV MALL</span></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 0px; color: transparent; outline: none; text-align: center;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">&nbsp;</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">Hỗ trợ các đơn hàng bán buôn và dropshipping.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 0px; color: transparent; outline: none; text-align: center;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">&nbsp;</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">Chúng tôi cung cấp các thiết kế thời trang nhất với giá cả hợp lý.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 0px; color: transparent; outline: none; text-align: center;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">&nbsp;</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">Vui lòng để lại phản hồi đầy đủ 5 sao nếu bạn thích sản phẩm, một món quà miễn phí sẽ được cung cấp trong đơn hàng tiếp theo của</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 0px; color: transparent; outline: none; text-align: center;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">&nbsp;</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">bạn.</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\">\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">\r\n<h2>Specifications of GMLV Kính Mát Southside Chữ V Eeyewear Mắt Kính Râm Hàn Quốc Tròng Màu Thời Trang Nam Nữ Cực đẹp</h2>\r\n\r\n<div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\">\r\n<ul>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Brand</span>\r\n\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">GMLV</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">SKU</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">1836964204_VNAMZ-8305428089</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Frame Shape</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Square</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Frame Type</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Full rim</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Sunglasses Lens Type</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Mirrored</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Metal Frame Material</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Plastic</div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>', 50000, 'kinh_Lcoek.jpg', 0, '2022-07-13', '2022-07-28', 'kính,kính nam,kính cận'),
(25, 'Áo khoác nữ', 'ao-khoac-nu', 9, 13, 5, 5, NULL, '<h2>Product details of Áo khoác nữ Áo khoác nữ gió dù 2 lớp chống nắng phối viền ngộ nghĩnh dễ thương</h2>\r\n\r\n<div class=\"pdp-product-detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">\r\n<div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden; box-sizing: border-box;\">\r\n<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\">\r\n<ul>\r\n	<li style=\"text-align:left\">Áo khoác nữ Áo khoác nữ gió dù 2 lớp chống nắng phối viền ngộ nghĩnh-dễ thương</li>\r\n	<li style=\"text-align:left\">Chất liệu: dù 2 lớp</li>\r\n	<li style=\"text-align:left\">Free size dưới 60kg</li>\r\n	<li style=\"text-align:left\">Hàng xưởng không qua trung gian, đẹp, vừa túi tiền</li>\r\n	<li style=\"text-align:left\">Điều kiện đổi trả theo đúng quy định của Shopee</li>\r\n	<li style=\"text-align:left\">+ Điều kiện áp dụng (trong vòng 03 ngày kể từ khi nhận sản phẩm):</li>\r\n	<li style=\"text-align:left\">Hàng hoá vẫn còn mới, chưa qua sử dụng</li>\r\n	<li style=\"text-align:left\">Hàng hóa hư hỏng do vận chuyển hoặc do nhà sản xuất.</li>\r\n	<li style=\"text-align:left\">+ Trường hợp được chấp nhận:</li>\r\n	<li style=\"text-align:left\">Hàng không đúng chủng loại, mẫu mã như quý khách đặt hàng</li>\r\n	<li style=\"text-align:left\">Không đủ số lượng, không đủ bộ như trong đơn hàng</li>\r\n	<li style=\"text-align:left\">Tình trạng bên ngoài bị ảnh hưởng như rách bao bì, bong tróc, bể vỡ…</li>\r\n	<li style=\"text-align:left\">+ Trường hợp không đủ điều kiện áp dụng chính sách:</li>\r\n	<li style=\"text-align:left\">Quá 03 ngày kể từ khi Quý khách nhận hàng</li>\r\n	<li style=\"text-align:left\">Gửi lại hàng không đúng mẫu mã</li>\r\n	<li style=\"text-align:left\">Đặt nhầm sản phẩm, chủng loại.</li>\r\n	<li style=\"text-align:left\">&nbsp;</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245);\">\r\n<p><strong>Áo khoác nữ Áo khoác nữ gió dù 2 lớp chống nắng phối viền ngộ nghĩnh dễ thương dễ phối đồ dễ mặc phù hợp mọi lứa tuổi hàng việt nam chất lượng cao</strong></p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://lzd-img-global.slatic.net/g/p/13604545179f07649c44f6c0d8ab9571.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://lzd-img-global.slatic.net/g/p/976c0a29b0c53d6b06f048015eb0419f.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://lzd-img-global.slatic.net/g/p/24f7c478c00bf48df87565413f8024c4.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://lzd-img-global.slatic.net/g/p/88f3dcdfcb3429bc1ac139d08f39339e.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\">\r\n<h2>Specifications of Áo khoác nữ Áo khoác nữ gió dù 2 lớp chống nắng phối viền ngộ nghĩnh dễ thương</h2>\r\n\r\n<div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\">\r\n<ul>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Brand</span>\r\n\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">No Brand</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">SKU</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">1715352116_VNAMZ-7639416648</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Clothing Material</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Polyester</div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 100000, 'ao-khoac-nu_4pzWn.jpg', 0, '2022-07-13', '2022-07-28', 'áo khoác nữ,áo khoác đẹp,áo nữ,áo khoác'),
(26, 'Áo khoác nam', 'ao-khoac-nam', 1, 12, 1, 6, NULL, '<h2>Product details of Spring and Autumn Thin Jacket Men\'s Hooded Jacket Young Men\'s Jacket Men\'s Clothing</h2>\r\n\r\n<div class=\"pdp-product-detail\" style=\"color: rgb(0, 0, 0); margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">\r\n<div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden; box-sizing: border-box;\">\r\n<div class=\"message message_platform_pc message_type_info\" style=\"margin: 0px; padding: 10px 10px 5px; display: flex; border: 1px solid rgb(239, 240, 245);\">\r\n<div class=\"message__text\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"message__item\" style=\"margin: 0px 0px 4px; padding: 0px; color: rgb(158, 158, 158); line-height: 16px;\">This is an imported product sold by cross border sellers. Selling invoice is not supported in this case</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\">\r\n<ul>\r\n	<li style=\"text-align:left\">Basic Style：Youth Pop</li>\r\n	<li style=\"text-align:left\">Color：Red,Light Gray,Black</li>\r\n	<li style=\"text-align:left\">Size：M,L,XL,3XL,4XL,2XL,5XL</li>\r\n	<li style=\"text-align:left\">Version：Fit</li>\r\n	<li style=\"text-align:left\">Application Scenarios：Casual</li>\r\n	<li style=\"text-align:left\">Suitable for Season：Spring</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245);\">\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/3467ac48ef169345a129843d78af4978.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/97611d33216bc9e4087f8f3a63dd7abf.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/92717c5d262b3e66ddd8d94a5906a22a.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/ae0da52af184c780b7dd2d0021ac451b.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/acf61784352d9965727453dd9728ad12.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/76c3c00afcd8c3b4f7991df0f76a3b3c.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/63e1dd1e230077c8b985b166fd63ac4b.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/9e807ccb06a4c1dfb14e6730de12ee1d.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/747db964bc80e36b98703deed5b6a79b.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/fb4f52315a13308985786aabb73ec666.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/ed510854bdb875356e5ff13c83e0193e.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/ef9c64268ff69bc367785e6211c3fd9d.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/0da00390f652569759990a00d3131269.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/4ce6fa9e0a409beb38c848a40a5107af.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/2e86bcd0d9a8847196f6c46f71846c4d.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/a27743476a11d8b01439124c8dca5e39.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/fe322f00c783bae41d2769b9fa8a2405.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\">\r\n<h2>Specifications of Spring and Autumn Thin Jacket Men\'s Hooded Jacket Young Men\'s Jacket Men\'s Clothing</h2>\r\n\r\n<div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\">\r\n<ul>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Brand</span>\r\n\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">No Brand</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">SKU</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">1794849810_VNAMZ-8066944987</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Jacket Closure</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Zipper</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Clothing Material</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Polyester</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Pattern</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Logo</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Fashion Style</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Casual</div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 172000, 'ao-khoac-nam_WeD17.jpg', 0, '2022-07-13', '2022-07-28', 'áo khoác nam,áo khoác nam đẹp'),
(27, 'Dép nam', 'dep-nam', 20, 12, 4, 5, NULL, '<h2><span style=\"font-size:10px\">Product details of Dép JD bóng rổ Dép quai ngang nam nữ hoạt tiết bóng rổ nhiều màu - thiết kế ấn tượng, nổi bật</span></h2>\r\n\r\n<div class=\"pdp-product-detail\" style=\"color: rgb(0, 0, 0); margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">\r\n<div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden; box-sizing: border-box;\">\r\n<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\">\r\n<ul>\r\n	<li><span style=\"font-size:10px\">Dép Nam Dép Quai Ngang Nam JD Đúc Nguyên Khối Siêu Êm Siêu Bền Tuyệt Đẹp</span></li>\r\n	<li><span style=\"font-size:10px\">Thời tiết nắng nóng rồi, đi em này cực phê luôn. Đảm bảo không bị bí chân, không bị ra mồ hôi chân. Rửa chân nhanh khô</span></li>\r\n	<li><span style=\"font-size:10px\">Phải nói là cực phẩm. Êm, mịn chân, cảm giác cao hơn 1 chút nhờ ăn gian chiều cao 3cm. Đi, chạy cực nhẹ, không phát ra tiếng động.</span></li>\r\n	<li><span style=\"font-size:10px\">Màu sắc: 4 màu (đen đen, đỏ, trắng, đen xám)</span></li>\r\n	<li><span style=\"font-size:10px\">Y hình 100%, chịu nước tuyệt vời, siêu êm</span></li>\r\n	<li><span style=\"font-size:10px\">Dép có độ bền cao,màu sắc cá tính, nổi bật. Có nhiều màu sắc nên cực dễ phối đồ.</span></li>\r\n	<li><span style=\"font-size:10px\">Thiết kế lót cực mềm cực êm nên đi cực dễ chịu, không gây đau chân, chai bàn chân</span></li>\r\n</ul>\r\n</div>\r\n\r\n<div id=\"detail_decorate_root\" style=\"margin: 0px; padding: 0px; width: 960px;\">\r\n<div class=\"engine-app\" id=\"_root\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"Root\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"hc\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"hd\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"bd\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_-999\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_-999_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_0_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_1\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_1_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315006882\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 192px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; background-color: rgb(238, 237, 217); width: 500px; position: relative; height: 150px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\">\r\n<p><span style=\"font-size:10px\">Dép JD hydro quai ngang bóng rổ JD nam nhiều màu</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_2\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_2_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315060185\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:12px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/b655e06a347f8088d25c0596dcb596d9.jpeg_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:32px; line-height:normal; margin:0px; padding:0px; position:absolute; top:8px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_3\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_3_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029942\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 448px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 350px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\">\r\n<p><span style=\"font-size:10px\">Thông tin sản phẩm: - Chất liệu: Dép Jordan JD bóng rổ quai ngang dán được làm từ chất liệu da tổng hợp (Synthetic leather)&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:10px\">Đế foam kết hợp lót được làm từ 1 loại polymer có tên EVA (Ethylene Vinyl Acetate Copolymer) không gây hại cho da. - Kiểu dáng: </span></p>\r\n\r\n<p><span style=\"font-size:10px\">Dép Jordan JD bóng rổ quai ngang dán có quai ngang, gắn kết với nhau bằng miếng dán.</span></p>\r\n\r\n<p><span style=\"font-size:10px\">Đế bằng. - Đặc điểm sử dụng: - Quai có thể điều chỉnh phù hợp với mọi kích thước. </span></p>\r\n\r\n<p><span style=\"font-size:10px\">Thích hợp sử dụng trong mọi hoàn cảnh, điều kiện thời tiết. - Cam kết của shop: - Sản phẩm giống hình 100%. </span></p>\r\n\r\n<p><span style=\"font-size:10px\">- Hình chụp thật tại shop, chất liệu, trọng lượng và kiểu dáng đúng mô tả.</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_4\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_4_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315064058\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/93870d384b89e959bc0561129d4d403e.jpeg_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:40px; line-height:normal; margin:0px; padding:0px; position:absolute; top:11px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_5\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_5_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029945\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/4d0e0bd82b5443046ea54edcc9536471.jpeg_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:42px; line-height:normal; margin:0px; padding:0px; position:absolute; top:15px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_6\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_6_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315039677\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/fb8953b54c050c3752cf23178434bc7b.jpeg_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:39px; line-height:normal; margin:0px; padding:0px; position:absolute; top:13px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_7\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_7_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315051599\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/c9b51392f718d85b8ec5e655e7b92d77.jpeg_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:37px; line-height:normal; margin:0px; padding:0px; position:absolute; top:15px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_8\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_8_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375974197\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/14aee4aaed0ccf38cfaa43d217f069be.png_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:41px; line-height:normal; margin:0px; padding:0px; position:absolute; top:10px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_9\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_9_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941939\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/dbf48410834d40d50f731ed6a3bba09c.png_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:46px; line-height:normal; margin:0px; padding:0px; position:absolute; top:11px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_10\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_10_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941960\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/279d3f0e10c9459d7155aeb195af0e0e.png_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:53px; line-height:normal; margin:0px; padding:0px; position:absolute; top:15px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"ft\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"fc\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"hc\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"hd\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"bd\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_-999\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_-999_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_0_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_1\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_1_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315006882\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_2\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_2_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315060185\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_3\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_3_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029942\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_4\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_4_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315064058\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_5\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_5_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029945\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_6\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_6_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315039677\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_7\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_7_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315051599\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_8\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_8_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375974197\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_9\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_9_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941939\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_10\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_10_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941960\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_0_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_0_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_1\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_1_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315006882\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_1_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315006882\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_2\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_2_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315060185\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_2_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315060185\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_3\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_3_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029942\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_3_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029942\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_4\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_4_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315064058\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_4_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315064058\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_5\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_5_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029945\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_5_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029945\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_6\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_6_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315039677\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_6_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315039677\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_7\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_7_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315051599\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_7_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315051599\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_8\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_8_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375974197\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_8_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375974197\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_9\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_9_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941939\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_9_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941939\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_10\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_10_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941960\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_10_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941960\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"ft\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"fc\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_-999\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_-999_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_-999_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\">\r\n<h2><span style=\"font-size:10px\">Specifications of Dép JD bóng rổ Dép quai ngang nam nữ hoạt tiết bóng rổ nhiều màu - thiết kế ấn tượng, nổi bật</span></h2>\r\n\r\n<div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px; width:600px;\">\r\n<ul>\r\n	<li><span style=\"font-size:10px\"><span style=\"color:rgb(117, 117, 117)\">Brand</span></span>\r\n\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\"><span style=\"font-size:10px\">LAGADO</span></div>\r\n	</li>\r\n	<li><span style=\"font-size:10px\"><span style=\"color:rgb(117, 117, 117)\">SKU</span></span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\"><span style=\"font-size:10px\">1510479765_VNAMZ-6333670649</span></div>\r\n	</li>\r\n	<li><span style=\"font-size:10px\"><span style=\"color:rgb(117, 117, 117)\">Material</span></span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\"><span style=\"font-size:10px\">Rubber</span></div>\r\n	</li>\r\n	<li><span style=\"font-size:10px\"><span style=\"color:rgb(117, 117, 117)\">Pattern</span></span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\"><span style=\"font-size:10px\">Plain</span></div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 69000, 'dep-nam_XhJt2.jpg', 0, '2022-07-13', '2022-07-28', 'dép nam,dép nam đẹp'),
(28, 'Kính râm nam', 'kinh-ram-nam', 20, 12, 10, 5, 'sadasda', '<p>đẹp</p>', 99000, 'kinh-ram-nam_tIpeC.jpg', 0, '2022-07-16', '2022-07-28', 'mắt kính nam,kính,kính râm nam');
INSERT INTO `products` (`id`, `title`, `slug_product`, `quantity`, `category_id`, `cate_id`, `brand_id`, `description`, `content`, `price`, `image`, `status`, `ngaytao`, `ngaycapnhat`, `tags`) VALUES
(29, 'Đồng hồ nam chính hãng Aouke AK09-1111111111111', 'dong-ho-nam-chinh-hang-aouke-ak09-1111111111111', 49, 12, 10, 5, NULL, '<p><span style=\"color:rgb(255, 0, 0)\">AOUKE AK09 - NÉT QUYẾN RŨ ĐẾN TỪ PHONG CÁCH TỐI GIẢN</span></p>\r\n\r\n<p>Là sản phẩm thuộc phân khúc tầm trung của Aouke, AK09 tiếp tục “phá đảo” bảng xếp hạng top đồng hồ nam bán chạy nhất showroom.&nbsp;</p>\r\n\r\n<p>- Sử dụng phong cách thiết kế đơn giản nhưng rất tinh tế, giúp sản phẩm phù hợp cho mọi lứa tuổi khác nhau.</p>\r\n\r\n<p>- Kích thước với tỉ lệ vàng chỉ 40mm đường kính và 9mm cho độ mỏng tạo cảm giác nhẹ nhàng, thoải mái khi trên tay.</p>\r\n\r\n<p>- Chất liệu không thua kém gì sản phẩm cao cấp khi trang bị kính sapphire nguyên khối, khả năng chống trầy xước cực tốt và tán sắc dưới nhiều góc độ ánh sáng.</p>\r\n\r\n<p>- Tiện ích hơn với ô lịch ngày tại vị trí 6 giờ đi kèm với đó là độ chống nước 5ATM (đi tắm, đi mưa thoải mái).</p>\r\n\r\n<p>- Sản phẩm đem đến cho bạn trải nghiệm thoải mái tuyệt vời từ thiết kế siêu mỏng nhẹ, dây đeo bằng da ôm tay thật hay thép không gỉ 316L với lớp mạ bạc PVD màu sang trọng.</p>\r\n\r\n<p>- Vận hành bởi bộ máy quartz giúp bạn hoàn toàn yên tâm về độ ổn định và bền bỉ của sản phẩm.</p>\r\n\r\n<p>- Tổng thể phong cách tối giản đem lại vẻ đẹp tinh tế, thời thượng, dễ dàng kết hợp với nhiều outfit.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-1.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-2.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-3.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-4.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-5.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-6.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-7.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-8.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-9.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-10.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /></p>', 3500000, 'dong-ho-nam-chinh-hang-aouke-ak09-1_IUQd0.jpg', 0, '2022-07-28', '2022-07-28', 'Đồng hồ nam, đồng hồ đẹp, Đồng hồ thời trang');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `rating`) VALUES
(1, 29, 4),
(2, 29, 2),
(3, 29, 1),
(4, 29, 1),
(5, 29, 5),
(6, 29, 5),
(7, 29, 5),
(8, 29, 5),
(9, 29, 5),
(10, 29, 5),
(11, 29, 1),
(12, 29, 1),
(13, 29, 1),
(14, 29, 1),
(15, 29, 1),
(16, 29, 1),
(17, 29, 1),
(18, 29, 1),
(19, 29, 1),
(20, 29, 1),
(21, 29, 1),
(22, 29, 5),
(23, 29, 5),
(24, 29, 5),
(25, 29, 5),
(26, 29, 5),
(27, 29, 5),
(28, 29, 1),
(29, 29, 1),
(30, 29, 1),
(31, 29, 1),
(32, 29, 1),
(33, 29, 1),
(34, 29, 1),
(35, 29, 1),
(36, 29, 1),
(37, 29, 5),
(38, 28, 5),
(39, 28, 1),
(40, 28, 5),
(41, 28, 1),
(42, 28, 1),
(43, 28, 1),
(44, 27, 5),
(45, 27, 3),
(46, 27, 1),
(47, 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `provinces` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `ngaytao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `user_id`, `company`, `email`, `name`, `phone`, `address1`, `address2`, `provinces`, `district`, `ngaytao`) VALUES
(2, 4, 'Ngu lon', 'phong@gmail.com', 'Duy Phong', '0977350884', 'qb', 'qb', '10', 'Huyện Đồng Phú', '2022-07-12 15:24:30'),
(3, 8, 'Ang son', 'thai@gmail.com', 'Duy Phong', '012345678', 'Ang Son', 'Ang Son', '2', 'Thị xã Bà Rịa', '2022-07-13 09:09:54'),
(4, 9, 'ấdasdasd', 'ba@gmail.com', 'bbbb', '4234234234', 'Ang Son', 'Ang Son', '46', 'Huyện Quảng Ninh', '2022-07-15 09:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `description`, `image`, `status`) VALUES
(2, 'Túi xách 99% rẻ đẹp', 'Túi xách hàng hiệu đã qua sử dụng đẹp', '_VmbFi.jpg', 0),
(3, 'Loạt túi xách đủ màu sắc', 'Hàng mới về túi xách hàng hiệu đủ màu sắc', '_RLnW4.jpg', 0),
(4, 'Túi xách hot nhất 2022', 'Là một chiếu túi xách cho phái nữ rất rẻ nhưng lại rất bền và đẹp', '_qees5.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `transport` int(20) DEFAULT NULL,
  `payment_id` int(11) NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `user_id`, `shipping_id`, `transport`, `payment_id`, `total`, `status`, `created_at`, `updated_at`) VALUES
(39, 4, 2, 20000, 42, '331,660', 'Hủy đơn', '2022-07-15 03:03:30', '2022-07-15 03:04:19'),
(40, 8, 3, 30000, 43, '103,000', 'Đang chờ xử lý', '2022-07-28 00:40:35', '2022-07-28 00:40:35'),
(41, 8, 3, 30000, 44, '3,244,500', 'Đang chờ xử lý', '2022-07-29 02:16:49', '2022-07-29 02:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`id`, `order_id`, `product_id`, `product_title`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(43, 39, 26, 'Áo khoác nam', '172000', 1, '2022-07-15 03:03:30', '2022-07-15 03:03:30'),
(44, 39, 25, 'Áo khoác nữ', '100000', 1, '2022-07-15 03:03:30', '2022-07-15 03:03:30'),
(45, 39, 24, 'Kính', '50000', 1, '2022-07-15 03:03:30', '2022-07-15 03:03:30'),
(46, 40, 25, 'Áo khoác nữ', '100000', 1, '2022-07-28 00:40:35', '2022-07-28 00:40:35'),
(47, 41, 29, 'Đồng hồ nam chính hãng Aouke AK09-1111111111111', '3500000', 1, '2022-07-29 02:16:49', '2022-07-29 02:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `method`, `status`, `created_at`, `updated_at`) VALUES
(42, '2', 'Đang chờ xử lý', '2022-07-15 03:03:30', '2022-07-15 03:03:30'),
(43, '2', 'Đang chờ xử lý', '2022-07-28 00:40:35', '2022-07-28 00:40:35'),
(44, '3', 'Đang chờ xử lý', '2022-07-29 02:16:49', '2022-07-29 02:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `level`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, 1, NULL, '$2y$10$DocPQGuA3ZNKy5lYK/iNLedFQHkDGIQCnOPxlICjTusHaekdA6zX.', NULL, '2022-07-08 00:54:52', '2022-07-08 00:54:52'),
(4, 'Duy Phong', 'phong@gmail.com', '1234567', 2, NULL, '$2y$10$Se3A4dJ2RGucBZi8cOl9Y.zo3sJc9x1pmeoSg4SL/mrRAvID.mXr2', NULL, '2022-07-11 00:47:25', '2022-07-11 00:47:25'),
(5, 'êrterrter', 'phoeeng@gmail.com', '345345345', 2, NULL, '$2y$10$YDkIa4cKHfxB4MV0ZdMGAOV6wYtUcc0j./fJIfKKqHg/n2d9c/fuC', NULL, '2022-07-11 04:28:54', '2022-07-11 04:28:54'),
(6, 'ádasdasd', 'phonfffg@gmail.com', '2342423423', 2, NULL, '$2y$10$34epcl37.71e/bcptf0./.WrKIcUYgTTqaJTWhi3sGyMTdjzUSimW', NULL, '2022-07-11 23:21:31', '2022-07-11 23:21:31'),
(7, 'Phongdz', 'phong11@gmail.com', '0977350884', 2, NULL, '$2y$10$6CvR53zV4Zc/lqZNNRAd8ubT8HbABWIfL00.i8K8BPBjPXnRKRmgW', NULL, '2022-07-11 23:37:23', '2022-07-11 23:37:23'),
(8, 'Duy Thai', 'thai@gmail.com', '012345678', 2, NULL, '$2y$10$h0Qp0WUyzqMh0iJcBHCB7.0Zhpzr3q/c4oOwcwcNaV1kMe208tt6e', NULL, '2022-07-12 19:05:26', '2022-07-12 19:05:26'),
(9, 'Ba', 'ba@gmail.com', '12232312312', 2, NULL, '$2y$10$srQEO1ItK.EPVev/VeYCcOhKdzcCz0l193ihBxJKQXR9oTwBPzRUW', NULL, '2022-07-14 19:45:03', '2022-07-14 19:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_coupon`
--

CREATE TABLE `user_coupon` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_coupon`
--

INSERT INTO `user_coupon` (`id`, `user_id`, `coupon_id`) VALUES
(1, 4, 5),
(2, 4, 6),
(3, 4, 7),
(4, 4, 8),
(5, 8, 6),
(6, 8, 9),
(7, 9, 5),
(8, 8, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoryproducts`
--
ALTER TABLE `categoryproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmts`
--
ALTER TABLE `cmts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_blog`
--
ALTER TABLE `comment_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_product`
--
ALTER TABLE `comment_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `like_product`
--
ALTER TABLE `like_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phiship`
--
ALTER TABLE `phiship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_coupon`
--
ALTER TABLE `user_coupon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categoryproducts`
--
ALTER TABLE `categoryproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cmts`
--
ALTER TABLE `cmts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comment_blog`
--
ALTER TABLE `comment_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comment_product`
--
ALTER TABLE `comment_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `like_product`
--
ALTER TABLE `like_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phiship`
--
ALTER TABLE `phiship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_coupon`
--
ALTER TABLE `user_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
