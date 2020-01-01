-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2019 at 11:12 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id11577327_zabeha`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `id_product`, `id_user`, `created_at`, `updated_at`) VALUES
(20, 13, 40, '2019-12-03 14:04:16', NULL),
(27, 7, 40, '2019-12-03 14:06:56', NULL),
(30, 12, 40, '2019-12-03 14:20:43', NULL),
(35, 10, 35, '2019-12-03 14:24:36', NULL),
(52, 5, 21, '2019-12-03 14:51:01', NULL),
(55, 9, 40, '2019-12-03 14:54:24', NULL),
(59, 12, 21, '2019-12-03 15:56:17', NULL),
(64, 13, 35, '2019-12-03 16:53:12', NULL),
(65, 5, 35, '2019-12-03 16:54:07', NULL),
(69, 10, 40, '2019-12-03 20:39:21', NULL),
(72, 7, 21, '2019-12-04 13:07:29', NULL),
(73, 13, 21, '2019-12-04 13:08:36', NULL),
(75, 9, 35, '2019-12-04 13:12:33', NULL),
(76, 8, 35, '2019-12-04 13:15:20', NULL),
(77, 12, 35, '2019-12-04 13:59:08', NULL),
(78, 6, 21, '2019-12-04 14:16:39', NULL),
(79, 7, 35, '2019-12-04 14:22:47', NULL),
(80, 8, 40, '2019-12-04 22:01:13', NULL),
(85, 7, 1111, '2019-12-06 19:28:06', NULL),
(86, 13, 1111, '2019-12-06 20:43:58', NULL),
(87, 12, 1111, '2019-12-06 20:44:00', NULL),
(88, 5, 1111, '2019-12-06 20:46:50', NULL),
(89, 6, 1111, '2019-12-06 20:46:52', NULL),
(90, 5, 40, '2019-12-06 20:57:16', NULL),
(91, 6, 40, '2019-12-06 20:57:18', NULL),
(92, 8, 52, '2019-12-06 23:44:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `img`) VALUES
(1, 'category/Camel.jpg'),
(2, 'category/cow.jpg'),
(3, 'category/sheep.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `complains` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`id`, `username`, `complains`, `created_at`, `updated_at`) VALUES
(1, '01060072344', 'h', '2019-11-27 14:33:56', '2019-11-27 14:33:56'),
(2, '01060072344', 'h', '2019-11-27 14:35:36', '2019-11-27 14:35:36'),
(3, '01060072344', 'hiiii', '2019-11-27 14:40:37', '2019-11-27 14:40:37'),
(4, '01060072344', 'hiiii', '2019-11-27 14:40:56', '2019-11-27 14:40:56'),
(5, '01060072344', 'hiiii', '2019-11-27 16:28:01', '2019-11-27 16:28:01'),
(6, '01060072344', 'dpdp', '2019-11-27 16:31:30', '2019-11-27 16:31:30'),
(7, '01060072344', 'java', '2019-11-27 16:58:18', '2019-11-27 16:58:18'),
(8, '01060072344', 'xml', '2019-11-27 16:59:52', '2019-11-27 16:59:52'),
(9, '01123297097', 'he', '2019-11-29 11:03:41', '2019-11-29 11:03:41'),
(10, '01060072344', 'h', '2019-11-30 01:47:31', '2019-11-30 01:47:31'),
(11, '01223297097', 'hhhhhhh', '2019-11-30 14:41:18', '2019-11-30 14:41:18'),
(12, '01112747113', 'hello', '2019-12-01 16:00:36', '2019-12-01 16:00:36'),
(13, '01112747113', '', '2019-12-01 16:03:17', '2019-12-01 16:03:17'),
(14, '01112747113', '', '2019-12-01 16:04:09', '2019-12-01 16:04:09'),
(15, '01112747113', '', '2019-12-01 16:04:11', '2019-12-01 16:04:11'),
(16, '01112747113', '', '2019-12-01 16:04:13', '2019-12-01 16:04:13'),
(17, '01112747113', '7', '2019-12-01 16:04:57', '2019-12-01 16:04:57'),
(18, '01223297097', '1', '2019-12-01 19:26:22', '2019-12-01 19:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2019_11_06_142305_users_table', 1),
('2019_11_06_170202_complains_table', 2),
('2019_11_11_121550_add_token_to_registers', 3),
('2019_11_11_131436_complains_table', 4),
('2019_11_11_135404_products_table', 5),
('2019_11_11_140458_products_slider_table', 6),
('2019_11_11_154132_cart_table', 7),
('2019_11_13_141041_sells_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `text_of_img` varchar(255) NOT NULL,
  `max_count` varchar(11) NOT NULL,
  `category` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `img`, `price`, `text_of_img`, `max_count`, `category`, `created_at`, `updated_at`) VALUES
(5, 'products/sheep1.jpg', 2000, 'sheep', '35', 3, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(6, 'products/sheep2.jpg', 1500, 'sheep', '77', 3, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(7, 'products/sheep3.jpg', 1000, 'sheep', '10', 3, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(8, 'products/cow1.jpg', 8000, 'Cow', '10', 2, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(9, 'products/cow2.jpg', 9000, 'Cow', '10', 2, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(10, 'products/cow3.jpg', 10000, 'cow', '10', 2, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(12, 'products/camel1.jpg', 15000, 'camel', '9', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(13, 'products/camel2.jpg', 16000, 'camel', '10', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `long` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `name`, `phone`, `mail`, `lat`, `long`, `password`, `created_at`, `updated_at`, `token`) VALUES
(8, 'admin@admin', '01123297097', 'm@m.com', '45th', '', '45', '2019-11-06 13:52:11', '2019-11-06 13:52:11', '4445803c4724c116c402d1192f835901'),
(17, 'Muhammad', '45', '45.c', '45', '', '44', '2019-11-09 15:03:30', '2019-11-09 15:03:30', NULL),
(18, 'muhammad', '01123297098', 'ms@m.com', 'w', 'w', '4', '2019-11-11 11:01:52', '2019-11-11 11:01:52', NULL),
(19, 'muhammad', '01123297099', 'mss@m.com', 'w', 'w', '4', '2019-11-11 11:02:36', '2019-11-11 11:02:36', NULL),
(20, 'muhammad', '01123797099', 'msss@m.com', 'w', 'www', '4', '2019-11-11 11:03:52', '2019-11-11 11:03:52', NULL),
(21, 'Ahmed', '01060072344', 'ahmed@gmail.com', '5', '4', '123', '2019-11-13 10:42:44', '2019-11-13 10:42:44', '20fb5c16263205af8e0aae3c26052f28'),
(22, 'Muhammad', '01023297097', 'm@mm.com', 'x', 'y', '123', '2019-11-18 15:18:14', '2019-11-18 15:18:14', NULL),
(23, 'Muhammad', '01013297097', 'm@cc.com', 'x', 'y', '123', '2019-11-18 16:17:30', '2019-11-18 16:17:30', NULL),
(24, 'mostafa', '01013297007', 'm6@cc.com', 'x', 'y', '123', '2019-11-19 12:44:11', '2019-11-19 12:44:11', NULL),
(25, 'mostafa did', '01111797113', 'mm@gmail.com', 'x', 'y', '123', '2019-11-19 13:58:49', '2019-11-19 13:58:49', NULL),
(26, 'mostafa did', '01112747113', 'm11m@gmail.com', 'x', 'y', '123', '2019-11-19 14:02:58', '2019-11-19 14:02:58', NULL),
(27, 'mostafa99', '01122407009', 'mm99@hotmail.com', 'x', 'y', '1234', '2019-11-19 14:08:27', '2019-11-19 14:08:27', NULL),
(29, 'mm', '01113443537', 'ssd@gmail.com', 'rerere', 'x', '1234', '2019-11-19 17:03:21', '2019-11-19 17:03:21', NULL),
(30, 'Muhammad', '01121885577', 'wm@mwm.com', 'x', 'y', '123', '2019-11-19 17:05:20', '2019-11-19 17:05:20', NULL),
(31, 'test', '01123123412', 'tet@test.com', 'rerere', 'x', '123456', '2019-11-19 17:16:04', '2019-11-19 17:16:04', NULL),
(32, 'trust', '01121934423', 'test@o.com', 'rerere', 'x', '12345', '2019-11-19 17:17:09', '2019-11-19 17:17:09', NULL),
(33, 'Muhammad', '11111111111', 'memo@yahpp.com', 'x', 'y', '123', '2019-11-23 13:37:36', '2019-11-23 13:37:36', NULL),
(34, 'Muhammad', '11111111112', 'memo@yahoo.com', 'x', 'y', '123', '2019-11-23 13:37:56', '2019-11-23 13:37:56', NULL),
(35, 'mostafa', '01117970797', 'zezo@gmail.com', 'rerere', 'x', '123', '2019-11-23 13:40:27', '2019-11-23 13:40:27', '22dec284fb5b31a874522103c3c3301f'),
(36, 'Muhammad', '01117021480', 'mahmoud.abdelmoneam25997@gmail.com', 'x', 'y', 'mahmoud10', '2019-11-23 13:46:59', '2019-11-23 13:46:59', NULL),
(37, 'mistags', '01005748426', 'liver@gmail.com', 'rerere', 'x', '123', '2019-11-23 16:24:25', '2019-11-23 16:24:25', NULL),
(38, 'Muhammad', '01117021450', 'df@mm.com', 'x', 'y', '123', '2019-11-24 15:43:54', '2019-11-24 15:43:54', NULL),
(39, 'Awady', '01111111111', 'awady@awady.com', 'x', 'y', '123', '2019-11-24 16:21:51', '2019-11-24 16:21:51', NULL),
(40, 'Awady', '02222222222', 'ahmed@ahmed.com', 'x', 'y', '12345678', '2019-11-24 16:42:57', '2019-11-24 16:42:57', '689230c41fb74813c9b4e83e4fd50193'),
(41, 'hamed', '01006328434', 'hamed@yahoo.com', '45450', '45450', '11111', '2019-11-24 16:46:07', '2019-11-24 16:46:07', NULL),
(42, 'haha', '01006328437', 'hamedh@yahoo.com', '45450', '45450', '2222', '2019-11-24 16:54:18', '2019-11-24 16:54:18', NULL),
(43, 'haha', '01003643545', 'hamed@gmail.com', '45450', '45450', '22222', '2019-11-24 16:56:01', '2019-11-24 16:56:01', NULL),
(44, 'toto', '01112111222', 'toto@toto.com', 'x', 'x', '12345678', '2019-11-24 16:57:17', '2019-11-24 16:57:17', 'e9222dff3256a1cea24837ecfa1cbb3a'),
(45, 'haha', '01554092148', 'gg@yahoo.com', '45450', '45450', '2222', '2019-11-24 16:57:46', '2019-11-24 16:57:46', NULL),
(46, 'mmm', '01117022480', 'mmm@yahoo.com', '45450', '45450', 'Mahmoud10', '2019-11-24 17:11:42', '2019-11-24 17:11:42', NULL),
(47, 'koko', '01113111333', 'koko@koko.com', 'ggcfgcfggfc', 'ccgc', '12345678', '2019-11-24 22:30:41', '2019-11-24 22:30:41', NULL),
(48, 'Muhammad', '01111111548', 'dghf@mm.com', 'x', 'y', '123', '2019-11-25 16:21:55', '2019-11-25 16:21:55', NULL),
(49, 'Muhammad', '01223297097', 'muhammad@gmail.com', 'x', 'y', '123', '2019-11-30 14:24:08', '2019-11-30 14:24:08', NULL),
(50, 'Muhammad', '01023297012', 'm@mm4.com', 'x', 'y', '123', '2019-12-01 15:52:52', '2019-12-01 15:52:52', 'e348ec1a0b9b7edcf50c75a57fc905aa'),
(51, 'Muhammad', '01023297088', 'm@mmsa.com', 'x', 'y', '123', '2019-12-01 15:53:40', '2019-12-01 15:53:40', '303199fe901c94326e48ebe3f51d54d5'),
(52, 'also', '01234567890', 'soso@soso.com', '0', '0', '12345678', '2019-12-06 23:41:29', '2019-12-06 23:41:29', '83f189dc7e7ee5138c84bcf747a93126');

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

CREATE TABLE `sells` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `total` double(8,2) NOT NULL,
  `idproduct` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count_of_product` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sells`
--

INSERT INTO `sells` (`id`, `id_user`, `total`, `idproduct`, `count_of_product`, `created_at`, `updated_at`) VALUES
(8, 10, 4500.00, 'a:1:{i:0;a:2:{i:0;s:1:\"4\";i:1;s:1:\"2\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"1\";i:1;s:1:\"4\";}}', '2019-11-24 13:19:00', '2019-11-24 13:19:00'),
(9, 100, 4500.00, 'a:1:{i:0;a:2:{i:0;s:1:\"4\";i:1;s:1:\"2\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"1\";i:1;s:1:\"4\";}}', '2019-11-24 13:28:39', '2019-11-24 13:28:39'),
(10, 44, 45000.00, 'a:1:{i:0;a:2:{i:0;s:1:\"4\";i:1;s:1:\"2\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"1\";i:1;s:1:\"4\";}}', '2019-11-24 13:37:15', '2019-11-24 13:37:15'),
(11, 44, 45000.00, 'a:1:{i:0;a:2:{i:0;s:1:\"4\";i:1;s:1:\"2\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"1\";i:1;s:1:\"4\";}}', '2019-11-24 13:37:30', '2019-11-24 13:37:30'),
(12, 44, 45000.00, 'a:1:{i:0;a:2:{i:0;s:1:\"4\";i:1;s:1:\"2\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"1\";i:1;s:1:\"4\";}}', '2019-11-25 17:09:09', '2019-11-25 17:09:09'),
(13, 10, 10000.00, 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"6\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"5\";}}', '2019-11-28 20:30:00', '2019-11-28 20:30:00'),
(14, 10, 10000.00, 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"6\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"5\";}}', '2019-11-28 20:31:18', '2019-11-28 20:31:18'),
(15, 22, 10000.00, 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"6\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"5\";}}', '2019-11-30 14:37:51', '2019-11-30 14:37:51'),
(16, 0, 45.00, 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"6\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"4\";i:1;s:1:\"4\";}}', '2019-12-01 16:34:38', '2019-12-01 16:34:38'),
(17, 4, 475.00, 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"6\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"4\";i:1;s:1:\"4\";}}', '2019-12-01 16:39:38', '2019-12-01 16:39:38'),
(18, 22, 444.00, 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"6\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"4\";}}', '2019-12-01 19:31:14', '2019-12-01 19:31:14'),
(19, 10, 10000.00, 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"6\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"5\";}}', '2019-12-02 23:06:02', '2019-12-02 23:06:02'),
(20, 10, 10000.00, 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"6\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"5\";}}', '2019-12-03 03:13:16', '2019-12-03 03:13:16'),
(21, 10, 10000.00, 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', '2019-12-03 03:13:47', '2019-12-03 03:13:47'),
(22, 10, 10000.00, 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', '2019-12-03 03:13:56', '2019-12-03 03:13:56'),
(23, 10, 10000.00, 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', '2019-12-03 03:14:13', '2019-12-03 03:14:13'),
(24, 10, 10000.00, 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', '2019-12-03 15:06:28', '2019-12-03 15:06:28'),
(25, 10, 10000.00, 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', '2019-12-03 15:54:22', '2019-12-03 15:54:22'),
(26, 10, 10000.00, 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', '2019-12-03 16:04:32', '2019-12-03 16:04:32'),
(27, 10, 10000.00, 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', '2019-12-04 13:19:01', '2019-12-04 13:19:01'),
(28, 10, 10000.00, 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"6\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"5\";i:1;s:1:\"5\";}}', '2019-12-04 16:29:06', '2019-12-04 16:29:06'),
(29, 10, 10000.00, 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', 'a:1:{i:0;a:1:{i:0;s:1:\"5\";}}', '2019-12-04 16:35:25', '2019-12-04 16:35:25'),
(30, 2, 10000.00, 'a:1:{i:0;a:2:{i:0;s:2:\"12\";i:1;s:1:\"5\";}}', 'a:1:{i:0;a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}}', '2019-12-04 20:04:04', '2019-12-04 20:04:04');

-- --------------------------------------------------------

--
-- Table structure for table `sliderproducts`
--

CREATE TABLE `sliderproducts` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `text_of_img` varchar(255) NOT NULL,
  `num_product` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliderproducts`
--

INSERT INTO `sliderproducts` (`id`, `img`, `price`, `text_of_img`, `num_product`, `created_at`, `updated_at`) VALUES
(4, 'slider/slider1.jpg', 2000, '%خصم 15 ', 10, NULL, NULL),
(5, 'slider/slider2.jpg', 5000, 'offers', 10, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(6, 'slider/slider3.jpg', 8000, 'offers', 10, '2019-11-27 00:00:00', '2019-11-27 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sells`
--
ALTER TABLE `sells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliderproducts`
--
ALTER TABLE `sliderproducts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `sells`
--
ALTER TABLE `sells`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sliderproducts`
--
ALTER TABLE `sliderproducts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
