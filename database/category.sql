-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2016 at 03:45 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nghienphim`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(32) NOT NULL,
  `alias` varchar(355) NOT NULL,
  `description` varchar(32) DEFAULT NULL,
  `priority` int(8) DEFAULT '0',
  `display_order` int(11) NOT NULL DEFAULT '1',
  `slug` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `thumb` text,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent_id`, `type`, `name`, `alias`, `description`, `priority`, `display_order`, `slug`, `status`, `is_hot`, `thumb`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Hành động', '', '', 0, 1, 'phim-hanh-dong', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(2, 0, 1, 'Phiêu lưu', '', '', 0, 1, 'phim-phieu-luu', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(5, 0, 1, 'Tình cảm', '', '', 0, 1, 'phim-tinh-cam', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(6, 0, 1, 'Hoạt hình', '', '', 0, 1, 'phim-hoat-hinh', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(7, 0, 1, 'Hình sự', '', '', 0, 1, 'phim-hinh-su', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(8, 0, 1, 'Tâm lý', '', '', 0, 1, 'phim-tam-ly', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(9, 0, 1, 'Viễn tưởng', '', '', 0, 1, 'phim-vien-tuong', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(10, 0, 1, 'Cổ trang', '', '', 0, 1, 'phim-co-trang', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(11, 0, 1, 'Hài hước', '', '', 0, 1, 'phim-hai-huoc', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(12, 0, 1, 'Chiến tranh', '', '', 0, 1, 'phim-chien-tranh', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(13, 0, 1, 'Ma Kinh Dị', '', 'Phim kinh dị', 0, 1, 'phim-ma-kinh-di', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(14, 0, 2, 'Phim', '', '', 0, 1, 'phim', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(15, 0, 2, 'Diễn viên', '', '', 0, 1, 'dien-vien', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(16, 0, 2, 'Tin tức khác', '', '', 0, 1, 'tin-tuc-khac', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(17, 0, 1, 'Gia đình', '', '', 0, 1, 'phim-gia-dinh', 1, 0, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(18, 2, 1, 'ben', '', 'adasd', 0, 1, 'ben', 1, 1, NULL, 0, 0, '2016-08-05 13:35:54', '2016-08-05 13:35:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
