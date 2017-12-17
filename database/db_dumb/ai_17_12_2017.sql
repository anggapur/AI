-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2017 at 03:05 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai`
--

-- --------------------------------------------------------

--
-- Table structure for table `commands`
--

CREATE TABLE `commands` (
  `id` int(10) UNSIGNED NOT NULL,
  `command_words` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` enum('H','C') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commands`
--

INSERT INTO `commands` (`id`, `command_words`, `state`, `created_at`, `updated_at`) VALUES
(1, 'siapa penemu ikan', 'H', '2017-12-16 21:19:27', '2017-12-16 21:19:27'),
(2, 'siapa penemu ikan', 'H', '2017-12-16 21:20:09', '2017-12-16 21:20:09'),
(3, 'ikan ditemukan oleh James Smith ', 'C', '2017-12-16 21:20:09', '2017-12-16 21:20:09'),
(4, 'siapa penemu amerika', 'H', '2017-12-16 21:58:28', '2017-12-16 21:58:28'),
(5, 'amerika ditemukan oleh Amerigo Vespuci ', 'C', '2017-12-16 21:58:28', '2017-12-16 21:58:28'),
(6, 'siapa penemu amerika', 'H', '2017-12-16 21:58:35', '2017-12-16 21:58:35'),
(7, 'amerika ditemukan oleh Amerigo Vespuci ', 'C', '2017-12-16 21:58:35', '2017-12-16 21:58:35'),
(8, 'siapa yang menemukan amerika', 'H', '2017-12-16 21:58:45', '2017-12-16 21:58:45'),
(9, 'amerika ditemukan oleh Amerigo Vespuci ', 'C', '2017-12-16 21:58:45', '2017-12-16 21:58:45'),
(10, 'siapa yang penemu amerika', 'H', '2017-12-16 21:58:52', '2017-12-16 21:58:52'),
(11, 'amerika ditemukan oleh Amerigo Vespuci ', 'C', '2017-12-16 21:58:52', '2017-12-16 21:58:52'),
(12, 'siapa yang penemu amerikanasja', 'H', '2017-12-16 21:59:05', '2017-12-16 21:59:05'),
(13, 'NONE ', 'C', '2017-12-16 21:59:05', '2017-12-16 21:59:05'),
(14, 'siapa yang penemu amerika', 'H', '2017-12-16 21:59:10', '2017-12-16 21:59:10'),
(15, 'amerika ditemukan oleh Amerigo Vespuci ', 'C', '2017-12-16 21:59:10', '2017-12-16 21:59:10'),
(16, 'penemu amerika adalah', 'H', '2017-12-16 22:01:00', '2017-12-16 22:01:00'),
(17, 'NONE ', 'C', '2017-12-16 22:01:00', '2017-12-16 22:01:00'),
(18, 'penemu amerika adalah', 'H', '2017-12-16 22:01:20', '2017-12-16 22:01:20'),
(19, 'amerika ditemukan oleh Amerigo Vespuci ', 'C', '2017-12-16 22:01:20', '2017-12-16 22:01:20'),
(20, 'penemu amerika adalah', 'H', '2017-12-16 22:01:58', '2017-12-16 22:01:58'),
(21, 'Amerigo Vespuci ', 'C', '2017-12-16 22:01:58', '2017-12-16 22:01:58'),
(22, 'amerika ditemukan oleh', 'H', '2017-12-16 22:03:38', '2017-12-16 22:03:38'),
(23, 'amerika ditemukan oleh Amerigo Vespuci ', 'C', '2017-12-16 22:03:38', '2017-12-16 22:03:38'),
(24, 'kapan ikan ditemukan', 'H', '2017-12-16 22:33:43', '2017-12-16 22:33:43'),
(25, 'NONE ', 'C', '2017-12-16 22:33:43', '2017-12-16 22:33:43'),
(26, 'kapan ikan ditemukan', 'H', '2017-12-16 22:35:14', '2017-12-16 22:35:14'),
(27, 'ikan ditemukan pada kw ', 'C', '2017-12-16 22:35:14', '2017-12-16 22:35:14'),
(28, 'kapan ikan ditemukan oleh amerigo', 'H', '2017-12-16 22:35:58', '2017-12-16 22:35:58'),
(29, 'NONE ', 'C', '2017-12-16 22:35:58', '2017-12-16 22:35:58'),
(30, 'kapan ikan ditemukan oleh amerigo', 'H', '2017-12-16 22:36:29', '2017-12-16 22:36:29'),
(31, 'kapan ikan ditemukan', 'H', '2017-12-16 22:36:51', '2017-12-16 22:36:51'),
(32, 'ikan ditemukan pada kw ', 'C', '2017-12-16 22:36:52', '2017-12-16 22:36:52'),
(33, 'kapan amerika ditemukan oleh amerigo', 'H', '2017-12-16 22:37:06', '2017-12-16 22:37:06'),
(34, 'amerika ditemukan oleh Amerigo Vespuci pada ', 'C', '2017-12-16 22:37:06', '2017-12-16 22:37:06'),
(35, 'kapan amerika ditemukan oleh amerigo', 'H', '2017-12-16 22:37:22', '2017-12-16 22:37:22'),
(36, 'amerika ditemukan oleh Amerigo Vespuci pada kw ', 'C', '2017-12-16 22:37:23', '2017-12-16 22:37:23'),
(37, 'kapan amerika ditemukan oleh amerigo', 'H', '2017-12-17 09:37:23', '2017-12-17 09:37:23'),
(38, 'amerika ditemukan oleh Amerigo Vespuci pada kw ', 'C', '2017-12-17 09:37:24', '2017-12-17 09:37:24'),
(39, 'kapan amerika ditemukan oleh amerigo', 'H', '2017-12-17 09:37:40', '2017-12-17 09:37:40'),
(40, 'amerika ditemukan oleh Amerigo Vespuci pada kw ', 'C', '2017-12-17 09:37:40', '2017-12-17 09:37:40'),
(41, 'kapan amerika serikat ditemukan oleh amerigo', 'H', '2017-12-17 09:37:45', '2017-12-17 09:37:45'),
(42, 'NONE ', 'C', '2017-12-17 09:37:46', '2017-12-17 09:37:46'),
(43, 'siapa penemu ikan mas', 'H', '2017-12-17 20:26:35', '2017-12-17 20:26:35'),
(44, 'ikan mas ditemukan oleh James Watt ', 'C', '2017-12-17 20:26:36', '2017-12-17 20:26:36'),
(45, 'siapa penemu ikan mas', 'H', '2017-12-17 20:26:55', '2017-12-17 20:26:55'),
(46, 'ikan mas ditemukan oleh James Watt ', 'C', '2017-12-17 20:26:56', '2017-12-17 20:26:56'),
(47, 'siapa penemu ikan', 'H', '2017-12-17 20:27:02', '2017-12-17 20:27:02'),
(48, 'ikan ditemukan oleh James Smith ', 'C', '2017-12-17 20:27:03', '2017-12-17 20:27:03'),
(49, 'kapan ikan ditemukan', 'H', '2017-12-17 20:27:15', '2017-12-17 20:27:15'),
(50, 'ikan ditemukan pada kw ', 'C', '2017-12-17 20:27:15', '2017-12-17 20:27:15'),
(51, 'kapan ikan ditemukan', 'H', '2017-12-17 20:29:01', '2017-12-17 20:29:01'),
(52, 'ikan ditemukan pada kw ', 'C', '2017-12-17 20:29:01', '2017-12-17 20:29:01'),
(53, 'kapan ikan ditemukan', 'H', '2017-12-17 20:31:33', '2017-12-17 20:31:33'),
(54, 'ikan ditemukan pada kw ', 'C', '2017-12-17 20:31:33', '2017-12-17 20:31:33'),
(55, 'kapan ikan ditemukan', 'H', '2017-12-17 20:32:03', '2017-12-17 20:32:03'),
(56, 'ikan ditemukan pada 1902 ', 'C', '2017-12-17 20:32:03', '2017-12-17 20:32:03'),
(57, 'kapan ikan mas ditemukan', 'H', '2017-12-17 20:32:14', '2017-12-17 20:32:14'),
(58, 'ikan mas ditemukan pada 1903 ', 'C', '2017-12-17 20:32:14', '2017-12-17 20:32:14'),
(59, 'dimana ikan mas ditemukan', 'H', '2017-12-17 20:33:45', '2017-12-17 20:33:45'),
(60, 'ikan mas ditemukan pada Gianyar ', 'C', '2017-12-17 20:33:45', '2017-12-17 20:33:45'),
(61, 'dimana ikan mas ditemukan', 'H', '2017-12-17 20:33:59', '2017-12-17 20:33:59'),
(62, 'ikan mas ditemukan di Gianyar ', 'C', '2017-12-17 20:33:59', '2017-12-17 20:33:59'),
(63, 'kapan ikan mas ditemukan', 'H', '2017-12-17 20:38:16', '2017-12-17 20:38:16'),
(64, 'ikan mas ditemukan pada 1903 ', 'C', '2017-12-17 20:38:16', '2017-12-17 20:38:16'),
(65, 'apa itu ikan', 'H', '2017-12-17 20:38:57', '2017-12-17 20:38:57'),
(66, 'NONE ', 'C', '2017-12-17 20:38:58', '2017-12-17 20:38:58'),
(67, 'apa itu ikan', 'H', '2017-12-17 20:39:40', '2017-12-17 20:39:40'),
(68, 'ikan adalah d ', 'C', '2017-12-17 20:39:40', '2017-12-17 20:39:40'),
(69, 'detail tentang ikan', 'H', '2017-12-17 20:41:11', '2017-12-17 20:41:11'),
(70, 'd ', 'C', '2017-12-17 20:41:11', '2017-12-17 20:41:11'),
(71, 'detail tentang ikan', 'H', '2017-12-17 21:12:49', '2017-12-17 21:12:49'),
(72, 'do ', 'C', '2017-12-17 21:12:50', '2017-12-17 21:12:50'),
(73, 'detail tentang ikan', 'H', '2017-12-17 21:17:37', '2017-12-17 21:17:37'),
(74, ' ', 'C', '2017-12-17 21:17:37', '2017-12-17 21:17:37'),
(75, 'detail tentang ikan', 'H', '2017-12-17 21:17:47', '2017-12-17 21:17:47'),
(76, ' ', 'C', '2017-12-17 21:17:47', '2017-12-17 21:17:47'),
(77, 'detail ikan mas', 'H', '2017-12-17 21:18:06', '2017-12-17 21:18:06'),
(78, 'NONE ', 'C', '2017-12-17 21:18:06', '2017-12-17 21:18:06'),
(79, 'detail ikan mas', 'H', '2017-12-17 21:18:18', '2017-12-17 21:18:18'),
(80, 'NONE ', 'C', '2017-12-17 21:18:18', '2017-12-17 21:18:18'),
(81, 'detail tentang ikan mas', 'H', '2017-12-17 21:18:30', '2017-12-17 21:18:30'),
(82, 'do ', 'C', '2017-12-17 21:18:30', '2017-12-17 21:18:30'),
(83, 'detail tentang ikan mas', 'H', '2017-12-17 21:18:42', '2017-12-17 21:18:42'),
(84, ' ', 'C', '2017-12-17 21:18:42', '2017-12-17 21:18:42'),
(85, 'detail tentang ikan mas', 'H', '2017-12-17 21:19:37', '2017-12-17 21:19:37'),
(86, 'ikan mas adalah ', 'C', '2017-12-17 21:19:38', '2017-12-17 21:19:38'),
(87, 'detail tentang ikan mas', 'H', '2017-12-17 21:20:20', '2017-12-17 21:20:20'),
(88, 'ikan mas adalah ', 'C', '2017-12-17 21:20:20', '2017-12-17 21:20:20'),
(89, 'detail ikan mas', 'H', '2017-12-17 21:20:25', '2017-12-17 21:20:25'),
(90, 'ikan mas adalah ', 'C', '2017-12-17 21:20:25', '2017-12-17 21:20:25'),
(91, 'apa itu ikan mas', 'H', '2017-12-17 21:20:35', '2017-12-17 21:20:35'),
(92, 'ikan mas adalah ikan mas adalah ', 'C', '2017-12-17 21:20:35', '2017-12-17 21:20:35'),
(93, 'apa itu ikan mas', 'H', '2017-12-17 21:20:49', '2017-12-17 21:20:49'),
(94, 'do1 ', 'C', '2017-12-17 21:20:49', '2017-12-17 21:20:49'),
(95, 'apa itu ikan mas', 'H', '2017-12-17 21:21:14', '2017-12-17 21:21:14'),
(96, 'do1 ', 'C', '2017-12-17 21:21:14', '2017-12-17 21:21:14'),
(97, 'apa itu ikan mas', 'H', '2017-12-17 21:25:12', '2017-12-17 21:25:12'),
(98, 'do1 ', 'C', '2017-12-17 21:25:12', '2017-12-17 21:25:12'),
(99, 'apa itu ikan mas', 'H', '2017-12-17 21:26:50', '2017-12-17 21:26:50'),
(100, 'ikan mas adalah hewan air ', 'C', '2017-12-17 21:26:50', '2017-12-17 21:26:50'),
(101, 'detail ikan mas', 'H', '2017-12-17 21:27:15', '2017-12-17 21:27:15'),
(102, 'ikan mas adalah hewan air. Hewan air ini ', 'C', '2017-12-17 21:27:16', '2017-12-17 21:27:16'),
(103, 'siapa itu james smith', 'H', '2017-12-17 21:28:33', '2017-12-17 21:28:33'),
(104, 'ds1 ', 'C', '2017-12-17 21:28:33', '2017-12-17 21:28:33'),
(105, 'detail james smith', 'H', '2017-12-17 21:28:42', '2017-12-17 21:28:42'),
(106, 'james Smith adalah ', 'C', '2017-12-17 21:28:42', '2017-12-17 21:28:42'),
(107, 'siapa james smith', 'H', '2017-12-17 21:28:56', '2017-12-17 21:28:56'),
(108, 'ds1 ', 'C', '2017-12-17 21:28:57', '2017-12-17 21:28:57'),
(109, 'siapa james smith', 'H', '2017-12-17 21:29:43', '2017-12-17 21:29:43'),
(110, 'james Smith adalah ', 'C', '2017-12-17 21:29:43', '2017-12-17 21:29:43'),
(111, 'siapa james smith', 'H', '2017-12-17 21:30:00', '2017-12-17 21:30:00'),
(112, 'james Smith adalah penemu ', 'C', '2017-12-17 21:30:00', '2017-12-17 21:30:00'),
(113, 'detail james smith', 'H', '2017-12-17 21:30:07', '2017-12-17 21:30:07'),
(114, 'james Smith adalah penemu. Dia merupakan ', 'C', '2017-12-17 21:30:07', '2017-12-17 21:30:07'),
(115, 'detail tentang james smith', 'H', '2017-12-17 21:30:14', '2017-12-17 21:30:14'),
(116, 'NONE ', 'C', '2017-12-17 21:30:14', '2017-12-17 21:30:14'),
(117, 'detail tentang james smith', 'H', '2017-12-17 21:30:32', '2017-12-17 21:30:32'),
(118, 'james Smith adalah penemu. Dia merupakan ', 'C', '2017-12-17 21:30:33', '2017-12-17 21:30:33'),
(119, 'bagaimana ikan ditemukan', 'H', '2017-12-17 21:52:51', '2017-12-17 21:52:51'),
(120, 'Proses dua ', 'C', '2017-12-17 21:52:51', '2017-12-17 21:52:51'),
(121, 'bagaimana ikan mas ditemukan', 'H', '2017-12-17 21:52:56', '2017-12-17 21:52:56'),
(122, 'Proses 3 ', 'C', '2017-12-17 21:52:57', '2017-12-17 21:52:57'),
(123, 'bagaimana ikan mas ditemukan oleh', 'H', '2017-12-17 21:53:03', '2017-12-17 21:53:03'),
(124, 'NONE ', 'C', '2017-12-17 21:53:03', '2017-12-17 21:53:03'),
(125, 'siapa penemu ikan mas', 'H', '2017-12-17 21:53:13', '2017-12-17 21:53:13'),
(126, 'ikan mas ditemukan oleh James Watt ', 'C', '2017-12-17 21:53:13', '2017-12-17 21:53:13'),
(127, 'bagaimana ikan mas ditemukan james watt', 'H', '2017-12-17 21:53:28', '2017-12-17 21:53:28'),
(128, 'NONE ', 'C', '2017-12-17 21:53:28', '2017-12-17 21:53:28'),
(129, 'bagaimana ikan mas ditemukan james watt', 'H', '2017-12-17 21:54:11', '2017-12-17 21:54:11'),
(130, 'Proses 3 ', 'C', '2017-12-17 21:54:11', '2017-12-17 21:54:11'),
(131, 'bagaimana ikan mas ditemukan oleh james watt', 'H', '2017-12-17 21:54:18', '2017-12-17 21:54:18'),
(132, 'Proses 3 ', 'C', '2017-12-17 21:54:18', '2017-12-17 21:54:18'),
(133, 'mengapa ikan ditemukan', 'H', '2017-12-17 22:00:25', '2017-12-17 22:00:25'),
(134, 'ka ', 'C', '2017-12-17 22:00:25', '2017-12-17 22:00:25'),
(135, 'mengapa ikan ditemukan', 'H', '2017-12-17 22:00:44', '2017-12-17 22:00:44'),
(136, 'Alasan 2 ', 'C', '2017-12-17 22:00:44', '2017-12-17 22:00:44'),
(137, 'mengapa baju ditemukan', 'H', '2017-12-17 22:01:03', '2017-12-17 22:01:03'),
(138, 'Alasan 1 ', 'C', '2017-12-17 22:01:03', '2017-12-17 22:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE `formats` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formats`
--

