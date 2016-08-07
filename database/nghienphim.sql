-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2016 at 11:31 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

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
  `meta_title` varchar(355) NOT NULL,
  `meta_description` varchar(355) NOT NULL,
  `meta_keywords` varchar(355) NOT NULL,
  `custom_text` varchar(355) NOT NULL,
  `thumb` text,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent_id`, `type`, `name`, `alias`, `description`, `priority`, `display_order`, `slug`, `status`, `is_hot`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`, `thumb`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Hành động', '', '', 0, 1, 'phim-hanh-dong', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(2, 0, 1, 'Phiêu lưu', '', '', 0, 1, 'phim-phieu-luu', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(5, 0, 1, 'Tình cảm', '', '', 0, 1, 'phim-tinh-cam', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(6, 0, 1, 'Hoạt hình', '', '', 0, 1, 'phim-hoat-hinh', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(7, 0, 1, 'Hình sự', '', '', 0, 1, 'phim-hinh-su', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(8, 0, 1, 'Tâm lý', '', '', 0, 1, 'phim-tam-ly', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(9, 0, 1, 'Viễn tưởng', '', '', 0, 1, 'phim-vien-tuong', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(10, 0, 1, 'Cổ trang', '', '', 0, 1, 'phim-co-trang', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(11, 0, 1, 'Hài hước', '', '', 0, 1, 'phim-hai-huoc', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(12, 0, 1, 'Chiến tranh', '', '', 0, 1, 'phim-chien-tranh', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(13, 0, 1, 'Ma Kinh Dị', '', 'Phim kinh dị', 0, 1, 'phim-ma-kinh-di', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(14, 0, 2, 'Phim', '', '', 0, 1, 'phim', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(15, 0, 2, 'Diễn viên', '', '', 0, 1, 'dien-vien', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(16, 0, 2, 'Tin tức khác', '', '', 0, 1, 'tin-tuc-khac', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(17, 0, 1, 'Gia đình', '', '', 0, 1, 'phim-gia-dinh', 1, 0, '', '', '', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00');

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
  `keywords` text,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `description`, `priority`, `display_order`, `slug`, `keywords`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Vietnam', '', 0, 1, 'vietnam', 'vietnam vietnam', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(2, 'America', '', 0, 1, 'america', 'america america', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(3, 'Korea', '', 0, 1, 'korea', 'korea korea', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(4, 'China', '', 0, 1, 'china', 'china china', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(5, 'United Kingdom', '', 0, 1, 'united-kingdom', 'united kingdom united-kingdom', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(6, 'Africa', '', 0, 1, 'africa', 'africa africa', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(7, 'Hongkong', '', 0, 1, 'hongkong', 'hongkong hongkong', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(8, 'Japan', '', 0, 1, 'japan', 'japan japan', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(9, 'India', '', 0, 1, 'india', 'india india', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

