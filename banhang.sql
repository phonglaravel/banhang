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
(5, 'Dio', 'dio', 'Th???i trang hi???u Dio ?????p v?? r???', '??o dio, qu???n dio, ph??? ki???n dio', '????? dio', 0),
(6, 'Adidas', 'adidas', NULL, '??o addidas, qu???n adidas', '????? adidas', 0),
(7, 'Bitis', 'bitis', NULL, 'gi??y d??p bitis', '????? bitis', 0);

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
(1, '??o nam', 'ao', 12, 1, '??o nam ?????p', '??o nam ?????p', '??o nam ?????p'),
(2, 'Qu???n nam', 'quan', 12, 0, 'Qu???n nam ?????p', 'Qu???n nam ?????p', 'Qu???n nam ?????p'),
(3, 'B??? ????? nam', 'bo-do', 12, 1, 'B??? ????? nam ?????p', 'B??? ????? nam ?????p', 'B??? ????? nam ?????p'),
(4, 'Gi??y d??p nam', 'giay-dep', 12, 0, 'Gi??y d??p nam ?????p', 'Gi??y d??p nam ?????p', 'Gi??y d??p nam ?????p'),
(5, '??o n???', 'ao', 13, 0, '??o n??? ?????p', '??o n??? ?????p', '??o n??? ?????p'),
(6, 'Qu???n n???', 'quan', 13, 0, 'Qu???n n??? ?????p', 'Qu???n n??? ?????p', 'Qu???n n??? ?????p'),
(7, 'V??y', 'vay', 13, 1, 'V??y n??? ?????p', 'V??y n??? ?????p', 'V??y n??? ?????p'),
(8, 'Ph??? ki???n n???', 'phu-kien', 13, 1, 'Ph??? ki???n n??? ?????p', 'Ph??? ki???n n??? ?????p', 'Ph??? ki???n n??? ?????p'),
(9, 'Gi??y d??p n???', 'giay-dep', 13, 0, 'Gi??y d??p n??? ?????p', 'Gi??y d??p n??? ?????p', 'Gi??y d??p n??? ?????p'),
(10, 'Ph??? ki???n nam', 'phu-kien-nam', 12, 1, 'Ph??? ki???n nam', 'Ph??? ki???n nam', 'Ph??? ki???n nam');

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
(12, 'Nam gi???i', 'nam-gioi', '??o qu???n ph??? ki???n nam ?????p m???i v?? r???', '??o qu???n nam, ph??? ki???n nam', '????? nam', 0),
(13, 'Ph??? n???', 'phu-nu', '??o qu???n ph??? ki???n n??? ?????p m???i v?? r???', '??o qu???n n???, ph??? ki???n n???', '????? n???', 0);

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
(1, 'Duy Phong', 4, '????ng b???n ??i', '16/Jul/2022', '16:53:31'),
(2, 'Phong', 2, '????ng', '16/Jul/2022', '16:54:12'),
(3, 'phongs', 2, 'HAy', '16/Jul/2022', '16:54:29'),
(4, 'T??i kho???n kh??ch', 4, 'Hay qu??', '16/Jul/2022', '16:57:30');

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
(1, 1, 'Duy Phong', 'B??i vi???t r???t hay', '16/Jul/2022', '16:19:17'),
(2, 2, 'Duy Thai', 'B??i vi???t r???t ?? ngh??a', '16/Jul/2022', '16:19:59'),
(3, 1, 'Duy Thai', 'B??i vi???t r???t hay', '16/Jul/2022', '16:20:17'),
(4, 2, 'Nhoxdeptrai', 'B??i vi???t hay qu?? ad ??i', '16/Jul/2022', '16:25:40');

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
(3, 'Duy Thai', 'thai@gmail.com', 'S???n ph???m r???t ?????p', '11:44:58', '28/07/2022', 28),
(4, 'Duy Phong', 'phong@gmail.com', 'Giao h??ng nhanh', '11:47:01', '28/07/2022', 28),
(5, 'Phong', NULL, '??o ?????p', '12:05:49', '28/07/2022', 26),
(6, 'Duy Thai', 'thai@gmail.com', '?????p', '15:04:09', '28/07/2022', 29);

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
(2, 'B?? R???a - V??ng T??u', 30000),
(3, 'B???c Li??u', 20000),
(4, 'B???c K???n', 20000),
(5, 'B???c Giang', 20000),
(6, 'B???c Ninh', 20000),
(7, 'B???n Tre', 20000),
(8, 'B??nh D????ng', 20000),
(9, 'B??nh ?????nh', 20000),
(10, 'B??nh Ph?????c', 20000),
(11, 'B??nh Thu???n', 20000),
(12, 'C?? Mau', 20000),
(13, 'Cao B???ng', 20000),
(14, 'C???n Th??', 20000),
(15, '???? N???ng', 20000),
(16, '?????k L???k', 20000),
(17, '?????k N??ng', 20000),
(18, '?????ng Nai', 20000),
(19, '?????ng Th??p', 20000),
(20, '??i???n Bi??n', 20000),
(21, 'Gia Lai', 20000),
(22, 'H?? Giang', 20000),
(23, 'H?? Nam', 20000),
(24, 'H?? N???i', 20000),
(25, 'H?? T??nh', 20000),
(26, 'H???i D????ng', 20000),
(27, 'H???i Ph??ng', 20000),
(28, 'H??a B??nh', 20000),
(29, 'H???u Giang', 20000),
(30, 'H??ng Y??n', 20000),
(31, 'Th??nh ph??? H??? Ch?? Minh', 0),
(32, 'Kh??nh H??a', 20000),
(33, 'Ki??n Giang', 20000),
(34, 'Kon Tum', 20000),
(35, 'Lai Ch??u', 20000),
(36, 'L??o Cai', 20000),
(37, 'L???ng S??n', 20000),
(38, 'L??m ?????ng', 20000),
(39, 'Long An', 20000),
(40, 'Nam ?????nh', 20000),
(41, 'Ngh??? An', 20000),
(42, 'Ninh B??nh', 20000),
(43, 'Ninh Thu???n', 20000),
(44, 'Ph?? Th???', 20000),
(45, 'Ph?? Y??n', 20000),
(46, 'Qu???ng B??nh', 20000),
(47, 'Qu???ng Nam', 20000),
(48, 'Qu???ng Ng??i', 20000),
(49, 'Qu???ng Ninh', 20000),
(50, 'Qu???ng Tr???', 20000),
(51, 'S??c Tr??ng', 20000),
(52, 'S??n La', 20000),
(53, 'T??y Ninh', 20000),
(54, 'Th??i B??nh', 20000),
(55, 'Th??i Nguy??n', 20000),
(56, 'Thanh H??a', 20000),
(57, 'Th???a Thi??n - Hu???', 20000),
(58, 'Ti???n Giang', 20000),
(59, 'Tr?? Vinh', 20000),
(60, 'Tuy??n Quang', 20000),
(61, 'V??nh Long', 20000),
(62, 'V??nh Ph??c', 20000),
(63, 'Y??n B??i', 20000);

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
(24, 'K??nh', 'kinh', 20, 12, 8, 5, NULL, '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">\r\n<ul>\r\n	<li style=\"text-align:left\">?????c ??i???m quang h???c c???a k??nh: UV400 ??? Ch???ng Xanh</li>\r\n	<li style=\"text-align:left\">Ch???t li???u khung: PC+Kim lo???i</li>\r\n	<li style=\"text-align:left\">D??nh cho: N???/Nam</li>\r\n	<li style=\"text-align:left\">D??nh cho: Ng?????i l???n</li>\r\n	<li style=\"text-align:left\">K??ch th?????c m???t k??nh:</li>\r\n	<li style=\"text-align:left\">T???ng Chi???u r???ng khung (mm): n??m 145</li>\r\n	<li style=\"text-align:left\">Chi???u r???ng m???t k??nh (mm) :47</li>\r\n	<li style=\"text-align:left\">Chi???u cao m???t k??nh (mm) :40</li>\r\n	<li style=\"text-align:left\">Chi???u r???ng c???u m??i (mm) :18</li>\r\n	<li style=\"text-align:left\">Chi???u d??i c???a g???ng (mm) :143</li>\r\n	<li style=\"text-align:left\">G??i h??ng bao g???m: 1* k??nh m??t</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245); color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\">\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\"><span style=\"font-family:none\">CH??O M???NG B???N ?????N V???I GMLV MALL</span></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 0px; color: transparent; outline: none; text-align: center;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">&nbsp;</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">H??? tr??? c??c ????n h??ng b??n bu??n v?? dropshipping.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 0px; color: transparent; outline: none; text-align: center;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">&nbsp;</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">Ch??ng t??i cung c???p c??c thi???t k??? th???i trang nh???t v???i gi?? c??? h???p l??.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 0px; color: transparent; outline: none; text-align: center;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">&nbsp;</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">Vui l??ng ????? l???i ph???n h???i ?????y ????? 5 sao n???u b???n th??ch s???n ph???m, m???t m??n qu?? mi???n ph?? s??? ???????c cung c???p trong ????n h??ng ti???p theo c???a</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 0px; color: transparent; outline: none; text-align: center;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">&nbsp;</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">b???n.</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\">\r\n<div style=\"margin: 0px; padding: 0px; text-align: center;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">\r\n<h2>Specifications of GMLV K??nh M??t Southside Ch??? V Eeyewear M???t K??nh R??m H??n Qu???c Tr??ng M??u Th???i Trang Nam N??? C???c ?????p</h2>\r\n\r\n<div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\">\r\n<ul>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Brand</span>\r\n\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">GMLV</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">SKU</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">1836964204_VNAMZ-8305428089</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Frame Shape</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Square</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Frame Type</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Full rim</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Sunglasses Lens Type</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Mirrored</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Metal Frame Material</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Plastic</div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>', 50000, 'kinh_Lcoek.jpg', 0, '2022-07-13', '2022-07-28', 'k??nh,k??nh nam,k??nh c???n'),
(25, '??o kho??c n???', 'ao-khoac-nu', 9, 13, 5, 5, NULL, '<h2>Product details of ??o kho??c n??? ??o kho??c n??? gi?? d?? 2 l???p ch???ng n???ng ph???i vi???n ng??? ngh??nh d??? th????ng</h2>\r\n\r\n<div class=\"pdp-product-detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">\r\n<div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden; box-sizing: border-box;\">\r\n<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\">\r\n<ul>\r\n	<li style=\"text-align:left\">??o kho??c n??? ??o kho??c n??? gi?? d?? 2 l???p ch???ng n???ng ph???i vi???n ng??? ngh??nh-d??? th????ng</li>\r\n	<li style=\"text-align:left\">Ch???t li???u: d?? 2 l???p</li>\r\n	<li style=\"text-align:left\">Free size d?????i 60kg</li>\r\n	<li style=\"text-align:left\">H??ng x?????ng kh??ng qua trung gian, ?????p, v???a t??i ti???n</li>\r\n	<li style=\"text-align:left\">??i???u ki???n ?????i tr??? theo ????ng quy ?????nh c???a Shopee</li>\r\n	<li style=\"text-align:left\">+ ??i???u ki???n ??p d???ng (trong v??ng 03 ng??y k??? t??? khi nh???n s???n ph???m):</li>\r\n	<li style=\"text-align:left\">H??ng ho?? v???n c??n m???i, ch??a qua s??? d???ng</li>\r\n	<li style=\"text-align:left\">H??ng h??a h?? h???ng do v???n chuy???n ho???c do nh?? s???n xu???t.</li>\r\n	<li style=\"text-align:left\">+ Tr?????ng h???p ???????c ch???p nh???n:</li>\r\n	<li style=\"text-align:left\">H??ng kh??ng ????ng ch???ng lo???i, m???u m?? nh?? qu?? kh??ch ?????t h??ng</li>\r\n	<li style=\"text-align:left\">Kh??ng ????? s??? l?????ng, kh??ng ????? b??? nh?? trong ????n h??ng</li>\r\n	<li style=\"text-align:left\">T??nh tr???ng b??n ngo??i b??? ???nh h?????ng nh?? r??ch bao b??, bong tr??c, b??? v??????</li>\r\n	<li style=\"text-align:left\">+ Tr?????ng h???p kh??ng ????? ??i???u ki???n ??p d???ng ch??nh s??ch:</li>\r\n	<li style=\"text-align:left\">Qu?? 03 ng??y k??? t??? khi Qu?? kh??ch nh???n h??ng</li>\r\n	<li style=\"text-align:left\">G???i l???i h??ng kh??ng ????ng m???u m??</li>\r\n	<li style=\"text-align:left\">?????t nh???m s???n ph???m, ch???ng lo???i.</li>\r\n	<li style=\"text-align:left\">&nbsp;</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245);\">\r\n<p><strong>??o kho??c n??? ??o kho??c n??? gi?? d?? 2 l???p ch???ng n???ng ph???i vi???n ng??? ngh??nh d??? th????ng d??? ph???i ????? d??? m???c ph?? h???p m???i l???a tu???i h??ng vi???t nam ch???t l?????ng cao</strong></p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://lzd-img-global.slatic.net/g/p/13604545179f07649c44f6c0d8ab9571.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://lzd-img-global.slatic.net/g/p/976c0a29b0c53d6b06f048015eb0419f.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://lzd-img-global.slatic.net/g/p/24f7c478c00bf48df87565413f8024c4.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://lzd-img-global.slatic.net/g/p/88f3dcdfcb3429bc1ac139d08f39339e.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\">\r\n<h2>Specifications of ??o kho??c n??? ??o kho??c n??? gi?? d?? 2 l???p ch???ng n???ng ph???i vi???n ng??? ngh??nh d??? th????ng</h2>\r\n\r\n<div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\">\r\n<ul>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Brand</span>\r\n\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">No Brand</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">SKU</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">1715352116_VNAMZ-7639416648</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Clothing Material</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Polyester</div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 100000, 'ao-khoac-nu_4pzWn.jpg', 0, '2022-07-13', '2022-07-28', '??o kho??c n???,??o kho??c ?????p,??o n???,??o kho??c'),
(26, '??o kho??c nam', 'ao-khoac-nam', 1, 12, 1, 6, NULL, '<h2>Product details of Spring and Autumn Thin Jacket Men\'s Hooded Jacket Young Men\'s Jacket Men\'s Clothing</h2>\r\n\r\n<div class=\"pdp-product-detail\" style=\"color: rgb(0, 0, 0); margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">\r\n<div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden; box-sizing: border-box;\">\r\n<div class=\"message message_platform_pc message_type_info\" style=\"margin: 0px; padding: 10px 10px 5px; display: flex; border: 1px solid rgb(239, 240, 245);\">\r\n<div class=\"message__text\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"message__item\" style=\"margin: 0px 0px 4px; padding: 0px; color: rgb(158, 158, 158); line-height: 16px;\">This is an imported product sold by cross border sellers. Selling invoice is not supported in this case</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\">\r\n<ul>\r\n	<li style=\"text-align:left\">Basic Style???Youth Pop</li>\r\n	<li style=\"text-align:left\">Color???Red,Light Gray,Black</li>\r\n	<li style=\"text-align:left\">Size???M,L,XL,3XL,4XL,2XL,5XL</li>\r\n	<li style=\"text-align:left\">Version???Fit</li>\r\n	<li style=\"text-align:left\">Application Scenarios???Casual</li>\r\n	<li style=\"text-align:left\">Suitable for Season???Spring</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245);\">\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/3467ac48ef169345a129843d78af4978.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/97611d33216bc9e4087f8f3a63dd7abf.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/92717c5d262b3e66ddd8d94a5906a22a.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/ae0da52af184c780b7dd2d0021ac451b.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/acf61784352d9965727453dd9728ad12.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/76c3c00afcd8c3b4f7991df0f76a3b3c.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/63e1dd1e230077c8b985b166fd63ac4b.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/9e807ccb06a4c1dfb14e6730de12ee1d.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/747db964bc80e36b98703deed5b6a79b.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/fb4f52315a13308985786aabb73ec666.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/ed510854bdb875356e5ff13c83e0193e.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/ef9c64268ff69bc367785e6211c3fd9d.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/0da00390f652569759990a00d3131269.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/4ce6fa9e0a409beb38c848a40a5107af.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/2e86bcd0d9a8847196f6c46f71846c4d.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/a27743476a11d8b01439124c8dca5e39.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"><img src=\"https://lzd-img-global.slatic.net/g/p/fe322f00c783bae41d2769b9fa8a2405.jpg_2200x2200q80.jpg_.webp\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\">\r\n<h2>Specifications of Spring and Autumn Thin Jacket Men\'s Hooded Jacket Young Men\'s Jacket Men\'s Clothing</h2>\r\n\r\n<div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\">\r\n<ul>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Brand</span>\r\n\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">No Brand</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">SKU</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">1794849810_VNAMZ-8066944987</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Jacket Closure</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Zipper</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Clothing Material</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Polyester</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Pattern</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Logo</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Fashion Style</span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Casual</div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 172000, 'ao-khoac-nam_WeD17.jpg', 0, '2022-07-13', '2022-07-28', '??o kho??c nam,??o kho??c nam ?????p'),
(27, 'D??p nam', 'dep-nam', 20, 12, 4, 5, NULL, '<h2><span style=\"font-size:10px\">Product details of D??p JD b??ng r??? D??p quai ngang nam n??? ho???t ti???t b??ng r??? nhi???u m??u - thi???t k??? ???n t?????ng, n???i b???t</span></h2>\r\n\r\n<div class=\"pdp-product-detail\" style=\"color: rgb(0, 0, 0); margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">\r\n<div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden; box-sizing: border-box;\">\r\n<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\">\r\n<ul>\r\n	<li><span style=\"font-size:10px\">D??p Nam D??p Quai Ngang Nam JD ????c Nguy??n Kh???i Si??u ??m Si??u B???n Tuy???t ?????p</span></li>\r\n	<li><span style=\"font-size:10px\">Th???i ti???t n???ng n??ng r???i, ??i em n??y c???c ph?? lu??n. ?????m b???o kh??ng b??? b?? ch??n, kh??ng b??? ra m??? h??i ch??n. R???a ch??n nhanh kh??</span></li>\r\n	<li><span style=\"font-size:10px\">Ph???i n??i l?? c???c ph???m. ??m, m???n ch??n, c???m gi??c cao h??n 1 ch??t nh??? ??n gian chi???u cao 3cm. ??i, ch???y c???c nh???, kh??ng ph??t ra ti???ng ?????ng.</span></li>\r\n	<li><span style=\"font-size:10px\">M??u s???c: 4 m??u (??en ??en, ?????, tr???ng, ??en x??m)</span></li>\r\n	<li><span style=\"font-size:10px\">Y h??nh 100%, ch???u n?????c tuy???t v???i, si??u ??m</span></li>\r\n	<li><span style=\"font-size:10px\">D??p c?? ????? b???n cao,m??u s???c c?? t??nh, n???i b???t. C?? nhi???u m??u s???c n??n c???c d??? ph???i ?????.</span></li>\r\n	<li><span style=\"font-size:10px\">Thi???t k??? l??t c???c m???m c???c ??m n??n ??i c???c d??? ch???u, kh??ng g??y ??au ch??n, chai b??n ch??n</span></li>\r\n</ul>\r\n</div>\r\n\r\n<div id=\"detail_decorate_root\" style=\"margin: 0px; padding: 0px; width: 960px;\">\r\n<div class=\"engine-app\" id=\"_root\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"Root\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"hc\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"hd\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"bd\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_-999\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_-999_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_0_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_1\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_1_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315006882\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 192px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; background-color: rgb(238, 237, 217); width: 500px; position: relative; height: 150px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\">\r\n<p><span style=\"font-size:10px\">D??p JD hydro quai ngang b??ng r??? JD nam nhi???u m??u</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_2\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_2_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315060185\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:12px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/b655e06a347f8088d25c0596dcb596d9.jpeg_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:32px; line-height:normal; margin:0px; padding:0px; position:absolute; top:8px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_3\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_3_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029942\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 448px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 350px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\">\r\n<p><span style=\"font-size:10px\">Th??ng tin s???n ph???m: - Ch???t li???u: D??p Jordan JD b??ng r??? quai ngang d??n ???????c l??m t??? ch???t li???u da t???ng h???p (Synthetic leather)&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:10px\">????? foam k???t h???p l??t ???????c l??m t??? 1 lo???i polymer c?? t??n EVA (Ethylene Vinyl Acetate Copolymer) kh??ng g??y h???i cho da. - Ki???u d??ng: </span></p>\r\n\r\n<p><span style=\"font-size:10px\">D??p Jordan JD b??ng r??? quai ngang d??n c?? quai ngang, g???n k???t v???i nhau b???ng mi???ng d??n.</span></p>\r\n\r\n<p><span style=\"font-size:10px\">????? b???ng. - ?????c ??i???m s??? d???ng: - Quai c?? th??? ??i???u ch???nh ph?? h???p v???i m???i k??ch th?????c. </span></p>\r\n\r\n<p><span style=\"font-size:10px\">Th??ch h???p s??? d???ng trong m???i ho??n c???nh, ??i???u ki???n th???i ti???t. - Cam k???t c???a shop: - S???n ph???m gi???ng h??nh 100%. </span></p>\r\n\r\n<p><span style=\"font-size:10px\">- H??nh ch???p th???t t???i shop, ch???t li???u, tr???ng l?????ng v?? ki???u d??ng ????ng m?? t???.</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_4\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_4_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315064058\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/93870d384b89e959bc0561129d4d403e.jpeg_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:40px; line-height:normal; margin:0px; padding:0px; position:absolute; top:11px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_5\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_5_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029945\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/4d0e0bd82b5443046ea54edcc9536471.jpeg_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:42px; line-height:normal; margin:0px; padding:0px; position:absolute; top:15px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_6\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_6_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315039677\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/fb8953b54c050c3752cf23178434bc7b.jpeg_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:39px; line-height:normal; margin:0px; padding:0px; position:absolute; top:13px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_7\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_7_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315051599\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/c9b51392f718d85b8ec5e655e7b92d77.jpeg_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:37px; line-height:normal; margin:0px; padding:0px; position:absolute; top:15px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_8\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_8_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375974197\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/14aee4aaed0ccf38cfaa43d217f069be.png_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:41px; line-height:normal; margin:0px; padding:0px; position:absolute; top:10px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_9\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_9_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941939\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/dbf48410834d40d50f731ed6a3bba09c.png_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:46px; line-height:normal; margin:0px; padding:0px; position:absolute; top:11px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_10\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_10_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941960\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"module-detailImageText\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px; height: 896px; width: 960px; overflow: hidden;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 750px; position: relative; height: 700px; transform: scale(1.28, 1.28); transform-origin: 0% 0%;\"><span style=\"font-size:10px\"><img src=\"https://lzd-img-global.slatic.net/g/shop/279d3f0e10c9459d7155aeb195af0e0e.png_2200x2200q80.jpg_.webp\" style=\"background-color:rgba(0, 0, 0, 0); border-style:none; font-family:lato; height:500px; left:53px; line-height:normal; margin:0px; padding:0px; position:absolute; top:15px; width:500px; z-index:0\" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"ft\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"fc\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"hc\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"hd\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"bd\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_-999\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_-999_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_0_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_1\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_1_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315006882\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_2\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_2_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315060185\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_3\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_3_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029942\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_4\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_4_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315064058\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_5\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_5_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029945\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_6\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_6_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315039677\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_7\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_7_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315051599\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_8\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_8_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375974197\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_9\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_9_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941939\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_10\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_10_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941960\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_0_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_0_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_1\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_1_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315006882\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_1_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315006882\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_2\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_2_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315060185\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_2_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315060185\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_3\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_3_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029942\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_3_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029942\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_4\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_4_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315064058\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_4_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315064058\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_5\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_5_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029945\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_5_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315029945\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_6\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_6_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315039677\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_6_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315039677\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_7\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_7_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315051599\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_7_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1315051599\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_8\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_8_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375974197\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_8_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375974197\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_9\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_9_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941939\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_9_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941939\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_10\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_10_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941960\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_10_container_0\" style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"J_module\" id=\"shell-com-1375941960\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"ft\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"fc\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_-999\" style=\"margin: 0px; padding: 0px;\">\r\n<div class=\"com-struct\" id=\"bd_-999_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_-999_container_0\" style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\">\r\n<h2><span style=\"font-size:10px\">Specifications of D??p JD b??ng r??? D??p quai ngang nam n??? ho???t ti???t b??ng r??? nhi???u m??u - thi???t k??? ???n t?????ng, n???i b???t</span></h2>\r\n\r\n<div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px; width:600px;\">\r\n<ul>\r\n	<li><span style=\"font-size:10px\"><span style=\"color:rgb(117, 117, 117)\">Brand</span></span>\r\n\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\"><span style=\"font-size:10px\">LAGADO</span></div>\r\n	</li>\r\n	<li><span style=\"font-size:10px\"><span style=\"color:rgb(117, 117, 117)\">SKU</span></span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\"><span style=\"font-size:10px\">1510479765_VNAMZ-6333670649</span></div>\r\n	</li>\r\n	<li><span style=\"font-size:10px\"><span style=\"color:rgb(117, 117, 117)\">Material</span></span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\"><span style=\"font-size:10px\">Rubber</span></div>\r\n	</li>\r\n	<li><span style=\"font-size:10px\"><span style=\"color:rgb(117, 117, 117)\">Pattern</span></span>\r\n	<div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\"><span style=\"font-size:10px\">Plain</span></div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 69000, 'dep-nam_XhJt2.jpg', 0, '2022-07-13', '2022-07-28', 'd??p nam,d??p nam ?????p'),
(28, 'K??nh r??m nam', 'kinh-ram-nam', 20, 12, 10, 5, 'sadasda', '<p>?????p</p>', 99000, 'kinh-ram-nam_tIpeC.jpg', 0, '2022-07-16', '2022-07-28', 'm???t k??nh nam,k??nh,k??nh r??m nam');
INSERT INTO `products` (`id`, `title`, `slug_product`, `quantity`, `category_id`, `cate_id`, `brand_id`, `description`, `content`, `price`, `image`, `status`, `ngaytao`, `ngaycapnhat`, `tags`) VALUES
(29, '?????ng h??? nam ch??nh h??ng Aouke AK09-1111111111111', 'dong-ho-nam-chinh-hang-aouke-ak09-1111111111111', 49, 12, 10, 5, NULL, '<p><span style=\"color:rgb(255, 0, 0)\">AOUKE AK09 - N??T QUY???N R?? ?????N T??? PHONG C??CH T???I GI???N</span></p>\r\n\r\n<p>L?? s???n ph???m thu???c ph??n kh??c t???m trung c???a Aouke, AK09 ti???p t???c ???ph?? ?????o??? b???ng x???p h???ng top ?????ng h??? nam b??n ch???y nh???t showroom.&nbsp;</p>\r\n\r\n<p>- S??? d???ng phong c??ch thi???t k??? ????n gi???n nh??ng r???t tinh t???, gi??p s???n ph???m ph?? h???p cho m???i l???a tu???i kh??c nhau.</p>\r\n\r\n<p>- K??ch th?????c v???i t??? l??? v??ng ch??? 40mm ???????ng k??nh v?? 9mm cho ????? m???ng t???o c???m gi??c nh??? nh??ng, tho???i m??i khi tr??n tay.</p>\r\n\r\n<p>- Ch???t li???u kh??ng thua k??m g?? s???n ph???m cao c???p khi trang b??? k??nh sapphire nguy??n kh???i, kh??? n??ng ch???ng tr???y x?????c c???c t???t v?? t??n s???c d?????i nhi???u g??c ????? ??nh s??ng.</p>\r\n\r\n<p>- Ti???n ??ch h??n v???i ?? l???ch ng??y t???i v??? tr?? 6 gi??? ??i k??m v???i ???? l?? ????? ch???ng n?????c 5ATM (??i t???m, ??i m??a tho???i m??i).</p>\r\n\r\n<p>- S???n ph???m ??em ?????n cho b???n tr???i nghi???m tho???i m??i tuy???t v???i t??? thi???t k??? si??u m???ng nh???, d??y ??eo b???ng da ??m tay th???t hay th??p kh??ng g??? 316L v???i l???p m??? b???c PVD m??u sang tr???ng.</p>\r\n\r\n<p>- V???n h??nh b???i b??? m??y quartz gi??p b???n ho??n to??n y??n t??m v??? ????? ???n ?????nh v?? b???n b??? c???a s???n ph???m.</p>\r\n\r\n<p>- T???ng th??? phong c??ch t???i gi???n ??em l???i v??? ?????p tinh t???, th???i th?????ng, d??? d??ng k???t h???p v???i nhi???u outfit.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-1.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-2.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-3.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-4.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-5.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-6.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-7.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-8.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-9.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /><img alt=\"\" class=\"fade lazied lazy show\" src=\"https://zenwatch.vn/uploads/dong-ho-aouke-AK09-10.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; list-style-position:inside; margin:auto; max-width:100%; opacity:1; outline:0px; padding:0px; text-size-adjust:100%; transition:opacity 0.15s linear 0s; vertical-align:middle; width:750px\" /></p>', 3500000, 'dong-ho-nam-chinh-hang-aouke-ak09-1_IUQd0.jpg', 0, '2022-07-28', '2022-07-28', '?????ng h??? nam, ?????ng h??? ?????p, ?????ng h??? th???i trang');

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
(2, 4, 'Ngu lon', 'phong@gmail.com', 'Duy Phong', '0977350884', 'qb', 'qb', '10', 'Huy???n ?????ng Ph??', '2022-07-12 15:24:30'),
(3, 8, 'Ang son', 'thai@gmail.com', 'Duy Phong', '012345678', 'Ang Son', 'Ang Son', '2', 'Th??? x?? B?? R???a', '2022-07-13 09:09:54'),
(4, 9, '???dasdasd', 'ba@gmail.com', 'bbbb', '4234234234', 'Ang Son', 'Ang Son', '46', 'Huy???n Qu???ng Ninh', '2022-07-15 09:58:48');

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
(2, 'T??i x??ch 99% r??? ?????p', 'T??i x??ch h??ng hi???u ???? qua s??? d???ng ?????p', '_VmbFi.jpg', 0),
(3, 'Lo???t t??i x??ch ????? m??u s???c', 'H??ng m???i v??? t??i x??ch h??ng hi???u ????? m??u s???c', '_RLnW4.jpg', 0),
(4, 'T??i x??ch hot nh???t 2022', 'L?? m???t chi???u t??i x??ch cho ph??i n??? r???t r??? nh??ng l???i r???t b???n v?? ?????p', '_qees5.jpg', 0);

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
(39, 4, 2, 20000, 42, '331,660', 'H???y ????n', '2022-07-15 03:03:30', '2022-07-15 03:04:19'),
(40, 8, 3, 30000, 43, '103,000', '??ang ch??? x??? l??', '2022-07-28 00:40:35', '2022-07-28 00:40:35'),
(41, 8, 3, 30000, 44, '3,244,500', '??ang ch??? x??? l??', '2022-07-29 02:16:49', '2022-07-29 02:16:49');

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
(43, 39, 26, '??o kho??c nam', '172000', 1, '2022-07-15 03:03:30', '2022-07-15 03:03:30'),
(44, 39, 25, '??o kho??c n???', '100000', 1, '2022-07-15 03:03:30', '2022-07-15 03:03:30'),
(45, 39, 24, 'K??nh', '50000', 1, '2022-07-15 03:03:30', '2022-07-15 03:03:30'),
(46, 40, 25, '??o kho??c n???', '100000', 1, '2022-07-28 00:40:35', '2022-07-28 00:40:35'),
(47, 41, 29, '?????ng h??? nam ch??nh h??ng Aouke AK09-1111111111111', '3500000', 1, '2022-07-29 02:16:49', '2022-07-29 02:16:49');

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
(42, '2', '??ang ch??? x??? l??', '2022-07-15 03:03:30', '2022-07-15 03:03:30'),
(43, '2', '??ang ch??? x??? l??', '2022-07-28 00:40:35', '2022-07-28 00:40:35'),
(44, '3', '??ang ch??? x??? l??', '2022-07-29 02:16:49', '2022-07-29 02:16:49');

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
(5, '??rterrter', 'phoeeng@gmail.com', '345345345', 2, NULL, '$2y$10$YDkIa4cKHfxB4MV0ZdMGAOV6wYtUcc0j./fJIfKKqHg/n2d9c/fuC', NULL, '2022-07-11 04:28:54', '2022-07-11 04:28:54'),
(6, '??dasdasd', 'phonfffg@gmail.com', '2342423423', 2, NULL, '$2y$10$34epcl37.71e/bcptf0./.WrKIcUYgTTqaJTWhi3sGyMTdjzUSimW', NULL, '2022-07-11 23:21:31', '2022-07-11 23:21:31'),
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