INSERT INTO `formats` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'qs yang p o ', 'o p oleh s', NULL, NULL),
(2, 'qs p o ', 'o p oleh s', NULL, NULL),
(3, 'o p oleh qs', 'o p oleh s', NULL, NULL),
(4, 'p o adalah', 's', NULL, NULL),
(5, 'p o adalah', 'o p oleh s', NULL, NULL),
(6, 'o p oleh', 's', NULL, NULL),
(7, 'qk o p', 'o p pada kw', NULL, NULL),
(8, 'qk o p oleh s', 'o p oleh s pada kw', NULL, NULL),
(9, 'qd o p', 'o p di kt', NULL, NULL),
(10, 'qa itu o', 'do1', NULL, NULL),
(11, 'detail tentang o', 'do', NULL, NULL),
(12, 'detail o', 'do', NULL, NULL),
(13, 'qs itu s', 'ds1', NULL, NULL),
(14, 'qs s', 'ds1', NULL, NULL),
(15, 'detail s', 'ds', NULL, NULL),
(16, 'detail tentang s', 'ds', NULL, NULL),
(17, 'qb o p', 'kp', NULL, NULL),
(18, 'qb o p oleh s', 'kp', NULL, NULL),
(19, 'qb o p s', 'kp', NULL, NULL),
(20, 'qm o p oleh s', 'ka', NULL, NULL),
(21, 'qm o p', 'ka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_12_09_142229_create_subjects_table', 1),
(4, '2017_12_09_142301_create_predikats_table', 1),
(5, '2017_12_09_142440_create_objeks_table', 1),
(6, '2017_12_09_142509_create_relasis_table', 1),
(7, '2017_12_09_142559_create_formats_table', 1),
(8, '2017_12_09_142636_create_questions_table', 1),
(9, '2017_12_09_162938_update_table_objek', 2),
(10, '2017_12_15_202243_update_tbl_predikat', 3),
(11, '2017_12_16_131409_create_commands_table', 4),
(12, '2017_12_16_131807_create_commands_table', 5),
(13, '2017_12_17_122821_ubah_table_relasi', 6),
(14, '2017_12_17_131339_ubah_table_objek_dan_subject', 7),
(15, '2017_12_17_135013_ubah_tabel_relasi', 8),
(16, '2017_12_17_135812_ubah_tabel_relasi2', 9);

