-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2016 at 06:26 AM
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
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` bigint(20) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(32) DEFAULT NULL,
  `priority` int(8) DEFAULT '0',
  `display_order` int(11) NOT NULL DEFAULT '1',
  `slug` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `keywords` text,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `description`, `priority`, `display_order`, `slug`, `status`, `is_hot`, `keywords`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Vietnam', '', 0, 1, 'vietnam', 1, 0, 'vietnam vietnam', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(2, 'America', '', 0, 1, 'america', 1, 0, 'america america', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(3, 'Korea', '', 0, 1, 'korea', 1, 0, 'korea korea', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(4, 'China', '', 0, 1, 'china', 1, 0, 'china china', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(5, 'United Kingdom', '', 0, 1, 'united-kingdom', 1, 0, 'united kingdom united-kingdom', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(6, 'Africa', '', 0, 1, 'africa', 1, 0, 'africa africa', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(7, 'Hongkong', '', 0, 1, 'hongkong', 1, 0, 'hongkong hongkong', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(8, 'Japan', '', 0, 1, 'japan', 1, 0, 'japan japan', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(9, 'India', '', 0, 1, 'india', 1, 0, 'india india', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
