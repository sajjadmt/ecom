-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 04:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apiecom`
--
CREATE DATABASE IF NOT EXISTS `apiecom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `apiecom`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1717084259),
('c525a5357e97fef8d3db25841c86da1a:timer', 'i:1717084259;', 1717084259);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Mobiles', 'https://dkstatics-public.digikala.com/digikala-mega-menu/aba1e5dca8958ac1176e25cd194ff8ac622cd383_1692600155.png', NULL, NULL),
(2, 'Computer', 'https://dkstatics-public.digikala.com/digikala-mega-menu/8f80e75e4c2dca42ee0538e100c7a7b05455aa88_1692600287.png', NULL, NULL),
(3, 'Electronics', 'https://dkstatics-public.digikala.com/digikala-mega-menu/c16b7dff700a9d99880174c32ec233d20ddb531c_1703057953.png', NULL, NULL),
(4, 'TVs & Appliances', 'https://dkstatics-public.digikala.com/digikala-mega-menu/0c3cc1cb589df1c74c4ad95a742bb6df967956a8_1692600390.png', NULL, NULL),
(5, 'Fashion', 'https://dkstatics-public.digikala.com/digikala-mega-menu/5795b31a635f1e23df96a908c009f31744ede38f_1692600481.png', NULL, NULL),
(6, 'Baby & Kids', 'https://dkstatics-public.digikala.com/digikala-mega-menu/0c46d2532d61dd3a5b6a3afc17552c23c1b4d39e_1692600773.png', NULL, NULL),
(7, 'Home & Furniture', 'https://dkstatics-public.digikala.com/digikala-mega-menu/0cefa48f5c58adbbde8c5a76b22ee49de0e667f5_1692600876.png', NULL, NULL),
(8, 'Sports, Books', 'https://dkstatics-public.digikala.com/digikala-mega-menu/1c44d5964f259e0725ec86ca9739de888f1862c7_1692600975.png', NULL, NULL),
(9, 'Mobile Accessories', 'https://dkstatics-public.digikala.com/digikala-mega-menu/3582bbed0a53318c2332d2c79b051b226f02a3bb_1692600677.png', NULL, NULL),
(10, 'Others', 'https://dkstatics-public.digikala.com/digikala-mega-menu/af02140ea60e0fd478b09b279976a095c95615b6_1692601283.png', NULL, NULL),
(11, 'Cars & Motorcycles', 'https://dkstatics-public.digikala.com/digikala-mega-menu/4e985adcf61dd54d4d8abe725a62ba3990ea1eb1_1692601177.png', NULL, NULL),
(12, 'Gold & Watches', 'https://dkstatics-public.digikala.com/digikala-mega-menu/d17e98a20e1681c7bac5af856aa9552250ec9a96_1710666504.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `contact_time` varchar(255) NOT NULL,
  `contact_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contact_time`, `contact_date`, `created_at`, `updated_at`) VALUES
