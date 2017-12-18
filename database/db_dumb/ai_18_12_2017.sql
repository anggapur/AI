-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2017 at 12:33 AM
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
(138, 'Alasan 1 ', 'C', '2017-12-17 22:01:03', '2017-12-17 22:01:03'),
(139, 'detail tentang dia', 'H', '2017-12-17 22:12:38', '2017-12-17 22:12:38'),
(140, '[action] ', 'C', '2017-12-17 22:12:38', '2017-12-17 22:12:38'),
(141, 'detail tentang dia', 'H', '2017-12-17 22:12:44', '2017-12-17 22:12:44'),
(142, '[action] ', 'C', '2017-12-17 22:12:44', '2017-12-17 22:12:44'),
(143, 'siapa yang menemukan baju', 'H', '2017-12-17 22:14:29', '2017-12-17 22:14:29'),
(144, 'siapa yang menemukan baju', 'H', '2017-12-17 22:14:39', '2017-12-17 22:14:39'),
(145, 'Baju ditemukan oleh James Smith ', 'C', '2017-12-17 22:14:39', '2017-12-17 22:14:39'),
(146, 'siapa yang menemukan baju', 'H', '2017-12-17 22:15:00', '2017-12-17 22:15:00'),
(147, 'Baju ditemukan oleh James Smith ', 'C', '2017-12-17 22:15:00', '2017-12-17 22:15:00'),
(148, 'siapa yang menemukan baju', 'H', '2017-12-17 22:19:51', '2017-12-17 22:19:51'),
(149, 'siapa yang menemukan baju', 'H', '2017-12-17 22:20:01', '2017-12-17 22:20:01'),
(150, 'Baju ditemukan oleh James Smith', 'C', '2017-12-17 22:20:02', '2017-12-17 22:20:02'),
(151, 'detail tentang dia', 'H', '2017-12-17 22:20:11', '2017-12-17 22:20:11'),
(152, 'detail tentang dia', 'H', '2017-12-17 23:02:17', '2017-12-17 23:02:17'),
(153, 'detail tentang itu', 'H', '2017-12-17 23:02:37', '2017-12-17 23:02:37'),
(154, 'detail tentang itu', 'H', '2017-12-17 23:02:46', '2017-12-17 23:02:46'),
(155, 'detail tentang itu', 'H', '2017-12-17 23:03:59', '2017-12-17 23:03:59'),
(156, 'detail tentang itu', 'H', '2017-12-17 23:05:05', '2017-12-17 23:05:05'),
(157, 'detail tentang itu', 'H', '2017-12-17 23:06:15', '2017-12-17 23:06:15'),
(158, 'detail tentang itu', 'H', '2017-12-17 23:11:54', '2017-12-17 23:11:54'),
(159, 'detail tentang itu', 'H', '2017-12-17 23:13:36', '2017-12-17 23:13:36'),
(160, 'NONE ', 'C', '2017-12-17 23:13:36', '2017-12-17 23:13:36'),
(161, 'detail tentang itu', 'H', '2017-12-17 23:14:41', '2017-12-17 23:14:41'),
(162, 'NONE ', 'C', '2017-12-17 23:14:41', '2017-12-17 23:14:41'),
(163, 'detail tentang itu', 'H', '2017-12-17 23:14:57', '2017-12-17 23:14:57'),
(164, 'NONE ', 'C', '2017-12-17 23:14:57', '2017-12-17 23:14:57'),
(165, 'detail tentang itu', 'H', '2017-12-17 23:15:32', '2017-12-17 23:15:32'),
(166, 'NONE ', 'C', '2017-12-17 23:15:33', '2017-12-17 23:15:33'),
(167, 'detail tentang itu', 'H', '2017-12-17 23:16:45', '2017-12-17 23:16:45'),
(168, 'detail tentang itu', 'H', '2017-12-17 23:17:22', '2017-12-17 23:17:22'),
(170, 'detail tentang itu', 'H', '2017-12-17 23:21:32', '2017-12-17 23:21:32'),
(171, 'NONE ', 'C', '2017-12-17 23:21:33', '2017-12-17 23:21:33'),
(172, 'detail tentang itu', 'H', '2017-12-17 23:22:34', '2017-12-17 23:22:34'),
(173, 'NONE ', 'C', '2017-12-17 23:22:34', '2017-12-17 23:22:34'),
(174, 'detail tentang itu', 'H', '2017-12-17 23:22:47', '2017-12-17 23:22:47'),
(175, 'NONE ', 'C', '2017-12-17 23:22:47', '2017-12-17 23:22:47'),
(176, 'detail tentang itu', 'H', '2017-12-17 23:23:09', '2017-12-17 23:23:09'),
(177, 'Baju ditemukan oleh James Smith pada 1901 ', 'C', '2017-12-17 23:23:09', '2017-12-17 23:23:09'),
(178, 'detail tentang itu', 'H', '2017-12-17 23:23:17', '2017-12-17 23:23:17'),
(179, 'NONE ', 'C', '2017-12-17 23:23:17', '2017-12-17 23:23:17'),
(180, 'detail tentang itu', 'H', '2017-12-17 23:25:09', '2017-12-17 23:25:09'),
(181, 'NONE ', 'C', '2017-12-17 23:25:09', '2017-12-17 23:25:09'),
(182, 'detail tentang itu', 'H', '2017-12-17 23:25:41', '2017-12-17 23:25:41'),
(183, 'NONE ', 'C', '2017-12-17 23:25:42', '2017-12-17 23:25:42'),
(184, 'detail tentang itu', 'H', '2017-12-17 23:26:16', '2017-12-17 23:26:16'),
(185, 'NONE ', 'C', '2017-12-17 23:26:16', '2017-12-17 23:26:16'),
(186, 'siapa penemu ikan', 'H', '2017-12-17 23:26:39', '2017-12-17 23:26:39'),
(187, 'siapa penemu ikan', 'H', '2017-12-17 23:26:39', '2017-12-17 23:26:39'),
(188, 'siapa penemu ikan', 'H', '2017-12-17 23:26:46', '2017-12-17 23:26:46'),
(189, 'siapa penemu ikan', 'H', '2017-12-17 23:26:58', '2017-12-17 23:26:58'),
(190, 'ikan ditemukan oleh James Smith ', 'C', '2017-12-17 23:26:58', '2017-12-17 23:26:58'),
(191, 'detail tentang itu', 'H', '2017-12-17 23:27:26', '2017-12-17 23:27:26'),
(192, 'detail tentang itu', 'H', '2017-12-17 23:27:41', '2017-12-17 23:27:41'),
(193, 'siapa penemu ikan', 'H', '2017-12-17 23:28:01', '2017-12-17 23:28:01'),
(194, 'ikan ditemukan oleh James Smith ', 'C', '2017-12-17 23:28:01', '2017-12-17 23:28:01'),
(195, 'siapa penemu ikan', 'H', '2017-12-17 23:30:30', '2017-12-17 23:30:30'),
(196, 'James Smith', 'C', '2017-12-17 23:30:30', '2017-12-17 23:30:30'),
(197, 'siapa penemu ikan', 'H', '2017-12-17 23:31:01', '2017-12-17 23:31:01'),
(198, 'ikan ditemukan oleh James Smith', 'C', '2017-12-17 23:31:02', '2017-12-17 23:31:02'),
(199, 'detail tentang itu', 'H', '2017-12-17 23:31:11', '2017-12-17 23:31:11'),
(200, 'detail tentang itu', 'H', '2017-12-17 23:34:32', '2017-12-17 23:34:32'),
(201, 'detail tentang itu', 'H', '2017-12-17 23:34:41', '2017-12-17 23:34:41'),
(202, 'detail tentang itu', 'H', '2017-12-17 23:34:54', '2017-12-17 23:34:54'),
(203, 'detail tentang itu', 'H', '2017-12-17 23:35:08', '2017-12-17 23:35:08'),
(204, 'detail tentang itu', 'H', '2017-12-17 23:35:24', '2017-12-17 23:35:24'),
(205, 'siapa penemu ikan mas', 'H', '2017-12-17 23:35:32', '2017-12-17 23:35:32'),
(206, 'ikan mas ditemukan oleh James Watt', 'C', '2017-12-17 23:35:32', '2017-12-17 23:35:32'),
(207, 'detail tentang itu', 'H', '2017-12-17 23:35:40', '2017-12-17 23:35:40'),
(208, 'detail tentang itu', 'H', '2017-12-17 23:38:48', '2017-12-17 23:38:48'),
(209, 'detail tentang itu', 'H', '2017-12-17 23:39:01', '2017-12-17 23:39:01'),
(210, 'detail tentang itu', 'H', '2017-12-17 23:42:45', '2017-12-17 23:42:45'),
(211, 'detail tentang dia', 'H', '2017-12-17 23:42:55', '2017-12-17 23:42:55'),
(212, 'siapa penemu batu', 'H', '2017-12-17 23:58:12', '2017-12-17 23:58:12'),
(213, 'NONE', 'C', '2017-12-17 23:58:12', '2017-12-17 23:58:12'),
(214, 'siapa penemu baju', 'H', '2017-12-17 23:58:18', '2017-12-17 23:58:18'),
(215, 'Baju ditemukan oleh James Smith', 'C', '2017-12-17 23:58:19', '2017-12-17 23:58:19'),
(216, 'detail tentang dia', 'H', '2017-12-17 23:58:26', '2017-12-17 23:58:26'),
(217, 'detail tentang itu', 'H', '2017-12-17 23:58:32', '2017-12-17 23:58:32'),
(218, 'siapa penemu ikan mas', 'H', '2017-12-18 11:17:59', '2017-12-18 11:17:59'),
(219, 'ikan mas ditemukan oleh James Watt', 'C', '2017-12-18 11:17:59', '2017-12-18 11:17:59'),
(220, 'siapa penemu ikan mas', 'H', '2017-12-18 11:18:09', '2017-12-18 11:18:09'),
(221, 'ikan mas ditemukan oleh James Watt', 'C', '2017-12-18 11:18:10', '2017-12-18 11:18:10'),
(222, 'siapa penemu ikan', 'H', '2017-12-18 11:18:33', '2017-12-18 11:18:33'),
(223, 'ikan ditemukan oleh James Smith', 'C', '2017-12-18 11:18:34', '2017-12-18 11:18:34'),
(224, 'dimana ikan ditemukan', 'H', '2017-12-18 11:18:49', '2017-12-18 11:18:49'),
(225, 'ikan ditemukan di Badung', 'C', '2017-12-18 11:18:49', '2017-12-18 11:18:49'),
(226, 'detail tentang itu', 'H', '2017-12-18 11:19:04', '2017-12-18 11:19:04'),
(227, 'detail tentang dia', 'H', '2017-12-18 11:19:13', '2017-12-18 11:19:13'),
(228, 'detail tentang ikan', 'H', '2017-12-18 11:19:26', '2017-12-18 11:19:26'),
(229, 'ikan adalah', 'C', '2017-12-18 11:19:26', '2017-12-18 11:19:26'),
(230, 'siapa yang menemukan ikan', 'H', '2017-12-18 11:27:18', '2017-12-18 11:27:18'),
(231, 'ikan ditemukan oleh James Smith', 'C', '2017-12-18 11:27:18', '2017-12-18 11:27:18'),
(232, 'detail tentang dia', 'H', '2017-12-18 11:27:28', '2017-12-18 11:27:28'),
(233, 'detail tentang itu', 'H', '2017-12-18 11:27:36', '2017-12-18 11:27:36'),
(234, 'detail tentang dia', 'H', '2017-12-19 06:20:43', '2017-12-19 06:20:43'),
(235, 'detail tentang dia', 'H', '2017-12-19 06:20:54', '2017-12-19 06:20:54'),
(236, 'detail tentang dia', 'H', '2017-12-19 06:21:03', '2017-12-19 06:21:03'),
(237, 'detail tentang dia', 'H', '2017-12-19 06:21:15', '2017-12-19 06:21:15'),
(238, 'detail tentang dia', 'H', '2017-12-19 06:22:08', '2017-12-19 06:22:08'),
(239, 'detail tentang dia', 'H', '2017-12-19 06:22:23', '2017-12-19 06:22:23'),
(240, 'siapa yang menemukan ikan', 'H', '2017-12-19 06:22:58', '2017-12-19 06:22:58'),
(241, 'ikan ditemukan oleh James Smith', 'C', '2017-12-19 06:22:58', '2017-12-19 06:22:58'),
(242, 'siapa yang menemukan ikan', 'H', '2017-12-19 06:23:06', '2017-12-19 06:23:06'),
(243, 'ikan ditemukan oleh James Smith', 'C', '2017-12-19 06:23:06', '2017-12-19 06:23:06'),
(244, 'detail tentang dia', 'H', '2017-12-19 06:23:12', '2017-12-19 06:23:12'),
(245, 'detail tentang itu', 'H', '2017-12-19 06:23:20', '2017-12-19 06:23:20'),
(246, 'detail tentang itu', 'H', '2017-12-19 06:23:35', '2017-12-19 06:23:35'),
(247, 'detail tentang itu', 'H', '2017-12-19 06:23:40', '2017-12-19 06:23:40'),
(248, 'siapa yang menemukan ikan mas', 'H', '2017-12-19 06:26:23', '2017-12-19 06:26:23'),
(249, 'ikan mas ditemukan oleh James Watt', 'C', '2017-12-19 06:26:23', '2017-12-19 06:26:23'),
(250, 'siapa yang menemukan ikan mas', 'H', '2017-12-19 06:38:10', '2017-12-19 06:38:10'),
(251, 'ikan mas ditemukan oleh James Watt', 'C', '2017-12-19 06:38:11', '2017-12-19 06:38:11'),
(252, 'siapa yang menemukan ikan', 'H', '2017-12-19 06:38:17', '2017-12-19 06:38:17'),
(253, 'ikan ditemukan oleh James Smith', 'C', '2017-12-19 06:38:17', '2017-12-19 06:38:17'),
(254, 'siapa yang menemukan ikan', 'H', '2017-12-19 06:39:45', '2017-12-19 06:39:45'),
(255, 'ikan ditemukan oleh James Smith', 'C', '2017-12-19 06:39:45', '2017-12-19 06:39:45'),
(256, 'siapa yang menemukan ikan', 'H', '2017-12-19 06:54:46', '2017-12-19 06:54:46'),
(257, 'ikan ditemukan oleh James Smith', 'C', '2017-12-19 06:54:46', '2017-12-19 06:54:46'),
(258, 'siapa yang menemukan ikan', 'H', '2017-12-19 06:54:55', '2017-12-19 06:54:55'),
(259, 'ikan ditemukan oleh James Smith', 'C', '2017-12-19 06:54:56', '2017-12-19 06:54:56'),
(260, 'siapa yang menemukan ikan', 'H', '2017-12-19 06:54:58', '2017-12-19 06:54:58'),
(261, 'ikan ditemukan oleh James Smith', 'C', '2017-12-19 06:54:58', '2017-12-19 06:54:58'),
(262, 'siapa yang menemukan ikan', 'H', '2017-12-19 06:55:04', '2017-12-19 06:55:04'),
(263, 'ikan ditemukan oleh James Smith', 'C', '2017-12-19 06:55:04', '2017-12-19 06:55:04'),
(264, 'kapan ikan mas ditemukan', 'H', '2017-12-19 06:57:41', '2017-12-19 06:57:41'),
(265, 'ikan mas ditemukan pada 1903', 'C', '2017-12-19 06:57:42', '2017-12-19 06:57:42'),
(266, 'kapan ikan mas ditemukan', 'H', '2017-12-19 06:57:54', '2017-12-19 06:57:54'),
(267, 'ikan mas ditemukan pada 1903', 'C', '2017-12-19 06:57:54', '2017-12-19 06:57:54'),
(268, 'kapan ikan mas ditemukan', 'H', '2017-12-19 06:58:10', '2017-12-19 06:58:10'),
(269, 'ikan mas ditemukan pada 1903', 'C', '2017-12-19 06:58:10', '2017-12-19 06:58:10'),
(270, 'siapa penemu mesin uap', 'H', '2017-12-19 07:05:27', '2017-12-19 07:05:27'),
(271, 'Mesin Uap ditemukan oleh James Watt', 'C', '2017-12-19 07:05:28', '2017-12-19 07:05:28'),
(272, 'kapan mesin uap ditemukan', 'H', '2017-12-19 07:05:41', '2017-12-19 07:05:41'),
(273, 'Mesin Uap ditemukan pada 1760', 'C', '2017-12-19 07:05:41', '2017-12-19 07:05:41'),
(274, 'apa itu mesin uap', 'H', '2017-12-19 07:05:54', '2017-12-19 07:05:54'),
(275, 'Mesin uap adalah mesin yang menggunakan energi panas dalam uap air dan mengubahnya menjadi energi mekanis', 'C', '2017-12-19 07:05:54', '2017-12-19 07:05:54'),
(276, 'detail tentang mesin uap', 'H', '2017-12-19 07:06:37', '2017-12-19 07:06:37'),
(277, 'Mesin uap adalah mesin yang menggunakan energi panas dalam uap air dan mengubahnya menjadi energi mekanis. Mesin uap digunakan dalam pompa, lokomotif dan kapal laut, dan sangat penting dalam Revolusi Industri.\r\n\r\nMesin uap merupakan mesin pembakaran eksternal, dengan cairan yang terpisah dari hasil pembakaran. Sumber panas yang dapat digunakan yaitu tenaga surya, tenaga nuklir, atau tenaga panas bumi. Jika uap berkembang melalui piston atau turbin, akan menyebabkan kerja mekanik.', 'C', '2017-12-19 07:06:37', '2017-12-19 07:06:37'),
(278, 'detail tentang dia', 'H', '2017-12-19 07:07:10', '2017-12-19 07:07:10'),
(279, 'siapa yang menemukan konputer', 'H', '2017-12-19 07:10:39', '2017-12-19 07:10:39'),
(280, 'NONE', 'C', '2017-12-19 07:10:39', '2017-12-19 07:10:39'),
(281, 'siapa yang menemukan komputer', 'H', '2017-12-19 07:10:51', '2017-12-19 07:10:51'),
(282, 'Komputer ditemukan oleh Charles Babbage', 'C', '2017-12-19 07:10:51', '2017-12-19 07:10:51'),
(283, 'detail tentang dia', 'H', '2017-12-19 07:11:05', '2017-12-19 07:11:05'),
(284, 'dimana komputer ditemukan', 'H', '2017-12-19 07:13:10', '2017-12-19 07:13:10'),
(285, 'Komputer ditemukan di London', 'C', '2017-12-19 07:13:10', '2017-12-19 07:13:10'),
(286, 'kapan komputer ditemukan', 'H', '2017-12-19 07:13:20', '2017-12-19 07:13:20'),
(287, 'Komputer ditemukan pada 1821', 'C', '2017-12-19 07:13:21', '2017-12-19 07:13:21'),
(288, 'detail tentang itu', 'H', '2017-12-19 07:13:56', '2017-12-19 07:13:56'),
(289, 'kapan charles ditemukan', 'H', '2017-12-19 07:15:36', '2017-12-19 07:15:36'),
(290, 'Charles Babbage Menemukan pada 1821', 'C', '2017-12-19 07:15:37', '2017-12-19 07:15:37'),
(291, 'kapan charles ditemukan', 'H', '2017-12-19 07:15:47', '2017-12-19 07:15:47'),
(292, 'Charles Babbage Menemukan pada 1821', 'C', '2017-12-19 07:15:47', '2017-12-19 07:15:47'),
(293, 'kapan charles dilahirkan', 'H', '2017-12-19 07:15:59', '2017-12-19 07:15:59'),
(294, 'NONE', 'C', '2017-12-19 07:15:59', '2017-12-19 07:15:59'),
(295, 'kapan charles lahir', 'H', '2017-12-19 07:16:16', '2017-12-19 07:16:16'),
(296, 'kapan charles lahir', 'H', '2017-12-19 07:17:17', '2017-12-19 07:17:17'),
(297, 'kapan charles lahir', 'H', '2017-12-19 07:17:41', '2017-12-19 07:17:41'),
(298, 'kapan charles lahir', 'H', '2017-12-19 07:18:17', '2017-12-19 07:18:17'),
(299, 'kapan charles lahir', 'H', '2017-12-19 07:19:04', '2017-12-19 07:19:04'),
(300, 'stabil Mexico virus', 'H', '2017-12-19 07:19:17', '2017-12-19 07:19:17'),
(301, 'kapan charles lahir', 'H', '2017-12-19 07:19:37', '2017-12-19 07:19:37'),
(302, 'kapan charles lahir', 'H', '2017-12-19 07:19:48', '2017-12-19 07:19:48'),
(303, 'kapan charles lahir', 'H', '2017-12-19 07:21:18', '2017-12-19 07:21:18'),
(304, 'kapan charles lahir', 'H', '2017-12-19 07:21:42', '2017-12-19 07:21:42'),
(305, 'kapan charles lahir', 'H', '2017-12-19 07:21:50', '2017-12-19 07:21:50'),
(306, 'siapa penemu ikan', 'H', '2017-12-19 07:22:06', '2017-12-19 07:22:06'),
(307, 'siapa yang menemukan ikan', 'H', '2017-12-19 07:22:15', '2017-12-19 07:22:15'),
(308, 'siapa yang menemukan ikan', 'H', '2017-12-19 07:22:26', '2017-12-19 07:22:26'),
(309, 'NONE', 'C', '2017-12-19 07:22:26', '2017-12-19 07:22:26'),
(310, 'siapa yang menemukan mesin uap', 'H', '2017-12-19 07:22:49', '2017-12-19 07:22:49'),
(311, 'Mesin Uap ditemukan oleh James Watt', 'C', '2017-12-19 07:22:49', '2017-12-19 07:22:49'),
(312, 'kapan charles lahir', 'H', '2017-12-19 07:23:00', '2017-12-19 07:23:00'),
(313, 'kapan charles lahir', 'H', '2017-12-19 07:23:31', '2017-12-19 07:23:31'),
(314, 'kapan charles lahir', 'H', '2017-12-19 07:23:49', '2017-12-19 07:23:49'),
(315, 'kapan charles lahir', 'H', '2017-12-19 07:24:05', '2017-12-19 07:24:05'),
(316, 'kapan charles lahir', 'H', '2017-12-19 07:24:15', '2017-12-19 07:24:15'),
(317, 'kapan charles lahir', 'H', '2017-12-19 07:24:40', '2017-12-19 07:24:40'),
(318, 'siapa yang menemukan mesin uap', 'H', '2017-12-19 07:24:49', '2017-12-19 07:24:49'),
(319, 'Mesin Uap ditemukan oleh James Watt', 'C', '2017-12-19 07:24:49', '2017-12-19 07:24:49'),
(320, 'detail tentang itu', 'H', '2017-12-19 07:24:57', '2017-12-19 07:24:57'),
(321, 'detail tentang james watt', 'H', '2017-12-19 07:25:05', '2017-12-19 07:25:05'),
(322, 'James Watt adalah penemu yang mengembangkan mesin uap yang menjadi dasar dari Revolusi Industri.\r\n\r\nJames Watt lahir pada tanggal 19 Januari, 1736 di Greenock, satu kota pelabuhan laut di Firth Clyde, Skotlandia. Ayahnya adalah pemilik kapal dan kontraktor, sedangkan ibunya, Agnes Muirhead, datang dari keluarga terhormat dan berpendidikan.\r\n\r\nWatt bersekolah secara tak teratur tetapi dan lebih banyak mendapat pendidikan di rumah oleh ibunya. Dia menunjukkan ketangkasan yang luar biasa dan bakat untuk ilmu pasti seperti matematika, walaupun bahasa Latin dan Yunani tidak menggerakkan hatinya, dia menyukai legenda dan cerita rakyat Skotlandia.', 'C', '2017-12-19 07:25:05', '2017-12-19 07:25:05'),
(323, 'detail tentang james watt', 'H', '2017-12-19 07:26:16', '2017-12-19 07:26:16'),
(324, 'James Watt adalah penemu yang mengembangkan mesin uap yang menjadi dasar dari Revolusi Industri.\r\n\r\nJames Watt lahir pada tanggal 19 Januari, 1736 di Greenock, satu kota pelabuhan laut di Firth Clyde, Skotlandia. Ayahnya adalah pemilik kapal dan kontraktor, sedangkan ibunya, Agnes Muirhead, datang dari keluarga terhormat dan berpendidikan.\r\n\r\nWatt bersekolah secara tak teratur tetapi dan lebih banyak mendapat pendidikan di rumah oleh ibunya. Dia menunjukkan ketangkasan yang luar biasa dan bakat untuk ilmu pasti seperti matematika, walaupun bahasa Latin dan Yunani tidak menggerakkan hatinya, dia menyukai legenda dan cerita rakyat Skotlandia.', 'C', '2017-12-19 07:26:16', '2017-12-19 07:26:16'),
(325, 'siapa itu charles', 'H', '2017-12-19 07:26:35', '2017-12-19 07:26:35'),
(326, 'Charles Babbage merupakan salah seorang ilmuwan di dunia yang tercatat sebagai penemu Komputer Pertama, yang telah banyak memberikan karyanya pada kehidupan manusia, khususnya bidang komputer', 'C', '2017-12-19 07:26:35', '2017-12-19 07:26:35'),
(327, 'siapa yang menemukan mesin', 'H', '2017-12-19 07:27:31', '2017-12-19 07:27:31'),
(328, 'Mesin Uap ditemukan oleh James Watt', 'C', '2017-12-19 07:27:31', '2017-12-19 07:27:31'),
(329, 'siapa yang menemukan komputer', 'H', '2017-12-19 07:28:00', '2017-12-19 07:28:00'),
(330, 'Komputer ditemukan oleh Charles Babbage', 'C', '2017-12-19 07:28:01', '2017-12-19 07:28:01'),
(331, 'siapa yang menemukan mesin uap', 'H', '2017-12-19 07:28:30', '2017-12-19 07:28:30'),
(332, 'Mesin Uap ditemukan oleh James Watt', 'C', '2017-12-19 07:28:31', '2017-12-19 07:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE `formats` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` enum('uniq','pattern') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formats`
--

INSERT INTO `formats` (`id`, `question`, `answer`, `created_at`, `updated_at`, `state`) VALUES
(1, 'qs yang p o ', 'o p oleh s', NULL, NULL, 'pattern'),
(2, 'qs p o ', 'o p oleh s', NULL, NULL, 'pattern'),
(3, 'o p oleh qs', 'o p oleh s', NULL, NULL, 'pattern'),
(4, 'p o adalah', 's', NULL, NULL, 'pattern'),
(5, 'p o adalah', 'o p oleh s', NULL, NULL, 'pattern'),
(6, 'o p oleh', 's', NULL, NULL, 'pattern'),
(7, 'qk o p', 'o p pada kw', NULL, NULL, 'pattern'),
(8, 'qk o p oleh s', 'o p oleh s pada kw', NULL, NULL, 'pattern'),
(9, 'qd o p', 'o p di kt', NULL, NULL, 'pattern'),
(10, 'qa itu o', 'do1', NULL, NULL, 'pattern'),
(11, 'detail tentang o', 'do', NULL, NULL, 'pattern'),
(12, 'detail o', 'do', NULL, NULL, 'pattern'),
(13, 'qs itu s', 'ds1', NULL, NULL, 'pattern'),
(14, 'qs s', 'ds1', NULL, NULL, 'pattern'),
(15, 'detail s', 'ds', NULL, NULL, 'pattern'),
(16, 'detail tentang s', 'ds', NULL, NULL, 'pattern'),
(17, 'qb o p', 'kp', NULL, NULL, 'pattern'),
(18, 'qb o p oleh s', 'kp', NULL, NULL, 'pattern'),
(19, 'qb o p s', 'kp', NULL, NULL, 'pattern'),
(20, 'qm o p oleh s', 'ka', NULL, NULL, 'pattern'),
(21, 'qm o p', 'ka', NULL, NULL, 'pattern'),
(22, 'detail tentang dia', 'ds', NULL, NULL, 'uniq'),
(23, 'detail tentang itu', 'do', NULL, NULL, 'uniq'),
(24, 'qk s p', 's p pada kw', NULL, NULL, 'pattern');

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
(16, '2017_12_17_135812_ubah_tabel_relasi2', 9),
(17, '2017_12_17_153659_ubah_table_fomat', 10);

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
(1, NULL, NULL, 'Mesin Uap', 'Mesin uap adalah mesin yang menggunakan energi panas dalam uap air dan mengubahnya menjadi energi mekanis. Mesin uap digunakan dalam pompa, lokomotif dan kapal laut, dan sangat penting dalam Revolusi Industri.\r\n\r\nMesin uap merupakan mesin pembakaran eksternal, dengan cairan yang terpisah dari hasil pembakaran. Sumber panas yang dapat digunakan yaitu tenaga surya, tenaga nuklir, atau tenaga panas bumi. Jika uap berkembang melalui piston atau turbin, akan menyebabkan kerja mekanik.'),
(2, NULL, NULL, 'Komputer', 'Komputer adalah alat yang dipakai untuk mengolah data menurut prosedur yang telah dirumuskan. Kata computer pada awalnya dipergunakan untuk menggambarkan orang yang perkerjaannya melakukan perhitungan aritmetika, dengan atau tanpa alat bantu.');

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
(2, '1', '1', '1', '', NULL, NULL, 'Amerika Serikat', '1760', '', '', 'Sebagai Moda Transportasi'),
(6, '2', '1', '2', '', NULL, NULL, 'London', '1821', '', '', 'komputer dibuat sebagai mesin pemanipulasi simbol umum, serta mempunyai beberapa karakteristik dari komputer modern. Diantaranya adalah penggunaan punched card, sebuah unit memori untuk memasukkan angka, dan berbagai elemen dasar komputer lainnya.'),
(7, '2', '2', '0', '', NULL, NULL, 'London', '1791', '', '', '');

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
(1, 'James Watt', NULL, NULL, 'James Watt adalah penemu yang mengembangkan mesin uap yang menjadi dasar dari Revolusi Industri.\r\n\r\nJames Watt lahir pada tanggal 19 Januari, 1736 di Greenock, satu kota pelabuhan laut di Firth Clyde, Skotlandia. Ayahnya adalah pemilik kapal dan kontraktor, sedangkan ibunya, Agnes Muirhead, datang dari keluarga terhormat dan berpendidikan.\r\n\r\nWatt bersekolah secara tak teratur tetapi dan lebih banyak mendapat pendidikan di rumah oleh ibunya. Dia menunjukkan ketangkasan yang luar biasa dan bakat untuk ilmu pasti seperti matematika, walaupun bahasa Latin dan Yunani tidak menggerakkan hatinya, dia menyukai legenda dan cerita rakyat Skotlandia.'),
(2, 'Charles Babbage', NULL, NULL, 'Charles Babbage merupakan salah seorang ilmuwan di dunia yang tercatat sebagai penemu Komputer Pertama, yang telah banyak memberikan karyanya pada kehidupan manusia, khususnya bidang komputer.');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;
--
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
