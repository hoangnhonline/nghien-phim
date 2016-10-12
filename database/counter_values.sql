-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2016 at 12:24 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_1pphim`
--

-- --------------------------------------------------------

--
-- Table structure for table `counter_values`
--

CREATE TABLE `counter_values` (
  `id` bigint(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `day_id` bigint(11) NOT NULL,
  `day_value` bigint(11) NOT NULL,
  `all_value` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counter_values`
--

INSERT INTO `counter_values` (`id`, `film_id`, `day_id`, `day_value`, `all_value`) VALUES
(1, 0, 285, 15, 5351);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counter_values`
--
ALTER TABLE `counter_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `film_id` (`film_id`),
  ADD KEY `film_id_2` (`film_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
