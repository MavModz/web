-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2023 at 04:31 AM
-- Server version: 5.7.39-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pramiscure_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `description`, `image`, `slug`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About', 3, NULL, NULL, 'about', 'about', 'about', 'about', 1, '2021-04-06 03:43:43', '2021-04-06 03:43:43'),
(2, 'Galery', 4, NULL, NULL, 'gallery', 'gallery', 'gallery', 'gallery', 1, '2021-04-06 03:43:43', '2021-04-06 03:43:43'),
(34, 'product', 4, '<p>.</p>', 'Category/5UyHE7jl3SnkLk7KKHLKSzShp8oi8sArmn4pNcto.jpeg', 'product', 'product', 'product', 'product', 1, '2022-02-10 14:00:47', '2022-02-10 14:00:47'),
(35, 'PCD', 2, NULL, '', 'PCD', 'pcd', 'pcd', 'pcd', 1, '2022-02-25 13:47:52', '2022-02-25 13:47:52'),
(36, 'Third party', 2, '<p>.</p>', 'Category/QNqcnxCRsQ2g9qIQ06dr2cltFKfnobdlgNuP8svd.png', 'Third-party', 'third-party', 'third-party', 'third-party', 1, '2022-03-12 19:05:11', '2022-03-12 19:05:11'),
(54, 'TABLETS', 1, NULL, NULL, 'tablets', 'TABLETS', 'TABLETS', 'TABLETS', 1, '2022-08-31 05:38:04', '2022-08-31 05:38:04'),
(55, 'CAPSULES', 1, NULL, NULL, 'capsules', 'CAPSULES', 'CAPSULES', 'CAPSULES', 1, '2022-08-31 05:38:04', '2022-08-31 05:38:04'),
(56, 'LIQUID', 1, NULL, NULL, 'liquid', 'LIQUID', 'LIQUID', 'LIQUID', 1, '2022-08-31 05:38:04', '2022-08-31 05:38:04'),
(57, 'OINTMENT', 1, NULL, NULL, 'ointment', 'OINTMENT', 'OINTMENT', 'OINTMENT', 1, '2022-08-31 05:38:04', '2022-08-31 05:38:04'),
(58, 'INJECTION', 1, NULL, NULL, 'injection', 'INJECTION', 'INJECTION', 'INJECTION', 1, '2022-08-31 05:38:04', '2022-08-31 05:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `category_blogs`
--

CREATE TABLE `category_blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_products`
--

CREATE TABLE `category_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_products`
--

INSERT INTO `category_products` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1365, 54, 1041, '2022-09-26 11:04:27', '2022-09-26 11:04:27'),
(1366, 54, 1042, '2022-09-26 11:05:28', '2022-09-26 11:05:28'),
(1367, 54, 1043, '2022-09-26 11:06:04', '2022-09-26 11:06:04'),
(1368, 54, 1044, '2022-09-26 11:06:38', '2022-09-26 11:06:38'),
(1369, 54, 1045, '2022-09-26 11:07:11', '2022-09-26 11:07:11'),
(1370, 54, 1046, '2022-09-26 11:07:43', '2022-09-26 11:07:43'),
(1371, 54, 1047, '2022-09-26 11:08:13', '2022-09-26 11:08:13'),
(1372, 54, 1048, '2022-09-26 11:08:38', '2022-09-26 11:08:38'),
(1373, 54, 1049, '2022-09-26 11:09:01', '2022-09-26 11:09:01'),
(1375, 54, 1050, '2022-09-26 11:10:19', '2022-09-26 11:10:19'),
(1374, 54, 1051, '2022-09-26 11:09:48', '2022-09-26 11:09:48'),
(1376, 54, 1052, '2022-09-26 11:10:45', '2022-09-26 11:10:45'),
(1377, 54, 1053, '2022-09-26 11:11:10', '2022-09-26 11:11:10'),
(1378, 54, 1054, '2022-09-26 11:11:35', '2022-09-26 11:11:35'),
(1379, 54, 1055, '2022-09-26 11:12:06', '2022-09-26 11:12:06'),
(1461, 54, 1056, '2022-09-29 11:26:17', '2022-09-29 11:26:17'),
(1381, 54, 1057, '2022-09-26 11:13:04', '2022-09-26 11:13:04'),
(1462, 54, 1058, '2022-09-29 11:26:43', '2022-09-29 11:26:43'),
(1383, 54, 1059, '2022-09-26 11:15:23', '2022-09-26 11:15:23'),
(1384, 54, 1060, '2022-09-26 11:15:52', '2022-09-26 11:15:52'),
(1385, 54, 1061, '2022-09-26 11:16:16', '2022-09-26 11:16:16'),
(1457, 54, 1062, '2022-09-29 11:24:14', '2022-09-29 11:24:14'),
(1387, 54, 1063, '2022-09-26 11:17:10', '2022-09-26 11:17:10'),
(1388, 54, 1064, '2022-09-26 11:17:28', '2022-09-26 11:17:28'),
(1389, 54, 1065, '2022-09-26 11:18:02', '2022-09-26 11:18:02'),
(1460, 54, 1066, '2022-09-29 11:25:39', '2022-09-29 11:25:39'),
(1455, 54, 1067, '2022-09-29 11:20:36', '2022-09-29 11:20:36'),
(1392, 54, 1068, '2022-09-26 11:19:15', '2022-09-26 11:19:15'),
(1393, 54, 1069, '2022-09-26 11:20:02', '2022-09-26 11:20:02'),
(1394, 54, 1070, '2022-09-26 11:20:24', '2022-09-26 11:20:24'),
(1395, 54, 1071, '2022-09-26 11:20:47', '2022-09-26 11:20:47'),
(1458, 55, 1072, '2022-09-29 11:24:42', '2022-09-29 11:24:42'),
(1397, 55, 1073, '2022-09-26 11:22:30', '2022-09-26 11:22:30'),
(1398, 55, 1074, '2022-09-26 11:23:24', '2022-09-26 11:23:24'),
(1399, 55, 1075, '2022-09-26 11:23:53', '2022-09-26 11:23:53'),
(1400, 55, 1076, '2022-09-26 11:24:27', '2022-09-26 11:24:27'),
(1401, 55, 1077, '2022-09-26 11:24:43', '2022-09-26 11:24:43'),
(1402, 56, 1078, '2022-09-26 11:25:15', '2022-09-26 11:25:15'),
(1403, 56, 1079, '2022-09-26 11:25:35', '2022-09-26 11:25:35'),
(1404, 56, 1080, '2022-09-26 11:26:00', '2022-09-26 11:26:00'),
(1459, 56, 1081, '2022-09-29 11:25:13', '2022-09-29 11:25:13'),
(1456, 56, 1082, '2022-09-29 11:22:07', '2022-09-29 11:22:07'),
(1407, 57, 1083, '2022-09-26 11:27:27', '2022-09-26 11:27:27'),
(1408, 57, 1084, '2022-09-26 11:28:11', '2022-09-26 11:28:11'),
(1409, 57, 1085, '2022-09-26 11:29:07', '2022-09-26 11:29:07'),
(1410, 57, 1086, '2022-09-26 11:29:44', '2022-09-26 11:29:44'),
(1411, 57, 1087, '2022-09-26 11:30:08', '2022-09-26 11:30:08'),
(1412, 58, 1088, '2022-09-26 11:31:04', '2022-09-26 11:31:04'),
(1413, 58, 1089, '2022-09-26 11:31:25', '2022-09-26 11:31:25'),
(1414, 58, 1090, '2022-09-26 11:31:43', '2022-09-26 11:31:43'),
(1415, 58, 1091, '2022-09-26 11:32:12', '2022-09-26 11:32:12'),
(1416, 58, 1092, '2022-09-26 11:32:35', '2022-09-26 11:32:35'),
(1417, 58, 1093, '2022-09-26 11:33:08', '2022-09-26 11:33:08'),
(1418, 58, 1094, '2022-09-26 11:33:51', '2022-09-26 11:33:51'),
(1419, 58, 1095, '2022-09-26 11:34:12', '2022-09-26 11:34:12'),
(1453, 58, 1096, '2022-09-28 11:41:44', '2022-09-28 11:41:44'),
(1452, 58, 1097, '2022-09-28 11:39:58', '2022-09-28 11:39:58'),
(1451, 58, 1098, '2022-09-28 11:38:45', '2022-09-28 11:38:45'),
(1449, 58, 1099, '2022-09-28 11:35:03', '2022-09-28 11:35:03'),
(1448, 58, 1100, '2022-09-28 11:33:16', '2022-09-28 11:33:16'),
(1447, 58, 1101, '2022-09-28 11:31:50', '2022-09-28 11:31:50'),
(1445, 58, 1102, '2022-09-28 11:30:19', '2022-09-28 11:30:19'),
(1444, 58, 1103, '2022-09-28 11:29:30', '2022-09-28 11:29:30'),
(1446, 58, 1104, '2022-09-28 11:30:54', '2022-09-28 11:30:54'),
(1443, 58, 1105, '2022-09-28 11:28:50', '2022-09-28 11:28:50'),
(1454, 58, 1106, '2022-09-28 11:42:28', '2022-09-28 11:42:28'),
(1442, 58, 1107, '2022-09-28 11:27:54', '2022-09-28 11:27:54'),
(1441, 58, 1108, '2022-09-28 11:26:42', '2022-09-28 11:26:42'),
(1433, 58, 1109, '2022-09-26 11:42:34', '2022-09-26 11:42:34'),
(1434, 58, 1110, '2022-09-26 11:42:59', '2022-09-26 11:42:59'),
(1440, 58, 1111, '2022-09-28 11:25:22', '2022-09-28 11:25:22'),
(1436, 58, 1112, '2022-09-26 11:43:48', '2022-09-26 11:43:48'),
(1437, 58, 1113, '2022-09-26 11:44:14', '2022-09-26 11:44:14'),
(1439, 58, 1114, '2022-09-28 11:22:16', '2022-09-28 11:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gst` tinyint(1) DEFAULT NULL,
  `drug` tinyint(1) DEFAULT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_12_063303_create_categories_table', 1),
(5, '2020_10_12_063413_create_blogs_table', 1),
(6, '2020_10_12_112845_create_category_blogs_table', 1),
(7, '2020_10_19_045643_create_pages_table', 1),
(8, '2020_10_19_045657_create_galleries_table', 1),
(9, '2020_10_19_054118_create_divisions_table', 1),
(10, '2020_10_19_054307_create_products', 1),
(11, '2020_10_19_055412_create_category_products', 1),
(12, '2020_10_20_090506_create_slugs', 1),
(13, '2020_10_29_041749_create_enquiries_table', 1),
(14, '2020_10_29_063833_create_settings_table', 1),
(15, '2021_06_29_102341_create_visuals_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `category_id`, `name`, `description`, `slug`, `image`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Home', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<div class=\"carousel slide\" data-ride=\"carousel\" id=\"myCarousel\"><!-- Indicators -->\r\n<ol class=\"carousel-indicators\">\r\n	<li class=\"active\" data-slide-to=\"0\" data-target=\"#myCarousel\">&nbsp;</li>\r\n	<li data-slide-to=\"1\" data-target=\"#myCarousel\">&nbsp;</li>\r\n	<li data-slide-to=\"2\" data-target=\"#myCarousel\">&nbsp;</li>\r\n</ol>\r\n<!-- Wrapper for slides -->\r\n\r\n<div class=\"carousel-inner\">\r\n<div class=\"item active\"><img alt=\"Los Angeles\" src=\"/front_asset/assets/images/vrovwen-banner-2.jpg\" style=\"width:100%;\" /></div>\r\n\r\n<div class=\"item\"><img alt=\"Chicago\" src=\"/front_asset/assets/images/vrovwen-banner-1.jpg\" style=\"width:100%;\" /></div>\r\n\r\n<div class=\"item\"><img alt=\"New york\" src=\"/front_asset/assets/images/vrovwen-banner-3.jpg\" style=\"width:100%;\" /></div>\r\n</div>\r\n<!-- Left and right controls --><a class=\"left carousel-control\" data-slide=\"prev\" href=\"#myCarousel\"><span class=\"sr-only\">Previous</span> </a> <a class=\"right carousel-control\" data-slide=\"next\" href=\"#myCarousel\"> <span class=\"sr-only\">Next</span> </a></div>\r\n\r\n<section class=\"top-tabel\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<div class=\"four-tab-1\">\r\n<p>We make sure that we put forward the superior quality that is highly appreciable by our customers.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"four-tab-2\">\r\n<p>We are the leading third-party manufacturers that fulfill the unmet needs of its clients.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"four-tab-3\">\r\n<p>One can connect us for the Franchise option and can enjoy successful growth in the Pharma sector.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"four-tab-4\">\r\n<p>Our dedicated team works responsibly to deliver our customer requirements within the mentioned time.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"bic\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"welcme\">\r\n<h2>Welcome To Vrovwen Biologics Pvt. Ltd.</h2>\r\n\r\n<h4>Our Product Category</h4>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"teb\"><img src=\"/front_asset/assets/images/pills (1).png\" />\r\n<h4>TABLETS</h4>\r\n\r\n<p>We have an extensive range of tablets that are made of high quality while meeting customer needs. We at vrovwen prioritize our customer satisfaction and demand.</p>\r\n</div>\r\n</div>\r\n\r\n<hr />\r\n<div class=\"col-md-12\">\r\n<div class=\"teb\"><img src=\"/front_asset/assets/images/injection (1).png\" />\r\n<h4>INJECTABLE</h4>\r\n\r\n<p>Knowing the fact that no treatment is possible without the existence of injections, we offer the best in the field that has long-lasting effects.</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"teb-img\"><img src=\"/front_asset/assets/images/women-doctor.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"teb\"><img src=\"/front_asset/assets/images/capsules.png\" />\r\n<h4>CAPSULES</h4>\r\n\r\n<p>We offer a wide range of capsules that are manufactured owing to Industrial standard. All the formulations are made from the qualitative raw material.</p>\r\n</div>\r\n</div>\r\n\r\n<hr />\r\n<div class=\"col-md-12\">\r\n<div class=\"teb\"><img src=\"/front_asset/assets/images/medicine-bottle.png\" />\r\n<h4>SYRUP</h4>\r\n\r\n<p>We put forward effective syrups that are manufactured to maximize our product quality. Our dedicated team work together for the best production.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section>\r\n<div class=\"wrapper\">\r\n<div class=\"container\">\r\n<div class=\"alert alert-info text-center\" id=\"narrow-browser-alert\"><strong>Our Product Range</strong></div>\r\n\r\n<div class=\"bs-example bs-example-tabs\" data-example-id=\"togglable-tabs\" role=\"tabpanel\">\r\n<ul class=\"nav nav-tabs nav-tabs-responsive\" id=\"myTab\" role=\"tablist\">\r\n	<li class=\"active\" role=\"presentation\"><a aria-controls=\"home\" aria-expanded=\"true\" data-toggle=\"tab\" href=\"#home\" id=\"home-tab\" role=\"tab\"><span class=\"text\">Vrovwen Biologics</span> </a></li>\r\n	<li class=\"next\" role=\"presentation\"><a aria-controls=\"profile\" data-toggle=\"tab\" href=\"#profile\" id=\"profile-tab\" role=\"tab\"><span class=\"text\">Lifestyle Ayurveda</span> </a></li>\r\n</ul>\r\n\r\n<div class=\"tab-content\" id=\"myTabContent\">\r\n<div aria-labelledby=\"home-tab\" class=\"tab-pane fade in active\" id=\"home\" role=\"tabpanel\">\r\n<div class=\"contents\">\r\n<div class=\"slider slider-1\">\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/glowen-e.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/kalamin.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/lyvita.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/magicenzyme-drops.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/pyrexol-d.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/rinzo.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/rovidpod.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/Untitled-2.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/veeferol-d3.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/veferol-d3.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/voderm.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/vodine-s.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/vogel.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/vopep-tz.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/xango.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/zanothrin.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/zanothrin-soap.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/BE-12g.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/clavostat.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/vrovwen/eroze-sr.png\" width=\"80%\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div aria-labelledby=\"profile-tab\" class=\"tab-pane fade\" id=\"profile\" role=\"tabpanel\">\r\n<div class=\"contents\">\r\n<div class=\"slider slider-1\">\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/clearance-ds.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/enjpy-life-gold.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/freelife.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/freshlife.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/hepaver-forte.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/inselfie-ds.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/lifebiotic-ds.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/lifebooster.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/lifelet-ds.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/lifestone.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/lzvita-forte.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/magichod.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/magicprost.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/magic-slim.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/pure-utrine.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/repare-forte.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/softy-soft.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/venstone.png\" width=\"80%\" /></div>\r\n\r\n<div class=\"homeimg\"><img src=\"/front_asset/assets/images/product/ayurveda/wenpiles.png\" width=\"80%\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<div class=\"section\" id=\"maximum\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-5\">\r\n<div class=\"aos-init aos-animate\" data-aos=\"fade-right\">\r\n<div class=\"maximum-effect\">\r\n<h2>Why we are the Top Pharma Company?</h2>\r\n\r\n<p>The product portfolio caters to wide range of PCD Pharma Products Being a all range Top Pharma Franchise Company</p>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-lg-6 col-md-12 mr-0 pr-0\">\r\n<div class=\"maximum-prod grey\">\r\n<h4>150+</h4>\r\n\r\n<p>PRODUCT RANGE</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-md-12 ml-0 pl-0\">\r\n<div class=\"maximum-prod\">\r\n<h4>2016</h4>\r\n\r\n<p>Since</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-md-12 mr-0 pr-0\">\r\n<div class=\"maximum-prod \">\r\n<h4>500+</h4>\r\n\r\n<p>STATE PRESENCE</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-md-12 ml-0 pl-0\">\r\n<div class=\"maximum-prod grey\">\r\n<h4>25+</h4>\r\n\r\n<p>QUALIFIED TEAM</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-7\">\r\n<div class=\"maximum-effects\">\r\n<div class=\"aos-init aos-animate\" data-aos=\"fade-left\"><img src=\"/front_asset/assets/images/pillssss.png\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<section class=\"vis-mis\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"why-us\">\r\n<h2>Why Choose Us</h2>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6\">\r\n<div class=\"vision\"><img src=\"/front_asset/assets/images/home-vision-icon.svg\" />\r\n<h3>Our vision</h3>\r\n\r\n<p>Vrovwen aspires to serve humanity with innovative and affordable healthcare solutions.</p>\r\n</div>\r\n\r\n<div class=\"col-md-2\">\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-md-10\">\r\n<div class=\"respon\"><img src=\"/front_asset/assets/images/home-csr-icon.svg\" />\r\n<h3>CSR responsibility</h3>\r\n\r\n<p>We believe in giving and sharing, and we know we are successful because we contribute our modest bit to the society!</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6\">\r\n<div class=\"mission\"><img src=\"/front_asset/assets/images/home-mission-icon.svg\" />\r\n<h3>Our mission</h3>\r\n\r\n<p>Vrovwen strives to serve humanity with innovative and affordable healthcare solutions to Research and manufacture products, using the most efficient and effective, cutting-edge technology and processes.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section>\r\n<div class=\"event\">\r\n<div class=\"container-fluid nick\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\r\n<div class=\"event_header text-center\">\r\n<h2>What Makes Us Best Pharma Company</h2>\r\n\r\n<p>Our website is run by a team of experienced professionals serving the healthcare industry for a number of years. Quality, speed, reliability, consistent support, and, a model to provide you genuine buyers and sellers is our pivot.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--End of row-->\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-8\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6 zero_mp\">\r\n<div class=\"event_item\">\r\n<div class=\"event_img\"><img alt=\"\" src=\"/front_asset/assets/images/pcd-image-zoic.jpg\" /></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6 zero_mp\">\r\n<div class=\"event_item\">\r\n<div class=\"event_text text-center\">\r\n<h4><a href=\"\">PCD Pharma Franchise</a></h4>\r\n\r\n<p>Monopoly based Pharma franchise with greater benefits of marketing support, promotional tools support and profitability offered round clock by company.</p>\r\n<a class=\"event_btn\" href=\"/PCD-Pharma-Franchise\">Read more</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--End of row-->\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-6 zero_mp\">\r\n<div class=\"event_item\">\r\n<div class=\"event_text text-center\">\r\n<h4><a href=\"\">Marketing Support</a></h4>\r\n\r\n<p>Attractive and valued promotional tool support for free of cost to associates for franchise, made under guidance of Pharma marketing experts.</p>\r\n<a class=\"event_btn\" href=\"/Third-Party-Manufacturing\">Read more</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6 zero_mp\">\r\n<div class=\"event_item\">\r\n<div class=\"event_img\"><img alt=\"\" src=\"/front_asset/assets/images/third-image-zoic.jpg\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--End of row--></div>\r\n<!--End of col-md-8-->\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"event_news\">\r\n<div class=\"event_single_item fix\">\r\n<div class=\"event_news_img floatleft\"><img alt=\"\" src=\"/front_asset/assets/images/ISO.jpg\" /></div>\r\n\r\n<div class=\"event_news_text\">\r\n<h4><a href=\"#\">ISO 9001:2008 CERTIFIED</a></h4>\r\n\r\n<p>This has earned us credibility in the market of being the best.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"event_news\">\r\n<div class=\"event_single_item fix\">\r\n<div class=\"event_news_img floatleft\"><img alt=\"\" src=\"/front_asset/assets/images/quality1.jpg\" /></div>\r\n\r\n<div class=\"event_news_text\">\r\n<h4><a href=\"#\">OUR QUALITY APPROACH</a></h4>\r\n\r\n<p>Each unit is made under professional guidance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"event_news\">\r\n<div class=\"event_single_item fix\">\r\n<div class=\"event_news_img floatleft\"><img alt=\"\" src=\"/front_asset/assets/images/dedicataion.jpg\" /></div>\r\n\r\n<div class=\"event_news_text\">\r\n<h4><a href=\"#\">DEDICATED WORKFORCE</a></h4>\r\n\r\n<p>We create a comprehensive, hygienic and high-performance culture to promote optimal output.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"event_news\">\r\n<div class=\"event_single_item fix\">\r\n<div class=\"event_news_img floatleft\"><img alt=\"\" src=\"/front_asset/assets/images/ethics.jpg\" /></div>\r\n\r\n<div class=\"event_news_text\">\r\n<h4><a href=\"#\">ETHICS AND COMPLIANCE</a></h4>\r\n\r\n<p>We comply with government regulations to meet highest satisfactory results.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"event_news\">\r\n<div class=\"event_single_item fix\">\r\n<div class=\"event_news_img floatleft\"><img alt=\"\" src=\"/front_asset/assets/images/awards.jpg\" /></div>\r\n\r\n<div class=\"event_news_text\">\r\n<h4><a href=\"#\">AWARDS &amp; ACHIEVEMENTS</a></h4>\r\n\r\n<p>We&rsquo;re a leader in the market, offering unique and effective medicines.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--End of col-md-4--></div>\r\n<!--End of row--></div>\r\n<!--End of container--></div>\r\n<!-- end section --></section>\r\n\r\n<section class=\"testimonial_section\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-7\">\r\n<div class=\"about_content\">\r\n<div class=\"background_layer\">&nbsp;</div>\r\n\r\n<div class=\"layer_content\">\r\n<div class=\"section_title\">\r\n<h5>CLIENTS</h5>\r\n\r\n<h2>Happy with<strong>Customers &amp; Clients</strong></h2>\r\n\r\n<div class=\"heading_line\">&nbsp;</div>\r\n\r\n<p>Welcome Vrovwen Biologics is a research-based pharmaceutical company with its main focus on making available quality pharmaceuticals products at affordable costs to all.</p>\r\n</div>\r\n<a href=\"#\">Contact Us</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-5\">\r\n<div class=\"testimonial_box\">\r\n<div class=\"testimonial_container\">\r\n<div class=\"background_layer\">&nbsp;</div>\r\n\r\n<div class=\"layer_content\">\r\n<div class=\"testimonial_owlCarousel owl-carousel\">\r\n<div class=\"testimonials\">\r\n<div class=\"testimonial_content\">\r\n<div class=\"testimonial_caption\">\r\n<h6>Komal Grewal</h6>\r\n</div>\r\n\r\n<p>I was looking for a supplier for my hospital. Vrovwen Biologics Limited turned out to be the best partner I could have hoped for. Their deliveries are always on time and there has never been a quality issue. All in all, I am pleased to be working with t</p>\r\n</div>\r\n\r\n<div class=\"images_box\">\r\n<div class=\"testimonial_img\"><img alt=\"images not found\" class=\"img-center\" src=\"https://cdn.pixabay.com/photo/2017/08/30/17/27/business-woman-2697954_960_720.jpg\" /></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"testimonials\">\r\n<div class=\"testimonial_content\">\r\n<div class=\"testimonial_caption\">\r\n<h6>Manoj Sahu</h6>\r\n</div>\r\n\r\n<p>When Covid-19 wave was at its peak, there was a sudden crunch felt for quality life-saving medicines. Vrovwen Biologics Limited rose to the occasion and stepped up medicine manufacturing to meet this demand. The medicines were delivered on time to hospi</p>\r\n</div>\r\n\r\n<div class=\"images_box\">\r\n<div class=\"testimonial_img\"><img alt=\"images not found\" class=\"img-center\" src=\"https://cdn.pixabay.com/photo/2016/02/19/10/56/man-1209494_960_720.jpg\" /></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"testimonials\">\r\n<div class=\"testimonial_content\">\r\n<div class=\"testimonial_caption\">\r\n<h6>Preeti Ahuja</h6>\r\n</div>\r\n\r\n<p>I have been working with Vrovwen Biologics for a long time now. One thing that impressed and motivated me to continue working with this company was the high standards of quality maintained by the company. Medicines undergo stringent quality checking bef</p>\r\n</div>\r\n\r\n<div class=\"images_box\">\r\n<div class=\"testimonial_img\"><img alt=\"images not found\" class=\"img-center\" src=\"https://cdn.pixabay.com/photo/2017/09/21/19/06/woman-2773007_960_720.jpg\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section>\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"full\">\r\n<div class=\"heading_main text_align_center contoing\">\r\n<h2>Contact Us</h2>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6\">\r\n<div class=\"cont-form-img\"><img src=\"/front_asset/assets/images/email-marketing-internet-chatting-24-hours-support_335657-3009.webp\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-6\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-md-12\">\r\n<hr class=\"mb-5\" /><!-- form card register -->\r\n<div class=\"card card-outline-secondary\">\r\n<div class=\"card-body\">\r\n<form autocomplete=\"off\" class=\"form\" role=\"form\">\r\n<div class=\"form-group\"><label for=\"inputName\">Name</label> <input class=\"form-control\" id=\"inputName\" placeholder=\"Full name\" type=\"text\" /></div>\r\n\r\n<div class=\"form-group\"><label for=\"inputEmail3\">Email</label> <input class=\"form-control\" id=\"inputEmail3\" placeholder=\"Email\" required=\"\" type=\"email\" /></div>\r\n\r\n<div class=\"form-group\"><label for=\"inputmobile\">Phone</label> <input class=\"form-control\" id=\"inputmobile\" placeholder=\"Phone\" required=\"\" type=\"Phone\" /></div>\r\n\r\n<div class=\"form-group\"><label for=\"inputmessage\">Message</label><textarea class=\"form-control\" id=\"inputmessage\" placeholder=\"message\" required=\"\" type=\"textare\"></textarea></div>\r\n\r\n<div class=\"form-group\"><button class=\"btn btn-danger btn-lg float-right\" type=\"submit\">Send</button></div>\r\n</form>\r\n</div>\r\n</div>\r\n<!-- /form card register --></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n</body>\r\n</html>', 'Home', 'Pages/Fi7PirHLc3pcyWpZYfaiTxFwmG9OEgqG6RmCUjoO.png', 'home', 'home', 'home', 1, '2021-04-07 00:19:14', '2022-05-21 16:47:07'),
(16, 1, 'about us', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body><!-- Start Team Man Section --><!-- Start Page Banner Section -->\r\n<section class=\"banner-section\">\r\n<div class=\"d-table\">\r\n<div class=\"d-tablecell\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<div class=\"page-title\">\r\n<h2>About us our <span>company</span></h2>\r\n\r\n<ul>\r\n	<li><a href=\"index.html\">home </a></li>\r\n	<li>about one</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- End Page Banner Section --><!-- Start About Section -->\r\n\r\n<section class=\"about-section pb-100\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-6\">\r\n<div class=\"about-text-wrapper\">\r\n<div class=\"section-title-left\">\r\n<h4>about us</h4>\r\n\r\n<h2>Pramiscure Pharmaceuticals | <span>Leading </span> Ethical<span>House</span></h2>\r\n\r\n<p>At Pramiscure Pharmaceuticals, healthcare is an art, not a craft; a vocation, not a business; a calling in which our heart and intellect will be equally occupied. Pramiscure Pharmaceuticals, founded in 2021, has grown to become a significant Indian pharmaceutical company, producer, and distributor. Here at Pramiscure Pharmaceuticals, we strive for perfection and provide different ranges like Ethical, Branded generic , and critical care. We take all required precautions, even the smallest, to ensure that our goods are of the most excellent quality since we care about our customers and the planet&#39;s future. We provide the best services for Ethical House and third party manufacturing services.</p>\r\n</div>\r\n\r\n<div class=\"about-list about-one-list\">\r\n<h3>AnnantCare</h3>\r\n\r\n<p>&gt;We always ensure the best quality of products at affordable price to our Anantcare family by ensuring strong quality parameters.</p>\r\n</div>\r\n\r\n<div class=\"about-list about-one-list\">\r\n<h3>Aloracure</h3>\r\n\r\n<p>Aloracure is a division of Pramiscure Pharmaceutical that offer a cutting-edge but reasonably priced selection of critical care medications.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6\">\r\n<div class=\"about-img-wrapper\">\r\n<div class=\"about-img-1\"><img alt=\"\" src=\"/front_asset/assets/img/blog18.png\" /></div>\r\n\r\n<div class=\"about-img-2\"><img alt=\"\" src=\"/front_asset/assets/img/blog23.png\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- End About Section -->\r\n\r\n<section class=\"team-man-section team-one-section ptb-100\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12\">\r\n<div class=\"section-title-left\">\r\n<h4>Who We are</h4>\r\n\r\n<h2><span>They&rsquo;re</span> Head Of Team</h2>\r\n\r\n<p>Pramiscure Pharmaceuticals is a trusted and well-acknowledged name in the PCD Pharma Franchise business and these are our prominent leaders who made it possible with their hardworking efforts.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-lg-4 col-md-6 col-sm-6\">\r\n<div class=\"single-team-wrapper mb-30\">\r\n<div class=\"single-team\"><img alt=\"\" src=\"assets/img/team-1.jpg\" />\r\n<ul class=\"social-links\">\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"single-team-title\">\r\n<h4>Rampal Jindal</h4>\r\n\r\n<p>CEO</p>\r\n<span>Rampal Jindal is the CEO of Pramiscure Pharmaceuticals and is responsible for the quality of our products. It was the immense hard work and vision of Rampal Jindal that made this company a pioneer in the pharmaceutical industry. In addition to allocating funds and building and managing the executive team, he is in charge of establishing and carrying out the organization&#39;s strategy. </span>\r\n\r\n<div class=\"team-icon\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-4 col-md-6 col-sm-6\">\r\n<div class=\"single-team-wrapper mb-30\">\r\n<div class=\"single-team\"><img alt=\"\" src=\"assets/img/team-2.jpg\" />\r\n<ul class=\"social-links\">\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"single-team-title\">\r\n<h4>Rakesh Singla</h4>\r\n\r\n<p>CFO</p>\r\n<span>Being the Chief Financial Officer of Pramiscure Pharmaceuticals, Rakesh Singla has years of experience in the industry. His knowledge of the industry is unmatched and is very dedicated to the growth of the company. He is responsible for a company&#39;s past and present financial situation and is an integral part of a company&#39;s management and financial future. </span>\r\n\r\n<div class=\"team-icon\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-4 col-md-6 col-sm-6 offset-sm-3 offset-lg-0\">\r\n<div class=\"single-team-wrapper mb-30\">\r\n<div class=\"single-team\"><img alt=\"\" src=\"assets/img/team-3.jpg\" />\r\n<ul class=\"social-links\">\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"single-team-title\">\r\n<h4>Deepak Gupta</h4>\r\n\r\n<p>COO</p>\r\n<span>Deepak Gupta is the Chief Operating Officer of Pramsicure Pharmaceuticals and has a dual role that combines the functions of chief executive and manager. He designs and implements policies to promote company culture and vision and oversees operations to keep businesses on track. </span>\r\n\r\n<div class=\"team-icon\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- End Team Man Section --></body>\r\n</html>', 'about-us', 'Pages/NCbl6xx0vbb9TZWS6lZmI7WyOBbetyLunUEwKFOT.jpeg', 'about-us', 'about-us', 'about-us', 1, '2022-02-04 23:06:47', '2022-09-30 14:24:52'),
(22, 1, 'Contact Us', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body><!-- Start Page Banner Section -->\r\n<section class=\"banner-section\">\r\n<div class=\"d-table\">\r\n<div class=\"d-tablecell\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<div class=\"page-title page-title-two\">\r\n<h2>ABOUT OUR <span>contact</span></h2>\r\n\r\n<ul>\r\n	<li><a href=\"index-4.html\">home </a></li>\r\n	<li>contact two</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- End Page Banner Section --><!-- Start Contact Section -->\r\n\r\n<section class=\"contact-section contact-section-two\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-8\">\r\n<div class=\"Form-contact\">\r\n<div class=\"section-title-left home-page-four-section-title\">\r\n<h4>Message us</h4>\r\n\r\n<h2><span>Drop us</span> message for any query</h2>\r\n</div>\r\n\r\n<form id=\"contactForm\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-6 col-sm-6\">\r\n<div class=\"form-group\"><input class=\"form-control\" data-error=\"Please enter your name\" id=\"name\" name=\"name\" placeholder=\"Your Name\" required=\"\" type=\"text\" />\r\n<div class=\"help-block with-errors\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-sm-6\">\r\n<div class=\"form-group\"><input class=\"form-control\" data-error=\"Please enter your email\" id=\"email\" name=\"email\" placeholder=\"Your Email\" required=\"\" type=\"email\" />\r\n<div class=\"help-block with-errors\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-sm-6\">\r\n<div class=\"form-group\"><input class=\"form-control\" data-error=\"Please enter your number\" id=\"phone_number\" name=\"phone_number\" placeholder=\"Your Phone\" required=\"\" type=\"text\" />\r\n<div class=\"help-block with-errors\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-sm-6\">\r\n<div class=\"form-group\"><input class=\"form-control\" data-error=\"Please enter your subject\" id=\"msg_subject\" name=\"msg_subject\" placeholder=\"Your Subject\" required=\"\" type=\"text\" />\r\n<div class=\"help-block with-errors\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-12\">\r\n<div class=\"form-group\"><textarea class=\"form-control textarea-hight\" cols=\"30\" data-error=\"Write your message\" id=\"message\" name=\"message\" placeholder=\"Your Message\" required=\"\" rows=\"5\"></textarea>\r\n\r\n<div class=\"help-block with-errors\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-12\"><button class=\"default-btn btn-two\" type=\"submit\">Send Message</button>\r\n\r\n<div class=\"h3 text-center hidden\" id=\"msgSubmit\">&nbsp;</div>\r\n\r\n<div class=\"clearfix\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</form>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-4\">\r\n<div class=\"get-in-touch-section\">\r\n<div class=\"get-in\">\r\n<h4>contact us</h4>\r\n\r\n<h3><span>Get in</span> Touch</h3>\r\n\r\n<p>Pramiscure Pharmaceuticals is a trusted and well-acknowledged name in the PCD Pharma Franchise business. For any query or product information contact us right away.</p>\r\n\r\n<ul class=\"contact-info\">\r\n	<li><a href=\"tel:1-800-555-1234\">Call us 1-800-555-1234</a></li>\r\n	<li><a href=\"https://templates.envytheme.com/cdn-cgi/l/email-protection#e68f888089a6838b87948792c885898b\"><span class=\"__cf_email__\" data-cfemail=\"7f161119103f1a121e0d1e0b511c1012\">[email&nbsp;protected]</span></a></li>\r\n	<li>Open Hours 09:00 am - 06:00 pm</li>\r\n	<li>Co-operate office - SCO-842,SF,NAC, CHANDIGARH, INDIA,160101<br />\r\n	HEAD OFFICE - ANNANTA COMPLEX, TOWNLET BANA, SECTOR -25, PANCHKULA, HARYANA, INDIA,134116</li>\r\n</ul>\r\n\r\n<h4>Follow on:</h4>\r\n\r\n<ul class=\"social-links\">\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- End Contact Section --><!-- End Map Section -->\r\n\r\n<div class=\"map-section\"><iframe allowfullscreen=\"\" height=\"450\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3431.8302931897997!2d76.88522691512989!3d30.66690698166017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5b97719142f5070b!2zMzDCsDQwJzAwLjkiTiA3NsKwNTMnMTQuNyJF!5e0!3m2!1sen!2sin!4v1664522004631!5m2!1sen!2sin\" style=\"border:0;\" width=\"600\"></iframe></div>\r\n<!-- End Map Section --></body>\r\n</html>', 'Contact-Us', 'Pages/1E4LDVHYjgENBm4cdpFTXSzxvgGSNN69p4AGNLc3.jpg', 'contact-us', 'contact-us', 'contact-us', 1, '2022-08-23 23:07:15', '2022-11-04 19:56:40'),
(17, 1, 'pcd pharma franchise', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body><!-- Start Page Banner Section -->\r\n<section class=\"banner-section\">\r\n<div class=\"d-table\">\r\n<div class=\"d-tablecell\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<div class=\"page-title page-title-two\">\r\n<h2>PCD Pharma</h2>\r\n\r\n<ul>\r\n	<li><a href=\"index-4.html\">home </a></li>\r\n	<li>PCD Pharma</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- End Page Banner Section --><!-- Start Contact Section --><!-- End Page Banner Section --><!-- Start Work Section -->\r\n\r\n<section class=\"work-section pb-100\">\r\n<div class=\"container\">\r\n<div class=\"row align-items-center\">\r\n<div class=\"col-lg-6\">\r\n<div class=\"work-img\"><img alt=\"\" src=\"/front_asset/assets/img/pcd.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-lg-6\">\r\n<div class=\"section-title-left\">\r\n<h2><span>We Have</span>Pcd Pharma</h2>\r\n\r\n<p>Pramiscure Pharmaceuticals Pharma Franchise Company is a reputable and well-known company in the PCD Pharma Franchise industry. We are one of the leading pharma franchise firms in Chandigarh, supplying a wide range of herbal and pharmaceutical items throughout India. We are India\'s fastest-growing PCD Pharma Franchise Company, providing Pharma Franchise with monopoly rights. Pramiscure Pharmaceuticals is well-known in India as one of the greatest PCD Pharma Franchise Companies. \r\n</p>\r\n\r\n<p>In India, Pramiscure Pharmaceuticals is a prominent PCD Pharma Franchise Company. We provide the highest quality Pharma PCD goods. Investing in this area might provide you with a good return on investment and earnings in the future. Start a drug firm and surround yourself with great chances.</p>\r\n</div>\r\n\r\n<div class=\"work-list\">\r\n<ul>\r\n	<li>\r\n	<h4>Our Mission</h4>\r\n<p>The company aims to be ranked among the top 5 pharmaceutical companies in India by 2025.\r\n\r\n</p>\r\n	</li>\r\n	<li>\r\n	<h4>Our Philosophy</h4>\r\n    <p>We always “Promise to Cure”.</p>\r\n	</li>\r\n	<li>\r\n	<h4>\r\nOur Vision</h4>\r\n<p>Our goal is to help patients reclaim the precious moments they have lost due to illness.</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- End Work Section --></body>\r\n</html>', 'pcd-pharma-franchise', 'Pages/azQoMQgYEtu7wmncmBwakoDzIaKNdp4lSXWUzDBX.jpeg', 'pcd-pharma-franchise', 'pcd-pharma-franchise', 'pcd-pharma-franchise', 1, '2022-02-04 23:48:43', '2022-09-01 22:19:08'),
(18, 1, 'third party manufacturing', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body><!-- Start Page Banner Section -->\r\n<section class=\"banner-section\">\r\n<div class=\"d-table\">\r\n<div class=\"d-tablecell\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<div class=\"page-title page-title-two\">\r\n<h2>Third Party Manufacturing</h2>\r\n\r\n<ul>\r\n	<li><a href=\"index-4.html\">home </a></li>\r\n	<li>Third Party</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<div id=\"content\">\r\n<div class=\"current content-wrapper animated\" id=\"bacon\">\r\n<div class=\"row align-items-center\">\r\n<div class=\"col-lg-6\">\r\n<div class=\"company-text\">\r\n<h3>Third Party Manufacturing</h3>\r\n\r\n<p>Pramiscure Pharmaceuticals is sincerely committed to offering health solutions via medications. That is why we provide high-quality third party manufacturing services. With a customer-centric approach, we provide a broad range of pharmaceutical manufacturing through our established facilities. Pramiscure Pharmaceuticals is the top third-party manufacturer in Chandigarh to offer you indigenous production services.With the assistance of qualified personnel and established facilities, the firm employs the best pharmaceutical production procedures.</p>\r\n\r\n<p>With premium packing solutions, our organization ensures the timely completion and delivery of all medical forms.Our organization offers legitimate and cost-effective pharma manufacturing strategies to Pharma Franchise and PCD Franchise companies.All items and medications are accessible with DCGI accreditation, which confirms their quality.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6\">\r\n<div class=\"company-img\"><img alt=\"company-man\" src=\"/front_asset/assets/img/Allopathe_Medicine1623565119-2.jpg\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- Start About Section -->\r\n\r\n<div id=\"content\">\r\n<div class=\"current content-wrapper animated\" id=\"bacon\">\r\n<div class=\"row align-items-center\">\r\n<div class=\"col-lg-6\">\r\n<div class=\"company-img\"><img alt=\"company-man\" src=\"/front_asset/assets/img/Generic-Medicine-PCD-Franchise-Company-in-India.jpeg\" /></div>\r\n</div>\r\n\r\n<div class=\"col-lg-6\">\r\n<div class=\"company-text\">\r\n<h3>Associate with the best third party manufacturers in India</h3>\r\n\r\n<p>Pramiscure Pharmaceuticals is India\'s top Pharma Production Company, creating high-quality pharmaceuticals in GMP-WHO integrated manufacturing plants. We have a number of people associated with us for our manufacturing facilities. We create things in volume, which lowers manufacturing and labor costs.</p>\r\n\r\n<p>The GMP-WHO authorities have certified our production units. Furthermore, the production unit is extremely modern and outfitted with cutting-edge technology. The third-party manufacturing firm makes items in a short period of time and space by focusing on each stage of the manufacturing process. All across the world, our manufactured items are gaining international and worldwide acclaim.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- End About Section --></div>\r\n</div>\r\n</body>\r\n</html>', 'third-party-manufacturing', 'Pages/OLPYqhkhyJmnnEx95GoIvgoNt5l9MtfgvCvbJ8zO.jpeg', 'third-party-manufacturing', 'third-party-manufacturing', 'third-party-manufacturing', 1, '2022-02-05 00:14:36', '2022-09-01 22:24:22'),
(21, 1, 'track order', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<section class=\"trace\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<div class=\"track-img\"><a href=\"http://182.18.145.85/shreeazad/tracking.html\"><img src=\"/public/front_asset/assets/images/track/azad.png\" /></a></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"track-img\"><a href=\"https://www.dtdc.in/tracking/shipment-tracking.asp\"><img src=\"/public/front_asset/assets/images/track/dtdc.jpg\" /></a></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"track-img\"><a href=\"https://www.fedex.com/en-in/home.html\"><img src=\"/public/front_asset/assets/images/track/fedex.png\" /></a></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"track-img\"><a href=\"https://www.gati.com/\"><img src=\"/public/front_asset/assets/images/track/gati.jpg\" /></a></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"track-img\"><a href=\"http://omsanchar.omlogistics.co.in/omcntrack/\"><img src=\"/public/front_asset/assets/images/track/om.jpg\" /></a></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"track-img\"><a href=\"https://www.vrovwenbiologics.com/wp-content/uploads/2021/07/on-dot.png\"><img src=\"/public/front_asset/assets/images/track/on-dot.png\" /></a></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"track-img\"><a href=\"http://www.safexpress.com/Portal/faces/TrackShipment.jspx\"><img src=\"/public/front_asset/assets/images/track/safe-express.png\" /></a></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"track-img\"><a href=\"https://www.tpcindia.com/\"><img src=\"/public/front_asset/assets/images/track/tpc-logo.png\" /></a></div>\r\n</div>\r\n\r\n<div class=\"col-md-3\">\r\n<div class=\"track-img\"><a href=\"https://trackon.in/Tracking/t2/MultipleTracking\"><img src=\"/public/front_asset/assets/images/track/trackon.png\" /></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n</body>\r\n</html>', 'track-order', 'Pages/VvlYVyqZPUVZuRAhleLIgbSWPrhM2dvtSRwHolqZ.jpeg', 'track-order', 'track-order', 'track-order', 1, '2022-04-18 00:17:48', '2022-06-18 17:11:09'),
(23, 1, 'Careers', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body><!-- Start Page Banner Section -->\r\n<section class=\"banner-section project-one-banner\">\r\n<div class=\"d-table\">\r\n<div class=\"d-tablecell\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<div class=\"page-title\">\r\n<h2>our company <span>contact</span></h2>\r\n\r\n<ul>\r\n	<li><a href=\"index.html\">home </a></li>\r\n	<li>contact one</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- End Page Banner Section --><!-- Start Contact Section -->\r\n\r\n<section class=\"contact-section pt-100\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12\">\r\n<div class=\"Form-contact\">\r\n<div class=\"section-title-left\">\r\n<h4>Message us</h4>\r\n\r\n<h2><span>Drop us</span> message for any query</h2>\r\n</div>\r\n\r\n<form id=\"contactForm\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-6 col-sm-6\">\r\n<div class=\"form-group\"><input class=\"form-control\" data-error=\"Please enter your name\" id=\"name\" name=\"name\" placeholder=\"Your Name\" required=\"\" type=\"text\" />\r\n<div class=\"help-block with-errors\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-sm-6\">\r\n<div class=\"form-group\"><input class=\"form-control\" data-error=\"Please enter your email\" id=\"email\" name=\"email\" placeholder=\"Your Email\" required=\"\" type=\"email\" />\r\n<div class=\"help-block with-errors\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-sm-6\">\r\n<div class=\"form-group\"><input class=\"form-control\" data-error=\"Please enter your number\" id=\"phone_number\" name=\"phone_number\" placeholder=\"Your Phone\" required=\"\" type=\"text\" />\r\n<div class=\"help-block with-errors\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-sm-6\">\r\n<div class=\"form-group\"><input class=\"form-control\" data-error=\"Please enter your subject\" id=\"msg_subject\" name=\"msg_subject\" placeholder=\"Your Subject\" required=\"\" type=\"text\" />\r\n<div class=\"help-block with-errors\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-12\">\r\n<div class=\"form-group\"><textarea class=\"form-control textarea-hight\" cols=\"30\" data-error=\"Write your message\" id=\"message\" name=\"message\" placeholder=\"Your Message\" required=\"\" rows=\"5\"></textarea>\r\n\r\n<div class=\"help-block with-errors\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-12\"><button class=\"default-btn btn-two\" type=\"submit\">Send Message</button>\r\n\r\n<div class=\"h3 text-center hidden\" id=\"msgSubmit\">&nbsp;</div>\r\n\r\n<div class=\"clearfix\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</form>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- End Contact Section --><!-- Start Get in Touch Section -->\r\n\r\n<div class=\"get-in-touch-section pt-100\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12\">\r\n<div class=\"get-in-touch-wrapper\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-6 col-md-6\">\r\n<div class=\"get-in\">\r\n<h3>Get in Touch</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et doe Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod</p>\r\n\r\n<ul class=\"social-links\">\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-md-6\">\r\n<div class=\"contact-wrapper\">\r\n<h3>Contact Us</h3>\r\n\r\n<ul class=\"contact-info\">\r\n	<li><a href=\"tel: 8968041670\">Call us 8968041670</a></li>\r\n	<li><a href=\"https://templates.envytheme.com/cdn-cgi/l/email-protection#ef86818980af8a828e9d8e9bc18c8082\"><span class=\"__cf_email__\" data-cfemail=\"6e070008012e0b030f1c0f1a400d0103\">[email&nbsp;protected]</span></a></li>\r\n	<li>Open: Mon to Sat 9:00am to 6:00pm</li>\r\n	<li>Co-operate office - SCO-842,SF,NAC, CHANDIGARH, INDIA,160101</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- End Get in Touch Section --><!-- End Map Section -->\r\n\r\n<div class=\"maps-section ptb-100\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12\"><iframe allowfullscreen=\"\" height=\"450\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3431.8235129172767!2d76.8850758151299!3d30.667097881660002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xea7f6b592486c6c4!2zMzDCsDQwJzAxLjYiTiA3NsKwNTMnMTQuMiJF!5e0!3m2!1sen!2sin!4v1665210404212!5m2!1sen!2sin\" style=\"border:0;\" width=\"100%\"></iframe></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- End Map Section --></body>\r\n</html>', 'Careers-us', 'Pages/Mp2lfcTBYZFpMlq056lkyD1EGfnzUoawXdnqjzrl.png', 'careers-us', 'careers-us', 'careers-us', 1, '2022-09-14 04:03:22', '2022-10-08 13:31:09'),
(24, 1, 'Branded Generic', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body><!-- Start Page Banner Section -->\r\n<section class=\"banner-section\">\r\n<div class=\"d-table\">\r\n<div class=\"d-tablecell\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<div class=\"page-title\">\r\n<h2>Branded<span> Generics</span></h2>\r\n\r\n<ul>\r\n	<li><a href=\"index.html\">home </a></li>\r\n	<li>Branded Generics</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- End Page Banner Section --><!-- Start About Section --><!-- End About Section --><!-- Start Work Section -->\r\n\r\n<section class=\"work-section pb-100\">\r\n<div class=\"container\">\r\n<div class=\"row align-items-center\">\r\n<div class=\"col-lg-6\">\r\n<div class=\"work-img\"><img alt=\"\" src=\"/front_asset/assets/img/img 2.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-lg-6\">\r\n<div class=\"section-title-left\">\r\n<h4>Branded Generic Medicine</h4>\r\n\r\n<h2><span>Branded Generic Medicine Manufacturer in India</span></h2>\r\n\r\n<p>Following the expiration of the patents on the original medications, and of course only if they meet FDA requirements, generic medications become available for purchase. We therefore strictly adhere to all such compliances as a leading generic drug manufacturing company in India. Branded generics and authorized generics are frequently confused, but they are not the same. Pramiscure Pharmaceuticals are the top branded generic medicine manufacturer in India and are well known all over the nation for our on-time delivery services.</p>\r\n\r\n<p>You no longer need to check several websites to compare prices before placing an order because we offer a large selection of branded generic medications. Pramiscure Pharmaceuticals is able to provide you with the most competitive, up-to-the-minute pricing for all branded generic medicines in India. Being the top generic medicine manufacturing company in India, we strictly adhere to the following standards when producing our generic medications:</p>\r\n</div>\r\n\r\n<ul>\r\n	<li>Making use of highly efficient components.</li>\r\n	<li>superior ingredients, both active and inactive.</li>\r\n	<li>Highest standards for storage precautions.</li>\r\n	<li>Elevated benchmarks for testing.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- End Work Section -->\r\n\r\n<div class=\"current content-wrapper animated\" id=\"bacon\">\r\n<div class=\"row align-items-center\">\r\n<div class=\"col-lg-6\">\r\n<div class=\"company-text\">\r\n<h3>Pramiscure Pharmaceuticals and Branded Generics</h3>\r\n\r\n<p>Despite the fact that there are branded medications available to treat common ailments like the common cold, headaches, body aches, some vitamin deficiencies, etc., these medications end up burning a large hole in our wallets. As a result, there are companies like Pramiscure Pharmaceuticals that produce generic medications and export them to all corners of the globe.</p>\r\n\r\n<p>We provide generic medicines that are both effective and affordable. Our products satisfy a range of provider needs, whether they are for specialty pharmaceuticals, generic brands, over-the-counter medications, or generic pharmaceutical products with a time limit. We are able to ship these products to a broad range of providers across the country thanks to our extensive distribution network.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6\">\r\n<div class=\"company-img\"><img alt=\"company-man\" src=\"/front_asset/assets/img/istockphoto-624033418-612x612.jpg\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</body>\r\n</html>', 'Branded-Generics', 'Pages/YIgwOexP8sO6odrQ1x68Tiib18r0zkLVnUgrTodq.jpg', 'branded-generics', 'branded-generics', 'branded-generics', 1, '2022-09-23 16:16:06', '2022-09-26 16:22:30');
INSERT INTO `pages` (`id`, `category_id`, `name`, `description`, `slug`, `image`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(25, 1, 'Critical Care', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body><!-- Start Page Banner Section -->\r\n<section class=\"banner-section\">\r\n<div class=\"d-table\">\r\n<div class=\"d-tablecell\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<div class=\"page-title page-title-two\">\r\n<h2>Critical-<span>Care </span></h2>\r\n\r\n<ul>\r\n	<li><a href=\"index-4.html\">home </a></li>\r\n	<li>Critical-Care</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- End Page Banner Section -->\r\n\r\n<section class=\"about-section-four ptb-100\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-6\">\r\n<div class=\"experience-video\"><img alt=\"\" src=\"/front_asset/assets/img/m.png\" />\r\n\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6\">\r\n<div class=\"about-text-wrapper\">\r\n<div class=\"section-title-left home-page-four-section-title\">\r\n<h4>Pramiscure Pharmaceuticals</h4>\r\n\r\n<h2><span>Critical Care</span>PCD Pharma Franchise Company</h2>\r\n\r\n<p>Pramiscure Pharmaceuticals offers you an exclusive line of critical medicine. This is a specialized pharmaceutical business that is committed to finding, creating, and distributing a high standard of critical care medications across the nation. We are a pharmaceutical company focused on innovation that provides care to people with unmet medical needs and those for whom there aren\'t many effective treatments. Our range of critical care pharmaceutical products includes tablets, injections, syrups, capsules, and other types of medicines. We are therefore the top pharmaceutical company in the critical care range.\r\n</p>\r\n</div>\r\n<p>As one of the top Critical care PCD pharma franchise companies in India, Pramsicure Pharmaceuticals has distribution channels all over the nation for convenient medication delivery. The company\'s mission is to enhance the lives of patients by creating. </p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- Start Choose Section -->\r\n\r\n<section class=\"choose-section\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-8\">\r\n<div class=\"choose-full-wrapper\">\r\n<div class=\"section-title-left home-page-four-section-title\">\r\n<h4>why choose us</h4>\r\n\r\n<h2>How is<span>  Pramiscure Pharmaceuticals</span> different from other <span>critical care ranges? </span></h2>\r\n\r\n<p>With the goal of improving patients\' quality of life, we have developed a product portfolio for more effective medical care with the help of our pharma experts. Pramiscure Pharmaceuticals is willing to work with other companies to provide patients with the medications they need. We are looking for pharma industry experts and business partners who will work with us to offer a cutting-edge but reasonably priced selection of critical care medications to people all across the country. Here are a few factors that make us the best choice for Critical Care Range in India:</p>\r\n<div class=\"r\">\r\n<ul>\r\n    <li>To meet the demands of both the market and patients, we are working to develop new medications.</li>\r\n    <li>At the most competitive price, Pramiscure Pharmaceuticals provides quality that leads the industry.</li>\r\n    <li>We have combined product sourcing and outsourcing while adhering to all rules and guidelines from the relevant authorities.</li>\r\n    <li>The Company develops, produces, and distributes medicines that are both safe and efficient and are designed for use in life-saving patient care.</li>\r\n    <li>We develop sales and marketing plans for our products in order to support our business partners. From our end, our partner receives marketing support, special monopoly rights, and much more. </li>\r\n    \r\n    </ul></div>\r\n</div>\r\n\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-4 p-0 choose-wraps\">\r\n<div class=\"choose-bg\">&nbsp;</div>\r\n<img alt=\"Choose\" class=\"choose-img-none\" src=\"/front_asset/assets/img/home-four/choose-bg.jpg\" /></div>\r\n</div>\r\n</div>\r\n</section>\r\n<!-- End Choose Section --></body>\r\n</html>', 'Critical-Care', 'Pages/m9Qk1AWAeqbqBqPLVHh5ABzANrevbaDhIvtIxJlC.jpg', 'critical-care', 'critical-care', 'critical-care', 1, '2022-09-23 16:56:56', '2022-09-26 14:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visual` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `composition` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `visual`, `packing`, `price`, `composition`, `slug`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1041, 'Amoxycure-lb 625', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php9002.tmp', NULL, '10*10 Alu Alu Pack', '223.4', 'Amoxycillin 500mg ,potassium clavulanate 125mg & lactic acid\r\nbacillus 60ms tablets', 'amoxycure-lb-625', 'Amoxycure-lb 625', 'Amoxycure-lb 625', 'Amoxycure-lb 625', 1, '2022-08-31 05:38:04', '2022-09-26 11:04:27'),
(1042, 'Ancold', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '10*10 Blister Pack', '65', 'Paracetamol 500mg, Phenylephrine Hydrochloride 5mg, Diphenhydramine Hydrochloride 25mg& Caffeine 30mg(Anhydrous)\r\nTablets', 'ancold', 'Ancold', 'Ancold', 'Ancold', 1, '2022-08-31 05:38:04', '2022-09-26 11:05:28'),
(1043, 'Ketocare - DT', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '10*10 Alu Alu Pack', '82.6', 'Ketrolac Tromethamine 10 mg Dispersible Tablets', 'ketocare-dt', 'Ketocare - DT', 'Ketocare - DT', 'Ketocare - DT', 1, '2022-08-31 05:38:04', '2022-09-26 11:06:04'),
(1044, 'Paranac Tabs', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php998B.tmp', NULL, '10*10 Blister Pack', '52.5', 'Paracetamol 325mg & Diclofenac 50mg Tablets IP', 'paranac-tabs', 'Paranac Tabs', 'Paranac Tabs', 'Paranac Tabs', 1, '2022-08-31 05:38:04', '2022-09-26 11:06:38'),
(1045, 'Paraace - SP', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\phpD30B.tmp', NULL, '10*10 Alu Alu Pack', '120', 'Aceclofenac 100mg, Paracetamol 325 mg & Serratiopeptidase\r\n15mg Tablets', 'paraace-sp', 'Paraace - SP', 'Paraace - SP', 'Paraace - SP', 1, '2022-08-31 05:38:04', '2022-09-26 11:07:11'),
(1046, 'Paranimu', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php9FF7.tmp', NULL, '10*10 Blister Pack', '55.6', 'Nimesulide 100mg& Paracetamol 325mgTablets', 'paranimu', 'Paranimu', 'Paranimu', 'Paranimu', 1, '2022-08-31 05:38:04', '2022-09-26 11:07:43'),
(1047, 'Paracure-650', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\phpFA61.tmp', NULL, '10*15 Blister Pack', '34.2', 'Paracetamol 650mgTablets IP', 'paracure-650', 'Paracure-650', 'Paracure-650', 'Paracure-650', 1, '2022-08-31 05:38:04', '2022-09-26 11:08:13'),
(1048, 'Onvo -MD', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\phpC9DA.tmp', NULL, '10*10 Alu Alu Pack', '109.5', 'Ondansetron 8mg Orally Disintegrating Tablets Tablet IP', 'onvo-md', 'Onvo -MD', 'Onvo -MD', 'Onvo -MD', 1, '2022-08-31 05:38:04', '2022-09-26 11:08:38'),
(1049, 'Mef- Spas', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php2DE7.tmp', NULL, '10*3*10 Blister Pack', '50.99', 'Mefenamic Acid 250mg & Dicyclomine 10mgTablets IP', 'mef-spas', 'Mef- Spas', 'Mef- Spas', 'Mef- Spas', 1, '2022-08-31 05:38:04', '2022-09-26 11:09:01'),
(1050, 'Paraace', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\phpA102.tmp', NULL, '10*10 Blister Pack', '61', 'Aceclofenac 100mg, Paracetamol 325mgTablets', 'paraace', 'Paraace', 'Paraace', 'Paraace', 1, '2022-08-31 05:38:04', '2022-09-26 11:10:19'),
(1051, 'Calcicure', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php6272.tmp', NULL, '10*15 Blister Pack', '95', 'Calcium 500mg & Vitamine  D3 250 I.U.', 'calcicure', 'Calcicure', 'Calcicure', 'Calcicure', 1, '2022-08-31 05:38:04', '2022-09-26 11:09:48'),
(1052, 'Etoreta - P', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\phpDB6D.tmp', NULL, '10*10 Blister Pack', '138.2', 'Etoricoxib 60 mg& Paracetamol 325mg Tablets', 'etoreta-p', 'Etoreta - P', 'Etoreta - P', 'Etoreta - P', 1, '2022-08-31 05:38:04', '2022-09-26 11:10:45'),
(1053, 'Paracure-500', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\phpCC2C.tmp', NULL, '10*10 Blister Pack', '11.3', 'Paracetamol 500mg', 'paracure-500', 'Paracure-500', 'Paracure-500', 'Paracure-500', 1, '2022-08-31 05:38:04', '2022-09-26 11:11:10'),
(1054, 'Azipil-500', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php8015.tmp', NULL, '10*1*3 Blister Pack', '75', 'Azithromycin 500mg', 'azipil-500', 'Azipil-500', 'Azipil-500', 'Azipil-500', 1, '2022-08-31 05:38:04', '2022-09-26 11:11:35'),
(1055, 'Attriwax-25', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '10*10 Blister Pack', '55', 'Hydroxyzine Hydrochloride 25 mgTablet', 'attriwax-25', 'Attriwax-25', 'Attriwax-25', 'Attriwax-25', 1, '2022-08-31 05:38:04', '2022-09-26 11:12:06'),
(1056, 'Levoctz', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpHmcvgM', NULL, '10*10 Blister Pack', '60', 'Levocetirizine Dihydrochloride 5 mg Tablets IP', 'levoctz', 'Levoctz', 'Levoctz', 'Levoctz', 1, '2022-08-31 05:38:04', '2022-09-29 11:26:17'),
(1057, 'Levoctz -M', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>..</body>\r\n</html>', 'Products\\php1CDF.tmp', NULL, '10*10 Alu Alu Pack', '184', 'Montelukast Sodium 10mg& Levocetirizine\r\nDihydrochloride 5mgTablets IP', 'levoctz-m', 'Levoctz -M', 'Levoctz -M', 'Levoctz -M', 1, '2022-08-31 05:38:04', '2022-09-26 11:13:04'),
(1058, 'Cetgin', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/php0mqcgP', NULL, '10*10 Blister Pack', '18.5', 'Cetirizine Hydrochloride 10mg Tablets IP', 'cetgin', 'Cetgin', 'Cetgin', 'Cetgin', 1, '2022-08-31 05:38:04', '2022-09-29 11:26:43'),
(1059, 'Metoloz-XR-25', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php8B27.tmp', NULL, '10*10 Alu Alu Pack', '45', 'Metoprolol XR  25mg', 'metoloz-xr-25', 'Metoloz-XR-25', 'Metoloz-XR-25', 'Metoloz-XR-25', 1, '2022-08-31 05:38:04', '2022-09-26 11:15:23'),
(1060, 'Metoloz-XR-50', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php8C0D.tmp', NULL, '10*10 Alu Alu Pack', '70', 'Metoprolol XR  50 mg', 'metoloz-xr-50', 'Metoloz-XR-50', 'Metoloz-XR-50', 'Metoloz-XR-50', 1, '2022-08-31 05:38:04', '2022-09-26 11:15:52'),
(1061, 'Rosuive-10', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\phpB273.tmp', NULL, '10*10 Alu Alu Pack', '160.8', 'Rosuvastatin 10mg', 'rosuive-10', 'Rosuive-10', 'Rosuive-10', 'Rosuive-10', 1, '2022-08-31 05:38:04', '2022-09-26 11:16:16'),
(1062, 'Rosuive-20', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpArem4F', NULL, '10*10 Alu Alu Pack', '260.7', 'Rosuvastatin 20mg', 'rosuive-20', 'Rosuive-20', 'Rosuive-20', 'Rosuive-20', 1, '2022-08-31 05:38:04', '2022-09-29 11:24:14'),
(1063, 'Rosuive-40', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>..</body>\r\n</html>', 'Products\\phpA3C.tmp', NULL, '10*10 Alu Alu Pack', '352', 'Rosuvastatin 40mg', 'rosuive-40', 'Rosuive-40', 'Rosuive-40', 'Rosuive-40', 1, '2022-08-31 05:38:04', '2022-09-26 11:17:10'),
(1064, 'Etoreta - 90', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '10*10 Blister Pack', '150', 'Etoricoxib 90mg tablets IP', 'etoreta-90', 'Etoreta - 90', 'Etoreta - 90', 'Etoreta - 90', 1, '2022-08-31 05:38:04', '2022-09-26 11:17:28'),
(1065, 'Amlora-5 mg', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '10*10 Alu Alu Pack', '45.5', 'Amlodipine 5mg Tablets IP', 'amlora-5-mg', 'Amlora-5 mg', 'Amlora-5 mg', 'Amlora-5 mg', 1, '2022-08-31 05:38:04', '2022-09-26 11:18:02'),
(1066, 'Telcip-AM', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/php0GqMFb', NULL, '10*10 Alu Alu Pack', '225', 'Telmisartan 40mg & Amlodipine 5mgTablets IP', 'telcip-am', 'Telcip-AM', 'Telcip-AM', 'Telcip-AM', 1, '2022-08-31 05:38:04', '2022-09-29 11:25:39'),
(1067, 'Atocare-10', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpD5YUwE', NULL, '10*10 Alu Alu Pack', '69.9', 'Atorvastatin 10mg', 'atocare-10', 'Atocare-10', 'Atocare-10', 'Atocare-10', 1, '2022-08-31 05:38:04', '2022-09-29 11:20:36'),
(1068, 'Atocare-20', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>..</body>\r\n</html>', 'Products\\php6041.tmp', NULL, '10*10 Alu Alu Pack', '150', 'Atorvastatin 20mg', 'atocare-20', 'Atocare-20', 'Atocare-20', 'Atocare-20', 1, '2022-08-31 05:38:04', '2022-09-26 11:19:15'),
(1069, 'Femcure-XT', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body><br />\r\n.</body>\r\n</html>', 'Products\\php414.tmp', NULL, '10*10 Alu Alu Pack', '145', 'Ferrous Ascorbate 10 mg+Folic acid 1.5mg +Zinc 22.5mg', 'femcure-xt', 'Femcure-XT', 'Femcure-XT', 'Femcure-XT', 1, '2022-08-31 05:38:04', '2022-09-26 11:20:02'),
(1070, 'Telcip-40', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\phpBD4.tmp', NULL, '10*10 Alu Alu Pack', '112', 'Telmisartan 40mg', 'telcip-40', 'Telcip-40', 'Telcip-40', 'Telcip-40', 1, '2022-08-31 05:38:04', '2022-09-26 11:20:24'),
(1071, 'Doxistate Plus', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php7C57.tmp', NULL, '20*10 Alu Alu pack', '230', 'Doxylamine Succinate 20 mg+Pyridoxine Hcl 20 mg+ Folic acid 5 mg tablet', 'doxistate-plus', 'Doxistate Plus', 'Doxistate Plus', 'Doxistate Plus', 1, '2022-08-31 05:38:04', '2022-09-26 11:20:47'),
(1072, 'Pantacure - DSR', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/php61XSYQ', NULL, '10*10 Alu Alu Pack', '120', 'Pantoprazole Gastro-resistant 40mg  & Domperidone 30mg\r\n(Sustained Release) Capsules', 'pantacure-dsr', 'Pantacure - DSR', 'Pantacure - DSR', 'Pantacure - DSR', 1, '2022-08-31 05:38:04', '2022-09-29 11:24:42'),
(1073, 'Rabcare -DSR', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php96D6.tmp', NULL, '10*10 Alu Alu Pack', '110', 'Rabeprazole Sodium 20mg (Enteric coated) & Domperidone 30mg\r\n(Sustained Release) Capsules', 'rabcare-dsr', 'Rabcare -DSR', 'Rabcare -DSR', 'Rabcare -DSR', 1, '2022-08-31 05:38:04', '2022-09-26 11:22:30'),
(1074, 'Espo -D- 40', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php15E1.tmp', NULL, '10*10 Alu Alu Pack', '155', 'Esomeprazole 40mg (Enteric Coated) & Domperidone\r\n30mgSustained Release Capsules', 'espo-d-40', 'Espo -D- 40', 'Espo -D- 40', 'Espo -D- 40', 1, '2022-08-31 05:38:04', '2022-09-26 11:23:24'),
(1075, 'Prebalin-75', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php6362.tmp', NULL, '10*10 Blister Pack', '185', 'Pregabalin 75 mg', 'prebalin-75', 'Prebalin-75', 'Prebalin-75', 'Prebalin-75', 1, '2022-08-31 05:38:04', '2022-09-26 11:23:53'),
(1076, 'Prebalin-M', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '10*10 Alu Alu Pack', '165', 'Pregabalin 75 mg& Methylcobalamin 750mcg Capsules IP', 'prebalin-m', 'Prebalin-M', 'Prebalin-M', 'Prebalin-M', 1, '2022-08-31 05:38:04', '2022-09-26 11:24:27'),
(1077, 'Calcicure -CT', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '10*10 Blister Pack', '155', 'Calcitriol 0.25 mcg + Calcium Carbonate IP 500 Mg(Eq. To Elemental Calcium 200 mg) + Zinc 7.5 mg (Softgel)', 'calcicure-ct', 'Calcicure -CT', 'Calcicure -CT', 'Calcicure -CT', 1, '2022-08-31 05:38:04', '2022-09-26 11:24:43'),
(1078, 'Lactofit', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php6799.tmp', NULL, '170 ml with CTN', '205', 'Lactulose Solution', 'lactofit', 'Lactofit', 'Lactofit', 'Lactofit', 1, '2022-08-31 05:38:04', '2022-09-26 11:25:15'),
(1079, 'Alkacure', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\phpA408.tmp', NULL, '100 ml with Label Only', '94.06', 'Each 5 ml contains :\r\nDisodium hydrogen citrate BP 1.53 gm In a Flavoured Palatable base', 'alkacure', 'Alkacure', 'Alkacure', 'Alkacure', 1, '2022-08-31 05:38:04', '2022-09-26 11:25:35'),
(1080, 'Oflocin', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '60 ml with CTN', '69.99', 'Ofloxacin IP 50 mg', 'oflocin', 'Oflocin', 'Oflocin', 'Oflocin', 1, '2022-08-31 05:38:04', '2022-09-26 11:26:00'),
(1081, 'Onvo Syrup', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/php66tDa7', NULL, '30 ml', '44', 'Ondansetron Hydrochloride  2 mg', 'onvo-syrup', 'Onvo Syrup', 'Onvo Syrup', 'Onvo Syrup', 1, '2022-08-31 05:38:04', '2022-09-29 11:25:13'),
(1082, 'Cherrycare', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpMsUAhq', NULL, '100 ml', '130', 'Dextromethorphan HBR10mg, Phenylephrine HCL 5mg &\r\nChlorpheniramine Maleate 2mg Syrup', 'cherrycare', 'Cherrycare', 'Cherrycare', 'Cherrycare', 1, '2022-08-31 05:38:04', '2022-09-29 11:22:07'),
(1083, 'Mupicure', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '10gm', '230', 'Mupirocin (2% w/w)', 'mupicure', 'Mupicure', 'Mupicure', 'Mupicure', 1, '2022-08-31 05:38:04', '2022-09-26 11:27:27'),
(1084, 'Lulicure Cream', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '15gm', '202', 'Luliconazole Cream 1%', 'lulicure-cream', 'Lulicure Cream', 'Lulicure Cream', 'Lulicure Cream', 1, '2022-08-31 05:38:04', '2022-09-26 11:28:11'),
(1085, 'Betnacare-N Cream', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '15 gm', '118', 'Betamethasone (0.1% w/w) + Neomycin (0.5% w/w)', 'betnacare-n-cream', 'Betnacare-N Cream', 'Betnacare-N Cream', 'Betnacare-N Cream', 1, '2022-08-31 05:38:04', '2022-09-26 11:29:07'),
(1086, 'Oxagesic Nano Gel', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\phpEDD3.tmp', NULL, '30 gm', '95', 'Diclofenac4.6% Diethyl amine 4.0 %, methyl Salicylate 10.0%,\r\nlinseed Oil 3.0% & Menthol Gel 5.0%', 'oxagesic-nano-gel', 'Oxagesic Nano Gel', 'Oxagesic Nano Gel', 'Oxagesic Nano Gel', 1, '2022-08-31 05:38:04', '2022-09-26 11:29:44'),
(1087, 'Hiodine', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '25 gm', '120', 'Povidone Iodine', 'hiodine', 'Hiodine', 'Hiodine', 'Hiodine', 1, '2022-08-31 05:38:04', '2022-09-26 11:30:08'),
(1088, 'EMESCURE', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products\\php185D.tmp', NULL, '10*2 ML', '14.5', 'Ondansetrone 2mg', 'emescure', 'EMESCURE', 'EMESCURE', 'EMESCURE', 1, '2022-08-31 05:38:04', '2022-09-26 11:31:04'),
(1089, 'TRENAXAM', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '5*5 ML', '92.8', 'Tranexamic acid', 'trenaxam', 'TRENAXAM', 'TRENAXAM', 'TRENAXAM', 1, '2022-08-31 05:38:04', '2022-09-26 11:31:25'),
(1090, 'HYDROCORTISOL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '100 MG', '40.6', 'Hydrocortisone Sodium Succinate', 'hydrocortisol', 'HYDROCORTISOL', 'HYDROCORTISOL', 'HYDROCORTISOL', 1, '2022-08-31 05:38:04', '2022-09-26 11:31:43'),
(1091, 'ETAPRAZOLE', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, 'with sterile water', '55.36', 'Pantoprazole', 'etaprazole', 'ETAPRAZOLE', 'ETAPRAZOLE', 'ETAPRAZOLE', 1, '2022-08-31 05:38:04', '2022-09-26 11:32:12'),
(1092, 'NEMCIL-500', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '1*2ml', '1450', 'Imipenem 500 & cilastatin 500', 'nemcil-500', 'NEMCIL-500', 'NEMCIL-500', 'NEMCIL-500', 1, '2022-08-31 05:38:04', '2022-09-26 11:32:35'),
(1093, 'BECILINE 4.5', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, '.', '490', 'Piperacillin 4gm & Tazobactam 500mg', 'beciline-45', 'BECILINE 4.5', 'BECILINE 4.5', 'BECILINE 4.5', 1, '2022-08-31 05:38:04', '2022-09-26 11:33:08'),
(1094, 'ADECLIN 300 INJ2ML AMP', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, 'AMP', '140', 'Clindamycin 300 mg', 'adeclin-300-inj2ml-amp', 'ADECLIN 300 INJ2ML AMP', 'ADECLIN 300 INJ2ML AMP', 'ADECLIN 300 INJ\r\n2ML AMP', 1, '2022-08-31 05:38:04', '2022-09-26 11:33:51'),
(1095, 'ADENAC-AQ INJ10*1ML', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, 'AMPL', '19', 'Diclofenac Sodium 75 mg', 'adenac-aq-inj101ml', 'ADENAC-AQ INJ10*1ML', 'ADENAC-AQ INJ10*1ML', 'ADENAC-AQ INJ\r\n10*1ML', 1, '2022-08-31 05:38:04', '2022-09-26 11:34:12'),
(1096, 'ADENATE 60 INJ VIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpZJEwEF', NULL, 'INJ', '224.59', 'Artesunate 60 mg', 'adenate-60-inj-vial', 'ADENATE 60 INJ VIAL', 'ADENATE 60 INJ VIAL', 'ADENATE 60 INJ VIAL', 1, '2022-08-31 05:38:04', '2022-09-28 11:41:44'),
(1097, 'ADENATE-120 INJVIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpb7dKNi', NULL, 'INJ', '427.59', 'Artesunate 120 mg', 'adenate-120-injvial', 'ADENATE-120 INJVIAL', 'ADENATE-120 INJVIAL', 'ADENATE-120 INJ\r\nVIAL', 1, '2022-08-31 05:38:04', '2022-09-28 11:39:58'),
(1098, 'ADENIN 400 INJ VIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpC092Hf', NULL, 'INJ', '2250', 'Teicoplanin 400 mg', 'adenin-400-inj-vial', 'ADENIN 400 INJ VIAL', 'ADENIN 400 INJ VIAL', 'ADENIN 400 INJ VIAL', 1, '2022-08-31 05:38:04', '2022-09-28 11:38:45'),
(1099, 'ADERAB-IV INJ VIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpM9G3L5', NULL, 'INJ', '140', 'Rabeprazole 20 mg', 'aderab-iv-inj-vial', 'ADERAB-IV INJ VIAL', 'ADERAB-IV INJ VIAL', 'ADERAB-IV INJ VIAL', 1, '2022-08-31 05:38:04', '2022-09-28 11:35:03'),
(1100, 'ADESLON-125 INJVIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpKSN3dF', NULL, 'INJ', '460', 'Methylprednisolone 125 mg', 'adeslon-125-injvial', 'ADESLON-125 INJVIAL', 'ADESLON-125 INJVIAL', 'ADESLON-125 INJ\r\nVIAL', 1, '2022-08-31 05:38:04', '2022-09-28 11:33:16'),
(1101, 'ADESLON-500 INJECTION VIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/php4LKSO5', NULL, 'INJ', '775', 'Methylprednisolone 500 mg', 'adeslon-500-injection-vial', 'ADESLON-500 INJECTION VIAL', 'ADESLON-500 INJECTION VIAL', 'ADESLON-500 INJECTION VIAL', 1, '2022-08-31 05:38:04', '2022-09-28 11:31:50'),
(1102, 'ADEZONE 375 INJVIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpRBKbVk', NULL, 'INJ', '64.5', 'Ceftriaxone 250 mg + Sulbactam 125 mg', 'adezone-375-injvial', 'ADEZONE 375 INJVIAL', 'ADEZONE 375 INJVIAL', 'ADEZONE 375 INJ\r\nVIAL', 1, '2022-08-31 05:38:04', '2022-09-28 11:30:19'),
(1103, 'ADEZONE 500 INJVIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/php4N3sXj', NULL, 'INJ', '50.35', 'Ceftriaxone 500 mg', 'adezone-500-injvial', 'ADEZONE 500 INJVIAL', 'ADEZONE 500 INJVIAL', 'ADEZONE 500 INJ\r\nVIAL', 1, '2022-08-31 05:38:04', '2022-09-28 11:29:30'),
(1104, 'ADEZONE-1 GMVIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpiPJlgM', NULL, 'INJ', '59', 'Ceftriaxone 1 gm', 'adezone-1-gmvial', 'ADEZONE-1 GMVIAL', 'ADEZONE-1 GMVIAL', 'ADEZONE-1 GM\r\nVIAL', 1, '2022-08-31 05:38:04', '2022-09-28 11:30:54'),
(1105, 'ADEZONE-S 1.5 INJVIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpdjPNHD', NULL, 'INJ', '150', 'Ceftriaxone 1 gm + Sulbactam 500 mg', 'adezone-s-15-injvial', 'ADEZONE-S 1.5 INJVIAL', 'ADEZONE-S 1.5 INJVIAL', 'ADEZONE-S 1.5 INJ\r\nVIAL', 1, '2022-08-31 05:38:04', '2022-09-28 11:28:50'),
(1106, 'ADIMERO 1GM INJ VIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpaW6c1t', NULL, 'INJ', '2460', 'Meropenem1 gm', 'adimero-1gm-inj-vial', 'ADIMERO 1GM INJ VIAL', 'ADIMERO 1GM INJ VIAL', 'ADIMERO 1GM INJ VIAL', 1, '2022-08-31 05:38:04', '2022-09-28 11:42:28'),
(1107, 'ALDEDOX-100INJECTION VIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpfrdTfl', NULL, 'BOX', '650', 'Doxycycline 100 mg', 'aldedox-100injection-vial', 'ALDEDOX-100INJECTION VIAL', 'ALDEDOX-100INJECTION VIAL', 'ALDEDOX-100\r\nINJECTION VIAL', 1, '2022-08-31 05:38:04', '2022-09-28 11:27:54'),
(1108, 'ESOMSTAR-40 INJ.EACH', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpH8vl4l', NULL, 'PCS', '120', 'Esomeprazole 40 mg', 'esomstar-40-injeach', 'ESOMSTAR-40 INJ.EACH', 'ESOMSTAR-40 INJ.EACH', 'ESOMSTAR-40 INJ.\r\nEACH', 1, '2022-08-31 05:38:04', '2022-09-28 11:26:42'),
(1109, 'IROSHOT-INJ 5 ML', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, 'INJ', '280', 'Iron Sucrose 100 mg', 'iroshot-inj-5-ml', 'IROSHOT-INJ 5 ML', 'IROSHOT-INJ 5 ML', 'IROSHOT-INJ 5 ML', 1, '2022-08-31 05:38:04', '2022-09-26 11:42:34'),
(1110, 'LEVONUM-IV 100ML', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, 'BOTT', '175', 'Levofloxacin 500 mg Infusion', 'levonum-iv-100ml', 'LEVONUM-IV 100ML', 'LEVONUM-IV 100ML', 'LEVONUM-IV 100\r\nML', 1, '2022-08-31 05:38:04', '2022-09-26 11:42:59'),
(1111, 'MIKGEN 500 INJ 2ML', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpuP78Z3', NULL, 'INJ', '120', 'Amikacin 500 mg', 'mikgen-500-inj-2ml', 'MIKGEN 500 INJ 2ML', 'MIKGEN 500 INJ 2ML', 'MIKGEN 500 INJ 2ML', 1, '2022-08-31 05:38:04', '2022-09-28 11:25:22'),
(1112, 'PEVIMOL-IV 100ML', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, 'VIAL', '490', 'Paracetamol 100 mg Infusion', 'pevimol-iv-100ml', 'PEVIMOL-IV 100ML', 'PEVIMOL-IV 100ML', 'PEVIMOL-IV 100ML', 1, '2022-08-31 05:38:04', '2022-09-26 11:43:48'),
(1113, 'PEVIMOX-1.2 INJVIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', NULL, 'INJ', '129', 'Amoxicillin 1gm And Potassium Clavulanate 200 mg', 'pevimox-12-injvial', 'PEVIMOX-1.2 INJVIAL', 'PEVIMOX-1.2 INJVIAL', 'PEVIMOX-1.2 INJ\r\nVIAL', 1, '2022-08-31 05:38:04', '2022-09-26 11:44:14'),
(1114, 'TRAXZONE-SB 1.5INJ VIAL', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>.</body>\r\n</html>', 'Products/phpWmXm8k', NULL, 'INJ', '350', 'Cefoperazone 1 gm + Sulbactam 500 mg', 'traxzone-sb-15inj-vial', 'TRAXZONE-SB 1.5INJ VIAL', 'TRAXZONE-SB 1.5INJ VIAL', 'TRAXZONE-SB 1.5\r\nINJ VIAL', 1, '2022-08-31 05:38:04', '2022-09-28 11:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'footer', 'Vrovwen Biologics is a Pharma Company based at Dehradun, working from last seven years, with a vision towards Empowering Life', '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(2, 'facebook', NULL, '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(3, 'twitter', NULL, '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(4, 'instagram', NULL, '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(5, 'linkedin', NULL, '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(6, 'youtube', NULL, '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(7, 'welcome_metatitle', 'Welcome | Vrovwen Biologics', '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(8, 'welcome_metakeyword', 'Vrovwen Biologics', '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(9, 'welcome_metadescription', 'Vrovwen Biologics', '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(10, 'address', 'Head Office: S.C.F. 446, 1ST Floor, M. Market,Manimajra (Chandigarh)-160101,\r\n\r\nCooperative office: SCO-133, 1st Floor Urban Estate Opp. Police Station Sector-14 Panchkula-134113', '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(11, 'contactno', '+91- 7087197090, 7717587381, 8840167218, 7717309159, 7717309160, 6283274884', '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(12, 'email', 'vrovwenbiologics@gmail.com, info.vrovwen@gmail.com, sales.vrovwen@gmail.com', '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(13, 'maps', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3444.81539229849!2d77.99616851512121!3d30.29931668179023!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39092a35be9acf9b%3A0x20f05b4c77a91c78!2sRock%20Valley%20Apartments!5e0!3m2!1sen!2sin!4v1644041185827!5m2!1sen!2sin', '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(14, 'js', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '2021-04-06 03:43:43', '2022-04-18 03:41:51'),
(15, 'homepage', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '2021-04-06 03:43:43', '2022-04-18 03:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `slugid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `slug`, `type`, `slugid`, `created_at`, `updated_at`) VALUES
(1, 'about', 4, 1, '2021-04-06 03:43:43', '2021-04-06 03:43:43'),
(2, 'gallery', 4, 2, '2021-04-06 03:43:43', '2021-04-06 03:43:43'),
(3, 'Home', 3, 1, '2021-04-07 00:19:14', '2022-05-21 16:47:07'),
(780, 'third-party-manufacturing', 3, 18, '2022-02-05 00:14:36', '2022-09-01 22:24:22'),
(779, 'pcd-pharma-franchise', 3, 17, '2022-02-04 23:48:43', '2022-09-01 22:19:08'),
(778, 'about-us', 3, 16, '2022-02-04 23:06:47', '2022-09-30 14:24:52'),
(781, 'product', 4, 34, '2022-02-10 14:00:47', '2022-02-10 14:00:47'),
(783, 'PCD', 4, 35, '2022-02-25 13:47:52', '2022-02-25 13:47:52'),
(1060, 'Contact-Us', 3, 22, '2022-08-23 23:07:15', '2022-11-04 19:56:40'),
(1061, 'amoxycure-lb-625', 1, 1041, '2022-08-31 05:38:04', '2022-09-26 11:04:27'),
(1062, 'tablets', 4, 54, '2022-08-31 05:38:04', '2022-08-31 05:38:04'),
(1063, 'ancold', 1, 1042, '2022-08-31 05:38:04', '2022-09-26 11:05:28'),
(1064, 'ketocare-dt', 1, 1043, '2022-08-31 05:38:04', '2022-09-26 11:06:04'),
(1065, 'paranac-tabs', 1, 1044, '2022-08-31 05:38:04', '2022-09-26 11:06:38'),
(1066, 'paraace-sp', 1, 1045, '2022-08-31 05:38:04', '2022-09-26 11:07:11'),
(1067, 'paranimu', 1, 1046, '2022-08-31 05:38:04', '2022-09-26 11:07:43'),
(1068, 'paracure-650', 1, 1047, '2022-08-31 05:38:04', '2022-09-26 11:08:13'),
(1069, 'onvo-md', 1, 1048, '2022-08-31 05:38:04', '2022-09-26 11:08:38'),
(1070, 'mef-spas', 1, 1049, '2022-08-31 05:38:04', '2022-09-26 11:09:01'),
(1071, 'paraace', 1, 1050, '2022-08-31 05:38:04', '2022-09-26 11:10:19'),
(1072, 'calcicure', 1, 1051, '2022-08-31 05:38:04', '2022-09-26 11:09:48'),
(1073, 'etoreta-p', 1, 1052, '2022-08-31 05:38:04', '2022-09-26 11:10:45'),
(1074, 'paracure-500', 1, 1053, '2022-08-31 05:38:04', '2022-09-26 11:11:10'),
(1075, 'azipil-500', 1, 1054, '2022-08-31 05:38:04', '2022-09-26 11:11:35'),
(1076, 'attriwax-25', 1, 1055, '2022-08-31 05:38:04', '2022-09-26 11:12:06'),
(1077, 'levoctz', 1, 1056, '2022-08-31 05:38:04', '2022-09-29 11:26:17'),
(1078, 'levoctz-m', 1, 1057, '2022-08-31 05:38:04', '2022-09-26 11:13:04'),
(1079, 'cetgin', 1, 1058, '2022-08-31 05:38:04', '2022-09-29 11:26:43'),
(1080, 'metoloz-xr-25', 1, 1059, '2022-08-31 05:38:04', '2022-09-26 11:15:23'),
(1081, 'metoloz-xr-50', 1, 1060, '2022-08-31 05:38:04', '2022-09-26 11:15:52'),
(1082, 'rosuive-10', 1, 1061, '2022-08-31 05:38:04', '2022-09-26 11:16:16'),
(1083, 'rosuive-20', 1, 1062, '2022-08-31 05:38:04', '2022-09-29 11:24:14'),
(1084, 'rosuive-40', 1, 1063, '2022-08-31 05:38:04', '2022-09-26 11:17:10'),
(1085, 'etoreta-90', 1, 1064, '2022-08-31 05:38:04', '2022-09-26 11:17:28'),
(1086, 'amlora-5-mg', 1, 1065, '2022-08-31 05:38:04', '2022-09-26 11:18:02'),
(1087, 'telcip-am', 1, 1066, '2022-08-31 05:38:04', '2022-09-29 11:25:39'),
(1088, 'atocare-10', 1, 1067, '2022-08-31 05:38:04', '2022-09-29 11:20:36'),
(1089, 'atocare-20', 1, 1068, '2022-08-31 05:38:04', '2022-09-26 11:19:15'),
(1090, 'femcure-xt', 1, 1069, '2022-08-31 05:38:04', '2022-09-26 11:20:02'),
(1091, 'telcip-40', 1, 1070, '2022-08-31 05:38:04', '2022-09-26 11:20:24'),
(1092, 'doxistate-plus', 1, 1071, '2022-08-31 05:38:04', '2022-09-26 11:20:47'),
(1093, 'pantacure-dsr', 1, 1072, '2022-08-31 05:38:04', '2022-09-29 11:24:42'),
(1094, 'capsules', 4, 55, '2022-08-31 05:38:04', '2022-08-31 05:38:04'),
(1095, 'rabcare-dsr', 1, 1073, '2022-08-31 05:38:04', '2022-09-26 11:22:30'),
(1096, 'espo-d-40', 1, 1074, '2022-08-31 05:38:04', '2022-09-26 11:23:24'),
(1097, 'prebalin-75', 1, 1075, '2022-08-31 05:38:04', '2022-09-26 11:23:53'),
(1098, 'prebalin-m', 1, 1076, '2022-08-31 05:38:04', '2022-09-26 11:24:27'),
(1099, 'calcicure-ct', 1, 1077, '2022-08-31 05:38:04', '2022-09-26 11:24:43'),
(1100, 'lactofit', 1, 1078, '2022-08-31 05:38:04', '2022-09-26 11:25:15'),
(1101, 'liquid', 4, 56, '2022-08-31 05:38:04', '2022-08-31 05:38:04'),
(1102, 'alkacure', 1, 1079, '2022-08-31 05:38:04', '2022-09-26 11:25:35'),
(1103, 'oflocin', 1, 1080, '2022-08-31 05:38:04', '2022-09-26 11:26:00'),
(1104, 'onvo-syrup', 1, 1081, '2022-08-31 05:38:04', '2022-09-29 11:25:13'),
(1105, 'cherrycare', 1, 1082, '2022-08-31 05:38:04', '2022-09-29 11:22:07'),
(1106, 'mupicure', 1, 1083, '2022-08-31 05:38:04', '2022-09-26 11:27:27'),
(1107, 'ointment', 4, 57, '2022-08-31 05:38:04', '2022-08-31 05:38:04'),
(1108, 'lulicure-cream', 1, 1084, '2022-08-31 05:38:04', '2022-09-26 11:28:11'),
(1109, 'betnacare-n-cream', 1, 1085, '2022-08-31 05:38:04', '2022-09-26 11:29:07'),
(1110, 'oxagesic-nano-gel', 1, 1086, '2022-08-31 05:38:04', '2022-09-26 11:29:44'),
(1111, 'hiodine', 1, 1087, '2022-08-31 05:38:04', '2022-09-26 11:30:08'),
(1112, 'emescure', 1, 1088, '2022-08-31 05:38:04', '2022-09-26 11:31:04'),
(1113, 'injection', 4, 58, '2022-08-31 05:38:04', '2022-08-31 05:38:04'),
(1114, 'trenaxam', 1, 1089, '2022-08-31 05:38:04', '2022-09-26 11:31:25'),
(1115, 'hydrocortisol', 1, 1090, '2022-08-31 05:38:04', '2022-09-26 11:31:43'),
(1116, 'etaprazole', 1, 1091, '2022-08-31 05:38:04', '2022-09-26 11:32:12'),
(1117, 'nemcil-500', 1, 1092, '2022-08-31 05:38:04', '2022-09-26 11:32:35'),
(1118, 'beciline-45', 1, 1093, '2022-08-31 05:38:04', '2022-09-26 11:33:08'),
(1119, 'adeclin-300-inj2ml-amp', 1, 1094, '2022-08-31 05:38:04', '2022-09-26 11:33:51'),
(1120, 'adenac-aq-inj101ml', 1, 1095, '2022-08-31 05:38:04', '2022-09-26 11:34:12'),
(1121, 'adenate-60-inj-vial', 1, 1096, '2022-08-31 05:38:04', '2022-09-28 11:41:44'),
(1122, 'adenate-120-injvial', 1, 1097, '2022-08-31 05:38:04', '2022-09-28 11:39:58'),
(1123, 'adenin-400-inj-vial', 1, 1098, '2022-08-31 05:38:04', '2022-09-28 11:38:45'),
(1124, 'aderab-iv-inj-vial', 1, 1099, '2022-08-31 05:38:04', '2022-09-28 11:35:03'),
(1125, 'adeslon-125-injvial', 1, 1100, '2022-08-31 05:38:04', '2022-09-28 11:33:16'),
(1126, 'adeslon-500-injection-vial', 1, 1101, '2022-08-31 05:38:04', '2022-09-28 11:31:50'),
(1127, 'adezone-375-injvial', 1, 1102, '2022-08-31 05:38:04', '2022-09-28 11:30:19'),
(1128, 'adezone-500-injvial', 1, 1103, '2022-08-31 05:38:04', '2022-09-28 11:29:30'),
(1129, 'adezone-1-gmvial', 1, 1104, '2022-08-31 05:38:04', '2022-09-28 11:30:54'),
(1130, 'adezone-s-15-injvial', 1, 1105, '2022-08-31 05:38:04', '2022-09-28 11:28:50'),
(1131, 'adimero-1gm-inj-vial', 1, 1106, '2022-08-31 05:38:04', '2022-09-28 11:42:28'),
(1132, 'aldedox-100injection-vial', 1, 1107, '2022-08-31 05:38:04', '2022-09-28 11:27:54'),
(1133, 'esomstar-40-injeach', 1, 1108, '2022-08-31 05:38:04', '2022-09-28 11:26:42'),
(1134, 'iroshot-inj-5-ml', 1, 1109, '2022-08-31 05:38:04', '2022-09-26 11:42:34'),
(1135, 'levonum-iv-100ml', 1, 1110, '2022-08-31 05:38:04', '2022-09-26 11:42:59'),
(1136, 'mikgen-500-inj-2ml', 1, 1111, '2022-08-31 05:38:04', '2022-09-28 11:25:22'),
(1137, 'pevimol-iv-100ml', 1, 1112, '2022-08-31 05:38:04', '2022-09-26 11:43:48'),
(1138, 'pevimox-12-injvial', 1, 1113, '2022-08-31 05:38:04', '2022-09-26 11:44:14'),
(1139, 'traxzone-sb-15inj-vial', 1, 1114, '2022-08-31 05:38:04', '2022-09-28 11:22:16'),
(1140, 'Careers-us', 3, 23, '2022-09-14 04:03:22', '2022-10-08 13:31:09'),
(1141, 'Branded-Generics', 3, 24, '2022-09-23 16:16:06', '2022-09-26 16:22:30'),
(1142, 'Critical-Care', 3, 25, '2022-09-23 16:56:56', '2022-09-26 14:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `mobile`, `email`, `email_verified_at`, `password`, `remember_token`, `type`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '7896541235', 'admin@gmail.com', NULL, 'db98160c4023c8ac7061b0811ad2e19f', 'OwaI7CJW1yOeZvWZiYI6gO1bIwlRPfSVJw2LfTYZzfzxyQsMjPiPOkxlnKSY', 1, '2021-04-06 03:43:43', '2021-04-08 23:21:30'),
(2, 'sanjay', 'gupta', '9639639630', 'sanju@gmail.com', NULL, '$2y$10$qxKgO2PFRloVUMLAtxoTu.Vv04BK6bSlHTNRkRDxrbC2Q8QTxRL7S', '4dEkZtvx5QkbSzIpgdSjnnxvxFEbRiW8ikgLGXxC3v99y0iFyiOAQE4TLYwc', NULL, '2022-10-07 16:50:27', '2022-10-07 16:50:27'),
(3, 'sanjay', 'gupta', '1234567890', 'mint@gmail.com', NULL, '$2y$10$wamUbG2DEr74WexV6Ieue.ynQ0gNMPllfYAW8Sp8te9UMiPRTWyL.', NULL, NULL, '2022-10-08 11:23:29', '2022-10-08 11:23:29'),
(4, 'neelu', 'singh', '9519369187', 'nsingh1281998@gmail.com', NULL, '$2y$10$jaAn8Fj6f8Jj/GSRwPy9Q.zCQSy12wrIWvdxBSlQzBSmg5CUO2LA.', 'lltn88G55QG3P01Gc1WGjTXDRWB6p8Vje4wyo7OOd9ght8jlIDeCQ8H8LYqT', NULL, '2022-10-08 11:33:33', '2022-10-08 11:33:33'),
(5, 'Mfjejdkwdwfkjwkw,.//fwdbdjswfjwsjdakdjwsjfhwkdajdk рырвоышвофшаргырагфошвОРРРраы: kkwjdkwdwfkefwksmxdke Заосшырацоырвфвравыо gjdjwsfegfksfgrjkfkfhjk pramiscure.com', 'Mfjejdkwdwfkjwkw,.//fwdbdjswfjwsjdakdjwsjfhwkdajdk рырвоышвофшаргырагфошвОРРРраы: kkwjdkwdwfkefwksmxdke Заосшырацоырвфвравыо gjdjwsfegfksfgrjkfkfhjk pramiscure.com', '86932874157', 'mae.ke.l.y.4.1.8@gmail.com', NULL, '$2y$10$5QfmHro0E2kEaGVwtOWQAuKXLSXWeaqhq5NvLKbr2IDXjvJmy9wGm', NULL, NULL, '2023-01-23 00:57:07', '2023-01-23 00:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `visuals`
--

CREATE TABLE `visuals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(121) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visualname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_blogs`
--
ALTER TABLE `category_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_blogs_category_id_foreign` (`category_id`),
  ADD KEY `category_blogs_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_products_category_id_foreign` (`category_id`),
  ADD KEY `category_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_category_id_foreign` (`category_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slugs_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visuals`
--
ALTER TABLE `visuals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `category_blogs`
--
ALTER TABLE `category_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `category_products`
--
ALTER TABLE `category_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1463;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1115;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1143;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visuals`
--
ALTER TABLE `visuals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