(1, 'Sajjad', 'sajjad@gmail.com', 'Hi This is Sajjad', '11:28:19am', '2024:04:17', '2024-04-17 07:58:19', '2024-04-17 07:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_details_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `product_details_id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 2, 1, 2, '2024-07-01 14:14:51', '2024-07-01 14:14:51'),
(9, 2, 1, 2, '2024-07-01 14:29:23', '2024-07-01 14:29:23'),
(11, 1, 2, 18, '2024-07-03 13:19:09', '2024-07-03 13:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'http://127.0.0.1:8000/storage/slider1.jpg', NULL, NULL),
(2, 'http://127.0.0.1:8000/storage/slider2.jpg', NULL, NULL),
(3, 'http://127.0.0.1:8000/storage/slider3.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_14_070215_add_two_factor_columns_to_users_table', 1),
(5, '2024_04_14_070257_create_personal_access_tokens_table', 1),
(6, '2024_04_14_082224_create_visitors_table', 2),
(7, '2024_04_17_074026_create_contacts_table', 3),
(8, '2024_04_18_074901_create_site_infos_table', 4),
(9, '2024_04_18_082952_create_categories_table', 5),
(10, '2024_04_18_082959_create_sub_categories_table', 5),
(11, '2024_04_18_140139_create_remarks_table', 6),
(12, '2024_04_18_140147_create_product_lists_table', 6),
(13, '2024_04_20_172453_create_home_sliders_table', 7),
(15, '2024_04_24_170124_create_product_details_table', 8),
(22, '2024_05_21_161459_create_notifications_table', 9),
(23, '2024_06_18_160718_create_product_reviews_table', 9),
(25, '2024_06_20_153358_create_product_carts_table', 10),
(28, '2024_06_30_080513_create_favourites_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'app', 'e09ad6ef576d86918e20851e08d7d24ff66a280ac2ceb30b6e7e206abc472520', '[\"*\"]', NULL, NULL, '2024-05-30 12:39:17', '2024-05-30 12:39:17'),
(2, 'App\\Models\\User', 2, 'app', 'd36a10508ba19fa6275162ecd2ef090f23b794d5fa4772d5c2b7ecb59ebb94bd', '[\"*\"]', NULL, NULL, '2024-05-30 12:50:02', '2024-05-30 12:50:02'),
(3, 'App\\Models\\User', 3, 'app', 'af9f6d2679f1d41059bb79bb24fc6fec7d3eafe7da28b96db22248abd222bf7a', '[\"*\"]', NULL, NULL, '2024-05-30 12:51:24', '2024-05-30 12:51:24'),
(4, 'App\\Models\\User', 3, 'app', '1d7351db925104a98c81683875b77190ad83ee95a83d4368b37aa108b433d55a', '[\"*\"]', NULL, NULL, '2024-06-02 05:06:41', '2024-06-02 05:06:41'),
(5, 'App\\Models\\User', 3, 'app', 'bbea4b1fb7c747c53aa9a2e85f4df5e7492c3ad842f12dbafcf19fb40d3ecb6b', '[\"*\"]', NULL, NULL, '2024-06-02 05:09:14', '2024-06-02 05:09:14'),
(6, 'App\\Models\\User', 3, 'app', 'ce59b66ad806d8c6cb9cdf31e29f01f73aece872d295f165037417038676cbed', '[\"*\"]', NULL, NULL, '2024-06-02 11:50:52', '2024-06-02 11:50:52'),
(7, 'App\\Models\\User', 3, 'app', '4cba63e874803eb29b62f1ea71b8be249860819bc058019111f45fb02cd74484', '[\"*\"]', NULL, NULL, '2024-06-02 11:52:01', '2024-06-02 11:52:01'),
(8, 'App\\Models\\User', 3, 'app', '3b74457697ec72cec06aa3e9238545f040ad22d829a279e1a0f468eb5b87d8fd', '[\"*\"]', NULL, NULL, '2024-06-02 11:54:37', '2024-06-02 11:54:37'),
(9, 'App\\Models\\User', 3, 'app', '62bb6548a8e781a4d384ea22127cf11c9535d643aeafb47d664431ac237c70db', '[\"*\"]', NULL, NULL, '2024-06-02 12:01:58', '2024-06-02 12:01:58'),
(10, 'App\\Models\\User', 3, 'app', 'd0487f6e498ed3a6a3c85352f28d7e8ede5ec01b5b2456f7a3c7f4c44f30067b', '[\"*\"]', NULL, NULL, '2024-06-02 12:03:44', '2024-06-02 12:03:44'),
(11, 'App\\Models\\User', 3, 'app', '8d49a43846721efddbfabf344b18db97d79cf04e63e76917a90ed658ad1c6fa8', '[\"*\"]', NULL, NULL, '2024-06-02 12:28:32', '2024-06-02 12:28:32'),
(12, 'App\\Models\\User', 2, 'app', 'be26ea159e626c12d3eb3e3dc25f04d5a10f7fed0edd00325148c995a73d5e1a', '[\"*\"]', NULL, NULL, '2024-06-02 12:29:08', '2024-06-02 12:29:08'),
(13, 'App\\Models\\User', 3, 'app', 'c5668607b20166610fe5d9601fb9c31eccf85b675462e93c9613ce9aaa675795', '[\"*\"]', NULL, NULL, '2024-06-02 14:07:21', '2024-06-02 14:07:21'),
(14, 'App\\Models\\User', 3, 'app', '469b1e52a4a73683123be36deb331177fb08f6e28f466d41c4844c401c29ee93', '[\"*\"]', NULL, NULL, '2024-06-02 14:09:02', '2024-06-02 14:09:02'),
(15, 'App\\Models\\User', 3, 'app', 'a8a7c7e0b8ac6ea1645ff02a6e6012c6bf06bf71edb8145360cf0ca8e5205c22', '[\"*\"]', NULL, NULL, '2024-06-06 03:52:09', '2024-06-06 03:52:09'),
(16, 'App\\Models\\User', 3, 'app', 'b78b064538b80fb7d0906ad18b6381b5de6d7133499482af3d09abd7f54ca82d', '[\"*\"]', NULL, NULL, '2024-06-06 04:30:10', '2024-06-06 04:30:10'),
(17, 'App\\Models\\User', 4, 'app', 'e66fb2df4277d0ee86eb4bd18febcad68f531acd6f69354f69238d168d57b387', '[\"*\"]', NULL, NULL, '2024-06-06 04:32:52', '2024-06-06 04:32:52'),
(18, 'App\\Models\\User', 4, 'app', '9ea0840ec7744584a1da5af2a8dd656b7fe3d0f9b21411fe9316c9a636a2433a', '[\"*\"]', NULL, NULL, '2024-06-06 13:07:21', '2024-06-06 13:07:21'),
(19, 'App\\Models\\User', 4, 'app', 'c9dd84a99ed71afe1f0d714ea7707e2b2e5ab533ed096341c1db493fafe77cb7', '[\"*\"]', NULL, NULL, '2024-06-06 14:14:03', '2024-06-06 14:14:03'),
(20, 'App\\Models\\User', 2, 'app', '781875d4f1f7e418cb0966083003c3e6bba1ffbde31cd833b0cc964161a8b1d8', '[\"*\"]', NULL, NULL, '2024-06-08 11:29:41', '2024-06-08 11:29:41'),
(21, 'App\\Models\\User', 2, 'app', 'd9b6862c1ffe0d6b6d36114cf69c2e4bb2fe0c338d0c3983598730b8742490db', '[\"*\"]', NULL, NULL, '2024-06-08 11:30:22', '2024-06-08 11:30:22'),
(22, 'App\\Models\\User', 2, 'app', '0790c7e1aa808a9afbad26bba2074bacbbeebbe5324aa9eeebca632507e2099c', '[\"*\"]', NULL, NULL, '2024-06-08 11:55:24', '2024-06-08 11:55:24'),
(23, 'App\\Models\\User', 2, 'app', '4a17b3fcf6ddc48a9f50eada6c055266ba67fd99f25a0649f4eee8fc54e1857b', '[\"*\"]', NULL, NULL, '2024-06-08 11:55:37', '2024-06-08 11:55:37'),
(24, 'App\\Models\\User', 2, 'app', 'fdb1980138e19fe934d2728a43e03e5adbfea71e4eb9c449c1d444f457749198', '[\"*\"]', NULL, NULL, '2024-06-08 11:55:56', '2024-06-08 11:55:56'),
(25, 'App\\Models\\User', 2, 'app', 'b9c1c64c7ab824b0ee77d530f983ab8ab91ebb3d3c47efefc1eda5fbbe9fa9b4', '[\"*\"]', NULL, NULL, '2024-06-08 11:58:37', '2024-06-08 11:58:37'),
(26, 'App\\Models\\User', 2, 'app', 'b13ae2b98ef3c3b8ac1d9180bf58216e7925ea3e162414f941bd8d49937b31fa', '[\"*\"]', '2024-06-08 13:50:12', NULL, '2024-06-08 12:01:54', '2024-06-08 13:50:12'),
(27, 'App\\Models\\User', 2, 'app', '9efc450a26386b2b19334fda7b584a67e5cde04cae4324402d475d7ee4781801', '[\"*\"]', '2024-06-08 13:50:32', NULL, '2024-06-08 13:50:21', '2024-06-08 13:50:32'),
(28, 'App\\Models\\User', 3, 'app', '53c1c2c13b47beddc979d9aabe112714b74715a3254c940cac6d11f35dafc7d8', '[\"*\"]', '2024-06-08 13:51:16', NULL, '2024-06-08 13:51:06', '2024-06-08 13:51:16'),
(29, 'App\\Models\\User', 2, 'app', 'a681ffa9c32b69338bc57645c96de7f5a8cbe4afe91ce2c5225d70a1afe9bd89', '[\"*\"]', NULL, NULL, '2024-06-09 11:54:18', '2024-06-09 11:54:18'),
(30, 'App\\Models\\User', 3, 'app', '412c194342bd693236224c2248e1abf1e8bf599c7fd7254728fb428b2c303bf8', '[\"*\"]', '2024-06-10 02:55:04', NULL, '2024-06-09 11:59:19', '2024-06-10 02:55:04'),
(31, 'App\\Models\\User', 2, 'app', '6a4db6dd54e6e50dfc2d417ba097fc8f3025f8160d99c8e3d4300fb76b71e644', '[\"*\"]', '2024-07-01 14:14:11', NULL, '2024-06-09 12:48:26', '2024-07-01 14:14:11'),
(32, 'App\\Models\\User', 3, 'app', '21924ce6a6bef62767b7a03176ca5b3cc884574431e76293ac4aaaac4fe66055', '[\"*\"]', '2024-06-10 13:49:48', NULL, '2024-06-10 02:55:13', '2024-06-10 13:49:48'),
(33, 'App\\Models\\User', 5, 'app', '10ce04164df2f44bf6434a6c2dd5f167655d5dc154446c1e4aac08e62b37a5f4', '[\"*\"]', NULL, NULL, '2024-06-10 04:23:32', '2024-06-10 04:23:32'),
(34, 'App\\Models\\User', 6, 'app', '50a3865e4738b7d400d02c76ecad2e8d6d1767d2e13fc866e76d5f613b28862c', '[\"*\"]', NULL, NULL, '2024-06-10 04:25:19', '2024-06-10 04:25:19'),
(35, 'App\\Models\\User', 7, 'app', '3e9bc9d3fe5c20960ac406a2f0da968838f2755288b5f39b2dd4b36ede31a8cf', '[\"*\"]', NULL, NULL, '2024-06-10 04:27:16', '2024-06-10 04:27:16'),
(36, 'App\\Models\\User', 8, 'app', '39d6c6833f38076cbc0026ab0265dda1b1eb488796957d2542026c555608458b', '[\"*\"]', NULL, NULL, '2024-06-11 11:51:30', '2024-06-11 11:51:30'),
(37, 'App\\Models\\User', 9, 'app', 'f8cd9321599eb9a4569569eee8ef148bb80d4eed257165ad7d73f679fb46bb4c', '[\"*\"]', NULL, NULL, '2024-06-11 12:01:12', '2024-06-11 12:01:12'),
(38, 'App\\Models\\User', 10, 'app', 'c3d3b4221f7da226083ca02fae30ec11da6139cb5ca44e138c1440682d40988b', '[\"*\"]', NULL, NULL, '2024-06-11 12:05:03', '2024-06-11 12:05:03'),
(39, 'App\\Models\\User', 11, 'app', '463710913192e814f416ed546e6633eaa22415f8121425e12af6f36acd8e8391', '[\"*\"]', '2024-06-11 12:12:25', NULL, '2024-06-11 12:06:09', '2024-06-11 12:12:25'),
(40, 'App\\Models\\User', 11, 'app', '9145fb96540f1511e25028fa2ec9d4de33ab26c024b8ebc3703cfe00a862744d', '[\"*\"]', '2024-06-12 12:01:43', NULL, '2024-06-11 12:15:19', '2024-06-12 12:01:43'),
(41, 'App\\Models\\User', 2, 'app', '4cdfa3107f52399b9ab25092c3a6c2ba5c240ee3a4aeb3e0f14fede927eab2bb', '[\"*\"]', '2024-06-12 13:56:51', NULL, '2024-06-12 13:45:06', '2024-06-12 13:56:51'),
(42, 'App\\Models\\User', 12, 'app', '0450ffdd411f10dc57188fd18f553244f8dcd57b44b086aef6c07183aec94439', '[\"*\"]', '2024-06-12 13:57:19', NULL, '2024-06-12 13:57:09', '2024-06-12 13:57:19'),
(43, 'App\\Models\\User', 2, 'app', '314b070a14ed9991490732bb67b565215454848264520ded8a542e6dabc4b311', '[\"*\"]', '2024-06-12 14:08:21', NULL, '2024-06-12 14:05:47', '2024-06-12 14:08:21'),
(44, 'App\\Models\\User', 10, 'app', '84bea3a2478292856aa68ea61043d6a0a0f050783ad2804c610f8441f227140e', '[\"*\"]', NULL, NULL, '2024-06-12 14:08:44', '2024-06-12 14:08:44'),
(45, 'App\\Models\\User', 13, 'app', '4338cf814851275381bf57f1c620106a3c3c92adeb7c8fcf88cf835addd29b98', '[\"*\"]', '2024-06-12 14:15:09', NULL, '2024-06-12 14:09:19', '2024-06-12 14:15:09'),
(46, 'App\\Models\\User', 2, 'app', 'c49b061ea0b7f882360fa374ac867cd41e93ebfe2e5ac45a377b97bda890eaa7', '[\"*\"]', '2024-06-12 14:22:46', NULL, '2024-06-12 14:22:37', '2024-06-12 14:22:46'),
(47, 'App\\Models\\User', 2, 'app', 'eba5bfc42243b038f6e37099997baea119218a48f0943173b37125c58d01acdf', '[\"*\"]', '2024-06-12 14:25:43', NULL, '2024-06-12 14:25:34', '2024-06-12 14:25:43'),
(48, 'App\\Models\\User', 2, 'app', '0a035702693d14cc857e90a8506477306bbd3a56037daa95740364767e75e4dc', '[\"*\"]', '2024-06-12 14:26:32', NULL, '2024-06-12 14:26:24', '2024-06-12 14:26:32'),
(49, 'App\\Models\\User', 2, 'app', '777bd889236df2007ff53020d1e20e9ec55852d8226f4717e351c76b194114f2', '[\"*\"]', '2024-06-12 14:27:46', NULL, '2024-06-12 14:27:38', '2024-06-12 14:27:46'),
(50, 'App\\Models\\User', 2, 'app', '972e03cb9cf18f6a376601e01c8d1609ec325bc2ba4bd7ca389fc50e87162cc9', '[\"*\"]', '2024-06-12 14:28:54', NULL, '2024-06-12 14:28:35', '2024-06-12 14:28:54'),
(51, 'App\\Models\\User', 4, 'app', 'eecbe84a659d9c6ab181f81da223e0bb1a71ee17b7ae0dae364fd3f78ff5e0ca', '[\"*\"]', '2024-06-13 04:32:26', NULL, '2024-06-13 04:32:18', '2024-06-13 04:32:26'),
(52, 'App\\Models\\User', 2, 'app', '28e6771081e211220c8f18e21b31b27f743131cd08b4e6369b8345172d8c62be', '[\"*\"]', '2024-06-16 02:42:24', NULL, '2024-06-16 02:42:13', '2024-06-16 02:42:24'),
(53, 'App\\Models\\User', 14, 'app', 'f164482aa35b4ac6e48e749be6706d85b9f32f84ffe15d139ec443b4525283c4', '[\"*\"]', NULL, NULL, '2024-06-16 02:43:10', '2024-06-16 02:43:10'),
(54, 'App\\Models\\User', 15, 'app', '7ec7f33bb6e76046b7edeba76d81c4e85795b0e6e959c1ecfa511b3c1913e01e', '[\"*\"]', NULL, NULL, '2024-06-16 02:45:03', '2024-06-16 02:45:03'),
(55, 'App\\Models\\User', 16, 'app', 'e442779509759d09e713e5f25a041692bac13e64c5330952564a763c1c6f7379', '[\"*\"]', NULL, NULL, '2024-06-16 02:46:36', '2024-06-16 02:46:36'),
(56, 'App\\Models\\User', 2, 'app', '2214ab595d616719abceb7587c4dbbb2cc461c4944fd1c847063305f1cc0614f', '[\"*\"]', '2024-06-16 02:50:19', NULL, '2024-06-16 02:50:11', '2024-06-16 02:50:19'),
(57, 'App\\Models\\User', 17, 'app', '7c12396652492bd6bb16db925e7c220949bdfe8341922c62f984af2b335f2d07', '[\"*\"]', NULL, NULL, '2024-06-16 02:51:12', '2024-06-16 02:51:12'),
(58, 'App\\Models\\User', 18, 'app', 'e1484262b71e48a86ac980472bb7606acb43f90d30774686a6f9241d4743e9f6', '[\"*\"]', '2024-06-27 05:01:39', NULL, '2024-06-16 02:54:29', '2024-06-27 05:01:39'),
(59, 'App\\Models\\User', 2, 'app', 'd5a96e58f808cc550aefc6630dd59489800f29c79cf5c51e4153663c6f42ac95', '[\"*\"]', '2024-06-27 05:03:05', NULL, '2024-06-27 05:02:16', '2024-06-27 05:03:05'),
(60, 'App\\Models\\User', 18, 'app', '3f71c89e5d2cefc047479bfb96acc87c9b2c78c6aea77605f533eba55161bcf9', '[\"*\"]', '2024-06-27 11:22:56', NULL, '2024-06-27 05:05:00', '2024-06-27 11:22:56'),
(61, 'App\\Models\\User', 18, 'app', '0a0d48d6935bfdc392c7a6fcc9c54932e8329a110c92b9d45c51f9cdad26d9b9', '[\"*\"]', '2024-06-27 11:44:27', NULL, '2024-06-27 11:26:19', '2024-06-27 11:44:27'),
(62, 'App\\Models\\User', 18, 'app', '390c3bd4d1ae7ffe57c6e300407a683313c5031c85b9ae2e829df81a4d09fa39', '[\"*\"]', '2024-06-29 03:20:46', NULL, '2024-06-27 11:44:42', '2024-06-29 03:20:46'),
(63, 'App\\Models\\User', 2, 'app', '03b1959d00c0599aec3fc1bd44932333ab89b241846a885aeaa0753282edb175', '[\"*\"]', '2024-06-30 05:16:18', NULL, '2024-06-29 03:24:20', '2024-06-30 05:16:18'),
(64, 'App\\Models\\User', 18, 'app', 'fa3a1b73625f1d1d992e94606be57a8963dd5e3515fe5e97382940e58a775f5d', '[\"*\"]', '2024-06-30 05:46:06', NULL, '2024-06-30 05:16:49', '2024-06-30 05:46:06'),
(65, 'App\\Models\\User', 18, 'app', '3808cf0d2b8d95b5bd9a5456c4f016a54eb810f2077ee9ff270d397b74dc275d', '[\"*\"]', '2024-07-01 06:25:44', NULL, '2024-06-30 10:25:24', '2024-07-01 06:25:44'),
(66, 'App\\Models\\User', 2, 'app', '07c5e166b93afceb6cd5560985c6c5474e96f73fcec33975387d200d558c0406', '[\"*\"]', '2024-07-01 13:29:14', NULL, '2024-07-01 06:26:23', '2024-07-01 13:29:14'),
(67, 'App\\Models\\User', 2, 'app', '182eef57ffadba5a50f94c3455d263e1bf77a3abd94406ded90a29a3c3d8c88f', '[\"*\"]', NULL, NULL, '2024-07-01 06:26:26', '2024-07-01 06:26:26'),
(68, 'App\\Models\\User', 18, 'app', 'd2cd1e0e1290541a923912667bbdf6684f071656060e6297ec41817430a7342c', '[\"*\"]', '2024-07-07 12:11:34', NULL, '2024-07-01 13:37:13', '2024-07-07 12:11:34'),
(69, 'App\\Models\\User', 18, 'app', 'ae98a3d8c6da2699309426c1ff8d9bc2def68fc34ab303e44b3489c811a95b2d', '[\"*\"]', '2024-07-01 14:26:15', NULL, '2024-07-01 14:15:32', '2024-07-01 14:26:15'),
(70, 'App\\Models\\User', 2, 'app', 'bb8d136252ae20d4fb283c93411ffdec22f258139e4c0d4968c12b843f8b9781', '[\"*\"]', '2024-07-01 14:31:25', NULL, '2024-07-01 14:26:53', '2024-07-01 14:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_details_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `user_id`, `product_id`, `product_details_id`, `quantity`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 2, 2, '1700', '2024-06-22 03:12:59', '2024-06-22 03:12:59'),
(6, 2, 1, 2, 2, '1800', '2024-06-29 03:31:53', '2024-06-29 03:31:53'),
(11, 18, 2, 1, 3, '2550', '2024-07-03 13:29:42', '2024-07-03 13:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_one` varchar(255) NOT NULL,
  `image_two` varchar(255) NOT NULL,
  `image_three` varchar(255) NOT NULL,
  `image_four` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `long_description` text NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `image_one`, `image_two`, `image_three`, `image_four`, `short_description`, `long_description`, `color`, `size`, `created_at`, `updated_at`) VALUES
(1, 2, 'https://dkstatics-public.digikala.com/digikala-products/6e25f9b57c920efd55f980d129614b18f83bd451_1710754535.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90', 'https://dkstatics-public.digikala.com/digikala-products/29661e3633a01ef277c6d366c862eaab05e223be_1710754536.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90', 'https://dkstatics-public.digikala.com/digikala-products/2f2c843beb683124d37016094fb54029ac60e8d3_1710754536.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90', 'https://dkstatics-public.digikala.com/digikala-products/bd605337877ea65f48bd782659e8f32b0104ecd0_1710754536.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90', 'Apple iphone 11 Black 128G', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Black,White,Green', 's,m,l', NULL, NULL),
(2, 1, 'https://dkstatics-public.digikala.com/digikala-products/ec9a962187e1f82cc47e7a148ef99ec1c6fd024d_1656423336.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90', 'https://dkstatics-public.digikala.com/digikala-products/cbdd0fd1beae7575565ad2fc681800d0d581c5f4_1704529563.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90', 'https://dkstatics-public.digikala.com/digikala-products/32bc290780627646522eea3feab2abc2beff4be4_1689611230.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90', 'https://dkstatics-public.digikala.com/digikala-products/9831370a26f9a17f8aaa2ec139c9342225cdd436_1689611230.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90', 'Apple iphone 13 White 256G', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Black,White,Green,Red,Pink', 'm,xl,xxl', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_lists`
--

CREATE TABLE `product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `remark_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `special_price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `star` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `category_id`, `sub_category_id`, `remark_id`, `title`, `price`, `special_price`, `image`, `brand`, `star`, `product_code`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'iphone 13 CH White', '1000', '900', 'https://dkstatics-public.digikala.com/digikala-products/ec9a962187e1f82cc47e7a148ef99ec1c6fd024d_1656423336.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Apple', '5', '000001', NULL, NULL),
(2, 1, 1, 1, 'iphone 11 Black 128', '900', '850', 'https://dkstatics-public.digikala.com/digikala-products/6e25f9b57c920efd55f980d129614b18f83bd451_1670074732.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Apple', '4', '000002', NULL, NULL),
(3, 1, 1, 1, 'iphone 13 Pro Max Gold', '1500', '1200', 'https://dkstatics-public.digikala.com/digikala-products/dcd6e4e843bea3f070614a95d27b1181fdf23008_1710583650.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Apple', '5', '000003', NULL, NULL),
(4, 1, 1, 1, 'iphone 14 Pro Max Black', '2000', '1500', 'https://dkstatics-public.digikala.com/digikala-products/88364178e5b86c0cfc3aa454bea350b7e6c358a5_1662623336.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Apple', '5', '000004', NULL, NULL),
(5, 1, 2, 1, 'Samsung S23 Fe 256', '1000', '950', 'https://dkstatics-public.digikala.com/digikala-products/bd7648d55ffe49a0596ac3668f4db41f7c790f6a_1696760508.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Samsung', '3', '000005', NULL, NULL),
(6, 1, 2, 1, 'Galaxy A34 5G', '800', '650', 'https://dkstatics-public.digikala.com/digikala-products/1fafefa0ce8c0e6af33566ca8ac89c3893a65d17_1684153138.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Samsung', '4', '000006', NULL, NULL),
(9, 12, 2, 2, 'Smart Watch K59 Pro', '250', '', 'https://dkstatics-public.digikala.com/digikala-products/07b0e6e22e4575cae3bd927dcae79e55088f594b_1709307157.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Other', '3', '000007', NULL, NULL),
(10, 9, 4, 2, 'Power Cable', '40', '35', 'https://dkstatics-public.digikala.com/digikala-products/41733a0de214a119be15990f88315e4a967fbcb5_1706456887.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Other', '2', '000008', NULL, NULL),
(11, 9, 4, 2, 'Airpods Pro', '900', '850', 'https://dkstatics-public.digikala.com/digikala-products/ba1ed35eb29a357e6ce7d455d43c35caa350e93e_1712345911.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Apple', '5', '000009', NULL, NULL),
(12, 9, 22, 2, 'Galaxy A10S Case', '150', '130', 'https://dkstatics-public.digikala.com/digikala-products/211b184b3ce92db33d0d486312d365121eff61ed_1682064669.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Other', '3', '000010', NULL, NULL),
(13, 9, 4, 2, 'Smart Watch T800', '200', '', 'https://dkstatics-public.digikala.com/digikala-products/50b697ac3cf1062d5d29ec5593a21b58b7999ab3_1712419482.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Other', '3', '000011', NULL, NULL),
(14, 1, 5, 2, 'Nokia G11 Plus', '210', '200', 'https://dkstatics-public.digikala.com/digikala-products/be992004296ed3631852de3a1d4db2ec33cae75a_1670225657.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Nokia', '3', '000012', NULL, NULL),
(15, 10, 19, 3, 'Cheese', '100', '', 'https://dkstatics-public.digikala.com/digikala-products/121654059.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Other', '2', '000013', NULL, NULL),
(16, 10, 19, 3, 'Oil', '80', '75', 'https://dkstatics-public.digikala.com/digikala-products/6ea8d1688bd9dda01dc7f5716bb7c84e9d9c3a0d_1652694146.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Other', '1', '000014', NULL, NULL),
(17, 10, 19, 3, 'Water', '50', '45', 'https://dkstatics-public.digikala.com/digikala-products/01d7a276000522e9d73b4da714771bde8c8857c2_1609669317.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Other', '2', '000015', NULL, NULL),
(18, 10, 19, 3, 'Toothpaste', '30', '25', 'https://dkstatics-public.digikala.com/digikala-products/976d5a6e886f0703f87a3b34cadcd64a326a5664_1707518379.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80', 'Other', '2', '000016', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `reviewer_name` varchar(255) NOT NULL,
  `reviewer_photo` varchar(255) NOT NULL,
  `reviewer_rating` varchar(255) NOT NULL,
  `reviewer_comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `reviewer_name`, `reviewer_photo`, `reviewer_rating`, `reviewer_comment`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sajjad MT', 'https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745', '4', 'Sajjad MT dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', NULL, NULL),
(2, 1, 'Kazi Ariyan', 'https://cdn-icons-png.flaticon.com/512/219/219983.png', '3', 'Kazi Ariyan dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore.', NULL, NULL),
(3, 1, 'ZGH', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small_2x/beautiful-woman-avatar-character-icon-free-vector.jpg', '4', 'ZGH dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam.', NULL, NULL),
(4, 1, 'Mohsen Mazinan', 'https://cdn-icons-png.flaticon.com/512/1724/1724930.png', '3', 'Mohsen Mazinan dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `remarks`
--

CREATE TABLE `remarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `remarks`
--

INSERT INTO `remarks` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'featured', NULL, NULL),
(2, 'new', NULL, NULL),
(3, 'collection', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('59D0V2FGQj6MTYgZc2wK5liQMLf2waQQbQkLKZZp', NULL, '127.0.0.1', 'PostmanRuntime/7.39.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNW5CNkQ2dmc0UWFndXhJUGlabnJreVNCeVBBc0hVb3puY2tadU9LNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717696138),
('ed2PkRsJLNwIwyhm3hfXVggFYUSHN959hBreRReO', NULL, '127.0.0.1', 'PostmanRuntime/7.39.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWtOcWtoR1hoUVQ3cUpRTVEyWjd5ZnA4YlI4a2dyRkxZYTlrREVYYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717350086),
('fkIvLqvRAVDKWPDwLYNBWXY94Yat9KM0s3KLDjsF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3NCckp6U3hNalJ0a25mY0pMc3JrZFkxdmVxSEhPZWpkVzA1TXg3TSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1717084228),
('M2bLeE0idxExgY9tKxQ8rVMLNR5ouozD6HckqIH9', NULL, '127.0.0.1', 'PostmanRuntime/7.39.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlp6UjJwa1ZoN041MGZFTm9mUWN5MFdRYzBCZ3BjR0RpcXBKNGFpWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717660883),
('neUvmidsXXVgz6AapMgtaaSkebtBQkttbJIewpCj', NULL, '127.0.0.1', 'PostmanRuntime/7.39.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianhOdXk1NkgwNnFqeER2cXRrbEROREFETEtYMGZQaTgxZE1kbjk4ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717233097),
('vydLxGK6rntFUY7SpUl6I1XQWySDrk9wPY8EdPm0', NULL, '127.0.0.1', 'PostmanRuntime/7.39.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjRiRGd1V2loNzlGcWFjS1BPSElkQzFrZ1ZFQk9rWnFudTZhUFVwViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717085938);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text NOT NULL,
  `refund` text NOT NULL,
  `purchase_guide` text NOT NULL,
  `privacy` text NOT NULL,
  `address` text NOT NULL,
  `android_app_link` varchar(255) NOT NULL,
  `ios_app_link` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `telegram_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `copyright_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `about`, `refund`, `purchase_guide`, `privacy`, `address`, `android_app_link`, `ios_app_link`, `instagram_link`, `telegram_link`, `twitter_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, '<h2>About</h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '<h3><strong>Refund</strong></h3>\r\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\r\n<h3><strong>1914 translation by H. Rackham</strong></h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', '<h3><strong>Purchase Guide</strong></h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', '<h3><strong>Privacy</strong></h3>\r\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>', '<p><strong>Merriam-Webster Inc.</strong><br><span><span>47 Federal Street</span></span><br><span><span>Springfield, MA 01105</span></span><br><span><span>Phone: (413) 734-3134</span></span></p>', 'http://localhost:3000/android', 'http://localhost:3000/ios', 'https://www.instagram.com/sinmobile1', 'https://t.me/sinmobile1', 'https://www.twitter.com/sinmobile', '<p>Online HTML WYSIWYG Editor © 2024 - all rights reserved.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `sub_category_name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 1, NULL, NULL),
(2, 'Samsung', 1, NULL, NULL),
(3, 'OPPO', 1, NULL, NULL),
(4, 'Laptops', 2, NULL, NULL),
(5, 'Desktop', 2, NULL, NULL),
(6, 'Smart TV', 3, NULL, NULL),
(7, 'Camera', 3, NULL, NULL),
(8, 'Washing Machine', 4, NULL, NULL),
(9, 'Air Conditioners', 4, NULL, NULL),
(10, 'Mens Top Were', 5, NULL, NULL),
(11, 'Mens Footware', 5, NULL, NULL),
(12, 'Woman Footware', 5, NULL, NULL),
(13, 'Kids Footware', 6, NULL, NULL),
(14, 'Kids Clothing', 6, NULL, NULL),
(15, 'Baby Care', 6, NULL, NULL),
(16, 'Home Decor', 7, NULL, NULL),
(17, 'Bed Room Furniture', 7, NULL, NULL),
(18, 'Living Room Furniture', 7, NULL, NULL),
(19, 'Health and Nutrition', 8, NULL, NULL),
(20, 'Home Gyms', 8, NULL, NULL),
(21, 'Books', 8, NULL, NULL),
(22, 'Mobile Cases', 9, NULL, NULL),
(23, 'HeadPhone', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$gqu1O9uMNZkV6eMOVjYDMuzb9pwNpFWxOme4HS1vXHN3XmJMCsJsq', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-14 04:06:32', '2024-04-14 04:06:32'),
(2, 'sajjad', 'sajjad@gmail.com', NULL, '$2y$12$dpZ4FMl1.gWChBAIeX61kegiW./DTw8ouhEY0jKndVKpZtTxx/ERa', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-30 12:50:02', '2024-05-30 12:50:02'),
(3, 'zahra', 'zahra@gmail.com', NULL, '$2y$12$pCUBwC62pVcokZ1EDCHAL.SgXyIoyIHHorqXGQwjxtEd4kFvMwGxS', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-30 12:51:24', '2024-06-13 04:53:38'),
(4, 'hasan', 'hasan@gmail.com', NULL, '$2y$12$AFbCfA0EwN/pHuTml18Ozu/woOHADZaZ9CeQjGZEuMntSs0cJNvDW', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-06 04:32:51', '2024-06-13 04:52:28'),
(5, 'Reza', 'reza@gmail.com', NULL, '$2y$12$q/rnOK0aj2hslUBT81hPMeLgCrVonnR1eWGwKTTKE59G4.CvTtx2e', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-10 04:23:32', '2024-06-10 04:23:32'),
(6, 'Hadi', 'hadi@gmail.com', NULL, '$2y$12$38KPUS1lBXFG7wKuSNsRDu.a4Zc1iSY5vpU95jafY/ongD0PPIFwK', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-10 04:25:19', '2024-06-10 04:25:19'),
(7, 'Mohsen', 'mohsen@gmail.com', NULL, '$2y$12$GT9Xgnkb.elfYx5qLVuJseGFxgDPTm7glWp09iD5oTrcQ76xAd/7.', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-10 04:27:16', '2024-06-10 04:27:16'),
(8, 'vahid', 'vahid@gmail.com', NULL, '$2y$12$JFg2KJPNePDJeKXdomgeiOQsCVvRXHQQS9y3FNL0LcmhrnLRgSLT6', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-11 11:51:30', '2024-06-11 11:51:30'),
(9, 'radmehr', 'radmehr@gmail.com', NULL, '$2y$12$6FuLGn8.guiLDOZvn65kV.1ZfTsq9sv/r.0ECNwsGGX5EvmjtLn0a', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-11 12:01:12', '2024-06-11 12:01:12'),
(10, 'ghasem', 'ghasem@gmail.com', NULL, '$2y$12$DWdXcFJtBWP9d8CcvTiBR.mUcAZ7YZqGocOBJTZ.oX0.pq7/MWtXW', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-11 12:05:03', '2024-06-11 12:05:03'),
(11, 'amghezi', 'amghezi@gmail.com', NULL, '$2y$12$v9RyyYKMniUWYimWjdxLTOuIZAVzvMsblS2E2TgNBI8ZbzB2.qgDK', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-11 12:06:09', '2024-06-11 12:06:09'),
(12, 'faez', 'faez@gmail.com', NULL, '$2y$12$.BOQh4nW9MNOTP2SCW8d2.cWidN1u7kin41z1hRCL03oGedgXaZjW', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-12 13:57:09', '2024-06-12 13:57:09'),
(13, 'saeid', 'saeid@gmail.com', NULL, '$2y$12$ClTU807okX4M/uZ96V4E8exbYkBQPM5dM38mD0p27P13QT7F7UeQC', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-12 14:09:19', '2024-06-12 14:09:19'),
(14, 'hamid', 'hamid@gmail.com', NULL, '$2y$12$t3GOXqlibcZ/z.xoFGiKpOIZqTVyho81qYlDF8yHpcj0nDeFXOMPa', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-16 02:43:10', '2024-06-16 02:43:10'),
(15, 'kazem', 'kazem@gmail.com', NULL, '$2y$12$KGMePj/l9qdbPJlT5GKXf.Z7qga374PncquayvrgaUX3zBs2j6Nf2', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-16 02:45:03', '2024-06-16 02:45:03'),
(16, 'korosh', 'korosh@gmail.com', NULL, '$2y$12$2M8SZqUq.vt5/67cGP/.veGdXGa5a.oW7DnEnFEzJwRRmA34PU/3G', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-16 02:46:36', '2024-06-16 02:46:36'),
(17, 'haniye', 'haniye@gmail.com', NULL, '$2y$12$KKKE8v9xvNYp3trD5nvUGuMPlxPURrUu7z3eNy.PEfr6QADBo1Swq', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-16 02:51:12', '2024-06-16 02:51:12'),
(18, 'rambod', 'rambod@gmail.com', NULL, '$2y$12$gcCc3eWi/Qqj4nnvkrKvDehSyC1YKpmTDurYFJwQiiI9hcZq7Gvee', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-16 02:54:29', '2024-06-16 02:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `visit_time` varchar(255) NOT NULL,
  `visit_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '12:03:14pm', '2024:04:14', '2024-04-14 08:33:14', '2024-04-14 08:33:14'),
(2, '127.0.0.1', '08:18:29pm', '2024:04:16', '2024-04-16 16:48:29', '2024-04-16 16:48:29'),
(3, '127.0.0.1', '08:18:31pm', '2024:04:16', '2024-04-16 16:48:31', '2024-04-16 16:48:31'),
(4, '127.0.0.1', '08:18:33pm', '2024:04:16', '2024-04-16 16:48:33', '2024-04-16 16:48:33'),
(5, '127.0.0.1', '08:19:04pm', '2024:04:16', '2024-04-16 16:49:04', '2024-04-16 16:49:04'),
(6, '127.0.0.1', '08:19:06pm', '2024:04:16', '2024-04-16 16:49:06', '2024-04-16 16:49:06'),
(7, '127.0.0.1', '11:26:00am', '2024:04:17', '2024-04-17 07:56:00', '2024-04-17 07:56:00'),
(8, '127.0.0.1', '11:26:02am', '2024:04:17', '2024-04-17 07:56:02', '2024-04-17 07:56:02'),
(9, '127.0.0.1', '11:43:09am', '2024:04:18', '2024-04-18 08:13:09', '2024-04-18 08:13:09'),
(10, '127.0.0.1', '11:43:10am', '2024:04:18', '2024-04-18 08:13:10', '2024-04-18 08:13:10'),
(11, '127.0.0.1', '11:47:09am', '2024:04:18', '2024-04-18 08:17:09', '2024-04-18 08:17:09'),
(12, '127.0.0.1', '11:47:10am', '2024:04:18', '2024-04-18 08:17:10', '2024-04-18 08:17:10'),
(13, '127.0.0.1', '11:52:22am', '2024:04:18', '2024-04-18 08:22:22', '2024-04-18 08:22:22'),
(14, '127.0.0.1', '11:52:24am', '2024:04:18', '2024-04-18 08:22:24', '2024-04-18 08:22:24'),
(15, '127.0.0.1', '01:32:21pm', '2024:04:18', '2024-04-18 10:02:21', '2024-04-18 10:02:21'),
(16, '127.0.0.1', '01:32:23pm', '2024:04:18', '2024-04-18 10:02:23', '2024-04-18 10:02:23'),
(17, '127.0.0.1', '01:38:00pm', '2024:04:18', '2024-04-18 10:08:00', '2024-04-18 10:08:00'),
(18, '127.0.0.1', '01:38:01pm', '2024:04:18', '2024-04-18 10:08:01', '2024-04-18 10:08:01'),
(19, '127.0.0.1', '05:25:44pm', '2024:04:18', '2024-04-18 13:55:44', '2024-04-18 13:55:44'),
(20, '127.0.0.1', '05:25:46pm', '2024:04:18', '2024-04-18 13:55:46', '2024-04-18 13:55:46'),
(21, '127.0.0.1', '05:45:14pm', '2024:04:18', '2024-04-18 14:15:14', '2024-04-18 14:15:14'),
(22, '127.0.0.1', '05:45:16pm', '2024:04:18', '2024-04-18 14:15:16', '2024-04-18 14:15:16'),
(23, '127.0.0.1', '05:49:17pm', '2024:04:18', '2024-04-18 14:19:17', '2024-04-18 14:19:17'),
(24, '127.0.0.1', '05:49:19pm', '2024:04:18', '2024-04-18 14:19:19', '2024-04-18 14:19:19'),
(25, '127.0.0.1', '05:49:44pm', '2024:04:18', '2024-04-18 14:19:44', '2024-04-18 14:19:44'),
(26, '127.0.0.1', '05:49:46pm', '2024:04:18', '2024-04-18 14:19:46', '2024-04-18 14:19:46'),
(27, '127.0.0.1', '05:49:49pm', '2024:04:18', '2024-04-18 14:19:49', '2024-04-18 14:19:49'),
(28, '127.0.0.1', '05:49:51pm', '2024:04:18', '2024-04-18 14:19:51', '2024-04-18 14:19:51'),
(29, '127.0.0.1', '05:49:53pm', '2024:04:18', '2024-04-18 14:19:53', '2024-04-18 14:19:53'),
(30, '127.0.0.1', '05:49:55pm', '2024:04:18', '2024-04-18 14:19:55', '2024-04-18 14:19:55'),
(31, '127.0.0.1', '05:50:49pm', '2024:04:18', '2024-04-18 14:20:49', '2024-04-18 14:20:49'),
(32, '127.0.0.1', '05:50:51pm', '2024:04:18', '2024-04-18 14:20:51', '2024-04-18 14:20:51'),
(33, '127.0.0.1', '05:57:13pm', '2024:04:18', '2024-04-18 14:27:13', '2024-04-18 14:27:13'),
(34, '127.0.0.1', '05:57:15pm', '2024:04:18', '2024-04-18 14:27:15', '2024-04-18 14:27:15'),
(35, '127.0.0.1', '06:46:16pm', '2024:04:18', '2024-04-18 15:16:16', '2024-04-18 15:16:16'),
(36, '127.0.0.1', '06:46:18pm', '2024:04:18', '2024-04-18 15:16:18', '2024-04-18 15:16:18'),
(37, '127.0.0.1', '06:46:20pm', '2024:04:18', '2024-04-18 15:16:20', '2024-04-18 15:16:20'),
(38, '127.0.0.1', '06:47:37pm', '2024:04:18', '2024-04-18 15:17:37', '2024-04-18 15:17:37'),
(39, '127.0.0.1', '06:47:40pm', '2024:04:18', '2024-04-18 15:17:40', '2024-04-18 15:17:40'),
(40, '127.0.0.1', '06:57:51pm', '2024:04:18', '2024-04-18 15:27:51', '2024-04-18 15:27:51'),
(41, '127.0.0.1', '06:57:53pm', '2024:04:18', '2024-04-18 15:27:53', '2024-04-18 15:27:53'),
(42, '127.0.0.1', '09:31:15am', '2024:04:20', '2024-04-20 06:01:15', '2024-04-20 06:01:15'),
(43, '127.0.0.1', '09:31:17am', '2024:04:20', '2024-04-20 06:01:17', '2024-04-20 06:01:17'),
(44, '127.0.0.1', '09:37:18am', '2024:04:20', '2024-04-20 06:07:18', '2024-04-20 06:07:18'),
(45, '127.0.0.1', '09:37:20am', '2024:04:20', '2024-04-20 06:07:20', '2024-04-20 06:07:20'),
(46, '127.0.0.1', '09:38:11am', '2024:04:20', '2024-04-20 06:08:11', '2024-04-20 06:08:11'),
(47, '127.0.0.1', '09:38:13am', '2024:04:20', '2024-04-20 06:08:13', '2024-04-20 06:08:13'),
(48, '127.0.0.1', '09:40:03am', '2024:04:20', '2024-04-20 06:10:03', '2024-04-20 06:10:03'),
(49, '127.0.0.1', '09:40:05am', '2024:04:20', '2024-04-20 06:10:05', '2024-04-20 06:10:05'),
(50, '127.0.0.1', '09:42:08am', '2024:04:20', '2024-04-20 06:12:08', '2024-04-20 06:12:08'),
(51, '127.0.0.1', '09:42:10am', '2024:04:20', '2024-04-20 06:12:10', '2024-04-20 06:12:10'),
(52, '127.0.0.1', '09:44:49am', '2024:04:20', '2024-04-20 06:14:49', '2024-04-20 06:14:49'),
(53, '127.0.0.1', '09:44:51am', '2024:04:20', '2024-04-20 06:14:51', '2024-04-20 06:14:51'),
(54, '127.0.0.1', '09:49:53am', '2024:04:20', '2024-04-20 06:19:53', '2024-04-20 06:19:53'),
(55, '127.0.0.1', '09:49:55am', '2024:04:20', '2024-04-20 06:19:55', '2024-04-20 06:19:55'),
(56, '127.0.0.1', '09:57:30am', '2024:04:20', '2024-04-20 06:27:30', '2024-04-20 06:27:30'),
(57, '127.0.0.1', '09:57:33am', '2024:04:20', '2024-04-20 06:27:33', '2024-04-20 06:27:33'),
(58, '127.0.0.1', '09:58:22am', '2024:04:20', '2024-04-20 06:28:22', '2024-04-20 06:28:22'),
(59, '127.0.0.1', '09:58:24am', '2024:04:20', '2024-04-20 06:28:24', '2024-04-20 06:28:24'),
(60, '127.0.0.1', '09:59:12am', '2024:04:20', '2024-04-20 06:29:12', '2024-04-20 06:29:12'),
(61, '127.0.0.1', '09:59:14am', '2024:04:20', '2024-04-20 06:29:14', '2024-04-20 06:29:14'),
(62, '127.0.0.1', '10:31:20am', '2024:04:20', '2024-04-20 07:01:20', '2024-04-20 07:01:20'),
(63, '127.0.0.1', '10:31:23am', '2024:04:20', '2024-04-20 07:01:23', '2024-04-20 07:01:23'),
(64, '127.0.0.1', '10:31:56am', '2024:04:20', '2024-04-20 07:01:56', '2024-04-20 07:01:56'),
(65, '127.0.0.1', '10:31:58am', '2024:04:20', '2024-04-20 07:01:58', '2024-04-20 07:01:58'),
(66, '127.0.0.1', '10:34:10am', '2024:04:20', '2024-04-20 07:04:10', '2024-04-20 07:04:10'),
(67, '127.0.0.1', '10:34:13am', '2024:04:20', '2024-04-20 07:04:13', '2024-04-20 07:04:13'),
(68, '127.0.0.1', '10:36:30am', '2024:04:20', '2024-04-20 07:06:30', '2024-04-20 07:06:30'),
(69, '127.0.0.1', '10:36:32am', '2024:04:20', '2024-04-20 07:06:32', '2024-04-20 07:06:32'),
(70, '127.0.0.1', '10:36:47am', '2024:04:20', '2024-04-20 07:06:47', '2024-04-20 07:06:47'),
(71, '127.0.0.1', '10:36:49am', '2024:04:20', '2024-04-20 07:06:49', '2024-04-20 07:06:49'),
(72, '127.0.0.1', '10:37:01am', '2024:04:20', '2024-04-20 07:07:01', '2024-04-20 07:07:01'),
(73, '127.0.0.1', '10:37:03am', '2024:04:20', '2024-04-20 07:07:03', '2024-04-20 07:07:03'),
(74, '127.0.0.1', '11:28:54am', '2024:04:20', '2024-04-20 07:58:54', '2024-04-20 07:58:54'),
(75, '127.0.0.1', '11:28:56am', '2024:04:20', '2024-04-20 07:58:56', '2024-04-20 07:58:56'),
(76, '127.0.0.1', '11:38:04am', '2024:04:20', '2024-04-20 08:08:04', '2024-04-20 08:08:04'),
(77, '127.0.0.1', '11:38:06am', '2024:04:20', '2024-04-20 08:08:06', '2024-04-20 08:08:06'),
(78, '127.0.0.1', '11:38:28am', '2024:04:20', '2024-04-20 08:08:28', '2024-04-20 08:08:28'),
(79, '127.0.0.1', '11:38:30am', '2024:04:20', '2024-04-20 08:08:30', '2024-04-20 08:08:30'),
(80, '127.0.0.1', '11:40:43am', '2024:04:20', '2024-04-20 08:10:43', '2024-04-20 08:10:43'),
(81, '127.0.0.1', '11:40:45am', '2024:04:20', '2024-04-20 08:10:45', '2024-04-20 08:10:45'),
(82, '127.0.0.1', '11:42:40am', '2024:04:20', '2024-04-20 08:12:40', '2024-04-20 08:12:40'),
(83, '127.0.0.1', '11:42:42am', '2024:04:20', '2024-04-20 08:12:42', '2024-04-20 08:12:42'),
(84, '127.0.0.1', '11:43:29am', '2024:04:20', '2024-04-20 08:13:29', '2024-04-20 08:13:29'),
(85, '127.0.0.1', '11:43:31am', '2024:04:20', '2024-04-20 08:13:31', '2024-04-20 08:13:31'),
(86, '127.0.0.1', '12:32:33pm', '2024:04:20', '2024-04-20 09:02:33', '2024-04-20 09:02:33'),
(87, '127.0.0.1', '12:32:35pm', '2024:04:20', '2024-04-20 09:02:35', '2024-04-20 09:02:35'),
(88, '127.0.0.1', '09:15:26pm', '2024:04:20', '2024-04-20 17:45:26', '2024-04-20 17:45:26'),
(89, '127.0.0.1', '09:15:29pm', '2024:04:20', '2024-04-20 17:45:29', '2024-04-20 17:45:29'),
(90, '127.0.0.1', '09:15:37pm', '2024:04:20', '2024-04-20 17:45:37', '2024-04-20 17:45:37'),
(91, '127.0.0.1', '09:15:39pm', '2024:04:20', '2024-04-20 17:45:39', '2024-04-20 17:45:39'),
(92, '127.0.0.1', '09:18:34pm', '2024:04:20', '2024-04-20 17:48:34', '2024-04-20 17:48:34'),
(93, '127.0.0.1', '09:18:36pm', '2024:04:20', '2024-04-20 17:48:36', '2024-04-20 17:48:36'),
(94, '127.0.0.1', '09:23:53pm', '2024:04:20', '2024-04-20 17:53:53', '2024-04-20 17:53:53'),
(95, '127.0.0.1', '09:23:56pm', '2024:04:20', '2024-04-20 17:53:56', '2024-04-20 17:53:56'),
(96, '127.0.0.1', '09:24:15pm', '2024:04:20', '2024-04-20 17:54:15', '2024-04-20 17:54:15'),
(97, '127.0.0.1', '09:24:18pm', '2024:04:20', '2024-04-20 17:54:18', '2024-04-20 17:54:18'),
(98, '127.0.0.1', '06:06:21pm', '2024:04:21', '2024-04-21 14:36:21', '2024-04-21 14:36:21'),
(99, '127.0.0.1', '06:06:24pm', '2024:04:21', '2024-04-21 14:36:24', '2024-04-21 14:36:24'),
(100, '127.0.0.1', '06:06:33pm', '2024:04:21', '2024-04-21 14:36:33', '2024-04-21 14:36:33'),
(101, '127.0.0.1', '06:06:35pm', '2024:04:21', '2024-04-21 14:36:35', '2024-04-21 14:36:35'),
(102, '127.0.0.1', '06:10:22pm', '2024:04:21', '2024-04-21 14:40:22', '2024-04-21 14:40:22'),
(103, '127.0.0.1', '06:10:25pm', '2024:04:21', '2024-04-21 14:40:25', '2024-04-21 14:40:25'),
(104, '127.0.0.1', '06:10:29pm', '2024:04:21', '2024-04-21 14:40:29', '2024-04-21 14:40:29'),
(105, '127.0.0.1', '06:10:31pm', '2024:04:21', '2024-04-21 14:40:31', '2024-04-21 14:40:31'),
(106, '127.0.0.1', '06:10:48pm', '2024:04:21', '2024-04-21 14:40:48', '2024-04-21 14:40:48'),
(107, '127.0.0.1', '06:10:50pm', '2024:04:21', '2024-04-21 14:40:50', '2024-04-21 14:40:50'),
(108, '127.0.0.1', '06:14:14pm', '2024:04:21', '2024-04-21 14:44:14', '2024-04-21 14:44:14'),
(109, '127.0.0.1', '06:14:16pm', '2024:04:21', '2024-04-21 14:44:16', '2024-04-21 14:44:16'),
(110, '127.0.0.1', '06:14:39pm', '2024:04:21', '2024-04-21 14:44:39', '2024-04-21 14:44:39'),
(111, '127.0.0.1', '06:14:42pm', '2024:04:21', '2024-04-21 14:44:42', '2024-04-21 14:44:42'),
(112, '127.0.0.1', '06:14:49pm', '2024:04:21', '2024-04-21 14:44:49', '2024-04-21 14:44:49'),
(113, '127.0.0.1', '06:14:51pm', '2024:04:21', '2024-04-21 14:44:51', '2024-04-21 14:44:51'),
(114, '127.0.0.1', '06:15:20pm', '2024:04:21', '2024-04-21 14:45:20', '2024-04-21 14:45:20'),
(115, '127.0.0.1', '06:15:22pm', '2024:04:21', '2024-04-21 14:45:22', '2024-04-21 14:45:22'),
(116, '127.0.0.1', '06:15:58pm', '2024:04:21', '2024-04-21 14:45:58', '2024-04-21 14:45:58'),
(117, '127.0.0.1', '06:16:00pm', '2024:04:21', '2024-04-21 14:46:00', '2024-04-21 14:46:00'),
(118, '127.0.0.1', '06:16:05pm', '2024:04:21', '2024-04-21 14:46:05', '2024-04-21 14:46:05'),
(119, '127.0.0.1', '06:16:07pm', '2024:04:21', '2024-04-21 14:46:07', '2024-04-21 14:46:07'),
(120, '127.0.0.1', '06:19:24pm', '2024:04:21', '2024-04-21 14:49:24', '2024-04-21 14:49:24'),
(121, '127.0.0.1', '06:19:26pm', '2024:04:21', '2024-04-21 14:49:26', '2024-04-21 14:49:26'),
(122, '127.0.0.1', '06:19:31pm', '2024:04:21', '2024-04-21 14:49:31', '2024-04-21 14:49:31'),
(123, '127.0.0.1', '06:19:33pm', '2024:04:21', '2024-04-21 14:49:33', '2024-04-21 14:49:33'),
(124, '127.0.0.1', '09:02:19pm', '2024:04:21', '2024-04-21 17:32:19', '2024-04-21 17:32:19'),
(125, '127.0.0.1', '09:02:22pm', '2024:04:21', '2024-04-21 17:32:22', '2024-04-21 17:32:22'),
(126, '127.0.0.1', '09:03:52pm', '2024:04:21', '2024-04-21 17:33:52', '2024-04-21 17:33:52'),
(127, '127.0.0.1', '09:03:54pm', '2024:04:21', '2024-04-21 17:33:54', '2024-04-21 17:33:54'),
(128, '127.0.0.1', '09:05:52pm', '2024:04:21', '2024-04-21 17:35:52', '2024-04-21 17:35:52'),
(129, '127.0.0.1', '09:05:54pm', '2024:04:21', '2024-04-21 17:35:54', '2024-04-21 17:35:54'),
(130, '127.0.0.1', '09:06:24pm', '2024:04:21', '2024-04-21 17:36:24', '2024-04-21 17:36:24'),
(131, '127.0.0.1', '09:06:26pm', '2024:04:21', '2024-04-21 17:36:26', '2024-04-21 17:36:26'),
(132, '127.0.0.1', '09:07:05pm', '2024:04:21', '2024-04-21 17:37:05', '2024-04-21 17:37:05'),
(133, '127.0.0.1', '09:07:08pm', '2024:04:21', '2024-04-21 17:37:08', '2024-04-21 17:37:08'),
(134, '127.0.0.1', '09:08:16pm', '2024:04:21', '2024-04-21 17:38:16', '2024-04-21 17:38:16'),
(135, '127.0.0.1', '09:08:19pm', '2024:04:21', '2024-04-21 17:38:19', '2024-04-21 17:38:19'),
(136, '127.0.0.1', '09:08:22pm', '2024:04:21', '2024-04-21 17:38:22', '2024-04-21 17:38:22'),
(137, '127.0.0.1', '09:08:25pm', '2024:04:21', '2024-04-21 17:38:25', '2024-04-21 17:38:25'),
(138, '127.0.0.1', '09:16:40pm', '2024:04:21', '2024-04-21 17:46:40', '2024-04-21 17:46:40'),
(139, '127.0.0.1', '09:16:42pm', '2024:04:21', '2024-04-21 17:46:42', '2024-04-21 17:46:42'),
(140, '127.0.0.1', '09:16:48pm', '2024:04:21', '2024-04-21 17:46:48', '2024-04-21 17:46:48'),
(141, '127.0.0.1', '09:16:51pm', '2024:04:21', '2024-04-21 17:46:51', '2024-04-21 17:46:51'),
(142, '127.0.0.1', '09:17:21pm', '2024:04:21', '2024-04-21 17:47:21', '2024-04-21 17:47:21'),
(143, '127.0.0.1', '09:17:23pm', '2024:04:21', '2024-04-21 17:47:23', '2024-04-21 17:47:23'),
(144, '127.0.0.1', '09:17:27pm', '2024:04:21', '2024-04-21 17:47:27', '2024-04-21 17:47:27'),
(145, '127.0.0.1', '09:17:30pm', '2024:04:21', '2024-04-21 17:47:30', '2024-04-21 17:47:30'),
(146, '127.0.0.1', '09:17:49pm', '2024:04:21', '2024-04-21 17:47:49', '2024-04-21 17:47:49'),
(147, '127.0.0.1', '09:17:52pm', '2024:04:21', '2024-04-21 17:47:52', '2024-04-21 17:47:52'),
(148, '127.0.0.1', '09:17:55pm', '2024:04:21', '2024-04-21 17:47:55', '2024-04-21 17:47:55'),
(149, '127.0.0.1', '09:17:57pm', '2024:04:21', '2024-04-21 17:47:58', '2024-04-21 17:47:58'),
(150, '127.0.0.1', '09:18:51pm', '2024:04:21', '2024-04-21 17:48:51', '2024-04-21 17:48:51'),
(151, '127.0.0.1', '09:18:53pm', '2024:04:21', '2024-04-21 17:48:53', '2024-04-21 17:48:53'),
(152, '127.0.0.1', '09:36:07pm', '2024:04:21', '2024-04-21 18:06:07', '2024-04-21 18:06:07'),
(153, '127.0.0.1', '09:36:10pm', '2024:04:21', '2024-04-21 18:06:10', '2024-04-21 18:06:10'),
(154, '127.0.0.1', '09:42:05pm', '2024:04:21', '2024-04-21 18:12:05', '2024-04-21 18:12:05'),
(155, '127.0.0.1', '09:42:07pm', '2024:04:21', '2024-04-21 18:12:07', '2024-04-21 18:12:07'),
(156, '127.0.0.1', '09:46:42pm', '2024:04:21', '2024-04-21 18:16:42', '2024-04-21 18:16:42'),
(157, '127.0.0.1', '09:46:45pm', '2024:04:21', '2024-04-21 18:16:45', '2024-04-21 18:16:45'),
(158, '127.0.0.1', '09:58:16am', '2024:04:22', '2024-04-22 06:28:16', '2024-04-22 06:28:16'),
(159, '127.0.0.1', '09:58:18am', '2024:04:22', '2024-04-22 06:28:18', '2024-04-22 06:28:18'),
(160, '127.0.0.1', '10:02:26am', '2024:04:22', '2024-04-22 06:32:26', '2024-04-22 06:32:26'),
(161, '127.0.0.1', '10:02:29am', '2024:04:22', '2024-04-22 06:32:29', '2024-04-22 06:32:29'),
(162, '127.0.0.1', '10:07:32am', '2024:04:22', '2024-04-22 06:37:32', '2024-04-22 06:37:32'),
(163, '127.0.0.1', '10:07:35am', '2024:04:22', '2024-04-22 06:37:35', '2024-04-22 06:37:35'),
(164, '127.0.0.1', '10:09:15am', '2024:04:22', '2024-04-22 06:39:15', '2024-04-22 06:39:15'),
(165, '127.0.0.1', '10:09:18am', '2024:04:22', '2024-04-22 06:39:18', '2024-04-22 06:39:18'),
(166, '127.0.0.1', '10:09:42am', '2024:04:22', '2024-04-22 06:39:42', '2024-04-22 06:39:42'),
(167, '127.0.0.1', '10:09:44am', '2024:04:22', '2024-04-22 06:39:44', '2024-04-22 06:39:44'),
(168, '127.0.0.1', '11:05:56am', '2024:04:22', '2024-04-22 07:35:56', '2024-04-22 07:35:56'),
(169, '127.0.0.1', '11:06:06am', '2024:04:22', '2024-04-22 07:36:06', '2024-04-22 07:36:06'),
(170, '127.0.0.1', '11:13:12am', '2024:04:22', '2024-04-22 07:43:12', '2024-04-22 07:43:12'),
(171, '127.0.0.1', '11:13:14am', '2024:04:22', '2024-04-22 07:43:14', '2024-04-22 07:43:14'),
(172, '127.0.0.1', '05:04:05pm', '2024:04:22', '2024-04-22 13:34:05', '2024-04-22 13:34:05'),
(173, '127.0.0.1', '05:04:07pm', '2024:04:22', '2024-04-22 13:34:07', '2024-04-22 13:34:07'),
(174, '127.0.0.1', '05:11:59pm', '2024:04:22', '2024-04-22 13:41:59', '2024-04-22 13:41:59'),
(175, '127.0.0.1', '05:12:01pm', '2024:04:22', '2024-04-22 13:42:01', '2024-04-22 13:42:01'),
(176, '127.0.0.1', '05:41:09pm', '2024:04:22', '2024-04-22 14:11:09', '2024-04-22 14:11:09'),
(177, '127.0.0.1', '05:41:11pm', '2024:04:22', '2024-04-22 14:11:11', '2024-04-22 14:11:11'),
(178, '127.0.0.1', '05:41:21pm', '2024:04:22', '2024-04-22 14:11:21', '2024-04-22 14:11:21'),
(179, '127.0.0.1', '05:41:24pm', '2024:04:22', '2024-04-22 14:11:24', '2024-04-22 14:11:24'),
(180, '127.0.0.1', '05:59:21pm', '2024:04:22', '2024-04-22 14:29:21', '2024-04-22 14:29:21'),
(181, '127.0.0.1', '05:59:24pm', '2024:04:22', '2024-04-22 14:29:24', '2024-04-22 14:29:24'),
(182, '127.0.0.1', '05:59:27pm', '2024:04:22', '2024-04-22 14:29:27', '2024-04-22 14:29:27'),
(183, '127.0.0.1', '05:59:29pm', '2024:04:22', '2024-04-22 14:29:30', '2024-04-22 14:29:30'),
(184, '127.0.0.1', '06:12:15pm', '2024:04:22', '2024-04-22 14:42:15', '2024-04-22 14:42:15'),
(185, '127.0.0.1', '06:12:17pm', '2024:04:22', '2024-04-22 14:42:17', '2024-04-22 14:42:17'),
(186, '127.0.0.1', '06:13:10pm', '2024:04:22', '2024-04-22 14:43:10', '2024-04-22 14:43:10'),
(187, '127.0.0.1', '06:13:12pm', '2024:04:22', '2024-04-22 14:43:12', '2024-04-22 14:43:12'),
(188, '127.0.0.1', '06:13:44pm', '2024:04:22', '2024-04-22 14:43:44', '2024-04-22 14:43:44'),
(189, '127.0.0.1', '06:13:47pm', '2024:04:22', '2024-04-22 14:43:47', '2024-04-22 14:43:47'),
(190, '127.0.0.1', '07:16:36pm', '2024:04:22', '2024-04-22 15:46:36', '2024-04-22 15:46:36'),
(191, '127.0.0.1', '07:16:39pm', '2024:04:22', '2024-04-22 15:46:39', '2024-04-22 15:46:39'),
(192, '127.0.0.1', '08:59:09pm', '2024:04:22', '2024-04-22 17:29:09', '2024-04-22 17:29:09'),
(193, '127.0.0.1', '08:59:11pm', '2024:04:22', '2024-04-22 17:29:11', '2024-04-22 17:29:11'),
(194, '127.0.0.1', '09:34:55am', '2024:04:23', '2024-04-23 06:04:55', '2024-04-23 06:04:55'),
(195, '127.0.0.1', '09:34:57am', '2024:04:23', '2024-04-23 06:04:57', '2024-04-23 06:04:57'),
(196, '127.0.0.1', '10:17:34am', '2024:04:23', '2024-04-23 06:47:34', '2024-04-23 06:47:34'),
(197, '127.0.0.1', '10:17:38am', '2024:04:23', '2024-04-23 06:47:38', '2024-04-23 06:47:38'),
(198, '127.0.0.1', '10:37:05am', '2024:04:23', '2024-04-23 07:07:05', '2024-04-23 07:07:05'),
(199, '127.0.0.1', '10:37:07am', '2024:04:23', '2024-04-23 07:07:07', '2024-04-23 07:07:07'),
(200, '127.0.0.1', '10:37:28am', '2024:04:23', '2024-04-23 07:07:28', '2024-04-23 07:07:28'),
(201, '127.0.0.1', '10:37:30am', '2024:04:23', '2024-04-23 07:07:30', '2024-04-23 07:07:30'),
(202, '127.0.0.1', '10:37:56am', '2024:04:23', '2024-04-23 07:07:56', '2024-04-23 07:07:56'),
(203, '127.0.0.1', '10:37:58am', '2024:04:23', '2024-04-23 07:07:58', '2024-04-23 07:07:58'),
(204, '127.0.0.1', '11:13:51am', '2024:04:23', '2024-04-23 07:43:51', '2024-04-23 07:43:51'),
(205, '127.0.0.1', '11:13:53am', '2024:04:23', '2024-04-23 07:43:53', '2024-04-23 07:43:53'),
(206, '127.0.0.1', '11:39:01am', '2024:04:23', '2024-04-23 08:09:02', '2024-04-23 08:09:02'),
(207, '127.0.0.1', '11:39:05am', '2024:04:23', '2024-04-23 08:09:05', '2024-04-23 08:09:05'),
(208, '127.0.0.1', '12:44:00pm', '2024:04:23', '2024-04-23 09:14:00', '2024-04-23 09:14:00'),
(209, '127.0.0.1', '12:47:15pm', '2024:04:23', '2024-04-23 09:17:15', '2024-04-23 09:17:15'),
(210, '127.0.0.1', '12:47:17pm', '2024:04:23', '2024-04-23 09:17:17', '2024-04-23 09:17:17'),
(211, '127.0.0.1', '12:54:12pm', '2024:04:23', '2024-04-23 09:24:12', '2024-04-23 09:24:12'),
(212, '127.0.0.1', '12:54:14pm', '2024:04:23', '2024-04-23 09:24:14', '2024-04-23 09:24:14'),
(213, '127.0.0.1', '01:09:09pm', '2024:04:23', '2024-04-23 09:39:09', '2024-04-23 09:39:09'),
(214, '127.0.0.1', '01:09:11pm', '2024:04:23', '2024-04-23 09:39:11', '2024-04-23 09:39:11'),
(215, '127.0.0.1', '06:32:25pm', '2024:04:23', '2024-04-23 15:02:25', '2024-04-23 15:02:25'),
(216, '127.0.0.1', '06:32:27pm', '2024:04:23', '2024-04-23 15:02:27', '2024-04-23 15:02:27'),
(217, '127.0.0.1', '09:28:02pm', '2024:04:24', '2024-04-24 17:58:02', '2024-04-24 17:58:02'),
(218, '127.0.0.1', '09:28:04pm', '2024:04:24', '2024-04-24 17:58:04', '2024-04-24 17:58:04'),
(219, '127.0.0.1', '09:28:32pm', '2024:04:24', '2024-04-24 17:58:32', '2024-04-24 17:58:32'),
(220, '127.0.0.1', '09:28:34pm', '2024:04:24', '2024-04-24 17:58:34', '2024-04-24 17:58:34'),
(221, '127.0.0.1', '09:29:53pm', '2024:04:24', '2024-04-24 17:59:53', '2024-04-24 17:59:53'),
(222, '127.0.0.1', '09:29:55pm', '2024:04:24', '2024-04-24 17:59:55', '2024-04-24 17:59:55'),
(223, '127.0.0.1', '10:49:04am', '2024:04:25', '2024-04-25 07:19:04', '2024-04-25 07:19:04'),
(224, '127.0.0.1', '10:49:07am', '2024:04:25', '2024-04-25 07:19:07', '2024-04-25 07:19:07'),
(225, '127.0.0.1', '10:52:06am', '2024:04:25', '2024-04-25 07:22:06', '2024-04-25 07:22:06'),
(226, '127.0.0.1', '10:52:10am', '2024:04:25', '2024-04-25 07:22:10', '2024-04-25 07:22:10'),
(227, '127.0.0.1', '10:52:13am', '2024:04:25', '2024-04-25 07:22:13', '2024-04-25 07:22:13'),
(228, '127.0.0.1', '11:01:29am', '2024:04:25', '2024-04-25 07:31:29', '2024-04-25 07:31:29'),
(229, '127.0.0.1', '11:01:31am', '2024:04:25', '2024-04-25 07:31:31', '2024-04-25 07:31:31'),
(230, '127.0.0.1', '11:04:04am', '2024:04:25', '2024-04-25 07:34:04', '2024-04-25 07:34:04'),
(231, '127.0.0.1', '11:04:07am', '2024:04:25', '2024-04-25 07:34:07', '2024-04-25 07:34:07'),
(232, '127.0.0.1', '11:05:28am', '2024:04:25', '2024-04-25 07:35:28', '2024-04-25 07:35:28'),
(233, '127.0.0.1', '11:05:31am', '2024:04:25', '2024-04-25 07:35:31', '2024-04-25 07:35:31'),
(234, '127.0.0.1', '11:16:34am', '2024:04:25', '2024-04-25 07:46:34', '2024-04-25 07:46:34'),
(235, '127.0.0.1', '11:21:29am', '2024:04:25', '2024-04-25 07:51:29', '2024-04-25 07:51:29'),
(236, '127.0.0.1', '11:21:31am', '2024:04:25', '2024-04-25 07:51:32', '2024-04-25 07:51:32'),
(237, '127.0.0.1', '11:22:14am', '2024:04:25', '2024-04-25 07:52:14', '2024-04-25 07:52:14'),
(238, '127.0.0.1', '11:22:16am', '2024:04:25', '2024-04-25 07:52:16', '2024-04-25 07:52:16'),
(239, '127.0.0.1', '11:27:23am', '2024:04:25', '2024-04-25 07:57:23', '2024-04-25 07:57:23'),
(240, '127.0.0.1', '11:27:25am', '2024:04:25', '2024-04-25 07:57:25', '2024-04-25 07:57:25'),
(241, '127.0.0.1', '11:37:58am', '2024:04:25', '2024-04-25 08:07:58', '2024-04-25 08:07:58'),
(242, '127.0.0.1', '11:38:00am', '2024:04:25', '2024-04-25 08:08:00', '2024-04-25 08:08:00'),
(243, '127.0.0.1', '11:38:11am', '2024:04:25', '2024-04-25 08:08:11', '2024-04-25 08:08:11'),
(244, '127.0.0.1', '11:38:16am', '2024:04:25', '2024-04-25 08:08:16', '2024-04-25 08:08:16'),
(245, '127.0.0.1', '11:41:23am', '2024:04:25', '2024-04-25 08:11:23', '2024-04-25 08:11:23'),
(246, '127.0.0.1', '11:41:25am', '2024:04:25', '2024-04-25 08:11:25', '2024-04-25 08:11:25'),
(247, '127.0.0.1', '11:42:40am', '2024:04:25', '2024-04-25 08:12:40', '2024-04-25 08:12:40'),
(248, '127.0.0.1', '11:42:42am', '2024:04:25', '2024-04-25 08:12:42', '2024-04-25 08:12:42'),
(249, '127.0.0.1', '11:44:09am', '2024:04:25', '2024-04-25 08:14:09', '2024-04-25 08:14:09'),
(250, '127.0.0.1', '11:44:12am', '2024:04:25', '2024-04-25 08:14:12', '2024-04-25 08:14:12'),
(251, '127.0.0.1', '12:02:15pm', '2024:04:25', '2024-04-25 08:32:15', '2024-04-25 08:32:15'),
(252, '127.0.0.1', '12:02:17pm', '2024:04:25', '2024-04-25 08:32:17', '2024-04-25 08:32:17'),
(253, '127.0.0.1', '06:14:21pm', '2024:04:25', '2024-04-25 14:44:21', '2024-04-25 14:44:21'),
(254, '127.0.0.1', '06:14:23pm', '2024:04:25', '2024-04-25 14:44:23', '2024-04-25 14:44:23'),
(255, '127.0.0.1', '07:45:43pm', '2024:04:25', '2024-04-25 16:15:43', '2024-04-25 16:15:43'),
(256, '127.0.0.1', '07:45:47pm', '2024:04:25', '2024-04-25 16:15:47', '2024-04-25 16:15:47'),
(257, '127.0.0.1', '08:18:31pm', '2024:04:25', '2024-04-25 16:48:31', '2024-04-25 16:48:31'),
(258, '127.0.0.1', '10:49:40am', '2024:04:27', '2024-04-27 07:19:40', '2024-04-27 07:19:40'),
(259, '127.0.0.1', '10:49:43am', '2024:04:27', '2024-04-27 07:19:43', '2024-04-27 07:19:43'),
(260, '127.0.0.1', '10:58:28am', '2024:04:27', '2024-04-27 07:28:28', '2024-04-27 07:28:28'),
(261, '127.0.0.1', '10:58:31am', '2024:04:27', '2024-04-27 07:28:31', '2024-04-27 07:28:31'),
(262, '127.0.0.1', '05:50:40pm', '2024:04:27', '2024-04-27 14:20:40', '2024-04-27 14:20:40'),
(263, '127.0.0.1', '05:50:42pm', '2024:04:27', '2024-04-27 14:20:42', '2024-04-27 14:20:42'),
(264, '127.0.0.1', '06:13:37pm', '2024:04:27', '2024-04-27 14:43:37', '2024-04-27 14:43:37'),
(265, '127.0.0.1', '06:13:40pm', '2024:04:27', '2024-04-27 14:43:40', '2024-04-27 14:43:40'),
(266, '127.0.0.1', '06:14:14pm', '2024:04:27', '2024-04-27 14:44:15', '2024-04-27 14:44:15'),
(267, '127.0.0.1', '06:14:36pm', '2024:04:27', '2024-04-27 14:44:36', '2024-04-27 14:44:36'),
(268, '127.0.0.1', '06:16:14pm', '2024:04:27', '2024-04-27 14:46:14', '2024-04-27 14:46:14'),
(269, '127.0.0.1', '06:16:17pm', '2024:04:27', '2024-04-27 14:46:17', '2024-04-27 14:46:17'),
(270, '127.0.0.1', '06:17:42pm', '2024:04:27', '2024-04-27 14:47:42', '2024-04-27 14:47:42'),
(271, '127.0.0.1', '06:17:45pm', '2024:04:27', '2024-04-27 14:47:45', '2024-04-27 14:47:45'),
(272, '127.0.0.1', '06:55:12pm', '2024:04:27', '2024-04-27 15:25:12', '2024-04-27 15:25:12'),
(273, '127.0.0.1', '06:55:15pm', '2024:04:27', '2024-04-27 15:25:15', '2024-04-27 15:25:15'),
(274, '127.0.0.1', '10:20:04am', '2024:04:28', '2024-04-28 06:50:04', '2024-04-28 06:50:04'),
(275, '127.0.0.1', '10:20:07am', '2024:04:28', '2024-04-28 06:50:07', '2024-04-28 06:50:07'),
(276, '127.0.0.1', '10:30:34am', '2024:04:28', '2024-04-28 07:00:34', '2024-04-28 07:00:34'),
(277, '127.0.0.1', '10:30:36am', '2024:04:28', '2024-04-28 07:00:36', '2024-04-28 07:00:36'),
(278, '127.0.0.1', '10:32:06am', '2024:04:28', '2024-04-28 07:02:06', '2024-04-28 07:02:06'),
(279, '127.0.0.1', '10:32:08am', '2024:04:28', '2024-04-28 07:02:09', '2024-04-28 07:02:09'),
(280, '127.0.0.1', '10:32:48am', '2024:04:28', '2024-04-28 07:02:48', '2024-04-28 07:02:48'),
(281, '127.0.0.1', '10:32:51am', '2024:04:28', '2024-04-28 07:02:51', '2024-04-28 07:02:51'),
(282, '127.0.0.1', '10:35:09am', '2024:04:28', '2024-04-28 07:05:10', '2024-04-28 07:05:10'),
(283, '127.0.0.1', '10:35:12am', '2024:04:28', '2024-04-28 07:05:12', '2024-04-28 07:05:12'),
(284, '127.0.0.1', '11:03:37am', '2024:04:28', '2024-04-28 07:33:37', '2024-04-28 07:33:37'),
(285, '127.0.0.1', '11:03:40am', '2024:04:28', '2024-04-28 07:33:40', '2024-04-28 07:33:40'),
(286, '127.0.0.1', '12:27:03pm', '2024:04:28', '2024-04-28 08:57:03', '2024-04-28 08:57:03'),
(287, '127.0.0.1', '12:27:05pm', '2024:04:28', '2024-04-28 08:57:05', '2024-04-28 08:57:05'),
(288, '127.0.0.1', '12:27:50pm', '2024:04:28', '2024-04-28 08:57:50', '2024-04-28 08:57:50'),
(289, '127.0.0.1', '12:27:52pm', '2024:04:28', '2024-04-28 08:57:52', '2024-04-28 08:57:52'),
(290, '127.0.0.1', '12:29:24pm', '2024:04:28', '2024-04-28 08:59:24', '2024-04-28 08:59:24'),
(291, '127.0.0.1', '12:29:27pm', '2024:04:28', '2024-04-28 08:59:27', '2024-04-28 08:59:27'),
(292, '127.0.0.1', '01:17:07pm', '2024:04:28', '2024-04-28 09:47:07', '2024-04-28 09:47:07'),
(293, '127.0.0.1', '01:17:10pm', '2024:04:28', '2024-04-28 09:47:10', '2024-04-28 09:47:10'),
(294, '127.0.0.1', '05:15:17pm', '2024:04:28', '2024-04-28 13:45:17', '2024-04-28 13:45:17'),
(295, '127.0.0.1', '05:15:19pm', '2024:04:28', '2024-04-28 13:45:19', '2024-04-28 13:45:19'),
(296, '127.0.0.1', '05:41:47pm', '2024:04:28', '2024-04-28 14:11:47', '2024-04-28 14:11:47'),
(297, '127.0.0.1', '05:41:50pm', '2024:04:28', '2024-04-28 14:11:50', '2024-04-28 14:11:50'),
(298, '127.0.0.1', '05:53:30pm', '2024:04:28', '2024-04-28 14:23:30', '2024-04-28 14:23:30'),
(299, '127.0.0.1', '05:53:33pm', '2024:04:28', '2024-04-28 14:23:33', '2024-04-28 14:23:33'),
(300, '127.0.0.1', '05:54:23pm', '2024:04:28', '2024-04-28 14:24:23', '2024-04-28 14:24:23'),
(301, '127.0.0.1', '05:54:26pm', '2024:04:28', '2024-04-28 14:24:26', '2024-04-28 14:24:26'),
(302, '127.0.0.1', '06:12:07pm', '2024:04:28', '2024-04-28 14:42:07', '2024-04-28 14:42:07'),
(303, '127.0.0.1', '06:12:10pm', '2024:04:28', '2024-04-28 14:42:10', '2024-04-28 14:42:10'),
(304, '127.0.0.1', '06:44:29pm', '2024:04:28', '2024-04-28 15:14:29', '2024-04-28 15:14:29'),
(305, '127.0.0.1', '06:44:33pm', '2024:04:28', '2024-04-28 15:14:33', '2024-04-28 15:14:33'),
(306, '127.0.0.1', '06:44:53pm', '2024:04:28', '2024-04-28 15:14:53', '2024-04-28 15:14:53'),
(307, '127.0.0.1', '06:44:57pm', '2024:04:28', '2024-04-28 15:14:57', '2024-04-28 15:14:57'),
(308, '127.0.0.1', '06:57:06pm', '2024:04:28', '2024-04-28 15:27:06', '2024-04-28 15:27:06'),
(309, '127.0.0.1', '06:57:09pm', '2024:04:28', '2024-04-28 15:27:09', '2024-04-28 15:27:09'),
(310, '127.0.0.1', '06:59:44pm', '2024:04:28', '2024-04-28 15:29:44', '2024-04-28 15:29:44'),
(311, '127.0.0.1', '06:59:47pm', '2024:04:28', '2024-04-28 15:29:47', '2024-04-28 15:29:47'),
(312, '127.0.0.1', '09:22:23am', '2024:04:29', '2024-04-29 05:52:23', '2024-04-29 05:52:23'),
(313, '127.0.0.1', '09:22:25am', '2024:04:29', '2024-04-29 05:52:25', '2024-04-29 05:52:25'),
(314, '127.0.0.1', '09:57:26am', '2024:04:29', '2024-04-29 06:27:26', '2024-04-29 06:27:26'),
(315, '127.0.0.1', '09:57:29am', '2024:04:29', '2024-04-29 06:27:29', '2024-04-29 06:27:29'),
(316, '127.0.0.1', '10:59:23am', '2024:04:29', '2024-04-29 07:29:23', '2024-04-29 07:29:23'),
(317, '127.0.0.1', '10:59:26am', '2024:04:29', '2024-04-29 07:29:26', '2024-04-29 07:29:26'),
(318, '127.0.0.1', '12:27:20pm', '2024:04:29', '2024-04-29 08:57:20', '2024-04-29 08:57:20'),
(319, '127.0.0.1', '12:27:22pm', '2024:04:29', '2024-04-29 08:57:23', '2024-04-29 08:57:23'),
(320, '127.0.0.1', '01:13:09pm', '2024:04:29', '2024-04-29 09:43:09', '2024-04-29 09:43:09'),
(321, '127.0.0.1', '01:13:11pm', '2024:04:29', '2024-04-29 09:43:11', '2024-04-29 09:43:11'),
(322, '127.0.0.1', '07:54:23pm', '2024:04:29', '2024-04-29 16:24:23', '2024-04-29 16:24:23'),
(323, '127.0.0.1', '07:54:26pm', '2024:04:29', '2024-04-29 16:24:26', '2024-04-29 16:24:26'),
(324, '127.0.0.1', '09:18:34am', '2024:04:30', '2024-04-30 05:48:34', '2024-04-30 05:48:34'),
(325, '127.0.0.1', '09:18:36am', '2024:04:30', '2024-04-30 05:48:36', '2024-04-30 05:48:36'),
(326, '127.0.0.1', '09:21:24am', '2024:04:30', '2024-04-30 05:51:24', '2024-04-30 05:51:24'),
(327, '127.0.0.1', '09:21:26am', '2024:04:30', '2024-04-30 05:51:26', '2024-04-30 05:51:26'),
(328, '127.0.0.1', '10:04:53am', '2024:04:30', '2024-04-30 06:34:53', '2024-04-30 06:34:53'),
(329, '127.0.0.1', '10:04:56am', '2024:04:30', '2024-04-30 06:34:56', '2024-04-30 06:34:56'),
(330, '127.0.0.1', '10:07:31am', '2024:04:30', '2024-04-30 06:37:31', '2024-04-30 06:37:31'),
(331, '127.0.0.1', '10:07:34am', '2024:04:30', '2024-04-30 06:37:34', '2024-04-30 06:37:34'),
(332, '127.0.0.1', '10:08:14am', '2024:04:30', '2024-04-30 06:38:14', '2024-04-30 06:38:14'),
(333, '127.0.0.1', '10:09:23am', '2024:04:30', '2024-04-30 06:39:23', '2024-04-30 06:39:23'),
(334, '127.0.0.1', '10:09:27am', '2024:04:30', '2024-04-30 06:39:27', '2024-04-30 06:39:27'),
(335, '127.0.0.1', '10:09:29am', '2024:04:30', '2024-04-30 06:39:29', '2024-04-30 06:39:29'),
(336, '127.0.0.1', '10:09:34am', '2024:04:30', '2024-04-30 06:39:34', '2024-04-30 06:39:34'),
(337, '127.0.0.1', '10:09:36am', '2024:04:30', '2024-04-30 06:39:36', '2024-04-30 06:39:36'),
(338, '127.0.0.1', '10:11:39am', '2024:04:30', '2024-04-30 06:41:39', '2024-04-30 06:41:39'),
(339, '127.0.0.1', '10:11:42am', '2024:04:30', '2024-04-30 06:41:42', '2024-04-30 06:41:42'),
(340, '127.0.0.1', '10:52:03am', '2024:04:30', '2024-04-30 07:22:03', '2024-04-30 07:22:03'),
(341, '127.0.0.1', '10:52:06am', '2024:04:30', '2024-04-30 07:22:06', '2024-04-30 07:22:06'),
(342, '127.0.0.1', '10:56:54am', '2024:04:30', '2024-04-30 07:26:54', '2024-04-30 07:26:54'),
(343, '127.0.0.1', '10:56:58am', '2024:04:30', '2024-04-30 07:26:58', '2024-04-30 07:26:58'),
(344, '127.0.0.1', '12:11:41pm', '2024:04:30', '2024-04-30 08:41:41', '2024-04-30 08:41:41'),
(345, '127.0.0.1', '06:14:35pm', '2024:05:02', '2024-05-02 14:44:35', '2024-05-02 14:44:35'),
(346, '127.0.0.1', '06:14:37pm', '2024:05:02', '2024-05-02 14:44:37', '2024-05-02 14:44:37'),
(347, '127.0.0.1', '06:40:40pm', '2024:05:02', '2024-05-02 15:10:40', '2024-05-02 15:10:40'),
(348, '127.0.0.1', '06:40:43pm', '2024:05:02', '2024-05-02 15:10:43', '2024-05-02 15:10:43'),
(349, '127.0.0.1', '10:47:38am', '2024:05:30', '2024-05-30 07:17:38', '2024-05-30 07:17:38'),
(350, '127.0.0.1', '10:47:41am', '2024:05:30', '2024-05-30 07:17:41', '2024-05-30 07:17:41'),
(351, '127.0.0.1', '11:12:38am', '2024:05:30', '2024-05-30 07:42:38', '2024-05-30 07:42:38'),
(352, '127.0.0.1', '11:12:40am', '2024:05:30', '2024-05-30 07:42:40', '2024-05-30 07:42:40'),
(353, '127.0.0.1', '11:13:28am', '2024:05:30', '2024-05-30 07:43:28', '2024-05-30 07:43:28'),
(354, '127.0.0.1', '11:13:30am', '2024:05:30', '2024-05-30 07:43:30', '2024-05-30 07:43:30'),
(355, '127.0.0.1', '07:17:30pm', '2024:05:30', '2024-05-30 15:47:30', '2024-05-30 15:47:30'),
(356, '127.0.0.1', '07:17:33pm', '2024:05:30', '2024-05-30 15:47:33', '2024-05-30 15:47:33'),
(357, '127.0.0.1', '07:17:48pm', '2024:05:30', '2024-05-30 15:47:48', '2024-05-30 15:47:48'),
(358, '127.0.0.1', '07:17:51pm', '2024:05:30', '2024-05-30 15:47:51', '2024-05-30 15:47:51'),
(359, '127.0.0.1', '12:21:37pm', '2024:06:01', '2024-06-01 08:51:37', '2024-06-01 08:51:37'),
(360, '127.0.0.1', '12:21:39pm', '2024:06:01', '2024-06-01 08:51:39', '2024-06-01 08:51:39'),
(361, '127.0.0.1', '12:35:57pm', '2024:06:01', '2024-06-01 09:05:57', '2024-06-01 09:05:57'),
(362, '127.0.0.1', '12:35:59pm', '2024:06:01', '2024-06-01 09:05:59', '2024-06-01 09:05:59'),
(363, '127.0.0.1', '12:36:14pm', '2024:06:01', '2024-06-01 09:06:14', '2024-06-01 09:06:14'),
(364, '127.0.0.1', '05:38:06pm', '2024:06:01', '2024-06-01 14:08:06', '2024-06-01 14:08:06'),
(365, '127.0.0.1', '05:38:09pm', '2024:06:01', '2024-06-01 14:08:09', '2024-06-01 14:08:09'),
(366, '127.0.0.1', '09:52:55am', '2024:06:02', '2024-06-02 06:22:55', '2024-06-02 06:22:55'),
(367, '127.0.0.1', '09:52:58am', '2024:06:02', '2024-06-02 06:22:58', '2024-06-02 06:22:58'),
(368, '127.0.0.1', '05:25:24pm', '2024:06:02', '2024-06-02 13:55:24', '2024-06-02 13:55:24'),
(369, '127.0.0.1', '05:25:27pm', '2024:06:02', '2024-06-02 13:55:27', '2024-06-02 13:55:27'),
(370, '127.0.0.1', '10:28:54am', '2024:06:06', '2024-06-06 06:58:54', '2024-06-06 06:58:54'),
(371, '127.0.0.1', '10:28:57am', '2024:06:06', '2024-06-06 06:58:57', '2024-06-06 06:58:57'),
(372, '127.0.0.1', '07:13:56pm', '2024:06:06', '2024-06-06 15:43:56', '2024-06-06 15:43:56'),
(373, '127.0.0.1', '07:13:59pm', '2024:06:06', '2024-06-06 15:43:59', '2024-06-06 15:43:59'),
(374, '127.0.0.1', '07:15:54pm', '2024:06:06', '2024-06-06 15:45:54', '2024-06-06 15:45:54'),
(375, '127.0.0.1', '07:15:57pm', '2024:06:06', '2024-06-06 15:45:57', '2024-06-06 15:45:57'),
(376, '127.0.0.1', '07:16:14pm', '2024:06:06', '2024-06-06 15:46:14', '2024-06-06 15:46:14'),
(377, '127.0.0.1', '07:16:16pm', '2024:06:06', '2024-06-06 15:46:16', '2024-06-06 15:46:16'),
(378, '127.0.0.1', '06:19:42pm', '2024:06:08', '2024-06-08 14:49:42', '2024-06-08 14:49:42'),
(379, '127.0.0.1', '06:19:44pm', '2024:06:08', '2024-06-08 14:49:44', '2024-06-08 14:49:44'),
(380, '127.0.0.1', '06:54:04pm', '2024:06:09', '2024-06-09 15:24:04', '2024-06-09 15:24:04'),
(381, '127.0.0.1', '06:54:07pm', '2024:06:09', '2024-06-09 15:24:07', '2024-06-09 15:24:07'),
(382, '127.0.0.1', '07:47:58pm', '2024:06:09', '2024-06-09 16:17:58', '2024-06-09 16:17:58'),
(383, '127.0.0.1', '07:48:01pm', '2024:06:09', '2024-06-09 16:18:01', '2024-06-09 16:18:01'),
(384, '127.0.0.1', '07:48:49pm', '2024:06:09', '2024-06-09 16:18:49', '2024-06-09 16:18:49'),
(385, '127.0.0.1', '07:48:52pm', '2024:06:09', '2024-06-09 16:18:52', '2024-06-09 16:18:52'),
(386, '127.0.0.1', '07:49:08pm', '2024:06:09', '2024-06-09 16:19:08', '2024-06-09 16:19:08'),
(387, '127.0.0.1', '07:49:12pm', '2024:06:09', '2024-06-09 16:19:12', '2024-06-09 16:19:12'),
(388, '127.0.0.1', '07:49:15pm', '2024:06:09', '2024-06-09 16:19:15', '2024-06-09 16:19:15'),
(389, '127.0.0.1', '07:49:17pm', '2024:06:09', '2024-06-09 16:19:17', '2024-06-09 16:19:17'),
(390, '127.0.0.1', '09:54:10am', '2024:06:10', '2024-06-10 06:24:10', '2024-06-10 06:24:10'),
(391, '127.0.0.1', '09:54:14am', '2024:06:10', '2024-06-10 06:24:14', '2024-06-10 06:24:14'),
(392, '127.0.0.1', '09:54:30am', '2024:06:10', '2024-06-10 06:24:30', '2024-06-10 06:24:30'),
(393, '127.0.0.1', '09:54:34am', '2024:06:10', '2024-06-10 06:24:34', '2024-06-10 06:24:34'),
(394, '127.0.0.1', '09:54:36am', '2024:06:10', '2024-06-10 06:24:36', '2024-06-10 06:24:36'),
(395, '127.0.0.1', '09:54:39am', '2024:06:10', '2024-06-10 06:24:39', '2024-06-10 06:24:39'),
(396, '127.0.0.1', '08:52:59pm', '2024:06:10', '2024-06-10 17:22:59', '2024-06-10 17:22:59'),
(397, '127.0.0.1', '08:53:03pm', '2024:06:10', '2024-06-10 17:23:03', '2024-06-10 17:23:03'),
(398, '127.0.0.1', '09:25:50pm', '2024:06:10', '2024-06-10 17:55:50', '2024-06-10 17:55:50'),
(399, '127.0.0.1', '09:25:52pm', '2024:06:10', '2024-06-10 17:55:52', '2024-06-10 17:55:52'),
(400, '127.0.0.1', '09:26:13pm', '2024:06:10', '2024-06-10 17:56:13', '2024-06-10 17:56:13'),
(401, '127.0.0.1', '09:26:16pm', '2024:06:10', '2024-06-10 17:56:16', '2024-06-10 17:56:16'),
(402, '127.0.0.1', '09:26:19pm', '2024:06:10', '2024-06-10 17:56:19', '2024-06-10 17:56:19'),
(403, '127.0.0.1', '09:26:51pm', '2024:06:10', '2024-06-10 17:56:51', '2024-06-10 17:56:51'),
(404, '127.0.0.1', '09:26:53pm', '2024:06:10', '2024-06-10 17:56:53', '2024-06-10 17:56:53'),
(405, '127.0.0.1', '06:50:10pm', '2024:06:11', '2024-06-11 15:20:10', '2024-06-11 15:20:10'),
(406, '127.0.0.1', '06:50:13pm', '2024:06:11', '2024-06-11 15:20:13', '2024-06-11 15:20:13'),
(407, '127.0.0.1', '07:05:36pm', '2024:06:11', '2024-06-11 15:35:36', '2024-06-11 15:35:36'),
(408, '127.0.0.1', '07:05:40pm', '2024:06:11', '2024-06-11 15:35:40', '2024-06-11 15:35:40'),
(409, '127.0.0.1', '07:57:25pm', '2024:06:11', '2024-06-11 16:27:25', '2024-06-11 16:27:25'),
(410, '127.0.0.1', '07:57:28pm', '2024:06:11', '2024-06-11 16:27:28', '2024-06-11 16:27:28'),
(411, '127.0.0.1', '07:57:44pm', '2024:06:11', '2024-06-11 16:27:44', '2024-06-11 16:27:44'),
(412, '127.0.0.1', '07:57:48pm', '2024:06:11', '2024-06-11 16:27:48', '2024-06-11 16:27:48'),
(413, '127.0.0.1', '07:57:50pm', '2024:06:11', '2024-06-11 16:27:50', '2024-06-11 16:27:50'),
(414, '127.0.0.1', '07:57:53pm', '2024:06:11', '2024-06-11 16:27:53', '2024-06-11 16:27:53'),
(415, '127.0.0.1', '10:11:46am', '2024:06:12', '2024-06-12 06:41:46', '2024-06-12 06:41:46'),
(416, '127.0.0.1', '10:11:49am', '2024:06:12', '2024-06-12 06:41:49', '2024-06-12 06:41:49'),
(417, '127.0.0.1', '10:12:04am', '2024:06:12', '2024-06-12 06:42:04', '2024-06-12 06:42:04'),
(418, '127.0.0.1', '10:12:07am', '2024:06:12', '2024-06-12 06:42:07', '2024-06-12 06:42:07'),
(419, '127.0.0.1', '10:12:10am', '2024:06:12', '2024-06-12 06:42:10', '2024-06-12 06:42:10'),
(420, '127.0.0.1', '10:12:12am', '2024:06:12', '2024-06-12 06:42:12', '2024-06-12 06:42:12'),
(421, '127.0.0.1', '10:41:20am', '2024:06:12', '2024-06-12 07:11:20', '2024-06-12 07:11:20'),
(422, '127.0.0.1', '10:41:25am', '2024:06:12', '2024-06-12 07:11:25', '2024-06-12 07:11:25'),
(423, '127.0.0.1', '10:41:43am', '2024:06:12', '2024-06-12 07:11:43', '2024-06-12 07:11:43'),
(424, '127.0.0.1', '10:41:47am', '2024:06:12', '2024-06-12 07:11:47', '2024-06-12 07:11:47'),
(425, '127.0.0.1', '10:41:50am', '2024:06:12', '2024-06-12 07:11:50', '2024-06-12 07:11:50'),
(426, '127.0.0.1', '10:41:54am', '2024:06:12', '2024-06-12 07:11:54', '2024-06-12 07:11:54'),
(427, '127.0.0.1', '06:51:07pm', '2024:06:12', '2024-06-12 15:21:07', '2024-06-12 15:21:07'),
(428, '127.0.0.1', '06:51:10pm', '2024:06:12', '2024-06-12 15:21:10', '2024-06-12 15:21:10'),
(429, '127.0.0.1', '06:51:26pm', '2024:06:12', '2024-06-12 15:21:26', '2024-06-12 15:21:26'),
(430, '127.0.0.1', '06:51:30pm', '2024:06:12', '2024-06-12 15:21:30', '2024-06-12 15:21:30'),
(431, '127.0.0.1', '06:51:32pm', '2024:06:12', '2024-06-12 15:21:32', '2024-06-12 15:21:32'),
(432, '127.0.0.1', '06:51:34pm', '2024:06:12', '2024-06-12 15:21:34', '2024-06-12 15:21:34'),
(433, '127.0.0.1', '07:01:08pm', '2024:06:12', '2024-06-12 15:31:08', '2024-06-12 15:31:08'),
(434, '127.0.0.1', '07:01:11pm', '2024:06:12', '2024-06-12 15:31:11', '2024-06-12 15:31:11'),
(435, '127.0.0.1', '07:01:26pm', '2024:06:12', '2024-06-12 15:31:26', '2024-06-12 15:31:26'),
(436, '127.0.0.1', '07:01:41pm', '2024:06:12', '2024-06-12 15:31:41', '2024-06-12 15:31:41'),
(437, '127.0.0.1', '07:01:51pm', '2024:06:12', '2024-06-12 15:31:51', '2024-06-12 15:31:51'),
(438, '127.0.0.1', '07:01:57pm', '2024:06:12', '2024-06-12 15:31:57', '2024-06-12 15:31:57'),
(439, '127.0.0.1', '07:01:59pm', '2024:06:12', '2024-06-12 15:31:59', '2024-06-12 15:31:59'),
(440, '127.0.0.1', '07:02:44pm', '2024:06:12', '2024-06-12 15:32:44', '2024-06-12 15:32:44'),
(441, '127.0.0.1', '07:02:47pm', '2024:06:12', '2024-06-12 15:32:47', '2024-06-12 15:32:47'),
(442, '127.0.0.1', '07:16:49pm', '2024:06:12', '2024-06-12 15:46:49', '2024-06-12 15:46:49'),
(443, '127.0.0.1', '07:16:51pm', '2024:06:12', '2024-06-12 15:46:51', '2024-06-12 15:46:51'),
(444, '127.0.0.1', '07:17:08pm', '2024:06:12', '2024-06-12 15:47:08', '2024-06-12 15:47:08'),
(445, '127.0.0.1', '07:17:11pm', '2024:06:12', '2024-06-12 15:47:11', '2024-06-12 15:47:11'),
(446, '127.0.0.1', '07:17:17pm', '2024:06:12', '2024-06-12 15:47:17', '2024-06-12 15:47:17'),
(447, '127.0.0.1', '07:17:19pm', '2024:06:12', '2024-06-12 15:47:19', '2024-06-12 15:47:19'),
(448, '127.0.0.1', '08:44:28pm', '2024:06:12', '2024-06-12 17:14:28', '2024-06-12 17:14:28'),
(449, '127.0.0.1', '08:44:31pm', '2024:06:12', '2024-06-12 17:14:31', '2024-06-12 17:14:31'),
(450, '127.0.0.1', '08:44:48pm', '2024:06:12', '2024-06-12 17:14:48', '2024-06-12 17:14:48'),
(451, '127.0.0.1', '08:44:51pm', '2024:06:12', '2024-06-12 17:14:51', '2024-06-12 17:14:51'),
(452, '127.0.0.1', '08:45:28pm', '2024:06:12', '2024-06-12 17:15:28', '2024-06-12 17:15:28'),
(453, '127.0.0.1', '08:45:31pm', '2024:06:12', '2024-06-12 17:15:31', '2024-06-12 17:15:31'),
(454, '127.0.0.1', '08:45:46pm', '2024:06:12', '2024-06-12 17:15:46', '2024-06-12 17:15:46'),
(455, '127.0.0.1', '08:45:50pm', '2024:06:12', '2024-06-12 17:15:50', '2024-06-12 17:15:50'),
(456, '127.0.0.1', '08:45:53pm', '2024:06:12', '2024-06-12 17:15:53', '2024-06-12 17:15:53'),
(457, '127.0.0.1', '08:45:55pm', '2024:06:12', '2024-06-12 17:15:55', '2024-06-12 17:15:55'),
(458, '127.0.0.1', '08:57:29pm', '2024:06:12', '2024-06-12 17:27:29', '2024-06-12 17:27:29'),
(459, '127.0.0.1', '08:57:33pm', '2024:06:12', '2024-06-12 17:27:33', '2024-06-12 17:27:33'),
(460, '127.0.0.1', '09:02:14pm', '2024:06:12', '2024-06-12 17:32:14', '2024-06-12 17:32:14'),
(461, '127.0.0.1', '09:02:17pm', '2024:06:12', '2024-06-12 17:32:17', '2024-06-12 17:32:17'),
(462, '127.0.0.1', '09:15:12pm', '2024:06:12', '2024-06-12 17:45:12', '2024-06-12 17:45:12'),
(463, '127.0.0.1', '09:15:15pm', '2024:06:12', '2024-06-12 17:45:15', '2024-06-12 17:45:15'),
(464, '127.0.0.1', '09:15:49pm', '2024:06:12', '2024-06-12 17:45:49', '2024-06-12 17:45:49'),
(465, '127.0.0.1', '09:15:51pm', '2024:06:12', '2024-06-12 17:45:51', '2024-06-12 17:45:51'),
(466, '127.0.0.1', '09:16:10pm', '2024:06:12', '2024-06-12 17:46:10', '2024-06-12 17:46:10'),
(467, '127.0.0.1', '09:16:13pm', '2024:06:12', '2024-06-12 17:46:13', '2024-06-12 17:46:13'),
(468, '127.0.0.1', '09:17:22pm', '2024:06:12', '2024-06-12 17:47:22', '2024-06-12 17:47:22'),
(469, '127.0.0.1', '09:17:27pm', '2024:06:12', '2024-06-12 17:47:27', '2024-06-12 17:47:27'),
(470, '127.0.0.1', '09:17:30pm', '2024:06:12', '2024-06-12 17:47:30', '2024-06-12 17:47:30'),
(471, '127.0.0.1', '09:17:57pm', '2024:06:12', '2024-06-12 17:47:57', '2024-06-12 17:47:57'),
(472, '127.0.0.1', '09:18:00pm', '2024:06:12', '2024-06-12 17:48:00', '2024-06-12 17:48:00'),
(473, '127.0.0.1', '09:18:03pm', '2024:06:12', '2024-06-12 17:48:03', '2024-06-12 17:48:03'),
(474, '127.0.0.1', '09:18:48pm', '2024:06:12', '2024-06-12 17:48:48', '2024-06-12 17:48:48'),
(475, '127.0.0.1', '09:18:50pm', '2024:06:12', '2024-06-12 17:48:50', '2024-06-12 17:48:50'),
(476, '127.0.0.1', '09:18:53pm', '2024:06:12', '2024-06-12 17:48:53', '2024-06-12 17:48:53'),
(477, '127.0.0.1', '09:19:17pm', '2024:06:12', '2024-06-12 17:49:17', '2024-06-12 17:49:17'),
(478, '127.0.0.1', '09:19:20pm', '2024:06:12', '2024-06-12 17:49:20', '2024-06-12 17:49:20'),
(479, '127.0.0.1', '09:22:22pm', '2024:06:12', '2024-06-12 17:52:22', '2024-06-12 17:52:22'),
(480, '127.0.0.1', '09:27:55pm', '2024:06:12', '2024-06-12 17:57:55', '2024-06-12 17:57:55'),
(481, '127.0.0.1', '09:27:57pm', '2024:06:12', '2024-06-12 17:57:57', '2024-06-12 17:57:57'),
(482, '127.0.0.1', '09:39:57pm', '2024:06:12', '2024-06-12 18:09:57', '2024-06-12 18:09:57'),
(483, '127.0.0.1', '09:51:21am', '2024:06:13', '2024-06-13 06:21:21', '2024-06-13 06:21:21'),
(484, '127.0.0.1', '09:51:24am', '2024:06:13', '2024-06-13 06:21:24', '2024-06-13 06:21:24'),
(485, '127.0.0.1', '11:51:48am', '2024:06:13', '2024-06-13 08:21:48', '2024-06-13 08:21:48'),
(486, '127.0.0.1', '11:51:51am', '2024:06:13', '2024-06-13 08:21:51', '2024-06-13 08:21:51'),
(487, '127.0.0.1', '07:31:39pm', '2024:06:13', '2024-06-13 16:01:39', '2024-06-13 16:01:39'),
(488, '127.0.0.1', '07:31:42pm', '2024:06:13', '2024-06-13 16:01:42', '2024-06-13 16:01:42'),
(489, '127.0.0.1', '07:32:56pm', '2024:06:13', '2024-06-13 16:02:56', '2024-06-13 16:02:56'),
(490, '127.0.0.1', '07:32:58pm', '2024:06:13', '2024-06-13 16:02:58', '2024-06-13 16:02:58'),
(491, '127.0.0.1', '07:50:49pm', '2024:06:13', '2024-06-13 16:20:49', '2024-06-13 16:20:49'),
(492, '127.0.0.1', '07:50:52pm', '2024:06:13', '2024-06-13 16:20:52', '2024-06-13 16:20:52'),
(493, '127.0.0.1', '09:03:34pm', '2024:06:15', '2024-06-15 17:33:34', '2024-06-15 17:33:34'),
(494, '127.0.0.1', '09:12:38am', '2024:06:16', '2024-06-16 05:42:38', '2024-06-16 05:42:38'),
(495, '127.0.0.1', '09:12:41am', '2024:06:16', '2024-06-16 05:42:41', '2024-06-16 05:42:41'),
(496, '127.0.0.1', '09:18:46am', '2024:06:16', '2024-06-16 05:48:46', '2024-06-16 05:48:46'),
(497, '127.0.0.1', '09:18:49am', '2024:06:16', '2024-06-16 05:48:49', '2024-06-16 05:48:49'),
(498, '127.0.0.1', '09:21:04am', '2024:06:16', '2024-06-16 05:51:04', '2024-06-16 05:51:04'),
(499, '127.0.0.1', '09:21:06am', '2024:06:16', '2024-06-16 05:51:06', '2024-06-16 05:51:06'),
(500, '127.0.0.1', '09:33:02am', '2024:06:16', '2024-06-16 06:03:02', '2024-06-16 06:03:02'),
(501, '127.0.0.1', '09:33:07am', '2024:06:16', '2024-06-16 06:03:07', '2024-06-16 06:03:07'),
(502, '127.0.0.1', '09:33:18am', '2024:06:16', '2024-06-16 06:03:18', '2024-06-16 06:03:18'),
(503, '127.0.0.1', '09:33:20am', '2024:06:16', '2024-06-16 06:03:20', '2024-06-16 06:03:20'),
(504, '127.0.0.1', '09:41:49am', '2024:06:16', '2024-06-16 06:11:49', '2024-06-16 06:11:49'),
(505, '127.0.0.1', '09:41:52am', '2024:06:16', '2024-06-16 06:11:52', '2024-06-16 06:11:52'),
(506, '127.0.0.1', '09:42:34am', '2024:06:16', '2024-06-16 06:12:34', '2024-06-16 06:12:34'),
(507, '127.0.0.1', '09:42:37am', '2024:06:16', '2024-06-16 06:12:37', '2024-06-16 06:12:37'),
(508, '127.0.0.1', '09:45:48am', '2024:06:16', '2024-06-16 06:15:48', '2024-06-16 06:15:48'),
(509, '127.0.0.1', '09:45:51am', '2024:06:16', '2024-06-16 06:15:51', '2024-06-16 06:15:51'),
(510, '127.0.0.1', '12:45:39pm', '2024:06:16', '2024-06-16 09:15:39', '2024-06-16 09:15:39'),
(511, '127.0.0.1', '07:27:30pm', '2024:06:16', '2024-06-16 15:57:30', '2024-06-16 15:57:30'),
(512, '127.0.0.1', '07:27:34pm', '2024:06:16', '2024-06-16 15:57:34', '2024-06-16 15:57:34'),
(513, '127.0.0.1', '07:27:51pm', '2024:06:16', '2024-06-16 15:57:51', '2024-06-16 15:57:51'),
(514, '127.0.0.1', '07:27:56pm', '2024:06:16', '2024-06-16 15:57:56', '2024-06-16 15:57:56'),
(515, '127.0.0.1', '07:27:59pm', '2024:06:16', '2024-06-16 15:57:59', '2024-06-16 15:57:59'),
(516, '127.0.0.1', '07:28:03pm', '2024:06:16', '2024-06-16 15:58:03', '2024-06-16 15:58:03'),
(517, '127.0.0.1', '09:37:18am', '2024:06:18', '2024-06-18 06:07:18', '2024-06-18 06:07:18'),
(518, '127.0.0.1', '09:37:21am', '2024:06:18', '2024-06-18 06:07:21', '2024-06-18 06:07:21'),
(519, '127.0.0.1', '09:37:38am', '2024:06:18', '2024-06-18 06:07:38', '2024-06-18 06:07:38'),
(520, '127.0.0.1', '09:37:42am', '2024:06:18', '2024-06-18 06:07:42', '2024-06-18 06:07:42'),
(521, '127.0.0.1', '09:37:45am', '2024:06:18', '2024-06-18 06:07:45', '2024-06-18 06:07:45'),
(522, '127.0.0.1', '09:37:48am', '2024:06:18', '2024-06-18 06:07:48', '2024-06-18 06:07:48'),
(523, '127.0.0.1', '05:30:47pm', '2024:06:18', '2024-06-18 14:00:47', '2024-06-18 14:00:47'),
(524, '127.0.0.1', '05:30:51pm', '2024:06:18', '2024-06-18 14:00:51', '2024-06-18 14:00:51'),
(525, '127.0.0.1', '05:31:07pm', '2024:06:18', '2024-06-18 14:01:07', '2024-06-18 14:01:07'),
(526, '127.0.0.1', '05:31:12pm', '2024:06:18', '2024-06-18 14:01:12', '2024-06-18 14:01:12'),
(527, '127.0.0.1', '05:31:14pm', '2024:06:18', '2024-06-18 14:01:14', '2024-06-18 14:01:14'),
(528, '127.0.0.1', '05:31:17pm', '2024:06:18', '2024-06-18 14:01:17', '2024-06-18 14:01:17'),
(529, '127.0.0.1', '12:21:47pm', '2024:06:19', '2024-06-19 08:51:47', '2024-06-19 08:51:47'),
(530, '127.0.0.1', '12:21:53pm', '2024:06:19', '2024-06-19 08:51:53', '2024-06-19 08:51:53'),
(531, '127.0.0.1', '12:22:13pm', '2024:06:19', '2024-06-19 08:52:13', '2024-06-19 08:52:13'),
(532, '127.0.0.1', '12:22:18pm', '2024:06:19', '2024-06-19 08:52:18', '2024-06-19 08:52:18'),
(533, '127.0.0.1', '12:22:24pm', '2024:06:19', '2024-06-19 08:52:24', '2024-06-19 08:52:24'),
(534, '127.0.0.1', '12:22:28pm', '2024:06:19', '2024-06-19 08:52:28', '2024-06-19 08:52:28'),
(535, '127.0.0.1', '09:32:18am', '2024:06:20', '2024-06-20 06:02:18', '2024-06-20 06:02:18'),
(536, '127.0.0.1', '09:32:21am', '2024:06:20', '2024-06-20 06:02:21', '2024-06-20 06:02:21'),
(537, '127.0.0.1', '09:32:36am', '2024:06:20', '2024-06-20 06:02:36', '2024-06-20 06:02:36'),
(538, '127.0.0.1', '09:32:40am', '2024:06:20', '2024-06-20 06:02:40', '2024-06-20 06:02:40'),
(539, '127.0.0.1', '09:32:43am', '2024:06:20', '2024-06-20 06:02:43', '2024-06-20 06:02:43'),
(540, '127.0.0.1', '09:32:47am', '2024:06:20', '2024-06-20 06:02:47', '2024-06-20 06:02:47'),
(541, '127.0.0.1', '06:26:25pm', '2024:06:20', '2024-06-20 14:56:25', '2024-06-20 14:56:25'),
(542, '127.0.0.1', '06:26:29pm', '2024:06:20', '2024-06-20 14:56:29', '2024-06-20 14:56:29'),
(543, '127.0.0.1', '06:26:45pm', '2024:06:20', '2024-06-20 14:56:46', '2024-06-20 14:56:46');
INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(544, '127.0.0.1', '06:26:50pm', '2024:06:20', '2024-06-20 14:56:50', '2024-06-20 14:56:50'),
(545, '127.0.0.1', '06:26:52pm', '2024:06:20', '2024-06-20 14:56:52', '2024-06-20 14:56:52'),
(546, '127.0.0.1', '06:26:55pm', '2024:06:20', '2024-06-20 14:56:55', '2024-06-20 14:56:55'),
(547, '127.0.0.1', '09:57:16am', '2024:06:22', '2024-06-22 06:27:16', '2024-06-22 06:27:16'),
(548, '127.0.0.1', '09:57:19am', '2024:06:22', '2024-06-22 06:27:19', '2024-06-22 06:27:19'),
(549, '127.0.0.1', '09:57:33am', '2024:06:22', '2024-06-22 06:27:33', '2024-06-22 06:27:33'),
(550, '127.0.0.1', '09:57:37am', '2024:06:22', '2024-06-22 06:27:37', '2024-06-22 06:27:37'),
(551, '127.0.0.1', '09:57:40am', '2024:06:22', '2024-06-22 06:27:40', '2024-06-22 06:27:40'),
(552, '127.0.0.1', '09:57:42am', '2024:06:22', '2024-06-22 06:27:42', '2024-06-22 06:27:42'),
(553, '127.0.0.1', '01:53:20pm', '2024:06:22', '2024-06-22 10:23:20', '2024-06-22 10:23:20'),
(554, '127.0.0.1', '01:53:23pm', '2024:06:22', '2024-06-22 10:23:23', '2024-06-22 10:23:23'),
(555, '127.0.0.1', '01:53:43pm', '2024:06:22', '2024-06-22 10:23:43', '2024-06-22 10:23:43'),
(556, '127.0.0.1', '07:43:25pm', '2024:06:22', '2024-06-22 16:13:25', '2024-06-22 16:13:25'),
(557, '127.0.0.1', '07:43:29pm', '2024:06:22', '2024-06-22 16:13:29', '2024-06-22 16:13:29'),
(558, '127.0.0.1', '07:43:45pm', '2024:06:22', '2024-06-22 16:13:45', '2024-06-22 16:13:45'),
(559, '127.0.0.1', '07:43:49pm', '2024:06:22', '2024-06-22 16:13:49', '2024-06-22 16:13:49'),
(560, '127.0.0.1', '07:43:52pm', '2024:06:22', '2024-06-22 16:13:52', '2024-06-22 16:13:52'),
(561, '127.0.0.1', '07:43:55pm', '2024:06:22', '2024-06-22 16:13:55', '2024-06-22 16:13:55'),
(562, '127.0.0.1', '09:24:08pm', '2024:06:22', '2024-06-22 17:54:08', '2024-06-22 17:54:08'),
(563, '127.0.0.1', '09:24:19pm', '2024:06:22', '2024-06-22 17:54:19', '2024-06-22 17:54:19'),
(564, '127.0.0.1', '09:24:36pm', '2024:06:22', '2024-06-22 17:54:36', '2024-06-22 17:54:36'),
(565, '127.0.0.1', '09:24:40pm', '2024:06:22', '2024-06-22 17:54:40', '2024-06-22 17:54:40'),
(566, '127.0.0.1', '09:24:42pm', '2024:06:22', '2024-06-22 17:54:42', '2024-06-22 17:54:42'),
(567, '127.0.0.1', '09:24:45pm', '2024:06:22', '2024-06-22 17:54:45', '2024-06-22 17:54:45'),
(568, '127.0.0.1', '09:38:13pm', '2024:06:22', '2024-06-22 18:08:13', '2024-06-22 18:08:13'),
(569, '127.0.0.1', '09:38:15pm', '2024:06:22', '2024-06-22 18:08:15', '2024-06-22 18:08:15'),
(570, '127.0.0.1', '09:38:32pm', '2024:06:22', '2024-06-22 18:08:32', '2024-06-22 18:08:32'),
(571, '127.0.0.1', '09:38:36pm', '2024:06:22', '2024-06-22 18:08:36', '2024-06-22 18:08:36'),
(572, '127.0.0.1', '09:38:38pm', '2024:06:22', '2024-06-22 18:08:38', '2024-06-22 18:08:38'),
(573, '127.0.0.1', '09:38:41pm', '2024:06:22', '2024-06-22 18:08:41', '2024-06-22 18:08:41'),
(574, '127.0.0.1', '09:08:44am', '2024:06:23', '2024-06-23 05:38:44', '2024-06-23 05:38:44'),
(575, '127.0.0.1', '09:08:47am', '2024:06:23', '2024-06-23 05:38:47', '2024-06-23 05:38:47'),
(576, '127.0.0.1', '09:09:04am', '2024:06:23', '2024-06-23 05:39:04', '2024-06-23 05:39:04'),
(577, '127.0.0.1', '09:09:08am', '2024:06:23', '2024-06-23 05:39:08', '2024-06-23 05:39:08'),
(578, '127.0.0.1', '09:09:10am', '2024:06:23', '2024-06-23 05:39:10', '2024-06-23 05:39:10'),
(579, '127.0.0.1', '09:09:13am', '2024:06:23', '2024-06-23 05:39:13', '2024-06-23 05:39:13'),
(580, '127.0.0.1', '10:06:28am', '2024:06:23', '2024-06-23 06:36:28', '2024-06-23 06:36:28'),
(581, '127.0.0.1', '10:06:31am', '2024:06:23', '2024-06-23 06:36:31', '2024-06-23 06:36:31'),
(582, '127.0.0.1', '10:06:47am', '2024:06:23', '2024-06-23 06:36:47', '2024-06-23 06:36:47'),
(583, '127.0.0.1', '10:06:52am', '2024:06:23', '2024-06-23 06:36:52', '2024-06-23 06:36:52'),
(584, '127.0.0.1', '10:06:54am', '2024:06:23', '2024-06-23 06:36:54', '2024-06-23 06:36:54'),
(585, '127.0.0.1', '10:06:57am', '2024:06:23', '2024-06-23 06:36:57', '2024-06-23 06:36:57'),
(586, '127.0.0.1', '10:23:29am', '2024:06:23', '2024-06-23 06:53:29', '2024-06-23 06:53:29'),
(587, '127.0.0.1', '10:23:32am', '2024:06:23', '2024-06-23 06:53:32', '2024-06-23 06:53:32'),
(588, '127.0.0.1', '05:39:56pm', '2024:06:23', '2024-06-23 14:09:56', '2024-06-23 14:09:56'),
(589, '127.0.0.1', '05:39:59pm', '2024:06:23', '2024-06-23 14:09:59', '2024-06-23 14:09:59'),
(590, '127.0.0.1', '07:11:49pm', '2024:06:24', '2024-06-24 15:41:49', '2024-06-24 15:41:49'),
(591, '127.0.0.1', '07:11:52pm', '2024:06:24', '2024-06-24 15:41:52', '2024-06-24 15:41:52'),
(592, '127.0.0.1', '07:12:09pm', '2024:06:24', '2024-06-24 15:42:09', '2024-06-24 15:42:09'),
(593, '127.0.0.1', '07:12:13pm', '2024:06:24', '2024-06-24 15:42:13', '2024-06-24 15:42:13'),
(594, '127.0.0.1', '07:12:15pm', '2024:06:24', '2024-06-24 15:42:15', '2024-06-24 15:42:15'),
(595, '127.0.0.1', '07:12:18pm', '2024:06:24', '2024-06-24 15:42:18', '2024-06-24 15:42:18'),
(596, '127.0.0.1', '12:31:19pm', '2024:06:26', '2024-06-26 09:01:19', '2024-06-26 09:01:19'),
(597, '127.0.0.1', '12:31:22pm', '2024:06:26', '2024-06-26 09:01:22', '2024-06-26 09:01:22'),
(598, '127.0.0.1', '12:31:38pm', '2024:06:26', '2024-06-26 09:01:38', '2024-06-26 09:01:38'),
(599, '127.0.0.1', '12:31:42pm', '2024:06:26', '2024-06-26 09:01:42', '2024-06-26 09:01:42'),
(600, '127.0.0.1', '12:31:44pm', '2024:06:26', '2024-06-26 09:01:45', '2024-06-26 09:01:45'),
(601, '127.0.0.1', '12:31:47pm', '2024:06:26', '2024-06-26 09:01:47', '2024-06-26 09:01:47'),
(602, '127.0.0.1', '06:18:36pm', '2024:06:26', '2024-06-26 14:48:36', '2024-06-26 14:48:36'),
(603, '127.0.0.1', '06:18:39pm', '2024:06:26', '2024-06-26 14:48:39', '2024-06-26 14:48:39'),
(604, '127.0.0.1', '06:18:55pm', '2024:06:26', '2024-06-26 14:48:55', '2024-06-26 14:48:55'),
(605, '127.0.0.1', '06:19:00pm', '2024:06:26', '2024-06-26 14:49:00', '2024-06-26 14:49:00'),
(606, '127.0.0.1', '06:19:03pm', '2024:06:26', '2024-06-26 14:49:03', '2024-06-26 14:49:03'),
(607, '127.0.0.1', '06:19:06pm', '2024:06:26', '2024-06-26 14:49:06', '2024-06-26 14:49:06'),
(608, '127.0.0.1', '08:12:44pm', '2024:06:26', '2024-06-26 16:42:44', '2024-06-26 16:42:44'),
(609, '127.0.0.1', '08:12:47pm', '2024:06:26', '2024-06-26 16:42:47', '2024-06-26 16:42:47'),
(610, '127.0.0.1', '08:13:03pm', '2024:06:26', '2024-06-26 16:43:03', '2024-06-26 16:43:03'),
(611, '127.0.0.1', '08:13:08pm', '2024:06:26', '2024-06-26 16:43:08', '2024-06-26 16:43:08'),
(612, '127.0.0.1', '08:13:10pm', '2024:06:26', '2024-06-26 16:43:10', '2024-06-26 16:43:10'),
(613, '127.0.0.1', '08:13:13pm', '2024:06:26', '2024-06-26 16:43:13', '2024-06-26 16:43:13'),
(614, '127.0.0.1', '09:05:51pm', '2024:06:26', '2024-06-26 17:35:51', '2024-06-26 17:35:51'),
(615, '127.0.0.1', '09:05:53pm', '2024:06:26', '2024-06-26 17:35:53', '2024-06-26 17:35:53'),
(616, '127.0.0.1', '09:06:09pm', '2024:06:26', '2024-06-26 17:36:09', '2024-06-26 17:36:09'),
(617, '127.0.0.1', '09:06:13pm', '2024:06:26', '2024-06-26 17:36:13', '2024-06-26 17:36:13'),
(618, '127.0.0.1', '09:06:16pm', '2024:06:26', '2024-06-26 17:36:16', '2024-06-26 17:36:16'),
(619, '127.0.0.1', '09:06:19pm', '2024:06:26', '2024-06-26 17:36:19', '2024-06-26 17:36:19'),
(620, '127.0.0.1', '09:08:23pm', '2024:06:26', '2024-06-26 17:38:23', '2024-06-26 17:38:23'),
(621, '127.0.0.1', '09:08:26pm', '2024:06:26', '2024-06-26 17:38:26', '2024-06-26 17:38:26'),
(622, '127.0.0.1', '09:08:43pm', '2024:06:26', '2024-06-26 17:38:43', '2024-06-26 17:38:43'),
(623, '127.0.0.1', '09:08:47pm', '2024:06:26', '2024-06-26 17:38:47', '2024-06-26 17:38:47'),
(624, '127.0.0.1', '09:08:49pm', '2024:06:26', '2024-06-26 17:38:49', '2024-06-26 17:38:49'),
(625, '127.0.0.1', '09:08:52pm', '2024:06:26', '2024-06-26 17:38:52', '2024-06-26 17:38:52'),
(626, '127.0.0.1', '09:20:13pm', '2024:06:26', '2024-06-26 17:50:13', '2024-06-26 17:50:13'),
(627, '127.0.0.1', '09:20:16pm', '2024:06:26', '2024-06-26 17:50:16', '2024-06-26 17:50:16'),
(628, '127.0.0.1', '09:20:34pm', '2024:06:26', '2024-06-26 17:50:34', '2024-06-26 17:50:34'),
(629, '127.0.0.1', '09:20:46pm', '2024:06:26', '2024-06-26 17:50:46', '2024-06-26 17:50:46'),
(630, '127.0.0.1', '09:20:54pm', '2024:06:26', '2024-06-26 17:50:54', '2024-06-26 17:50:54'),
(631, '127.0.0.1', '09:21:07pm', '2024:06:26', '2024-06-26 17:51:07', '2024-06-26 17:51:07'),
(632, '127.0.0.1', '09:21:08pm', '2024:06:26', '2024-06-26 17:51:08', '2024-06-26 17:51:08'),
(633, '127.0.0.1', '09:21:33pm', '2024:06:26', '2024-06-26 17:51:33', '2024-06-26 17:51:33'),
(634, '127.0.0.1', '09:21:35pm', '2024:06:26', '2024-06-26 17:51:35', '2024-06-26 17:51:35'),
(635, '127.0.0.1', '09:21:41pm', '2024:06:26', '2024-06-26 17:51:41', '2024-06-26 17:51:41'),
(636, '127.0.0.1', '09:21:46pm', '2024:06:26', '2024-06-26 17:51:46', '2024-06-26 17:51:46'),
(637, '127.0.0.1', '09:21:47pm', '2024:06:26', '2024-06-26 17:51:47', '2024-06-26 17:51:47'),
(638, '127.0.0.1', '09:22:02pm', '2024:06:26', '2024-06-26 17:52:02', '2024-06-26 17:52:02'),
(639, '127.0.0.1', '09:22:06pm', '2024:06:26', '2024-06-26 17:52:06', '2024-06-26 17:52:06'),
(640, '127.0.0.1', '09:22:31pm', '2024:06:26', '2024-06-26 17:52:31', '2024-06-26 17:52:31'),
(641, '127.0.0.1', '09:22:35pm', '2024:06:26', '2024-06-26 17:52:35', '2024-06-26 17:52:35'),
(642, '127.0.0.1', '09:22:54pm', '2024:06:26', '2024-06-26 17:52:54', '2024-06-26 17:52:54'),
(643, '127.0.0.1', '09:22:57pm', '2024:06:26', '2024-06-26 17:52:57', '2024-06-26 17:52:57'),
(644, '127.0.0.1', '09:23:13pm', '2024:06:26', '2024-06-26 17:53:13', '2024-06-26 17:53:13'),
(645, '127.0.0.1', '09:23:17pm', '2024:06:26', '2024-06-26 17:53:17', '2024-06-26 17:53:17'),
(646, '127.0.0.1', '09:23:19pm', '2024:06:26', '2024-06-26 17:53:19', '2024-06-26 17:53:19'),
(647, '127.0.0.1', '09:23:22pm', '2024:06:26', '2024-06-26 17:53:22', '2024-06-26 17:53:22'),
(648, '127.0.0.1', '09:24:33pm', '2024:06:26', '2024-06-26 17:54:33', '2024-06-26 17:54:33'),
(649, '127.0.0.1', '09:24:37pm', '2024:06:26', '2024-06-26 17:54:37', '2024-06-26 17:54:37'),
(650, '127.0.0.1', '09:25:38pm', '2024:06:26', '2024-06-26 17:55:38', '2024-06-26 17:55:38'),
(651, '127.0.0.1', '09:25:41pm', '2024:06:26', '2024-06-26 17:55:41', '2024-06-26 17:55:41'),
(652, '127.0.0.1', '09:25:58pm', '2024:06:26', '2024-06-26 17:55:58', '2024-06-26 17:55:58'),
(653, '127.0.0.1', '09:26:03pm', '2024:06:26', '2024-06-26 17:56:03', '2024-06-26 17:56:03'),
(654, '127.0.0.1', '09:26:07pm', '2024:06:26', '2024-06-26 17:56:07', '2024-06-26 17:56:07'),
(655, '127.0.0.1', '09:26:11pm', '2024:06:26', '2024-06-26 17:56:11', '2024-06-26 17:56:11'),
(656, '127.0.0.1', '09:27:39pm', '2024:06:26', '2024-06-26 17:57:39', '2024-06-26 17:57:39'),
(657, '127.0.0.1', '09:27:42pm', '2024:06:26', '2024-06-26 17:57:42', '2024-06-26 17:57:42'),
(658, '127.0.0.1', '09:28:09pm', '2024:06:26', '2024-06-26 17:58:09', '2024-06-26 17:58:09'),
(659, '127.0.0.1', '09:28:13pm', '2024:06:26', '2024-06-26 17:58:13', '2024-06-26 17:58:13'),
(660, '127.0.0.1', '09:28:30pm', '2024:06:26', '2024-06-26 17:58:30', '2024-06-26 17:58:30'),
(661, '127.0.0.1', '09:28:35pm', '2024:06:26', '2024-06-26 17:58:35', '2024-06-26 17:58:35'),
(662, '127.0.0.1', '09:28:38pm', '2024:06:26', '2024-06-26 17:58:38', '2024-06-26 17:58:38'),
(663, '127.0.0.1', '09:28:41pm', '2024:06:26', '2024-06-26 17:58:41', '2024-06-26 17:58:41'),
(664, '127.0.0.1', '09:29:14pm', '2024:06:26', '2024-06-26 17:59:14', '2024-06-26 17:59:14'),
(665, '127.0.0.1', '09:29:18pm', '2024:06:26', '2024-06-26 17:59:18', '2024-06-26 17:59:18'),
(666, '127.0.0.1', '09:29:36pm', '2024:06:26', '2024-06-26 17:59:36', '2024-06-26 17:59:36'),
(667, '127.0.0.1', '09:29:41pm', '2024:06:26', '2024-06-26 17:59:41', '2024-06-26 17:59:41'),
(668, '127.0.0.1', '09:29:46pm', '2024:06:26', '2024-06-26 17:59:46', '2024-06-26 17:59:46'),
(669, '127.0.0.1', '09:29:50pm', '2024:06:26', '2024-06-26 17:59:50', '2024-06-26 17:59:50'),
(670, '127.0.0.1', '09:30:32pm', '2024:06:26', '2024-06-26 18:00:32', '2024-06-26 18:00:32'),
(671, '127.0.0.1', '09:30:36pm', '2024:06:26', '2024-06-26 18:00:36', '2024-06-26 18:00:36'),
(672, '127.0.0.1', '09:30:53pm', '2024:06:26', '2024-06-26 18:00:53', '2024-06-26 18:00:53'),
(673, '127.0.0.1', '09:30:58pm', '2024:06:26', '2024-06-26 18:00:58', '2024-06-26 18:00:58'),
(674, '127.0.0.1', '09:31:02pm', '2024:06:26', '2024-06-26 18:01:02', '2024-06-26 18:01:02'),
(675, '127.0.0.1', '09:31:08pm', '2024:06:26', '2024-06-26 18:01:08', '2024-06-26 18:01:08'),
(676, '127.0.0.1', '09:31:27pm', '2024:06:26', '2024-06-26 18:01:27', '2024-06-26 18:01:27'),
(677, '127.0.0.1', '09:31:30pm', '2024:06:26', '2024-06-26 18:01:30', '2024-06-26 18:01:30'),
(678, '127.0.0.1', '09:31:48pm', '2024:06:26', '2024-06-26 18:01:48', '2024-06-26 18:01:48'),
(679, '127.0.0.1', '09:31:53pm', '2024:06:26', '2024-06-26 18:01:53', '2024-06-26 18:01:53'),
(680, '127.0.0.1', '09:31:58pm', '2024:06:26', '2024-06-26 18:01:58', '2024-06-26 18:01:58'),
(681, '127.0.0.1', '09:32:03pm', '2024:06:26', '2024-06-26 18:02:03', '2024-06-26 18:02:03'),
(682, '127.0.0.1', '09:32:16pm', '2024:06:26', '2024-06-26 18:02:16', '2024-06-26 18:02:16'),
(683, '127.0.0.1', '09:32:19pm', '2024:06:26', '2024-06-26 18:02:19', '2024-06-26 18:02:19'),
(684, '127.0.0.1', '09:32:37pm', '2024:06:26', '2024-06-26 18:02:37', '2024-06-26 18:02:37'),
(685, '127.0.0.1', '09:32:42pm', '2024:06:26', '2024-06-26 18:02:42', '2024-06-26 18:02:42'),
(686, '127.0.0.1', '09:32:46pm', '2024:06:26', '2024-06-26 18:02:46', '2024-06-26 18:02:46'),
(687, '127.0.0.1', '09:32:50pm', '2024:06:26', '2024-06-26 18:02:50', '2024-06-26 18:02:50'),
(688, '127.0.0.1', '10:06:32pm', '2024:06:26', '2024-06-26 18:36:32', '2024-06-26 18:36:32'),
(689, '127.0.0.1', '10:06:36pm', '2024:06:26', '2024-06-26 18:36:36', '2024-06-26 18:36:36'),
(690, '127.0.0.1', '10:06:53pm', '2024:06:26', '2024-06-26 18:36:53', '2024-06-26 18:36:53'),
(691, '127.0.0.1', '10:06:58pm', '2024:06:26', '2024-06-26 18:36:58', '2024-06-26 18:36:58'),
(692, '127.0.0.1', '10:07:02pm', '2024:06:26', '2024-06-26 18:37:02', '2024-06-26 18:37:02'),
(693, '127.0.0.1', '10:07:07pm', '2024:06:26', '2024-06-26 18:37:07', '2024-06-26 18:37:07'),
(694, '127.0.0.1', '10:44:24am', '2024:06:27', '2024-06-27 07:14:24', '2024-06-27 07:14:24'),
(695, '127.0.0.1', '10:44:28am', '2024:06:27', '2024-06-27 07:14:28', '2024-06-27 07:14:28'),
(696, '127.0.0.1', '10:44:46am', '2024:06:27', '2024-06-27 07:14:46', '2024-06-27 07:14:46'),
(697, '127.0.0.1', '10:44:51am', '2024:06:27', '2024-06-27 07:14:51', '2024-06-27 07:14:51'),
(698, '127.0.0.1', '10:44:54am', '2024:06:27', '2024-06-27 07:14:54', '2024-06-27 07:14:54'),
(699, '127.0.0.1', '10:44:59am', '2024:06:27', '2024-06-27 07:14:59', '2024-06-27 07:14:59'),
(700, '127.0.0.1', '10:52:45am', '2024:06:27', '2024-06-27 07:22:45', '2024-06-27 07:22:45'),
(701, '127.0.0.1', '10:52:48am', '2024:06:27', '2024-06-27 07:22:48', '2024-06-27 07:22:48'),
(702, '127.0.0.1', '10:53:06am', '2024:06:27', '2024-06-27 07:23:06', '2024-06-27 07:23:06'),
(703, '127.0.0.1', '10:53:11am', '2024:06:27', '2024-06-27 07:23:11', '2024-06-27 07:23:11'),
(704, '127.0.0.1', '10:53:15am', '2024:06:27', '2024-06-27 07:23:15', '2024-06-27 07:23:15'),
(705, '127.0.0.1', '10:53:20am', '2024:06:27', '2024-06-27 07:23:20', '2024-06-27 07:23:20'),
(706, '127.0.0.1', '10:58:02am', '2024:06:27', '2024-06-27 07:28:02', '2024-06-27 07:28:02'),
(707, '127.0.0.1', '10:58:05am', '2024:06:27', '2024-06-27 07:28:05', '2024-06-27 07:28:05'),
(708, '127.0.0.1', '10:58:22am', '2024:06:27', '2024-06-27 07:28:22', '2024-06-27 07:28:22'),
(709, '127.0.0.1', '10:58:27am', '2024:06:27', '2024-06-27 07:28:27', '2024-06-27 07:28:27'),
(710, '127.0.0.1', '10:58:31am', '2024:06:27', '2024-06-27 07:28:31', '2024-06-27 07:28:31'),
(711, '127.0.0.1', '10:58:36am', '2024:06:27', '2024-06-27 07:28:36', '2024-06-27 07:28:36'),
(712, '127.0.0.1', '11:01:59am', '2024:06:27', '2024-06-27 07:31:59', '2024-06-27 07:31:59'),
(713, '127.0.0.1', '11:02:04am', '2024:06:27', '2024-06-27 07:32:04', '2024-06-27 07:32:04'),
(714, '127.0.0.1', '11:02:24am', '2024:06:27', '2024-06-27 07:32:24', '2024-06-27 07:32:24'),
(715, '127.0.0.1', '11:02:29am', '2024:06:27', '2024-06-27 07:32:29', '2024-06-27 07:32:29'),
(716, '127.0.0.1', '11:02:34am', '2024:06:27', '2024-06-27 07:32:34', '2024-06-27 07:32:34'),
(717, '127.0.0.1', '11:02:39am', '2024:06:27', '2024-06-27 07:32:39', '2024-06-27 07:32:39'),
(718, '127.0.0.1', '11:03:04am', '2024:06:27', '2024-06-27 07:33:04', '2024-06-27 07:33:04'),
(719, '127.0.0.1', '11:03:07am', '2024:06:27', '2024-06-27 07:33:07', '2024-06-27 07:33:07'),
(720, '127.0.0.1', '11:03:24am', '2024:06:27', '2024-06-27 07:33:24', '2024-06-27 07:33:24'),
(721, '127.0.0.1', '11:03:29am', '2024:06:27', '2024-06-27 07:33:29', '2024-06-27 07:33:29'),
(722, '127.0.0.1', '11:03:32am', '2024:06:27', '2024-06-27 07:33:32', '2024-06-27 07:33:32'),
(723, '127.0.0.1', '11:03:36am', '2024:06:27', '2024-06-27 07:33:36', '2024-06-27 07:33:36'),
(724, '127.0.0.1', '11:12:34am', '2024:06:27', '2024-06-27 07:42:34', '2024-06-27 07:42:34'),
(725, '127.0.0.1', '11:12:37am', '2024:06:27', '2024-06-27 07:42:37', '2024-06-27 07:42:37'),
(726, '127.0.0.1', '11:12:55am', '2024:06:27', '2024-06-27 07:42:55', '2024-06-27 07:42:55'),
(727, '127.0.0.1', '11:13:01am', '2024:06:27', '2024-06-27 07:43:01', '2024-06-27 07:43:01'),
(728, '127.0.0.1', '11:13:05am', '2024:06:27', '2024-06-27 07:43:05', '2024-06-27 07:43:05'),
(729, '127.0.0.1', '11:13:10am', '2024:06:27', '2024-06-27 07:43:10', '2024-06-27 07:43:10'),
(730, '127.0.0.1', '11:33:11am', '2024:06:27', '2024-06-27 08:03:11', '2024-06-27 08:03:11'),
(731, '127.0.0.1', '11:33:14am', '2024:06:27', '2024-06-27 08:03:14', '2024-06-27 08:03:14'),
(732, '127.0.0.1', '11:33:33am', '2024:06:27', '2024-06-27 08:03:33', '2024-06-27 08:03:33'),
(733, '127.0.0.1', '11:33:38am', '2024:06:27', '2024-06-27 08:03:38', '2024-06-27 08:03:38'),
(734, '127.0.0.1', '11:33:42am', '2024:06:27', '2024-06-27 08:03:42', '2024-06-27 08:03:42'),
(735, '127.0.0.1', '11:33:47am', '2024:06:27', '2024-06-27 08:03:47', '2024-06-27 08:03:47'),
(736, '127.0.0.1', '12:01:57pm', '2024:06:27', '2024-06-27 08:31:57', '2024-06-27 08:31:57'),
(737, '127.0.0.1', '12:02:46pm', '2024:06:27', '2024-06-27 08:32:46', '2024-06-27 08:32:46'),
(738, '127.0.0.1', '12:04:48pm', '2024:06:27', '2024-06-27 08:34:48', '2024-06-27 08:34:48'),
(739, '127.0.0.1', '12:05:26pm', '2024:06:27', '2024-06-27 08:35:26', '2024-06-27 08:35:26'),
(740, '127.0.0.1', '12:05:29pm', '2024:06:27', '2024-06-27 08:35:29', '2024-06-27 08:35:29'),
(741, '127.0.0.1', '05:30:26pm', '2024:06:27', '2024-06-27 14:00:26', '2024-06-27 14:00:26'),
(742, '127.0.0.1', '05:30:29pm', '2024:06:27', '2024-06-27 14:00:29', '2024-06-27 14:00:29'),
(743, '127.0.0.1', '05:30:45pm', '2024:06:27', '2024-06-27 14:00:45', '2024-06-27 14:00:45'),
(744, '127.0.0.1', '05:30:49pm', '2024:06:27', '2024-06-27 14:00:49', '2024-06-27 14:00:49'),
(745, '127.0.0.1', '05:30:52pm', '2024:06:27', '2024-06-27 14:00:52', '2024-06-27 14:00:52'),
(746, '127.0.0.1', '05:30:55pm', '2024:06:27', '2024-06-27 14:00:55', '2024-06-27 14:00:55'),
(747, '127.0.0.1', '06:22:52pm', '2024:06:27', '2024-06-27 14:52:52', '2024-06-27 14:52:52'),
(748, '127.0.0.1', '06:22:55pm', '2024:06:27', '2024-06-27 14:52:55', '2024-06-27 14:52:55'),
(749, '127.0.0.1', '06:23:11pm', '2024:06:27', '2024-06-27 14:53:11', '2024-06-27 14:53:11'),
(750, '127.0.0.1', '06:23:15pm', '2024:06:27', '2024-06-27 14:53:15', '2024-06-27 14:53:15'),
(751, '127.0.0.1', '06:23:18pm', '2024:06:27', '2024-06-27 14:53:18', '2024-06-27 14:53:18'),
(752, '127.0.0.1', '06:23:20pm', '2024:06:27', '2024-06-27 14:53:20', '2024-06-27 14:53:20'),
(753, '127.0.0.1', '06:23:24pm', '2024:06:27', '2024-06-27 14:53:24', '2024-06-27 14:53:24'),
(754, '127.0.0.1', '06:23:26pm', '2024:06:27', '2024-06-27 14:53:26', '2024-06-27 14:53:26'),
(755, '127.0.0.1', '06:24:04pm', '2024:06:27', '2024-06-27 14:54:04', '2024-06-27 14:54:04'),
(756, '127.0.0.1', '06:24:07pm', '2024:06:27', '2024-06-27 14:54:07', '2024-06-27 14:54:07'),
(757, '127.0.0.1', '06:24:10pm', '2024:06:27', '2024-06-27 14:54:10', '2024-06-27 14:54:10'),
(758, '127.0.0.1', '06:26:00pm', '2024:06:27', '2024-06-27 14:56:00', '2024-06-27 14:56:00'),
(759, '127.0.0.1', '06:27:08pm', '2024:06:27', '2024-06-27 14:57:08', '2024-06-27 14:57:08'),
(760, '127.0.0.1', '06:27:11pm', '2024:06:27', '2024-06-27 14:57:11', '2024-06-27 14:57:11'),
(761, '127.0.0.1', '06:27:26pm', '2024:06:27', '2024-06-27 14:57:26', '2024-06-27 14:57:26'),
(762, '127.0.0.1', '06:27:31pm', '2024:06:27', '2024-06-27 14:57:31', '2024-06-27 14:57:31'),
(763, '127.0.0.1', '06:27:33pm', '2024:06:27', '2024-06-27 14:57:33', '2024-06-27 14:57:33'),
(764, '127.0.0.1', '06:27:36pm', '2024:06:27', '2024-06-27 14:57:36', '2024-06-27 14:57:36'),
(765, '127.0.0.1', '06:44:59pm', '2024:06:27', '2024-06-27 15:14:59', '2024-06-27 15:14:59'),
(766, '127.0.0.1', '06:45:01pm', '2024:06:27', '2024-06-27 15:15:01', '2024-06-27 15:15:01'),
(767, '127.0.0.1', '06:45:19pm', '2024:06:27', '2024-06-27 15:15:19', '2024-06-27 15:15:19'),
(768, '127.0.0.1', '06:45:24pm', '2024:06:27', '2024-06-27 15:15:24', '2024-06-27 15:15:24'),
(769, '127.0.0.1', '06:45:26pm', '2024:06:27', '2024-06-27 15:15:26', '2024-06-27 15:15:26'),
(770, '127.0.0.1', '10:20:26am', '2024:06:29', '2024-06-29 06:50:26', '2024-06-29 06:50:26'),
(771, '127.0.0.1', '10:20:30am', '2024:06:29', '2024-06-29 06:50:30', '2024-06-29 06:50:30'),
(772, '127.0.0.1', '10:24:37am', '2024:06:29', '2024-06-29 06:54:37', '2024-06-29 06:54:37'),
(773, '127.0.0.1', '12:01:17pm', '2024:06:30', '2024-06-30 08:31:17', '2024-06-30 08:31:17'),
(774, '127.0.0.1', '12:01:21pm', '2024:06:30', '2024-06-30 08:31:21', '2024-06-30 08:31:21'),
(775, '127.0.0.1', '12:01:38pm', '2024:06:30', '2024-06-30 08:31:38', '2024-06-30 08:31:38'),
(776, '127.0.0.1', '12:01:43pm', '2024:06:30', '2024-06-30 08:31:43', '2024-06-30 08:31:43'),
(777, '127.0.0.1', '12:01:47pm', '2024:06:30', '2024-06-30 08:31:47', '2024-06-30 08:31:47'),
(778, '127.0.0.1', '12:01:51pm', '2024:06:30', '2024-06-30 08:31:51', '2024-06-30 08:31:51'),
(779, '127.0.0.1', '12:16:28pm', '2024:06:30', '2024-06-30 08:46:28', '2024-06-30 08:46:28'),
(780, '127.0.0.1', '12:16:31pm', '2024:06:30', '2024-06-30 08:46:31', '2024-06-30 08:46:31'),
(781, '127.0.0.1', '12:17:06pm', '2024:06:30', '2024-06-30 08:47:06', '2024-06-30 08:47:06'),
(782, '127.0.0.1', '05:25:00pm', '2024:06:30', '2024-06-30 13:55:00', '2024-06-30 13:55:00'),
(783, '127.0.0.1', '05:25:03pm', '2024:06:30', '2024-06-30 13:55:03', '2024-06-30 13:55:03'),
(784, '127.0.0.1', '05:25:40pm', '2024:06:30', '2024-06-30 13:55:40', '2024-06-30 13:55:40'),
(785, '127.0.0.1', '05:25:43pm', '2024:06:30', '2024-06-30 13:55:43', '2024-06-30 13:55:43'),
(786, '127.0.0.1', '05:26:01pm', '2024:06:30', '2024-06-30 13:56:02', '2024-06-30 13:56:02'),
(787, '127.0.0.1', '05:26:07pm', '2024:06:30', '2024-06-30 13:56:07', '2024-06-30 13:56:07'),
(788, '127.0.0.1', '05:26:11pm', '2024:06:30', '2024-06-30 13:56:11', '2024-06-30 13:56:11'),
(789, '127.0.0.1', '05:26:15pm', '2024:06:30', '2024-06-30 13:56:15', '2024-06-30 13:56:15'),
(790, '127.0.0.1', '10:04:33am', '2024:07:01', '2024-07-01 06:34:33', '2024-07-01 06:34:33'),
(791, '127.0.0.1', '10:04:36am', '2024:07:01', '2024-07-01 06:34:36', '2024-07-01 06:34:36'),
(792, '127.0.0.1', '10:04:52am', '2024:07:01', '2024-07-01 06:34:52', '2024-07-01 06:34:52'),
(793, '127.0.0.1', '10:04:57am', '2024:07:01', '2024-07-01 06:34:57', '2024-07-01 06:34:57'),
(794, '127.0.0.1', '10:05:00am', '2024:07:01', '2024-07-01 06:35:00', '2024-07-01 06:35:00'),
(795, '127.0.0.1', '10:05:03am', '2024:07:01', '2024-07-01 06:35:03', '2024-07-01 06:35:03'),
(796, '127.0.0.1', '10:49:11am', '2024:07:01', '2024-07-01 07:19:11', '2024-07-01 07:19:11'),
(797, '127.0.0.1', '10:49:14am', '2024:07:01', '2024-07-01 07:19:14', '2024-07-01 07:19:14'),
(798, '127.0.0.1', '10:49:32am', '2024:07:01', '2024-07-01 07:19:32', '2024-07-01 07:19:32'),
(799, '127.0.0.1', '10:49:36am', '2024:07:01', '2024-07-01 07:19:36', '2024-07-01 07:19:36'),
(800, '127.0.0.1', '10:49:40am', '2024:07:01', '2024-07-01 07:19:40', '2024-07-01 07:19:40'),
(801, '127.0.0.1', '10:49:45am', '2024:07:01', '2024-07-01 07:19:45', '2024-07-01 07:19:45'),
(802, '127.0.0.1', '01:26:40pm', '2024:07:01', '2024-07-01 09:56:40', '2024-07-01 09:56:40'),
(803, '127.0.0.1', '01:26:43pm', '2024:07:01', '2024-07-01 09:56:43', '2024-07-01 09:56:43'),
(804, '127.0.0.1', '05:38:08pm', '2024:07:01', '2024-07-01 14:08:08', '2024-07-01 14:08:08'),
(805, '127.0.0.1', '05:38:11pm', '2024:07:01', '2024-07-01 14:08:11', '2024-07-01 14:08:11'),
(806, '127.0.0.1', '05:38:28pm', '2024:07:01', '2024-07-01 14:08:28', '2024-07-01 14:08:28'),
(807, '127.0.0.1', '05:38:33pm', '2024:07:01', '2024-07-01 14:08:33', '2024-07-01 14:08:33'),
(808, '127.0.0.1', '05:38:37pm', '2024:07:01', '2024-07-01 14:08:37', '2024-07-01 14:08:37'),
(809, '127.0.0.1', '05:38:42pm', '2024:07:01', '2024-07-01 14:08:42', '2024-07-01 14:08:42'),
(810, '127.0.0.1', '09:13:12pm', '2024:07:01', '2024-07-01 17:43:12', '2024-07-01 17:43:12'),
(811, '127.0.0.1', '09:13:15pm', '2024:07:01', '2024-07-01 17:43:15', '2024-07-01 17:43:15'),
(812, '127.0.0.1', '09:13:32pm', '2024:07:01', '2024-07-01 17:43:32', '2024-07-01 17:43:32'),
(813, '127.0.0.1', '09:13:37pm', '2024:07:01', '2024-07-01 17:43:37', '2024-07-01 17:43:37'),
(814, '127.0.0.1', '09:13:41pm', '2024:07:01', '2024-07-01 17:43:41', '2024-07-01 17:43:41'),
(815, '127.0.0.1', '09:13:46pm', '2024:07:01', '2024-07-01 17:43:46', '2024-07-01 17:43:46'),
(816, '127.0.0.1', '09:15:46pm', '2024:07:01', '2024-07-01 17:45:46', '2024-07-01 17:45:46'),
(817, '127.0.0.1', '09:15:49pm', '2024:07:01', '2024-07-01 17:45:49', '2024-07-01 17:45:49'),
(818, '127.0.0.1', '09:26:37pm', '2024:07:01', '2024-07-01 17:56:37', '2024-07-01 17:56:37'),
(819, '127.0.0.1', '10:58:09am', '2024:07:02', '2024-07-02 07:28:09', '2024-07-02 07:28:09'),
(820, '127.0.0.1', '10:58:12am', '2024:07:02', '2024-07-02 07:28:12', '2024-07-02 07:28:12'),
(821, '127.0.0.1', '10:58:30am', '2024:07:02', '2024-07-02 07:28:30', '2024-07-02 07:28:30'),
(822, '127.0.0.1', '10:58:36am', '2024:07:02', '2024-07-02 07:28:36', '2024-07-02 07:28:36'),
(823, '127.0.0.1', '10:58:39am', '2024:07:02', '2024-07-02 07:28:39', '2024-07-02 07:28:39'),
(824, '127.0.0.1', '10:58:43am', '2024:07:02', '2024-07-02 07:28:43', '2024-07-02 07:28:43'),
(825, '127.0.0.1', '09:02:09pm', '2024:07:02', '2024-07-02 17:32:09', '2024-07-02 17:32:09'),
(826, '127.0.0.1', '09:02:13pm', '2024:07:02', '2024-07-02 17:32:13', '2024-07-02 17:32:13'),
(827, '127.0.0.1', '09:02:35pm', '2024:07:02', '2024-07-02 17:32:35', '2024-07-02 17:32:35'),
(828, '127.0.0.1', '09:02:40pm', '2024:07:02', '2024-07-02 17:32:40', '2024-07-02 17:32:40'),
(829, '127.0.0.1', '09:02:45pm', '2024:07:02', '2024-07-02 17:32:45', '2024-07-02 17:32:45'),
(830, '127.0.0.1', '09:02:50pm', '2024:07:02', '2024-07-02 17:32:50', '2024-07-02 17:32:50'),
(831, '127.0.0.1', '11:59:36am', '2024:07:03', '2024-07-03 08:29:36', '2024-07-03 08:29:36'),
(832, '127.0.0.1', '11:59:39am', '2024:07:03', '2024-07-03 08:29:39', '2024-07-03 08:29:39'),
(833, '127.0.0.1', '11:59:57am', '2024:07:03', '2024-07-03 08:29:57', '2024-07-03 08:29:57'),
(834, '127.0.0.1', '12:00:02pm', '2024:07:03', '2024-07-03 08:30:02', '2024-07-03 08:30:02'),
(835, '127.0.0.1', '12:00:06pm', '2024:07:03', '2024-07-03 08:30:06', '2024-07-03 08:30:06'),
(836, '127.0.0.1', '12:00:10pm', '2024:07:03', '2024-07-03 08:30:11', '2024-07-03 08:30:11'),
(837, '127.0.0.1', '07:14:34pm', '2024:07:03', '2024-07-03 15:44:34', '2024-07-03 15:44:34'),
(838, '127.0.0.1', '07:06:50pm', '2024:07:07', '2024-07-07 15:36:50', '2024-07-07 15:36:50'),
(839, '127.0.0.1', '07:06:54pm', '2024:07:07', '2024-07-07 15:36:54', '2024-07-07 15:36:54'),
(840, '127.0.0.1', '07:07:11pm', '2024:07:07', '2024-07-07 15:37:11', '2024-07-07 15:37:11'),
(841, '127.0.0.1', '07:07:16pm', '2024:07:07', '2024-07-07 15:37:16', '2024-07-07 15:37:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourites_product_details_id_foreign` (`product_details_id`),
  ADD KEY `favourites_product_id_foreign` (`product_id`),
  ADD KEY `favourites_user_id_foreign` (`user_id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_carts_user_id_foreign` (`user_id`),
  ADD KEY `product_carts_product_id_foreign` (`product_id`),
  ADD KEY `product_carts_product_details_id_foreign` (`product_details_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_lists_category_id_foreign` (`category_id`),
  ADD KEY `product_lists_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `product_lists_remark_id_foreign` (`remark_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `remarks`
--
ALTER TABLE `remarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `remarks`
--
ALTER TABLE `remarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=842;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_product_details_id_foreign` FOREIGN KEY (`product_details_id`) REFERENCES `product_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favourites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favourites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD CONSTRAINT `product_carts_product_details_id_foreign` FOREIGN KEY (`product_details_id`) REFERENCES `product_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD CONSTRAINT `product_lists_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_lists_remark_id_foreign` FOREIGN KEY (`remark_id`) REFERENCES `remarks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_lists_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"apiecom\",\"table\":\"favourites\"},{\"db\":\"apiecom\",\"table\":\"product_carts\"},{\"db\":\"apiecom\",\"table\":\"product_lists\"},{\"db\":\"apiecom\",\"table\":\"product_details\"},{\"db\":\"apiecom\",\"table\":\"migrations\"},{\"db\":\"apiecom\",\"table\":\"users\"},{\"db\":\"apiecom\",\"table\":\"product_reviews\"},{\"db\":\"apiecom\",\"table\":\"sub_categories\"},{\"db\":\"apiecom\",\"table\":\"password_reset_tokens\"},{\"db\":\"apiecom\",\"table\":\"personal_access_tokens\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-07-08 14:57:52', '{\"Console\\/Mode\":\"show\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Red', NULL, NULL),
(2, 'Green', NULL, NULL),
(3, 'Blue', NULL, NULL),
(4, 'Black', NULL, NULL),
(5, 'White', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`color_id`, `product_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `src` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `src`, `created_at`, `updated_at`) VALUES
(1, 'image-01', NULL, NULL),
(2, 'image-02', NULL, NULL),
(3, 'image-03', NULL, NULL),
(4, 'image-04', NULL, NULL),
(5, 'image-05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_product`
--

CREATE TABLE `image_product` (
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '0001_01_01_000000_create_users_table', 1),
(12, '0001_01_01_000001_create_cache_table', 1),
(13, '0001_01_01_000002_create_jobs_table', 1),
(14, '2024_04_24_074906_create_products_table', 1),
(15, '2024_04_24_074914_create_images_table', 1),
(16, '2024_04_24_074927_create_colors_table', 1),
(17, '2024_04_24_074936_create_sizes_table', 1),
(18, '2024_04_24_075042_create_image_product_table', 1),
(19, '2024_04_24_075108_create_color_product_table', 1),
(20, '2024_04_24_075128_create_product_size_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `created_at`, `updated_at`) VALUES
(1, 'product1', '100', '2024-04-24 11:35:43', '2024-04-24 11:35:43'),
(2, 'product2', '100', '2024-04-24 11:36:18', '2024-04-24 11:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`product_id`, `size_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MACBMCgtmljGM2DZIcAMuE2kd5lmgRezAiArDQII', NULL, '127.0.0.1', 'PostmanRuntime/7.37.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUl6THZ6b3hRSjJLR3E5OGhSZ0RjVVZZckJ6M01URFg3Y2x6dU54NiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9nZXQiO319', 1713977036);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'S', NULL, NULL),
(2, 'M', NULL, NULL),
(3, 'L', NULL, NULL),
(4, 'XL', NULL, NULL),
(5, 'XXL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD KEY `color_product_color_id_foreign` (`color_id`),
  ADD KEY `color_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_product`
--
ALTER TABLE `image_product`
  ADD KEY `image_product_image_id_foreign` (`image_id`),
  ADD KEY `image_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD KEY `product_size_product_id_foreign` (`product_id`),
  ADD KEY `product_size_size_id_foreign` (`size_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `color_product`
--
ALTER TABLE `color_product`
  ADD CONSTRAINT `color_product_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `color_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_product`
--
ALTER TABLE `image_product`
  ADD CONSTRAINT `image_product_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `image_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