-- --------------------------------------------------------

--
-- Table structure for table `objeks`
--

CREATE TABLE `objeks` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kata` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_objek` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `objeks`
--

INSERT INTO `objeks` (`id`, `created_at`, `updated_at`, `kata`, `detail_objek`) VALUES
(1, NULL, NULL, 'ikan mas', 'ikan mas adalah hewan air. Hewan air ini'),
(2, NULL, NULL, 'Baju', 'baju adalah'),
(3, NULL, NULL, 'ikan', 'ikan adalah'),
(4, NULL, NULL, 'amerika', 'amerika adalah');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `predikats`
--

CREATE TABLE `predikats` (
  `id` int(10) UNSIGNED NOT NULL,
  `kata` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_parent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('0','aktif','pasif') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `predikats`
--

INSERT INTO `predikats` (`id`, `kata`, `id_parent`, `jenis`, `created_at`, `updated_at`) VALUES
(1, 'Temu', '0', '0', NULL, NULL),
(2, 'Lahir', '0', '0', NULL, NULL),
(3, 'Menemukan', '1', 'aktif', NULL, NULL),
(4, 'ditemukan', '1', 'pasif', NULL, NULL),
(5, 'penemu', '1', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `kata` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pattern` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `kata`, `pattern`, `created_at`, `updated_at`) VALUES
(1, 'Apa', 'qa', NULL, NULL),
(2, 'Dimana', 'qd', NULL, NULL),
(3, 'Siapa', 'qs', NULL, NULL),
(4, 'Bagaimana', 'qb', NULL, NULL),
(5, 'Kapan', 'qk', NULL, NULL),
(6, 'Mengapa', 'qm', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `relasis`
--

CREATE TABLE `relasis` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_predikat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_objek` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_keterangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `keterangan_tempat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_waktu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_proses` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_alasan` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relasis`
--

INSERT INTO `relasis` (`id`, `id_subject`, `id_predikat`, `id_objek`, `id_keterangan`, `created_at`, `updated_at`, `keterangan_tempat`, `keterangan_waktu`, `keterangan_detail`, `keterangan_proses`, `keterangan_alasan`) VALUES
(2, '2', '1', '2', '', NULL, NULL, 'Denpasar', '1901', '', 'Proses satu', 'Alasan 1'),
(3, '2', '1', '3', '', NULL, NULL, 'Badung', '1902', '', 'Proses dua', 'Alasan 2'),
(4, '1', '1', '1', '', NULL, NULL, 'Gianyar', '1903', '', 'Proses 3', 'alasan 3'),
(5, '3', '1', '4', '', NULL, NULL, 'Jembrana', '1904', '', 'Proses 4', 'alasan 4');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `detail_subject` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `nama`, `created_at`, `updated_at`, `detail_subject`) VALUES
(1, 'James Watt', NULL, NULL, 'James Watt adalah'),
(2, 'James Smith', NULL, NULL, 'james Smith adalah penemu. Dia merupakan'),
(3, 'Amerigo Vespuci', NULL, NULL, 'Amerigo vespuci adalah');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objeks`
--
ALTER TABLE `objeks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `predikats`
--
ALTER TABLE `predikats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relasis`
--
ALTER TABLE `relasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
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
-- AUTO_INCREMENT for table `commands`
--
ALTER TABLE `commands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `objeks`
--
ALTER TABLE `objeks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `predikats`
--
ALTER TABLE `predikats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `relasis`
--
ALTER TABLE `relasis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