CREATE TABLE `crew` (
  `id` bigint(20) NOT NULL,
  `meta_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image_url` varchar(300) DEFAULT NULL,
  `description` text,
  `count` int(11) DEFAULT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `crew`
--

INSERT INTO `crew` (`id`, `meta_id`, `name`, `slug`, `image_url`, `description`, `count`, `created_user`, `updated_user`, `created_at`, `updated_at`, `type`) VALUES
(1, 0, 'Greg Berlanti', 'greg-berlanti', '/upload/image/crew/greg-berlanti.jpg', '&lt;p&gt;Nghề nghiệp:&amp;nbsp;Nh&amp;agrave; bi&amp;ecirc;n kịch&lt;/p&gt;\r\n&lt;p&gt;Sinh: 24 th&amp;aacute;ng 5, 1972 (tuổi 42), Rye, Tiểu bang New York, Hoa Kỳ 1&lt;/p&gt;', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(4, 0, 'Jaume Collet-Serra', 'jaume-collet-serra', '/upload/image/crew/jaume-collet-serra.jpg', '&lt;p&gt;Nghề nghiệp:&amp;nbsp;Đạo di&amp;ecirc;̃n phim&lt;/p&gt;\r\n&lt;p&gt;Sinh: 23 th&amp;aacute;ng 3, 1974 (tuổi 40), Sant Iscle de Vallalta, T&amp;acirc;y Ban Nha&lt;/p&gt;', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(5, 0, 'Grant Gustin', 'grant-gustin', '/upload/image/crew/grant-gustin.jpg', '&lt;p&gt;Thomas Grant Gustin was born on January 14, 1990 in Norfolk, Virginia, to Tina (Sweeney), a pediatric nurse, and Thomas Gustin. In 2008, he graduated from Granby High School and went on to attend the BFA Music Theatre Program at Elon University in North Carolina for two years. He left school to take the role of Baby John in the Broadway Revival Tour of West Side Story, and performed with the tour from its opening on September 30, 2010 through September 23, 2011. On November 8, 2011, he debuted on the television series Glee as Sebastian Smythe, a member of the Dalton Academy Warblers.&lt;/p&gt;', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(6, 0, 'Candice Patton', 'candice-patton', '/upload/image/crew/candice-patton.jpg', '&lt;p&gt;Raised in Plano, Texas, Candice continued her childhood dream of becoming an actress by attending Southern Methodist University in Dallas where she graduated Summa Cum Laude with a B.F.A in Theatre. It was here that she was scouted by The Young and the Restless for a CBS Soap Star Contest and flew out to Los Angeles to briefly join the cast. Candice finished her college education at SMU and moved to Los Angeles shortly after.&lt;/p&gt;', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(7, 0, 'Rick Cosnett', 'rick-cosnett', '/upload/image/crew/rick-cosnett.jpg', '&lt;p&gt;Richard James Cosnett was born on April 6, 1983. Early life, grew up in Zimbabwe, moved to Australia and studied BFA Acting at QUT. He now lives in the USA. His work began in the theatre and has spread into film and television and producing. His great grandfather was the head of the Royal School of Music. He has 2 sisters and is a cousin of Hugh Grant.&lt;/p&gt;', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(8, 0, 'David Nutter', 'david-nutter', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(9, 0, 'David Nutter', 'david-nutter', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(10, 0, 'Grant Gustin', 'grant-gustin', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(11, 0, 'Candice Patton', 'candice-patton', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(12, 0, 'Danielle Panabaker', 'danielle-panabaker', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(13, 0, 'Rick Cosnett', 'rick-cosnett', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(14, 0, 'Greg Berlanti', 'greg-berlanti', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(15, 0, 'Andrew Kreisberg', 'andrew-kreisberg', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(16, 0, 'Geoff Johns', 'geoff-johns', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(17, 0, 'Joss Whedon', 'joss-whedon', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(18, 0, 'Robert Downey Jr.', 'robert-downey-jr', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(19, 0, 'Chris Evans', 'chris-evans', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(20, 0, 'Mark Ruffalo', 'mark-ruffalo', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(21, 0, 'Chris Hemsworth', 'chris-hemsworth', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(22, 0, 'Marvel', 'marvel', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(23, 0, 'George Miller', 'george-miller', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(24, 0, 'Tom Hardy', 'tom-hardy', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(25, 0, 'Charlize Theron', 'charlize-theron', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(26, 0, 'Nicholas Hoult', 'nicholas-hoult', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(27, 0, 'Zoë Kravitz', 'zoe-kravitz', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(28, 0, 'Bruce Berman', 'bruce-berman', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(29, 0, 'Graham Burke', 'graham-burke', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(30, 0, 'James Wan', 'james-wan', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(31, 0, 'Vin Diesel', 'vin-diesel', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(32, 0, 'Paul Walker', 'paul-walker', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(33, 0, 'Dwayne Johnson', 'dwayne-johnson', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(34, 0, 'Jason Statham', 'jason-statham', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(35, 0, 'Universal Pictures', 'universal-pictures', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(36, 0, 'Media Rights Capital', 'media-rights-capital', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(37, 0, 'Nhĩ Đông Thăng', 'nhi-dong-thang', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(38, 0, 'Lưu Thanh Vân', 'luu-thanh-van', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(39, 0, 'Huỳnh Hiểu Minh', 'huynh-hieu-minh', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(40, 0, 'Diệp Tuyền', 'diep-tuyen', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(41, 0, 'Phương Lực Thân', 'phuong-luc-than', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(42, 0, 'Keishi Ohtomo', 'keishi-ohtomo', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(43, 0, 'Takeru Satô', 'takeru-sato', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(44, 0, 'Emi Takei', 'emi-takei', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(45, 0, 'Tatsuya Fujiwara', 'tatsuya-fujiwara', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(46, 0, 'Yôsuke Eguchi', 'yosuke-eguchi', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(47, 0, 'Nhiếp Viễn', 'nhiep-vien', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(48, 0, 'Mao Tuấn Kiệt', 'mao-tuan-kiet', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(49, 0, 'Phùng Văn Quyên', 'phung-van-quyen', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(50, 0, 'Cao Hổ', 'cao-ho', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(51, 0, 'Vương Du Du', 'vuong-du-du', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(52, 0, 'Liễu Nham', 'lieu-nham', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(53, 0, 'Grant Gustin', 'grant-gustin', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(54, 0, 'Candice Patton', 'candice-patton', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(55, 0, 'Rick Cosnett', 'rick-cosnett', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(56, 0, 'Carlos Valdes', 'carlos-valdes', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(57, 0, 'Tom Cavanagh', 'tom-cavanagh', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(58, 0, 'Jesse L. Martin', 'jesse-l-martin', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(59, 0, 'John Wesley Shipp', 'john-wesley-shipp', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(60, 0, 'Stephen Amell', 'stephen-amell', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(61, 0, 'Yoshie Bancroft', 'yoshie-bancroft', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(62, 0, 'Fulvio Cecere', 'fulvio-cecere', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(63, 0, 'Marc Gaudet', 'marc-gaudet', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(64, 0, 'Michelle Harrison', 'michelle-harrison', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(65, 0, 'Matthew Robert Kelly', 'matthew-robert-kelly', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(66, 0, 'Jennifer Kitchen', 'jennifer-kitchen', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(67, 0, 'Nelson Leis', 'nelson-leis', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(68, 0, 'Rowan Longworth', 'rowan-longworth', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(69, 0, 'Chad Rook', 'chad-rook', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(70, 0, 'Troy Rudolph', 'troy-rudolph', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(71, 0, 'Patrick Sabongui', 'patrick-sabongui', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(72, 0, 'Al Sapienza', 'al-sapienza', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(73, 0, 'Eli Shapera', 'eli-shapera', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(74, 0, 'Logan Williams', 'logan-williams', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(75, 0, 'Brendon Zub', 'brendon-zub', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(76, 0, 'Berlanti Productions', 'berlanti-productions', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(77, 0, 'DC Entertainment', 'dc-entertainment', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(78, 0, 'Warner Bros', 'warner-bros', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(79, 0, 'Y Năng Tịnh', 'y-nang-tinh', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(80, 0, 'Trần Kiều Ân', 'tran-kieu-an', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(81, 0, 'Y Năng Tịnh', 'y-nang-tinh', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(82, 0, 'Song Hye Kyo', 'song-hye-kyo', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(83, 0, 'P.J. Hogan', 'pj-hogan', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(84, 0, 'Isla Fisher', 'isla-fisher', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(85, 0, 'Hugh Dancy', 'hugh-dancy', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(86, 0, 'Krysten Ritter', 'krysten-ritter', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(87, 0, 'Joan Cusack', 'joan-cusack', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(88, 0, 'Tony Goldwyn', 'tony-goldwyn', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(89, 0, 'Hilary Swank', 'hilary-swank', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(90, 0, 'Sam Rockwell', 'sam-rockwell', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(91, 0, 'Melissa Leo', 'melissa-leo', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(92, 0, 'Thomas D. Mahard', 'thomas-d-mahard', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(93, 0, 'Jalmari Helander', 'jalmari-helander', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(94, 0, 'Samuel L. Jackson', 'samuel-l-jackson', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(95, 0, 'Onni Tommila', 'onni-tommila', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(96, 0, 'Ray Stevenson', 'ray-stevenson', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(97, 0, 'Victor Garber', 'victor-garber', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(98, 0, 'John Baumgartner', 'john-baumgartner', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(99, 0, 'Jhey Castles', 'jhey-castles', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(100, 0, 'Jason Woods', 'jason-woods', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(101, 0, 'Grace Van Dien', 'grace-van-dien', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(102, 0, 'Elaine Partnow', 'elaine-partnow', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(103, 0, 'Jonah Loop', 'jonah-loop', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(104, 0, 'Kellan Lutz', 'kellan-lutz', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(105, 0, 'Johnny Messner', 'johnny-messner', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(106, 0, 'Katia Winter', 'katia-winter', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(107, 0, 'A.R. Murugadoss', 'ar-murugadoss', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(108, 0, 'Aamir Khan', 'aamir-khan', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(109, 0, 'Asin', 'asin', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(110, 0, 'Jiah Khan', 'jiah-khan', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(111, 0, 'Tinnu Anand', 'tinnu-anand', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(112, 0, 'Daniel Yee Heng Chan', 'daniel-yee-heng-chan', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(113, 0, 'Ronald Cheng', 'ronald-cheng', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(114, 0, 'Tony Ho', 'tony-ho', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(115, 0, 'Michelle Hu', 'michelle-hu', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(116, 0, 'Luxia Jiang', 'luxia-jiang', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(117, 0, 'Takashi Miike', 'takashi-miike', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(118, 0, 'Shôta Sometani', 'shota-sometani', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(119, 0, 'Ryûnosuke Kamiki', 'ryunosuke-kamiki', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(120, 0, 'Rirî Furankî', 'riri-furanki', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(121, 0, 'Sôta Fukushi', 'sota-fukushi', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(122, 0, 'Eiichiro Oda', 'eiichiro-oda', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(123, 0, 'Tony Beck', 'tony-beck', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(124, 0, 'Laurent Vernin', 'laurent-vernin', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(125, 0, 'Mayumi Tanaka', 'mayumi-tanaka', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(126, 0, 'Yoon Sung Shik', 'yoon-sung-shik', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(127, 0, 'Seo In Guk', 'seo-in-guk', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(128, 0, 'Jo Yoon Hee', 'jo-yoon-hee', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(129, 0, 'Shin Sung Rok', 'shin-sung-rok', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(130, 0, 'Lee Sung Jae', 'lee-sung-jae', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(131, 0, 'Kim Kyu Ri', 'kim-kyu-ri', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(132, 0, 'Jodie Foster', 'jodie-foster', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(133, 0, 'Michael Trim', 'michael-trim', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(134, 0, 'Phil Abraham', 'phil-abraham', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(135, 0, 'Andrew McCarthy', 'andrew-mccarthy', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(136, 0, 'Michael Harney', 'michael-harney', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(137, 0, 'Kate Mulgrew', 'kate-mulgrew', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(138, 0, 'Natasha Lyonne', 'natasha-lyonne', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(139, 0, 'Uzo Aduba', 'uzo-aduba', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(140, 0, 'Âu Dương Chấn Hoa', 'au-duong-chan-hoa', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(141, 0, 'Tuyên Huyên', 'tuyen-huyen', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(142, 0, 'Đường Ninh', 'duong-ninh', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(143, 0, 'Yoo-chun Park', 'yoo-chun-park', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(144, 0, 'Se-Kyung Shin', 'se-kyung-shin', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(145, 0, 'Tae-Joon Choi', 'tae-joon-choi', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(146, 0, 'Hie-bong Jo', 'hie-bong-jo', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(147, 0, 'Seo Soo Min', 'seo-soo-min', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(148, 0, 'Park Ji Eun', 'park-ji-eun', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(149, 0, 'Park Ji Eun', 'park-ji-eun', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(150, 0, 'IU', 'iu', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(151, 0, 'Gong Hyo Jin', 'gong-hyo-jin', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(152, 0, 'James McTeigue', 'james-mcteigue', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(153, 0, 'Paddy Wallace', 'paddy-wallace', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(154, 0, 'Parker Sawyers', 'parker-sawyers', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(155, 0, 'Bashar Rahal', 'bashar-rahal', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(156, 0, 'Royce Pierreson', 'royce-pierreson', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(157, 0, 'Ben Starr', 'ben-starr', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(158, 0, 'Sean Teale', 'sean-teale', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(159, 0, 'Rege-Jean Page', 'rege-jean-page', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(160, 0, 'Veselin Karadjov', 'veselin-karadjov', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(161, 0, 'Suzie Shearer', 'suzie-shearer', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(162, 0, 'Joe Johnston', 'joe-johnston', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(163, 0, 'Sam Neill', 'sam-neill', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(164, 0, 'William H. Macy', 'william-h-macy', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(165, 0, 'Téa Leoni', 'tea-leoni', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(166, 0, 'Alessandro Nivola', 'alessandro-nivola', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(167, 0, 'Larry J. Franco', 'larry-j-franco', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(168, 0, 'Kathleen Kennedy', 'kathleen-kennedy', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(169, 0, 'Steven Spielberg', 'steven-spielberg', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(170, 0, 'Cheryl A. Tkach', 'cheryl-a-tkach', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(171, 0, 'David Womark', 'david-womark', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(172, 0, 'Cao Hy Hy', 'cao-hy-hy', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(173, 0, 'Trần Kiến Bân', 'tran-kien-ban', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(174, 0, 'Vu Hòa Vĩ', 'vu-hoa-vi', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(175, 0, 'Trần Hảo', 'tran-hao', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(176, 0, 'Triệu Kha', 'trieu-kha', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(177, 0, 'Ân Đào', 'an-dao', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(178, 0, 'Lục Nghị', 'luc-nghi', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(179, 0, 'Tân Bách Thanh', 'tan-bach-thanh', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(180, 0, 'Lâm Tâm Như', 'lam-tam-nhu', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(181, 0, 'Hầu Dũng', 'hau-dung', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(182, 0, 'Hà Nhuận Đông', 'ha-nhuan-dong', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(183, 0, 'Nghê Đại Hồng', 'nghe-dai-hong', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(184, 0, 'Vu Quang Vinh', 'vu-quang-vinh', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(185, 0, 'Chu Tô Tiến', 'chu-to-tien', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(186, 0, 'Dương Hiểu Minh', 'duong-hieu-minh', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(187, 0, 'Louie Psihoyos', 'louie-psihoyos', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(188, 0, 'Paul Hilton', 'paul-hilton', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(189, 0, 'Elon Musk', 'elon-musk', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(190, 0, 'Joel Sartore', 'joel-sartore', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(191, 0, 'Louie Psihoyos', 'louie-psihoyos', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(192, 0, 'Leilani Münter', 'leilani-munter', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(193, 0, 'Charles Hambleton', 'charles-hambleton', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(194, 0, 'Heather Dawn Rally', 'heather-dawn-rally', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(195, 0, 'Shawn Heinrichs', 'shawn-heinrichs', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(196, 0, 'Travis Threlkel', 'travis-threlkel', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(197, 0, 'J.J. Abrams', 'jj-abrams', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(198, 0, 'Harrison Ford', 'harrison-ford', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(199, 0, 'John Boyega', 'john-boyega', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(200, 0, 'Oscar Isaac', 'oscar-isaac', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(201, 0, 'Adam Driver', 'adam-driver', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(202, 0, 'Mark Hamill', 'mark-hamill', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(203, 0, 'Carrie Fisher', 'carrie-fisher', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(204, 0, 'Daisy Ridley', 'daisy-ridley', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(205, 0, 'Alejandro González Iñárritu', 'alejandro-gonzalez-inarritu', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(206, 0, 'Will Poulter', 'will-poulter', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(207, 0, 'Leonardo DiCaprio', 'leonardo-dicaprio', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(208, 0, 'Domhnall Gleeson', 'domhnall-gleeson', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(209, 0, 'Matthew Vaughn', 'matthew-vaughn', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(210, 0, 'Colin Firth', 'colin-firth', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(211, 0, 'Taron Egerton', 'taron-egerton', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(212, 0, 'Jack Davenport', 'jack-davenport', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(213, 0, 'Bryan Singer', 'bryan-singer', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(214, 0, 'James Mcavoy', 'james-mcavoy', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(215, 0, 'Michael Fassbender', 'michael-fassbender', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(216, 0, 'Jennifer Lawrence', 'jennifer-lawrence', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(217, 0, 'Bryan Singer', 'bryan-singer', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(218, 0, 'Simon Kinberg', 'simon-kinberg', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(219, 0, 'Lauren Shuler Donner', 'lauren-shuler-donner', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(220, 0, 'Hutch Parker', 'hutch-parker', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 3),
(221, 0, 'Kishimoto Masashi', 'kishimoto-masashi', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(237, 0, 'Jon Favreau', 'jon-favreau', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 2),
(238, 0, 'Idris Elba', 'idris-elba', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(239, 0, 'Bill Murray', 'bill-murray', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(240, 0, 'Ben Kingsley', 'ben-kingsley', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(241, 0, 'Scarlett Johansson', 'scarlett-johansson', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(242, 0, 'Jon Favreau', 'jon-favreau', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
(243, 0, 'Neel Sethi', 'neel-sethi', NULL, NULL, 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(10) NOT NULL,
  `meta_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `original_title` varchar(255) DEFAULT NULL,
  `original_slug` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `poster_url` varchar(255) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `release_year` smallint(4) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 : phim le (movies) 2 : phim bo (series)',
  `cinema` tinyint(1) DEFAULT '1',
  `content` text,
  `note` varchar(255) DEFAULT NULL,
  `likes` int(10) NOT NULL DEFAULT '0',
  `views` int(10) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_episode_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 : active , 2 : pending',
  `imdb` varchar(10) NOT NULL DEFAULT '',
  `top` tinyint(4) DEFAULT '1' COMMENT '1 : new  2 : hot 3 : finish 4 : comming soon',
  `order` int(10) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `push_top` tinyint(1) DEFAULT '1',
  `trailer` text,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `meta_id`, `title`, `slug`, `alias`, `description`, `original_title`, `original_slug`, `image_url`, `poster_url`, `duration`, `release_year`, `type`, `cinema`, `content`, `note`, `likes`, `views`, `created_at`, `updated_at`, `updated_episode_date`, `status`, `imdb`, `top`, `order`, `expired`, `push_top`, `trailer`, `created_user`, `updated_user`) VALUES
(1, 32, 'Người hùng tia chớp (Phần 1)', 'nguoi-hung-tia-chop-phan-1', 'Nguoi hung tia chop (Phan 1)', 'Barry Allen was just 11 years old when his mother was killed in a bizarre and terrifying incident and his father was falsely convicted of the murder. With his life changed forever by the tragedy, Barry was taken in and raised by Detective Joe West, the father of Barry’s best friend, Iris. Now, Barry has become a brilliant, driven and endearingly geeky CSI investigator, whose determination to uncover the truth about his mother’s strange death leads him to follow up on every unexplained urban lege', 'The Flash 1', 'the-flash-1', 'image/film/the-flash.jpg', 'image/film/the-flash-1.jpg', '23 tập', 2015, 1, 1, '&lt;p&gt;Barry Allen was just 11 years old when his mother was killed in a bizarre and terrifying incident and his father was falsely convicted of the murder. With his life changed forever by the tragedy, Barry was taken in and raised by Detective Joe West, the father of Barry&amp;rsquo;s best friend, Iris. Now, Barry has become a brilliant, driven and endearingly geeky CSI investigator, whose determination to uncover the truth about his mother&amp;rsquo;s strange death leads him to follow up on every unexplained urban legend and scientific advancement that comes along. Barry&amp;rsquo;s latest obsession is a cutting edge particle accelerator, created by visionary physicist Harrison Wells and his S.T.A.R. Labs team, who claim that this invention will bring about unimaginable advancements in power and medicine. However, something goes horribly wrong during the public unveiling, and when the devastating explosion causes a freak storm, many lives are lost and Barry is struck by lightning. After nine months in a coma, Barry awakens to find his life has changed once again &amp;ndash; the accident has given him the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only &amp;ldquo;meta-human&amp;rdquo; who was created in the wake of the accelerator explosion &amp;ndash; and not everyone is using their new powers for good. In the months since the accident, the city has seen a sharp increase in missing people, unexplained deaths and other strange phenomena. Barry now has a renewed purpose &amp;ndash; using his gift of speed to protect the innocent, while never giving up on his quest to solve his mother&amp;rsquo;s murder and clear his father&amp;rsquo;s name. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won&amp;rsquo;t be long before the world learns what Barry Allen has become&amp;hellip;The Flash.&lt;/p&gt;', NULL, 0, 0, '2015-05-20 11:29:55', '2016-08-07 02:25:00', NULL, 1, '8.2', 3, NULL, NULL, 1, NULL, 1, 1),
(2, 42, 'Đế Chế Ultron', 'de-che-ultron', 'De Che Ultron', 'Mệt mỏi vì công việc của một nhà sáng chế, doanh nhân và cả trách nhiệm của một siêu anh hùng, Tony đã quyết định tạo ra Ultron để thay mình bảo vệ thế giới. Nhưng ý tưởng đã thất bại, Ultron trở nên mất kiểm soát và biến thành một cỗ', 'Avengers: Age Of Ultron', 'avengers-age-of-ultron', 'image/film/624189-avengers-2015-megabox-pst-sd.jpg', 'image/film/avengers-age-of-ultron.png', '132 minutes', 2015, 1, 1, '&lt;p&gt;Mệt mỏi v&amp;igrave; c&amp;ocirc;ng việc của một nh&amp;agrave; s&amp;aacute;ng chế, doanh nh&amp;acirc;n v&amp;agrave; cả tr&amp;aacute;ch nhiệm của một si&amp;ecirc;u anh h&amp;ugrave;ng, Tony đ&amp;atilde; quyết định tạo ra Ultron để thay m&amp;igrave;nh bảo vệ thế giới. Nhưng &amp;yacute; tưởng đ&amp;atilde; thất bại, Ultron trở n&amp;ecirc;n mất kiểm so&amp;aacute;t v&amp;agrave; biến th&amp;agrave;nh một cỗ m&amp;aacute;y s&amp;aacute;t nh&amp;acirc;n m&amp;aacute;u lạnh. Khi h&amp;ograve;a b&amp;igrave;nh lại bị đe dọa, đ&amp;oacute; cũng l&amp;agrave; l&amp;uacute;c biệt đội Avengers phải trở lại v&amp;agrave; ra tay.&lt;/p&gt;', NULL, 0, 0, '2015-05-24 00:00:22', '2016-08-07 02:25:00', NULL, 1, 'na', 2, NULL, NULL, 1, NULL, 1, 1),
(3, 46, 'Max Điên: Con Đường Tử Thần', 'max-dien-con-duong-tu-than', 'Max Dien: Con Duong Tu Than', 'Bối cảnh phim ở một nơi rất xa của trái đất, nơi ấy sa mạc bao phủ hầu hết bề mặt và hầu hết mọi người đều điên cuồng đấu tranh cho những nhu cầu của cuộc sống. Trong thế giới này tồn tại hai phiến quân đang chạy trốn những người được coi là có thể để khôi phục lại trật tự thế giới. Trong đó', 'Mad Max: Fury Road', 'mad-max-fury-road', 'image/film/642226-mad-max-megabox-pst.jpg', 'image/film/mad-max.jpg', '112 phút', 2015, 1, 1, '&lt;p&gt;Bối cảnh phim ở một nơi rất xa của tr&amp;aacute;i đất, nơi ấy sa mạc bao phủ hầu hết bề mặt v&amp;agrave; hầu hết mọi người đều đi&amp;ecirc;n cuồng đấu tranh cho những nhu cầu của cuộc sống. Trong thế giới n&amp;agrave;y tồn tại hai phiến qu&amp;acirc;n đang chạy trốn những người được coi l&amp;agrave; c&amp;oacute; thể để kh&amp;ocirc;i phục lại trật tự thế giới. Trong đ&amp;oacute; c&amp;oacute; Max, một người đ&amp;agrave;n &amp;ocirc;ng của h&amp;agrave;nh động v&amp;agrave; &amp;iacute;t n&amp;oacute;i, đang t&amp;igrave;m kiếm sự an t&amp;acirc;m sau khi mất vợ v&amp;agrave; con của m&amp;igrave;nh do hậu quả của sự hỗn loạn. V&amp;agrave; Furiosa, một phụ nữ lu&amp;ocirc;n h&amp;agrave;nh động v&amp;agrave; tin rằng con đường của m&amp;igrave;nh để tồn tại c&amp;oacute; thể đạt được nếu c&amp;ocirc; ấy c&amp;oacute; thể vượt sa mạc sở về qu&amp;ecirc; hương y&amp;ecirc;u dấu.&lt;/p&gt;', NULL, 0, 0, '2015-05-24 00:03:58', '2016-08-07 02:25:00', NULL, 1, 'na', 1, NULL, NULL, 1, NULL, 1, 1),
(6, 51, 'Đại Hỏa Kyoto Kenshin', 'dai-hoa-kyoto-kenshin', 'Dai Hoa Kyoto Kenshin', 'Kenshin sau khi bắt đầu cuộc sống mới cùng Kaoru và bạn bè thì nhận được yêu cầu từ chính quyền Minh Trị. Makoto Shishio là một cựu sát thủ như Kenshin, bị phản bội và bị thiêu sống, nhưng đã thoát chết và hiện đang ở Kyoto, cùng đồng bọn âm mưu lật đổ', 'Rurouni Kenshin: Kyoto Taika- Hen', 'rurouni-kenshin-kyoto-taika-hen', 'image/film/272cc4cb62ce081d2ed091cda53fcf17.jpg', 'image/film/rurouni-kenshin-kyoto-taika-hen.jpg', '138 phút', 2015, 1, 0, '<p>Kenshin sau khi bắt đầu cuộc sống mới c&ugrave;ng Kaoru v&agrave; bạn b&egrave; th&igrave; nhận được y&ecirc;u cầu từ ch&iacute;nh quyền Minh Trị. Makoto Shishio l&agrave; một cựu s&aacute;t thủ như Kenshin, bị phản bội v&agrave; bị thi&ecirc;u sống, nhưng đ&atilde; tho&aacute;t chết v&agrave; hiện đang ở Kyoto, c&ugrave;ng đồng bọn &acirc;m mưu lật đổ ch&iacute;nh quyền. Tr&aacute;i với &yacute; nguyện của Kaoru, Kenshin bất đắc dĩ nhận nhiệm vụ, đến Kyoto để ngăn cản cuộc nội chiến sắp xảy đến với đất nước của m&igrave;nh.</p>\r\n', NULL, 0, 0, '2015-05-24 00:23:45', '2016-08-07 08:45:38', NULL, 1, 'na', 1, NULL, NULL, 1, '', 1, 1),
(4, 49, 'Báo Thù', 'bao-thu', 'Bao Thu', 'Quá Nhanh Quá Nguy Hiểm 7: Sau cái chết của Paul Walker, có rất nhiều câu hỏi đặt ra cho nhà sản xuất phim Fast and Furious. Các nhà làm phim nhận thấy họ cần một ai đó giống ngôi sao quá cố để hoàn thành bộ phim dang dở. Trong', '( Fast And Furious 7 )', '-fast-and-furious-7-', 'image/film/75ca9606de7f59dfb614bc6e9cff0536.jpg', 'image/film/fast-furious-7-2015-poster.jpg', '137 phút', 2015, 1, 1, '&lt;p&gt;&lt;strong&gt;Qu&amp;aacute; Nhanh Qu&amp;aacute; Nguy Hiểm 7&lt;/strong&gt;: Sau c&amp;aacute;i chết của Paul Walker, c&amp;oacute; rất nhiều c&amp;acirc;u hỏi đặt ra cho nh&amp;agrave; sản xuất phim &lt;strong&gt;Fast and Furious&lt;/strong&gt;. C&amp;aacute;c nh&amp;agrave; l&amp;agrave;m phim nhận thấy họ cần một ai đ&amp;oacute; giống ng&amp;ocirc;i sao qu&amp;aacute; cố để ho&amp;agrave;n th&amp;agrave;nh bộ phim dang dở. Trong nh&amp;agrave; Walker, em &amp;uacute;t Cody Walker c&amp;oacute; ngoại h&amp;igrave;nh kh&amp;aacute; giống anh trai. Cody được mong đợi sẽ lấp đầy chỗ trống m&amp;agrave; Paul để lại cho Fast And&amp;nbsp;Furious 7. Cody cũng từng tham gia đ&amp;oacute;ng thế trong một số bộ phim. Trong tập 7 cua &lt;strong&gt;Fast and Furious&lt;/strong&gt; , Ian Shaw cung đồng đội của m&amp;igrave;nh sẽ chiến đấu chống lại Dominic Toretto để trả th&amp;ugrave; cho cai chết của anh trai m&amp;igrave;nh.&lt;/p&gt;', NULL, 0, 0, '2015-05-24 00:08:16', '2016-08-07 02:25:00', NULL, 1, 'na', 2, NULL, NULL, 1, NULL, 1, 1),
(5, 50, 'Bạo Phong Ngữ', 'bao-phong-ngu', 'Bao Phong Ngu', 'Phim Bạo Phong Ngữ Insanity Đạo diễn Nhĩ Đông Thăng tiếp tục khai thác dòng phim hình sự giật gân sở trường trong năm nay với Insanity cùng bộ đôi Lưu Thanh Vân và Huỳnh Hiểu Minh.\r\nPhim là cuộc đối đầu căng thẳng giữa một tên sát nhân tâm thần', 'Insanity 2015', 'insanity-2015', 'image/film/632909-insanity-2015-poster.jpg', 'image/film/insanity-poster-goldposter-com-5.jpg', '98 phút', 2015, 1, 0, '&lt;p&gt;Phim&amp;nbsp;Bạo Phong Ngữ&amp;nbsp;Insanity&amp;nbsp;Đạo diễn Nhĩ Đ&amp;ocirc;ng Thăng tiếp tục khai th&amp;aacute;c d&amp;ograve;ng phim h&amp;igrave;nh sự giật g&amp;acirc;n sở trường trong năm nay với Insanity c&amp;ugrave;ng bộ đ&amp;ocirc;i Lưu Thanh V&amp;acirc;n v&amp;agrave; Huỳnh Hiểu Minh.&lt;/p&gt;\r\n&lt;p&gt;Phim l&amp;agrave; cuộc đối đầu căng thẳng giữa một t&amp;ecirc;n s&amp;aacute;t nh&amp;acirc;n t&amp;acirc;m thần v&amp;agrave; một b&amp;aacute;c sĩ chuy&amp;ecirc;n khoa thần kinh. Theo chia sẻ của Nhĩ Đ&amp;ocirc;ng Thăng, &amp;ocirc;ng từng mất tới 5 năm để ph&amp;aacute;t triển kịch bản của Insanity sao cho vừa &amp;yacute; c&amp;aacute;c nh&amp;agrave; sản xuất.&lt;/p&gt;', NULL, 0, 0, '2015-05-24 00:11:28', '2016-08-07 02:25:00', NULL, 1, 'na', 1, NULL, NULL, 1, NULL, 1, 1),
(7, 52, 'Long Môn Phi Giáp', 'long-mon-phi-giap', 'Long Mon Phi Giap', 'Phim lấy bối cảnh từ thời nhà Minh. Câu chuyện bắt đầu khi hiệp khách Triệu Hoài An (Nhiếp Viễn) quyết định ẩn náu tại quán trọ Long Môn, sau thời gian bị truy đuổi vì tội giải thoát một trong những phạm nhân triều đình. Tại nơi đây, anh được bà chủ trước đây của', 'Flying Swords Of Dragon Gate', 'flying-swords-of-dragon-gate', 'image/film/304526-long-mon-phi-giap-2015-megabox-pst.jpg', 'image/film/flying-swords-of-dragon-gate.jpg', '50 tập', 2015, 1, 1, '&lt;p&gt;Phim lấy bối cảnh từ thời nh&amp;agrave; Minh. C&amp;acirc;u chuyện bắt đầu khi hiệp kh&amp;aacute;ch Triệu Ho&amp;agrave;i An (Nhiếp Viễn) quyết định ẩn n&amp;aacute;u tại qu&amp;aacute;n trọ Long M&amp;ocirc;n, sau thời gian bị truy đuổi v&amp;igrave; tội giải tho&amp;aacute;t một trong những phạm nh&amp;acirc;n triều đ&amp;igrave;nh. Tại nơi đ&amp;acirc;y, anh được b&amp;agrave; chủ trước đ&amp;acirc;y của qu&amp;aacute;n trọ Long M&amp;ocirc;n - Kim Tương N&lt;/p&gt;', NULL, 0, 0, '2015-05-24 00:25:22', '2016-08-07 02:25:00', NULL, 1, 'na', 1, NULL, NULL, 1, NULL, 1, 1),
(8, 36, 'Tôi Là Nữ Vương', 'toi-la-nu-vuong', 'Toi La Nu Vuong', ' Bộ phim xoay quanh cuộc sống, những thăng trầm và tình yêu của ba cô gái thành đạt chốn đô thị. Song Hye Kyo, Trần Kiều Ân và Y Năng Tịnh sẽ hóa thân vào vai ba cô bạn thân của nhau, cũng chính là ba nhân vật trung tâm của bộ phim. Hye Kyo', 'The Queens', 'the-queens', 'image/film/799314-toi-la-nu-vuong-pst1.jpg', 'image/film/toi-la-nu-vuong.jpg', '100 phút', 2015, 1, 0, '&lt;p&gt;&amp;nbsp;Bộ phim xoay quanh cuộc sống, những thăng trầm v&amp;agrave; t&amp;igrave;nh y&amp;ecirc;u của ba c&amp;ocirc; g&amp;aacute;i th&amp;agrave;nh đạt chốn đ&amp;ocirc; thị. Song Hye Kyo, Trần Kiều &amp;Acirc;n v&amp;agrave; Y Năng Tịnh sẽ h&amp;oacute;a th&amp;acirc;n v&amp;agrave;o vai ba c&amp;ocirc; bạn th&amp;acirc;n của nhau, cũng ch&amp;iacute;nh l&amp;agrave; ba nh&amp;acirc;n vật trung t&amp;acirc;m của bộ phim. Hye Kyo v&amp;agrave;o vai một minh tinh xinh đẹp, t&amp;agrave;i năng. Cuộc đời thay đổi khi c&amp;ocirc; chia tay người y&amp;ecirc;u sau t&amp;aacute;m năm gắn b&amp;oacute;.&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:10:51', '2016-08-07 02:25:00', NULL, 1, '', 1, NULL, NULL, 1, NULL, 1, 1),
(9, 37, 'Lời Tự Thú Của Một Tín Đồ Shopping', 'loi-tu-thu-cua-mot-tin-do-shopping', 'Loi Tu Thu Cua Mot Tin Do Shopping', 'Tham vọng lớn nhất của Rebecca Bloomwood (Isla Fisher) là được nhận vào làm ở tờ tạp chí thời trang danh tiếng, Alette. Nhưng trong lúc chờ thời, cô phóng viên chuyên viết bài về chủ đề vườn tược cho một tạp chí nhỏ coi mua', 'Confessions of a Shopaholic', 'confessions-of-a-shopaholic', 'image/film/e0279bc5e373b09bcec7147d51fc1ab7.jpg', 'image/film/confessions-of-a-shopaholic.jpg', '104 phút', 2015, 1, 0, '&lt;div id=&quot;mCSB_2_container&quot; class=&quot;mCSB_container&quot; dir=&quot;ltr&quot;&gt;\r\n&lt;p&gt;Tham vọng lớn nhất của Rebecca Bloomwood (Isla Fisher) l&amp;agrave; được nhận v&amp;agrave;o l&amp;agrave;m ở tờ tạp ch&amp;iacute; thời trang danh tiếng, Alette. Nhưng trong l&amp;uacute;c chờ thời, c&amp;ocirc; ph&amp;oacute;ng vi&amp;ecirc;n chuy&amp;ecirc;n viết b&amp;agrave;i về chủ đề vườn tược cho một tạp ch&amp;iacute; nhỏ coi mua sắm l&amp;agrave; niềm đam m&amp;ecirc; lớn nhất. Rebecca sẵn s&amp;agrave;ng lao tới mọi cuộc giảm gi&amp;aacute; của những cửa h&amp;agrave;ng thời trang h&amp;agrave;ng hiệu v&amp;agrave; ti&amp;ecirc;u tiền kh&amp;ocirc;ng t&amp;iacute;nh to&amp;aacute;n trước những m&amp;oacute;n đồ đắt gi&amp;aacute;. C&amp;ocirc; n&amp;agrave;ng ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng c&amp;oacute; khả năng kiềm chế th&amp;uacute; vui mua sắm, bất lực trước việc kiểm so&amp;aacute;t chi ti&amp;ecirc;u. Hậu quả l&amp;agrave; m&amp;oacute;n nợ hơn 9.000 USD vượt xa khả năng thanh to&amp;aacute;n. Sống c&amp;ugrave;ng c&amp;ocirc; bạn th&amp;acirc;n, ph&amp;ograve;ng ngủ của Rebecca tr&amp;agrave;n ngập quần &amp;aacute;o gi&amp;agrave;y d&amp;eacute;p, m&amp;agrave; phần lớn trong số đ&amp;oacute; chưa từng được d&amp;ugrave;ng tới. Được bạn khuy&amp;ecirc;n can bao lần, nhưng Rebecca chẳng hề c&amp;oacute; dấu hiệu của sự tỉnh ngộ. Giữa l&amp;uacute;c cần kiếm tiền để trả nợ, c&amp;ocirc; n&amp;agrave;ng lại bị mất việc. Lối tho&amp;aacute;t duy nhất l&amp;uacute;c đ&amp;oacute; l&amp;agrave; xin v&amp;agrave;o l&amp;agrave;m ở tờ tạp ch&amp;iacute; thời trang. Nhưng con đường tới đ&amp;iacute;ch quả thật ch&amp;ocirc;ng gai, khi Rebecca lại được nhận v&amp;agrave;o tạp ch&amp;iacute; t&amp;agrave;i ch&amp;iacute;nh Successful Savings.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div id=&quot;mCSB_2_scrollbar_vertical&quot; class=&quot;mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical&quot;&gt;\r\n&lt;div class=&quot;mCSB_draggerContainer&quot;&gt;\r\n&lt;div id=&quot;mCSB_2_dragger_vertical&quot; class=&quot;mCSB_dragger&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', NULL, 0, 0, '2015-05-25 21:13:00', '2016-08-07 02:25:00', NULL, 1, '', 1, NULL, NULL, 1, NULL, 1, 1),
(10, 40, 'Kết Án', 'ket-an', 'Ket An', 'Bộ phim dựa trên một câu chuyện có thật về Betty Anne Waters, một bà mẹ phải một mình nuôi hai đứa con trong khi cố gắng đạt được bằng đại học Luật để bào chữa cho em trai mình, người đã bị buộc tội giết người. Cô đã phải học để lấy bằng cấp hai, bằng cấp ba, sau đó là', 'Conviction', 'conviction', 'image/film/9d607b62f1bfb684f61bb29e1f0bd32b.jpg', 'image/film/conviction.jpg', '107 phút', 2015, 1, 0, '&lt;p&gt;Bộ phim dựa tr&amp;ecirc;n một c&amp;acirc;u chuyện c&amp;oacute; thật về Betty Anne Waters, một b&amp;agrave; mẹ phải một m&amp;igrave;nh nu&amp;ocirc;i hai đứa con trong khi cố gắng đạt được bằng đại học Luật để b&amp;agrave;o chữa cho em trai m&amp;igrave;nh, người đ&amp;atilde; bị buộc tội giết người. C&amp;ocirc; đ&amp;atilde; phải học để lấy bằng cấp hai, bằng cấp ba, sau đ&amp;oacute; l&amp;agrave; bằng đại học, bằng thạc sĩ luật v&amp;agrave; cuối c&amp;ugrave;ng đ&amp;atilde; t&amp;igrave;m được bằng chứng quan trọng gi&amp;uacute;p giải oan cho em m&amp;igrave;nh.&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:17:22', '2016-08-07 02:25:00', NULL, 1, '7.2', 1, NULL, NULL, 1, NULL, 1, 1),
(11, 41, 'Săn Lùng', 'san-lung', 'San Lung', 'vào khoang cứu hộ khẩn cấp và đưa xuống mặt đất. Ngờ đâu, chính Morris lại là kẻ sắp đặt tất cả để biến ông thành mục tiêu săn đuổi của một nhóm khủng bố. May mắn thay, ông nhận được sự giúp đỡ từ cậu bé người địa phương Oskari (Onni Tommila) đang nhận nhiệm vụ săn linh', 'Big Game', 'big-game', 'image/film/91093f0643bf1689e18e2c3593b21211.jpg', 'image/film/big-game.jpg', '86 phút', 2015, 1, 0, '&lt;p&gt;v&amp;agrave;o khoang cứu hộ khẩn cấp v&amp;agrave; đưa xuống mặt đất. Ngờ đ&amp;acirc;u, ch&amp;iacute;nh Morris lại l&amp;agrave; kẻ sắp đặt tất cả để biến &amp;ocirc;ng th&amp;agrave;nh mục ti&amp;ecirc;u săn đuổi của một nh&amp;oacute;m khủng bố. May mắn thay, &amp;ocirc;ng nhận được sự gi&amp;uacute;p đỡ từ cậu b&amp;eacute; người địa phương Oskari (Onni Tommila) đang nhận nhiệm vụ săn linh dương để chứng tỏ sự trưởng th&amp;agrave;nh theo tục lệ của người d&amp;acirc;n nơi đ&amp;acirc;y. Liệu chỉ với cung nỏ l&amp;agrave;m vũ kh&amp;iacute;, Tổng thống v&amp;agrave; Oskari sẽ vượt qua mọi chuyện như thế n&amp;agrave;o?&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:19:20', '2016-08-07 02:25:00', NULL, 1, '6.3', 1, NULL, NULL, 1, NULL, 1, 1),
(12, 43, 'Động Đất San Andreas', 'dong-dat-san-andreas', 'Dong Dat San Andreas', 'Khi một nhà địa chấn học ko nổi tiếng cảnh báo về một trận động đất 12.7 độ, ko ai quan tâm đến cảnh báo của cô. Vì lẽ đó, cô một mình đưa gia đình đến nơi ai toàn trước khi trận động đất làm tan nát và khiến LA tách ra khỏi đất', 'San Andreas Quake 2015', 'san-andreas-quake-2015', 'image/film/6c6fe9261f2515d67736019981a85cb5.jpg', 'image/film/san-andreas-quake-2015.jpg', '83 phút', 2015, 1, 0, '&lt;p&gt;Khi một nh&amp;agrave; địa chấn học ko nổi tiếng cảnh b&amp;aacute;o về một trận động đất 12.7 độ, ko ai quan t&amp;acirc;m đến cảnh b&amp;aacute;o của c&amp;ocirc;. V&amp;igrave; lẽ đ&amp;oacute;, c&amp;ocirc; một m&amp;igrave;nh đưa gia đ&amp;igrave;nh đến nơi ai to&amp;agrave;n trước khi trận động đất l&amp;agrave;m tan n&amp;aacute;t v&amp;agrave; khiến LA t&amp;aacute;ch ra khỏi đất liền&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:21:23', '2016-08-07 02:25:00', NULL, 1, '', 1, NULL, NULL, 1, NULL, 1, 1),
(13, 44, 'Đấu Trường Đẫm Máu', 'dau-truong-dam-mau', 'Dau Truong Dam Mau', 'David Chúa thấy mình bị buộc vào thế giới hoang dã của một trường võ sĩ giác đấu hiện đại, nơi mà những người đàn ông chiến đấu đến cùng cho vui chơi giải trí của quần chúng trực', 'Arena ', 'arena', 'image/film/0aa4d2cc84908eb940acac9fdf4982b7.jpg', 'image/film/arena.jpg', ' 94 phút', 2015, 1, 0, '&lt;p&gt;David Ch&amp;uacute;a thấy m&amp;igrave;nh bị buộc v&amp;agrave;o thế giới hoang d&amp;atilde; của một trường v&amp;otilde; sĩ gi&amp;aacute;c đấu hiện đại, nơi m&amp;agrave; những người đ&amp;agrave;n &amp;ocirc;ng chiến đấu đến c&amp;ugrave;ng cho vui chơi giải tr&amp;iacute; của quần ch&amp;uacute;ng trực tuyến.&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:22:50', '2016-08-07 02:25:00', NULL, 1, '4.8', 1, NULL, NULL, 1, NULL, 1, 1),
(14, 45, 'Báo Thù', 'bao-thu-ghajini', 'Bao Thu', 'Một chàng trai là chủ tịch của 1 tập đoàn máy tính lớn đem lòng yêu 1 cô gái đã tung tin đồn là cô gái đó là bạn gái của anh, cho dù 2 người chưa từng gặp mặt. Và rồi 2 người bắt đầu yêu nhau nhưng cô gái đã', 'Ghajini ', 'ghajini', 'image/film/2c0f199150b8a9717724ee2b7e9debef.jpg', 'image/film/ghajini-21.jpg', '184 phút', 2015, 1, 0, '&lt;p&gt;Một ch&amp;agrave;ng trai l&amp;agrave; chủ tịch của 1 tập đo&amp;agrave;n m&amp;aacute;y t&amp;iacute;nh lớn đem l&amp;ograve;ng y&amp;ecirc;u 1 c&amp;ocirc; g&amp;aacute;i đ&amp;atilde; tung tin đồn l&amp;agrave; c&amp;ocirc; g&amp;aacute;i đ&amp;oacute; l&amp;agrave; bạn g&amp;aacute;i của anh, cho d&amp;ugrave; 2 người chưa từng gặp mặt. V&amp;agrave; rồi 2 người bắt đầu y&amp;ecirc;u nhau nhưng c&amp;ocirc; g&amp;aacute;i đ&amp;atilde; bị 1 t&amp;ecirc;n tr&amp;ugrave;m bu&amp;ocirc;n người trả th&amp;ugrave; v&amp;igrave; đ&amp;atilde; chỉ mặt tố c&amp;aacute;o &amp;ocirc;ng ta. Kết quả c&amp;ocirc; bị giết chết c&amp;ograve;n ch&amp;agrave;ng trai th&amp;igrave; bị đ&amp;aacute;nh đến nỗi bị bệnh mất tr&amp;iacute; nhớ sau mỗi 15 ph&amp;uacute;t, những g&amp;igrave; trước đ&amp;oacute; sẽ qu&amp;ecirc;n hết. Ch&amp;agrave;ng trai l&amp;agrave;m sao c&amp;oacute; thể trả th&amp;ugrave; được với tr&amp;iacute; nhớ sao&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:24:39', '2016-08-07 02:25:00', NULL, 1, '7.3', 2, NULL, NULL, 1, NULL, 1, 1),
(15, 47, 'Ghajini Phải Chết', 'ghajini-phai-chet', 'Ghajini Phai Chet', 'Một chàng trai là chủ tịch của 1 tập đoàn máy tính lớn đem lòng yêu 1 cô gái đã tung tin đồn là cô gái đó là bạn gái của anh, cho dù 2 người chưa từng gặp mặt. Và rồi 2 người bắt đầu yêu nhau nhưng cô gái đã', 'Ghajini 2', 'ghajini-2', 'image/film/968789-ghajini-2-pst.jpg', 'image/film/ghajini-2.jpg', '', 2015, 1, 1, '&lt;p&gt;Một ch&amp;agrave;ng trai l&amp;agrave; chủ tịch của 1 tập đo&amp;agrave;n m&amp;aacute;y t&amp;iacute;nh lớn đem l&amp;ograve;ng y&amp;ecirc;u 1 c&amp;ocirc; g&amp;aacute;i đ&amp;atilde; tung tin đồn l&amp;agrave; c&amp;ocirc; g&amp;aacute;i đ&amp;oacute; l&amp;agrave; bạn g&amp;aacute;i của anh, cho d&amp;ugrave; 2 người chưa từng gặp mặt. V&amp;agrave; rồi 2 người bắt đầu y&amp;ecirc;u nhau nhưng c&amp;ocirc; g&amp;aacute;i đ&amp;atilde; bị 1 t&amp;ecirc;n tr&amp;ugrave;m bu&amp;ocirc;n người trả th&amp;ugrave; v&amp;igrave; đ&amp;atilde; chỉ mặt tố c&amp;aacute;o &amp;ocirc;ng ta. Kết quả c&amp;ocirc; bị giết chết c&amp;ograve;n ch&amp;agrave;ng trai th&amp;igrave; bị đ&amp;aacute;nh đến nỗi bị bệnh mất tr&amp;iacute; nhớ sau mỗi 15 ph&amp;uacute;t, những g&amp;igrave; trước đ&amp;oacute; sẽ qu&amp;ecirc;n hết. Ch&amp;agrave;ng trai l&amp;agrave;m sao c&amp;oacute; thể trả th&amp;ugrave; được với tr&amp;iacute; nhớ sao&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:26:28', '2016-08-07 02:25:00', NULL, 1, '7.3', 1, NULL, NULL, 1, NULL, 1, 1),
(16, 48, 'Bầu Trời Sắt', 'bau-troi-sat', 'Bau Troi Sat', 'Trong khoảnh khắc cuối cùng của chiến tranh thế giới thứ II, chương trình không gian bí mật của Đức Quốc xã đã trốn tránh việc bị phá hủy bằng cách chạy trốn tới phía tối của Mặt Trăng.Trong suốt 70 năm ẩn dấu bí mật, Đức quốc xã đã cho xây dựng một pháo', 'Iron Sky', 'iron-sky', 'image/film/470aba3413222a4a4233254798f709da.jpg', 'image/film/iron-sky.jpg', '92 phút', 2015, 1, 1, '&lt;p&gt;Trong khoảnh khắc cuối c&amp;ugrave;ng của chiến tranh thế giới thứ II, chương tr&amp;igrave;nh kh&amp;ocirc;ng gian b&amp;iacute; mật của Đức Quốc x&amp;atilde; đ&amp;atilde; trốn tr&amp;aacute;nh việc bị ph&amp;aacute; hủy bằng c&amp;aacute;ch chạy trốn tới ph&amp;iacute;a tối của Mặt Trăng.Trong suốt 70 năm ẩn dấu b&amp;iacute; mật, Đức quốc x&amp;atilde; đ&amp;atilde; cho x&amp;acirc;y dựng một ph&amp;aacute;o đ&amp;agrave;i kh&amp;ocirc;ng gian khổng lồ với một hạm đội c&amp;aacute;c phi thuyền tối t&amp;acirc;n. Năm 2018,với sức mạnh của c&amp;ocirc;ng nghệ v&amp;agrave; lực lượng đ&amp;ocirc;ng đảo.Ch&amp;uacute;ng trở lại Tr&amp;aacute;i Đất để lấy lại những g&amp;igrave; thuộc về ch&amp;uacute;ng.&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:27:42', '2016-08-07 02:25:00', NULL, 1, '6.0', 1, NULL, NULL, 1, NULL, 1, 1),
(17, 49, 'Ông Nội Tôi Là Cương Thi', 'ong-noi-toi-la-cuong-thi', 'Ong Noi Toi La Cuong Thi', 'Bộ phim Sifu vs vampire kể về hai tên giang hồ vô tình đánh thức một xác chết nhiều năm sau một vụ cá cược. Từ đó hồi sinh hàng loạt cương thi khác, các xác chết cương thi tràn ra đường phố HongKong và gây ra cảnh hỗn loạn. Mọi chuyện bắt đầu rối rắm và', 'Sifu Vs. Vampire', 'sifu-vs-vampire', 'image/film/108144-sifu-vs-vampire-pst.jpg', 'image/film/sifu-vs.-vampire.jpg', '95 phút', 2015, 1, 1, '&lt;p&gt;Phim &amp;Ocirc;ng T&amp;ocirc;i L&amp;agrave; Cương Thi &amp;ndash; Sifu vs Vampire do đạo diễn Trần Dực Hằng phụ tr&amp;aacute;ch thực hiện. Khi Nicky v&amp;agrave; Boo nhận lệnh của &amp;ocirc;ng chủ đi t&amp;igrave;m l&amp;atilde;o sư phụ phong thủy để khai quật một ng&amp;ocirc;i mộ đ&amp;atilde; bị phong ấn nhiều năm, l&amp;atilde;o sư phụ kh&amp;ocirc;ng đồng &amp;yacute;. Trước sự phản đối v&amp;agrave; cảnh b&amp;aacute;o của l&amp;atilde;o sư phụ về khai quật ng&amp;ocirc;i mộ, họ kh&amp;ocirc;ng tin về chuyện ma quỷ v&amp;agrave; đ&amp;atilde; đ&amp;aacute;nh thức một ma lực rất lớn l&amp;agrave;m hồi sinh h&amp;agrave;ng loạt c&amp;aacute;c cương thi kh&amp;aacute;c, khiến ch&amp;uacute;ng tr&amp;agrave;n ra khắp đường phố Hongkong. Mọi thứ trở n&amp;ecirc;n o&amp;aacute;i ăm hơn khi đo&amp;agrave;n cương thi n&amp;agrave;y tiến v&amp;agrave;o một phim trường đang quay một bộ phim về cuộc x&amp;acirc;m lăng của bọn cương thi.&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:29:18', '2016-08-07 02:25:00', NULL, 1, '5.3', 1, NULL, NULL, 1, NULL, 1, 1),
(18, 50, 'Trò chơi sinh tồn', 'tro-choi-sinh-ton', 'Tro choi sinh ton', 'Tại một trường trung học, một giáo viên đang giảng bài bất thình lình bị nổ tung sọ ngay bên bục giảng. Kế sau đó, những vụ nổ xảy ra liên tiếp. Shun Takahata và những học sinh trong lớp bị ép buộc phải cùng tham gia một trò chơi sinh tử mà họ không hề biết ai đứng đằng', 'As the Gods Will', 'as-the-gods-will', 'image/film/c8e869f5eddabb814ca1adb02450e303.jpg', 'image/film/as-the-gods-will.jpg', '116 phút', 2015, 2, 0, '&lt;p&gt;Tại một trường trung học, một gi&amp;aacute;o vi&amp;ecirc;n đang giảng b&amp;agrave;i bất th&amp;igrave;nh l&amp;igrave;nh bị nổ tung sọ ngay b&amp;ecirc;n bục giảng. Kế sau đ&amp;oacute;, những vụ nổ xảy ra li&amp;ecirc;n tiếp. Shun Takahata v&amp;agrave; những học sinh trong lớp bị &amp;eacute;p buộc phải c&amp;ugrave;ng tham gia một tr&amp;ograve; chơi sinh tử m&amp;agrave; họ kh&amp;ocirc;ng hề biết ai đứng đằng sau chuyện n&amp;agrave;y, tại sao v&amp;agrave; mọi việc sẽ đi về đ&amp;acirc;u?&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:31:10', '2016-08-07 02:25:00', NULL, 1, '6.4', 1, NULL, NULL, 1, NULL, 1, 1),
(19, 51, 'Đảo Hải Tặc', 'dao-hai-tac', 'Dao Hai Tac', 'Phim One Piece là chuyện về cậu bé Monkey D. Luffy rất ngưỡng mộ những hải tặc. Chuyện phim One Piece bắt đầu khi một ngày do ăn nhầm Trái Ác Quỷ, bị biến thành người cao su và sẽ không bao giờ biết hơi. 10 năm sau sự việc đó, cậu rời quê mình và kiếm đủ 10 thành viên để', 'One Piece ', 'one-piece', 'image/film/e14f56ba299adffdd8fc6635af27388f.jpg', 'image/film/one-piece.jpg', '', 2015, 2, 0, '&lt;p&gt;Phim One Piece l&amp;agrave; chuyện về cậu b&amp;eacute; Monkey D. Luffy rất ngưỡng mộ những hải tặc. Chuyện phim One Piece bắt đầu khi một ng&amp;agrave;y do ăn nhầm Tr&amp;aacute;i &amp;Aacute;c Quỷ, bị biến th&amp;agrave;nh người cao su v&amp;agrave; sẽ kh&amp;ocirc;ng bao giờ biết hơi. 10 năm sau sự việc đ&amp;oacute;, cậu rời qu&amp;ecirc; m&amp;igrave;nh v&amp;agrave; kiếm đủ 10 th&amp;agrave;nh vi&amp;ecirc;n để th&amp;agrave;nh 1 nh&amp;oacute;m cướp biển, biệt hiệu Hải tặc Mũ Rơm. Khi đ&amp;oacute; của phi&amp;ecirc;u lưu t&amp;igrave;m kiếm kho b&amp;aacute;u One Piece bắt đầu. Trong cuộc phi&amp;ecirc;u lưu t&amp;igrave;m kiếm One Piece, băng Hải tặc mũ rơm&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:32:45', '2016-08-07 02:25:00', NULL, 1, '', 1, NULL, NULL, 1, NULL, 1, 1),
(20, 53, 'Diện Mạo Hoàng Đế', 'dien-mao-hoang-de', 'Dien Mao Hoang De', 'Đây là dự án truyền hình mới nhất của nam ca sĩ - diễn viên Seo In Guk. Anh sẽ vào vai Hoàng tử Gwanghee, vốn là con trai của một nàng hầu nên tư cách thừa kế ngai vàng của Gwanghee bị nghi ngờ. Trước ngày lên ngai vàng, Gwanghee từng bị truất ngôi và phải', 'The King''s Face', 'the-kings-face', 'image/film/929122-kingface-pst.jpg', 'image/film/the-kings-face.jpg', '', 2015, 2, 0, '&lt;p&gt;Đ&amp;acirc;y l&amp;agrave; dự &amp;aacute;n truyền h&amp;igrave;nh mới nhất của nam ca sĩ - diễn vi&amp;ecirc;n Seo In Guk. Anh sẽ v&amp;agrave;o vai Ho&amp;agrave;ng tử Gwanghee, vốn l&amp;agrave; con trai của một n&amp;agrave;ng hầu n&amp;ecirc;n tư c&amp;aacute;ch thừa kế ngai v&amp;agrave;ng của Gwanghee bị nghi ngờ. Trước ng&amp;agrave;y l&amp;ecirc;n ngai v&amp;agrave;ng, Gwanghee từng bị truất ng&amp;ocirc;i v&amp;agrave; phải t&amp;igrave;m c&amp;aacute;ch vượt qua nhiều mối nguy hiểm chết người. Nhưng nhờ việc học được thuật xem tướng, Gwanghee dần biết c&amp;aacute;ch bảo vệ bản th&amp;acirc;n v&amp;agrave; cuối c&amp;ugrave;ng trở th&amp;agrave;nh vị vua thứ 15 của triều đại&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:36:31', '2016-08-07 02:25:00', NULL, 1, '', 1, NULL, NULL, 1, NULL, 1, 1),
(21, 54, 'Trại Giam Kiểu Mỹ 2', 'trai-giam-kieu-my-2', 'Trai Giam Kieu My 2', 'Orange Is the New Black 2 tiếp tục miêu tả chân thực cuộc sống có phần thác loạn của những nữ tù nhân khi họ phải tìm mọi cách để sống sót trong tù. Sau việc làm rất tệ của cô, thì lần này Piper đã được chuyển đến một nhà tù khác', 'Orange Is the New Black - Season 2', 'orange-is-the-new-black-season-2', 'image/film/635490-orange-new-black-season-2-pst.png', 'image/film/orange-is-the-new-black.jpg', '', 2015, 2, 0, '&lt;p&gt;Orange Is the New Black 2 tiếp tục mi&amp;ecirc;u tả ch&amp;acirc;n thực cuộc sống c&amp;oacute; phần th&amp;aacute;c loạn của những nữ t&amp;ugrave; nh&amp;acirc;n khi họ phải t&amp;igrave;m mọi c&amp;aacute;ch để sống s&amp;oacute;t trong t&amp;ugrave;. Sau việc l&amp;agrave;m rất tệ của c&amp;ocirc;, th&amp;igrave; lần n&amp;agrave;y Piper đ&amp;atilde; được chuyển đến một nh&amp;agrave; t&amp;ugrave; kh&amp;aacute;c c&amp;oacute; phần khắc nghiệt hơn. Liệu lần n&amp;agrave;y Piper sẽ phải l&amp;agrave;m sao để sống s&amp;oacute;t trong nơi n&amp;agrave;y đ&amp;acirc;y?&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:38:36', '2016-08-07 02:25:00', NULL, 1, '', 1, NULL, NULL, 1, NULL, 1, 1),
(22, 55, 'Kỳ Án Nhà Thanh 2', 'ky-an-nha-thanh-2', 'Ky An Nha Thanh 2', 'Một năm trước, 2 người vợ Lệ Thư, Hương Dung và con cái của Thi Thế Luân (Âu Dương Chấn Hoa) chết trong vụ đắm thuyền, từ sự việc đó đã làm thay đổi quan điểm sống của ông ta, ông quyết định sống những ngày tháng an', ' A Pillow Case Of Mystery 2', 'a-pillow-case-of-mystery-2', 'image/film/871121-kyannhathanh2-pst.jpg', 'image/film/a-pillow-case-of-mystery-2.jpg', '20 tập', 2015, 2, 0, '&lt;div id=&quot;mCSB_2_container&quot; class=&quot;mCSB_container&quot; dir=&quot;ltr&quot;&gt;\r\n&lt;p&gt;Một năm trước, 2 người vợ Lệ Thư, Hương Dung v&amp;agrave; con c&amp;aacute;i của Thi Thế Lu&amp;acirc;n (&amp;Acirc;u Dương Chấn Hoa) chết trong vụ đắm thuyền, từ sự việc đ&amp;oacute; đ&amp;atilde; l&amp;agrave;m thay đổi quan điểm sống của &amp;ocirc;ng ta, &amp;ocirc;ng quyết định sống những ng&amp;agrave;y th&amp;aacute;ng an nh&amp;agrave;n, &amp;ocirc;ng dẫn mẹ Triệu Nguyệt Nga (L&amp;yacute; Phụng) v&amp;agrave; người vợ ch&amp;iacute;nh thức B&amp;agrave;ng C&amp;aacute;t &amp;Aacute;i (Lữ San) v&amp;agrave; vợ hai Giả T&amp;uacute; Nguyễn Ngọc (Đ&amp;agrave;o Doanh Doanh) đi du ngoạn tại huyện Xian Yu, kết quả Thế Lu&amp;acirc;n hữu duy&amp;ecirc;n gặp được Trẫm Ti&amp;ecirc;n (c&amp;aacute;i gối mới &amp;ndash; L&amp;yacute; Tư Tiệp) v&amp;agrave; s&amp;aacute;nh duy&amp;ecirc;n được 2 người vợ kh&amp;aacute;c trong cuộc đời l&amp;agrave; Ng&amp;ocirc; Qu&amp;acirc;n Nhu (Tuy&amp;ecirc;n Huy&amp;ecirc;n) v&amp;agrave; Lục Tiểu Điệp (Đường Ninh)&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div id=&quot;mCSB_2_scrollbar_vertical&quot; class=&quot;mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical&quot;&gt;&amp;nbsp;&lt;/div&gt;', NULL, 0, 0, '2015-05-25 21:40:50', '2016-08-07 02:25:00', NULL, 1, '', 1, NULL, NULL, 1, NULL, 1, 1),
(23, 56, 'Cặp Đôi Ngoại Cảm', 'cap-doi-ngoai-cam', 'Cap Doi Ngoai Cam', 'Bộ phim dựa trên một tác phẩm truyện tranh nổi tiếng cùng tên, trong đó Park Yoochun sẽ vào vai Choi Moogak bị vô cảm (mất đi vị giác, xúc giác, cảm giác đau đớn hay rung cảm), một cảnh sát truy đuổi kẻ giết người hàng loạt sau khi người em gái duy nhất của mình bị', 'The Girl Who Sees Smells', 'the-girl-who-sees-smells', 'image/film/995495-naemsaereul-boneun-sonyeo-megabox-pst.jpg', 'image/film/the-girl-who-sees-smells.jpg', '16 tập', 2015, 2, 0, '<p>Bộ phim dựa tr&ecirc;n một t&aacute;c phẩm truyện tranh nổi tiếng c&ugrave;ng t&ecirc;n, trong đ&oacute; Park Yoochun sẽ v&agrave;o vai Choi Moogak bị v&ocirc; cảm (mất đi vị gi&aacute;c, x&uacute;c gi&aacute;c, cảm gi&aacute;c đau đớn hay rung cảm), một cảnh s&aacute;t truy đuổi kẻ giết người h&agrave;ng loạt sau khi người em g&aacute;i duy nhất của m&igrave;nh bị mất sau vụ &aacute;n b&iacute; ẩn đ&oacute;.</p>\r\n', NULL, 0, 0, '2015-05-25 21:42:36', '2016-08-07 08:41:41', NULL, 1, '8.6', 1, NULL, NULL, 1, 'sdgasgdshdshdshdsh', 1, 1),
(24, 59, 'Hậu Trường', 'hau-truong', 'Hau Truong', 'Đây là bộ phim kể về hậu trường, những gì xảy ra phía sau màn ảnh của các chương trình truyền hình (variety show). Baek Seung Chan (Kim Soo Hyun) trong vai 1 đạo diễn muốn thực hiện 1 chương trình lớn. Anh ấy cộng tác với Cindy (IU), ngôi sao nhạc Pop và Tak Ye Ji (Gong Hyo Jin), đạo diễn âm', 'Producers ', 'producers', 'image/film/163730-producer-2015-megabox-pst1.jpg', 'image/film/producer_poster5.png', '16', 2015, 2, 0, '&lt;p&gt;Đ&amp;acirc;y l&amp;agrave; bộ phim kể về hậu trường, những g&amp;igrave; xảy ra ph&amp;iacute;a sau m&amp;agrave;n ảnh của c&amp;aacute;c chương tr&amp;igrave;nh truyền h&amp;igrave;nh (variety show). Baek Seung Chan (Kim Soo Hyun) trong vai 1 đạo diễn muốn thực hiện 1 chương tr&amp;igrave;nh lớn. Anh ấy cộng t&amp;aacute;c với Cindy (IU), ng&amp;ocirc;i sao nhạc Pop v&amp;agrave; Tak Ye Ji (Gong Hyo Jin), đạo diễn &amp;acirc;m nhạc v&amp;agrave; Ra Jun Mo (Cha Tae Hyun) l&amp;agrave; 1 đạo diễn gạo cội kh&amp;aacute;c.&lt;/p&gt;', NULL, 0, 0, '2015-05-25 21:44:33', '2016-08-07 02:25:00', NULL, 1, '', 2, NULL, NULL, 1, NULL, 1, 1),
(25, 60, 'Survivor 2015', 'survivor-2015', 'Survivor 2015', 'A Foreign Service Officer in London tries to prevent a terrorist attack set to hit New York, but is forced to go on the run when she is framed for crimes she did not commit.', 'Survivor 2015', 'survivor-2015', 'image/film/survivor.jpg', 'image/film/survivor_poster.jpg', '96 phút', 2015, 1, 1, '&lt;p&gt;A State Department employee newly posted to the American embassy in London is charged with stopping terrorists from getting into the U.S. That puts her right in the line of fire and she is targeted for death and framed for crimes. Discredited, she is forced to go on the run while she tries to clear her name and stop a large-scale terrorist attack set for New Year''s Eve in Times Square.&lt;/p&gt;', NULL, 0, 0, '2015-06-17 08:43:20', '2016-08-07 02:25:00', NULL, 1, '5.5', 1, NULL, NULL, 1, NULL, 1, 1),
(26, 62, 'Jurassic Park 3', 'jurassic-park-3', 'Jurassic Park 3', 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.', 'Jurassic Park 3', 'jurassic-park-3', 'image/film/jurassic-park-3.jpg', 'image/film/jurassic-park-3-poster.jpg', '92', 2015, 2, 1, '<p>A decidedly odd couple with ulterior motives convince Dr. Alan Grant to go to Isla Sorna (the second InGen dinosaur lab.), resulting in an unexpected landing...and unexpected new inhabitants on the island.</p>\r\n', NULL, 0, 0, '2015-06-29 15:42:41', '2016-08-07 08:40:17', NULL, 1, '5.9', 1, NULL, NULL, 1, '', 1, 1),
(27, 66, 'Tân Tam Quốc Diễn Nghĩa 2010', 'tan-tam-quoc-dien-nghia-2010', 'Tan Tam Quoc Dien Nghia 2010', 'Bắt đầu viết kịch bản từ năm 2004, qua 5 lần chỉnh sửa, chính thức bấm máy vào tháng 9/2008. Bộ phim quy tụ lực lượng diễn viên hùng hậu với dàn sao đến từ cả Trung Quốc đại lục, Hongkong và Đài Loan với kinh phí đầu tư khổng lồ. Bộ phim nói về triều đại Đông Hán Võ Đế tới Tây Tấn Võ Đế, lịch sử kéo dài gần 100 năm. ', 'Three Kingdoms', 'three-kingdoms', 'image/film/tam-quoc-dien-nghia-three-kingdoms-2010.png', 'image/film/maxresdefault.jpg', '85 tập', 2015, 2, 0, '<p>Bắt đầu viết kịch bản từ năm 2004, qua 5 lần chỉnh sửa, ch&iacute;nh thức bấm m&aacute;y v&agrave;o th&aacute;ng 9/2008. Bộ phim quy tụ lực lượng diễn vi&ecirc;n h&ugrave;ng hậu với d&agrave;n sao đến từ cả Trung Quốc đại lục, Hongkong v&agrave; Đ&agrave;i Loan với kinh ph&iacute; đầu tư khổng lồ. Bộ phim n&oacute;i về triều đại Đ&ocirc;ng H&aacute;n V&otilde; Đế tới T&acirc;y Tấn V&otilde; Đế, lịch sử k&eacute;o d&agrave;i gần 100 năm. Bộ phim n&agrave;y căn cứ v&agrave;o 1 trong tứ đại danh t&aacute;c của Trung Quốc - &quot;Tam Quốc Diễn Nghĩa&quot;, cải bi&ecirc;n th&agrave;nh phim. Tam Quốc l&agrave; thời đại chiến loạn chiến sự li&ecirc;n mi&ecirc;n, kh&oacute;i lửa chiến tranh tr&agrave;n lan khắp nơi. Đồng thời cũng l&agrave; thời kỳ c&oacute; nhiều nh&acirc;n t&agrave;i xuất hiện. Những vị mưu sĩ t&agrave;i ba, những nh&agrave; qu&acirc;n sự lỗi lạc đ&atilde; c&oacute; dịp ph&ocirc; triển h&ugrave;ng t&agrave;i đại lược, tr&iacute; tuệ dăm thước của m&igrave;nh trong thời đại chiến loạn. Đ&uacute;ng như c&acirc;u &quot;Loạn thế xuất anh t&agrave;i&quot;.Ch&uacute; trọng tới việc tranh h&ugrave;ng của Ngụy - Thục - Ng&ocirc; tam h&ugrave;ng. Mi&ecirc;u tả r&otilde; t&iacute;nh c&aacute;ch của từng nh&acirc;n vật theo đ&uacute;ng nguy&ecirc;n t&aacute;c :</p>\r\n\r\n<p>* Lưu Bị - Ch&iacute;nh thống hiền qu&acirc;n.<br />\r\n* T&agrave;o Th&aacute;o - Gi&aacute;p thi&ecirc;n tứ linh chư hầu.<br />\r\n* Gia C&aacute;t Lượng - Tầm nh&igrave;n cao xa, đo&aacute;n việc như thần.<br />\r\n* Quan Vũ - Ph&aacute; ngũ quan, tr&atilde;m lục tướng, đơn đao ph&oacute; hội, thuỷ yểm, nghĩa th&iacute;ch T&agrave;o Th&aacute;o...<br />\r\n* Ngo&agrave;i ra : Triệu V&acirc;n trung th&agrave;nh; Trương Phi lỗ m&atilde;ng; Chu Du ganh tị; Lỗ T&uacute;c trung hậu; Tư M&atilde; &Yacute; th&acirc;m trầm... đều được mi&ecirc;u tả th&agrave;nh c&ocirc;ng.</p>\r\n\r\n<p>Những cảnh chiến tranh được ph&aacute;c hoạ lại 1 c&aacute;ch quy m&ocirc; với trận chiến Dục Thủy, X&iacute;ch B&iacute;ch...Tiết tấu dồn dập, n&aacute;o nhiệt, tạo cảm gi&aacute;c cho người xem tựa hồ như đang trực tiếp tham gia với chiến sự của Tam Quốc.</p>\r\n\r\n<p>Bộ phim n&agrave;y từ Bi&ecirc;n đạo, thu h&igrave;nh, mỹ thuật đều được thực hiện bởi tổ quay phim v&agrave; đội ngũ diễn vi&ecirc;n nổi tiếng ở Trung Quốc.</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 0, 0, '2016-05-07 05:27:27', '2016-08-07 08:39:37', NULL, 2, '12.89', 4, NULL, NULL, 0, '', 1, 1),
(41, 145, 'adsfdsgs', 'adsfdsgs', 'adsfdsgs', '', 'dsgsadg', 'dsgsadg', '2016/08/07/hydrangeas-1470562009.jpg', '2016/08/07/lighthouse-1470561940.jpg', '11', 11, 2, 0, '<p>dfasgsdfgadsg</p>\r\n', NULL, 0, 0, '2016-08-07 09:25:52', '2016-08-07 09:27:56', NULL, 1, '11', 1, NULL, NULL, 0, '11', 1, 1),
(28, 71, 'Cuộc Đua Tuyệt Chủng', 'cuoc-dua-tuyet-chung', 'Cuoc Dua Tuyet Chung', 'Phim nói về hàng loạt các nghiên cứu bí mật nhằm ngăn chặn sự tuyệt chủng của các loài động vật quý hiếm. Phim có sự tham gia của các diễn viên như Elon Musk, Joel Sartore, Louie Psihoyos...', 'Racing Extinction', 'racing-extinction', 'image/film/re_festival_poster.jpg', 'image/film/racing-extinction-poster.jpg', '90 phút', 2015, 1, 1, '', NULL, 0, 0, '2016-05-22 05:43:30', '2016-08-07 02:25:00', NULL, 2, '', 1, NULL, NULL, 1, NULL, 1, 1),
(29, 73, 'CHIẾN TRANH GIỮA CÁC VÌ SAO 7: THẦN LỰC THỨC TỈNH', 'chien-tranh-giua-cac-vi-sao-7-than-luc-thuc-tinh', 'CHIEN TRANH GIUA CAC VI SAO 7: THAN LUC THUC TINH', 'Phim lấy bối cảnh 30 năm sau sự kiện của Star Wars phần IV – Return of the Jedi (Sự trở lại của Jedi). Bộ phim sẽ theo chân các nhân vật quen thuộc như Luke, Han Solo, Công chúa Leia… đến một hành tinh lạ với mục đích thu thập mẫu vật. ', 'Star Wars: Episode VII - The Force Awakens (2015)', 'star-wars-episode-vii-the-force-awakens-2015', 'image/film/startwars.jpg', 'image/film/star-wars1.jpg', '136 phút', 2015, 1, 1, '&lt;p&gt;Phim lấy bối cảnh 30 năm sau sự kiện của Star Wars phần IV &amp;ndash; Return of the Jedi (Sự trở lại của Jedi). Bộ phim sẽ theo ch&amp;acirc;n c&amp;aacute;c nh&amp;acirc;n vật quen thuộc như Luke, Han Solo, C&amp;ocirc;ng ch&amp;uacute;a Leia&amp;hellip; đến một h&amp;agrave;nh tinh lạ với mục đ&amp;iacute;ch thu thập mẫu vật. Nhưng họ kh&amp;ocirc;ng ngờ m&amp;igrave;nh sắp đ&amp;aacute;nh thức một kẻ th&amp;ugrave; nguy hiểm bậc nhất vũ trụ hiện đang ngủ y&amp;ecirc;n nơi đ&amp;acirc;y. Star Wars: The Force Awakens sẽ được chỉ đạo bởi một người mới, đạo diễn J.J. Abrams, thay cho người s&amp;aacute;ng tạo George Lucas, v&amp;agrave; sẽ mở đầu cho bộ 3 phần phim tiếp theo của loạt phim n&amp;agrave;y.&lt;/p&gt;', NULL, 0, 0, '2016-05-22 06:54:57', '2016-08-07 02:25:00', NULL, 2, '', 3, NULL, NULL, 1, '', 1, 1),
(30, 74, 'Người về từ cõi chết', 'nguoi-ve-tu-coi-chet', 'Nguoi ve tu coi chet', 'The Revenant dựa trên câu chuyện có thật, phim kể về người thợ săn Hugh Glass (Leonardo Dicaprio thủ vai). Sau một trận chiến đẫm máu với những người Mỹ bản địa, Hugh bị thương và bị đồng đội tàn nhẫn bỏ lại trong khu núi tuyết giá rét. Từ đó, Hugh Glass phải làm tất cả mọi thứ để có thể tồn tại giữa cái lạnh tàn bạo, những động vật ăn thịt và chiến tranh với những bộ lạc nơi vùng núi hoang vu. ', 'The Revenant (2015)', 'the-revenant-2015', 'image/film/poster.medium.jpg', 'image/film/the-revenant-nguoi-ve-tu-coi-chet-54483.jpg', '151 phút', 2015, 1, 1, '&lt;p&gt;&lt;strong&gt;The Revenant&lt;/strong&gt; dựa tr&amp;ecirc;n c&amp;acirc;u chuyện c&amp;oacute; thật, phim kể về người thợ săn &lt;strong&gt;Hugh Glass&lt;/strong&gt; (Leonardo Dicaprio thủ vai). Sau một trận chiến đẫm m&amp;aacute;u với những người Mỹ bản địa, Hugh bị thương v&amp;agrave; bị đồng đội t&amp;agrave;n nhẫn bỏ lại trong khu n&amp;uacute;i tuyết gi&amp;aacute; r&amp;eacute;t. Từ đ&amp;oacute;, Hugh Glass phải l&amp;agrave;m tất cả mọi thứ để c&amp;oacute; thể tồn tại giữa c&amp;aacute;i lạnh t&amp;agrave;n bạo, những động vật ăn thịt v&amp;agrave; chiến tranh với những bộ lạc nơi v&amp;ugrave;ng n&amp;uacute;i hoang vu. &lt;br /&gt;&lt;br /&gt;Nhờ &amp;yacute; ch&amp;iacute; ki&amp;ecirc;n cường, người thợ săn đ&amp;atilde; sống s&amp;oacute;t một c&amp;aacute;ch kỳ diệu, một m&amp;igrave;nh băng qua qu&amp;atilde;ng đường d&amp;agrave;i hơn &lt;strong&gt;3.000 dặm&lt;/strong&gt; (4.828 km) để trở về v&amp;agrave; trả th&amp;ugrave; được &lt;strong&gt;John Fitzgerald&lt;/strong&gt; (Tom Hardy thủ vai) &amp;ndash; kẻ từng l&amp;agrave; bạn của m&amp;igrave;nh năm xưa.&lt;br /&gt;&lt;br /&gt;Điều đặc biệt l&amp;agrave; bộ phim n&amp;agrave;y quay tại một địa điểm ngo&amp;agrave;i trời v&amp;ocirc; c&amp;ugrave;ng hoang vu hẻo l&amp;aacute;nh, chưa ai đặt ch&amp;acirc;n tới, v&amp;agrave; chỉ sử dụng &amp;aacute;nh s&amp;aacute;ng tự nhi&amp;ecirc;n.&lt;/p&gt;', NULL, 0, 0, '2016-05-22 08:58:23', '2016-08-07 02:25:00', NULL, 2, '', 3, NULL, NULL, 0, '', 1, 1),
(31, 82, 'Mật vụ KINGSMAN', 'mat-vu-kingsman', 'Mat vu KINGSMAN', 'Phim Mật vụ Kingsman kể về một tổ chức điệp viên cực kỳ bí mật trong quá trình tuyển mộ Eggs một đứa trẻ đường phố không có học thức gì nhưng cực thông minh và có tố chất trở thành một điệp viên công nghệ cao', 'Kingsman: The Secret Service (2015)', 'kingsman-the-secret-service-2015', 'image/film/mat-vu-kingsman.jpg', 'image/film/1-d1211.png', '129 phút', 2015, 1, 1, '&lt;p&gt;Phim Mật vụ Kingsman kể về một tổ chức điệp vi&amp;ecirc;n cực kỳ b&amp;iacute; mật trong qu&amp;aacute; tr&amp;igrave;nh tuyển mộ Eggs một đứa trẻ đường phố kh&amp;ocirc;ng c&amp;oacute; học thức g&amp;igrave; nhưng cực th&amp;ocirc;ng minh v&amp;agrave; c&amp;oacute; tố chất trở th&amp;agrave;nh một điệp vi&amp;ecirc;n c&amp;ocirc;ng nghệ cao, một người c&amp;oacute; triển vọng v&amp;agrave;o chương tr&amp;igrave;nh đ&amp;agrave;o tạo điệp vi&amp;ecirc;n v&amp;ocirc; c&amp;ugrave;ng khắc nghiệt nhằm đối ph&amp;oacute; với c&amp;aacute;c hiểm họa to&amp;agrave;n cầu phần tử khủng bố l&amp;agrave; thi&amp;ecirc;n t&amp;agrave;i c&amp;ocirc;ng nghệ biến chất...&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;\r\n&lt;div&gt;&lt;img src=&quot;http://bomtan.biz/upload/image/film/93e902df-b5a2-45c8-bcb9-1be0c2ac1cea.jpg&quot; alt=&quot;&quot; width=&quot;600&quot; height=&quot;339&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;&lt;br /&gt;&lt;br /&gt;Liệu qu&amp;yacute; &amp;ocirc;ng mật vụ Harry d&amp;agrave;y dặn kinh nghiệm v&amp;agrave; nữ điệp vi&amp;ecirc;n trẻ tuổi Roxy c&amp;oacute; thể huấn luyện t&amp;ecirc;n điệp vi&amp;ecirc;n kh&amp;oacute; ưa n&amp;agrave;y để c&amp;ugrave;ng thực hiện nhiệm vụ chống lại &amp;aacute;c nh&amp;acirc;n Richmond Valentine đang &amp;acirc;m mưu x&amp;oacute;a sổ phần lớn d&amp;acirc;n cư tr&amp;ecirc;n tr&amp;aacute;i đất th&amp;agrave;nh một thế giới mới?&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;\r\n&lt;div&gt;&lt;img src=&quot;http://bomtan.biz/upload/image/film/hinh_anh_kingsman_the_secret_service_10.jpg&quot; alt=&quot;&quot; width=&quot;612&quot; height=&quot;344&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', NULL, 0, 0, '2016-05-22 09:05:22', '2016-08-07 02:25:00', NULL, 2, '7.8', 1, NULL, NULL, 0, NULL, 1, 1),
(32, 91, 'Dị nhân: Khải huyền', 'di-nhan-khai-huyen', 'Di nhan: Khai huyen', 'X-Men: Apocalypse là bộ phim siêu anh hùng dựa trên X-Men, những nhân vật xuất hiện trong Marvel Comics. Bộ phim là phần tiếp theo của X-Men: Days of Future Past và là phần thứ 9 trong loạt phim X-Men.', 'X-Men: Apocalypse', 'x-men-apocalypse', 'image/film/mv5bmju1odm1mzyxn15bml5banbnxkftztgwota4nde2ode._v1_sx640_sy720_.jpg', 'image/film/561d41eca2c3f3bfd09d9b04582ea2c2-x-men-apocalypse-latino-1463774848.jpg', '144 phút', 2015, 1, 0, '&lt;p&gt;&lt;strong&gt;Apocalypse&lt;/strong&gt; l&amp;agrave; dị nh&amp;acirc;n đầu ti&amp;ecirc;n v&amp;agrave; h&amp;ugrave;ng mạnh nhất của vũ trụ X-Men, đ&amp;atilde; t&amp;iacute;ch lũy được rất nhiều quyền năng đột biến kh&amp;aacute;c nhau, trở th&amp;agrave;nh kẻ bất tử v&amp;agrave; bất khả chiến bại. Sau khi tỉnh dậy từ giấc ngủ h&amp;agrave;ng ng&amp;agrave;n năm, hắn cảm thấy thất vọng với thế giới n&amp;agrave;y v&amp;agrave; năng lực đ&amp;aacute;ng sợ nhất của hắn l&amp;agrave; khống chế những người kh&amp;aacute;c v&amp;agrave; biến họ th&amp;agrave;nh kỵ sĩ của m&amp;igrave;nh, nhằm tẩy sạch nh&amp;acirc;n loại v&amp;agrave; tạo ra một trật tự thế giới mới v&amp;agrave; qua đ&amp;oacute;, hắn sẽ trị v&amp;igrave; n&amp;oacute;. Số phận của Tr&amp;aacute;i Đất phải đối mặt với t&amp;igrave;nh huống ng&amp;agrave;n c&amp;acirc;n treo sợi t&amp;oacute;c, Raven c&amp;ugrave;ng với sự gi&amp;uacute;p đỡ của Gi&amp;aacute;o Sư X buộc phải dẫn dắt một đội X-Men trẻ tuổi nhằm chống lại kẻ th&amp;ugrave; lớn nhất từ trước đến nay v&amp;agrave; cứu rỗi nh&amp;acirc;n loại khỏi sự diệt chủng.&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;\r\n&lt;div&gt;&lt;img src=&quot;https://images2-focus-opensocial.googleusercontent.com/gadgets/proxy?container=focus&amp;amp;gadget=a&amp;amp;no_expand=1&amp;amp;refresh=604800&amp;amp;url=http://image.phimmoi.net/post/2016/05/21/amazing-x-men-apocalypse-movie-4k-wallpaper-680x425.jpg&quot; alt=&quot;Dị Nh&amp;acirc;n 7: Cuộc chiến chống Apocalypse - X-Men: Apocalypse&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;&lt;br /&gt;&lt;br /&gt;C&amp;acirc;u chuyện trong &lt;strong&gt;X-Men: Apocalypse&lt;/strong&gt; diễn ra 10 năm sau c&amp;aacute;c sự kiện trong &lt;strong&gt;X-Men: Days of Future Past&lt;/strong&gt;, thiết lập lại to&amp;agrave;n bộ thời gian của bộ truyện. L&amp;uacute;c n&amp;agrave;y Magneto đang trốn ở Ba Lan, sống một cuộc sống b&amp;igrave;nh thường với người phụ nữ &amp;ocirc;ng y&amp;ecirc;u. Nhưng sự mất m&amp;aacute;t của c&amp;ocirc; ấy đẩy &amp;ocirc;ng v&amp;agrave;o thế giới của sự tuyệt vọng v&amp;agrave; b&amp;oacute;ng tối. &amp;Ocirc;ng ta t&amp;igrave;m đến &lt;strong&gt;Apocalypse&lt;/strong&gt; như một vị cứu tinh, một vị thần v&amp;agrave; cảm thấy m&amp;atilde;n nguyện khi được ở b&amp;ecirc;n &amp;ocirc;ng ta c&amp;ugrave;ng 3 th&amp;agrave;nh vi&amp;ecirc;n kh&amp;aacute;c trong nh&amp;oacute;m &lt;strong&gt;Tứ kỵ&lt;/strong&gt; gồm &lt;strong&gt;Storm, Psylocke v&amp;agrave; Archangel &lt;/strong&gt;.&lt;/p&gt;', NULL, 0, 0, '2016-05-22 15:31:41', '2016-08-07 02:25:00', NULL, 2, '7.7', 2, NULL, NULL, 1, NULL, 1, 1);
INSERT INTO `film` (`id`, `meta_id`, `title`, `slug`, `alias`, `description`, `original_title`, `original_slug`, `image_url`, `poster_url`, `duration`, `release_year`, `type`, `cinema`, `content`, `note`, `likes`, `views`, `created_at`, `updated_at`, `updated_episode_date`, `status`, `imdb`, `top`, `order`, `expired`, `push_top`, `trailer`, `created_user`, `updated_user`) VALUES
(33, 99, 'Naruto Shippuuden', 'naruto-shippuuden', 'Naruto Shippuuden', 'Sau khi huấn luyện 2 năm rưỡi với Jiraiya, Naruto trở về làng Lá, đoàn tụ với những người bạn cậu đã chia tay, và lập lại Nhóm 7, giờ được gọi là Nhóm Kakashi, với Sai thế chỗ Sasuke. Tất cả những người bạn của Naruto đều đã trưởng thành và thăng cấp.', 'Naruto Shippuuden', 'naruto-shippuuden', 'image/film/4984b3f77c488fd8f81009b51687c392_1364544877.jpg', 'image/film/cf5b1c35b7629f8a8ce618a2a18e586e_1396405819.jpg', '461 tập', 2015, 1, 1, '&lt;p&gt;Naruto (&amp;mdash;ナルト&amp;mdash; NARUTO?) l&amp;agrave; loạt manga Nhật Bản bằng văn bản v&amp;agrave; minh họa bởi t&amp;aacute;c giả Kishimoto Masashi, đ&amp;atilde; được dựng th&amp;agrave;nh anime (phim hoạt h&amp;igrave;nh Nhật). Nh&amp;acirc;n vật ch&amp;iacute;nh l&amp;agrave; Uzumaki Naruto, một thiếu ni&amp;ecirc;n ồn &amp;agrave;o, hiếu động, một ninja lu&amp;ocirc;n muốn t&amp;igrave;m c&amp;aacute;ch khẳng định m&amp;igrave;nh để được mọi người c&amp;ocirc;ng nhận, rất muốn trở th&amp;agrave;nh Hokage (Hỏa Ảnh) - người l&amp;atilde;nh đạo ninja cả l&amp;agrave;ng, được tất cả mọi người k&amp;iacute;nh trọng. Kishimoto ban đầu đ&amp;atilde; ph&amp;aacute;c hoạ Naruto trong một ấn bản Akamaru Jump v&amp;agrave;o th&amp;aacute;ng 8 năm 1997.[2] Sự kh&amp;aacute;c biệt ở chỗ Naruto l&amp;agrave; con trai của Hồ Li Ch&amp;iacute;n Đu&amp;ocirc;i thay v&amp;igrave; l&amp;agrave; người chứa đựng, v&amp;agrave; c&amp;acirc;u chuyện được đặt trong bối cảnh hiện đại hơn.[3] Phi&amp;ecirc;n bản ban đầu của Naruto n&amp;agrave;y đ&amp;atilde; c&amp;oacute; khả năng biến th&amp;agrave;nh một phụ nữ quyến rũ &amp;ndash; nhưng khi cậu ta l&amp;agrave;m vậy, một c&amp;aacute;i đu&amp;ocirc;i c&amp;aacute;o xuất hiện. Kishimoto sau đ&amp;oacute; mới s&amp;aacute;ng t&amp;aacute;c lại c&amp;acirc;u chuyện th&amp;agrave;nh hiện trạng, v&amp;agrave; được ph&amp;aacute;t h&amp;agrave;nh lần đầu bởi Shueisha v&amp;agrave;o năm 1999 trong ấn bản thứ 43 của tạp ch&amp;iacute; Shonen Jump H&amp;agrave;ng tuần tại Nhật. Đến tập 36, bộ manga đ&amp;atilde; b&amp;aacute;n được hơn 71 triệu bản tại Nhật.[4] Tập truyện được cấp giấy ph&amp;eacute;p cho việc ph&amp;aacute;t h&amp;agrave;nh bản dịch sang tiếng Anh bởi Viz Media. Được đăng nhiều kỳ tr&amp;ecirc;n tạp ch&amp;iacute; Shonen Jump, Naruto đ&amp;atilde; trở th&amp;agrave;nh loạt manga b&amp;aacute;n chạy nhất của c&amp;ocirc;ng ty.[5] Cho đến 2 th&amp;aacute;ng 4 năm 2008, 28 tập đầu ti&amp;ecirc;n của bộ truyện đ&amp;atilde; c&amp;oacute; mặt trong tiếng Anh.&lt;/p&gt;', NULL, 0, 0, '2016-05-24 15:22:21', '2016-08-07 02:25:00', NULL, 2, '', 3, NULL, NULL, 1, NULL, 1, 1),
(34, 103, 'Cậu bé rừng xanh', 'cau-be-rung-xanh', 'Cau be rung xanh', 'Phim THE JUNGLE BOOK 2016 nói về chuyến phiêu lưu của Mowgli – một cậu bé mồ côi được đàn chó sói nuôi dưỡng trong rừng già Ấn Độ. Ngày qua ngày, Mowgli cảm thấy mình không còn được chào đón ở mái nhà tự nhiên này nữa,', 'The Jungle Book (2016)', 'the-jungle-book-2016', 'image/film/cau-be-rung-xanh-the-jungle-book-201603165.jpg', 'image/film/cau-be-rung-xanh-the-jungle-book-2016-201603726.jpg', '100 phút', 2016, 1, 1, '&lt;p&gt;Phim THE JUNGLE BOOK 2016 n&amp;oacute;i về chuyến phi&amp;ecirc;u lưu của Mowgli &amp;ndash; một cậu b&amp;eacute; mồ c&amp;ocirc;i được đ&amp;agrave;n ch&amp;oacute; s&amp;oacute;i nu&amp;ocirc;i dưỡng trong rừng gi&amp;agrave; Ấn Độ. Ng&amp;agrave;y qua ng&amp;agrave;y, Mowgli cảm thấy m&amp;igrave;nh kh&amp;ocirc;ng c&amp;ograve;n được ch&amp;agrave;o đ&amp;oacute;n ở m&amp;aacute;i nh&amp;agrave; tự nhi&amp;ecirc;n n&amp;agrave;y nữa, bởi một con hổ hung dữ t&amp;ecirc;n Shere Khan tuy&amp;ecirc;n bố sẽ ti&amp;ecirc;u diệt những sinh vật c&amp;oacute; khả năng g&amp;acirc;y n&amp;ecirc;n hiểm họa, sau khi hắn bị lo&amp;agrave;i người tấn c&amp;ocirc;ng. Buộc phải rời khỏi chốn dung th&amp;acirc;n duy nhất, Mogwli dấn bước v&amp;agrave;o một h&amp;agrave;nh tr&amp;igrave;nh kh&amp;aacute;m ph&amp;aacute;, với sự dẫn dắt của b&amp;aacute;o đen Bagheera v&amp;agrave; gấu Baloo. Tr&amp;ecirc;n đường đi, Mowgli đ&amp;atilde; gặp những sinh vật xấu xa: một con trăn t&amp;ecirc;n Kaa c&amp;oacute; &amp;aacute;nh mắt th&amp;ocirc;imi&amp;ecirc;n, con khỉ đột King Louie với khả năng n&amp;oacute;i tiếng người lưu lo&amp;aacute;t. Ch&amp;uacute;ng cố &amp;eacute;p buộc Mowgli h&amp;eacute; lộ c&amp;ocirc;ng thức tạo ra &amp;ldquo;b&amp;ocirc;ng hoa đỏ&amp;rdquo; lập l&amp;ograve;e, được gọi l&amp;agrave; Lửa.&lt;/p&gt;', NULL, 0, 0, '2016-05-26 04:20:03', '2016-08-07 02:25:00', NULL, 2, '8.1', 2, NULL, NULL, 1, 'https://youtu.be/ZrO2JGtEjo4', 1, 1),
(35, 142, 'Người hùng tia chớp (PHẦN 2)', 'nguoi-hung-tia-chop-phan-2', 'Nguoi hung tia chop (PHAN 2)', 'Phim tập trung vào khoa học Barry Allen, người trở thành siêu anh hùng với sức mạnh và tốc độ đáng kinh ngạc sau khi bị sét đánh do vụ nổ máy gia tốc Harrison Wells.', 'The Flash (Season 2) (2015)', 'the-flash-season-2-2015', 'image/film/poster.medium.flash2015.jpg', 'image/film/nguoi-hung-tia-chop.jpg', '23 tập', 2015, 1, 1, '&lt;p&gt;Phim Người H&amp;ugrave;ng Tia Chớp Phần 2 VietSub.&lt;strong&gt;&amp;nbsp;Người H&amp;ugrave;ng Tia Chớp&lt;/strong&gt; l&amp;agrave; một series phim truyền h&amp;igrave;nh Mỹ, được ph&amp;aacute;t triển bởi nh&amp;agrave; văn/nh&amp;agrave; sản xuất Greg Berlanti, Andrew Kreisberg v&amp;agrave; Geoff Johns, được ph&amp;aacute;t s&amp;oacute;ng tr&amp;ecirc;n The CW. Bộ phim dựa tr&amp;ecirc;n nh&amp;acirc;n vật Barry Allen / Flash, được xuất bản bởi DC Comics, một si&amp;ecirc;u anh h&amp;ugrave;ng trong trang phục chiến đấu với tốc độ di chuyển si&amp;ecirc;u ph&amp;agrave;m. Bộ phim kể về Allen, do Grant Gustin thủ vai, một cảnh s&amp;aacute;t điều tra hiện trường, người đạt được tốc độ si&amp;ecirc;u ph&amp;agrave;m. Anh sử dụng tốc độ si&amp;ecirc;u ph&amp;agrave;m của m&amp;igrave;nh để chống lại bọn tội phạm, ngay cả những người c&amp;oacute; si&amp;ecirc;u năng lực kh&amp;aacute;c.The Flash được c&amp;ocirc;ng chiếu tại Bắc Mỹ v&amp;agrave;o ng&amp;agrave;y 7 th&amp;aacute;ng 10 năm 2014. Bộ phim nhận được sự đ&amp;oacute;n nhận của c&amp;aacute;c nh&amp;agrave; ph&amp;ecirc; b&amp;igrave;nh v&amp;agrave; kh&amp;aacute;n giả. N&amp;oacute; đ&amp;atilde; gi&amp;agrave;nh được giải People''s Choice Award cho &quot;Favorite New TV Drama&quot; trong năm 2014. Ng&amp;agrave;y 11 th&amp;aacute;ng 1 năm 2015, The CW đ&amp;atilde; giới thiệu The Flash m&amp;ugrave;a thứ 2, dự kiến ra mắt v&amp;agrave;o ng&amp;agrave;y 6 th&amp;aacute;ng 10 năm 2015.&lt;/p&gt;\r\n&lt;p&gt;&lt;img title=&quot;Người H&amp;ugrave;ng Tia Chớp Phần 2&quot; src=&quot;http://media.bilutv.com/uploads/2015/11/640/nguoi-hung-tia-chop-phan-2-2015-201511151.jpg&quot; alt=&quot;&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;Phim The Flash (Season 2) n&amp;oacute;i về tiến sĩ Stein (Victor Garber) v&amp;agrave; Cisco (Carlos Valdez) đang chuẩn bị &amp;ldquo;đ&amp;oacute;n tiếp&amp;rdquo; một vị kh&amp;aacute;ch kh&amp;ocirc;ng mời n&amp;agrave;o đ&amp;oacute; tại S.T.A.R. Labs. Đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; Jay l&amp;agrave; một nh&amp;acirc;n vật b&amp;iacute; ẩn đ&amp;atilde; đến Central city để cảnh b&amp;aacute;o cho Bary Allen v&amp;agrave; đội của anh về mối nguy hiểm sẽ xảy ra trong tương lai gần. B&amp;ecirc;n cạnh đ&amp;oacute;, một c&amp;acirc;u chuyện t&amp;igrave;nh y&amp;ecirc;u mới sẽ được viết l&amp;ecirc;n bởi Barry Allen v&amp;agrave; Patty Spivot , cộng sự của thanh tra Joe West thay cho Eddie đ&amp;atilde; chết.Trong phần 2 n&amp;agrave;y, kh&amp;aacute;n giả cũng sẽ được chi&amp;ecirc;m ngưỡng chiếc huy hiệu trắng huyền thoại thay v&amp;igrave; chiếc huy hiệu đỏ ch&amp;oacute;t tr&amp;ecirc;n ngực &amp;aacute;o của The Flash season 1. H&amp;atilde;y c&amp;ugrave;ng đ&amp;oacute;n xem bạn nh&amp;eacute;!&lt;/p&gt;\r\n&lt;p&gt;&lt;img title=&quot;Người H&amp;ugrave;ng Tia Chớp Phần 2 2015&quot; src=&quot;http://media.bilutv.com/uploads/2015/11/640/5466f58addd0e-201511347.jpg&quot; alt=&quot;&quot; /&gt;&lt;/p&gt;', NULL, 0, 0, '2016-06-03 13:13:12', '2016-08-07 02:25:00', NULL, 2, '8.3', 1, NULL, NULL, 1, '', 1, 1),
(36, 135, 'Người hùng tia chớp test', 'nguoi-hung-tia-chop-test', 'Nguoi hung tia chop test', 'Nội dugn về người hùng tia', 'Người hùng tia chớp test', 'nguoi-hung-tia-chop-test', 'image/no-image.png', 'mage/no-image.png', '', 2015, 1, 0, '&lt;p&gt;Nội dugn về người h&amp;ugrave;ng tia chớp&lt;/p&gt;', NULL, 0, 0, '2016-07-15 04:07:08', '2016-08-07 02:25:00', NULL, 2, '8', 3, NULL, NULL, 1, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `film_category`
--

CREATE TABLE `film_category` (
  `film_id` int(20) NOT NULL,
  `category_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_category`
--

INSERT INTO `film_category` (`film_id`, `category_id`) VALUES
(1, 1),
(1, 2),
(1, 5),
(1, 10),
(1, 11),
(2, 1),
(2, 2),
(2, 9),
(3, 1),
(3, 2),
(3, 8),
(4, 1),
(4, 2),
(4, 5),
(5, 1),
(6, 1),
(7, 1),
(8, 6),
(9, 4),
(9, 6),
(10, 9),
(10, 13),
(11, 1),
(11, 12),
(12, 1),
(13, 1),
(13, 8),
(14, 1),
(14, 11),
(15, 1),
(15, 12),
(16, 1),
(16, 4),
(16, 12),
(17, 8),
(18, 8),
(19, 1),
(19, 3),
(19, 4),
(20, 7),
(20, 10),
(20, 13),
(21, 4),
(21, 13),
(22, 1),
(22, 7),
(23, 1),
(23, 6),
(24, 6),
(24, 10),
(25, 1),
(25, 8),
(26, 1),
(26, 2),
(26, 11),
(27, 1),
(27, 6),
(27, 9),
(27, 12),
(28, 1),
(29, 1),
(30, 1),
(30, 9),
(30, 11),
(31, 1),
(32, 1),
(32, 2),
(32, 6),
(33, 3),
(34, 1),
(34, 6),
(35, 1),
(35, 6),
(35, 10),
(36, 1),
(36, 9),
(37, 1),
(37, 6),
(38, 2),
(39, 9),
(39, 12),
(40, 9),
(40, 12),
(41, 1),
(41, 6);

-- --------------------------------------------------------

--
-- Table structure for table `film_country`
--

CREATE TABLE `film_country` (
  `film_id` int(20) NOT NULL,
  `country_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_country`
--

INSERT INTO `film_country` (`film_id`, `country_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 4),
(5, 7),
(6, 8),
(7, 4),
(7, 7),
(8, 3),
(8, 4),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 9),
(15, 9),
(16, 2),
(17, 7),
(18, 8),
(19, 8),
(20, 3),
(21, 2),
(22, 4),
(22, 7),
(23, 2),
(23, 5),
(24, 3),
(25, 2),
(26, 2),
(27, 2),
(27, 3),
(27, 5),
(27, 6),
(27, 8),
(27, 9),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 8),
(34, 2),
(35, 2),
(36, 2),
(37, 1),
(37, 4),
(39, 4),
(39, 7),
(40, 4),
(40, 7),
(41, 7),
(41, 8);

-- --------------------------------------------------------

--
-- Table structure for table `film_crew`
--

CREATE TABLE `film_crew` (
  `film_id` int(20) NOT NULL,
  `crew_id` int(20) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_crew`
--

INSERT INTO `film_crew` (`film_id`, `crew_id`, `type`) VALUES
(1, 5, 1),
(1, 6, 1),
(1, 7, 1),
(1, 12, 1),
(1, 53, 2),
(1, 54, 2),
(1, 55, 2),
(1, 56, 1),
(1, 57, 1),
(1, 58, 1),
(1, 59, 1),
(1, 60, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 64, 1),
(1, 65, 1),
(1, 66, 1),
(1, 67, 1),
(1, 68, 1),
(1, 69, 1),
(1, 70, 1),
(1, 71, 1),
(1, 72, 1),
(1, 73, 1),
(1, 74, 1),
(1, 75, 1),
(1, 76, 3),
(1, 77, 3),
(1, 78, 3),
(2, 17, 2),
(2, 18, 1),
(2, 19, 1),
(2, 20, 1),
(2, 21, 1),
(2, 22, 3),
(3, 23, 2),
(3, 24, 1),
(3, 25, 1),
(3, 26, 1),
(3, 27, 1),
(4, 30, 2),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(5, 37, 2),
(5, 38, 1),
(5, 39, 1),
(5, 40, 1),
(5, 41, 1),
(6, 42, 2),
(6, 43, 1),
(6, 44, 1),
(6, 45, 1),
(6, 46, 1),
(7, 40, 1),
(7, 47, 1),
(7, 48, 1),
(7, 49, 1),
(7, 50, 1),
(7, 51, 1),
(7, 52, 1),
(8, 79, 2),
(8, 80, 1),
(8, 81, 1),
(8, 82, 1),
(9, 83, 2),
(9, 84, 1),
(9, 85, 1),
(9, 86, 1),
(9, 87, 1),
(10, 88, 2),
(10, 89, 1),
(10, 90, 1),
(10, 91, 1),
(10, 92, 1),
(11, 93, 2),
(11, 94, 1),
(11, 95, 1),
(11, 96, 1),
(11, 97, 1),
(12, 98, 2),
(12, 99, 1),
(12, 100, 1),
(12, 101, 1),
(12, 102, 1),
(13, 94, 1),
(13, 103, 2),
(13, 104, 1),
(13, 105, 1),
(13, 106, 1),
(14, 107, 2),
(14, 108, 1),
(14, 109, 1),
(14, 110, 1),
(14, 111, 1),
(15, 107, 2),
(15, 108, 1),
(15, 109, 1),
(15, 110, 1),
(15, 111, 1),
(17, 112, 2),
(17, 113, 1),
(17, 114, 1),
(17, 115, 1),
(17, 116, 1),
(18, 117, 2),
(18, 118, 1),
(18, 119, 1),
(18, 120, 1),
(18, 121, 1),
(19, 122, 2),
(19, 123, 1),
(19, 124, 1),
(19, 125, 1),
(20, 126, 2),
(20, 127, 1),
(20, 128, 1),
(20, 129, 1),
(20, 130, 1),
(20, 131, 1),
(21, 132, 2),
(21, 133, 2),
(21, 134, 2),
(21, 135, 2),
(21, 136, 1),
(21, 137, 1),
(21, 138, 1),
(21, 139, 1),
(22, 140, 1),
(22, 141, 1),
(22, 142, 1),
(23, 4, 2),
(23, 6, 1),
(23, 10, 1),
(23, 22, 3),
(23, 28, 3),
(24, 147, 2),
(24, 148, 2),
(24, 149, 1),
(24, 150, 1),
(24, 151, 1),
(25, 152, 2),
(25, 153, 1),
(25, 154, 1),
(25, 155, 1),
(25, 156, 1),
(25, 157, 1),
(25, 158, 1),
(25, 159, 1),
(25, 160, 3),
(25, 161, 3),
(26, 162, 2),
(26, 163, 1),
(26, 164, 1),
(26, 165, 1),
(26, 166, 1),
(26, 167, 3),
(26, 168, 3),
(26, 169, 3),
(26, 170, 3),
(26, 171, 3),
(27, 4, 2),
(27, 6, 1),
(27, 9, 2),
(27, 14, 3),
(27, 15, 3),
(27, 16, 3),
(27, 22, 3),
(27, 28, 3),
(27, 29, 3),
(28, 187, 2),
(28, 188, 1),
(28, 189, 1),
(28, 190, 1),
(28, 191, 1),
(28, 192, 1),
(28, 193, 1),
(28, 194, 1),
(28, 195, 1),
(28, 196, 1),
(29, 197, 2),
(29, 198, 1),
(29, 199, 1),
(29, 200, 1),
(29, 201, 1),
(29, 202, 1),
(29, 203, 1),
(29, 204, 1),
(30, 24, 1),
(30, 205, 2),
(30, 206, 1),
(30, 207, 1),
(30, 208, 1),
(31, 94, 1),
(31, 209, 2),
(31, 210, 1),
(31, 211, 1),
(31, 212, 1),
(32, 213, 2),
(32, 214, 1),
(32, 215, 1),
(32, 216, 1),
(32, 217, 3),
(32, 218, 3),
(32, 219, 3),
(32, 220, 3),
(33, 221, 2),
(34, 237, 2),
(34, 238, 1),
(34, 239, 1),
(34, 240, 1),
(34, 241, 1),
(34, 242, 1),
(34, 243, 1),
(35, 5, 1),
(35, 6, 1),
(35, 7, 1),
(37, 4, 2),
(37, 6, 1),
(37, 9, 2),
(37, 15, 3),
(37, 22, 3),
(37, 28, 3),
(39, 11, 1),
(39, 16, 3),
(39, 17, 2),
(40, 11, 1),
(40, 16, 3),
(40, 17, 2),
(41, 6, 1),
(41, 7, 1),
(41, 8, 2),
(41, 9, 2),
(41, 10, 1),
(41, 15, 3),
(41, 16, 3),
(41, 17, 2),
(41, 23, 2);

-- --------------------------------------------------------

--
-- Table structure for table `film_episode`
--

CREATE TABLE `film_episode` (
  `id` int(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `film_id` int(10) NOT NULL,
  `server_id` int(5) NOT NULL DEFAULT '1',
  `source` varchar(500) DEFAULT NULL,
  `streaming_url` varchar(500) DEFAULT NULL,
  `sub_url` text,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_episode`
--

INSERT INTO `film_episode` (`id`, `name`, `slug`, `film_id`, `server_id`, `source`, `streaming_url`, `sub_url`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(12, 'Full', 'full-hd', 17, 1, 'https://photos.google.com/share/AF1QipNsLPij46VPEy_56wkodZSdRYt3ZQWRNzCY6jRTD-DVRWAkotODhS3SYFGz8JiHEw/photo/AF1QipM7L_K_ex9mS_opHj0GH9Jdt6Cjl-uU3n2pCXZ-?key=TmNYblRMODlnd3JBTDdrX2Fya0RqTVJkUW5weENn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(13, '1', '1', 24, 1, 'http://data.ayeweb.com/Producer-2015/1/Producer.E01.HD.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(14, '2', '2', 24, 1, 'http://data.ayeweb.com/Producer-2015/2/Producer.E02.HD.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(15, '3', '3', 24, 1, 'http://data.ayeweb.com/Producer-2015/3/Producer.E03.HD.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(18, '720HD', '720hd', 25, 1, 'https://photos.google.com/share/AF1QipNLdadKB_yz3ipcHKm7t_NorpXFdjt8P8iUK7sxHXy83o2e2jXmoZcYm6caH8Neng/photo/AF1QipPLNQ4a4oqI6JZq0OIkwPzq09YczZWULZBqVdwG?key=elRMTVhzNjQ2Q05CTTZhWnRHcG5TMC16ajhOcUFR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(59, 'Full', 'full', 14, 1, 'https://photos.google.com/share/AF1QipPBLGVrlblhYYmGwZwe2nfNdQ0tqVddGTZkyIIRdW0SMk2O4fuAO7W9DGO2Mv0iBQ/photo/AF1QipMfbfksfo7AouPO-LuZW4awM2NSE4-KDwWx7erO?key=dHJUSmduc2tVZE5uX1RmRElLb0dZMjVEYVl3RWpR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(17, 'Full', 'full', 16, 1, 'https://photos.google.com/share/AF1QipOnkvVFMMSHGLKFYSLn9wxHN9VuGCYLkMi2BEB2AVeXu4wJHCxkvQ6oLa2G7DiRTQ/photo/AF1QipPMnqcI9_iejknFCbgKYRZ0ugjGgVcE3hF43jdk?key=dlk5Q0FRMDQzQUNfWnRqc19COXNjekpHU05BY2p3', 'https://photos.google.com/share/AF1QipOnkvVFMMSHGLKFYSLn9wxHN9VuGCYLkMi2BEB2AVeXu4wJHCxkvQ6oLa2G7DiRTQ/photo/AF1QipPMnqcI9_iejknFCbgKYRZ0ugjGgVcE3hF43jdk?key=dlk5Q0FRMDQzQUNfWnRqc19COXNjekpHU05BY2p3', 'http://bomtan.biz/upload/file/data/Avengers.Age.of.Ultron.2015.720p.BluRay.x264-SPARKS.vtt', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(19, 'mHD', 'mhd', 13, 1, 'https://photos.google.com/share/AF1QipOmCmRLkXeKekWnVjxP4MtEgBXXeWH7m2Hehp1KVY-4buRH9x7YzmTZN4WAtMMe0A/photo/AF1QipMFe8SeBZW9vRA6K0BA0fiAZziIuJ2H7uE6PP86?key=U04zRjFGLTNTc0dWcFh0cGhHdEVnaE5rclNxTGhR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(20, '480', '480', 12, 1, 'http://data.ayeweb.com/San-Andreas-Quake-2015/480/San.Andreas.Quake.2015.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(55, 'Full', 'full', 26, 1, 'https://photos.google.com/share/AF1QipMbpzwDTsB2TtDFiCGXOzU_EfxKtAP2OGq6CoT9erfu19rF-wkZ4i05Z7cls_S5HQ/photo/AF1QipPaKRS5lgsGuv-l-IT1rOQr3YKO0j12U1X1IPpG?key=aXE5aEFwdTZsR2FJbXZ4aksxb2FfeFdZekNGZFNB', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(22, 'mHD', 'mhd', 3, 1, 'http://data.ayeweb.com/Mad.Max.Fury.Road.2015/Mad.Max.Fury.Road.2015.720p.WEB-DL.X264.AC3-EVO-muxed.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(56, 'Tập 31', 'tap-31', 27, 1, 'https://photos.google.com/share/AF1QipP4xyXQioHrJEJ2HKBxYAx14Ol5TALQXpSJq6LX4R62JPK8Fi502O8Yg7fC107-Mw/photo/AF1QipNgckIhMSieZYz-0ffzC0VvOxUGlGfr-Vdx_8rH?key=Y3BmSEF5VE9OSjNNaWNCQWlhSE5SM19Rb0VGUDBR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(24, 'Tập 1', 'tap-1', 27, 1, 'https://photos.google.com/share/AF1QipMQK1mTcDanKGS_4dD__0oN6Cb9OdCaLpcZDtOKflvasLHyC_p9nbT-tmO3G1Z7mQ/photo/AF1QipN3-him6H7rSjZpWqUxYqlA4hS-Nt-74hneK6KY?key=NUhrLW1CeDYxRUUxNERjNWRzZmpCeTRhQ2FucHhn', '', NULL, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(25, 'Tập 2', 'tap-2', 27, 1, 'https://photos.google.com/share/AF1QipOlnYZlsATXwQ_FtRkxI7zP9qm4MRaw6GOuUSSVByjXCXwVA6d5Z1eHAHHkdv9dIg/photo/AF1QipOJPW3wxl5Cd9ungnyqu0UzXomiwWEusW7Y75P6?key=VjJrdExydHVqVi1pbk45cFcxTjZheVlKU3hWRldR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(26, 'Tập 3', 'tap-3', 27, 1, 'https://photos.google.com/share/AF1QipNYHTnogea7MqcmRfI_KuGm1vT8y3PyAPHWunvmou750_SPyZ4dRfMVM-vX9UqIqQ/photo/AF1QipOSy7i1SemJxLhYocSK7baX-Jaw15LbDuMkGs44?key=Z1I0b3dkc3FPbEdMd2hycGJyUnpBSFotMEdoeWhn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(27, 'Tập 4', 'tap-4', 27, 1, 'https://photos.google.com/share/AF1QipOxcqtOzU23d8kGUk1mUFQEKmo9_kS700oKN-Kzypx7wRIbnJ9Oo4I2bv7WEmEtfg/photo/AF1QipPhFX0CWLPpyhCZucy1kExJXP2gCSMpg4JSD8sj?key=X1JMQmJBSXBid2RRc04tMGVIcGtRMzlUZnNzUE1B', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(28, 'Tập 5', 'tap-5', 27, 1, 'https://photos.google.com/share/AF1QipNB0G2DHj0z1G5DZQpDwuLsbhr_IVC4p1hesV52yj5UH8mwxC-hZlt5WpGCaTnTkw/photo/AF1QipM5Q9xta-DXu4_IAh8CiPW9D0plVeM8O7WhXrnP?key=Zl95WW9HU0lwd3dhR2pBTS1EV2t5RVVDd0VEX0l3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(29, 'Tập 6', 'tap-6', 27, 1, 'https://photos.google.com/share/AF1QipPrJGRn4M-MjvXOd3OkPDu9o53o3U3fyFrPyaUDZThUwN7k_xQ6tKXSKEFWKHQJVw/photo/AF1QipMcRDln1FO3UrCya4sFBfWqSYiseXQpfT2MPSYa?key=VVZPeUt3ck5yN1hRV3R6b0lFTC1PUEdPRkFLTUJR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(30, 'Tập 7', 'tap-7', 27, 1, 'https://photos.google.com/share/AF1QipOWOwD8F6TapjcIRF8E4G51B_yhz3SBbWa6xf-dH0ybTmMyCVkO3tz7eoiR2OF4mg/photo/AF1QipNgpbMr4hU9rCsO5bmnAy-2o3Yq8qC8hNeGGBFC?key=cy1SdWZiWlhubDY2R05xQjRPR09yWDVlLU14dHZR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(31, 'Tập 8', 'tap-8', 27, 1, 'https://photos.google.com/share/AF1QipPRs6bj2hLQF3xG6tAujmDdegjnkIWutKeZTWqmH8T_-792iTqTb6NJNa2XGlgHcQ/photo/AF1QipNtr_gwPYU6pggF9QlV3N6B4c54qLnV-qJz1TJy?key=NFc1LXptakVtRlN5ZzM5WFNweXNRRlZKaThxTnRR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(32, 'Tập 9', 'tap-9', 27, 1, 'https://photos.google.com/share/AF1QipNAxKs7Hl47OmZceh_BOzBzUO9AKAZlp1anGwHFqqSh2D4LJMzCcj080EIk1p5oxw/photo/AF1QipNRDZQflTXgZjMIHHgRJ_BjAmhyVH04gBYi4kex?key=VEJDaXNNU0x2UUpCWjBUZElKSC1BZjBoWjNmV2N3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(33, 'Tập 10', 'tap-10', 27, 1, 'https://photos.google.com/share/AF1QipMGhSUIk8SkpTP8mTjaLtkGXPvwJ3wxz_7x4riZ0XsBwakipLB5E20V6B1annGJmA/photo/AF1QipMInBLvkXip39ArWQsxmYcX5HtXjoG_dzCeIHIB?key=UkMwV1AxaXhES2YzZkxTanI3WFFnNDdJaHF2QWNR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(34, 'Tập 11', 'tap-11', 27, 1, 'https://photos.google.com/share/AF1QipMu_WpfEilw22Odz88F4WLIziorA7uz1dUJQv108zCqBI7zafBGvY78pNp4KI38rg/photo/AF1QipMPhNklB-1h8pU3ZDEKv57JCBbpxk5A510sjAk6?key=R3Q4RHlDRGhrcE04dTRHZzVyb1UtRGoyR3lkSFR3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(35, 'Tập 12', 'tap-12', 27, 1, 'https://photos.google.com/share/AF1QipOtaJeYDet_939MJqDrnZFnpRER9OojhPwNZ2_zFGJ4so890GaqmFTrCu7UlpHT9Q/photo/AF1QipNi9dxQ2rHo3EnAc9pN-5KJB1GsE9vX7mIRq3yP?key=ems3T0hBQXJkZ2o4eHJGQ29KbktydVJ6QjdmbWh3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(36, 'Tập 13', 'tap-13', 27, 1, 'https://photos.google.com/share/AF1QipOx2L7h4AZEyHXVig4sYBMmmTIgT0TlHzbwDE67d_RqFxjBknqom5GItjdDB6-ZlQ/photo/AF1QipOo6a3NoaLoxiUYidTcwcLBpyFjZyoi1u7wfPBB?key=UHgyNkV2cmlDZ2JpV3kxaWc0ZnZhd3hzMTZaMlJB', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(37, 'Tập 14', 'tap-14', 27, 1, 'https://photos.google.com/share/AF1QipN5kSrj5rHd-7p3wgk4qEA1XQuZB6PUUHhHO0anOlmxtRIZJjGbGm57PCWEoAOpWg/photo/AF1QipPIVsQoytg7HbiduMtbTwA2QYIT26CCKmQuQPt0?key=SDE1dGYySGNvT09iLUJiNjd3MEM2bDFTcVQ2akhB', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(38, 'Tập 15', 'tap-15', 27, 1, 'https://photos.google.com/share/AF1QipMFWzMvyg2DVh6ZM347JQ50s6s1mpM4aL3QUSMNYIrFKyWiILcJ82SEBsyV75Vopw/photo/AF1QipPJQb5RrL9BpXORkPjTxsX94UdN-Q_VB-a4wX0o?key=S3ExMkt5R21qQkZ3RGVYYmVFalZLMGZmQjJsbXJB', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(39, 'Tập 16', 'tap-16', 27, 1, 'https://photos.google.com/share/AF1QipP_poYbhSOBvwVLwnTXnkVBzU-VqPvXOcPj2zuKqHuSlafo_6d8kKfS5aOPviyklg/photo/AF1QipM54QAvr6cjOB-w3EW6UrLucNwaNXqeznSK_92Q?key=VEVjWS1iR0pQQ0pDNGVCNkhSbVhqMTk1MVB2LUJR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(40, 'Tập 17', 'tap-17', 27, 1, 'https://photos.google.com/share/AF1QipOMzn52r9DpsCrYdlRXNyJLlb1AUaav4gyoAMh4-cJRCTteqvhElMMTohmrFWez0w/photo/AF1QipOXo45E49S15InX8vgaqTUeaYmhHN3KdyTP-ye6?key=Q29KeTVCZEU3bjI3ajRHWFNLUzVWcTBxY1NSbldn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(41, 'Tập 18', 'tap-18', 27, 1, 'https://photos.google.com/share/AF1QipPJMor8OwwjmPJk0nFZ8zW_FyPC_oqkcqliXe7fEN7IquhbwGSy_nTzkeXsQdglow/photo/AF1QipNOICZpolTEYZ1_6hVvXByV60y3wzuiaGfOpdi4?key=VUFsOFpkQTZweFNIeWhtVEtoVmd4djdZbjFDbVFn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(42, 'Tập 19', 'tap-19', 27, 1, 'https://photos.google.com/share/AF1QipOeUBmPWfq_Jz0c_AIvp79hJYSuYItemjbjrTtXvBXYrvWSa5JUqYnrOOr_hrqjEg/photo/AF1QipPTYsbhCEc-TwWMrHa-hiGWqPcyYDrDjUPcykgm?key=WWQ1NWhoZmRCQk1lb05KOVFzSEV2NmFicUdiTXdn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(43, 'Tập 20', 'tap-20', 27, 1, 'https://photos.google.com/share/AF1QipN_xrllhbUceqkf-AwVhrKCpisqvV0IFSIOOnMXou3KUtbpeA-YEJY2L5xhtDYVfA/photo/AF1QipON5FrOWrk622hFisTA8GJTbSCciDNkqT3bGQe-?key=cVhMVmRlRlFBbVNqcWhhLWF1N2xTWkF2WmhUbll3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(44, 'Full', 'full', 2, 1, 'https://photos.google.com/share/AF1QipOnkvVFMMSHGLKFYSLn9wxHN9VuGCYLkMi2BEB2AVeXu4wJHCxkvQ6oLa2G7DiRTQ/photo/AF1QipPMnqcI9_iejknFCbgKYRZ0ugjGgVcE3hF43jdk?key=dlk5Q0FRMDQzQUNfWnRqc19COXNjekpHU05BY2p3', '', 'http://bomtan.biz/upload/file/data/Avengers.Age.of.Ultron.2015.720p.BluRay.x264-SPARKS.vtt', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(45, 'Tập 21', 'tap-21', 27, 1, 'https://photos.google.com/share/AF1QipM6QOFpcDR5CETOavofSPlOU13Ta-N9g7EuJXf30BsU52cbXr_NGhXiOr8eDx3-og/photo/AF1QipPNv2QtotVGTdbf-Uh4ovdDHHzCmUk9AtyBPIG4?key=UE54Y1NOMU9wTnliajA5Q3RuTzRqMkhGbDd4dDln', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(46, 'Tập 22', 'tap-22', 27, 1, 'https://photos.google.com/share/AF1QipNFH3AhSGXljo-m0zOsFGuuzZRAbERJLwLK0xlfva4bz-FYv27iRSYxPs23L76hZg/photo/AF1QipMsiLpgoNTivhHIuTXznrObc6QzgFa2B0Aw2vAy?key=b3FLTXBOSC1oeHdobXNDZEVOUDllcFN2NmNMTWpn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(47, 'Tập 23', 'tap-23', 27, 1, 'https://photos.google.com/share/AF1QipPdNoI4fv2J5LdIeMphvFDUo70J4fZJBDbad8C8D15U4qUXJdxn2-Pg3KzrnCfR4g/photo/AF1QipOR-C2uH2h7mjzOnxMjVUW4kj8gZAZx4FCTKQ2Z?key=YWlrTDJybXVPbC00d2JDUUhuaVVxbDZleHhvVUtB', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(48, 'Tập 24', 'tap-24', 27, 1, 'https://photos.google.com/share/AF1QipPpErkV3QcJwywBvaAdPIfevgNx_jo2FE_J4xM7yNG4zpAc9dK0zp1d14lx7spTIw/photo/AF1QipPVGdGjIASSseBgSvDAwAQTE2e0iYuG6BFpN29-?key=b3JpS2hwakxKNzRIa3k4RUtSQi1GakxhVGlWX1pR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(49, 'Tập 25', 'tap-25', 27, 1, 'https://photos.google.com/share/AF1QipNvLT1o_4QlzdqSrR2fxq3VEnrnqA6yEy8OEkW5AQ8HqKhm8zyLb5WYs3UA9cleng/photo/AF1QipP0W7vkaW1NBon9bBKHObCT9h4zzSPBtsyuFOfh?key=MXFpSDdZZ0pmSDFVLUVGWk42SzN5Q3VLTnVMNGdR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(50, 'Tập 26', 'tap-26', 27, 1, 'https://photos.google.com/share/AF1QipPSd25FOQdmLktj7Z1a0-CR3_4NXLsxpifpuzoYUgMVQRjjgYyMyvxHRiIWT371BA/photo/AF1QipO-wpCzAu_X9eUFLGjFcIllsiGu8TrRGvtLAXDO?key=bE1xZVB5SkIySW9nYzh5RDk5LVRGamJuMVg5SHNn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(51, 'Tập 27', 'tap-27', 27, 1, 'https://photos.google.com/share/AF1QipPArUyK9SXdnwObs1nJkhR9iLKf6hXujMWVgZ7lKN3U1Roj44u6N-jzEf7SokXO9A/photo/AF1QipPr9iv1mKsqe9XcwxjBKC_O_TLgyK-Rp76H66ig?key=LUJaRzloWkVUTHdiZ1hULUszbmw2NkotOW1TNG13', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(52, 'Tập 28', 'tap-28', 27, 1, 'https://photos.google.com/share/AF1QipNe5ANmRBMYBctILhZdPwWAVyOC9NkQBxO6nGc2DJ1-pO1X8p_sCv97rPyb6sxxFw/photo/AF1QipPpolNJmxxCTLTMSw2aTBZM3l9mCMPVQ_njnIB_?key=bWhUN0gyQlZoT1pYbDVDV28tSTV2XzFFTy1JZ05R', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(53, 'Tập 29', 'tap-29', 27, 1, 'https://photos.google.com/share/AF1QipOsrnm4V1x2VAqM4WuL1IyG5C_yyQKAFjK07anABXYcdHyfAjIwCN9insM89EVwRQ/photo/AF1QipPz_TLZbYp3YbXs0ucYXH7JKPahSQIuwNiW9GnY?key=STNXbUItbkgwQmVWb3p1eVpSZ1V2dkFNRFN4ODJn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(54, 'Tập 30', 'tap-30', 27, 1, 'https://photos.google.com/share/AF1QipMHjYhpIY6at5LG_KVCIfKDwNhLfPCYcGLQRmsO8ish3H8qoqTscthTFw9asfK6Ew/photo/AF1QipOmj9S_3Rbb_uHA1YOK4oHgSjzkun8axqbaaEm4?key=Mk1iOERBOE05YkNQWXlnWjBXMTlLVE9iQzZuNTVR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(57, 'Tập 32', 'tap-32', 27, 1, 'https://photos.google.com/share/AF1QipPuD4E0-R7ucWGMZuArCpv5XLxuf_gjOe9PEM6kVUQ_FBP5dIQFVRKOGn_veiEMWg/photo/AF1QipNaSizPD8ZUbgy-P9S7KbpCPIFEPFDd7Fex4X79?key=V0ctTWxHOC1iOWVCTWhSQW1HTGoxY1k1V25JOXZn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(58, 'Tập 33', 'tap-33', 27, 1, 'https://photos.google.com/share/AF1QipMw7MjEdc9ZT8xzCvByOXqtTDgjMqrz66AtnetboFNiezDCev2W9--qCq9caGc6Yw/photo/AF1QipM6zVAx210Fhev5zvuyR-m4hFL4Uwws_CGYzy3L?key=SEZ5RnpWdmVpWXJlcmQ5VE9oMWFvR3Ixb0FGV29B', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(60, 'Tập 34', 'tap-34', 27, 1, 'https://photos.google.com/share/AF1QipNshnYaPHOASDbv-Oh6S3Xi2yyby0XDEY0zatn-15DRFi3LwYy9j4iCrAKqSF5JZA/photo/AF1QipMtkqxUwcU8zhsLvgMQirXupDNmBzMjovRFG1Lf?key=S1lXSTd5OHBUajloMHB6Y2ZkSFAzQ0NSNHI0bXpR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(61, 'Tập 35', 'tap-35', 27, 1, 'https://photos.google.com/share/AF1QipNyC6jvC8Ha-ZeAHt1zCjHgMTrvULX00QWgyP4xr9m-q__On59VQahiK7Vq8mtN9Q/photo/AF1QipPcwIakKBSZFMqq9Sf113xT6f9iPUFGL8tpKhUa?key=anRmTTM4ZlpaS0FoUDV0QmkxOFdGZ1gtV0xUdGRB', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(62, 'Tập 36', 'tap-36', 27, 1, 'https://photos.google.com/share/AF1QipNd0Tq6_DbcliTOFEJZg7aHlBdIbDIXuMexr6aeH_sfiAOs-rbVMzAC_tnJwxGFkA/photo/AF1QipOhIddRQLuFyqpk-VZ3wgz4rArENnfX8NZil1As?key=WFJLcXdfWDhXWE1MaHV0TUVpeldjRDhUOW5XQnNB', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(63, 'Tập 37', 'tap-37', 27, 1, 'https://photos.google.com/share/AF1QipN2jeHsBHrNDmYHxCnpIRD4AUvlaT4__K0JDKkSi5m2WcbLnPakHi7Egrb43QsQxw/photo/AF1QipO4eGCmb0Z2LVyPAOkb1iM_cLc3LFA_CWMO5sBt?key=WVNxNm5odGdBWWwzR2cyNVVZeWFDam9Gdll5dHB3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(64, 'Tập 38', 'tap-38', 27, 1, 'https://photos.google.com/share/AF1QipMgahaB0DTvR6RSSIrpaaAnWXc_TH2gAsZV2I6A4rTJKkM-CJe8pL3MYq6cV33lPQ/photo/AF1QipMKIOYvo5sMJH9Bk0zTdbFVthV5cxPVzrVLQEGs?key=RVkwcGhFRThud2lrejV2aHhtZmR0eHp0LXBrcFJR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(65, 'Tập 39', 'tap-39', 27, 1, 'https://photos.google.com/share/AF1QipNXed9YJfA2gEWB0cEpbRnIFU24j8C2zMSHj732V4vgwIsAslpdUMheVq7XtcEobQ/photo/AF1QipMSyvv6VCTw-d3hwkbST_B2W1gBZQFh2P_B-skq?key=ZG1IQkJvUzZFdTZ5X0FmQkpDd05Gc251cnlFQmdn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(66, 'Tập 40', 'tap-40', 27, 1, 'https://photos.google.com/share/AF1QipOfXbj_9X03lUoF19KKTccAVDz71X1XwOdB3kgTV9Ae7i0NiOadiCXqteTPutvqqg/photo/AF1QipPAdlV9QI0i5PAWi-PqQRxJiR015dI6kRP9k0Np?key=ZEZEeEJOTGNZLXRWS043bXFFZkFiZUJfeEZCMENR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(67, 'Full', 'full', 18, 1, 'https://photos.google.com/share/AF1QipNVcShvc6qcOFuukoh5JcFpVAL4DKBx90lp1qe8gLofqlytgZkdNgN58ycB93wxug/photo/AF1QipPbfasEI_X7IHjVOKl_mcTtGgNQNW7TrxtZqAss?key=YzFDaHVUNzNOcUJHNXdiX0dFVkR4cHFucEZDOFdB', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(68, 'Tập 1', 'tap-1', 1, 1, 'https://photos.google.com/share/AF1QipMXs6TSN16Z8DEY3JvQzD3Umu90KakCilInXJcWA5xxQfPvRBMUJg67DXRy55Rg_A/photo/AF1QipOKlDnNzxQXtpc9B1qOXrQ8TdeGOmzkAwRXqZzv?key=QTlPNDZmNjdJR0JVd1Y4bE1TeEVKallmNTlzYnpR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(69, 'Tập 2', 'tap-2', 1, 1, 'https://photos.google.com/share/AF1QipNGunBbyGMY9Em5pcNyGksLIfRlB-wSXwogrffknWZR0pyiVpl2m_KBlr0ZqJNkEw/photo/AF1QipN7MrpEqandAq68MBMN-SCrKfZz2HIUxayayrem?key=bUxVWm9nYkhMSko3RVlqQXIyaWh5aUFadmdEOHd3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(70, 'Tập 3', 'tap-3', 1, 1, 'https://photos.google.com/share/AF1QipMMoMOZZSBLsmKGywxggoYiQ_ICK6MFRR12qiwGq94g7aIaLoeuBrRHzZXekcQRkw/photo/AF1QipOpr_e2kHVcvT4CvHc0wvoyggAMFsmSkNThzTKI?key=b0lCSUMxcWVGVXYwVXEzQnlzMVFzNWVWLU5fUVpn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(71, 'Tập 4', 'tap-4', 1, 1, 'https://photos.google.com/share/AF1QipMEJsC13R18aAdkaD82IBXuRtsWVoEileQFtxqQfNSU6WtY3N5nWNTWnx_c8FmprA/photo/AF1QipOodKi3v7huiaJW_YLS_cUxx4ws1dN1L8vCnCPy?key=R3pMU2FXaDFjd3h3SEFqcElRb2Zna1FrYWhhS0tR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(72, 'Tập 5', 'tap-5', 1, 1, 'https://photos.google.com/share/AF1QipNoU5XIm5HuxcI7anB4feRNUCP7h9wHhv2giIdzbJqGqmbcde61-EP_FM_kLLuGdQ/photo/AF1QipOPpc472q9vwwIrTKK6Owq8cPjPf8JFyYwHXqsf?key=REZVdEhCMEdHc0E1ZnowZ3huUTZSdk1nRzRzVVZ3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(73, 'Tập 6', 'tap-6', 1, 1, 'https://photos.google.com/share/AF1QipPeIySL_2SlaK8beOuFiwAn57RMjmELnnhHP7GbtPJXKU4v66WhuK-csiO9PL4alQ/photo/AF1QipNAlEyeoBMo9DD4Ttto2Ygk86wWnIPYO5NxLzzT?key=MWY4WUpTUDNNRS1PLWZKa01RME1PREJTN0YtRHd3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(74, 'Tập 7', 'tap-7', 1, 1, 'https://photos.google.com/share/AF1QipNhMrg4pwJsWE29B_GRaxSCeEGg1w5toSGbpWo-vKt4xCrkyOt2Frd6Jvr6eUjiLQ/photo/AF1QipP8cen4gZzpCom0AU3bspH2-prxC8DGv88dDjrp?key=UmhXSDY1ZXNVOFd5akR3WjhSamVpVE1tM0FNX2Fn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(75, 'Tập 8', 'tap-8', 1, 1, 'https://photos.google.com/share/AF1QipOraDeBGkrHk5y2FQrfWxSMMHJoZq2mqB-CaC1rzinD_OQy4A3uV6PHOyuMjwZkLA/photo/AF1QipNCwCOqIs14GmSkE2vZDKWYS-_n5WPRNMPKaXbh?key=UHhwU0hqTWlCQkxvUDRlLW05blo2U2hzMHJ4c1FR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(76, 'Tập 9', 'tap-9', 1, 1, 'https://photos.google.com/share/AF1QipOkjkQ70CAIqIVAt-xml5hOSgbzJzvC0d8RFFdt41-4b0rk3K-ukGFLYQQSAogofQ/photo/AF1QipNOZvSu8O6IlRqLwWDHT9BP3AsH__wbkX6WiNB3?key=cVQzQnFwT1Y5cFFCUHRDTmZzMllmYXpaS21fR0pB', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(77, 'Tập 10', 'tap-10', 1, 1, 'https://photos.google.com/share/AF1QipN3mcpTxYIlTX2ARxFM7Lje8WXorcUuD93C-AZF1iKUrBmje65W4CS85DPDHL1FQA/photo/AF1QipN_mqbj8FEx2Ho2N-13RJ6KLDcEi_TBIwkpIe0g?key=Rkd5YkZZWEpfUmVxMzNZRXZfZzViZEt5ZXdqd2dn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(78, 'Tập 11', 'tap-11', 1, 1, 'https://photos.google.com/share/AF1QipMjsMs0dmGgWQwF5OgE2m8e5-1GweSE0Ev9tTbnL-Onyqm60LYS5DNn-AX-mKJ1ig/photo/AF1QipMmIjcQfi1Yg8Cr6wD6XMYCJTOYqXpXQVPJ4dm8?key=ZHV2UEt1dUVaTDgwcW1UQWNuQlZLWlBWMmZYLWJB', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(79, 'Tập 12', 'tap-12', 1, 1, 'https://photos.google.com/share/AF1QipMuZ5AzCh-DnhYz4jQG0UQawA9btsT7Yf8g9wH_794EchJswIRgj5L7EejYulAG-Q/photo/AF1QipN7zk3JHOn40t47uVZgq5M00FsUm9k_Oi2SM9qy?key=aVRMYVY2dllLRThWUk5STk1qV3NRZXZjY21wWHpB', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(80, 'Tập 13', 'tap-13', 1, 1, 'https://photos.google.com/share/AF1QipOzcqXfR4jXbcdV9ENHpCBJ-gGXDhk7X67ulnjDfH5vPf7ohUrUzANf9yJ9XUe0YA/photo/AF1QipMpYkAHa5PhZwCDsgSo50z5joMwy-_Vc_ov6gwN?key=WS1wTjY3a0RYbDhlQzRYaTF6VlZIUFZOMklVRHdn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(81, 'Tập 14', 'tap-14', 1, 1, 'https://photos.google.com/share/AF1QipMTVLsTnraupEHgTfXs2lbzjsv8B5anagtmwFJDZzeIttXu3kDkOJBMZK1MxN6_bQ/photo/AF1QipPM-CoBCBSLtb6OTt3hG5fMKGiTYzGT0Th1f3Qu?key=TGZicGdqdWhrcU5tbmRsNlhtTlZ5U0QwZ3VrZlB3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(82, 'Tập 15', 'tap-15', 1, 1, 'https://photos.google.com/share/AF1QipMDlxZbkI3b2GinkRH33aJkch3Hm_FQZnRAMKt4rIGIDKVZ4l-jOKWxzDi4Rtw6sw/photo/AF1QipN8LJ5byn53388mb0ZkD2RHjVcfq4COFl9UFg4U?key=djVZUGNzRjhoVU1pbmpZeDZ2MnFKWnFYeWdsa1lB', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(83, 'Tập 16', 'tap-16', 1, 1, 'https://photos.google.com/share/AF1QipPtiBPFa3RSOHKwu2mEl058MCVa541pHqTXr2k94L6nHVGaCZ2lA327B4sjgFm7Zw/photo/AF1QipMJBIAbJCfZ7XZSjfLSKy4ccTp7SBZR7xdg0qFL?key=dnJ4R3NDY3JsUGtzd1JuUjc0RXBSdkd6eF8wUV9n', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(84, 'Tập 17', 'tap-17', 1, 1, 'https://photos.google.com/share/AF1QipOlFrCiapmgX9hdc_b1xlra9A8EkpRYRS8KEUgeNRil0VhDRyZE1aiMwQn-U-AYGA/photo/AF1QipOLtWgUwuqCWVFClrfeUTBxk10JR1kmSGBQsJrA?key=eFFNMEJTaV9OOUhRRy1VeERiRE1GdE1lRldaZDBn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(85, 'Tập 18', 'tap-18', 1, 1, 'https://photos.google.com/share/AF1QipNHume7ydbRsqqIXgTlyhKBpIrcKh1wrNCLW4Icuah_LYy667dashLEfPWED5SyWg/photo/AF1QipNS3kAKAOFQEL88u4II3yWX48TysbYu-PkGVZiD?key=TjQwb1UtZUpQbkRVV0JIeFp5VHlWQ3BUZnhobkp3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(86, 'Tập 19', 'tap-19', 1, 1, 'https://photos.google.com/share/AF1QipMzPPTF4H9Memcs-PW7-9bY-CFYRmHdBaVHSdEtrC_3jRy1JVSbap4G2EdQvQBD7A/photo/AF1QipPGwhaMrYyrrVdC3q_EHStZLpJZBk9ET1InVenb?key=cHNHcl9IZnhPRWlOTWZyVTlBb2NtZXdsbG0zUk93', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(87, 'Tập 20', 'tap-20', 1, 1, 'https://photos.google.com/share/AF1QipNx4vrB_pQ9ZGXABCahr19zYPRWIDjBOgz_HJomSqhke0rF_WxKyoQt6LkQhdZGig/photo/AF1QipPKQ25BXmZf__tFSFHJ027QUMeT8ZtV0-wza76f?key=R0lSdldoUzllcDYxdi13MWlibGJzMDlMN0NMVm9B', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(88, 'Tập 21', 'tap-21', 1, 1, 'https://photos.google.com/share/AF1QipOrpjAwSZz3mrdouSIJEr_LJnJTPVR33zEjxmUccPptclKISnYW9Y60to9ow4Z5JQ/photo/AF1QipMf0TurwLWlvm3Sh_TSPsRoZYxZAVxBMRFEIKLS?key=ZlFrcHVKMTA5ZGo4dzNEVjFZcEJxRkoxSjItR2dn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(89, 'Tập 22', 'tap-22', 1, 1, 'https://photos.google.com/share/AF1QipOiD1mfpZ2-sdCkV-1NyIhsEx0rB29E-dfo0mVUKpdCBXIzWqZwXgbCcdmC9PKgXA/photo/AF1QipPkE9s-N9e3w2Ya7lYg0D9gaWRQfsKfiIeT3CKK?key=Qk16c2RGNk5rVVBocTBnOUNtV0QyVzZ0Yzctd2FB', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(90, 'Tập 23', 'tap-23', 1, 1, 'https://photos.google.com/share/AF1QipOU5Szyxu2qkqr1qYCeIvJNqduZaAbcZPuqZAh0KbNH4eS-PwkBgdHhRQNqTtOZzg/photo/AF1QipPIrwFJ2NFBPFK4uxy8L7jNnk8B1tOpXxI-Pngq?key=LTlWdU5TVHl0amZnUUQyY3VoSWU3N1VHZ1J2MW93', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(91, 'mHD', 'mhd', 32, 1, 'https://photos.google.com/share/AF1QipOOeDrsWWO6WKPOn98ni3f2ZGjMUB0T6l8HzfiBLQ1xoY843nUd9GRqSE6uTJvK_w/photo/AF1QipNNXemdMRbvDTgEUCeF7rEczCv0IqFQMb0JIGlP?key=YVllZjg0bkRSNE11Rko2T2s4UjVpVFVWNWdVZkN3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(92, 'Full', 'full', 4, 1, 'https://photos.google.com/share/AF1QipMceBcsEtWTRANEM8xdfYSd3YB8eD7SUEx7tqOrvt3wAW56fwPL7GOeCZ-R6-uVVQ/photo/AF1QipO0F4cgigKTZ9aUJDHJVeYdYPqBONUdUNIzmVH1?key=dGpSeDJST0JVVUJTNGlLWjg4WTd1Y1AyQ2J6R1FR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(93, 'Full', 'full', 31, 1, 'https://photos.google.com/share/AF1QipPe2HvC5qmcatRKGYkfNRrANnuIkQnczvUSiKFGL2lhYLJ_iPbWmcyQob_fR6nhAg/photo/AF1QipOuDFCnge7iYrLVhSqoTWfaW6rEnrz0wS4RB6YK?key=S2JiYV9SYUNLb2hLVnVqWHAwb1JUS2VidHFGd0Nn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(94, 'Tập 1', 'tap-1', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-1/IWZ9CUA8.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(95, 'Tập 2', 'tap-2', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-2/IWZ9CUA9.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(96, 'Tập 3', 'tap-3', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-3/IWZ9CUAA.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(97, 'Tập 4', 'tap-4', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-4/IWZ9CUAB.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(98, 'Tập 5', 'tap-5', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-5/IWZ9CUAC.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(99, 'Tập 6', 'tap-6', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-6/IWZ9CUAD.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(100, 'Tập 7', 'tap-7', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-7/IWZ9CUAF.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(101, 'Tập 8', 'tap-8', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-8/IWZ9CUB0.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(102, 'Tập 9', 'tap-9', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-9/IWZ9CUBI.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(103, 'Tập 10', 'tap-10', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-10/IWZ9CUBO.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(104, 'Tập 11', 'tap-11', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-11/IWZ9CUB6.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(105, 'Tập 12', 'tap-12', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-12/IWZ9CUB7.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(106, 'Tập 13', 'tap-13', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-13/IWZ9CUB8.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(107, 'Tập 14', 'tap-14', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-14/IWZ9CUB9.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(108, 'Tập 15', 'tap-15', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-15/IWZ9CUBA.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(109, 'Tập 16', 'tap-16', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-16/IWZ9CUBB.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(110, 'Tập 17', 'tap-17', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-17/IWZ9CUBC.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(111, 'Tập 18', 'tap-18', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-18/IWZ9CUBD.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(112, 'Tập 19', 'tap-19', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-19/IWZ9CUBE.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(113, 'Tập 20 - End', 'tap-20-end', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-20-End/IWZ9CUBF.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(114, 'Full', 'full', 29, 1, 'https://photos.google.com/share/AF1QipOsnpMXjdBSgsLcqXEp9M0XAjikH2GUNeZQM72eVk-iS1lHup2ZOQEANwmtCiQEYw/photo/AF1QipMeCkeggBhAt5Y3bdwdrbFIYEuWl_5pvy3hLYyb?key=S2RoeF9DV3NYZUxoNmhSSHh2aVotb0dYeXlMSENR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(115, 'Tập 1', 'tap-1', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-1/IWZ9BCD0.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(116, 'Tập 2', 'tap-2', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-2/IWZ9BCDI.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(117, 'Tập 3', 'tap-3', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-3/IWZ9BCDW.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(118, 'Tập 4', 'tap-4', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-4/IWZ9BCDO.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(119, 'Tập 5', 'tap-5', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-5/IWZ9BCDU.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(120, 'Tập 6', 'tap-6', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-6/IWZ9BCDZ.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(121, 'Tập 7', 'tap-7', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-7/IWZ9BCD6.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(122, 'Tập 8', 'tap-8', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-8/IWZ9BCD7.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(123, 'Tập 9', 'tap-9', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-9/IWZ9BCD8.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(124, 'Tập 10', 'tap-10', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-10/IWZ9BD60.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(125, 'Tập 11', 'tap-11', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-11/IWZ9BD6I.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(126, 'Tập 12', 'tap-12', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-12/IWZ9BD6O.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(127, 'Tập 13', 'tap-13', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-13/IWZ9BD6U.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(128, 'Tập 14', 'tap-14', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-14/IWZ9BD6Z.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(129, 'Tập 15', 'tap-15', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-15/IWZ9BD66.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(130, 'Tập 16', 'tap-16', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-16/IWZ9BD67.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(131, 'Tập 17', 'tap-17', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-17/IWZ9BD68.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(132, 'Tập 18', 'tap-18', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-18/IWZ9BD69.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(133, 'Tập 19', 'tap-19', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-19/IWZ9BD6A.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(134, 'Tập 20', 'tap-20', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-20/IWZ9BD6B.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(135, 'Tập 21', 'tap-21', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-21/IWZ9BEZD.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(136, 'Tập 22', 'tap-22', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-22/IWZ9BEZE.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(137, 'Tập 23', 'tap-23', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-23/IWZ9BE60.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(138, 'Tập 24', 'tap-24', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-24/IWZ9BE6I.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(139, 'Tập 25', 'tap-25', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-25/IWZ9BE6O.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(140, 'Tập 26', 'tap-26', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-26/IWZ9BE6U.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(141, 'Tập 27', 'tap-27', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-27/IWZ9BE6Z.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(142, 'Tập 28', 'tap-28', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-28/IWZ9BE67.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(143, 'Tập 29', 'tap-29', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-29/IWZ9BE68.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(144, 'Tập 30', 'tap-30', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-30/IWZ9BE6A.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(145, 'Tập 31', 'tap-31', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-31/IWZ9BE9O.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(146, 'Tập 32', 'tap-32', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-32/IWZ9BE9U.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(147, 'Tập 33', 'tap-33', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-33/IWZ9BE9Z.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(148, 'Tập 34', 'tap-34', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-34/IWZ9BE96.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(149, 'Tập 35', 'tap-35', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-35/IWZ9BE97.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(150, 'Tập 36', 'tap-36', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-36/IWZ9BE98.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(151, 'Tập 37', 'tap-37', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-37/IWZ9BE99.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(152, 'Tập 38', 'tap-38', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-38/IWZ9BE9A.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(153, 'Tập 39', 'tap-39', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-39/IWZ9BE9B.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(154, 'Tập 40', 'tap-40', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-40/IWZ9BE9C.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(155, 'Tập 41', 'tap-41', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-41/IWZ9BE9D.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(156, 'Tập 42', 'tap-42', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-42/IWZ9BE9F.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(157, 'Tập 43', 'tap-43', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-43/IWZ9BEA0.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(158, 'Tập 44', 'tap-44', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-44/IWZ9BEAI.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(159, 'Tập 45', 'tap-45', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-45/IWZ9BEAW.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(160, 'Tập 46', 'tap-46', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-46/IWZ9BEAO.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(161, 'Tập 47', 'tap-47', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-47/IWZ9BEAU.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(162, 'Tập 48', 'tap-48', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-48/IWZ9BEAZ.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(163, 'Tập 49', 'tap-49', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-49/IWZ9BEA6.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(164, 'Tập 50', 'tap-50', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-50/IWZ9BEA7.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(165, 'Tập 51', 'tap-51', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-51/IWZ9BEA8.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(166, 'Tập 52', 'tap-52', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-52/IWZ9BEA9.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(167, 'Tập 53', 'tap-53', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-53/IWZ9BEAB.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(168, 'Tập 54', 'tap-54', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-54/IWZ9BEAC.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(169, 'Tập 55', 'tap-55', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-55/IWZ9BEAD.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(170, 'Tập 56', 'tap-56', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-56/IWZ9BEAE.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(171, 'Tập 57', 'tap-57', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-57/IWZ9BEAF.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(172, 'Tập 58', 'tap-58', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-58/IWZ9BEB0.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(173, 'Tập 59', 'tap-59', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-59/IWZ9BEBI.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(174, 'Tập 60', 'tap-60', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-60/IWZ9BEBW.html', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(175, 'Tập 1', 'tap-1', 35, 1, 'https://photos.google.com/share/AF1QipPsDb54SjGltowszHwuCFmep6gxCj6Y5yFbiWRtFPA33Bcfs2Xa6PXDy3OhaQ7bHQ/photo/AF1QipMccJu6A5XSPy2I8ewDdT13uNPt2xX5tKyL2V9x?key=cUlBeHhLTml3dWNjMWRQLXNVQnQ2M2Y3Ui01OUh3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(176, 'Tập 2', 'tap-2', 35, 1, 'https://photos.google.com/share/AF1QipOzchFORJK70U0g1qfL363BO68ttpaj-Iamq2ElEp9qr_h6qraDWT1hkmclwiVRPQ/photo/AF1QipORw69AhjvrcAdKAgUdaQLhkmsOggqDWS3nsopy?key=ZjZTZEloUE9TTi0xTlllaTV6WXVCMzFhRnFfUU5R', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(177, 'Tập 3', 'tap-3', 35, 1, 'https://photos.google.com/share/AF1QipP0Y6NDhUdRl0lxaIrq_aD-pnkQdGcpxCArzCDRbAIzIfQof__04euTqPMsYDL4Bg/photo/AF1QipMUCNlxEvqet_LfAFECiaPG-I6OywpisySJpEbc?key=WUZHYjNPS29sSHdaWjczMVZnS2I1XzZHckg0a1Nn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(178, 'Tập 4', 'tap-4', 35, 1, 'https://photos.google.com/share/AF1QipM9b6snKTzHhdQquQw18OgR53gSre5fLmLsMDWDEiNgwVGV92Xj_ChIxkBNvY4zeA/photo/AF1QipN32hj2-yEiHhI5nnGLz32iUv1vbVbjZLKouTIc?key=ZXVOT2RzOE45WDQ1VDczR2huaXZRWmxQcHE4TFB3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(179, 'Tập 5', 'tap-5', 35, 1, 'https://photos.google.com/share/AF1QipMpObT3lpkhyHoRNFEbraRggiTMiBSkKbosD-OWwBvTroc4-k-BfGdm6UORefTsQA/photo/AF1QipMEynGOw_HqADErtPOHuxpgFqfnvw1eDhTdnqUw?key=eXlpanlSVUlOTXJMNzZLZWx6Nno2Vy1SSkVWMlln', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(180, 'Tập 6', 'tap-6', 35, 1, 'https://photos.google.com/share/AF1QipMYpVPw2Pp-KN0ACdBXvGzLgLRygR1Li3yVoQoXbzlpeKbnegqengMGnEF7HbW4gw/photo/AF1QipP-fmsEdCOUPyggl_MyIH7jdOdSQ648dAirz8SK?key=aVRqRmVXVXE4T2YtRUkzejNOajVkS3VYWGM1Ui1R', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(181, 'Tập 7', 'tap-7', 35, 1, 'https://photos.google.com/share/AF1QipP4Npna7HHIVW6FiMh9uNThucIYDJOUxT_-MEOuEdKMU__wi6rBGApNGlQ0DpLMTQ/photo/AF1QipOiMB1XNKPwwtXZ0HzL62MoLs_MVtDShSsXFmzt?key=T0dfdVVGVTlWem5VS2dIQlhVaUY3NjNLeXh6aGhR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(182, 'Tập 8', 'tap-8', 35, 1, 'https://photos.google.com/share/AF1QipMQv_MzjjMWs5tehefuvvmAKuV6zUiFv_KLtML1seYpkHfWt7Ot_oIC_d9Bv1vdZQ/photo/AF1QipNMO-5TE9QdcR_VuA7Atk4VDqnd8jNArqFxGtrA?key=TEV4cExyZFU1allsalFtZzYtVnRGU19ZOUpMV21n', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(183, 'Tập 9', 'tap-9', 35, 1, 'https://photos.google.com/share/AF1QipMgcRd6G1HA4viQpXs9yI17ZOpX8sLigO2tQT4oBCCPnPKzrZmn22LRz9sOeuRlDw/photo/AF1QipPVTmnLNQjeoW6F8t4JVAR-td3-PcbFspoada54?key=WWJic2xJQ3pIU21FWFJSSW9fVEg1X05iRFNpMkdR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(184, 'Tập 10', 'tap-10', 35, 1, 'https://photos.google.com/share/AF1QipPjgYpH8wHDPqTUntuXG0L2jmzhTFSNGhQKCkZfc0XF52HY0i50B4jZr35tOTgveA/photo/AF1QipOfrwnvvv4gVig5boh719mLPmpYXENBWJwTbgbS?key=SWxhMHkxNkt6cGhnVWwxTEcyY3VSNFFmMjhnSVdn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(185, 'Tập 11', 'tap-11', 35, 1, 'https://photos.google.com/share/AF1QipMmkXt7PLVBg1yTnptSnkS7lASDPJ-zNKSFzG2AB0QaJ_ttpCRw8aNk6tok0I5ttA/photo/AF1QipMRmLL33L6sNDDAM9cOnjGf9RPceprEQyYWPWT2?key=U0hoMTBNdlB6aEUzVlFUZ1Yxbzd3ajg5OE1lOWxR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(186, 'Tập 12', 'tap-12', 35, 1, 'https://photos.google.com/share/AF1QipPpNxK45u-XX1FGW6Nbb3fsGQMu2Hyx7SAg75pv45XXepAXWwNMdDUbslM3d0AR-Q/photo/AF1QipPUlnU-4mml4j3AmFDnwta9dZUMFSwayNHDSUg_?key=SW4yZGNVYXRjQTBFam9rY2ExdHBFN0prM2h4RDZ3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(187, 'Tập 13', 'tap-13', 35, 1, 'https://photos.google.com/share/AF1QipNKVcybNFJ2_QUNL69UYe0w9gkvOMFv6pomPcdJyk0PmZb1oL7NZP3E6nO-y4_v4w/photo/AF1QipNXvmyfLY1KW5kaOIGGO8fS57cbR2FNlm-B2F5W?key=d09zRzBXdkpUVFBIUEdkR29laVVtWEpOTTdjTVR3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(188, 'Tập 14', 'tap-14', 35, 1, 'https://photos.google.com/share/AF1QipNbVKjffejdtQwkLVz5ymKtetOSS2K3QKYDlDYpCIagNS73lLNoF-JipTjVJKo4kQ/photo/AF1QipM9oN0zF8bNeT-Ynpt5rCPffOs5iOHasYS5JZnw?key=d3BNZGE2dXFJV3MyVVg5dl9Xbmx3bFRJNjJRbFNR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(189, 'Tập 15', 'tap-15', 35, 1, 'https://photos.google.com/share/AF1QipPQGs4qnoIhx3rRGX975M-V8TfBqUh1vDh67q512861OZRz2QfpsF4ZcmorWBT9vw/photo/AF1QipPsT54JtP6hSSansrcdW5vTw3z9hVZ98wawZco9?key=dldOVy12Z1VZM3lMMUJfd19iN19RWS1XR3oyZnVn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(190, 'Tập 16', 'tap-16', 35, 1, 'https://photos.google.com/share/AF1QipMe-rRwO8nTnj5c8rsQPw_9sKbGOVtCjhCbs9VvvkFN9ZI7s1MLF5hQ9fFM2SfELA/photo/AF1QipNVbo-mG86g_xhCjc5aTm6OEKUAgMzoLHBjON8q?key=ZzVKbU01cnR3YUJBam9RNFRQdXV4cUJKcUlzVHB3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(191, 'Tập 17', 'tap-17', 35, 1, 'https://photos.google.com/share/AF1QipOWJ5jQ46Eb4a6LhXxwEvArc3-xm-LwPdcFeLSPSPxTRmgg49y1Y2UBBdwnjjXI_Q/photo/AF1QipOyGPMTthWR_zR5yiA6wqnTuU7JBcJNU-28SAah?key=OHotNmZwX2tPSDhURGQ0cXVfa3MtR3hSQ1BGdm9B', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(192, 'Tập 18', 'tap-18', 35, 1, 'https://photos.google.com/share/AF1QipO2xberHEmLnVn1H6tExwQY2bOxzk87wDH3e0iKj6wEr5hM4Gd3ehNqpdJXx8E7ZQ/photo/AF1QipMXGawGtoxkZ-Tm21SiNbdZwrT8K7GDvLb2mjo1?key=SXZyMWhnSXFRYzhvWlJnYnJvTzRxaWhvcnRab3pR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(193, 'Tập 19', 'tap-19', 35, 1, 'https://photos.google.com/share/AF1QipP2ujqpKelxmytJRK5peN2YYsOmMySy9AlZnyWTnIketAGA53mT49gDr21cx8nibA/photo/AF1QipMRjoAROH1scjEgNjRVvLmEvVh3ZOup5jblMDQa?key=UjB4SXBoT3JZNk1Ub0FSVFBqN3dkOVhuT0JWOHlR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(194, 'Tập 20', 'tap-20', 35, 1, 'https://photos.google.com/share/AF1QipMCNZcuLSQTJ-W147c1iJqEirQD04fu8C5uKKo85uKfD-KFBDzQn2KpNtyMWLmmLA/photo/AF1QipPteFtx9citUfNRwUISCzPDRx8G9IzwZMUH9L2v?key=eXJieFdzSk5Bei1SVm9VRk5PSkxsbzd3TDBmV1Bn', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(195, 'Tập 21', 'tap-21', 35, 1, 'https://photos.google.com/share/AF1QipM_FTEz72QrJm8t_8d5zT0zxyvghhvtJD1VZ6tDz0Hm0hWFFObokPYAPqID-j08XA/photo/AF1QipP5fcNloq0DW9gYwLgH1ExZZLROlByUpUHmTjMp?key=bFJSc0gxcU92VTRDcEZucXFfRVQwRTZMVFJIeDZ3', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(196, 'Tập 22', 'tap-22', 35, 1, 'https://photos.google.com/share/AF1QipMMzfneU5XsGHPCCDBbecW5MNtgyPHgF2ySCMcD5B6OaUhiYa49p-DfUWvi1b5vJw/photo/AF1QipNqtSzjrNQ28tviEKZLIBKBpDU7ojzgxGHLkimf?key=cTd5VTZDQlRYcTNIZjhYNTRtVGlhUXlmX3NHRVln', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(197, 'Tập 23 - End', 'tap-23-end', 35, 1, 'https://photos.google.com/share/AF1QipMzCjEIjnn--WazIYLgLAh1iDMygeEqvqtjwkKI0Z1iip7zRy2LkmrqTG-wRy6n6w/photo/AF1QipNFuNOFtPjzK4bb0kHIjmK7PTNuDjInM8Rui5x-?key=VDhHUklpTXlpcUxnVlY0OHYtMElUeEwyaXd1cTdR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(198, 'Tập 21', 'tap-21', 36, 1, 'https://photos.google.com/share/AF1QipMzCjEIjnn--WazIYLgLAh1iDMygeEqvqtjwkKI0Z1iip7zRy2LkmrqTG-wRy6n6w/photo/AF1QipNFuNOFtPjzK4bb0kHIjmK7PTNuDjInM8Rui5x-?key=VDhHUklpTXlpcUxnVlY0OHYtMElUeEwyaXd1cTdR', '', '', 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `film_views`
--

CREATE TABLE `film_views` (
  `film_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `views` bigint(20) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_views`
--

INSERT INTO `film_views` (`film_id`, `date`, `views`) VALUES
(1, '2015-06-01', 102),
(1, '2015-06-02', 15),
(1, '2015-06-03', 2),
(1, '2015-06-05', 1),
(1, '2015-06-08', 1),
(1, '2015-06-09', 5),
(1, '2015-06-12', 2),
(1, '2016-05-08', 3),
(1, '2016-05-12', 1),
(1, '2016-05-22', 12),
(1, '2016-05-23', 50),
(1, '2016-05-24', 288),
(1, '2016-05-25', 173),
(1, '2016-05-26', 70),
(1, '2016-05-27', 353),
(1, '2016-05-28', 279),
(1, '2016-05-29', 254),
(1, '2016-05-30', 151),
(1, '2016-05-31', 12),
(1, '2016-06-01', 37),
(1, '2016-06-02', 3),
(1, '2016-06-03', 16),
(1, '2016-06-04', 5),
(1, '2016-06-05', 6),
(1, '2016-07-08', 25),
(2, '2015-06-01', 400),
(2, '2015-06-02', 364),
(2, '2015-06-04', 2),
(2, '2015-06-05', 1),
(2, '2015-06-12', 4),
(2, '2015-06-18', 1),
(2, '2015-06-21', 1),
(2, '2015-06-27', 1),
(2, '2015-09-13', 1),
(2, '2016-05-09', 2),
(2, '2016-05-11', 1),
(2, '2016-05-17', 1),
(2, '2016-05-18', 1),
(2, '2016-05-19', 2),
(2, '2016-05-20', 6),
(2, '2016-05-27', 1),
(2, '2016-05-31', 2),
(2, '2016-06-01', 1),
(2, '2016-06-04', 1),
(2, '2016-07-08', 3),
(3, '2015-06-01', 204),
(3, '2015-06-02', 2031),
(3, '2015-06-05', 3),
(3, '2015-06-09', 1),
(3, '2015-06-12', 4),
(3, '2015-06-23', 1),
(3, '2015-07-01', 4),
(3, '2015-07-04', 1),
(3, '2015-09-13', 1),
(3, '2016-05-09', 4),
(3, '2016-05-10', 1),
(3, '2016-05-11', 1),
(3, '2016-05-13', 1),
(3, '2016-05-14', 2),
(3, '2016-05-18', 1),
(3, '2016-05-27', 1),
(3, '2016-05-28', 1),
(3, '2016-05-29', 2),
(3, '2016-06-04', 1),
(3, '2016-07-08', 2),
(4, '2015-06-01', 800),
(4, '2015-06-12', 2),
(4, '2015-06-18', 1),
(4, '2015-09-13', 1),
(4, '2016-05-09', 3),
(4, '2016-05-13', 1),
(4, '2016-05-20', 1),
(4, '2016-05-22', 2),
(4, '2016-05-24', 1),
(4, '2016-05-25', 1),
(4, '2016-05-30', 7),
(4, '2016-06-01', 1),
(4, '2016-06-12', 1),
(4, '2016-07-08', 3),
(5, '2015-06-01', 1000),
(5, '2016-05-09', 4),
(5, '2016-05-12', 1),
(5, '2016-05-13', 1),
(5, '2016-05-16', 1),
(5, '2016-05-23', 3),
(5, '2016-05-27', 1),
(5, '2016-05-30', 1),
(5, '2016-06-04', 1),
(5, '2016-07-08', 2),
(6, '2015-06-09', 6),
(6, '2015-06-12', 1),
(6, '2016-05-09', 4),
(6, '2016-05-11', 1),
(6, '2016-05-13', 1),
(6, '2016-05-16', 1),
(6, '2016-05-23', 3),
(6, '2016-05-27', 1),
(6, '2016-05-30', 1),
(6, '2016-06-04', 1),
(6, '2016-07-08', 2),
(7, '2015-06-05', 3),
(7, '2015-06-09', 1),
(7, '2015-06-10', 1),
(7, '2015-06-12', 3),
(7, '2016-05-09', 4),
(7, '2016-05-11', 1),
(7, '2016-05-13', 1),
(7, '2016-05-16', 1),
(7, '2016-05-23', 1),
(7, '2016-05-27', 1),
(7, '2016-06-04', 1),
(7, '2016-07-08', 2),
(7, '2016-07-12', 5),
(8, '2015-06-09', 2),
(8, '2015-06-10', 1),
(8, '2015-06-12', 1),
(8, '2016-05-09', 3),
(8, '2016-05-12', 1),
(8, '2016-05-13', 1),
(8, '2016-05-27', 1),
(8, '2016-06-04', 1),
(8, '2016-06-13', 5),
(8, '2016-07-08', 2),
(9, '2015-06-03', 1),
(9, '2015-06-08', 1),
(9, '2015-06-10', 1),
(9, '2015-06-12', 1),
(9, '2015-09-13', 1),
(9, '2016-05-09', 3),
(9, '2016-05-13', 1),
(9, '2016-05-14', 1),
(9, '2016-05-23', 8),
(9, '2016-05-24', 1),
(9, '2016-06-01', 1),
(9, '2016-07-11', 1),
(10, '2015-06-03', 2),
(10, '2015-06-08', 2),
(10, '2015-06-09', 1),
(10, '2015-06-10', 1),
(10, '2015-06-12', 1),
(10, '2016-05-09', 4),
(10, '2016-05-10', 1),
(10, '2016-05-11', 1),
(10, '2016-05-16', 2),
(10, '2016-05-20', 1),
(10, '2016-05-23', 2),
(10, '2016-05-24', 3),
(10, '2016-05-30', 3),
(10, '2016-06-01', 1),
(10, '2016-06-02', 2),
(10, '2016-07-08', 1),
(10, '2016-07-10', 1),
(11, '2015-06-02', 46),
(11, '2015-06-03', 27),
(11, '2015-06-08', 2),
(11, '2015-06-09', 3),
(11, '2015-06-10', 1),
(11, '2015-06-12', 1),
(11, '2016-05-08', 1),
(11, '2016-05-09', 4),
(11, '2016-05-11', 1),
(11, '2016-05-15', 1),
(11, '2016-05-16', 2),
(11, '2016-05-17', 1),
(11, '2016-05-20', 1),
(11, '2016-05-23', 1),
(11, '2016-05-24', 1),
(11, '2016-05-30', 1),
(11, '2016-05-31', 4),
(11, '2016-06-01', 1),
(11, '2016-06-04', 2),
(11, '2016-06-05', 1),
(11, '2016-07-08', 2),
(12, '2015-06-02', 1),
(12, '2015-06-03', 1),
(12, '2015-06-10', 1),
(12, '2015-06-12', 3),
(12, '2015-06-18', 16),
(12, '2015-06-19', 4),
(12, '2015-06-20', 1),
(12, '2015-06-23', 1),
(12, '2015-06-29', 1),
(12, '2015-07-09', 3),
(12, '2016-05-09', 8),
(12, '2016-05-11', 1),
(12, '2016-05-12', 1),
(12, '2016-05-13', 2),
(12, '2016-05-14', 1),
(12, '2016-05-16', 1),
(12, '2016-05-18', 1),
(12, '2016-05-24', 1),
(12, '2016-05-26', 5),
(12, '2016-05-30', 1),
(12, '2016-05-31', 73),
(12, '2016-06-01', 40),
(12, '2016-06-04', 1),
(12, '2016-06-05', 4),
(12, '2016-06-13', 1),
(12, '2016-07-08', 5),
(12, '2016-07-13', 1),
(12, '2016-07-15', 1),
(13, '2015-06-02', 3),
(13, '2015-06-03', 31),
(13, '2015-06-09', 7),
(13, '2015-06-10', 1),
(13, '2015-06-12', 4),
(13, '2015-06-17', 1),
(13, '2015-06-18', 29),
(13, '2015-06-20', 10),
(13, '2015-06-23', 1),
(13, '2015-07-07', 1),
(13, '2016-05-07', 3),
(13, '2016-05-09', 4),
(13, '2016-05-10', 29),
(13, '2016-05-11', 103),
(13, '2016-05-12', 50),
(13, '2016-05-13', 48),
(13, '2016-05-14', 7),
(13, '2016-05-15', 5),
(13, '2016-05-19', 2),
(13, '2016-05-20', 1),
(13, '2016-05-24', 1),
(13, '2016-05-25', 10),
(13, '2016-05-26', 3),
(13, '2016-05-29', 2),
(13, '2016-05-30', 12),
(13, '2016-05-31', 20),
(13, '2016-06-01', 2),
(13, '2016-06-04', 1),
(13, '2016-06-05', 2),
(13, '2016-06-12', 8),
(13, '2016-06-13', 1),
(13, '2016-07-08', 5),
(13, '2016-07-13', 1),
(14, '2015-06-02', 16),
(14, '2015-06-03', 4),
(14, '2015-06-05', 1),
(14, '2015-06-08', 4),
(14, '2015-06-09', 3),
(14, '2015-06-10', 1),
(14, '2015-06-12', 7),
(14, '2015-07-01', 1),
(14, '2015-07-09', 1),
(14, '2015-09-13', 1),
(14, '2016-05-07', 1),
(14, '2016-05-08', 4),
(14, '2016-05-09', 1),
(14, '2016-05-10', 1),
(14, '2016-05-13', 1),
(14, '2016-05-17', 2),
(14, '2016-05-18', 1),
(14, '2016-05-19', 2),
(14, '2016-05-20', 1),
(14, '2016-05-21', 9),
(14, '2016-05-23', 2),
(14, '2016-05-24', 3),
(14, '2016-05-29', 3),
(14, '2016-05-30', 11),
(14, '2016-05-31', 7),
(14, '2016-06-01', 2),
(14, '2016-06-02', 1),
(14, '2016-06-03', 1),
(14, '2016-06-05', 1),
(14, '2016-06-13', 7),
(14, '2016-07-08', 7),
(14, '2016-07-11', 2),
(14, '2016-07-12', 1),
(14, '2016-07-13', 3),
(15, '2015-06-02', 19),
(15, '2015-06-03', 25),
(15, '2015-06-05', 1),
(15, '2015-06-08', 3),
(15, '2015-06-09', 3),
(15, '2015-06-10', 3),
(15, '2015-06-12', 9),
(15, '2015-06-13', 1),
(15, '2015-06-18', 1),
(15, '2015-06-20', 1),
(15, '2015-06-23', 1),
(15, '2015-07-07', 1),
(15, '2015-09-13', 2),
(15, '2016-05-07', 1),
(15, '2016-05-09', 1),
(15, '2016-05-10', 2),
(15, '2016-05-12', 1),
(15, '2016-05-15', 1),
(15, '2016-05-20', 1),
(15, '2016-05-21', 4),
(15, '2016-05-24', 1),
(15, '2016-05-25', 2),
(15, '2016-05-30', 1),
(15, '2016-05-31', 4),
(15, '2016-06-01', 6),
(15, '2016-06-03', 1),
(15, '2016-06-04', 1),
(15, '2016-06-05', 5),
(15, '2016-06-13', 5),
(15, '2016-07-08', 6),
(15, '2016-07-13', 15),
(15, '2016-07-14', 1),
(16, '2015-06-02', 29),
(16, '2015-06-03', 10),
(16, '2015-06-05', 4),
(16, '2015-06-08', 28),
(16, '2015-06-09', 25),
(16, '2015-06-10', 2),
(16, '2015-06-12', 11),
(16, '2015-06-15', 58),
(16, '2015-06-16', 21),
(16, '2015-06-17', 4),
(16, '2015-06-18', 10),
(16, '2015-06-19', 1),
(16, '2015-06-20', 2),
(16, '2015-06-23', 1),
(16, '2015-06-25', 1),
(16, '2015-07-06', 1),
(16, '2015-07-07', 2),
(16, '2015-09-09', 1),
(16, '2015-09-13', 2),
(16, '2016-05-07', 2),
(16, '2016-05-09', 4),
(16, '2016-05-10', 13),
(16, '2016-05-11', 35),
(16, '2016-05-12', 4),
(16, '2016-05-13', 13),
(16, '2016-05-14', 4),
(16, '2016-05-15', 9),
(16, '2016-05-18', 1),
(16, '2016-05-20', 3),
(16, '2016-05-21', 1),
(16, '2016-05-23', 62),
(16, '2016-05-24', 5),
(16, '2016-05-25', 43),
(16, '2016-05-27', 1),
(16, '2016-05-29', 1),
(16, '2016-05-30', 9),
(16, '2016-05-31', 16),
(16, '2016-06-01', 1),
(16, '2016-06-05', 5),
(16, '2016-06-12', 3),
(16, '2016-06-13', 1),
(16, '2016-07-08', 7),
(16, '2016-07-11', 2),
(16, '2016-07-12', 2),
(16, '2016-07-13', 1),
(17, '2015-06-02', 8),
(17, '2015-06-03', 14),
(17, '2015-06-04', 6),
(17, '2015-06-05', 3),
(17, '2015-06-08', 20),
(17, '2015-06-09', 6),
(17, '2015-06-12', 33),
(17, '2015-06-13', 1),
(17, '2015-06-14', 2),
(17, '2015-06-17', 1),
(17, '2015-06-18', 1),
(17, '2015-06-19', 1),
(17, '2015-06-24', 1),
(17, '2015-06-27', 1),
(17, '2015-06-29', 1),
(17, '2015-07-01', 1),
(17, '2015-07-07', 1),
(17, '2015-08-09', 1),
(17, '2015-09-13', 1),
(17, '2016-05-08', 1),
(17, '2016-05-09', 4),
(17, '2016-05-10', 43),
(17, '2016-05-11', 22),
(17, '2016-05-12', 45),
(17, '2016-05-13', 35),
(17, '2016-05-14', 9),
(17, '2016-05-15', 6),
(17, '2016-05-16', 2),
(17, '2016-05-19', 2),
(17, '2016-05-21', 6),
(17, '2016-05-22', 3),
(17, '2016-05-24', 1),
(17, '2016-05-26', 15),
(17, '2016-05-28', 2),
(17, '2016-05-30', 56),
(17, '2016-05-31', 104),
(17, '2016-06-01', 45),
(17, '2016-06-02', 11),
(17, '2016-06-03', 44),
(17, '2016-06-04', 42),
(17, '2016-06-05', 5),
(17, '2016-06-13', 3),
(17, '2016-07-08', 5),
(17, '2016-07-12', 11),
(17, '2016-07-13', 5),
(18, '2015-06-03', 4),
(18, '2015-06-04', 2),
(18, '2015-06-09', 2),
(18, '2015-06-12', 1),
(18, '2015-06-14', 1),
(18, '2016-05-09', 2),
(18, '2016-05-11', 1),
(18, '2016-05-13', 1),
(18, '2016-05-22', 4),
(18, '2016-07-08', 2),
(19, '2015-06-03', 1),
(19, '2015-06-09', 2),
(19, '2015-06-12', 1),
(19, '2015-06-19', 1),
(19, '2016-05-09', 2),
(19, '2016-05-11', 1),
(19, '2016-05-13', 1),
(19, '2016-07-08', 1),
(19, '2016-07-11', 1),
(20, '2015-06-03', 1),
(20, '2015-06-05', 1),
(20, '2015-06-08', 1),
(20, '2015-06-09', 2),
(20, '2015-06-12', 1),
(20, '2015-09-13', 1),
(20, '2016-05-09', 2),
(20, '2016-05-13', 2),
(20, '2016-07-08', 1),
(21, '2015-06-03', 2),
(21, '2015-06-05', 2),
(21, '2015-06-09', 1),
(21, '2015-06-12', 3),
(21, '2015-07-19', 1),
(21, '2015-09-13', 1),
(21, '2016-05-09', 3),
(21, '2016-05-13', 2),
(21, '2016-07-11', 1),
(21, '2016-07-13', 1),
(22, '2015-06-02', 1),
(22, '2015-06-05', 1),
(22, '2015-06-09', 2),
(22, '2015-06-12', 1),
(22, '2015-06-13', 1),
(22, '2015-09-13', 1),
(22, '2016-05-09', 2),
(22, '2016-05-10', 1),
(22, '2016-05-13', 1),
(22, '2016-05-23', 2),
(22, '2016-05-24', 14),
(22, '2016-05-26', 4),
(22, '2016-05-28', 1),
(22, '2016-05-30', 23),
(22, '2016-06-01', 6),
(22, '2016-06-02', 3),
(22, '2016-06-03', 33),
(22, '2016-06-04', 155),
(22, '2016-06-05', 10),
(22, '2016-07-08', 15),
(22, '2016-07-09', 6),
(22, '2016-07-11', 3),
(23, '2015-06-03', 17),
(23, '2015-06-04', 1),
(23, '2015-06-05', 2),
(23, '2015-06-08', 11),
(23, '2015-06-09', 4),
(23, '2015-06-10', 6),
(23, '2015-06-12', 6),
(23, '2015-06-14', 1),
(23, '2015-06-18', 1),
(23, '2015-06-19', 2),
(23, '2015-07-01', 1),
(23, '2015-09-13', 1),
(23, '2016-05-09', 4),
(23, '2016-05-11', 1),
(23, '2016-05-13', 1),
(23, '2016-05-15', 1),
(23, '2016-05-18', 1),
(23, '2016-05-24', 1),
(23, '2016-05-31', 3),
(23, '2016-06-01', 1),
(23, '2016-06-05', 1),
(23, '2016-06-13', 1),
(23, '2016-07-08', 4),
(23, '2016-07-11', 1),
(23, '2016-07-14', 1),
(24, '2015-06-03', 44),
(24, '2015-06-04', 178),
(24, '2015-06-05', 9),
(24, '2015-06-08', 3),
(24, '2015-06-09', 182),
(24, '2015-06-10', 11),
(24, '2015-06-12', 48),
(24, '2015-06-18', 5),
(24, '2015-06-19', 3),
(24, '2015-06-20', 9),
(24, '2015-06-24', 2),
(24, '2015-07-01', 26),
(24, '2015-07-03', 2),
(24, '2015-07-04', 1),
(24, '2015-07-08', 1),
(24, '2015-07-21', 16),
(24, '2015-08-01', 136),
(24, '2015-09-13', 1),
(24, '2016-05-09', 252),
(24, '2016-05-10', 101),
(24, '2016-05-11', 90),
(24, '2016-05-12', 203),
(24, '2016-05-13', 461),
(24, '2016-05-14', 199),
(24, '2016-05-15', 68),
(24, '2016-05-16', 3),
(24, '2016-05-17', 232),
(24, '2016-05-18', 273),
(24, '2016-05-19', 351),
(24, '2016-05-20', 300),
(24, '2016-05-21', 62),
(24, '2016-05-22', 81),
(24, '2016-05-23', 15),
(24, '2016-05-24', 6),
(24, '2016-05-25', 8),
(24, '2016-05-26', 141),
(24, '2016-05-27', 7),
(24, '2016-05-28', 123),
(24, '2016-05-29', 109),
(24, '2016-05-30', 49),
(24, '2016-05-31', 110),
(24, '2016-06-01', 6),
(24, '2016-06-02', 43),
(24, '2016-06-03', 12),
(24, '2016-06-04', 29),
(24, '2016-06-05', 58),
(24, '2016-06-13', 6),
(24, '2016-07-08', 5),
(24, '2016-07-11', 4),
(24, '2016-07-12', 1),
(25, '2015-06-17', 10),
(25, '2015-06-18', 26),
(25, '2015-06-19', 9),
(25, '2015-06-20', 4),
(25, '2015-06-23', 3),
(25, '2015-06-29', 1),
(25, '2015-07-01', 2),
(25, '2015-07-07', 1),
(25, '2015-07-08', 2),
(25, '2015-07-13', 2),
(25, '2015-09-13', 2),
(25, '2016-05-07', 1),
(25, '2016-05-09', 9),
(25, '2016-05-10', 4),
(25, '2016-05-11', 1),
(25, '2016-05-14', 1),
(25, '2016-05-15', 1),
(25, '2016-05-21', 4),
(25, '2016-05-23', 3),
(25, '2016-05-24', 30),
(25, '2016-05-25', 97),
(25, '2016-05-26', 1),
(25, '2016-05-29', 3),
(25, '2016-05-30', 21),
(25, '2016-05-31', 21),
(25, '2016-06-01', 1),
(25, '2016-06-05', 1),
(25, '2016-06-12', 2),
(25, '2016-06-13', 1),
(25, '2016-07-08', 6),
(25, '2016-07-13', 4),
(25, '2016-07-15', 1),
(26, '2015-06-29', 15),
(26, '2015-07-01', 3),
(26, '2015-07-07', 2),
(26, '2015-07-24', 1),
(26, '2015-09-09', 1),
(26, '2015-09-11', 2),
(26, '2015-09-13', 3),
(26, '2016-05-07', 24),
(26, '2016-05-09', 17),
(26, '2016-05-10', 28),
(26, '2016-05-13', 1),
(26, '2016-05-15', 1),
(26, '2016-05-20', 2),
(26, '2016-05-29', 2),
(26, '2016-05-30', 1),
(26, '2016-06-05', 1),
(26, '2016-07-08', 2),
(26, '2016-07-11', 1),
(27, '2016-05-07', 42),
(27, '2016-05-08', 9),
(27, '2016-05-09', 162),
(27, '2016-05-10', 225),
(27, '2016-05-11', 226),
(27, '2016-05-12', 276),
(27, '2016-05-13', 167),
(27, '2016-05-14', 413),
(27, '2016-05-15', 403),
(27, '2016-05-16', 382),
(27, '2016-05-17', 154),
(27, '2016-05-18', 34),
(27, '2016-05-19', 28),
(27, '2016-05-20', 95),
(27, '2016-05-21', 763),
(27, '2016-05-22', 235),
(27, '2016-05-23', 324),
(27, '2016-05-24', 28),
(27, '2016-05-25', 12),
(27, '2016-05-26', 194),
(27, '2016-05-27', 51),
(27, '2016-05-28', 3),
(27, '2016-05-29', 10),
(27, '2016-05-30', 55),
(27, '2016-05-31', 9),
(27, '2016-06-01', 7),
(27, '2016-06-02', 4),
(27, '2016-06-03', 2),
(27, '2016-06-04', 86),
(27, '2016-06-05', 60),
(27, '2016-06-12', 1),
(27, '2016-06-13', 2),
(27, '2016-07-08', 33),
(27, '2016-07-09', 13),
(27, '2016-07-11', 2),
(27, '2016-07-12', 15),
(27, '2016-07-13', 1),
(28, '2016-05-22', 4),
(28, '2016-05-23', 4),
(28, '2016-05-24', 1),
(28, '2016-05-31', 1),
(28, '2016-06-01', 1),
(28, '2016-06-02', 1),
(28, '2016-06-05', 6),
(28, '2016-06-13', 1),
(28, '2016-07-08', 3),
(28, '2016-07-12', 12),
(28, '2016-07-15', 1),
(29, '2016-05-22', 2),
(29, '2016-05-23', 1),
(29, '2016-05-24', 1),
(29, '2016-05-25', 2),
(29, '2016-05-27', 1),
(29, '2016-05-29', 1),
(29, '2016-05-30', 3),
(29, '2016-05-31', 1),
(29, '2016-06-01', 1),
(29, '2016-06-02', 1),
(29, '2016-06-05', 3),
(29, '2016-06-13', 1),
(29, '2016-07-08', 3),
(29, '2016-07-09', 2),
(29, '2016-07-12', 1),
(29, '2016-07-15', 1),
(30, '2016-05-23', 2),
(30, '2016-05-24', 2),
(30, '2016-05-30', 1),
(30, '2016-05-31', 1),
(30, '2016-06-01', 1),
(30, '2016-06-02', 1),
(30, '2016-06-05', 18),
(30, '2016-06-13', 1),
(30, '2016-07-08', 3),
(30, '2016-07-11', 1),
(30, '2016-07-12', 4),
(31, '2016-05-22', 3),
(31, '2016-05-23', 3),
(31, '2016-05-24', 4),
(31, '2016-05-25', 2),
(31, '2016-05-27', 2),
(31, '2016-05-28', 1),
(31, '2016-05-31', 1),
(31, '2016-06-01', 1),
(31, '2016-06-02', 1),
(31, '2016-06-03', 2),
(31, '2016-06-05', 1),
(31, '2016-06-12', 3),
(31, '2016-06-13', 5),
(31, '2016-07-08', 5),
(31, '2016-07-09', 1),
(31, '2016-07-11', 3),
(31, '2016-07-13', 3),
(32, '2016-05-22', 3),
(32, '2016-05-23', 13),
(32, '2016-05-24', 1),
(32, '2016-05-25', 1),
(32, '2016-05-27', 9),
(32, '2016-05-28', 240),
(32, '2016-05-29', 199),
(32, '2016-05-30', 21),
(32, '2016-05-31', 5),
(32, '2016-06-01', 3),
(32, '2016-06-02', 2),
(32, '2016-06-03', 2),
(32, '2016-06-04', 1),
(32, '2016-06-05', 818),
(32, '2016-06-13', 1),
(32, '2016-07-08', 6),
(32, '2016-07-11', 1),
(32, '2016-07-12', 2),
(33, '2016-05-24', 4),
(33, '2016-05-25', 23),
(33, '2016-05-27', 4),
(33, '2016-05-28', 20),
(33, '2016-05-31', 3),
(33, '2016-06-01', 254),
(33, '2016-06-02', 312),
(33, '2016-06-03', 272),
(33, '2016-06-04', 111),
(33, '2016-06-05', 237),
(33, '2016-06-13', 2),
(33, '2016-07-08', 3),
(33, '2016-07-11', 4),
(33, '2016-07-12', 1),
(34, '2016-05-26', 4),
(34, '2016-05-27', 7),
(34, '2016-05-28', 1),
(34, '2016-05-30', 1),
(34, '2016-05-31', 1),
(34, '2016-06-01', 1),
(34, '2016-06-02', 1),
(34, '2016-06-03', 2),
(34, '2016-06-05', 8),
(34, '2016-06-13', 1),
(34, '2016-07-08', 6),
(34, '2016-07-11', 1),
(34, '2016-07-12', 1),
(34, '2016-07-14', 1),
(35, '2016-06-03', 8),
(35, '2016-06-04', 16),
(35, '2016-06-05', 16),
(35, '2016-06-12', 1),
(35, '2016-06-13', 1),
(35, '2016-07-08', 23),
(35, '2016-07-09', 5),
(35, '2016-07-11', 10),
(35, '2016-07-12', 4),
(12282, '2015-06-02', 4),
(14190, '2015-06-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'general'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `value`, `type`) VALUES
(1, 'base_url', 'http://nghien.biz', 'general'),
(2, 'site_title', 'Xem phim hay,  Bom Tấn Online chuẩn HD ', 'general'),
(3, 'site_description', 'Trang xem phim hay online với chuẩn HD, cập nhật đầy đủ các thể loại phim, tốc độ load cực nhanh và xem phim hoàn toàn miễn phí.', 'general'),
(4, 'site_keywords', 'xem phim, phim hay, phim online, phim hd, phim miễn phí, xem phim hay, xem phim online, xem phim hd, xem phim miễn phí', 'general'),
(5, 'admin_email', 'nghien.biz@gmail.com', 'general'),
(6, 'gmt_offset', 'Asia/Ho_Chi_Minh', 'general'),
(7, 'date_format', 'd/m/Y', 'general'),
(8, 'time_format', 'H:i', 'general'),
(9, 'membership', '0', 'general'),
(10, 'default_role', 'subscriber', 'general'),
(11, 'admin_url_format', '/admin.php/:c:.con/:a:', 'general'),
(12, 'index_url_format', '/:a:.:c:', 'general'),
(13, 'index_theme', '123movies', 'general'),
(14, 'log_error_type', '5', 'general'),
(15, 'root_theme', 'themes', 'general'),
(16, 'image_save', '/upload/images/', 'general'),
(17, 'file_save', '/upload/files/', 'general'),
(18, 'download_save', '/upload/downloads/', 'general'),
(19, 'admin_theme', 'adminthemefilms', 'general'),
(20, 'temp', 'temp/', 'general'),
(21, 'default_category', '1', 'writing'),
(22, 'mail_server', 'mail.example.com', 'writing'),
(23, 'mail_login_name', 'login@example.com', 'writing'),
(24, 'mail_password', 'password', 'writing'),
(25, 'upload_file_rules', 'a:2:{s:13:"max_file_size";i:20;s:16:"allow_file_types";a:6:{i:0;s:9:"image/gif";i:1;s:10:"image/jpeg";i:2;s:9:"image/jpg";i:3;s:9:"image/png";i:4;s:11:"image/pjpeg";i:5;s:11:"image/x-png";}}', 'writing'),
(26, 'upload_file_location', '/upload/files/', 'writing'),
(27, 'upload_image_rules', 'a:4:{s:13:"max_file_size";i:3;s:16:"allow_file_types";a:6:{i:0;s:9:"image/gif";i:1;s:10:"image/jpeg";i:2;s:9:"image/jpg";i:3;s:9:"image/png";i:4;s:11:"image/pjpeg";i:5;s:11:"image/x-png";}s:9:"max_width";i:4096;s:10:"max_height";i:10000;}', 'writing'),
(28, 'upload_image_location', '/upload/images/', 'writing'),
(29, 'theme', 'quangcaoled', 'theme'),
(30, 'url_rewrite', 'a:4:{s:28:"#^/([a-zA-Z0-9_\\- ]+)\\.page#";a:3:{s:3:"con";s:4:"page";s:2:"me";s:5:"index";s:3:"arg";i:1;}s:26:"#^/[a-zA-Z0-9_\\- ]+\\.post#";a:2:{s:3:"con";s:4:"home";s:2:"me";s:5:"index";}s:46:"#^/([a-zA-Z0-9_\\- ]+)\\.con/([a-zA-Z0-9_\\- ]+)#";a:2:{s:3:"con";i:1;s:2:"me";i:2;}s:27:"#^/([a-zA-Z0-9_\\- ]+)\\.con#";a:1:{s:3:"con";i:1;}}', 'theme'),
(31, 'default_comment_status', 'publish', 'comment'),
(32, 'post_tag_mapper', '\\mod\\post\\db\\post_tag', 'term'),
(33, 'post_category_mapper', '\\admin\\post\\db\\post_term', 'term'),
(34, 'post_tag_type', 'tag', 'term'),
(35, 'term_category_type', 'category', 'term'),
(36, 'post_tag_name', 'Post Tags', 'term'),
(37, 'theme_category_mapper', '\\admin\\ctptheme\\db\\ctptheme_term', 'term'),
(38, 'theme_category_type', 'category', 'term'),
(39, 'theme_category_name', 'Theme Categories', 'term'),
(40, 'product_category_mapper', '\\admin\\product\\db\\product_term', 'term'),
(41, 'product_tag_mapper', '\\admin\\product\\db\\product_term', 'term'),
(42, 'product_category_type', 'category', 'term'),
(43, 'produc_tag_type', 'tag', 'term'),
(44, 'product_category_name', 'Danh mục sản phẩm', 'term'),
(45, 'product_tag_name', 'Thẻ tag sản phẩm', 'term'),
(46, 'product_status_mapper', '\\admin\\product\\db\\product_term', 'term'),
(47, 'product_status_type', 'tag', 'term'),
(48, 'product_status_name', 'Product Status', 'term'),
(49, 'product_filter_mapper', '\\admin\\product\\db\\product_term', 'term'),
(50, 'product_filter_type', 'category', 'term'),
(51, 'product_filter_name', 'Product Filters', 'term'),
(52, 'posts_mapper', '\\mod\\posts\\mysql\\m_posts_category', 'category'),
(53, 'posts_name', 'Danh mục tin tức', 'category'),
(54, 'posts_mapper', '\\mod\\posts\\mysql\\m_posts_tag', 'tag'),
(55, 'posts_name', 'Thẻ tag tin tức', 'tag'),
(56, 'upload_image', 'upload/image/', 'image'),
(57, 'thumb_location', 'cache/', 'image'),
(58, 'thumw', '100', 'image'),
(59, 'thumh', '100', 'image'),
(60, 'product_mapper', '\\mod\\product\\mysql\\m_product_category', 'category'),
(61, 'product_name', 'Danh mục sản phẩm', 'category'),
(105, 'site_name', 'Xem phim hay,  Bom Tấn Online chuẩn HD ', 'general'),
(106, 'company_name', 'Nha khoa Việt Khoa', 'company'),
(107, 'company_slogan', 'You Smile We Care', 'company'),
(108, 'company_address', 'a:1:{i:0;s:73:"9A Nguyễn Đình Chiểu, Quận Hai Bà Trưng, Thành Phố Hà Nội";}', 'company'),
(109, 'company_phone', 'a:1:{i:0;a:2:{s:4:"name";s:7:"Hotline";s:5:"phone";s:10:"0968668836";}}', 'company'),
(110, 'company_fax', '', 'company'),
(111, 'company_email', 'nhakhoavietkhoa@gmail.com', 'company'),
(112, 'company_website', 'http://nhakhoavietkhoa.com', 'company'),
(113, 'google_analystic', 'UA-78246182-1', 'general'),
(114, 'facebook_appid', '1704278759791793', 'general'),
(115, 'google_fanpage', '', 'company'),
(116, 'facebook_fanpage', 'https://www.facebook.com/nhakhoavietkhoa', 'company'),
(117, 'twitter_fanpage', '', 'company'),
(118, 'company_bank', 'a:1:{i:0;a:3:{s:19:"account_holder_name";s:0:"";s:10:"account_id";s:0:"";s:6:"branch";s:0:"";}}', 'company'),
(119, 'product_home_limit', '8', 'display'),
(120, 'product_category_limit', '8', 'display'),
(121, 'product_related_limit', '8', 'display'),
(122, 'post_home_limit', '8', 'display'),
(123, 'post_category_limit', '8', 'display'),
(124, 'post_related_limit', '8', 'display'),
(125, 'custom_product_related', 'no', 'display'),
(126, 'product_mapper', '\\mod\\product\\mysql\\m_product_tag', 'tag'),
(127, 'product_name', 'Thẻ tag sản phẩm', 'tag'),
(129, 'dateformat', 'd-m-Y H:i:s', 'general'),
(130, 'logo', '/upload/image/options/logo-250x72.png', 'general'),
(131, 'favicon', '/upload/image/options/icon-logo-85x85.png', 'general'),
(132, 'display_popup', 'no', 'display'),
(133, 'popup_name', 'Popup trang chủ', 'display'),
(134, 'popup_image', '/upload/image/ads/tintuc-1.jpg', 'display'),
(135, 'popup_time', '20', 'display'),
(136, 'popup_url', '', 'display'),
(137, 'banner', '/upload/image/options/banner_xintrum_fashion.png', 'general'),
(138, 'index_mtheme', '123movies', 'general'),
(139, 'dichvu_content', 'a:1:{i:0;a:3:{s:11:"ten_dich_vu";s:27:"Quy Trình Chuyên Nghiệp";s:10:"icon_image";s:36:"/upload/image/icons/icon-dvvt-21.jpg";s:13:"mo_ta_dich_vu";s:144:"Nha Khoa Việt Khoa áp dụng quy trình chuyên nghiệp về: Khử trùng, vô khuẩn, máy hấp nhiệt, hộp bảo quản thiết bị";}}', 'company'),
(140, 'watermark', '/upload/image/options/logo-250x721.png', 'general');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sys_id` bigint(20) DEFAULT NULL,
  `slug` varchar(200) NOT NULL DEFAULT '',
  `title` text NOT NULL,
  `excerpt` text NOT NULL,
  `image` text,
  `content` longtext NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'publish',
  `type` varchar(20) NOT NULL DEFAULT 'post',
  `format` varchar(20) DEFAULT NULL,
  `author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `modified_author` bigint(20) DEFAULT NULL,
  `date` datetime DEFAULT '0000-00-00 00:00:00',
  `gmt` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_gmt` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `metadata` text,
  `search` text,
  `link_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `sys_id`, `slug`, `title`, `excerpt`, `image`, `content`, `status`, `type`, `format`, `author`, `modified_author`, `date`, `gmt`, `modified_date`, `modified_gmt`, `publish_date`, `metadata`, `search`, `link_id`) VALUES
(135, 88, 'lam-tam-nhu-dap-may-bay-di-tham-hoac-kien-hoa-ngay-sau-khi-cong-khai-tinh-cam', 'Lâm Tâm Như đáp máy bay đi thăm Hoắc Kiến Hoa ngay sau khi công khai tình cảm', 'Xuất hiện tại s&acirc;n bay tr&ecirc;n đường đến Thanh Đảo (Trung Quốc), nữ diễn vi&ecirc;n 40 tuổi kh&aacute; ngượng ng&ugrave;ng khi bị hỏi chuyện lặn lội đường xa đến thăm Hoắc Kiến Hoa.\r\n\r\nSina đưa tin, chiều 21/5, L&acirc;m T&acirc;m Như xuất hiện tại s&acirc;n bay đ&aacute;p chuyến từ Đ&agrave;i Loan đến Thanh', '/upload/image/posts/4fb32c2e929a5626d8c212e47407fac9_1463823617_d633jpg1.jpg', '&lt;div&gt;Xuất hiện tại s&amp;acirc;n bay tr&amp;ecirc;n đường đến Thanh Đảo (Trung Quốc), nữ diễn vi&amp;ecirc;n 40 tuổi kh&amp;aacute; ngượng ng&amp;ugrave;ng khi bị hỏi chuyện lặn lội đường xa đến thăm Hoắc Kiến Hoa.&lt;/div&gt;\r\n&lt;div id=&quot;content-news&quot;&gt;\r\n&lt;p&gt;Sina đưa tin, chiều 21/5, L&amp;acirc;m T&amp;acirc;m Như xuất hiện tại s&amp;acirc;n bay đ&amp;aacute;p chuyến từ Đ&amp;agrave;i Loan đến Thanh Đảo. Trang tin cho biết, Hoắc Kiến Hoa đang đ&amp;oacute;ng phim tại đ&amp;acirc;y n&amp;ecirc;n người đẹp 40 tuổi đến thăm bạn trai.&lt;/p&gt;\r\n&lt;p&gt;&lt;img title=&quot;Vừa c&amp;ocirc;ng khai y&amp;ecirc;u, L&amp;acirc;m T&amp;acirc;m Như đ&amp;aacute;p m&amp;aacute;y bay đi thăm bạn trai h&amp;igrave;nh ảnh 1&quot; src=&quot;http://hdonline.vn/i/resources/new/post/screen/2016/05/21/4fb32c2e929a5626d8c212e47407fac9_1463823617_d633jpg.jpg&quot; alt=&quot;Vua cong khai yeu, Lam Tam Nhu dap may bay di tham ban trai hinh anh 1&quot; /&gt;&lt;br /&gt;L&amp;acirc;m T&amp;acirc;m Như giản dị xuất hiện tại s&amp;acirc;n bay tr&amp;ecirc;n đường đến thăm bạn trai tại Thanh Đảo. Ảnh: Apple.&lt;/p&gt;\r\n&lt;p&gt;Khi c&amp;oacute; mặt tại s&amp;acirc;n bay, c&amp;ocirc; đội mũ đen, mặc &amp;aacute;o ph&amp;ocirc;ng trắng, quần jeans đơn giản. Ph&amp;aacute;t hiện k&amp;yacute; giả, c&amp;ocirc; cố t&amp;igrave;nh c&amp;uacute;i thấp tr&amp;aacute;nh sự ch&amp;uacute; &amp;yacute;. Nguồn tin cho biết, Hoắc Kiến Hoa cũng c&amp;oacute; mặt tại s&amp;acirc;n bay Thanh Đảo c&amp;ugrave;ng thời điểm để chờ bạn g&amp;aacute;i. Cảnh tượng được mi&amp;ecirc;u tả giống như &amp;ldquo;vợ chồng son&amp;rdquo;.&lt;/p&gt;\r\n&lt;p&gt;Trả lời phỏng vấn Ettoday ngay tại s&amp;acirc;n bay, L&amp;acirc;m T&amp;acirc;m Như mỉm cười cảm ơn sự ch&amp;uacute;c ph&amp;uacute;c của kh&amp;aacute;n giả. Trước nghi vấn về việc sắp cưới do gia đ&amp;igrave;nh th&amp;uacute;c giục v&amp;agrave; mang bầu, c&amp;ocirc; phủ nhận: &amp;ldquo;Chưa thể nhanh thế được. H&amp;ocirc;m qua ch&amp;uacute;ng t&amp;ocirc;i mới n&amp;oacute;i y&amp;ecirc;u, l&amp;agrave;m thế n&amp;agrave;o h&amp;ocirc;m nay đ&amp;atilde; mang thai&amp;rdquo;.&lt;/p&gt;\r\n&lt;div id=&quot;bscontainer&quot;&gt;\r\n&lt;div id=&quot;bsplayer&quot; tabindex=&quot;0&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;Nhận x&amp;eacute;t về bạn trai, c&amp;ocirc; cười: &amp;ldquo;Ch&amp;uacute;ng t&amp;ocirc;i l&amp;agrave; bạn th&amp;acirc;n nhiều năm, kh&amp;oacute; nhận x&amp;eacute;t&amp;rdquo;. Đối với tin tức dọn đến sống chung với Hoắc Kiến Hoa sau khi anh mua nh&amp;agrave; tại Đ&amp;agrave;i Loan, nữ diễn vi&amp;ecirc;n phủ nhận: &amp;ldquo;Kh&amp;ocirc;ng c&amp;oacute; chuyện đ&amp;oacute;&amp;rdquo;.&lt;/p&gt;\r\n&lt;p&gt;&lt;img title=&quot;Vừa c&amp;ocirc;ng khai y&amp;ecirc;u, L&amp;acirc;m T&amp;acirc;m Như đ&amp;aacute;p m&amp;aacute;y bay đi thăm bạn trai h&amp;igrave;nh ảnh 2&quot; src=&quot;http://hdonline.vn/i/resources/new/post/screen/2016/05/21/222685871c6513feee25fa8ea5b4689d_201605211528557b47f_550jpg.jpg&quot; alt=&quot;Vua cong khai yeu, Lam Tam Nhu dap may bay di tham ban trai hinh anh 2&quot; /&gt;&lt;br /&gt;Theo mi&amp;ecirc;u tả của Sina, L&amp;acirc;m T&amp;acirc;m Như đến Thanh Đảo thăm người y&amp;ecirc;u. Hoắc Kiến Hoa cũng ra tận s&amp;acirc;n bay đ&amp;oacute;n c&amp;ocirc;. Ảnh: ETtoday.&lt;/p&gt;\r\n&lt;p&gt;B&amp;aacute;o ch&amp;iacute; Đ&amp;agrave;i Loan cho biết, gia đ&amp;igrave;nh hai b&amp;ecirc;n rất ủng hộ mối quan hệ giữa L&amp;acirc;m T&amp;acirc;m Như v&amp;agrave; t&amp;agrave;i tử k&amp;eacute;m 3 tuổi. Mẹ Hoắc Kiến Hoa trả lời phỏng vấn tiết lộ b&amp;agrave; vui mừng khi biết con trai c&amp;ocirc;ng khai bạn g&amp;aacute;i. &amp;ldquo;T&amp;ocirc;i cũng giục ch&amp;aacute;u, tuổi t&amp;aacute;c kh&amp;ocirc;ng c&amp;ograve;n nhỏ nữa phải sớm kết h&amp;ocirc;n đi th&amp;ocirc;i&amp;rdquo;. N&amp;oacute;i về L&amp;acirc;m T&amp;acirc;m Như, b&amp;agrave; nhấn mạnh: &amp;ldquo;T&amp;ocirc;i tin v&amp;agrave;o mắt nh&amp;igrave;n người của con trai&amp;rdquo;.&lt;/p&gt;\r\n&lt;p&gt;Hoắc Kiến Hoa sinh năm 1979 tại Đ&amp;agrave;i Loan. Anh từng c&amp;oacute; thời gian chật vật khi đ&amp;oacute;ng phim thần tượng tại qu&amp;ecirc; nh&amp;agrave;. Thời điểm sang Đại lục ph&amp;aacute;t triển, nam diễn vi&amp;ecirc;n đ&amp;atilde; bước sang trang mới trong sự nghiệp v&amp;agrave; trở th&amp;agrave;nh t&amp;agrave;i tử xứ Đ&amp;agrave;i đắt gi&amp;aacute; nhất hiện nay. Về đời tư, anh từng c&amp;ocirc;ng khai y&amp;ecirc;u Trần Kiều &amp;Acirc;n v&amp;agrave; vướng tin đồn t&amp;igrave;nh &amp;aacute;i với Diệp Tuyền, Trương Hinh Dư, Quan Chi L&amp;acirc;m.&lt;/p&gt;\r\n&lt;p&gt;L&amp;acirc;m T&amp;acirc;m Như sinh năm 1976, c&amp;ocirc; từng c&amp;oacute; đoạn t&amp;igrave;nh với L&amp;acirc;m Ch&amp;iacute; Dĩnh, đạo diễn Đường Qu&amp;yacute; Lễ.&lt;/p&gt;\r\nTheo Zing&lt;/div&gt;', 'publish', 'posts', NULL, 1, 1, '2016-05-22 20:35:22', '2016-05-22 13:35:22', '2016-05-22 20:35:22', '2016-05-22 13:35:22', '2016-05-22 13:32:56', '{"id":88,"title":"L\\u00e2m T\\u00e2m Nh\\u01b0 \\u0111\\u00e1p m\\u00e1y bay \\u0111i th\\u0103m Ho\\u1eafc Ki\\u1ebfn Hoa ngay sau khi c\\u00f4ng khai t\\u00ecnh c\\u1ea3m","description":"Xu\\u1ea5t hi\\u1ec7n t\\u1ea1i s&acirc;n bay tr&ecirc;n \\u0111\\u01b0\\u1eddng \\u0111\\u1ebfn Thanh \\u0110\\u1ea3o (Trung Qu\\u1ed1c), n\\u1eef di\\u1ec5n vi&ecirc;n 40 tu\\u1ed5i kh&aacute; ng\\u01b0\\u1ee3ng ng&ugrave;ng khi b\\u1ecb h\\u1ecfi chuy\\u1ec7n l\\u1eb7n l\\u1ed9i \\u0111\\u01b0\\u1eddng xa \\u0111\\u1ebfn th\\u0103m Ho\\u1eafc Ki\\u1ebfn Hoa.\\r\\n\\r\\nSina \\u0111\\u01b0a tin, chi\\u1ec1u 21\\/5, L&acirc;m T&acirc;m Nh\\u01b0 xu\\u1ea5t hi\\u1ec7n t\\u1ea1i s&acirc;n bay \\u0111&aacute;p chuy\\u1ebfn t\\u1eeb \\u0110&agrave;i Loan \\u0111\\u1ebfn Thanh","keywords":"Lam Tam Nhu dap may bay di tham Hoac Kien Hoa ngay sau khi cong khai tinh cam","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":"","link_download":null,"link_password":null,"youtubeid":""}', 'Lam Tam Nhu dap may bay di tham Hoac Kien Hoa ngay sau khi cong khai tinh cam', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts_category`
--

CREATE TABLE `posts_category` (
  `posts_id` int(20) NOT NULL,
  `category_id` int(20) NOT NULL,
  `order` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts_category`
--

INSERT INTO `posts_category` (`posts_id`, `category_id`, `order`) VALUES
(135, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts_metadata`
--

CREATE TABLE `posts_metadata` (
  `posts_id` bigint(20) NOT NULL,
  `key` varchar(20) NOT NULL DEFAULT '',
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts_tag`
--

CREATE TABLE `posts_tag` (
  `tag_id` int(20) NOT NULL,
  `posts_id` int(20) NOT NULL,
  `order` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `posts_tag`
--

INSERT INTO `posts_tag` (`tag_id`, `posts_id`, `order`) VALUES
(37, 135, 0),
(38, 135, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'base_url', 'http://nghien.biz', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(2, 'site_title', 'Xem phim hay,  Bom Tấn Online chuẩn HD ', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(3, 'site_description', 'Trang xem phim hay online với chuẩn HD, cập nhật đầy đủ các thể loại phim, tốc độ load cực nhanh và xem phim hoàn toàn miễn phí.', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(4, 'site_keywords', 'xem phim, phim hay, phim online, phim hd, phim miễn phí, xem phim hay, xem phim online, xem phim hd, xem phim miễn phí', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(5, 'admin_email', 'nghien.biz@gmail.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(22, 'mail_server', 'mail.example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(23, 'mail_login_name', 'login@example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(24, 'mail_password', 'password', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(105, 'site_name', 'Xem phim hay,  Bom Tấn Online chuẩn HD ', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(113, 'google_analystic', 'UA-78246182-1', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(114, 'facebook_appid', '1704278759791793', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(115, 'google_fanpage', '', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(116, 'facebook_fanpage', 'https://www.facebook.com/nhakhoavietkhoa', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(117, 'twitter_fanpage', '', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(130, 'logo', '2016/07/27/logo-1469631467.png', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(131, 'favicon', '2016/07/27/favicon-1469631470.png', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(141, 'banner', '2016/07/27/banner-1469632581.png', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(142, 'custom_text', '', '2016-07-27 14:37:52', '2016-07-27 15:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `system_id`
--

CREATE TABLE `system_id` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_id`
--

INSERT INTO `system_id` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(73),
(74),
(75),
(76),
(77),
(78),
(79),
(80),
(81),
(82),
(85),
(86),
(87),
(88),
(89),
(90),
(91),
(92),
(93),
(94),
(95),
(96),
(97),
(98),
(99),
(100),
(101),
(102),
(103),
(104),
(105),
(106),
(107),
(108),
(109),
(110),
(111),
(112),
(113),
(114),
(115),
(116),
(117),
(118),
(119),
(120),
(121),
(122),
(123),
(124),
(125),
(126),
(127),
(128),
(129),
(130),
(131),
(132),
(133),
(134),
(135),
(136),
(137);

-- --------------------------------------------------------

--
-- Table structure for table `system_metadata`
--

CREATE TABLE `system_metadata` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(1000) NOT NULL,
  `meta_description` varchar(1000) NOT NULL,
  `meta_keywords` varchar(1000) DEFAULT NULL,
  `custom_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_metadata`
--

INSERT INTO `system_metadata` (`id`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`) VALUES
(1, 'Vietnam', '', 'Vietnam', ''),
(2, 'America', '', 'America', ''),
(3, 'Korea', '', 'Korea', ''),
(4, 'China', '', 'China', ''),
(5, 'United Kingdom', '', 'United Kingdom', ''),
(6, 'Africa', '', 'Africa', ''),
(7, 'Action', '', 'Action', ''),
(8, 'Adventure', '', 'Adventure', ''),
(9, 'Animation', '', 'Animation', ''),
(10, 'Comedy', '', 'Comedy', ''),
(11, 'Family', '', 'Family', ''),
(12, 'Fantasy', '', 'Fantasy', ''),
(13, 'History', '', 'History', ''),
(14, 'Thriller', '', 'Thriller', ''),
(15, 'Biography', '', 'Biography', ''),
(19, 'The Flash', '', 'The Flash', NULL),
(20, 'The Flash Season 1', '', 'The Flash Season 1', NULL),
(21, 'TV Series', '', 'TV Series', NULL),
(22, 'Drama', '', 'Drama', ''),
(23, 'Sci-Fi', '', 'Sci-Fi', ''),
(24, 'Marvel', '', 'Marvel', NULL),
(25, 'Age Of Ultron', '', 'Age Of Ultron', NULL),
(26, 'Avengers', '', 'Avengers', NULL),
(27, 'Avengers 2015', '', 'Avengers 2015', NULL),
(28, 'ciname movies', '', 'ciname movies', NULL),
(29, 'thriller', '', 'thriller', NULL),
(30, 'Fast and Furious 7', '', 'Fast and Furious 7', NULL),
(31, 'Fast 7', '', 'Fast 7', NULL),
(32, 'Người hùng tia chớp (Phần 1)', 'Barry Allen was just 11 years old when his mother was killed in a bizarre and terrifying incident and his father was falsely convicted of the murder. With his life changed forever by the tragedy, Barry was taken in and raised by Detective Joe West, the father of Barry’s best friend, Iris. Now, Barry has become a brilliant, driven and endearingly geeky CSI investigator, whose determination to uncover the truth about his mother’s strange death leads him to follow up on every unexplained urban lege', 'Nguoi hung tia chop (Phan 1)', ''),
(33, 'Japan', '', 'Japan', ''),
(34, 'Kyoto Kenshin', '', 'Kyoto Kenshin', NULL),
(35, 'Flying Swords Of Dragon Gate', '', 'Flying Swords Of Dragon Gate', NULL),
(36, 'Tôi Là Nữ Vương', ' Bộ phim xoay quanh cuộc sống, những thăng trầm và tình yêu của ba cô gái thành đạt chốn đô thị. Song Hye Kyo, Trần Kiều Ân và Y Năng Tịnh sẽ hóa thân vào vai ba cô bạn thân của nhau, cũng chính là ba nhân vật trung tâm của bộ phim. Hye Kyo', 'Toi La Nu Vuong', ''),
(37, 'Lời Tự Thú Của Một Tín Đồ Shopping', 'Tham vọng lớn nhất của Rebecca Bloomwood (Isla Fisher) là được nhận vào làm ở tờ tạp chí thời trang danh tiếng, Alette. Nhưng trong lúc chờ thời, cô phóng viên chuyên viết bài về chủ đề vườn tược cho một tạp chí nhỏ coi mua', 'Loi Tu Thu Cua Mot Tin Do Shopping', ''),
(38, 'Mystery', '', 'Mystery', ''),
(39, 'Horror', '', 'Horror', ''),
(40, 'Kết Án', 'Bộ phim dựa trên một câu chuyện có thật về Betty Anne Waters, một bà mẹ phải một mình nuôi hai đứa con trong khi cố gắng đạt được bằng đại học Luật để bào chữa cho em trai mình, người đã bị buộc tội giết người. Cô đã phải học để lấy bằng cấp hai, bằng cấp ba, sau đó là', 'Ket An', ''),
(41, 'Săn Lùng', 'vào khoang cứu hộ khẩn cấp và đưa xuống mặt đất. Ngờ đâu, chính Morris lại là kẻ sắp đặt tất cả để biến ông thành mục tiêu săn đuổi của một nhóm khủng bố. May mắn thay, ông nhận được sự giúp đỡ từ cậu bé người địa phương Oskari (Onni Tommila) đang nhận nhiệm vụ săn linh', 'San Lung', ''),
(42, 'Đế Chế Ultron', 'Mệt mỏi vì công việc của một nhà sáng chế, doanh nhân và cả trách nhiệm của một siêu anh hùng, Tony đã quyết định tạo ra Ultron để thay mình bảo vệ thế giới. Nhưng ý tưởng đã thất bại, Ultron trở nên mất kiểm soát và biến thành một cỗ', 'De Che Ultron', ''),
(43, 'Động Đất San Andreas', 'Khi một nhà địa chấn học ko nổi tiếng cảnh báo về một trận động đất 12.7 độ, ko ai quan tâm đến cảnh báo của cô. Vì lẽ đó, cô một mình đưa gia đình đến nơi ai toàn trước khi trận động đất làm tan nát và khiến LA tách ra khỏi đất', 'Dong Dat San Andreas', ''),
(44, 'Đấu Trường Đẫm Máu', 'David Chúa thấy mình bị buộc vào thế giới hoang dã của một trường võ sĩ giác đấu hiện đại, nơi mà những người đàn ông chiến đấu đến cùng cho vui chơi giải trí của quần chúng trực', 'Dau Truong Dam Mau', ''),
(45, 'Báo Thù', 'Một chàng trai là chủ tịch của 1 tập đoàn máy tính lớn đem lòng yêu 1 cô gái đã tung tin đồn là cô gái đó là bạn gái của anh, cho dù 2 người chưa từng gặp mặt. Và rồi 2 người bắt đầu yêu nhau nhưng cô gái đã', 'Bao Thu', ''),
(46, 'Max Điên: Con Đường Tử Thần', 'Bối cảnh phim ở một nơi rất xa của trái đất, nơi ấy sa mạc bao phủ hầu hết bề mặt và hầu hết mọi người đều điên cuồng đấu tranh cho những nhu cầu của cuộc sống. Trong thế giới này tồn tại hai phiến quân đang chạy trốn những người được coi là có thể để khôi phục lại trật tự thế giới. Trong đó', 'Max Dien: Con Duong Tu Than', ''),
(47, 'Ghajini Phải Chết', 'Một chàng trai là chủ tịch của 1 tập đoàn máy tính lớn đem lòng yêu 1 cô gái đã tung tin đồn là cô gái đó là bạn gái của anh, cho dù 2 người chưa từng gặp mặt. Và rồi 2 người bắt đầu yêu nhau nhưng cô gái đã', 'Ghajini Phai Chet', ''),
(48, 'Bầu Trời Sắt', 'Trong khoảnh khắc cuối cùng của chiến tranh thế giới thứ II, chương trình không gian bí mật của Đức Quốc xã đã trốn tránh việc bị phá hủy bằng cách chạy trốn tới phía tối của Mặt Trăng.Trong suốt 70 năm ẩn dấu bí mật, Đức quốc xã đã cho xây dựng một pháo', 'Bau Troi Sat', ''),
(49, 'Ông Nội Tôi Là Cương Thi', 'Bộ phim Sifu vs vampire kể về hai tên giang hồ vô tình đánh thức một xác chết nhiều năm sau một vụ cá cược. Từ đó hồi sinh hàng loạt cương thi khác, các xác chết cương thi tràn ra đường phố HongKong và gây ra cảnh hỗn loạn. Mọi chuyện bắt đầu rối rắm và', 'Ong Noi Toi La Cuong Thi', ''),
(50, 'Trò chơi sinh tồn', 'Tại một trường trung học, một giáo viên đang giảng bài bất thình lình bị nổ tung sọ ngay bên bục giảng. Kế sau đó, những vụ nổ xảy ra liên tiếp. Shun Takahata và những học sinh trong lớp bị ép buộc phải cùng tham gia một trò chơi sinh tử mà họ không hề biết ai đứng đằng', 'Tro choi sinh ton', ''),
(51, 'Đại Hỏa Kyoto Kenshin', 'Kenshin sau khi bắt đầu cuộc sống mới cùng Kaoru và bạn bè thì nhận được yêu cầu từ chính quyền Minh Trị. Makoto Shishio là một cựu sát thủ như Kenshin, bị phản bội và bị thiêu sống, nhưng đã thoát chết và hiện đang ở Kyoto, cùng đồng bọn âm mưu lật đổ', 'Dai Hoa Kyoto Kenshin', ''),
(52, 'Long Môn Phi Giáp', 'Phim lấy bối cảnh từ thời nhà Minh. Câu chuyện bắt đầu khi hiệp khách Triệu Hoài An (Nhiếp Viễn) quyết định ẩn náu tại quán trọ Long Môn, sau thời gian bị truy đuổi vì tội giải thoát một trong những phạm nhân triều đình. Tại nơi đây, anh được bà chủ trước đây của', 'Long Mon Phi Giap', ''),
(53, 'Diện Mạo Hoàng Đế', 'Đây là dự án truyền hình mới nhất của nam ca sĩ - diễn viên Seo In Guk. Anh sẽ vào vai Hoàng tử Gwanghee, vốn là con trai của một nàng hầu nên tư cách thừa kế ngai vàng của Gwanghee bị nghi ngờ. Trước ngày lên ngai vàng, Gwanghee từng bị truất ngôi và phải', 'Dien Mao Hoang De', ''),
(54, 'Trại Giam Kiểu Mỹ 2', 'Orange Is the New Black 2 tiếp tục miêu tả chân thực cuộc sống có phần thác loạn của những nữ tù nhân khi họ phải tìm mọi cách để sống sót trong tù. Sau việc làm rất tệ của cô, thì lần này Piper đã được chuyển đến một nhà tù khác', 'Trai Giam Kieu My 2', ''),
(55, 'Kỳ Án Nhà Thanh 2', 'Một năm trước, 2 người vợ Lệ Thư, Hương Dung và con cái của Thi Thế Luân (Âu Dương Chấn Hoa) chết trong vụ đắm thuyền, từ sự việc đó đã làm thay đổi quan điểm sống của ông ta, ông quyết định sống những ngày tháng an', 'Ky An Nha Thanh 2', ''),
(56, 'Cặp Đôi Ngoại Cảm', 'Bộ phim dựa trên một tác phẩm truyện tranh nổi tiếng cùng tên, trong đó Park Yoochun sẽ vào vai Choi Moogak bị vô cảm (mất đi vị giác, xúc giác, cảm giác đau đớn hay rung cảm), một cảnh sát truy đuổi kẻ giết người hàng loạt sau khi người em gái duy nhất của mình bị', 'Cap Doi Ngoai Cam', 'sdfgasdg ds ash sdha sh'),
(57, 'fantasy', '', 'fantasy', NULL),
(58, 'drama', '', 'drama', NULL),
(59, 'Hậu Trường', 'Đây là bộ phim kể về hậu trường, những gì xảy ra phía sau màn ảnh của các chương trình truyền hình (variety show). Baek Seung Chan (Kim Soo Hyun) trong vai 1 đạo diễn muốn thực hiện 1 chương trình lớn. Anh ấy cộng tác với Cindy (IU), ngôi sao nhạc Pop và Tak Ye Ji (Gong Hyo Jin), đạo diễn âm', 'Hau Truong', ''),
(60, 'Survivor 2015', 'A Foreign Service Officer in London tries to prevent a terrorist attack set to hit New York, but is forced to go on the run when she is framed for crimes she did not commit.', 'Survivor 2015', ''),
(61, 'Survivor 2015', '', 'Survivor 2015', NULL),
(62, 'Jurassic Park 3', 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.', 'Jurassic Park 3', ''),
(63, 'Jurassic', '', 'Jurassic', NULL),
(64, 'Jurassic Park 3', '', 'Jurassic Park 3', NULL),
(65, 'Jurassic 2001', '', 'Jurassic 2001', NULL),
(66, 'Tân Tam Quốc Diễn Nghĩa 2010', 'Bắt đầu viết kịch bản từ năm 2004, qua 5 lần chỉnh sửa, chính thức bấm máy vào tháng 9/2008. Bộ phim quy tụ lực lượng diễn viên hùng hậu với dàn sao đến từ cả Trung Quốc đại lục, Hongkong và Đài Loan với kinh phí đầu tư khổng lồ. Bộ phim nói về triều đại Đông Hán Võ Đế tới Tây Tấn Võ Đế, lịch sử kéo dài gần 100 năm. ', 'Tan Tam Quoc Dien Nghia 2010', ''),
(67, 'sifu vs vampire', '', 'sifu vs vampire', NULL),
(68, 'phim ma', '', 'phim ma', NULL),
(69, 'ông tôi là cương thi', '', 'ong toi la cuong thi', NULL),
(70, 'cương thi', '', 'cuong thi', NULL),
(71, 'Cuộc Đua Tuyệt Chủng', 'Phim nói về hàng loạt các nghiên cứu bí mật nhằm ngăn chặn sự tuyệt chủng của các loài động vật quý hiếm. Phim có sự tham gia của các diễn viên như Elon Musk, Joel Sartore, Louie Psihoyos...', 'Cuoc Dua Tuyet Chung', ''),
(73, 'CHIẾN TRANH GIỮA CÁC VÌ SAO 7: THẦN LỰC THỨC TỈNH', 'Phim lấy bối cảnh 30 năm sau sự kiện của Star Wars phần IV – Return of the Jedi (Sự trở lại của Jedi). Bộ phim sẽ theo chân các nhân vật quen thuộc như Luke, Han Solo, Công chúa Leia… đến một hành tinh lạ với mục đích thu thập mẫu vật. ', 'CHIEN TRANH GIUA CAC VI SAO 7: THAN LUC THUC TINH', ''),
(74, 'Người về từ cõi chết', 'The Revenant dựa trên câu chuyện có thật, phim kể về người thợ săn Hugh Glass (Leonardo Dicaprio thủ vai). Sau một trận chiến đẫm máu với những người Mỹ bản địa, Hugh bị thương và bị đồng đội tàn nhẫn bỏ lại trong khu núi tuyết giá rét. Từ đó, Hugh Glass phải làm tất cả mọi thứ để có thể tồn tại giữa cái lạnh tàn bạo, những động vật ăn thịt và chiến tranh với những bộ lạc nơi vùng núi hoang vu. ', 'Nguoi ve tu coi chet', ''),
(75, 'The Revenant 2015', '', 'The Revenant 2015', NULL),
(76, 'The Revenant VietSub', '', 'The Revenant VietSub', NULL),
(77, 'The Revenant Thuyết minh', '', 'The Revenant Thuyet minh', NULL),
(78, 'The Revenant full HD', '', 'The Revenant full HD', NULL),
(79, 'The Revenant bản đẹp', '', 'The Revenant ban dep', NULL),
(80, 'The Revenant trọn bộ', '', 'The Revenant tron bo', NULL),
(81, 'The Revenant phụ đề', '', 'The Revenant phu de', NULL),
(82, 'Mật vụ KINGSMAN', 'Phim Mật vụ Kingsman kể về một tổ chức điệp viên cực kỳ bí mật trong quá trình tuyển mộ Eggs một đứa trẻ đường phố không có học thức gì nhưng cực thông minh và có tố chất trở thành một điệp viên công nghệ cao', 'Mat vu KINGSMAN', ''),
(85, 'Phim', '', 'Phim', ''),
(86, 'Diễn viên', '', 'Dien vien', ''),
(87, 'Tin tức khác', '', 'Tin tuc khac', ''),
(88, 'Lâm Tâm Như đáp máy bay đi thăm Hoắc Kiến Hoa ngay sau khi công khai tình cảm', 'Xuất hiện tại s&acirc;n bay tr&ecirc;n đường đến Thanh Đảo (Trung Quốc), nữ diễn vi&ecirc;n 40 tuổi kh&aacute; ngượng ng&ugrave;ng khi bị hỏi chuyện lặn lội đường xa đến thăm Hoắc Kiến Hoa.\r\n\r\nSina đưa tin, chiều 21/5, L&acirc;m T&acirc;m Như xuất hiện tại s&acirc;n bay đ&aacute;p chuyến từ Đ&agrave;i Loan đến Thanh', 'Lam Tam Nhu dap may bay di tham Hoac Kien Hoa ngay sau khi cong khai tinh cam', ''),
(89, 'lâm tâm như', '', 'lam tam nhu', NULL),
(90, 'hoắc kiến hoa', '', 'hoac kien hoa', NULL),
(91, 'Dị nhân: Khải huyền', 'X-Men: Apocalypse là bộ phim siêu anh hùng dựa trên X-Men, những nhân vật xuất hiện trong Marvel Comics. Bộ phim là phần tiếp theo của X-Men: Days of Future Past và là phần thứ 9 trong loạt phim X-Men.', 'Di nhan: Khai huyen', ''),
(92, 'x-men', '', 'x-men', NULL),
(93, 'dị nhân', '', 'di nhan', NULL),
(94, 'Apocalypse', '', 'Apocalypse', NULL),
(95, 'Days of Future Past', '', 'Days of Future Past', NULL),
(96, 'kỳ án nhà thanh', '', 'ky an nha thanh', NULL),
(97, 'ky an nha thanh tap 1', '', 'ky an nha thanh tap 1', NULL),
(98, 'ky an nha thanh 2', '', 'ky an nha thanh 2', NULL),
(99, 'Naruto Shippuuden', 'Sau khi huấn luyện 2 năm rưỡi với Jiraiya, Naruto trở về làng Lá, đoàn tụ với những người bạn cậu đã chia tay, và lập lại Nhóm 7, giờ được gọi là Nhóm Kakashi, với Sai thế chỗ Sasuke. Tất cả những người bạn của Naruto đều đã trưởng thành và thăng cấp.', 'Naruto Shippuuden', ''),
(100, 'naruto', '', 'naruto', NULL),
(101, 'Naruto Shippuuden', '', 'Naruto Shippuuden', NULL),
(102, 'Uzumaki Naruto', '', 'Uzumaki Naruto', NULL),
(103, 'Phim kinh dị', 'Phim kinh dị', 'kinh di, phim kinh di', ''),
(104, 'Phim ma kinh dị và tuyển tập những phim ma hay và mới nhất ', 'Xem những bộ phim kinh di, phim ma hay nhất và mới nhất năm 2016 trên thế giới với những tình tiết rùng rợn và hấp dẫn nhất hiện nay.', 'kinh di, phim kinh di, phim ma, ', ''),
(105, 'Phim hành động hay, phim hành động mỹ mới hot và hấp dẫn nhất hiện nay', 'Phim hanh dong - xem những tuyển tập phim hành động hay và mới hấp dẫn nhất năm 2016  với chất lượng HD được cập nhật liên tục', 'phim hanh dong, phim hành động, phim hanh dong my', ''),
(106, 'Xem phim phiêu lưu hay và phim phiêu lưu mới nhất, phim phieu luu hot nhất ', 'Phim phieu luu - Tuyển tập những bộ phim phiêu lưu hay và mới nhất năm 2016 được cập nhật liên tục chất lượng HD ', 'phim phieu luu, phim phiêu lưu, ', ''),
(107, 'Phim ma kinh dị và tuyển tập những phim ma hay và mới nhất', 'Xem những bộ phim kinh di, phim ma hay nhất và mới nhất năm 2016 trên thế giới với những tình tiết rùng rợn và hấp dẫn nhất hiện nay.', 'kinh di, phim kinh di, phim ma,', ''),
(108, 'Phim chiến tranh mới, hot nhất năm 2016, phim chien tranh hay nhat', 'Xem những bộ phim chiến tranh mới và hot nhất năm 2016 với những bộ phim chien tranh chất lượng HD được cập nhật liên tục', 'phim chien tranh, phim chiến tranh', ''),
(109, 'Xem phim hài hước, xem phim hài hước mới và hay nhất 2016', 'Phim hai huoc - tuyển tập những bộ phim hài hước miễn phí hay và mới nhất năm 2016 với chất lượng HD được cập nhật liên tục', 'phim hài hước, phim hai huoc', ''),
(110, 'Phim cổ trang, phim co trang kiem hiep hay hot nhất 2016', 'Xem những bộ phim cổ trang, phim co trang kiem hiep, phim kiếm hiệp được tuyển chọn với nội dung hấp dẫn và chất lượng HD miễn phí', 'phim co trang, phim cổ trang', ''),
(111, 'Xem phim khoa học viễn tưởng, phim viễn tưởng hay và hot nhất', 'Tuyển tập những bộ phim viễn tưởng và phim khoa học viễn tưởng hay và mới nhất năm 2016 được cập nhật liên tục với chất lượng HD', 'phim khoa hoc, phim vien tuong, phim viễn tưởng, phim khoa học', ''),
(112, 'Phim tâm lý hay, phim tình cảm hot và phim tâm lý tình cảm nóng bỏng nhất', 'Xem phim tâm ly tình cảm, phim tam ly, phim tinh cam với những bộ phim được chọn lọc và mới nhất 2016 chất lượng HD được xem miễn phí', 'phim tam ly, phim tinh cam, phim tam ly tinh cam', ''),
(113, 'Phim hình sự mới nhất, phim hình sự hay nhất và chọn lọc 2016', 'Xem phim hình sự mới nhất miễn phí, phim hình sự hay nhất năm 2016 được cập nhật liên tục với chất lượng HD', 'phim hình sự, phim hinh su', ''),
(114, 'Phim hoạt hình hay và hot nhất, phim hoat hinh chọn lọc mới nhất', 'Xem phim hoạt hình hay, xem phim hoạt hình mới nhất và miễn phí năm 2016 được cập nhật liên tục với chất lượng HD nét nhất', 'phim hoat hinh, phim hoạt hình', ''),
(115, 'Xem phim tình cảm lãng mạn mới và hay nhất, phim tinh cam moi nhat', 'Xem phim tình cảm lãng mạn mới nhất và phim tinh càm hàn quốc hay nhất được cập nhật năm 2016 với chất lượng HD ', 'phim tinh cam, phim tình cảm', ''),
(116, 'Phim gia đình hay hot nhất, phim gia dinh HD mới nhất năm 2016', 'Xem những bộ phim về gia đình, phim gia dinh hay nhất chất lượng. Những bộ phim lẻ và phim bộ được cập nhật thường xuyên và xem miễn phí', 'phim gia dinh, phim gia đình', ''),
(117, 'Phim gia đình hay hot nhất, phim gia dinh HD mới nhất năm 2016', 'Xem những bộ phim về gia đình, phim gia dinh hay nhất chất lượng. Những bộ phim lẻ và phim bộ được cập nhật thường xuyên và xem miễn phí', 'phim gia dinh, phim gia đình', ''),
(118, 'Phim ma kinh dị và tuyển tập những phim ma hay và mới nhất', 'Xem những bộ phim kinh di, phim ma hay nhất và mới nhất năm 2016 trên thế giới với những tình tiết rùng rợn và hấp dẫn nhất hiện nay.', 'kinh di, phim kinh di, phim ma,', ''),
(119, 'Phim chiến tranh mới, hot nhất năm 2016, phim chien tranh hay nhat', 'Xem những bộ phim chiến tranh mới và hot nhất năm 2016 với những bộ phim chien tranh chất lượng HD được cập nhật liên tục', 'phim chien tranh, phim chiến tranh', ''),
(120, 'Xem phim hài hước, xem phim hài hước mới và hay nhất 2016', 'Phim hai huoc - tuyển tập những bộ phim hài hước miễn phí hay và mới nhất năm 2016 với chất lượng HD được cập nhật liên tục', 'phim hài hước, phim hai huoc', ''),
(121, 'Phim cổ trang, phim co trang kiem hiep hay hot nhất 2016', 'Xem những bộ phim cổ trang, phim co trang kiem hiep, phim kiếm hiệp được tuyển chọn với nội dung hấp dẫn và chất lượng HD miễn phí', 'phim co trang, phim cổ trang', ''),
(122, 'Xem phim khoa học viễn tưởng, phim viễn tưởng hay và hot nhất', 'Tuyển tập những bộ phim viễn tưởng và phim khoa học viễn tưởng hay và mới nhất năm 2016 được cập nhật liên tục với chất lượng HD', 'phim khoa hoc, phim vien tuong, phim viễn tưởng, phim khoa học', ''),
(123, 'Phim hành động hay, phim hành động mỹ mới hot và hấp dẫn nhất hiện nay', 'Phim hanh dong - xem những tuyển tập phim hành động hay và mới hấp dẫn nhất năm 2016  với chất lượng HD được cập nhật liên tục', 'phim hanh dong, phim hành động, phim hanh dong my', ''),
(124, 'Phim tâm lý hay, phim tình cảm hot và phim tâm lý tình cảm nóng bỏng nhất', 'Xem phim tâm ly tình cảm, phim tam ly, phim tinh cam với những bộ phim được chọn lọc và mới nhất 2016 chất lượng HD được xem miễn phí', 'phim tam ly, phim tinh cam, phim tam ly tinh cam', ''),
(125, 'Phim hình sự mới nhất, phim hình sự hay nhất và chọn lọc 2016', 'Xem phim hình sự mới nhất miễn phí, phim hình sự hay nhất năm 2016 được cập nhật liên tục với chất lượng HD', 'phim hình sự, phim hinh su', ''),
(126, 'Phim hoạt hình hay và hot nhất, phim hoat hinh chọn lọc mới nhất', 'Xem phim hoạt hình hay, xem phim hoạt hình mới nhất và miễn phí năm 2016 được cập nhật liên tục với chất lượng HD nét nhất', 'phim hoat hinh, phim hoạt hình', ''),
(127, 'Xem phim tình cảm lãng mạn mới và hay nhất, phim tinh cam moi nhat', 'Xem phim tình cảm lãng mạn mới nhất và phim tinh càm hàn quốc hay nhất được cập nhật năm 2016 với chất lượng HD', 'phim tinh cam, phim tình cảm', ''),
(128, 'Xem phim phiêu lưu hay và phim phiêu lưu mới nhất, phim phieu luu hot nhất', 'Phim phieu luu - Tuyển tập những bộ phim phiêu lưu hay và mới nhất năm 2016 được cập nhật liên tục chất lượng HD', 'phim phieu luu, phim phiêu lưu,', ''),
(129, 'a', 'aaâ', 'a', ''),
(130, 'b', 'b', 'b', ''),
(131, 'c', 'c', 'c', ''),
(132, 'd', 'd', 'd', ''),
(133, 'e', 'e', 'e', ''),
(134, 'f', 'f', 'f', ''),
(135, 'Người hùng tia chớp test', 'Nội dugn về người hùng tia', 'Nguoi hung tia chop test', ''),
(136, 'Phim hành động hay, phim hành động mỹ mới hot và hấp dẫn nhất hiện nay', 'Phim hanh dong - xem những tuyển tập phim hành động hay và mới hấp dẫn nhất năm 2016  với chất lượng HD được cập nhật liên tục', 'phim hanh dong, phim hành động, phim hanh dong my', ''),
(137, 'Phim hành động hay, phim hành động mỹ mới hot và hấp dẫn nhất hiện nay', 'Phim hanh dong - xem những tuyển tập phim hành động hay và mới hấp dẫn nhất năm 2016  với chất lượng HD được cập nhật liên tục', 'phim hanh dong, phim hành động, phim hanh dong my', ''),
(142, 'Người hùng tia chớp (PHẦN 2)', 'Phim tập trung vào khoa học Barry Allen, người trở thành siêu anh hùng với sức mạnh và tốc độ đáng kinh ngạc sau khi bị sét đánh do vụ nổ máy gia tốc Harrison Wells.', 'Nguoi hung tia chop (PHAN 2)', ''),
(145, 'fdhfdsh', 'dasgdg', 'safA', 'ASFaf');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL,
  `sys_id` bigint(20) DEFAULT NULL,
  `slug` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(32) DEFAULT NULL,
  `priority` int(8) DEFAULT '0',
  `keywords` text,
  `count` int(11) DEFAULT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `sys_id`, `slug`, `type`, `name`, `description`, `priority`, `keywords`, `count`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 2, 'action-movies', '1', 'action movies', '', 0, 'action movies action-movies', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(5, 19, 'the-flash', '1', 'The Flash', NULL, 0, 'the flash the-flash', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(6, 20, 'the-flash-season-1', '1', 'The Flash Season 1', NULL, 0, 'the flash season 1 the-flash-season-1', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(7, 21, 'tv-series', '1', 'TV Series', NULL, 0, 'tv series tv-series', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(8, 24, 'marvel', '1', 'Marvel', NULL, 0, 'marvel marvel', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(9, 25, 'age-of-ultron', '1', 'Age Of Ultron', NULL, 0, 'age of ultron age-of-ultron', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(10, 26, 'avengers', '1', 'Avengers', NULL, 0, 'avengers avengers', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(11, 27, 'avengers-2015', '1', 'Avengers 2015', NULL, 0, 'avengers 2015 avengers-2015', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(12, 28, 'ciname-movies', '1', 'ciname movies', NULL, 0, 'ciname movies ciname-movies', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(13, 29, 'thriller', '1', 'thriller', NULL, 0, 'thriller thriller', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(14, 30, 'fast-and-furious-7', '1', 'Fast and Furious 7', NULL, 0, 'fast and furious 7 fast-and-furious-7', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(15, 31, 'fast-7', '1', 'Fast 7', NULL, 0, 'fast 7 fast-7', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(16, 34, 'kyoto-kenshin', '1', 'Kyoto Kenshin', NULL, 0, 'kyoto kenshin kyoto-kenshin', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(17, 35, 'flying-swords-of-dragon-gate', '1', 'Flying Swords Of Dragon Gate', NULL, 0, 'flying swords of dragon gate flying-swords-of-dragon-gate', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(18, 42, 'cinema-movie', '1', 'cinema movie', NULL, 0, 'cinema movie cinema-movie', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(19, 52, 'one-piece', '1', 'One Piece', NULL, 0, 'one piece one-piece', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(20, 57, 'fantasy', '1', 'fantasy', NULL, 0, 'fantasy fantasy', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(21, 58, 'drama', '1', 'drama', NULL, 0, 'drama drama', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(22, 61, 'survivor-2015', '1', 'Survivor 2015', NULL, 0, 'survivor 2015 survivor-2015', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(23, 63, 'jurassic', '1', 'Jurassic', NULL, 0, 'jurassic jurassic', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(24, 64, 'jurassic-park-3', '1', 'Jurassic Park 3', NULL, 0, 'jurassic park 3 jurassic-park-3', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(25, 65, 'jurassic-2001', '1', 'Jurassic 2001', NULL, 0, 'jurassic 2001 jurassic-2001', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(26, 67, 'sifu-vs-vampire', '1', 'sifu vs vampire', NULL, 0, 'sifu vs vampire sifu-vs-vampire', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(27, 68, 'phim-ma', '1', 'phim ma', NULL, 0, 'phim ma phim-ma', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(28, 69, 'ong-toi-la-cuong-thi', '1', 'ông tôi là cương thi', NULL, 0, 'ong toi la cuong thi ong-toi-la-cuong-thi', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(29, 70, 'cuong-thi', '1', 'cương thi', NULL, 0, 'cuong thi cuong-thi', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(35, 80, 'the-revenant-tron-bo', '1', 'The Revenant trọn bộ', NULL, 0, 'the revenant tron bo the-revenant-tron-bo', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(37, 89, 'lam-tam-nhu', '2', 'lâm tâm như', NULL, 0, 'lam tam nhu lam-tam-nhu', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(38, 90, 'hoac-kien-hoa', '2', 'hoắc kiến hoa', NULL, 0, 'hoac kien hoa hoac-kien-hoa', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(41, 94, 'apocalypse', '1', 'Apocalypse', NULL, 0, 'apocalypse apocalypse', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(42, 95, 'days-of-future-past', '1', 'Days of Future Past', NULL, 0, 'days of future past days-of-future-past', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(43, 96, 'ky-an-nha-thanh', '1', 'kỳ án nhà thanh', NULL, 0, 'ky an nha thanh ky-an-nha-thanh', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(44, 97, 'ky-an-nha-thanh-tap-1', '1', 'ky an nha thanh tap 1', NULL, 0, 'ky an nha thanh tap 1 ky-an-nha-thanh-tap-1', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(45, 98, 'ky-an-nha-thanh-2', '1', 'ky an nha thanh 2', NULL, 0, 'ky an nha thanh 2 ky-an-nha-thanh-2', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(46, 100, 'naruto', '1', 'naruto', NULL, 0, 'naruto naruto', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(47, 101, 'naruto-shippuuden', '1', 'Naruto Shippuuden', NULL, 0, 'naruto shippuuden naruto-shippuuden', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(48, 102, 'uzumaki-naruto', '1', 'Uzumaki Naruto', NULL, 0, 'uzumaki naruto uzumaki-naruto', 0, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tag_objects`
--

CREATE TABLE `tag_objects` (
  `object_id` int(20) NOT NULL,
  `tag_id` int(20) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 : film, 1 : tin tuc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag_objects`
--

INSERT INTO `tag_objects` (`object_id`, `tag_id`, `type`) VALUES
(1, 5, 1),
(1, 6, 1),
(1, 7, 1),
(2, 8, 1),
(2, 9, 1),
(2, 10, 1),
(2, 11, 1),
(3, 12, 1),
(3, 13, 1),
(4, 14, 1),
(4, 15, 1),
(6, 16, 1),
(7, 17, 1),
(11, 18, 1),
(17, 26, 1),
(17, 27, 1),
(17, 28, 1),
(17, 29, 1),
(19, 19, 1),
(22, 43, 1),
(22, 44, 1),
(22, 45, 1),
(23, 6, 1),
(23, 7, 1),
(23, 8, 1),
(25, 1, 1),
(25, 22, 1),
(26, 23, 1),
(26, 24, 1),
(26, 25, 1),
(27, 5, 1),
(27, 7, 1),
(30, 35, 1),
(32, 39, 1),
(32, 40, 1),
(32, 41, 1),
(32, 42, 1),
(33, 46, 1),
(33, 47, 1),
(33, 48, 1),
(37, 6, 1),
(39, 7, 1),
(40, 7, 1),
(41, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `pass` varchar(64) DEFAULT '',
  `nicename` varchar(50) DEFAULT '',
  `avatar` varchar(300) DEFAULT NULL,
  `registered` datetime DEFAULT '0000-00-00 00:00:00',
  `activation_key` varchar(60) DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) DEFAULT '',
  `salt` varchar(10) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'administrator',
  `type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `nicename`, `avatar`, `registered`, `activation_key`, `status`, `display_name`, `salt`, `role`, `type`) VALUES
(1, 'admin', 'chuongact@gmail.com', 'f4190e5399b3bd2b5aca2f28c009916b6228072e', NULL, 'upload/image//no_image.png', '0000-00-00 00:00:00', NULL, 1, 'admin', '8e0cd0d48', 'administrator', NULL),
(5, 'ngocphan', 'ngocphandang@gmail.com', '025a8aa517c35bddc1003076334324f81c645eb5', NULL, 'upload/image//no_image.png', '0000-00-00 00:00:00', NULL, 1, 'Phan Ngọc', 'b416939fd', 'administrator', NULL),
(6, 'sonlh.ga2603@gmail.com', 'sonlh.ga2603@gmail.com', '', NULL, 'https://graph.facebook.com/253253641696904/picture?type=large', '0000-00-00 00:00:00', NULL, 0, 'Sơn Lê', NULL, 'member', 'fbconnect'),
(7, 'codonbg34@gmail.com', 'codonbg34@gmail.com', '', NULL, 'https://graph.facebook.com/1741728666107932/picture?type=large', '0000-00-00 00:00:00', NULL, 0, 'Tu Nguyen', NULL, 'member', 'fbconnect'),
(8, '509828709207890@facebook.com', '509828709207890@facebook.com', '', NULL, 'https://graph.facebook.com/509828709207890/picture?type=large', '0000-00-00 00:00:00', NULL, 0, 'Chi Linh Bùi', NULL, 'member', 'fbconnect');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Andy', 'admin@gmail.com', '$2y$10$/vF4N2AKvZub7jnhWpTaWeBoejGkbad5DOx9IRfBTvKqWkzgPuTX6', 1, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `role_description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crew`
--
ALTER TABLE `crew`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `cinema` (`cinema`),
  ADD KEY `sub` (`imdb`),
  ADD KEY `id` (`id`,`type`),
  ADD KEY `expired` (`expired`),
  ADD KEY `created` (`created_at`);

--
-- Indexes for table `film_category`
--
ALTER TABLE `film_category`
  ADD PRIMARY KEY (`film_id`,`category_id`);

--
-- Indexes for table `film_country`
--
ALTER TABLE `film_country`
  ADD PRIMARY KEY (`film_id`,`country_id`);

--
-- Indexes for table `film_crew`
--
ALTER TABLE `film_crew`
  ADD PRIMARY KEY (`film_id`,`crew_id`);

--
-- Indexes for table `film_episode`
--
ALTER TABLE `film_episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_id` (`film_id`),
  ADD KEY `server_id` (`server_id`);

--
-- Indexes for table `film_views`
--
ALTER TABLE `film_views`
  ADD PRIMARY KEY (`film_id`,`date`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`name`,`type`) USING BTREE;

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sys_id` (`sys_id`),
  ADD KEY `post_name` (`slug`) USING BTREE,
  ADD KEY `type_status_date` (`type`,`status`,`date`,`id`) USING BTREE,
  ADD KEY `post_author` (`author`) USING BTREE;

--
-- Indexes for table `posts_category`
--
ALTER TABLE `posts_category`
  ADD PRIMARY KEY (`posts_id`,`category_id`);

--
-- Indexes for table `posts_metadata`
--
ALTER TABLE `posts_metadata`
  ADD PRIMARY KEY (`posts_id`,`key`);

--
-- Indexes for table `posts_tag`
--
ALTER TABLE `posts_tag`
  ADD PRIMARY KEY (`tag_id`,`posts_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`name`) USING BTREE;

--
-- Indexes for table `system_id`
--
ALTER TABLE `system_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_metadata`
--
ALTER TABLE `system_metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_objects`
--
ALTER TABLE `tag_objects`
  ADD PRIMARY KEY (`object_id`,`tag_id`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_login_key` (`name`),
  ADD KEY `user_nicename` (`nicename`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `crew`
--
ALTER TABLE `crew`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `film_episode`
--
ALTER TABLE `film_episode`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `posts_metadata`
--
ALTER TABLE `posts_metadata`
  MODIFY `posts_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `system_id`
--
ALTER TABLE `system_id`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `system_metadata`
--
ALTER TABLE `system_metadata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
