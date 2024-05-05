-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2024 at 11:35 PM
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
-- Database: `radius`
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:2:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:11:\"view_client\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"staff\";s:1:\"c\";s:3:\"web\";}}}', 1714986232);

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
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `staff` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `service`, `name`, `address`, `staff`, `status`, `created_at`, `updated_at`) VALUES
(1, '10190900', 'Robot0', 'Tulungagung', '5', '0', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(2, '10190901', 'Robot1', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(3, '10190902', 'Robot2', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(4, '10190903', 'Robot3', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(5, '10190904', 'Robot4', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(6, '10190905', 'Robot5', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(7, '10190906', 'Robot6', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(8, '10190907', 'Robot7', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(9, '10190908', 'Robot8', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(10, '10190909', 'Robot9', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(11, '101909010', 'Robot10', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(12, '101909011', 'Robot11', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(13, '101909012', 'Robot12', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(14, '101909013', 'Robot13', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(15, '101909014', 'Robot14', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(16, '101909015', 'Robot15', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(17, '101909016', 'Robot16', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(18, '101909017', 'Robot17', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(19, '101909018', 'Robot18', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(20, '101909019', 'Robot19', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(21, '101909020', 'Robot20', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(22, '101909021', 'Robot21', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(23, '101909022', 'Robot22', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(24, '101909023', 'Robot23', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(25, '101909024', 'Robot24', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(26, '101909025', 'Robot25', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(27, '101909026', 'Robot26', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(28, '101909027', 'Robot27', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(29, '101909028', 'Robot28', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(30, '101909029', 'Robot29', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(31, '101909030', 'Robot30', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(32, '101909031', 'Robot31', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(33, '101909032', 'Robot32', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(34, '101909033', 'Robot33', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(35, '101909034', 'Robot34', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(36, '101909035', 'Robot35', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(37, '101909036', 'Robot36', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(38, '101909037', 'Robot37', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(39, '101909038', 'Robot38', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(40, '101909039', 'Robot39', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(41, '101909040', 'Robot40', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(42, '101909041', 'Robot41', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(43, '101909042', 'Robot42', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(44, '101909043', 'Robot43', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(45, '101909044', 'Robot44', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(46, '101909045', 'Robot45', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(47, '101909046', 'Robot46', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(48, '101909047', 'Robot47', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(49, '101909048', 'Robot48', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(50, '101909049', 'Robot49', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(51, '101909050', 'Robot50', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(52, '101909051', 'Robot51', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(53, '101909052', 'Robot52', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(54, '101909053', 'Robot53', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(55, '101909054', 'Robot54', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(56, '101909055', 'Robot55', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(57, '101909056', 'Robot56', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(58, '101909057', 'Robot57', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(59, '101909058', 'Robot58', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(60, '101909059', 'Robot59', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(61, '101909060', 'Robot60', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(62, '101909061', 'Robot61', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(63, '101909062', 'Robot62', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(64, '101909063', 'Robot63', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(65, '101909064', 'Robot64', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(66, '101909065', 'Robot65', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(67, '101909066', 'Robot66', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(68, '101909067', 'Robot67', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(69, '101909068', 'Robot68', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(70, '101909069', 'Robot69', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(71, '101909070', 'Robot70', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(72, '101909071', 'Robot71', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(73, '101909072', 'Robot72', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(74, '101909073', 'Robot73', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(75, '101909074', 'Robot74', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(76, '101909075', 'Robot75', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(77, '101909076', 'Robot76', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(78, '101909077', 'Robot77', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(79, '101909078', 'Robot78', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(80, '101909079', 'Robot79', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(81, '101909080', 'Robot80', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(82, '101909081', 'Robot81', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(83, '101909082', 'Robot82', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(84, '101909083', 'Robot83', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(85, '101909084', 'Robot84', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(86, '101909085', 'Robot85', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(87, '101909086', 'Robot86', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(88, '101909087', 'Robot87', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(89, '101909088', 'Robot88', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(90, '101909089', 'Robot89', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(91, '101909090', 'Robot90', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(92, '101909091', 'Robot91', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(93, '101909092', 'Robot92', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(94, '101909093', 'Robot93', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(95, '101909094', 'Robot94', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(96, '101909095', 'Robot95', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(97, '101909096', 'Robot96', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(98, '101909097', 'Robot97', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(99, '101909098', 'Robot98', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(100, '101909099', 'Robot99', 'Tulungagung', '5', '1', '2024-05-04 01:47:27', '2024-05-04 01:47:27'),
(101, '1019090100', 'Robot100', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(102, '1019090101', 'Robot101', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(103, '1019090102', 'Robot102', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(104, '1019090103', 'Robot103', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(105, '1019090104', 'Robot104', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(106, '1019090105', 'Robot105', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(107, '1019090106', 'Robot106', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(108, '1019090107', 'Robot107', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(109, '1019090108', 'Robot108', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(110, '1019090109', 'Robot109', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(111, '1019090110', 'Robot110', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(112, '1019090111', 'Robot111', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(113, '1019090112', 'Robot112', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(114, '1019090113', 'Robot113', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(115, '1019090114', 'Robot114', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(116, '1019090115', 'Robot115', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(117, '1019090116', 'Robot116', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(118, '1019090117', 'Robot117', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(119, '1019090118', 'Robot118', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(120, '1019090119', 'Robot119', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(121, '1019090120', 'Robot120', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(122, '1019090121', 'Robot121', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(123, '1019090122', 'Robot122', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(124, '1019090123', 'Robot123', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(125, '1019090124', 'Robot124', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(126, '1019090125', 'Robot125', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(127, '1019090126', 'Robot126', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(128, '1019090127', 'Robot127', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(129, '1019090128', 'Robot128', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(130, '1019090129', 'Robot129', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(131, '1019090130', 'Robot130', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(132, '1019090131', 'Robot131', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(133, '1019090132', 'Robot132', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(134, '1019090133', 'Robot133', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(135, '1019090134', 'Robot134', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(136, '1019090135', 'Robot135', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(137, '1019090136', 'Robot136', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(138, '1019090137', 'Robot137', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(139, '1019090138', 'Robot138', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(140, '1019090139', 'Robot139', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(141, '1019090140', 'Robot140', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(142, '1019090141', 'Robot141', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(143, '1019090142', 'Robot142', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(144, '1019090143', 'Robot143', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(145, '1019090144', 'Robot144', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(146, '1019090145', 'Robot145', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(147, '1019090146', 'Robot146', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(148, '1019090147', 'Robot147', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(149, '1019090148', 'Robot148', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(150, '1019090149', 'Robot149', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(151, '1019090150', 'Robot150', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(152, '1019090151', 'Robot151', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(153, '1019090152', 'Robot152', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(154, '1019090153', 'Robot153', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(155, '1019090154', 'Robot154', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(156, '1019090155', 'Robot155', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(157, '1019090156', 'Robot156', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(158, '1019090157', 'Robot157', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(159, '1019090158', 'Robot158', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(160, '1019090159', 'Robot159', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(161, '1019090160', 'Robot160', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(162, '1019090161', 'Robot161', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(163, '1019090162', 'Robot162', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(164, '1019090163', 'Robot163', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(165, '1019090164', 'Robot164', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(166, '1019090165', 'Robot165', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(167, '1019090166', 'Robot166', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(168, '1019090167', 'Robot167', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(169, '1019090168', 'Robot168', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(170, '1019090169', 'Robot169', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(171, '1019090170', 'Robot170', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(172, '1019090171', 'Robot171', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(173, '1019090172', 'Robot172', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(174, '1019090173', 'Robot173', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(175, '1019090174', 'Robot174', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(176, '1019090175', 'Robot175', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(177, '1019090176', 'Robot176', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(178, '1019090177', 'Robot177', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(179, '1019090178', 'Robot178', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(180, '1019090179', 'Robot179', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(181, '1019090180', 'Robot180', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(182, '1019090181', 'Robot181', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(183, '1019090182', 'Robot182', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(184, '1019090183', 'Robot183', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(185, '1019090184', 'Robot184', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(186, '1019090185', 'Robot185', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(187, '1019090186', 'Robot186', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(188, '1019090187', 'Robot187', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(189, '1019090188', 'Robot188', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(190, '1019090189', 'Robot189', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(191, '1019090190', 'Robot190', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(192, '1019090191', 'Robot191', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(193, '1019090192', 'Robot192', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(194, '1019090193', 'Robot193', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(195, '1019090194', 'Robot194', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(196, '1019090195', 'Robot195', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(197, '1019090196', 'Robot196', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(198, '1019090197', 'Robot197', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(199, '1019090198', 'Robot198', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03'),
(200, '1019090199', 'Robot199', 'Tulungagung', '5', '0', '2024-05-05 01:30:03', '2024-05-05 01:30:03');

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
(4, '2024_05_03_103904_add_column_image_to_users_table', 2),
(5, '2024_05_03_115352_create_clients_table', 3),
(6, '2024_05_04_044729_create_clients_table', 4),
(7, '2024_05_05_083419_create_permission_tables', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_user', 'web', '2024-05-05 01:46:02', '2024-05-05 01:46:02'),
(2, 'view_client', 'web', '2024-05-05 01:52:59', '2024-05-05 01:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-05-05 01:39:17', '2024-05-05 01:39:17'),
(2, 'staff', 'web', '2024-05-05 01:39:17', '2024-05-05 01:39:17'),
(3, 'client', 'web', '2024-05-05 01:42:45', '2024-05-05 01:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 2);

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
('WETtj8N4VRxyfhxS8P3k2mw6V4jKCRgRxWdxyIZY', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidGhnaThnNXM2Z0FqdXdPU1N2cDRsTEkxeFJSaHVwVHIxZWhHb2loRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1714900321);

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
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Gosindi', 'ygy@mail.com', NULL, '$2y$12$NkpcLZ0m/OuJwWzLe0Tq9e4BnQUJ8aLCjywam6A2MpVsx9q2i4apC', NULL, NULL, '2024-05-03 01:58:08', '2024-05-03 02:14:23'),
(3, 'Ahmad', 'max@mail.com', NULL, '$2y$12$TNlQe/2OUH7qKOnJhJXCBOWr4iKQSM1nks/Ubg1o6LWSuFtfoZrYW', NULL, NULL, '2024-05-03 03:35:18', '2024-05-03 03:35:18'),
(5, 'Iqbal', 'bal@mail.com', NULL, '$2y$12$C2JwtK7SPM1w24p60NskAO6JKriweg0ucxw3MW3ubKlMfgnKusW3a', NULL, '2024-05-03aziz.jpg', '2024-05-03 04:08:10', '2024-05-03 04:19:49');

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
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
