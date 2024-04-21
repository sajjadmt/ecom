-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2024 at 04:51 PM
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
(13, '2024_04_20_172453_create_home_sliders_table', 7);

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
('CVQbz01CeOBCh0TEXoKy8lFKK2Ysn3zThPoermCt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibll5dzBNRDdRN0tKMTNzMVl2Zm01TW5NNVdBOEdkNjQ0cmk1SndqdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713634091),
('rhNrfxCRLxs82M7MtdTcy2T3l7VSudA2bp610SJS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUJNMHJQcjFrWlV0Wjk4cm8xYTlUbnpSZmhLa1UwOEs2TnY4Q3FhcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713434122),
('t2GkjxBlIsILfURRASlfpDQEhQd1fyskkon0Swel', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidVJQRTdLRmt1M1dpSDlrWWNkb2Myb1g5bHJhN1ZIcjJDRmpGZUZ1RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTIkZ3F1MU85dU1OWmtWNmVNT1ZqWURNdXpiOXB3TnBGV3hPbWU0SFMxdlhITjNYbUpNQ3NKc3EiO30=', 1713083455),
('VTwy4p71kW9jsDfHthsQH4MKOLpXW7iJugBKwTfS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGQ4dFVvR0dhRkVRSm9qMlI5dU1YNlg2TUFocXRpNHJpWEh1dTU3NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713286080);

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
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$gqu1O9uMNZkV6eMOVjYDMuzb9pwNpFWxOme4HS1vXHN3XmJMCsJsq', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-14 04:06:32', '2024-04-14 04:06:32');

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
(123, '127.0.0.1', '06:19:33pm', '2024:04:21', '2024-04-21 14:49:33', '2024-04-21 14:49:33');

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
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_lists_category_id_foreign` (`category_id`),
  ADD KEY `product_lists_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `product_lists_remark_id_foreign` (`remark_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD CONSTRAINT `product_lists_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_lists_remark_id_foreign` FOREIGN KEY (`remark_id`) REFERENCES `remarks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_lists_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
