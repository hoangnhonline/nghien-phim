-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 07, 2016 at 05:16 PM
-- Server version: 5.6.30-1+deb.sury.org~wily+2
-- PHP Version: 7.0.9-1+deb.sury.org~wily+1

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
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `cate_id` tinyint(4) NOT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `created_at`, `updated_at`, `created_user`, `updated_user`, `status`, `is_hot`, `display_order`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`) VALUES
(1, 'Cuộc chiến khốc liệt ở nhóm di động 4 triệu tại Việt Nam', 'cuoc-chien-khoc-liet-o-nhom-di-dong-4-trieu-tai-viet-nam', 'Cuoc chien khoc liet o nhom di dong 4 trieu tai Viet Nam', 'Oppo, Samsung là hai tên tuổi thống trị phân khúc này, trong khi trước đó vài năm, Nokia và các tên tuổi lớn chiếm giữ ngôi vị.', '2016/07/24/oppo-vs-samsung-1469342801.JPG', 1, '<p>Trong khi d&ograve;ng cao cấp dần trở th&agrave;nh cuộc đua song m&atilde; giữa Samsung v&agrave; Apple, ph&acirc;n kh&uacute;c gi&aacute; thấp ng&agrave;y c&agrave;ng trở n&ecirc;n khốc liệt hơn. Smartphone ng&agrave;y c&agrave;ng phổ biến, gi&aacute; thiết bị ng&agrave;y c&agrave;ng rẻ hơn, theo đ&oacute; cấu h&igrave;nh, thiết kế được c&aacute;c nh&agrave; sản xuất ch&uacute; trọng.</p>\r\n\r\n<p>Ở mức dưới 4 triệu, smartphone ng&agrave;y c&agrave;ng phong ph&uacute;, thay thế dần điện thoại cơ bản, những t&ecirc;n tuổi mới xuất hiện nhắm v&agrave;o ph&acirc;n kh&uacute;c n&agrave;y, đe dọa thế qu&acirc;n b&igrave;nh nhiều năm qua.</p>\r\n\r\n<h3>&Ocirc;ng lớn teo t&oacute;p, t&ecirc;n tuổi mới l&ecirc;n ng&ocirc;i</h3>\r\n\r\n<p>B&aacute;o c&aacute;o của IDC cho thấy, chỉ t&iacute;nh tới qu&yacute; II/2015, 51% điện thoại b&aacute;n ra tại Việt Nam l&agrave; smartphone, tương đương khoảng 3,3 triệu chiếc với gi&aacute; trị l&ecirc;n đến 607 triệu USD, v&agrave; con số c&oacute; dấu hiệu tăng so với thời điểm trước đ&oacute;.</p>\r\n\r\n<p>Thống k&ecirc; từ FPT Shop, trong năm 2015, tỷ lệ b&aacute;n ra giữa điện thoại cơ bản v&agrave; smartphone tại chuỗi cửa h&agrave;ng n&agrave;y l&agrave; 4:6, trong đ&oacute; c&aacute;c d&ograve;ng smartphone b&aacute;n chạy c&oacute; 7/10 sản phẩm thuộc ph&acirc;n kh&uacute;c từ 3-6 triệu đồng.</p>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Cuoc chien khoc liet o nhom di dong 4 trieu tai Viet Nam hinh anh 1" src="http://img.v3.news.zdn.vn/w660/Uploaded/wohasku/2016_07_21/oppo_in_vietnam.JPG" style="height:478px; width:660px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Oppo tăng trưởng mạnh từ khi v&agrave;o Việt Nam. Ảnh:&nbsp;<em><strong>Duy T&iacute;n.</strong></em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Do đ&oacute;, chỉ trong v&ograve;ng khoảng 2 năm, h&agrave;ng loạt t&ecirc;n tuổi tiến v&agrave;o ph&acirc;n kh&uacute;c n&agrave;y. Khoảng 1 năm trước, thị trường gi&aacute; rẻ khoảng dưới 4 triệu l&agrave; s&acirc;n chơi ch&iacute;nh của Samsung với c&aacute;c sản phẩm như Galaxy Grand Prime, Core Prime, Galaxy J1 c&ugrave;ng Microsoft với Lumia 430, 530.</p>\r\n\r\n<p>Theo b&aacute;o c&aacute;o của IDC, thời điểm năm 2014, Samsung v&agrave; Microsoft chiếm lần lượt 30,2% v&agrave; 26,4% thị phần ph&acirc;n kh&uacute;c n&agrave;y. Phần c&ograve;n lại được chia đều cho h&agrave;ng chục t&ecirc;n tuổi, đ&aacute;ng kể nhất l&agrave; Oppo, Asus vừa bước v&agrave;o thị trường, HTC, Mobiistar, Sony đồng hạng, nhưng cũng chỉ được v&agrave;i phần trăm.</p>\r\n\r\n<p>Thế nhưng, b&aacute;o c&aacute;o mới nhất từ GfK v&agrave;o th&aacute;ng 5/2016 cho thấy những thay đổi mạnh mẽ của ph&acirc;n kh&uacute;c n&agrave;y. Samsung c&oacute; bước tăng trưởng nhẹ l&ecirc;n 34,7%, đ&aacute;ng ch&uacute; &yacute;, Microsoft sụt giảm nghi&ecirc;m trọng, chỉ c&ograve;n 4,7%.</p>\r\n\r\n<p>Trong cơn ng&atilde; ngựa của c&aacute;c đại gia, chứng kiến c&uacute; vươn l&ecirc;n ngoạn mục của Oppo, từ 7% của năm 2014, thương hiệu n&agrave;y đ&atilde; chiếm đến 21,8% thị phần dưới 4 triệu trong th&aacute;ng 5/2016.</p>\r\n\r\n<p>Trong buổi gặp gỡ b&aacute;o ch&iacute; tại TP HCM, đại diện Oppo cho biết, khoảng cuối 2014, họ đ&atilde; may mắn gi&agrave;nh được 25% thị phần nh&oacute;m 2-4 triệu đồng với phi&ecirc;n bản Neo. Thế hệ Neo 3 ra mắt một năm sau đ&oacute; đạt 400.000 m&aacute;y (gấp 4 lần bản đầu). D&ograve;ng di động n&agrave;y l&agrave; &ldquo;c&ocirc;ng thần&quot; gi&uacute;p họ tăng trưởng, n&acirc;ng thị phần 2015 l&ecirc;n tr&ecirc;n 15%, trong đ&oacute; nh&oacute;m 2-4 triệu họ chiếm tới 41,9% to&agrave;n thị trường, 600.000 bản Neo 5 đ&atilde; đến tay người d&ugrave;ng, theo GfK.</p>\r\n\r\n<p>N&oacute;i với&nbsp;<em>Zing.vn</em>, anh Trần Nguy&ecirc;n Trực, ng&agrave;nh h&agrave;ng điện thoại của Thế Giới Di Động cho biết, s&acirc;n chơi ch&iacute;nh trong nh&oacute;m n&agrave;y l&agrave; cuộc đối đầu song m&atilde;: Oppo v&agrave; Samsung. Kh&ocirc;ng chỉ trong mức 4 triệu, hầu hết c&aacute;c model của hai t&ecirc;n tuổi n&agrave;y cũng chiếm giữ c&aacute;c vị tr&iacute; b&aacute;n chạy nhất to&agrave;n thị trường. Ng&ocirc;i sao trong nh&oacute;m n&agrave;y l&agrave; Oppo Neo 5, Neo 7, Galaxy J5, A5. Trong đ&oacute;, c&aacute;c vị tr&iacute; đầu bảng li&ecirc;n tục được thay phi&ecirc;n.</p>\r\n\r\n<p>&ldquo;Ch&iacute;nh những t&ecirc;n tuổi mới thay đổi cuộc chơi, khiến thị trường chuyển biến mạnh hơn&rdquo;, anh Ng&ocirc; Duy B&aacute;, quản l&yacute; một cửa h&agrave;ng tr&ecirc;n đường 3/2, quận 10, TP HCM cho biết. C&aacute;c thiết kế từ Oppo, Asus, Xiaomi hay cuộc chạy đua về cấu h&igrave;nh đ&atilde; khiến Samsung, Sony, LG phải cật lực thay đổi.</p>\r\n\r\n<p>Chỉ trong v&ograve;ng nửa đầu năm 2016, h&agrave;ng loạt t&ecirc;n tuổi vừa quen vừa lạ tiếp tục gia nhập thị trường Việt Nam như Flash, Gionee, Intex, Coolpad&hellip; Tất cả khiến cho ph&acirc;n kh&uacute;c n&agrave;y trở n&ecirc;n s&ocirc;i động.</p>\r\n\r\n<h3>Quảng c&aacute;o mạnh, đ&aacute;nh v&agrave;o kh&aacute;ch h&agrave;ng mới</h3>\r\n\r\n<p>Kh&ocirc;ng kh&oacute; để thấy, nh&oacute;m điện thoại dưới 4 triệu chủ yếu được ưa chuộng bởi những người d&ugrave;ng mới, lần đầu biết đến smartphone, để phục vụ c&aacute;c nhu cầu giải tr&iacute;.</p>\r\n\r\n<p>Theo anh Trần Nguy&ecirc;n Trực, đặc điểm chung người d&ugrave;ng nh&oacute;m n&agrave;y l&agrave; thu nhập ở mức trung b&igrave;nh, hầu hết l&agrave; vừa chuyển đổi từ điện thoại phổ th&ocirc;ng qua, t&igrave;m kiếm gi&aacute; trị về cấu h&igrave;nh, t&iacute;nh năng v&agrave; gi&aacute; tốt. Họ l&agrave; sinh vi&ecirc;n, học sinh, c&ocirc;ng nh&acirc;n, người d&ugrave;ng trẻ. Do đ&oacute;, c&aacute;c nhu cầu được đ&aacute;p ứng ở mức cơ bản nhất, chưa đi s&acirc;u nhiều về t&iacute;nh năng.</p>\r\n\r\n<p>Trong khi đ&oacute;, anh Lạc Huy, đại diện hệ thống CellphoneS cho rằng &ldquo;đ&ocirc;ng người mua v&agrave; dễ b&aacute;n, c&aacute;c h&atilde;ng kh&ocirc;ng cần qu&aacute; đầu tư về thiết kế hay t&iacute;nh năng, miễn c&oacute; th&ocirc;ng số cao l&agrave; sẽ b&aacute;n được, do kh&aacute;ch h&agrave;ng ở ph&acirc;n kh&uacute;c n&agrave;y đ&ograve;i hỏi &iacute;t&rdquo;.</p>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Cuoc chien khoc liet o nhom di dong 4 trieu tai Viet Nam hinh anh 2" src="http://img.v3.news.zdn.vn/w660/Uploaded/wohasku/2016_07_21/oppo_vs_samsung.JPG" style="height:440px; width:660px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cuộc chiến mạnh v&igrave; gạo, bạo v&igrave; tiền trong chi ti&ecirc;u quảng c&aacute;o của Oppo v&agrave; Samsung. Ảnh:&nbsp;<strong><em>Khương Nha.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Tuy vậy, sức n&oacute;ng của thị trường khiến c&aacute;c h&atilde;ng đua chen nhau tăng độ hấp dẫn cho sản phẩm, nếu như 1-2 năm trước, điện thoại dưới 4 triệu được gắn với vỏ nhựa, thiết kế xấu, cấu h&igrave;nh vừa phải th&igrave; hiện tại, kh&ocirc;ng kh&oacute; t&igrave;m được những sản phẩm nguy&ecirc;n khối, kim loại, cấu h&igrave;nh cao v&agrave; nhiều t&iacute;nh năng như v&acirc;n tay, camera tốt vốn trước đ&acirc;y chỉ c&oacute; tr&ecirc;n d&ograve;ng cao cấp.</p>\r\n\r\n<p>Điều n&agrave;y dẫn đến việc người d&ugrave;ng &ldquo;bội thực&rdquo; c&aacute;c sản phẩm gi&aacute; rẻ, dễ dẫn đến t&igrave;nh trạng &ldquo;loay hoay&rdquo; khi mua thiết bị, nhất l&agrave; với nh&oacute;m người d&ugrave;ng đặc th&ugrave; kh&ocirc;ng r&agrave;nh rẽ về c&ocirc;ng nghệ.</p>\r\n\r\n<p>Do đ&oacute;, c&aacute;c nh&agrave; ph&acirc;n phối cho rằng chiến lược quảng c&aacute;o sẽ l&agrave; ch&igrave;a kh&oacute;a để thu h&uacute;t người d&ugrave;ng mới, h&atilde;ng n&agrave;o l&agrave;m tốt điều n&agrave;y th&igrave; đại l&yacute; sẽ b&aacute;n tốt, c&ograve;n kh&ocirc;ng chỉ c&oacute; thể b&aacute;n được sản phẩm trong thời gian ngắn.</p>\r\n\r\n<p>Theo nhiều nh&agrave; b&aacute;n lẻ, c&aacute;c chương tr&igrave;nh quảng c&aacute;o đang t&aacute;c động mạnh đến thị hiếu người d&ugrave;ng nh&oacute;m n&agrave;y. Nếu như trước đ&acirc;y, di động cao cấp được ch&uacute; &yacute; để quảng b&aacute;, th&igrave; hiện c&aacute;c video quảng c&aacute;o xuất hiện tr&ecirc;n truyền h&igrave;nh, mạng x&atilde; hội lại tập trung mạnh v&agrave;o nh&oacute;m thấp.</p>\r\n\r\n<p>Tuy vậy, quảng c&aacute;o cũng chỉ l&agrave; bước đầu để b&aacute;n được h&agrave;ng, đến cuối c&ugrave;ng, chất lượng sản phẩm vẫn l&agrave; yếu tố then chốt cho th&agrave;nh c&ocirc;ng của một thương hiệu, theo đại diện của FPT Shop, c&aacute;c h&atilde;ng n&ecirc;n &ldquo;cố gắng x&acirc;y dựng chuỗi gi&aacute; trị bền vững, đối t&aacute;c chiến lược d&agrave;i hạn hơn l&agrave; ch&uacute; trọng qu&aacute; nhiều v&agrave;o chi ph&iacute;, sản phẩm đảm bảo, ch&iacute;nh s&aacute;ch hậu m&atilde;i hợp l&yacute; v&agrave; tr&aacute;ch nhiệm&rdquo;.</p>\r\n\r\n<p>Theo c&aacute;c chuy&ecirc;n gia, thị trường di động Việt dự b&aacute;o sẽ tăng th&ecirc;m 20-35% so với 2015. Trong 5 th&aacute;ng đầu 2016, 5,8 triệu điện thoại đ&atilde; đến tay người d&ugrave;ng (1,2 triệu m&aacute;y/th&aacute;ng). Trong đ&oacute;, ph&acirc;n kh&uacute;c 2-4 triệu chiếm gần 40%, Oppo chiếm ⅔ thị phần. C&aacute;c nh&agrave; b&aacute;n lẻ dự đo&aacute;n, ph&acirc;n kh&uacute;c n&agrave;y tiếp tục l&agrave; m&agrave;n song đấu giữa Samsung, Oppo. D&ugrave; vậy, thị trường sẽ phức tạp hơn khi Asus, c&aacute;c t&ecirc;n tuổi mới gia nhập hay c&aacute;c nh&agrave; sản xuất lớn cũng đang dồn lực đ&aacute;nh chiếm.</p>\r\n', '2016-07-24 06:48:22', '2016-07-24 07:14:31', 0, 0, 1, 1, 0, '', '', '', ''),
(2, 'Cửa hàng di động xách tay nhỏ lẻ vẫn sống tốt', 'cua-hang-di-dong-xach-tay-nho-le-van-song-tot', 'Cua hang di dong xach tay nho le van song tot', 'Trước sự bành trướng của các hệ thống bán lẻ di động, nhiều cửa hàng kinh doanh điện thoại nhỏ lẻ theo hướng truyền thống khẳng định họ đang thích nghi tốt với thị trường.', '2016/07/24/cua-hang-di-dong-nho-le-ben-canh-cac-ong-lon-zing-1-1469342942.JPG', 1, '<p>Trong những năm trở lại đ&acirc;y, c&aacute;c chuỗi b&aacute;n lẻ di động tại Việt Nam b&agrave;nh trướng ở khắp mọi trận địa: từ c&aacute;c th&agrave;nh phố lớn đến c&aacute;c v&ugrave;ng n&ocirc;ng th&ocirc;n. Đ&acirc;y được cho l&agrave; một mối nguy lớn d&agrave;nh cho c&aacute;c cửa h&agrave;ng di động truyền thống.</p>\r\n\r\n<p>Theo c&aacute;c số liệu thống k&ecirc;, thị phần thiết bị b&aacute;n ra của c&aacute;c cửa h&agrave;ng nhỏ lẻ chỉ chiếm 25-30%, ri&ecirc;ng hệ thống Thế giới Di động chiếm 35-40%, c&ograve;n lại thuộc về c&aacute;c hệ thống kh&aacute;c. C&aacute;c chuỗi b&aacute;n lẻ dần thay thế c&aacute;c cửa h&agrave;ng di động nhỏ lẻ l&agrave; xu hướng tất yếu tại Việt Nam. Tuy nhi&ecirc;n, một số chủ cửa h&agrave;ng di động nhỏ lẻ cho biết họ đủ khả năng &quot;chống đỡ&quot; c&aacute;c hệ thống lớn.</p>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Cua hang di dong xach tay nho le van song tot hinh anh 1" src="http://img.v3.news.zdn.vn/w660/Uploaded/OFH_oazszstq/2016_07_07/cua_hang_di_dong_nho_le_ben_canh_cac_ong_lon_zing_1.JPG" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nhiều cửa h&agrave;ng nhỏ, lẻ vẫn c&oacute; nguồn thu ổn định trước sự mở rộng quy m&ocirc; của c&aacute;c hệ thống lớn.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Anh Ho&agrave;ng Anh Đức, chủ một cửa h&agrave;ng di động chuy&ecirc;n b&aacute;n iPhone x&aacute;ch tay tr&ecirc;n phố H&agrave;ng B&uacute;n, H&agrave; Nội cho biết, anh kh&ocirc;ng hề &ldquo;ngại&rdquo; chạm tr&aacute;n với chuỗi b&aacute;n lẻ: &ldquo;Từ xưa đến nay, người d&ugrave;ng Việt vẫn mua di động x&aacute;ch tay, đặc biệt l&agrave; iPhone. Mỗi hệ thống v&agrave; cửa h&agrave;ng đều c&oacute; ph&acirc;n kh&uacute;c kh&aacute;ch h&agrave;ng kh&aacute;c nhau&rdquo;. Ở c&aacute;c hệ thống lớn, kh&aacute;ch h&agrave;ng c&oacute; thu nhập cao sẵn s&agrave;ng chi ra để trải nghiệm dịch vụ tốt nhất. C&ograve;n ở c&aacute;c cửa h&agrave;ng x&aacute;ch tay, hầu hết người mua kh&aacute; am hiểu về sản phẩm cũng như t&igrave;m c&aacute;ch tiết kiệm chi ph&iacute;.</p>\r\n\r\n<p>Chung nhận định, anh Nguyễn Tiến Trọng - chủ cửa h&agrave;ng chuy&ecirc;n b&aacute;n smartphone Android x&aacute;ch tay tr&ecirc;n phố Trương Định, H&agrave; Nội cho biết: &ldquo;C&oacute; model mới ra mắt l&agrave; cửa h&agrave;ng nhập về. Đến khi n&agrave;o nghe ng&oacute;ng biết được ch&iacute;nh h&atilde;ng rục rịch ph&acirc;n phối l&agrave; dừng b&aacute;n. Ngo&agrave;i ra, smartphone cao cấp kh&oacute;a mạng Nhật hay Mỹ cũng rất được ưa chuộng do gi&aacute; th&agrave;nh rẻ hơn rất nhiều sản phẩm ch&iacute;nh h&atilde;ng&rdquo;.</p>\r\n\r\n<p>Anh Đức l&yacute; giải, trong khi hệ thống lớn cần đầu tư v&agrave;o mặt bằng ở những vị tr&iacute; tốt nhất, thiết kế cửa h&agrave;ng, đội ngũ nh&acirc;n vi&ecirc;n được đ&agrave;o tạo b&agrave;i bản th&igrave; cửa h&agrave;ng anh mọi thứ được tối giản nhất c&oacute; thể. Trung b&igrave;nh, một cửa h&agrave;ng thuộc hệ thống cần c&oacute; diện t&iacute;ch 100 m2, 10-20 nh&acirc;n vi&ecirc;n, chưa kể 2 gi&aacute;m s&aacute;t ca v&agrave; quản l&yacute; cửa h&agrave;ng. Mở cửa từ 8h s&aacute;ng đến 10h tối. C&ograve;n c&aacute;c cửa h&agrave;ng x&aacute;ch tay mọi thứ được tối giản nhằm tiết kiệm chi ph&iacute;. Cửa h&agrave;ng chỉ c&oacute; 4 nh&acirc;n vi&ecirc;n, diện t&iacute;ch 30 m2, ở những con phố hạng 2, hạng 3 với gi&aacute; thu&ecirc; rẻ hơn, mỗi người ki&ecirc;m nhiệm nhiều nhiệm vụ, thời gian l&agrave;m việc từ 10h30 đến 8h30&hellip;</p>\r\n\r\n<p>C&aacute;c hệ thống lớn phải đ&agrave;m ph&aacute;n với nh&agrave; ph&acirc;n phối của khu vực để nhập sản phẩm c&oacute; mức chiết khấu tốt trong một thời gian thương thảo kh&aacute; d&agrave;i th&igrave; c&aacute;c cửa h&agrave;ng nhỏ lẻ như anh sẵn s&agrave;ng &ldquo;hớt v&aacute;ng&rdquo; thị trường. Anh Đức kể: &ldquo;Ngay khi iPhone được b&aacute;n ra, cửa h&agrave;ng thu&ecirc; người hoặc trực tiếp sang Australia, Singapore hoặc Hong Kong để mang m&aacute;y về nhanh nhất c&oacute; thể. Tuần đầu ti&ecirc;n khi về, nhiều kh&aacute;ch h&agrave;ng sẵn s&agrave;ng chi ra cao hơn 15-20 triệu đồng để c&oacute; thể sở hữu m&aacute;y sớm. Như thế m&igrave;nh vừa l&agrave;m được thương hiệu, vừa tốc độ hơn nhiều c&aacute;c &ocirc;ng lớn. V&agrave; trong ti&ecirc;u ch&iacute; n&agrave;o đ&oacute;, m&igrave;nh đ&atilde; chiến thắng d&ugrave; thời gian ngắn&rdquo;.</p>\r\n\r\n<p>Về chất lượng sản phẩm, anh Đức nhận định: &ldquo;Ti&ecirc;u chuẩn đầu v&agrave;o của sản phẩm c&ocirc;ng nghệ của Việt Nam c&ograve;n chưa cao bằng c&aacute;c nước ch&acirc;u &Acirc;u như Anh, Ph&aacute;p, Đức hoặc khu vực Trung Đ&ocirc;ng&hellip;&quot;. Đ&acirc;y cũng l&agrave; l&yacute; do m&agrave; những người c&oacute; kinh nghiệm về smartphone thường chọn c&aacute;c sản phẩm x&aacute;ch tay ch&acirc;u &Acirc;u. Tuy nhi&ecirc;n, anh lưu &yacute;, người d&ugrave;ng tr&aacute;nh mua iPhone, iPad c&oacute; xuất xứ từ c&aacute;c nước Trung Đ&ocirc;ng v&igrave; khi b&aacute;n ch&iacute;nh thức tại đ&acirc;y, Apple bị ch&iacute;nh phủ nhiều nước trong khu vực y&ecirc;u cầu tắt c&aacute;c dịch vụ như iMessage v&agrave; Facetime.</p>\r\n\r\n<p>Trao đổi với Zing.vn, nh&acirc;n vi&ecirc;n của một hệ thống vừa b&aacute;n iPhone x&aacute;ch tay v&agrave; ch&iacute;nh h&atilde;ng tại H&agrave; Nội tiết lộ một thống k&ecirc; kh&aacute; bất ngờ: &ldquo;Cứ 10 m&aacute;y ch&iacute;nh h&atilde;ng b&aacute;n ra th&igrave; tỷ lệ trả bảo h&agrave;nh l&agrave; 5-6 m&aacute;y, trong khi m&aacute;y x&aacute;ch tay sửa chữa chỉ ở con số 3. Đ&acirc;y cũng l&agrave; l&yacute; do, iPhone ch&iacute;nh h&atilde;ng thay đổi ch&iacute;nh s&aacute;ch bảo h&agrave;nh. Những lỗi về pin, camera trước, sau, c&aacute;p, nguồn,... chỉ được sửa chữa m&agrave; kh&ocirc;ng được hưởng chế độ 1 đổi 1&rdquo;.</p>\r\n\r\n<p>Anh Nguyễn Xu&acirc;n Dũng sống tại quận Cầu Giấy (H&agrave; Nội) đang chuẩn bị mua iPhone 6S sau gần 3 năm sử dụng 5S. Anh cho biết: &ldquo;D&ugrave;ng iPhone từ thời 3GS, t&ocirc;i vẫn mua tại một cửa h&agrave;ng b&aacute;n m&aacute;y x&aacute;ch tay. Thiết bị hoạt động ổn định lại rẻ hơn m&aacute;y ch&iacute;nh h&atilde;ng c&ugrave;ng cấu h&igrave;nh gần 2 triệu đồng th&igrave; tại sao m&igrave;nh kh&ocirc;ng lựa chọn&rdquo;.</p>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Cua hang di dong xach tay nho le van song tot hinh anh 2" src="http://img.v3.news.zdn.vn/w660/Uploaded/OFH_oazszstq/2016_07_07/cua_hang_di_dong_tren_pho_thai_ha_zing.JPG" /><a href="http://news.zing.vn/cua-hang-di-dong-xach-tay-nho-le-van-song-tot-post663899.html#slideshow">Ph&oacute;ng to</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&aacute;c cửa h&agrave;ng tr&ecirc;n những tuyến phố b&aacute;n di động Th&aacute;i H&agrave; vẫn nhộn nhịp kh&aacute;ch mua.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Một l&yacute; do nữa khiến c&aacute;c cửa h&agrave;ng nhỏ lẻ vẫn c&oacute; lượng kh&aacute;ch h&agrave;ng ổn định l&agrave; do họ b&aacute;n cả m&aacute;y cũ, đặc biệt l&agrave; iPhone: &ldquo;C&aacute;c hệ thống lớn kh&ocirc;ng thể l&agrave;m được điều n&agrave;y. Nếu muốn b&aacute;n m&aacute;y đ&atilde; qua sử dụng, chuỗi b&aacute;n lẻ phải x&acirc;y dựng th&ecirc;m một bộ phận t&igrave;m kiếm nguồn h&agrave;ng, thẩm định, test m&aacute;y&hellip;, đội chi ph&iacute; l&ecirc;n qu&aacute; nhiều. Trong khi lượng m&aacute;y l&ocirc; để duy tr&igrave; c&aacute;c cửa h&agrave;ng hệ thống lớn sẽ khiến sai số tốt l&agrave;m ảnh hưởng đến thương hiệu. Hay như việc nguồn cung l&uacute;c thừa l&uacute;c thiếu cũng khiến c&aacute;c hệ thống lớn kh&ocirc;ng d&aacute;m nhảy v&agrave;o. Chỉ cần thị trường l&ecirc;n xuống, biến động l&agrave; hệ thống đ&oacute; &lsquo;m&eacute;o mặt&rsquo; do lượng m&aacute;y nhập về lớn&rdquo;, một chủ cửa h&agrave;ng chuy&ecirc;n b&aacute;n iPhone cũ chia sẻ.</p>\r\n\r\n<p>&ldquo;C&ograve;n với c&aacute;c cửa h&agrave;ng nhỏ, việc nhập một model số lượng &iacute;t, chỉ khoảng 20 m&aacute;y khiến việc kiểm tra dễ hơn, c&oacute; lỗi m&igrave;nh sẽ trả lại ngay nguồn cung hay kh&ocirc;ng lo biến động về tỷ gi&aacute;, cung cầu. Điều n&agrave;y gi&uacute;p giảm g&aacute;nh nặng h&agrave;ng tồn hay khan h&agrave;ng&rdquo;.</p>\r\n\r\n<p>L&yacute; giải h&agrave;ng loạt cửa h&agrave;ng di động nhỏ lẻ đ&oacute;ng cửa trong thời gian qua, anh Đức cho biết: &ldquo;Đ&oacute; l&agrave; ở những giai đoạn b&ugrave;ng nổ của thị trường di động Việt Nam, kinh doanh c&oacute; lời th&igrave; ai cũng sẽ nhảy v&agrave;o. Tuy nhi&ecirc;n, việc b&aacute;n h&agrave;ng kh&ocirc;ng đảm bảo chất lượng, chộp giật hay dịch vụ hậu m&atilde;i kh&ocirc;ng tốt mới l&agrave; nguy&ecirc;n nh&acirc;n khiến nhiều cửa h&agrave;ng đ&oacute;ng cửa hay chuyển hướng kinh doanh, trong khi mọi người mặc định nghĩ rằng đ&oacute; l&agrave; do c&aacute;c &ocirc;ng lớn tham gia v&agrave;o s&acirc;n chơi&rdquo;.</p>\r\n\r\n<p>Ngay như việc thống k&ecirc; về doanh thu v&agrave; thị trường smartphone, c&aacute;c h&atilde;ng ph&acirc;n t&iacute;ch chỉ c&oacute; số liệu từ hệ thống ph&acirc;n phối sản phẩm ch&iacute;nh h&atilde;ng: &ldquo;Đ&oacute; chỉ l&agrave; l&aacute;t cắt mỏng của thị trường di động Việt, họ đ&acirc;u biết thị trường x&aacute;ch tay s&ocirc;i động như thế n&agrave;o&rdquo;.</p>\r\n\r\n<p>Ngo&agrave;i ra, đ&oacute; c&ograve;n l&agrave; b&agrave;i to&aacute;n về marketing v&agrave; truyền th&ocirc;ng. C&aacute;c hệ thống lớn cần chạy c&aacute;c chiến dịch quảng b&aacute; trong thời gian d&agrave;i v&agrave; tần suất lớn nhằm đ&aacute;nh v&agrave;o t&acirc;m tr&iacute; kh&aacute;ch h&agrave;ng. &ldquo;C&ograve;n cửa h&agrave;ng nhỏ đ&acirc;u cần bỏ chi ph&iacute; như thế, c&ugrave;ng lắm l&agrave; chi ph&iacute; quảng c&aacute;o tr&ecirc;n Facebook. Hầu hết l&agrave; kh&aacute;ch quen, họ mua một lần an t&acirc;m l&agrave; sẽ truyền miệng nhau đến. Chỉ cần chăm s&oacute;c tập kh&aacute;ch h&agrave;ng đ&oacute; l&agrave; cửa h&agrave;ng c&oacute; lời&rdquo;.</p>\r\n\r\n<p>Trần Tiến</p>\r\n', '2016-07-24 06:49:30', '2016-07-24 07:15:26', 0, 0, 1, 1, 0, '', '', '', ''),
(3, 'Người dùng VN còn một tuần để nâng cấp miễn phí Windows 10', 'nguoi-dung-vn-con-mot-tuan-de-nang-cap-mien-phi-windows-10', 'Nguoi dung VN con mot tuan de nang cap mien phi Windows 10', 'Người sử dụng thiết bị Windows 7 và Windows 8.1 cần nâng cấp lên Windows 10 trước khi kỳ hạn nâng cấp miễn phí kết thúc vào ngày 29/7.', '2016/07/24/windows-1469342999.jpg', 1, '<p>Theo th&ocirc;ng tin mới đ&acirc;y từ Microsoft, khoảng gần một nửa số thiết bị đủ ti&ecirc;u ch&iacute; tại ch&acirc;u &Aacute; đối mặt với nguy cơ bỏ lỡ việc n&acirc;ng cấp l&ecirc;n Windows 10 miễn ph&iacute; trước ng&agrave;y 29/7.</p>\r\n\r\n<p>Theo StarCouter, 48,5% PC trong khu vực hiện vẫn sử dụng Windows 7 hoặc Windows 8.1. Đ&acirc;y l&agrave; 2 nền tảng hợp lệ được n&acirc;ng cấp miễn ph&iacute; l&ecirc;n Windows 10.</p>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Nguoi dung VN con mot tuan de nang cap mien phi Windows 10 hinh anh 1" src="http://img.v3.news.zdn.vn/w660/Uploaded/Aohuouk/2016_07_23/Windows.jpg" style="height:317px; width:586px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Cũng theo b&aacute;o c&aacute;o của StarCouter, hơn 60% m&aacute;y t&iacute;nh hợp lệ tại Ấn Độ đối mặt với nguy cơ bỏ lỡ cơ hội n&acirc;ng cấp, H&agrave;n Quốc l&agrave; 58,2%, Th&aacute;i Lan gần 57% v&agrave; Philippines l&agrave; 56,4%.</p>\r\n\r\n<p>Microsoft Việt Nam vừa ph&aacute;t đi th&ocirc;ng điệp, khuyến kh&iacute;ch người d&ugrave;ng trong nước n&acirc;ng cấp miễn ph&iacute; l&ecirc;n Windows 10 để trải nghiệm những t&iacute;nh năng mới của nền tảng n&agrave;y.</p>\r\n\r\n<p>Theo lịch tr&igrave;nh, Microsoft sẽ tung ra bản cập nhật Windows mới c&oacute; t&ecirc;n Windows 10 Anniversary Update v&agrave;o ng&agrave;y 2/8, bổ sung 6 t&iacute;nh năng mới bao gồm h&agrave;ng loạt t&iacute;nh năng bảo mật, Windows Ink (đưa t&iacute;nh năng của Windows l&ecirc;n b&uacute;t kỹ thuật số để viết tr&ecirc;n thiết bị như viết tr&ecirc;n giấy), Cortana cải tiến, tăng hiệu năng cho tr&igrave;nh duyệt Edge, trải nghiệm game tốt hơn v&agrave; những t&iacute;nh năng cải tiến cho lớp học hiện đại.</p>\r\n\r\n<p>Theo c&aacute;c khảo s&aacute;t gần đ&acirc;y, Windows 10 đang c&oacute; mặt tr&ecirc;n khoảng 350 triệu thiết bị, đem đến mức độ h&agrave;i l&ograve;ng lớn nhất so với c&aacute;c bản Windows trước đ&acirc;y với hơn 135 tỷ giờ sử dụng cho đến nay.</p>\r\n\r\n<p>Sau ng&agrave;y 29/7, những thiết bị chưa n&acirc;ng cấp sẽ phải mua bản Windows 10 Anniversary Update.</p>\r\n', '2016-07-24 06:50:18', '2016-07-24 07:15:32', 0, 0, 1, 1, 0, '', '', '', ''),
(4, 'Cận cảnh laptop mỏng nhất thế giới vừa về VN', 'can-canh-laptop-mong-nhat-the-gioi-vua-ve-vn', 'Can canh laptop mong nhat the gioi vua ve VN', 'Với độ dày chỉ 10,4 mm, HP Spectre hiện là chiếc laptop mỏng nhất thế giới. Model này tập trung nhiều về thiết kế với kiểu dáng thời trang, hướng đến nhóm khách hàng doanh nhân.', '2016/07/24/hp-spectre-zing11-1469343059.jpg', 1, '<h1>&nbsp;</h1>\r\n\r\n<p>&nbsp;Với độ d&agrave;y chỉ 10,4 mm, HP Spectre hiện l&agrave; chiếc laptop mỏng nhất thế giới. Model n&agrave;y tập trung nhiều về thiết kế với kiểu d&aacute;ng thời trang, hướng đến nh&oacute;m kh&aacute;ch h&agrave;ng doanh nh&acirc;n.</p>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 1" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing11.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Spectre l&agrave; mẫu m&aacute;y t&iacute;nh x&aacute;ch tay đầu bảng của HP. M&aacute;y vừa về Việt Nam với gi&aacute; 43 triệu đồng.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 2" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing13.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chiếc laptop mỏng nhất thế giới chỉ d&agrave;y 10,4 mm, nặng 1,11 kg, sử dụng khung nh&ocirc;m v&agrave; mặt đ&aacute;y bằng sợi carbon si&ecirc;u nhẹ.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 3" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing14.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tất cả c&aacute;c cổng kết nối đều được dời về cạnh sau để ưu ti&ecirc;n cho độ mỏng của m&aacute;y.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 4" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing15_1.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Spectre được trang bị 3 cổng USB Type C, trong đ&oacute; c&oacute; 2 cổng hỗ trợ giao tiếp tốc độ cao Thunderbolt.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 5" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing16.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Giắc cắm tai nghe được dồn về g&oacute;c tr&aacute;i.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 6" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing7_1.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>HP cũng trang bị cho Spectre 2 quạt tản nhiệt, c&aacute;c khe tho&aacute;t gi&oacute; được thiết kế theo dạng mang c&aacute;, song song với nhau.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 7" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing3.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Để đạt được độ mỏng ấn tượng n&agrave;y, HP đ&atilde; phải chia đều thỏi pin về 2 b&ecirc;n th&acirc;n m&aacute;y. Spectre sử dụng pin lion, sạc qua cổng USB Type C, c&ocirc;ng nghệ hybrid cho thời gian sử dụng l&ecirc;n đến 9,5 tiếng.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 8" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing17.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>HP Spectre cũng được trang bị cấu h&igrave;nh tốt với m&agrave;n h&igrave;nh 13,3 inch, Full HD. M&aacute;y chạy hệ điều h&agrave;nh&nbsp;Windows 10 Home, chip xử l&yacute; Core i7, RAM 8 GB, ổ cứng 256 GB theo chuẩn PCle cho băng th&ocirc;ng lớn hơn chuẩn SATA th&ocirc;ng thường.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 9" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing19.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phần bản lề được thiết kế k&iacute;n với pitt&ocirc;ng đẩy ph&iacute;a trong khiến m&aacute;y tr&ocirc;ng thời trang hơn nhưng vẫn đảm bảo qu&aacute; tr&igrave;nh gập mở được thỏa m&aacute;i.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 10" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing20.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&agrave;n ph&iacute;m hỗ trợ đ&egrave;n LED, ch&uacute;ng được thiết kế mềm, mỏng v&agrave; &iacute;t g&acirc;y ra tiếng k&ecirc;u, h&agrave;nh tr&igrave;nh ph&iacute;m ngắn, cho tốc độ soạn thảo nhanh.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 11" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/IMG_6701.JPG" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dải loa Bang &amp; Olufsen chia đều về 2 cạnh b&ecirc;n.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 12" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing1_1.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bắt đầu từ Spectre, tất cả những model cao cấp của HP sẽ sử dụng logo mới với thiết k&ecirc; tinh giản v&agrave; sang trọng hơn.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 13" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing18.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trong tầm gi&aacute; tr&ecirc;n 40 triệu, HP Spectre sẽ ph&ugrave; hợp hơn với nh&oacute;m kh&aacute;ch h&agrave;ng doanh nh&acirc;n, những người cần 1 laptop c&oacute; thiết kế thời trang, kh&ocirc;ng qu&aacute; ch&uacute; trọng về cấu h&igrave;nh.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2016-07-24 06:51:24', '2016-07-24 07:15:37', 0, 0, 1, 1, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `articles_cate`
--

CREATE TABLE `articles_cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles_cate`
--

INSERT INTO `articles_cate` (`id`, `name`, `slug`, `alias`, `description`, `created_at`, `updated_at`, `created_user`, `updated_user`, `status`, `display_order`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`) VALUES
(1, 'Tin tức', 'tin-tuc', 'Tin tuc', '', '2016-07-24 06:34:20', '2016-07-24 06:37:09', 0, 0, 1, 0, 'Tin tức', '', '', '');

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
  `alias` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `image_url` varchar(300) DEFAULT NULL,
  `description` text,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `crew`
--

INSERT INTO `crew` (`id`, `meta_id`, `name`, `alias`, `slug`, `image_url`, `description`, `created_user`, `updated_user`, `created_at`, `updated_at`, `type`) VALUES
(1, 0, 'Greg Berlanti', NULL, 'greg-berlanti', 'image/crew/greg-berlanti.jpg', '&lt;p&gt;Nghề nghiệp:&amp;nbsp;Nh&amp;agrave; bi&amp;ecirc;n kịch&lt;/p&gt;\r\n&lt;p&gt;Sinh: 24 th&amp;aacute;ng 5, 1972 (tuổi 42), Rye, Tiểu bang New York, Hoa Kỳ 1&lt;/p&gt;', 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:32', 2),
(4, 0, 'Jaume Collet-Serra', NULL, 'jaume-collet-serra', 'image/crew/jaume-collet-serra.jpg', '&lt;p&gt;Nghề nghiệp:&amp;nbsp;Đạo di&amp;ecirc;̃n phim&lt;/p&gt;\r\n&lt;p&gt;Sinh: 23 th&amp;aacute;ng 3, 1974 (tuổi 40), Sant Iscle de Vallalta, T&amp;acirc;y Ban Nha&lt;/p&gt;', 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:32', 2),
(5, 0, 'Grant Gustin', NULL, 'grant-gustin', 'image/crew/grant-gustin.jpg', '&lt;p&gt;Thomas Grant Gustin was born on January 14, 1990 in Norfolk, Virginia, to Tina (Sweeney), a pediatric nurse, and Thomas Gustin. In 2008, he graduated from Granby High School and went on to attend the BFA Music Theatre Program at Elon University in North Carolina for two years. He left school to take the role of Baby John in the Broadway Revival Tour of West Side Story, and performed with the tour from its opening on September 30, 2010 through September 23, 2011. On November 8, 2011, he debuted on the television series Glee as Sebastian Smythe, a member of the Dalton Academy Warblers.&lt;/p&gt;', 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:32', 1),
(6, 0, 'Candice Patton', NULL, 'candice-patton', 'image/crew/candice-patton.jpg', '&lt;p&gt;Raised in Plano, Texas, Candice continued her childhood dream of becoming an actress by attending Southern Methodist University in Dallas where she graduated Summa Cum Laude with a B.F.A in Theatre. It was here that she was scouted by The Young and the Restless for a CBS Soap Star Contest and flew out to Los Angeles to briefly join the cast. Candice finished her college education at SMU and moved to Los Angeles shortly after.&lt;/p&gt;', 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:32', 1),
(7, 0, 'Rick Cosnett', NULL, 'rick-cosnett', 'image/crew/rick-cosnett.jpg', '&lt;p&gt;Richard James Cosnett was born on April 6, 1983. Early life, grew up in Zimbabwe, moved to Australia and studied BFA Acting at QUT. He now lives in the USA. His work began in the theatre and has spread into film and television and producing. His great grandfather was the head of the Royal School of Music. He has 2 sisters and is a cousin of Hugh Grant.&lt;/p&gt;', 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:32', 1),
(8, 0, 'David Nutter', NULL, 'david-nutter', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:32', 2),
(9, 0, 'David Nutter', NULL, 'david-nutter', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:32', 2),
(10, 0, 'Grant Gustin', NULL, 'grant-gustin', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:32', 1),
(11, 0, 'Candice Patton', NULL, 'candice-patton', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 1),
(12, 0, 'Danielle Panabaker', NULL, 'danielle-panabaker', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 1),
(13, 0, 'Rick Cosnett', NULL, 'rick-cosnett', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 1),
(14, 0, 'Greg Berlanti', NULL, 'greg-berlanti', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 3),
(15, 0, 'Andrew Kreisberg', NULL, 'andrew-kreisberg', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 3),
(16, 0, 'Geoff Johns', NULL, 'geoff-johns', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 3),
(17, 0, 'Joss Whedon', NULL, 'joss-whedon', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 2),
(18, 0, 'Robert Downey Jr.', NULL, 'robert-downey-jr', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 1),
(19, 0, 'Chris Evans', NULL, 'chris-evans', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 1),
(20, 0, 'Mark Ruffalo', NULL, 'mark-ruffalo', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 1),
(21, 0, 'Chris Hemsworth', NULL, 'chris-hemsworth', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 1),
(22, 0, 'Marvel', NULL, 'marvel', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 3),
(23, 0, 'George Miller', NULL, 'george-miller', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 2),
(24, 0, 'Tom Hardy', NULL, 'tom-hardy', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 1),
(25, 0, 'Charlize Theron', NULL, 'charlize-theron', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 1),
(26, 0, 'Nicholas Hoult', NULL, 'nicholas-hoult', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 1),
(27, 0, 'Zoë Kravitz', NULL, 'zoe-kravitz', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 1),
(28, 0, 'Bruce Berman', NULL, 'bruce-berman', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 3),
(29, 0, 'Graham Burke', NULL, 'graham-burke', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 3),
(30, 0, 'James Wan', NULL, 'james-wan', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 2),
(31, 0, 'Vin Diesel', NULL, 'vin-diesel', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:33', 1),
(32, 0, 'Paul Walker', NULL, 'paul-walker', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(33, 0, 'Dwayne Johnson', NULL, 'dwayne-johnson', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(34, 0, 'Jason Statham', NULL, 'jason-statham', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(35, 0, 'Universal Pictures', NULL, 'universal-pictures', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 3),
(36, 0, 'Media Rights Capital', NULL, 'media-rights-capital', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 3),
(37, 0, 'Nhĩ Đông Thăng', NULL, 'nhi-dong-thang', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 2),
(38, 0, 'Lưu Thanh Vân', NULL, 'luu-thanh-van', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(39, 0, 'Huỳnh Hiểu Minh', NULL, 'huynh-hieu-minh', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(40, 0, 'Diệp Tuyền', NULL, 'diep-tuyen', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(41, 0, 'Phương Lực Thân', NULL, 'phuong-luc-than', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(42, 0, 'Keishi Ohtomo', NULL, 'keishi-ohtomo', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 2),
(43, 0, 'Takeru Satô', NULL, 'takeru-sato', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(44, 0, 'Emi Takei', NULL, 'emi-takei', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(45, 0, 'Tatsuya Fujiwara', NULL, 'tatsuya-fujiwara', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(46, 0, 'Yôsuke Eguchi', NULL, 'yosuke-eguchi', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(47, 0, 'Nhiếp Viễn', NULL, 'nhiep-vien', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(48, 0, 'Mao Tuấn Kiệt', NULL, 'mao-tuan-kiet', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(49, 0, 'Phùng Văn Quyên', NULL, 'phung-van-quyen', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(50, 0, 'Cao Hổ', NULL, 'cao-ho', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(51, 0, 'Vương Du Du', NULL, 'vuong-du-du', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:34', 1),
(52, 0, 'Liễu Nham', NULL, 'lieu-nham', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(53, 0, 'Grant Gustin', NULL, 'grant-gustin', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 2),
(54, 0, 'Candice Patton', NULL, 'candice-patton', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 2),
(55, 0, 'Rick Cosnett', NULL, 'rick-cosnett', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 2),
(56, 0, 'Carlos Valdes', NULL, 'carlos-valdes', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(57, 0, 'Tom Cavanagh', NULL, 'tom-cavanagh', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(58, 0, 'Jesse L. Martin', NULL, 'jesse-l-martin', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(59, 0, 'John Wesley Shipp', NULL, 'john-wesley-shipp', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(60, 0, 'Stephen Amell', NULL, 'stephen-amell', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(61, 0, 'Yoshie Bancroft', NULL, 'yoshie-bancroft', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(62, 0, 'Fulvio Cecere', NULL, 'fulvio-cecere', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(63, 0, 'Marc Gaudet', NULL, 'marc-gaudet', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(64, 0, 'Michelle Harrison', NULL, 'michelle-harrison', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(65, 0, 'Matthew Robert Kelly', NULL, 'matthew-robert-kelly', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(66, 0, 'Jennifer Kitchen', NULL, 'jennifer-kitchen', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(67, 0, 'Nelson Leis', NULL, 'nelson-leis', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(68, 0, 'Rowan Longworth', NULL, 'rowan-longworth', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:35', 1),
(69, 0, 'Chad Rook', NULL, 'chad-rook', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(70, 0, 'Troy Rudolph', NULL, 'troy-rudolph', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(71, 0, 'Patrick Sabongui', NULL, 'patrick-sabongui', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(72, 0, 'Al Sapienza', NULL, 'al-sapienza', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(73, 0, 'Eli Shapera', NULL, 'eli-shapera', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(74, 0, 'Logan Williams', NULL, 'logan-williams', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(75, 0, 'Brendon Zub', NULL, 'brendon-zub', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(76, 0, 'Berlanti Productions', NULL, 'berlanti-productions', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 3),
(77, 0, 'DC Entertainment', NULL, 'dc-entertainment', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 3),
(78, 0, 'Warner Bros', NULL, 'warner-bros', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 3),
(79, 0, 'Y Năng Tịnh', NULL, 'y-nang-tinh', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 2),
(80, 0, 'Trần Kiều Ân', NULL, 'tran-kieu-an', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(81, 0, 'Y Năng Tịnh', NULL, 'y-nang-tinh', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(82, 0, 'Song Hye Kyo', NULL, 'song-hye-kyo', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(83, 0, 'P.J. Hogan', NULL, 'pj-hogan', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 2),
(84, 0, 'Isla Fisher', NULL, 'isla-fisher', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(85, 0, 'Hugh Dancy', NULL, 'hugh-dancy', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(86, 0, 'Krysten Ritter', NULL, 'krysten-ritter', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(87, 0, 'Joan Cusack', NULL, 'joan-cusack', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(88, 0, 'Tony Goldwyn', NULL, 'tony-goldwyn', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 2),
(89, 0, 'Hilary Swank', NULL, 'hilary-swank', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(90, 0, 'Sam Rockwell', 'Sam Rockwell', 'sam-rockwell', '', '', 1, 1, '2016-01-01 00:00:00', '2016-08-12 17:09:45', 1),
(91, 0, 'Melissa Leo', NULL, 'melissa-leo', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(92, 0, 'Thomas D. Mahard', NULL, 'thomas-d-mahard', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(93, 0, 'Jalmari Helander', NULL, 'jalmari-helander', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 2),
(94, 0, 'Samuel L. Jackson', NULL, 'samuel-l-jackson', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(95, 0, 'Onni Tommila', NULL, 'onni-tommila', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(96, 0, 'Ray Stevenson', NULL, 'ray-stevenson', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(97, 0, 'Victor Garber', NULL, 'victor-garber', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 1),
(98, 0, 'John Baumgartner', NULL, 'john-baumgartner', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:36', 2),
(99, 0, 'Jhey Castles', NULL, 'jhey-castles', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(100, 0, 'Jason Woods', NULL, 'jason-woods', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(101, 0, 'Grace Van Dien', NULL, 'grace-van-dien', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(102, 0, 'Elaine Partnow', NULL, 'elaine-partnow', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(103, 0, 'Jonah Loop', NULL, 'jonah-loop', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 2),
(104, 0, 'Kellan Lutz', NULL, 'kellan-lutz', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(105, 0, 'Johnny Messner', NULL, 'johnny-messner', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(106, 0, 'Katia Winter', NULL, 'katia-winter', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(107, 0, 'A.R. Murugadoss', NULL, 'ar-murugadoss', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 2),
(108, 0, 'Aamir Khan', NULL, 'aamir-khan', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(109, 0, 'Asin', NULL, 'asin', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(110, 0, 'Jiah Khan', NULL, 'jiah-khan', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(111, 0, 'Tinnu Anand', NULL, 'tinnu-anand', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(112, 0, 'Daniel Yee Heng Chan', NULL, 'daniel-yee-heng-chan', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 2),
(113, 0, 'Ronald Cheng', NULL, 'ronald-cheng', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(114, 0, 'Tony Ho', NULL, 'tony-ho', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(115, 0, 'Michelle Hu', NULL, 'michelle-hu', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(116, 0, 'Luxia Jiang', NULL, 'luxia-jiang', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(117, 0, 'Takashi Miike', NULL, 'takashi-miike', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 2),
(118, 0, 'Shôta Sometani', NULL, 'shota-sometani', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(119, 0, 'Ryûnosuke Kamiki', NULL, 'ryunosuke-kamiki', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(120, 0, 'Rirî Furankî', NULL, 'riri-furanki', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(121, 0, 'Sôta Fukushi', NULL, 'sota-fukushi', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(122, 0, 'Eiichiro Oda', NULL, 'eiichiro-oda', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 2),
(123, 0, 'Tony Beck', NULL, 'tony-beck', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(124, 0, 'Laurent Vernin', NULL, 'laurent-vernin', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(125, 0, 'Mayumi Tanaka', NULL, 'mayumi-tanaka', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(126, 0, 'Yoon Sung Shik', NULL, 'yoon-sung-shik', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 2),
(127, 0, 'Seo In Guk', NULL, 'seo-in-guk', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(128, 0, 'Jo Yoon Hee', NULL, 'jo-yoon-hee', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(129, 0, 'Shin Sung Rok', NULL, 'shin-sung-rok', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(130, 0, 'Lee Sung Jae', NULL, 'lee-sung-jae', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(131, 0, 'Kim Kyu Ri', NULL, 'kim-kyu-ri', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 1),
(132, 0, 'Jodie Foster', NULL, 'jodie-foster', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 2),
(133, 0, 'Michael Trim', NULL, 'michael-trim', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:37', 2),
(134, 0, 'Phil Abraham', NULL, 'phil-abraham', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 2),
(135, 0, 'Andrew McCarthy', NULL, 'andrew-mccarthy', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 2),
(136, 0, 'Michael Harney', NULL, 'michael-harney', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(137, 0, 'Kate Mulgrew', NULL, 'kate-mulgrew', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(138, 0, 'Natasha Lyonne', NULL, 'natasha-lyonne', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(139, 0, 'Uzo Aduba', NULL, 'uzo-aduba', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(140, 0, 'Âu Dương Chấn Hoa', NULL, 'au-duong-chan-hoa', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(141, 0, 'Tuyên Huyên', NULL, 'tuyen-huyen', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(142, 0, 'Đường Ninh', NULL, 'duong-ninh', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(143, 0, 'Yoo-chun Park', NULL, 'yoo-chun-park', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(144, 0, 'Se-Kyung Shin', NULL, 'se-kyung-shin', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(145, 0, 'Tae-Joon Choi', NULL, 'tae-joon-choi', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(146, 0, 'Hie-bong Jo', NULL, 'hie-bong-jo', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(147, 0, 'Seo Soo Min', NULL, 'seo-soo-min', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 2),
(148, 0, 'Park Ji Eun', NULL, 'park-ji-eun', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 2),
(149, 0, 'Park Ji Eun', NULL, 'park-ji-eun', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(150, 0, 'IU', NULL, 'iu', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(151, 0, 'Gong Hyo Jin', NULL, 'gong-hyo-jin', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(152, 0, 'James McTeigue', NULL, 'james-mcteigue', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 2),
(153, 0, 'Paddy Wallace', NULL, 'paddy-wallace', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(154, 0, 'Parker Sawyers', NULL, 'parker-sawyers', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(155, 0, 'Bashar Rahal', NULL, 'bashar-rahal', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(156, 0, 'Royce Pierreson', NULL, 'royce-pierreson', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(157, 0, 'Ben Starr', NULL, 'ben-starr', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(158, 0, 'Sean Teale', NULL, 'sean-teale', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(159, 0, 'Rege-Jean Page', NULL, 'rege-jean-page', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(160, 0, 'Veselin Karadjov', NULL, 'veselin-karadjov', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 3),
(161, 0, 'Suzie Shearer', NULL, 'suzie-shearer', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 3),
(162, 0, 'Joe Johnston', NULL, 'joe-johnston', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 2),
(163, 0, 'Sam Neill', NULL, 'sam-neill', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(164, 0, 'William H. Macy', NULL, 'william-h-macy', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(165, 0, 'Téa Leoni', NULL, 'tea-leoni', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(166, 0, 'Alessandro Nivola', NULL, 'alessandro-nivola', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 1),
(167, 0, 'Larry J. Franco', NULL, 'larry-j-franco', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 3),
(168, 0, 'Kathleen Kennedy', NULL, 'kathleen-kennedy', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:38', 3),
(169, 0, 'Steven Spielberg', NULL, 'steven-spielberg', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 3),
(170, 0, 'Cheryl A. Tkach', NULL, 'cheryl-a-tkach', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 3),
(171, 0, 'David Womark', NULL, 'david-womark', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 3),
(172, 0, 'Cao Hy Hy', NULL, 'cao-hy-hy', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 2),
(173, 0, 'Trần Kiến Bân', NULL, 'tran-kien-ban', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(174, 0, 'Vu Hòa Vĩ', NULL, 'vu-hoa-vi', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(175, 0, 'Trần Hảo', NULL, 'tran-hao', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(176, 0, 'Triệu Kha', NULL, 'trieu-kha', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(177, 0, 'Ân Đào', NULL, 'an-dao', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(178, 0, 'Lục Nghị', NULL, 'luc-nghi', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(179, 0, 'Tân Bách Thanh', NULL, 'tan-bach-thanh', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(180, 0, 'Lâm Tâm Như', NULL, 'lam-tam-nhu', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(181, 0, 'Hầu Dũng', NULL, 'hau-dung', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(182, 0, 'Hà Nhuận Đông', NULL, 'ha-nhuan-dong', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(183, 0, 'Nghê Đại Hồng', NULL, 'nghe-dai-hong', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(184, 0, 'Vu Quang Vinh', NULL, 'vu-quang-vinh', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(185, 0, 'Chu Tô Tiến', NULL, 'chu-to-tien', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 3),
(186, 0, 'Dương Hiểu Minh', NULL, 'duong-hieu-minh', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 3),
(187, 0, 'Louie Psihoyos', NULL, 'louie-psihoyos', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 2),
(188, 0, 'Paul Hilton', NULL, 'paul-hilton', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(189, 0, 'Elon Musk', NULL, 'elon-musk', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(190, 0, 'Joel Sartore', NULL, 'joel-sartore', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(191, 0, 'Louie Psihoyos', NULL, 'louie-psihoyos', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(192, 0, 'Leilani Münter', NULL, 'leilani-munter', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(193, 0, 'Charles Hambleton', NULL, 'charles-hambleton', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(194, 0, 'Heather Dawn Rally', NULL, 'heather-dawn-rally', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(195, 0, 'Shawn Heinrichs', NULL, 'shawn-heinrichs', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(196, 0, 'Travis Threlkel', NULL, 'travis-threlkel', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(197, 0, 'J.J. Abrams', NULL, 'jj-abrams', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 2),
(198, 0, 'Harrison Ford', NULL, 'harrison-ford', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:39', 1),
(199, 0, 'John Boyega', NULL, 'john-boyega', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(200, 0, 'Oscar Isaac', NULL, 'oscar-isaac', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(201, 0, 'Adam Driver', NULL, 'adam-driver', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(202, 0, 'Mark Hamill', NULL, 'mark-hamill', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(203, 0, 'Carrie Fisher', NULL, 'carrie-fisher', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(204, 0, 'Daisy Ridley', NULL, 'daisy-ridley', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(205, 0, 'Alejandro González Iñárritu', NULL, 'alejandro-gonzalez-inarritu', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 2),
(206, 0, 'Will Poulter', NULL, 'will-poulter', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(207, 0, 'Leonardo DiCaprio', NULL, 'leonardo-dicaprio', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(208, 0, 'Domhnall Gleeson', NULL, 'domhnall-gleeson', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(209, 0, 'Matthew Vaughn', NULL, 'matthew-vaughn', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 2),
(210, 0, 'Colin Firth', NULL, 'colin-firth', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(211, 0, 'Taron Egerton', NULL, 'taron-egerton', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(212, 0, 'Jack Davenport', NULL, 'jack-davenport', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(213, 0, 'Bryan Singer', NULL, 'bryan-singer', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 2),
(214, 0, 'James Mcavoy', NULL, 'james-mcavoy', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(215, 0, 'Michael Fassbender', NULL, 'michael-fassbender', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(216, 0, 'Jennifer Lawrence', NULL, 'jennifer-lawrence', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(217, 0, 'Bryan Singer', NULL, 'bryan-singer', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 3),
(218, 0, 'Simon Kinberg', NULL, 'simon-kinberg', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 3),
(219, 0, 'Lauren Shuler Donner', NULL, 'lauren-shuler-donner', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 3),
(220, 0, 'Hutch Parker', NULL, 'hutch-parker', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 3),
(221, 0, 'Kishimoto Masashi', NULL, 'kishimoto-masashi', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 2),
(237, 0, 'Jon Favreau', NULL, 'jon-favreau', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 2),
(238, 0, 'Idris Elba', NULL, 'idris-elba', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(239, 0, 'Bill Murray', NULL, 'bill-murray', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(240, 0, 'Ben Kingsley', NULL, 'ben-kingsley', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(241, 0, 'Scarlett Johansson', NULL, 'scarlett-johansson', '', NULL, 1, 1, '2016-01-01 00:00:00', '2016-08-11 14:43:40', 1),
(242, 0, 'Jon Favreaudg sdfh', 'Jon Favreaudg sdfh', 'jon-favreaudg-sdfh', '', '', 1, 1, '2016-01-01 00:00:00', '2016-08-12 17:10:03', 1),
(243, 0, 'Neel Sethi', 'Neel Sethi', 'neel-sethi', '2016/08/12/koala-1471019218.jpg', '<p>&agrave;asfasfasf bcx bdfasdg &aacute;dgs</p>\r\n', 1, 1, '2016-01-01 00:00:00', '2016-08-12 16:27:00', 1),
(244, 0, 'dsgsdg', 'dsgsdg', 'dsgsdg', '2016/08/12/hydrangeas-1471019364.jpg', '<p>dsvadsg dsgasd</p>\r\n', 0, 0, '2016-08-12 16:29:28', '2016-08-12 16:29:28', 3);

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
  `image_url` varchar(255) DEFAULT NULL,
  `poster_url` varchar(255) DEFAULT NULL,
  `slide_url` varchar(255) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `quality` tinyint(4) NOT NULL DEFAULT '1',
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
  `slide` tinyint(4) DEFAULT '0' COMMENT '1 : slide : 0 : no',
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

INSERT INTO `film` (`id`, `meta_id`, `title`, `slug`, `alias`, `description`, `image_url`, `poster_url`, `slide_url`, `duration`, `quality`, `release_year`, `type`, `cinema`, `content`, `note`, `likes`, `views`, `created_at`, `updated_at`, `updated_episode_date`, `status`, `imdb`, `slide`, `order`, `expired`, `push_top`, `trailer`, `created_user`, `updated_user`) VALUES
(1, 32, 'Người hùng tia chớp (Phần 1)', 'nguoi-hung-tia-chop-phan-1', 'Nguoi hung tia chop (Phan 1)', 'Barry Allen was just 11 years old when his mother was killed in a bizarre and terrifying incident and his father was falsely convicted of the murder. With his life changed forever by the tragedy, Barry was taken in and raised by Detective Joe West, the father of Barry’s best friend, Iris. Now, Barry has become a brilliant, driven and endearingly geeky CSI investigator, whose determination to uncover the truth about his mother’s strange death leads him to follow up on every unexplained urban lege', 'image/film/the-flash.jpg', 'image/film/the-flash-1.jpg', NULL, '23 tập', 1, 2015, 1, 1, '<p>Barry Allen was just 11 years old when his mother was killed in a bizarre and terrifying incident and his father was falsely convicted of the murder. With his life changed forever by the tragedy, Barry was taken in and raised by Detective Joe West, the father of Barry&rsquo;s best friend, Iris. Now, Barry has become a brilliant, driven and endearingly geeky CSI investigator, whose determination to uncover the truth about his mother&rsquo;s strange death leads him to follow up on every unexplained urban legend and scientific advancement that comes along. Barry&rsquo;s latest obsession is a cutting edge particle accelerator, created by visionary physicist Harrison Wells and his S.T.A.R. Labs team, who claim that this invention will bring about unimaginable advancements in power and medicine. However, something goes horribly wrong during the public unveiling, and when the devastating explosion causes a freak storm, many lives are lost and Barry is struck by lightning. After nine months in a coma, Barry awakens to find his life has changed once again &ndash; the accident has given him the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only &ldquo;meta-human&rdquo; who was created in the wake of the accelerator explosion &ndash; and not everyone is using their new powers for good. In the months since the accident, the city has seen a sharp increase in missing people, unexplained deaths and other strange phenomena. Barry now has a renewed purpose &ndash; using his gift of speed to protect the innocent, while never giving up on his quest to solve his mother&rsquo;s murder and clear his father&rsquo;s name. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won&rsquo;t be long before the world learns what Barry Allen has become&hellip;The Flash.</p>', NULL, 0, 0, '2015-05-20 11:29:55', '2016-09-07 08:43:08', NULL, 1, '8.2', 0, NULL, NULL, 1, NULL, 1, 1),
(2, 42, 'Đế Chế Ultron', 'de-che-ultron', 'De Che Ultron', 'Mệt mỏi vì công việc của một nhà sáng chế, doanh nhân và cả trách nhiệm của một siêu anh hùng, Tony đã quyết định tạo ra Ultron để thay mình bảo vệ thế giới. Nhưng ý tưởng đã thất bại, Ultron trở nên mất kiểm soát và biến thành một cỗ', 'image/film/624189-avengers-2015-megabox-pst-sd.jpg', 'image/film/avengers-age-of-ultron.png', NULL, '132 minutes', 1, 2015, 1, 1, '<p>Mệt mỏi v&igrave; c&ocirc;ng việc của một nh&agrave; s&aacute;ng chế, doanh nh&acirc;n v&agrave; cả tr&aacute;ch nhiệm của một si&ecirc;u anh h&ugrave;ng, Tony đ&atilde; quyết định tạo ra Ultron để thay m&igrave;nh bảo vệ thế giới. Nhưng &yacute; tưởng đ&atilde; thất bại, Ultron trở n&ecirc;n mất kiểm so&aacute;t v&agrave; biến th&agrave;nh một cỗ m&aacute;y s&aacute;t nh&acirc;n m&aacute;u lạnh. Khi h&ograve;a b&igrave;nh lại bị đe dọa, đ&oacute; cũng l&agrave; l&uacute;c biệt đội Avengers phải trở lại v&agrave; ra tay.</p>', NULL, 0, 0, '2015-05-24 00:00:22', '2016-09-07 08:43:08', NULL, 1, 'na', 0, NULL, NULL, 1, NULL, 1, 1),
(3, 46, 'Max Điên: Con Đường Tử Thần', 'max-dien-con-duong-tu-than', 'Max Dien: Con Duong Tu Than', 'Bối cảnh phim ở một nơi rất xa của trái đất, nơi ấy sa mạc bao phủ hầu hết bề mặt và hầu hết mọi người đều điên cuồng đấu tranh cho những nhu cầu của cuộc sống. Trong thế giới này tồn tại hai phiến quân đang chạy trốn những người được coi là có thể để khôi phục lại trật tự thế giới. Trong đó', 'image/film/642226-mad-max-megabox-pst.jpg', 'image/film/mad-max.jpg', NULL, '112 phút', 1, 2015, 1, 1, '<p>Bối cảnh phim ở một nơi rất xa của tr&aacute;i đất, nơi ấy sa mạc bao phủ hầu hết bề mặt v&agrave; hầu hết mọi người đều đi&ecirc;n cuồng đấu tranh cho những nhu cầu của cuộc sống. Trong thế giới n&agrave;y tồn tại hai phiến qu&acirc;n đang chạy trốn những người được coi l&agrave; c&oacute; thể để kh&ocirc;i phục lại trật tự thế giới. Trong đ&oacute; c&oacute; Max, một người đ&agrave;n &ocirc;ng của h&agrave;nh động v&agrave; &iacute;t n&oacute;i, đang t&igrave;m kiếm sự an t&acirc;m sau khi mất vợ v&agrave; con của m&igrave;nh do hậu quả của sự hỗn loạn. V&agrave; Furiosa, một phụ nữ lu&ocirc;n h&agrave;nh động v&agrave; tin rằng con đường của m&igrave;nh để tồn tại c&oacute; thể đạt được nếu c&ocirc; ấy c&oacute; thể vượt sa mạc sở về qu&ecirc; hương y&ecirc;u dấu.</p>', NULL, 0, 0, '2015-05-24 00:03:58', '2016-09-07 08:43:08', NULL, 1, 'na', 1, NULL, NULL, 1, NULL, 1, 1),
(6, 51, 'Đại Hỏa Kyoto Kenshin', 'dai-hoa-kyoto-kenshin', 'Dai Hoa Kyoto Kenshin', 'Kenshin sau khi bắt đầu cuộc sống mới cùng Kaoru và bạn bè thì nhận được yêu cầu từ chính quyền Minh Trị. Makoto Shishio là một cựu sát thủ như Kenshin, bị phản bội và bị thiêu sống, nhưng đã thoát chết và hiện đang ở Kyoto, cùng đồng bọn âm mưu lật đổ', 'image/film/272cc4cb62ce081d2ed091cda53fcf17.jpg', 'image/film/rurouni-kenshin-kyoto-taika-hen.jpg', NULL, '138 phút', 1, 2015, 1, 0, '<p>Kenshin sau khi bắt đầu cuộc sống mới cùng Kaoru và bạn bè thì nhận được yêu cầu từ chính quyền Minh Trị. Makoto Shishio là một cựu sát thủ như Kenshin, bị phản bội và bị thiêu sống, nhưng đã thoát chết và hiện đang ở Kyoto, cùng đồng bọn âm mưu lật đổ chính quyền. Trái với ý nguyện của Kaoru, Kenshin bất đắc dĩ nhận nhiệm vụ, đến Kyoto để ngăn cản cuộc nội chiến sắp xảy đến với đất nước của mình.</p>\r\n', NULL, 0, 0, '2015-05-24 00:23:45', '2016-09-07 08:43:08', NULL, 1, 'na', 0, NULL, NULL, 1, '', 1, 1),
(4, 49, 'Báo Thù', 'bao-thu', 'Bao Thu', 'Quá Nhanh Quá Nguy Hiểm 7: Sau cái chết của Paul Walker, có rất nhiều câu hỏi đặt ra cho nhà sản xuất phim Fast and Furious. Các nhà làm phim nhận thấy họ cần một ai đó giống ngôi sao quá cố để hoàn thành bộ phim dang dở. Trong', 'image/film/75ca9606de7f59dfb614bc6e9cff0536.jpg', 'image/film/fast-furious-7-2015-poster.jpg', NULL, '137 phút', 1, 2015, 1, 1, '<p><strong>Qu&aacute; Nhanh Qu&aacute; Nguy Hiểm 7</strong>: Sau c&aacute;i chết của Paul Walker, c&oacute; rất nhiều c&acirc;u hỏi đặt ra cho nh&agrave; sản xuất phim <strong>Fast and Furious</strong>. C&aacute;c nh&agrave; l&agrave;m phim nhận thấy họ cần một ai đ&oacute; giống ng&ocirc;i sao qu&aacute; cố để ho&agrave;n th&agrave;nh bộ phim dang dở. Trong nh&agrave; Walker, em &uacute;t Cody Walker c&oacute; ngoại h&igrave;nh kh&aacute; giống anh trai. Cody được mong đợi sẽ lấp đầy chỗ trống m&agrave; Paul để lại cho Fast And&nbsp;Furious 7. Cody cũng từng tham gia đ&oacute;ng thế trong một số bộ phim. Trong tập 7 cua <strong>Fast and Furious</strong> , Ian Shaw cung đồng đội của m&igrave;nh sẽ chiến đấu chống lại Dominic Toretto để trả th&ugrave; cho cai chết của anh trai m&igrave;nh.</p>', NULL, 0, 0, '2015-05-24 00:08:16', '2016-09-07 08:43:08', NULL, 1, 'na', 0, NULL, NULL, 1, NULL, 1, 1),
(5, 50, 'Bạo Phong Ngữ', 'bao-phong-ngu', 'Bao Phong Ngu', 'Phim Bạo Phong Ngữ Insanity Đạo diễn Nhĩ Đông Thăng tiếp tục khai thác dòng phim hình sự giật gân sở trường trong năm nay với Insanity cùng bộ đôi Lưu Thanh Vân và Huỳnh Hiểu Minh.\r\nPhim là cuộc đối đầu căng thẳng giữa một tên sát nhân tâm thần', 'image/film/632909-insanity-2015-poster.jpg', 'image/film/insanity-poster-goldposter-com-5.jpg', NULL, '98 phút', 1, 2015, 1, 0, '<p>Phim&nbsp;Bạo Phong Ngữ&nbsp;Insanity&nbsp;Đạo diễn Nhĩ Đ&ocirc;ng Thăng tiếp tục khai th&aacute;c d&ograve;ng phim h&igrave;nh sự giật g&acirc;n sở trường trong năm nay với Insanity c&ugrave;ng bộ đ&ocirc;i Lưu Thanh V&acirc;n v&agrave; Huỳnh Hiểu Minh.</p>\r\n<p>Phim l&agrave; cuộc đối đầu căng thẳng giữa một t&ecirc;n s&aacute;t nh&acirc;n t&acirc;m thần v&agrave; một b&aacute;c sĩ chuy&ecirc;n khoa thần kinh. Theo chia sẻ của Nhĩ Đ&ocirc;ng Thăng, &ocirc;ng từng mất tới 5 năm để ph&aacute;t triển kịch bản của Insanity sao cho vừa &yacute; c&aacute;c nh&agrave; sản xuất.</p>', NULL, 0, 0, '2015-05-24 00:11:28', '2016-09-07 08:43:08', NULL, 1, 'na', 1, NULL, NULL, 1, NULL, 1, 1),
(7, 52, 'Long Môn Phi Giáp', 'long-mon-phi-giap', 'Long Mon Phi Giap', 'Phim lấy bối cảnh từ thời nhà Minh. Câu chuyện bắt đầu khi hiệp khách Triệu Hoài An (Nhiếp Viễn) quyết định ẩn náu tại quán trọ Long Môn, sau thời gian bị truy đuổi vì tội giải thoát một trong những phạm nhân triều đình. Tại nơi đây, anh được bà chủ trước đây của', 'image/film/304526-long-mon-phi-giap-2015-megabox-pst.jpg', 'image/film/flying-swords-of-dragon-gate.jpg', NULL, '50 tập', 1, 2015, 1, 1, '<p>Phim lấy bối cảnh từ thời nh&agrave; Minh. C&acirc;u chuyện bắt đầu khi hiệp kh&aacute;ch Triệu Ho&agrave;i An (Nhiếp Viễn) quyết định ẩn n&aacute;u tại qu&aacute;n trọ Long M&ocirc;n, sau thời gian bị truy đuổi v&igrave; tội giải tho&aacute;t một trong những phạm nh&acirc;n triều đ&igrave;nh. Tại nơi đ&acirc;y, anh được b&agrave; chủ trước đ&acirc;y của qu&aacute;n trọ Long M&ocirc;n - Kim Tương N</p>', NULL, 0, 0, '2015-05-24 00:25:22', '2016-09-07 08:43:08', NULL, 1, 'na', 0, NULL, NULL, 1, NULL, 1, 1),
(8, 36, 'Tôi Là Nữ Vương', 'toi-la-nu-vuong', 'Toi La Nu Vuong', ' Bộ phim xoay quanh cuộc sống, những thăng trầm và tình yêu của ba cô gái thành đạt chốn đô thị. Song Hye Kyo, Trần Kiều Ân và Y Năng Tịnh sẽ hóa thân vào vai ba cô bạn thân của nhau, cũng chính là ba nhân vật trung tâm của bộ phim. Hye Kyo', 'image/film/799314-toi-la-nu-vuong-pst1.jpg', 'image/film/toi-la-nu-vuong.jpg', NULL, '100 phút', 1, 2015, 1, 0, '<p>&nbsp;Bộ phim xoay quanh cuộc sống, những thăng trầm v&agrave; t&igrave;nh y&ecirc;u của ba c&ocirc; g&aacute;i th&agrave;nh đạt chốn đ&ocirc; thị. Song Hye Kyo, Trần Kiều &Acirc;n v&agrave; Y Năng Tịnh sẽ h&oacute;a th&acirc;n v&agrave;o vai ba c&ocirc; bạn th&acirc;n của nhau, cũng ch&iacute;nh l&agrave; ba nh&acirc;n vật trung t&acirc;m của bộ phim. Hye Kyo v&agrave;o vai một minh tinh xinh đẹp, t&agrave;i năng. Cuộc đời thay đổi khi c&ocirc; chia tay người y&ecirc;u sau t&aacute;m năm gắn b&oacute;.</p>', NULL, 0, 1, '2015-05-25 21:10:51', '2016-09-07 08:43:08', NULL, 1, '', 0, NULL, NULL, 1, NULL, 1, 1),
(9, 37, 'Lời Tự Thú Của Một Tín Đồ Shopping', 'loi-tu-thu-cua-mot-tin-do-shopping', 'Loi Tu Thu Cua Mot Tin Do Shopping', 'Tham vọng lớn nhất của Rebecca Bloomwood (Isla Fisher) là được nhận vào làm ở tờ tạp chí thời trang danh tiếng, Alette. Nhưng trong lúc chờ thời, cô phóng viên chuyên viết bài về chủ đề vườn tược cho một tạp chí nhỏ coi mua', 'image/film/e0279bc5e373b09bcec7147d51fc1ab7.jpg', 'image/film/confessions-of-a-shopaholic.jpg', NULL, '104 phút', 1, 2015, 1, 0, '<div id="mCSB_2_container" class="mCSB_container" dir="ltr">\r\n<p>Tham vọng lớn nhất của Rebecca Bloomwood (Isla Fisher) l&agrave; được nhận v&agrave;o l&agrave;m ở tờ tạp ch&iacute; thời trang danh tiếng, Alette. Nhưng trong l&uacute;c chờ thời, c&ocirc; ph&oacute;ng vi&ecirc;n chuy&ecirc;n viết b&agrave;i về chủ đề vườn tược cho một tạp ch&iacute; nhỏ coi mua sắm l&agrave; niềm đam m&ecirc; lớn nhất. Rebecca sẵn s&agrave;ng lao tới mọi cuộc giảm gi&aacute; của những cửa h&agrave;ng thời trang h&agrave;ng hiệu v&agrave; ti&ecirc;u tiền kh&ocirc;ng t&iacute;nh to&aacute;n trước những m&oacute;n đồ đắt gi&aacute;. C&ocirc; n&agrave;ng ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; khả năng kiềm chế th&uacute; vui mua sắm, bất lực trước việc kiểm so&aacute;t chi ti&ecirc;u. Hậu quả l&agrave; m&oacute;n nợ hơn 9.000 USD vượt xa khả năng thanh to&aacute;n. Sống c&ugrave;ng c&ocirc; bạn th&acirc;n, ph&ograve;ng ngủ của Rebecca tr&agrave;n ngập quần &aacute;o gi&agrave;y d&eacute;p, m&agrave; phần lớn trong số đ&oacute; chưa từng được d&ugrave;ng tới. Được bạn khuy&ecirc;n can bao lần, nhưng Rebecca chẳng hề c&oacute; dấu hiệu của sự tỉnh ngộ. Giữa l&uacute;c cần kiếm tiền để trả nợ, c&ocirc; n&agrave;ng lại bị mất việc. Lối tho&aacute;t duy nhất l&uacute;c đ&oacute; l&agrave; xin v&agrave;o l&agrave;m ở tờ tạp ch&iacute; thời trang. Nhưng con đường tới đ&iacute;ch quả thật ch&ocirc;ng gai, khi Rebecca lại được nhận v&agrave;o tạp ch&iacute; t&agrave;i ch&iacute;nh Successful Savings.</p>\r\n</div>\r\n<div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical">\r\n<div class="mCSB_draggerContainer">\r\n<div id="mCSB_2_dragger_vertical" class="mCSB_dragger">&nbsp;</div>\r\n</div>\r\n</div>', NULL, 0, 0, '2015-05-25 21:13:00', '2016-09-07 08:43:08', NULL, 1, '', 0, NULL, NULL, 1, NULL, 1, 1),
(10, 40, 'Kết Án', 'ket-an', 'Ket An', 'Bộ phim dựa trên một câu chuyện có thật về Betty Anne Waters, một bà mẹ phải một mình nuôi hai đứa con trong khi cố gắng đạt được bằng đại học Luật để bào chữa cho em trai mình, người đã bị buộc tội giết người. Cô đã phải học để lấy bằng cấp hai, bằng cấp ba, sau đó là', 'image/film/9d607b62f1bfb684f61bb29e1f0bd32b.jpg', 'image/film/conviction.jpg', NULL, '107 phút', 1, 2015, 1, 0, '<p>Bộ phim dựa tr&ecirc;n một c&acirc;u chuyện c&oacute; thật về Betty Anne Waters, một b&agrave; mẹ phải một m&igrave;nh nu&ocirc;i hai đứa con trong khi cố gắng đạt được bằng đại học Luật để b&agrave;o chữa cho em trai m&igrave;nh, người đ&atilde; bị buộc tội giết người. C&ocirc; đ&atilde; phải học để lấy bằng cấp hai, bằng cấp ba, sau đ&oacute; l&agrave; bằng đại học, bằng thạc sĩ luật v&agrave; cuối c&ugrave;ng đ&atilde; t&igrave;m được bằng chứng quan trọng gi&uacute;p giải oan cho em m&igrave;nh.</p>', NULL, 0, 1, '2015-05-25 21:17:22', '2016-09-07 08:43:08', NULL, 1, '7.2', 0, NULL, NULL, 1, NULL, 1, 1),
(11, 41, 'Săn Lùng', 'san-lung', 'San Lung', 'vào khoang cứu hộ khẩn cấp và đưa xuống mặt đất. Ngờ đâu, chính Morris lại là kẻ sắp đặt tất cả để biến ông thành mục tiêu săn đuổi của một nhóm khủng bố. May mắn thay, ông nhận được sự giúp đỡ từ cậu bé người địa phương Oskari (Onni Tommila) đang nhận nhiệm vụ săn linh', 'image/film/91093f0643bf1689e18e2c3593b21211.jpg', 'image/film/big-game.jpg', NULL, '86 phút', 1, 2015, 1, 0, '<p>v&agrave;o khoang cứu hộ khẩn cấp v&agrave; đưa xuống mặt đất. Ngờ đ&acirc;u, ch&iacute;nh Morris lại l&agrave; kẻ sắp đặt tất cả để biến &ocirc;ng th&agrave;nh mục ti&ecirc;u săn đuổi của một nh&oacute;m khủng bố. May mắn thay, &ocirc;ng nhận được sự gi&uacute;p đỡ từ cậu b&eacute; người địa phương Oskari (Onni Tommila) đang nhận nhiệm vụ săn linh dương để chứng tỏ sự trưởng th&agrave;nh theo tục lệ của người d&acirc;n nơi đ&acirc;y. Liệu chỉ với cung nỏ l&agrave;m vũ kh&iacute;, Tổng thống v&agrave; Oskari sẽ vượt qua mọi chuyện như thế n&agrave;o?</p>', NULL, 0, 0, '2015-05-25 21:19:20', '2016-09-07 08:43:08', NULL, 1, '6.3', 0, NULL, NULL, 1, NULL, 1, 1),
(12, 43, 'Động Đất San Andreas', 'dong-dat-san-andreas', 'Dong Dat San Andreas', 'Khi một nhà địa chấn học ko nổi tiếng cảnh báo về một trận động đất 12.7 độ, ko ai quan tâm đến cảnh báo của cô. Vì lẽ đó, cô một mình đưa gia đình đến nơi ai toàn trước khi trận động đất làm tan nát và khiến LA tách ra khỏi đất', 'image/film/6c6fe9261f2515d67736019981a85cb5.jpg', 'image/film/san-andreas-quake-2015.jpg', NULL, '83 phút', 1, 2015, 1, 0, '<p>Khi một nh&agrave; địa chấn học ko nổi tiếng cảnh b&aacute;o về một trận động đất 12.7 độ, ko ai quan t&acirc;m đến cảnh b&aacute;o của c&ocirc;. V&igrave; lẽ đ&oacute;, c&ocirc; một m&igrave;nh đưa gia đ&igrave;nh đến nơi ai to&agrave;n trước khi trận động đất l&agrave;m tan n&aacute;t v&agrave; khiến LA t&aacute;ch ra khỏi đất liền</p>', NULL, 0, 0, '2015-05-25 21:21:23', '2016-09-07 08:43:08', NULL, 1, '', 1, NULL, NULL, 1, NULL, 1, 1),
(13, 44, 'Đấu Trường Đẫm Máu', 'dau-truong-dam-mau', 'Dau Truong Dam Mau', 'David Chúa thấy mình bị buộc vào thế giới hoang dã của một trường võ sĩ giác đấu hiện đại, nơi mà những người đàn ông chiến đấu đến cùng cho vui chơi giải trí của quần chúng trực', 'image/film/0aa4d2cc84908eb940acac9fdf4982b7.jpg', 'image/film/arena.jpg', NULL, ' 94 phút', 1, 2015, 1, 0, '<p>David Ch&uacute;a thấy m&igrave;nh bị buộc v&agrave;o thế giới hoang d&atilde; của một trường v&otilde; sĩ gi&aacute;c đấu hiện đại, nơi m&agrave; những người đ&agrave;n &ocirc;ng chiến đấu đến c&ugrave;ng cho vui chơi giải tr&iacute; của quần ch&uacute;ng trực tuyến.</p>', NULL, 0, 0, '2015-05-25 21:22:50', '2016-09-07 08:43:08', NULL, 1, '4.8', 0, NULL, NULL, 1, NULL, 1, 1),
(14, 45, 'Báo Thù', 'bao-thu-ghajini', 'Bao Thu', 'Một chàng trai là chủ tịch của 1 tập đoàn máy tính lớn đem lòng yêu 1 cô gái đã tung tin đồn là cô gái đó là bạn gái của anh, cho dù 2 người chưa từng gặp mặt. Và rồi 2 người bắt đầu yêu nhau nhưng cô gái đã', 'image/film/2c0f199150b8a9717724ee2b7e9debef.jpg', 'image/film/ghajini-21.jpg', NULL, '184 phút', 1, 2015, 1, 0, '<p>Một ch&agrave;ng trai l&agrave; chủ tịch của 1 tập đo&agrave;n m&aacute;y t&iacute;nh lớn đem l&ograve;ng y&ecirc;u 1 c&ocirc; g&aacute;i đ&atilde; tung tin đồn l&agrave; c&ocirc; g&aacute;i đ&oacute; l&agrave; bạn g&aacute;i của anh, cho d&ugrave; 2 người chưa từng gặp mặt. V&agrave; rồi 2 người bắt đầu y&ecirc;u nhau nhưng c&ocirc; g&aacute;i đ&atilde; bị 1 t&ecirc;n tr&ugrave;m bu&ocirc;n người trả th&ugrave; v&igrave; đ&atilde; chỉ mặt tố c&aacute;o &ocirc;ng ta. Kết quả c&ocirc; bị giết chết c&ograve;n ch&agrave;ng trai th&igrave; bị đ&aacute;nh đến nỗi bị bệnh mất tr&iacute; nhớ sau mỗi 15 ph&uacute;t, những g&igrave; trước đ&oacute; sẽ qu&ecirc;n hết. Ch&agrave;ng trai l&agrave;m sao c&oacute; thể trả th&ugrave; được với tr&iacute; nhớ sao</p>', NULL, 0, 1, '2015-05-25 21:24:39', '2016-09-07 08:43:08', NULL, 1, '7.3', 0, NULL, NULL, 1, NULL, 1, 1),
(15, 47, 'Ghajini Phải Chết', 'ghajini-phai-chet', 'Ghajini Phai Chet', 'Một chàng trai là chủ tịch của 1 tập đoàn máy tính lớn đem lòng yêu 1 cô gái đã tung tin đồn là cô gái đó là bạn gái của anh, cho dù 2 người chưa từng gặp mặt. Và rồi 2 người bắt đầu yêu nhau nhưng cô gái đã', 'image/film/968789-ghajini-2-pst.jpg', 'image/film/ghajini-2.jpg', NULL, '', 1, 2015, 1, 1, '<p>Một ch&agrave;ng trai l&agrave; chủ tịch của 1 tập đo&agrave;n m&aacute;y t&iacute;nh lớn đem l&ograve;ng y&ecirc;u 1 c&ocirc; g&aacute;i đ&atilde; tung tin đồn l&agrave; c&ocirc; g&aacute;i đ&oacute; l&agrave; bạn g&aacute;i của anh, cho d&ugrave; 2 người chưa từng gặp mặt. V&agrave; rồi 2 người bắt đầu y&ecirc;u nhau nhưng c&ocirc; g&aacute;i đ&atilde; bị 1 t&ecirc;n tr&ugrave;m bu&ocirc;n người trả th&ugrave; v&igrave; đ&atilde; chỉ mặt tố c&aacute;o &ocirc;ng ta. Kết quả c&ocirc; bị giết chết c&ograve;n ch&agrave;ng trai th&igrave; bị đ&aacute;nh đến nỗi bị bệnh mất tr&iacute; nhớ sau mỗi 15 ph&uacute;t, những g&igrave; trước đ&oacute; sẽ qu&ecirc;n hết. Ch&agrave;ng trai l&agrave;m sao c&oacute; thể trả th&ugrave; được với tr&iacute; nhớ sao</p>', NULL, 0, 0, '2015-05-25 21:26:28', '2016-09-07 08:43:08', NULL, 1, '7.3', 0, NULL, NULL, 1, NULL, 1, 1),
(16, 48, 'Bầu Trời Sắt', 'bau-troi-sat', 'Bau Troi Sat', 'Trong khoảnh khắc cuối cùng của chiến tranh thế giới thứ II, chương trình không gian bí mật của Đức Quốc xã đã trốn tránh việc bị phá hủy bằng cách chạy trốn tới phía tối của Mặt Trăng.Trong suốt 70 năm ẩn dấu bí mật, Đức quốc xã đã cho xây dựng một pháo', 'image/film/470aba3413222a4a4233254798f709da.jpg', 'image/film/iron-sky.jpg', NULL, '92 phút', 1, 2015, 1, 1, '<p>Trong khoảnh khắc cuối c&ugrave;ng của chiến tranh thế giới thứ II, chương tr&igrave;nh kh&ocirc;ng gian b&iacute; mật của Đức Quốc x&atilde; đ&atilde; trốn tr&aacute;nh việc bị ph&aacute; hủy bằng c&aacute;ch chạy trốn tới ph&iacute;a tối của Mặt Trăng.Trong suốt 70 năm ẩn dấu b&iacute; mật, Đức quốc x&atilde; đ&atilde; cho x&acirc;y dựng một ph&aacute;o đ&agrave;i kh&ocirc;ng gian khổng lồ với một hạm đội c&aacute;c phi thuyền tối t&acirc;n. Năm 2018,với sức mạnh của c&ocirc;ng nghệ v&agrave; lực lượng đ&ocirc;ng đảo.Ch&uacute;ng trở lại Tr&aacute;i Đất để lấy lại những g&igrave; thuộc về ch&uacute;ng.</p>', NULL, 0, 0, '2015-05-25 21:27:42', '2016-09-07 08:43:08', NULL, 1, '6.0', 0, NULL, NULL, 1, NULL, 1, 1),
(17, 49, 'Ông Nội Tôi Là Cương Thi', 'ong-noi-toi-la-cuong-thi', 'Ong Noi Toi La Cuong Thi', 'Bộ phim Sifu vs vampire kể về hai tên giang hồ vô tình đánh thức một xác chết nhiều năm sau một vụ cá cược. Từ đó hồi sinh hàng loạt cương thi khác, các xác chết cương thi tràn ra đường phố HongKong và gây ra cảnh hỗn loạn. Mọi chuyện bắt đầu rối rắm và', 'image/film/108144-sifu-vs-vampire-pst.jpg', 'image/film/sifu-vs.-vampire.jpg', NULL, '95 phút', 1, 2015, 1, 1, '<p>Phim &Ocirc;ng T&ocirc;i L&agrave; Cương Thi &ndash; Sifu vs Vampire do đạo diễn Trần Dực Hằng phụ tr&aacute;ch thực hiện. Khi Nicky v&agrave; Boo nhận lệnh của &ocirc;ng chủ đi t&igrave;m l&atilde;o sư phụ phong thủy để khai quật một ng&ocirc;i mộ đ&atilde; bị phong ấn nhiều năm, l&atilde;o sư phụ kh&ocirc;ng đồng &yacute;. Trước sự phản đối v&agrave; cảnh b&aacute;o của l&atilde;o sư phụ về khai quật ng&ocirc;i mộ, họ kh&ocirc;ng tin về chuyện ma quỷ v&agrave; đ&atilde; đ&aacute;nh thức một ma lực rất lớn l&agrave;m hồi sinh h&agrave;ng loạt c&aacute;c cương thi kh&aacute;c, khiến ch&uacute;ng tr&agrave;n ra khắp đường phố Hongkong. Mọi thứ trở n&ecirc;n o&aacute;i ăm hơn khi đo&agrave;n cương thi n&agrave;y tiến v&agrave;o một phim trường đang quay một bộ phim về cuộc x&acirc;m lăng của bọn cương thi.</p>', NULL, 0, 0, '2015-05-25 21:29:18', '2016-09-07 08:43:08', NULL, 1, '5.3', 1, NULL, NULL, 1, NULL, 1, 1),
(18, 50, 'Trò chơi sinh tồn', 'tro-choi-sinh-ton', 'Tro choi sinh ton', 'Tại một trường trung học, một giáo viên đang giảng bài bất thình lình bị nổ tung sọ ngay bên bục giảng. Kế sau đó, những vụ nổ xảy ra liên tiếp. Shun Takahata và những học sinh trong lớp bị ép buộc phải cùng tham gia một trò chơi sinh tử mà họ không hề biết ai đứng đằng', 'image/film/c8e869f5eddabb814ca1adb02450e303.jpg', 'image/film/as-the-gods-will.jpg', NULL, '116 phút', 1, 2015, 2, 0, '<p>Tại một trường trung học, một gi&aacute;o vi&ecirc;n đang giảng b&agrave;i bất th&igrave;nh l&igrave;nh bị nổ tung sọ ngay b&ecirc;n bục giảng. Kế sau đ&oacute;, những vụ nổ xảy ra li&ecirc;n tiếp. Shun Takahata v&agrave; những học sinh trong lớp bị &eacute;p buộc phải c&ugrave;ng tham gia một tr&ograve; chơi sinh tử m&agrave; họ kh&ocirc;ng hề biết ai đứng đằng sau chuyện n&agrave;y, tại sao v&agrave; mọi việc sẽ đi về đ&acirc;u?</p>', NULL, 0, 1, '2015-05-25 21:31:10', '2016-09-07 08:43:08', NULL, 1, '6.4', 0, NULL, NULL, 1, NULL, 1, 1),
(19, 51, 'Đảo Hải Tặc', 'dao-hai-tac', 'Dao Hai Tac', 'Phim One Piece là chuyện về cậu bé Monkey D. Luffy rất ngưỡng mộ những hải tặc. Chuyện phim One Piece bắt đầu khi một ngày do ăn nhầm Trái Ác Quỷ, bị biến thành người cao su và sẽ không bao giờ biết hơi. 10 năm sau sự việc đó, cậu rời quê mình và kiếm đủ 10 thành viên để', 'image/film/e14f56ba299adffdd8fc6635af27388f.jpg', 'image/film/one-piece.jpg', NULL, '', 1, 2015, 2, 0, '<p>Phim One Piece l&agrave; chuyện về cậu b&eacute; Monkey D. Luffy rất ngưỡng mộ những hải tặc. Chuyện phim One Piece bắt đầu khi một ng&agrave;y do ăn nhầm Tr&aacute;i &Aacute;c Quỷ, bị biến th&agrave;nh người cao su v&agrave; sẽ kh&ocirc;ng bao giờ biết hơi. 10 năm sau sự việc đ&oacute;, cậu rời qu&ecirc; m&igrave;nh v&agrave; kiếm đủ 10 th&agrave;nh vi&ecirc;n để th&agrave;nh 1 nh&oacute;m cướp biển, biệt hiệu Hải tặc Mũ Rơm. Khi đ&oacute; của phi&ecirc;u lưu t&igrave;m kiếm kho b&aacute;u One Piece bắt đầu. Trong cuộc phi&ecirc;u lưu t&igrave;m kiếm One Piece, băng Hải tặc mũ rơm</p>', NULL, 0, 0, '2015-05-25 21:32:45', '2016-09-07 08:43:08', NULL, 1, '', 0, NULL, NULL, 1, NULL, 1, 1),
(20, 53, 'Diện Mạo Hoàng Đế', 'dien-mao-hoang-de', 'Dien Mao Hoang De', 'Đây là dự án truyền hình mới nhất của nam ca sĩ - diễn viên Seo In Guk. Anh sẽ vào vai Hoàng tử Gwanghee, vốn là con trai của một nàng hầu nên tư cách thừa kế ngai vàng của Gwanghee bị nghi ngờ. Trước ngày lên ngai vàng, Gwanghee từng bị truất ngôi và phải', 'image/film/929122-kingface-pst.jpg', 'image/film/the-kings-face.jpg', NULL, '', 1, 2015, 2, 0, '<p>Đ&acirc;y l&agrave; dự &aacute;n truyền h&igrave;nh mới nhất của nam ca sĩ - diễn vi&ecirc;n Seo In Guk. Anh sẽ v&agrave;o vai Ho&agrave;ng tử Gwanghee, vốn l&agrave; con trai của một n&agrave;ng hầu n&ecirc;n tư c&aacute;ch thừa kế ngai v&agrave;ng của Gwanghee bị nghi ngờ. Trước ng&agrave;y l&ecirc;n ngai v&agrave;ng, Gwanghee từng bị truất ng&ocirc;i v&agrave; phải t&igrave;m c&aacute;ch vượt qua nhiều mối nguy hiểm chết người. Nhưng nhờ việc học được thuật xem tướng, Gwanghee dần biết c&aacute;ch bảo vệ bản th&acirc;n v&agrave; cuối c&ugrave;ng trở th&agrave;nh vị vua thứ 15 của triều đại</p>', NULL, 0, 0, '2015-05-25 21:36:31', '2016-09-07 08:43:08', NULL, 1, '', 0, NULL, NULL, 1, NULL, 1, 1),
(21, 54, 'Trại Giam Kiểu Mỹ 2', 'trai-giam-kieu-my-2', 'Trai Giam Kieu My 2', 'Orange Is the New Black 2 tiếp tục miêu tả chân thực cuộc sống có phần thác loạn của những nữ tù nhân khi họ phải tìm mọi cách để sống sót trong tù. Sau việc làm rất tệ của cô, thì lần này Piper đã được chuyển đến một nhà tù khác', 'image/film/635490-orange-new-black-season-2-pst.png', 'image/film/orange-is-the-new-black.jpg', NULL, '', 1, 2015, 2, 0, '<p>Orange Is the New Black 2 tiếp tục mi&ecirc;u tả ch&acirc;n thực cuộc sống c&oacute; phần th&aacute;c loạn của những nữ t&ugrave; nh&acirc;n khi họ phải t&igrave;m mọi c&aacute;ch để sống s&oacute;t trong t&ugrave;. Sau việc l&agrave;m rất tệ của c&ocirc;, th&igrave; lần n&agrave;y Piper đ&atilde; được chuyển đến một nh&agrave; t&ugrave; kh&aacute;c c&oacute; phần khắc nghiệt hơn. Liệu lần n&agrave;y Piper sẽ phải l&agrave;m sao để sống s&oacute;t trong nơi n&agrave;y đ&acirc;y?</p>', NULL, 0, 0, '2015-05-25 21:38:36', '2016-09-07 08:43:08', NULL, 1, '', 0, NULL, NULL, 1, NULL, 1, 1),
(22, 55, 'Kỳ Án Nhà Thanh 2', 'ky-an-nha-thanh-2', 'Ky An Nha Thanh 2', 'Một năm trước, 2 người vợ Lệ Thư, Hương Dung và con cái của Thi Thế Luân (Âu Dương Chấn Hoa) chết trong vụ đắm thuyền, từ sự việc đó đã làm thay đổi quan điểm sống của ông ta, ông quyết định sống những ngày tháng an', 'image/film/871121-kyannhathanh2-pst.jpg', 'image/film/a-pillow-case-of-mystery-2.jpg', NULL, '20 tập', 1, 2015, 2, 0, '<div id="mCSB_2_container" class="mCSB_container" dir="ltr">\r\n<p>Một năm trước, 2 người vợ Lệ Thư, Hương Dung v&agrave; con c&aacute;i của Thi Thế Lu&acirc;n (&Acirc;u Dương Chấn Hoa) chết trong vụ đắm thuyền, từ sự việc đ&oacute; đ&atilde; l&agrave;m thay đổi quan điểm sống của &ocirc;ng ta, &ocirc;ng quyết định sống những ng&agrave;y th&aacute;ng an nh&agrave;n, &ocirc;ng dẫn mẹ Triệu Nguyệt Nga (L&yacute; Phụng) v&agrave; người vợ ch&iacute;nh thức B&agrave;ng C&aacute;t &Aacute;i (Lữ San) v&agrave; vợ hai Giả T&uacute; Nguyễn Ngọc (Đ&agrave;o Doanh Doanh) đi du ngoạn tại huyện Xian Yu, kết quả Thế Lu&acirc;n hữu duy&ecirc;n gặp được Trẫm Ti&ecirc;n (c&aacute;i gối mới &ndash; L&yacute; Tư Tiệp) v&agrave; s&aacute;nh duy&ecirc;n được 2 người vợ kh&aacute;c trong cuộc đời l&agrave; Ng&ocirc; Qu&acirc;n Nhu (Tuy&ecirc;n Huy&ecirc;n) v&agrave; Lục Tiểu Điệp (Đường Ninh)</p>\r\n</div>\r\n<div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical">&nbsp;</div>', NULL, 0, 0, '2015-05-25 21:40:50', '2016-09-07 08:43:08', NULL, 1, '', 0, NULL, NULL, 1, NULL, 1, 1),
(23, 56, 'Cặp Đôi Ngoại Cảm', 'cap-doi-ngoai-cam', 'Cap Doi Ngoai Cam', 'Bộ phim dựa trên một tác phẩm truyện tranh nổi tiếng cùng tên, trong đó Park Yoochun sẽ vào vai Choi Moogak bị vô cảm (mất đi vị giác, xúc giác, cảm giác đau đớn hay rung cảm), một cảnh sát truy đuổi kẻ giết người hàng loạt sau khi người em gái duy nhất của mình bị', 'image/film/995495-naemsaereul-boneun-sonyeo-megabox-pst.jpg', 'image/film/the-girl-who-sees-smells.jpg', NULL, '16 tập', 1, 2015, 2, 0, '<p>Bộ phim dựa trên một tác phẩm truyện tranh nổi tiếng cùng tên, trong đó Park Yoochun sẽ vào vai Choi Moogak bị vô cảm (mất đi vị giác, xúc giác, cảm giác đau đớn hay rung cảm), một cảnh sát truy đuổi kẻ giết người hàng loạt sau khi người em gái duy nhất của mình bị mất sau vụ án bí ẩn đó.</p>\r\n', NULL, 0, 0, '2015-05-25 21:42:36', '2016-09-07 08:43:08', NULL, 1, '8.6', 0, NULL, NULL, 1, 'sdgasgdshdshdshdsh', 1, 1),
(24, 59, 'Hậu Trường', 'hau-truong', 'Hau Truong', 'Đây là bộ phim kể về hậu trường, những gì xảy ra phía sau màn ảnh của các chương trình truyền hình (variety show). Baek Seung Chan (Kim Soo Hyun) trong vai 1 đạo diễn muốn thực hiện 1 chương trình lớn. Anh ấy cộng tác với Cindy (IU), ngôi sao nhạc Pop và Tak Ye Ji (Gong Hyo Jin), đạo diễn âm', 'image/film/163730-producer-2015-megabox-pst1.jpg', 'image/film/producer_poster5.png', NULL, '16', 1, 2015, 2, 0, '<p>Đ&acirc;y l&agrave; bộ phim kể về hậu trường, những g&igrave; xảy ra ph&iacute;a sau m&agrave;n ảnh của c&aacute;c chương tr&igrave;nh truyền h&igrave;nh (variety show). Baek Seung Chan (Kim Soo Hyun) trong vai 1 đạo diễn muốn thực hiện 1 chương tr&igrave;nh lớn. Anh ấy cộng t&aacute;c với Cindy (IU), ng&ocirc;i sao nhạc Pop v&agrave; Tak Ye Ji (Gong Hyo Jin), đạo diễn &acirc;m nhạc v&agrave; Ra Jun Mo (Cha Tae Hyun) l&agrave; 1 đạo diễn gạo cội kh&aacute;c.</p>', NULL, 0, 0, '2015-05-25 21:44:33', '2016-09-07 08:43:08', NULL, 1, '', 0, NULL, NULL, 1, NULL, 1, 1),
(25, 60, 'Survivor 2015', 'survivor-2015', 'Survivor 2015', 'A Foreign Service Officer in London tries to prevent a terrorist attack set to hit New York, but is forced to go on the run when she is framed for crimes she did not commit.', 'image/film/survivor.jpg', 'image/film/survivor_poster.jpg', NULL, '96 phút', 1, 2015, 1, 1, '<p>A State Department employee newly posted to the American embassy in London is charged with stopping terrorists from getting into the U.S. That puts her right in the line of fire and she is targeted for death and framed for crimes. Discredited, she is forced to go on the run while she tries to clear her name and stop a large-scale terrorist attack set for New Year\'s Eve in Times Square.</p>', NULL, 0, 0, '2015-06-17 08:43:20', '2016-09-07 08:43:08', NULL, 1, '5.5', 0, NULL, NULL, 1, NULL, 1, 1),
(26, 62, 'Jurassic Park 3', 'jurassic-park-3', 'Jurassic Park 3', 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.', 'image/film/jurassic-park-3.jpg', 'image/film/jurassic-park-3-poster.jpg', NULL, '92', 1, 2015, 2, 1, '<p>A decidedly odd couple with ulterior motives convince Dr. Alan Grant to go to Isla Sorna (the second InGen dinosaur lab.), resulting in an unexpected landing...and unexpected new inhabitants on the island.</p>\r\n', NULL, 0, 0, '2015-06-29 15:42:41', '2016-08-07 08:40:17', NULL, 1, '5.9', 0, NULL, NULL, 1, '', 1, 1),
(27, 66, 'Tân Tam Quốc Diễn Nghĩa 2010', 'tan-tam-quoc-dien-nghia-2010', 'Tan Tam Quoc Dien Nghia 2010', 'Bắt đầu viết kịch bản từ năm 2004, qua 5 lần chỉnh sửa, chính thức bấm máy vào tháng 9/2008. Bộ phim quy tụ lực lượng diễn viên hùng hậu với dàn sao đến từ cả Trung Quốc đại lục, Hongkong và Đài Loan với kinh phí đầu tư khổng lồ. Bộ phim nói về triều đại Đông Hán Võ Đế tới Tây Tấn Võ Đế, lịch sử kéo dài gần 100 năm. ', 'image/film/tam-quoc-dien-nghia-three-kingdoms-2010.png', 'image/film/maxresdefault.jpg', NULL, '85 tập', 1, 2015, 2, 0, '<p>Bắt đầu viết kịch bản từ năm 2004, qua 5 lần chỉnh sửa, chính thức bấm máy vào tháng 9/2008. Bộ phim quy tụ lực lượng diễn viên hùng hậu với dàn sao đến từ cả Trung Quốc đại lục, Hongkong và Đài Loan với kinh phí đầu tư khổng lồ. Bộ phim nói về triều đại Đông Hán Võ Đế tới Tây Tấn Võ Đế, lịch sử kéo dài gần 100 năm. Bộ phim này căn cứ vào 1 trong tứ đại danh tác của Trung Quốc - "Tam Quốc Diễn Nghĩa", cải biên thành phim. Tam Quốc là thời đại chiến loạn chiến sự liên miên, khói lửa chiến tranh tràn lan khắp nơi. Đồng thời cũng là thời kỳ có nhiều nhân tài xuất hiện. Những vị mưu sĩ tài ba, những nhà quân sự lỗi lạc đã có dịp phô triển hùng tài đại lược, trí tuệ dăm thước của mình trong thời đại chiến loạn. Đúng như câu "Loạn thế xuất anh tài".Chú trọng tới việc tranh hùng của Ngụy - Thục - Ngô tam hùng. Miêu tả rõ tính cách của từng nhân vật theo đúng nguyên tác :</p>\r\n\r\n<p>* Lưu Bị - Chính thống hiền quân.<br />\r\n* Tào Tháo - Giáp thiên tứ linh chư hầu.<br />\r\n* Gia Cát Lượng - Tầm nhìn cao xa, đoán việc như thần.<br />\r\n* Quan Vũ - Phá ngũ quan, trãm lục tướng, đơn đao phó hội, thuỷ yểm, nghĩa thích Tào Tháo...<br />\r\n* Ngoài ra : Triệu Vân trung thành; Trương Phi lỗ mãng; Chu Du ganh tị; Lỗ Túc trung hậu; Tư Mã Ý thâm trầm... đều được miêu tả thành công.</p>\r\n\r\n<p>Những cảnh chiến tranh được phác hoạ lại 1 cách quy mô với trận chiến Dục Thủy, Xích Bích...Tiết tấu dồn dập, náo nhiệt, tạo cảm giác cho người xem tựa hồ như đang trực tiếp tham gia với chiến sự của Tam Quốc.</p>\r\n\r\n<p>Bộ phim này từ Biên đạo, thu hình, mỹ thuật đều được thực hiện bởi tổ quay phim và đội ngũ diễn viên nổi tiếng ở Trung Quốc.</p>\r\n\r\n<p> </p>\r\n', NULL, 0, 0, '2016-05-07 05:27:27', '2016-09-07 08:43:08', NULL, 2, '12.89', 0, NULL, NULL, 0, '', 1, 1),
(28, 71, 'Cuộc Đua Tuyệt Chủng', 'cuoc-dua-tuyet-chung', 'Cuoc Dua Tuyet Chung', 'Phim nói về hàng loạt các nghiên cứu bí mật nhằm ngăn chặn sự tuyệt chủng của các loài động vật quý hiếm. Phim có sự tham gia của các diễn viên như Elon Musk, Joel Sartore, Louie Psihoyos...', 'image/film/re_festival_poster.jpg', 'image/film/racing-extinction-poster.jpg', NULL, '90 phút', 1, 2015, 1, 1, '', NULL, 0, 0, '2016-05-22 05:43:30', '2016-08-07 02:25:00', NULL, 2, '', 0, NULL, NULL, 1, NULL, 1, 1),
(29, 73, 'CHIẾN TRANH GIỮA CÁC VÌ SAO 7: THẦN LỰC THỨC TỈNH', 'chien-tranh-giua-cac-vi-sao-7-than-luc-thuc-tinh', 'CHIEN TRANH GIUA CAC VI SAO 7: THAN LUC THUC TINH', 'Phim lấy bối cảnh 30 năm sau sự kiện của Star Wars phần IV – Return of the Jedi (Sự trở lại của Jedi). Bộ phim sẽ theo chân các nhân vật quen thuộc như Luke, Han Solo, Công chúa Leia… đến một hành tinh lạ với mục đích thu thập mẫu vật. ', 'image/film/startwars.jpg', 'image/film/star-wars1.jpg', NULL, '136 phút', 1, 2015, 1, 1, '<p>Phim lấy bối cảnh 30 năm sau sự kiện của Star Wars phần IV &ndash; Return of the Jedi (Sự trở lại của Jedi). Bộ phim sẽ theo ch&acirc;n c&aacute;c nh&acirc;n vật quen thuộc như Luke, Han Solo, C&ocirc;ng ch&uacute;a Leia&hellip; đến một h&agrave;nh tinh lạ với mục đ&iacute;ch thu thập mẫu vật. Nhưng họ kh&ocirc;ng ngờ m&igrave;nh sắp đ&aacute;nh thức một kẻ th&ugrave; nguy hiểm bậc nhất vũ trụ hiện đang ngủ y&ecirc;n nơi đ&acirc;y. Star Wars: The Force Awakens sẽ được chỉ đạo bởi một người mới, đạo diễn J.J. Abrams, thay cho người s&aacute;ng tạo George Lucas, v&agrave; sẽ mở đầu cho bộ 3 phần phim tiếp theo của loạt phim n&agrave;y.</p>', NULL, 0, 0, '2016-05-22 06:54:57', '2016-09-07 08:43:08', NULL, 2, '', 0, NULL, NULL, 1, '', 1, 1),
(30, 74, 'Người về từ cõi chết', 'nguoi-ve-tu-coi-chet', 'Nguoi ve tu coi chet', 'The Revenant dựa trên câu chuyện có thật, phim kể về người thợ săn Hugh Glass (Leonardo Dicaprio thủ vai). Sau một trận chiến đẫm máu với những người Mỹ bản địa, Hugh bị thương và bị đồng đội tàn nhẫn bỏ lại trong khu núi tuyết giá rét. Từ đó, Hugh Glass phải làm tất cả mọi thứ để có thể tồn tại giữa cái lạnh tàn bạo, những động vật ăn thịt và chiến tranh với những bộ lạc nơi vùng núi hoang vu. ', 'image/film/poster.medium.jpg', 'image/film/the-revenant-nguoi-ve-tu-coi-chet-54483.jpg', NULL, '151 phút', 1, 2015, 1, 1, '<p><strong>The Revenant</strong> dựa tr&ecirc;n c&acirc;u chuyện c&oacute; thật, phim kể về người thợ săn <strong>Hugh Glass</strong> (Leonardo Dicaprio thủ vai). Sau một trận chiến đẫm m&aacute;u với những người Mỹ bản địa, Hugh bị thương v&agrave; bị đồng đội t&agrave;n nhẫn bỏ lại trong khu n&uacute;i tuyết gi&aacute; r&eacute;t. Từ đ&oacute;, Hugh Glass phải l&agrave;m tất cả mọi thứ để c&oacute; thể tồn tại giữa c&aacute;i lạnh t&agrave;n bạo, những động vật ăn thịt v&agrave; chiến tranh với những bộ lạc nơi v&ugrave;ng n&uacute;i hoang vu. <br /><br />Nhờ &yacute; ch&iacute; ki&ecirc;n cường, người thợ săn đ&atilde; sống s&oacute;t một c&aacute;ch kỳ diệu, một m&igrave;nh băng qua qu&atilde;ng đường d&agrave;i hơn <strong>3.000 dặm</strong> (4.828 km) để trở về v&agrave; trả th&ugrave; được <strong>John Fitzgerald</strong> (Tom Hardy thủ vai) &ndash; kẻ từng l&agrave; bạn của m&igrave;nh năm xưa.<br /><br />Điều đặc biệt l&agrave; bộ phim n&agrave;y quay tại một địa điểm ngo&agrave;i trời v&ocirc; c&ugrave;ng hoang vu hẻo l&aacute;nh, chưa ai đặt ch&acirc;n tới, v&agrave; chỉ sử dụng &aacute;nh s&aacute;ng tự nhi&ecirc;n.</p>', NULL, 0, 0, '2016-05-22 08:58:23', '2016-09-07 08:43:08', NULL, 2, '', 0, NULL, NULL, 0, '', 1, 1),
(31, 82, 'Mật vụ KINGSMAN', 'mat-vu-kingsman', 'Mat vu KINGSMAN', 'Phim Mật vụ Kingsman kể về một tổ chức điệp viên cực kỳ bí mật trong quá trình tuyển mộ Eggs một đứa trẻ đường phố không có học thức gì nhưng cực thông minh và có tố chất trở thành một điệp viên công nghệ cao', 'image/film/mat-vu-kingsman.jpg', 'image/film/1-d1211.png', NULL, '129 phút', 1, 2015, 1, 1, '<p>Phim Mật vụ Kingsman kể về một tổ chức điệp vi&ecirc;n cực kỳ b&iacute; mật trong qu&aacute; tr&igrave;nh tuyển mộ Eggs một đứa trẻ đường phố kh&ocirc;ng c&oacute; học thức g&igrave; nhưng cực th&ocirc;ng minh v&agrave; c&oacute; tố chất trở th&agrave;nh một điệp vi&ecirc;n c&ocirc;ng nghệ cao, một người c&oacute; triển vọng v&agrave;o chương tr&igrave;nh đ&agrave;o tạo điệp vi&ecirc;n v&ocirc; c&ugrave;ng khắc nghiệt nhằm đối ph&oacute; với c&aacute;c hiểm họa to&agrave;n cầu phần tử khủng bố l&agrave; thi&ecirc;n t&agrave;i c&ocirc;ng nghệ biến chất...<br /><br /></p>\r\n<div><img src="http://bomtan.biz/upload/image/film/93e902df-b5a2-45c8-bcb9-1be0c2ac1cea.jpg" alt="" width="600" height="339" /></div>\r\n<p><br /><br />Liệu qu&yacute; &ocirc;ng mật vụ Harry d&agrave;y dặn kinh nghiệm v&agrave; nữ điệp vi&ecirc;n trẻ tuổi Roxy c&oacute; thể huấn luyện t&ecirc;n điệp vi&ecirc;n kh&oacute; ưa n&agrave;y để c&ugrave;ng thực hiện nhiệm vụ chống lại &aacute;c nh&acirc;n Richmond Valentine đang &acirc;m mưu x&oacute;a sổ phần lớn d&acirc;n cư tr&ecirc;n tr&aacute;i đất th&agrave;nh một thế giới mới?<br /><br /></p>\r\n<div><img src="http://bomtan.biz/upload/image/film/hinh_anh_kingsman_the_secret_service_10.jpg" alt="" width="612" height="344" /></div>\r\n<p>&nbsp;</p>', NULL, 0, 0, '2016-05-22 09:05:22', '2016-09-07 08:43:08', NULL, 2, '7.8', 0, NULL, NULL, 0, NULL, 1, 1),
(32, 91, 'Dị nhân: Khải huyền', 'di-nhan-khai-huyen', 'Di nhan: Khai huyen', 'X-Men: Apocalypse là bộ phim siêu anh hùng dựa trên X-Men, những nhân vật xuất hiện trong Marvel Comics. Bộ phim là phần tiếp theo của X-Men: Days of Future Past và là phần thứ 9 trong loạt phim X-Men.', 'image/film/mv5bmju1odm1mzyxn15bml5banbnxkftztgwota4nde2ode._v1_sx640_sy720_.jpg', 'image/film/561d41eca2c3f3bfd09d9b04582ea2c2-x-men-apocalypse-latino-1463774848.jpg', NULL, '144 phút', 1, 2015, 1, 0, '<p><strong>Apocalypse</strong> l&agrave; dị nh&acirc;n đầu ti&ecirc;n v&agrave; h&ugrave;ng mạnh nhất của vũ trụ X-Men, đ&atilde; t&iacute;ch lũy được rất nhiều quyền năng đột biến kh&aacute;c nhau, trở th&agrave;nh kẻ bất tử v&agrave; bất khả chiến bại. Sau khi tỉnh dậy từ giấc ngủ h&agrave;ng ng&agrave;n năm, hắn cảm thấy thất vọng với thế giới n&agrave;y v&agrave; năng lực đ&aacute;ng sợ nhất của hắn l&agrave; khống chế những người kh&aacute;c v&agrave; biến họ th&agrave;nh kỵ sĩ của m&igrave;nh, nhằm tẩy sạch nh&acirc;n loại v&agrave; tạo ra một trật tự thế giới mới v&agrave; qua đ&oacute;, hắn sẽ trị v&igrave; n&oacute;. Số phận của Tr&aacute;i Đất phải đối mặt với t&igrave;nh huống ng&agrave;n c&acirc;n treo sợi t&oacute;c, Raven c&ugrave;ng với sự gi&uacute;p đỡ của Gi&aacute;o Sư X buộc phải dẫn dắt một đội X-Men trẻ tuổi nhằm chống lại kẻ th&ugrave; lớn nhất từ trước đến nay v&agrave; cứu rỗi nh&acirc;n loại khỏi sự diệt chủng.<br /><br /></p>\r\n<div><img src="https://images2-focus-opensocial.googleusercontent.com/gadgets/proxy?container=focus&amp;gadget=a&amp;no_expand=1&amp;refresh=604800&amp;url=http://image.phimmoi.net/post/2016/05/21/amazing-x-men-apocalypse-movie-4k-wallpaper-680x425.jpg" alt="Dị Nh&acirc;n 7: Cuộc chiến chống Apocalypse - X-Men: Apocalypse" /></div>\r\n<p><br /><br />C&acirc;u chuyện trong <strong>X-Men: Apocalypse</strong> diễn ra 10 năm sau c&aacute;c sự kiện trong <strong>X-Men: Days of Future Past</strong>, thiết lập lại to&agrave;n bộ thời gian của bộ truyện. L&uacute;c n&agrave;y Magneto đang trốn ở Ba Lan, sống một cuộc sống b&igrave;nh thường với người phụ nữ &ocirc;ng y&ecirc;u. Nhưng sự mất m&aacute;t của c&ocirc; ấy đẩy &ocirc;ng v&agrave;o thế giới của sự tuyệt vọng v&agrave; b&oacute;ng tối. &Ocirc;ng ta t&igrave;m đến <strong>Apocalypse</strong> như một vị cứu tinh, một vị thần v&agrave; cảm thấy m&atilde;n nguyện khi được ở b&ecirc;n &ocirc;ng ta c&ugrave;ng 3 th&agrave;nh vi&ecirc;n kh&aacute;c trong nh&oacute;m <strong>Tứ kỵ</strong> gồm <strong>Storm, Psylocke v&agrave; Archangel </strong>.</p>', NULL, 0, 0, '2016-05-22 15:31:41', '2016-09-07 08:43:08', NULL, 2, '7.7', 0, NULL, NULL, 1, NULL, 1, 1),
(33, 99, 'Naruto Shippuuden', 'naruto-shippuuden', 'Naruto Shippuuden', 'Sau khi huấn luyện 2 năm rưỡi với Jiraiya, Naruto trở về làng Lá, đoàn tụ với những người bạn cậu đã chia tay, và lập lại Nhóm 7, giờ được gọi là Nhóm Kakashi, với Sai thế chỗ Sasuke. Tất cả những người bạn của Naruto đều đã trưởng thành và thăng cấp.', 'image/film/4984b3f77c488fd8f81009b51687c392_1364544877.jpg', 'image/film/cf5b1c35b7629f8a8ce618a2a18e586e_1396405819.jpg', NULL, '461 tập', 1, 2015, 1, 1, '<p>Naruto (&mdash;ナルト&mdash; NARUTO?) l&agrave; loạt manga Nhật Bản bằng văn bản v&agrave; minh họa bởi t&aacute;c giả Kishimoto Masashi, đ&atilde; được dựng th&agrave;nh anime (phim hoạt h&igrave;nh Nhật). Nh&acirc;n vật ch&iacute;nh l&agrave; Uzumaki Naruto, một thiếu ni&ecirc;n ồn &agrave;o, hiếu động, một ninja lu&ocirc;n muốn t&igrave;m c&aacute;ch khẳng định m&igrave;nh để được mọi người c&ocirc;ng nhận, rất muốn trở th&agrave;nh Hokage (Hỏa Ảnh) - người l&atilde;nh đạo ninja cả l&agrave;ng, được tất cả mọi người k&iacute;nh trọng. Kishimoto ban đầu đ&atilde; ph&aacute;c hoạ Naruto trong một ấn bản Akamaru Jump v&agrave;o th&aacute;ng 8 năm 1997.[2] Sự kh&aacute;c biệt ở chỗ Naruto l&agrave; con trai của Hồ Li Ch&iacute;n Đu&ocirc;i thay v&igrave; l&agrave; người chứa đựng, v&agrave; c&acirc;u chuyện được đặt trong bối cảnh hiện đại hơn.[3] Phi&ecirc;n bản ban đầu của Naruto n&agrave;y đ&atilde; c&oacute; khả năng biến th&agrave;nh một phụ nữ quyến rũ &ndash; nhưng khi cậu ta l&agrave;m vậy, một c&aacute;i đu&ocirc;i c&aacute;o xuất hiện. Kishimoto sau đ&oacute; mới s&aacute;ng t&aacute;c lại c&acirc;u chuyện th&agrave;nh hiện trạng, v&agrave; được ph&aacute;t h&agrave;nh lần đầu bởi Shueisha v&agrave;o năm 1999 trong ấn bản thứ 43 của tạp ch&iacute; Shonen Jump H&agrave;ng tuần tại Nhật. Đến tập 36, bộ manga đ&atilde; b&aacute;n được hơn 71 triệu bản tại Nhật.[4] Tập truyện được cấp giấy ph&eacute;p cho việc ph&aacute;t h&agrave;nh bản dịch sang tiếng Anh bởi Viz Media. Được đăng nhiều kỳ tr&ecirc;n tạp ch&iacute; Shonen Jump, Naruto đ&atilde; trở th&agrave;nh loạt manga b&aacute;n chạy nhất của c&ocirc;ng ty.[5] Cho đến 2 th&aacute;ng 4 năm 2008, 28 tập đầu ti&ecirc;n của bộ truyện đ&atilde; c&oacute; mặt trong tiếng Anh.</p>', NULL, 0, 0, '2016-05-24 15:22:21', '2016-09-07 08:43:08', NULL, 2, '', 0, NULL, NULL, 1, NULL, 1, 1),
(34, 103, 'Cậu bé rừng xanh', 'cau-be-rung-xanh', 'Cau be rung xanh', 'Phim THE JUNGLE BOOK 2016 nói về chuyến phiêu lưu của Mowgli – một cậu bé mồ côi được đàn chó sói nuôi dưỡng trong rừng già Ấn Độ. Ngày qua ngày, Mowgli cảm thấy mình không còn được chào đón ở mái nhà tự nhiên này nữa,', 'image/film/cau-be-rung-xanh-the-jungle-book-201603165.jpg', 'image/film/cau-be-rung-xanh-the-jungle-book-2016-201603726.jpg', NULL, '100 phút', 1, 2016, 1, 1, '<p>Phim THE JUNGLE BOOK 2016 n&oacute;i về chuyến phi&ecirc;u lưu của Mowgli &ndash; một cậu b&eacute; mồ c&ocirc;i được đ&agrave;n ch&oacute; s&oacute;i nu&ocirc;i dưỡng trong rừng gi&agrave; Ấn Độ. Ng&agrave;y qua ng&agrave;y, Mowgli cảm thấy m&igrave;nh kh&ocirc;ng c&ograve;n được ch&agrave;o đ&oacute;n ở m&aacute;i nh&agrave; tự nhi&ecirc;n n&agrave;y nữa, bởi một con hổ hung dữ t&ecirc;n Shere Khan tuy&ecirc;n bố sẽ ti&ecirc;u diệt những sinh vật c&oacute; khả năng g&acirc;y n&ecirc;n hiểm họa, sau khi hắn bị lo&agrave;i người tấn c&ocirc;ng. Buộc phải rời khỏi chốn dung th&acirc;n duy nhất, Mogwli dấn bước v&agrave;o một h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute;, với sự dẫn dắt của b&aacute;o đen Bagheera v&agrave; gấu Baloo. Tr&ecirc;n đường đi, Mowgli đ&atilde; gặp những sinh vật xấu xa: một con trăn t&ecirc;n Kaa c&oacute; &aacute;nh mắt th&ocirc;imi&ecirc;n, con khỉ đột King Louie với khả năng n&oacute;i tiếng người lưu lo&aacute;t. Ch&uacute;ng cố &eacute;p buộc Mowgli h&eacute; lộ c&ocirc;ng thức tạo ra &ldquo;b&ocirc;ng hoa đỏ&rdquo; lập l&ograve;e, được gọi l&agrave; Lửa.</p>', NULL, 0, 0, '2016-05-26 04:20:03', '2016-09-07 08:43:08', NULL, 2, '8.1', 0, NULL, NULL, 1, 'https://youtu.be/ZrO2JGtEjo4', 1, 1),
(35, 142, 'Người hùng tia chớp (PHẦN 2)', 'nguoi-hung-tia-chop-phan-2', 'Nguoi hung tia chop (PHAN 2)', 'Phim tập trung vào khoa học Barry Allen, người trở thành siêu anh hùng với sức mạnh và tốc độ đáng kinh ngạc sau khi bị sét đánh do vụ nổ máy gia tốc Harrison Wells.', 'image/film/poster.medium.flash2015.jpg', 'image/film/nguoi-hung-tia-chop.jpg', NULL, '23 tập', 1, 2015, 1, 1, '<p>Phim Người H&ugrave;ng Tia Chớp Phần 2 VietSub.<strong>&nbsp;Người H&ugrave;ng Tia Chớp</strong> l&agrave; một series phim truyền h&igrave;nh Mỹ, được ph&aacute;t triển bởi nh&agrave; văn/nh&agrave; sản xuất Greg Berlanti, Andrew Kreisberg v&agrave; Geoff Johns, được ph&aacute;t s&oacute;ng tr&ecirc;n The CW. Bộ phim dựa tr&ecirc;n nh&acirc;n vật Barry Allen / Flash, được xuất bản bởi DC Comics, một si&ecirc;u anh h&ugrave;ng trong trang phục chiến đấu với tốc độ di chuyển si&ecirc;u ph&agrave;m. Bộ phim kể về Allen, do Grant Gustin thủ vai, một cảnh s&aacute;t điều tra hiện trường, người đạt được tốc độ si&ecirc;u ph&agrave;m. Anh sử dụng tốc độ si&ecirc;u ph&agrave;m của m&igrave;nh để chống lại bọn tội phạm, ngay cả những người c&oacute; si&ecirc;u năng lực kh&aacute;c.The Flash được c&ocirc;ng chiếu tại Bắc Mỹ v&agrave;o ng&agrave;y 7 th&aacute;ng 10 năm 2014. Bộ phim nhận được sự đ&oacute;n nhận của c&aacute;c nh&agrave; ph&ecirc; b&igrave;nh v&agrave; kh&aacute;n giả. N&oacute; đ&atilde; gi&agrave;nh được giải People\'s Choice Award cho "Favorite New TV Drama" trong năm 2014. Ng&agrave;y 11 th&aacute;ng 1 năm 2015, The CW đ&atilde; giới thiệu The Flash m&ugrave;a thứ 2, dự kiến ra mắt v&agrave;o ng&agrave;y 6 th&aacute;ng 10 năm 2015.</p>\r\n<p><img title="Người H&ugrave;ng Tia Chớp Phần 2" src="http://media.bilutv.com/uploads/2015/11/640/nguoi-hung-tia-chop-phan-2-2015-201511151.jpg" alt="" /></p>\r\n<p>Phim The Flash (Season 2) n&oacute;i về tiến sĩ Stein (Victor Garber) v&agrave; Cisco (Carlos Valdez) đang chuẩn bị &ldquo;đ&oacute;n tiếp&rdquo; một vị kh&aacute;ch kh&ocirc;ng mời n&agrave;o đ&oacute; tại S.T.A.R. Labs. Đ&oacute; ch&iacute;nh l&agrave; Jay l&agrave; một nh&acirc;n vật b&iacute; ẩn đ&atilde; đến Central city để cảnh b&aacute;o cho Bary Allen v&agrave; đội của anh về mối nguy hiểm sẽ xảy ra trong tương lai gần. B&ecirc;n cạnh đ&oacute;, một c&acirc;u chuyện t&igrave;nh y&ecirc;u mới sẽ được viết l&ecirc;n bởi Barry Allen v&agrave; Patty Spivot , cộng sự của thanh tra Joe West thay cho Eddie đ&atilde; chết.Trong phần 2 n&agrave;y, kh&aacute;n giả cũng sẽ được chi&ecirc;m ngưỡng chiếc huy hiệu trắng huyền thoại thay v&igrave; chiếc huy hiệu đỏ ch&oacute;t tr&ecirc;n ngực &aacute;o của The Flash season 1. H&atilde;y c&ugrave;ng đ&oacute;n xem bạn nh&eacute;!</p>\r\n<p><img title="Người H&ugrave;ng Tia Chớp Phần 2 2015" src="http://media.bilutv.com/uploads/2015/11/640/5466f58addd0e-201511347.jpg" alt="" /></p>', NULL, 0, 0, '2016-06-03 13:13:12', '2016-09-07 08:43:08', NULL, 2, '8.3', 0, NULL, NULL, 1, '', 1, 1),
(43, 150, 'dfsadg sdgsd ', 'dfsadg-sdgsdsd', 'dfsadg sdgsd ', 'sdfasdgsd gasd gdsg dsg dasg dá gdsgád', '2016/09/07/phim-tam-cam-ngo-thanh-van-khoac-chiec-ao-qua-rong-hinh-4-1473237183.jpg', '2016/09/07/maxresdefault-1473237186.jpg', '2016/09/07/maxresdefault-1473237453.jpg', '30', 1, 123, 1, 1, '<p>sdafds gdasg sadg</p>\r\n', NULL, 0, 0, '2016-09-07 08:33:45', '2016-09-07 08:37:36', NULL, 1, '15', 1, NULL, NULL, 1, '', 1, 1);

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
(37, 1),
(37, 6),
(38, 2),
(39, 9),
(39, 12),
(40, 9),
(40, 12),
(43, 1),
(43, 6);

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
(37, 1),
(37, 4),
(39, 4),
(39, 7),
(40, 4),
(40, 7),
(43, 2),
(43, 5),
(43, 8);

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
(43, 8, 2),
(43, 10, 1),
(43, 29, 3);

-- --------------------------------------------------------

--
-- Table structure for table `film_episode`
--

CREATE TABLE `film_episode` (
  `id` int(10) NOT NULL,
  `meta_id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `film_id` int(10) NOT NULL,
  `server_id` int(5) NOT NULL DEFAULT '1',
  `source` varchar(500) DEFAULT NULL,
  `streaming_url` varchar(500) DEFAULT NULL,
  `sub_url` text,
  `display_order` int(11) NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_episode`
--

INSERT INTO `film_episode` (`id`, `meta_id`, `name`, `slug`, `film_id`, `server_id`, `source`, `streaming_url`, `sub_url`, `display_order`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(12, 0, 'Full', 'full-hd', 17, 1, 'https://photos.google.com/share/AF1QipNsLPij46VPEy_56wkodZSdRYt3ZQWRNzCY6jRTD-DVRWAkotODhS3SYFGz8JiHEw/photo/AF1QipM7L_K_ex9mS_opHj0GH9Jdt6Cjl-uU3n2pCXZ-?key=TmNYblRMODlnd3JBTDdrX2Fya0RqTVJkUW5weENn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(13, 0, '1', '1', 24, 1, 'http://data.ayeweb.com/Producer-2015/1/Producer.E01.HD.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(14, 0, '2', '2', 24, 1, 'http://data.ayeweb.com/Producer-2015/2/Producer.E02.HD.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(15, 0, 'Tập 3', '3', 24, 1, 'http://data.ayeweb.com/Producer-2015/3/Producer.E03.HD.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(18, 0, '720HD', '720hd', 25, 1, 'https://photos.google.com/share/AF1QipNLdadKB_yz3ipcHKm7t_NorpXFdjt8P8iUK7sxHXy83o2e2jXmoZcYm6caH8Neng/photo/AF1QipPLNQ4a4oqI6JZq0OIkwPzq09YczZWULZBqVdwG?key=elRMTVhzNjQ2Q05CTTZhWnRHcG5TMC16ajhOcUFR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(59, 0, 'Full', 'full', 14, 1, 'https://photos.google.com/share/AF1QipPBLGVrlblhYYmGwZwe2nfNdQ0tqVddGTZkyIIRdW0SMk2O4fuAO7W9DGO2Mv0iBQ/photo/AF1QipMfbfksfo7AouPO-LuZW4awM2NSE4-KDwWx7erO?key=dHJUSmduc2tVZE5uX1RmRElLb0dZMjVEYVl3RWpR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(17, 0, 'Full', 'full', 16, 1, 'https://photos.google.com/share/AF1QipOnkvVFMMSHGLKFYSLn9wxHN9VuGCYLkMi2BEB2AVeXu4wJHCxkvQ6oLa2G7DiRTQ/photo/AF1QipPMnqcI9_iejknFCbgKYRZ0ugjGgVcE3hF43jdk?key=dlk5Q0FRMDQzQUNfWnRqc19COXNjekpHU05BY2p3', 'https://photos.google.com/share/AF1QipOnkvVFMMSHGLKFYSLn9wxHN9VuGCYLkMi2BEB2AVeXu4wJHCxkvQ6oLa2G7DiRTQ/photo/AF1QipPMnqcI9_iejknFCbgKYRZ0ugjGgVcE3hF43jdk?key=dlk5Q0FRMDQzQUNfWnRqc19COXNjekpHU05BY2p3', 'http://bomtan.biz/upload/file/data/Avengers.Age.of.Ultron.2015.720p.BluRay.x264-SPARKS.vtt', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(19, 0, 'mHD', 'mhd', 13, 1, 'https://photos.google.com/share/AF1QipOmCmRLkXeKekWnVjxP4MtEgBXXeWH7m2Hehp1KVY-4buRH9x7YzmTZN4WAtMMe0A/photo/AF1QipMFe8SeBZW9vRA6K0BA0fiAZziIuJ2H7uE6PP86?key=U04zRjFGLTNTc0dWcFh0cGhHdEVnaE5rclNxTGhR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(20, 0, '480', '480', 12, 1, 'http://data.ayeweb.com/San-Andreas-Quake-2015/480/San.Andreas.Quake.2015.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(55, 149, 'Full', 'full', 26, 1, 'https://photos.google.com/share/AF1QipMbpzwDTsB2TtDFiCGXOzU_EfxKtAP2OGq6CoT9erfu19rF-wkZ4i05Z7cls_S5HQ/photo/AF1QipPaKRS5lgsGuv-l-IT1rOQr3YKO0j12U1X1IPpG?key=aXE5aEFwdTZsR2FJbXZ4aksxb2FfeFdZekNGZFNB', 'dfsg', 'gdsgdsg', 0, 1, 1, '2015-05-20 11:29:55', '2016-08-11 12:28:37'),
(22, 0, 'mHD', 'mhd', 3, 1, 'http://data.ayeweb.com/Mad.Max.Fury.Road.2015/Mad.Max.Fury.Road.2015.720p.WEB-DL.X264.AC3-EVO-muxed.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(56, 0, 'Tập 31', 'tap-31', 27, 1, 'https://photos.google.com/share/AF1QipP4xyXQioHrJEJ2HKBxYAx14Ol5TALQXpSJq6LX4R62JPK8Fi502O8Yg7fC107-Mw/photo/AF1QipNgckIhMSieZYz-0ffzC0VvOxUGlGfr-Vdx_8rH?key=Y3BmSEF5VE9OSjNNaWNCQWlhSE5SM19Rb0VGUDBR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(24, 0, 'Tập 1', 'tap-1', 27, 1, 'https://photos.google.com/share/AF1QipMQK1mTcDanKGS_4dD__0oN6Cb9OdCaLpcZDtOKflvasLHyC_p9nbT-tmO3G1Z7mQ/photo/AF1QipN3-him6H7rSjZpWqUxYqlA4hS-Nt-74hneK6KY?key=NUhrLW1CeDYxRUUxNERjNWRzZmpCeTRhQ2FucHhn', '', NULL, 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(25, 0, 'Tập 2', 'tap-2', 27, 1, 'https://photos.google.com/share/AF1QipOlnYZlsATXwQ_FtRkxI7zP9qm4MRaw6GOuUSSVByjXCXwVA6d5Z1eHAHHkdv9dIg/photo/AF1QipOJPW3wxl5Cd9ungnyqu0UzXomiwWEusW7Y75P6?key=VjJrdExydHVqVi1pbk45cFcxTjZheVlKU3hWRldR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(26, 0, 'Tập 3', 'tap-3', 27, 1, 'https://photos.google.com/share/AF1QipNYHTnogea7MqcmRfI_KuGm1vT8y3PyAPHWunvmou750_SPyZ4dRfMVM-vX9UqIqQ/photo/AF1QipOSy7i1SemJxLhYocSK7baX-Jaw15LbDuMkGs44?key=Z1I0b3dkc3FPbEdMd2hycGJyUnpBSFotMEdoeWhn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(27, 0, 'Tập 4', 'tap-4', 27, 1, 'https://photos.google.com/share/AF1QipOxcqtOzU23d8kGUk1mUFQEKmo9_kS700oKN-Kzypx7wRIbnJ9Oo4I2bv7WEmEtfg/photo/AF1QipPhFX0CWLPpyhCZucy1kExJXP2gCSMpg4JSD8sj?key=X1JMQmJBSXBid2RRc04tMGVIcGtRMzlUZnNzUE1B', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(28, 0, 'Tập 5', 'tap-5', 27, 1, 'https://photos.google.com/share/AF1QipNB0G2DHj0z1G5DZQpDwuLsbhr_IVC4p1hesV52yj5UH8mwxC-hZlt5WpGCaTnTkw/photo/AF1QipM5Q9xta-DXu4_IAh8CiPW9D0plVeM8O7WhXrnP?key=Zl95WW9HU0lwd3dhR2pBTS1EV2t5RVVDd0VEX0l3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(29, 0, 'Tập 6', 'tap-6', 27, 1, 'https://photos.google.com/share/AF1QipPrJGRn4M-MjvXOd3OkPDu9o53o3U3fyFrPyaUDZThUwN7k_xQ6tKXSKEFWKHQJVw/photo/AF1QipMcRDln1FO3UrCya4sFBfWqSYiseXQpfT2MPSYa?key=VVZPeUt3ck5yN1hRV3R6b0lFTC1PUEdPRkFLTUJR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(30, 0, 'Tập 7', 'tap-7', 27, 1, 'https://photos.google.com/share/AF1QipOWOwD8F6TapjcIRF8E4G51B_yhz3SBbWa6xf-dH0ybTmMyCVkO3tz7eoiR2OF4mg/photo/AF1QipNgpbMr4hU9rCsO5bmnAy-2o3Yq8qC8hNeGGBFC?key=cy1SdWZiWlhubDY2R05xQjRPR09yWDVlLU14dHZR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(31, 0, 'Tập 8', 'tap-8', 27, 1, 'https://photos.google.com/share/AF1QipPRs6bj2hLQF3xG6tAujmDdegjnkIWutKeZTWqmH8T_-792iTqTb6NJNa2XGlgHcQ/photo/AF1QipNtr_gwPYU6pggF9QlV3N6B4c54qLnV-qJz1TJy?key=NFc1LXptakVtRlN5ZzM5WFNweXNRRlZKaThxTnRR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(32, 0, 'Tập 9', 'tap-9', 27, 1, 'https://photos.google.com/share/AF1QipNAxKs7Hl47OmZceh_BOzBzUO9AKAZlp1anGwHFqqSh2D4LJMzCcj080EIk1p5oxw/photo/AF1QipNRDZQflTXgZjMIHHgRJ_BjAmhyVH04gBYi4kex?key=VEJDaXNNU0x2UUpCWjBUZElKSC1BZjBoWjNmV2N3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(33, 0, 'Tập 10', 'tap-10', 27, 1, 'https://photos.google.com/share/AF1QipMGhSUIk8SkpTP8mTjaLtkGXPvwJ3wxz_7x4riZ0XsBwakipLB5E20V6B1annGJmA/photo/AF1QipMInBLvkXip39ArWQsxmYcX5HtXjoG_dzCeIHIB?key=UkMwV1AxaXhES2YzZkxTanI3WFFnNDdJaHF2QWNR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(34, 0, 'Tập 11', 'tap-11', 27, 1, 'https://photos.google.com/share/AF1QipMu_WpfEilw22Odz88F4WLIziorA7uz1dUJQv108zCqBI7zafBGvY78pNp4KI38rg/photo/AF1QipMPhNklB-1h8pU3ZDEKv57JCBbpxk5A510sjAk6?key=R3Q4RHlDRGhrcE04dTRHZzVyb1UtRGoyR3lkSFR3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(35, 0, 'Tập 12', 'tap-12', 27, 1, 'https://photos.google.com/share/AF1QipOtaJeYDet_939MJqDrnZFnpRER9OojhPwNZ2_zFGJ4so890GaqmFTrCu7UlpHT9Q/photo/AF1QipNi9dxQ2rHo3EnAc9pN-5KJB1GsE9vX7mIRq3yP?key=ems3T0hBQXJkZ2o4eHJGQ29KbktydVJ6QjdmbWh3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(36, 0, 'Tập 13', 'tap-13', 27, 1, 'https://photos.google.com/share/AF1QipOx2L7h4AZEyHXVig4sYBMmmTIgT0TlHzbwDE67d_RqFxjBknqom5GItjdDB6-ZlQ/photo/AF1QipOo6a3NoaLoxiUYidTcwcLBpyFjZyoi1u7wfPBB?key=UHgyNkV2cmlDZ2JpV3kxaWc0ZnZhd3hzMTZaMlJB', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(37, 0, 'Tập 14', 'tap-14', 27, 1, 'https://photos.google.com/share/AF1QipN5kSrj5rHd-7p3wgk4qEA1XQuZB6PUUHhHO0anOlmxtRIZJjGbGm57PCWEoAOpWg/photo/AF1QipPIVsQoytg7HbiduMtbTwA2QYIT26CCKmQuQPt0?key=SDE1dGYySGNvT09iLUJiNjd3MEM2bDFTcVQ2akhB', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(38, 0, 'Tập 15', 'tap-15', 27, 1, 'https://photos.google.com/share/AF1QipMFWzMvyg2DVh6ZM347JQ50s6s1mpM4aL3QUSMNYIrFKyWiILcJ82SEBsyV75Vopw/photo/AF1QipPJQb5RrL9BpXORkPjTxsX94UdN-Q_VB-a4wX0o?key=S3ExMkt5R21qQkZ3RGVYYmVFalZLMGZmQjJsbXJB', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(39, 0, 'Tập 16', 'tap-16', 27, 1, 'https://photos.google.com/share/AF1QipP_poYbhSOBvwVLwnTXnkVBzU-VqPvXOcPj2zuKqHuSlafo_6d8kKfS5aOPviyklg/photo/AF1QipM54QAvr6cjOB-w3EW6UrLucNwaNXqeznSK_92Q?key=VEVjWS1iR0pQQ0pDNGVCNkhSbVhqMTk1MVB2LUJR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(40, 0, 'Tập 17', 'tap-17', 27, 1, 'https://photos.google.com/share/AF1QipOMzn52r9DpsCrYdlRXNyJLlb1AUaav4gyoAMh4-cJRCTteqvhElMMTohmrFWez0w/photo/AF1QipOXo45E49S15InX8vgaqTUeaYmhHN3KdyTP-ye6?key=Q29KeTVCZEU3bjI3ajRHWFNLUzVWcTBxY1NSbldn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(41, 0, 'Tập 18', 'tap-18', 27, 1, 'https://photos.google.com/share/AF1QipPJMor8OwwjmPJk0nFZ8zW_FyPC_oqkcqliXe7fEN7IquhbwGSy_nTzkeXsQdglow/photo/AF1QipNOICZpolTEYZ1_6hVvXByV60y3wzuiaGfOpdi4?key=VUFsOFpkQTZweFNIeWhtVEtoVmd4djdZbjFDbVFn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(42, 0, 'Tập 19', 'tap-19', 27, 1, 'https://photos.google.com/share/AF1QipOeUBmPWfq_Jz0c_AIvp79hJYSuYItemjbjrTtXvBXYrvWSa5JUqYnrOOr_hrqjEg/photo/AF1QipPTYsbhCEc-TwWMrHa-hiGWqPcyYDrDjUPcykgm?key=WWQ1NWhoZmRCQk1lb05KOVFzSEV2NmFicUdiTXdn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(43, 0, 'Tập 20', 'tap-20', 27, 1, 'https://photos.google.com/share/AF1QipN_xrllhbUceqkf-AwVhrKCpisqvV0IFSIOOnMXou3KUtbpeA-YEJY2L5xhtDYVfA/photo/AF1QipON5FrOWrk622hFisTA8GJTbSCciDNkqT3bGQe-?key=cVhMVmRlRlFBbVNqcWhhLWF1N2xTWkF2WmhUbll3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(44, 0, 'Full', 'full', 2, 1, 'https://photos.google.com/share/AF1QipOnkvVFMMSHGLKFYSLn9wxHN9VuGCYLkMi2BEB2AVeXu4wJHCxkvQ6oLa2G7DiRTQ/photo/AF1QipPMnqcI9_iejknFCbgKYRZ0ugjGgVcE3hF43jdk?key=dlk5Q0FRMDQzQUNfWnRqc19COXNjekpHU05BY2p3', '', 'http://bomtan.biz/upload/file/data/Avengers.Age.of.Ultron.2015.720p.BluRay.x264-SPARKS.vtt', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(45, 0, 'Tập 21', 'tap-21', 27, 1, 'https://photos.google.com/share/AF1QipM6QOFpcDR5CETOavofSPlOU13Ta-N9g7EuJXf30BsU52cbXr_NGhXiOr8eDx3-og/photo/AF1QipPNv2QtotVGTdbf-Uh4ovdDHHzCmUk9AtyBPIG4?key=UE54Y1NOMU9wTnliajA5Q3RuTzRqMkhGbDd4dDln', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(46, 0, 'Tập 22', 'tap-22', 27, 1, 'https://photos.google.com/share/AF1QipNFH3AhSGXljo-m0zOsFGuuzZRAbERJLwLK0xlfva4bz-FYv27iRSYxPs23L76hZg/photo/AF1QipMsiLpgoNTivhHIuTXznrObc6QzgFa2B0Aw2vAy?key=b3FLTXBOSC1oeHdobXNDZEVOUDllcFN2NmNMTWpn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(47, 0, 'Tập 23', 'tap-23', 27, 1, 'https://photos.google.com/share/AF1QipPdNoI4fv2J5LdIeMphvFDUo70J4fZJBDbad8C8D15U4qUXJdxn2-Pg3KzrnCfR4g/photo/AF1QipOR-C2uH2h7mjzOnxMjVUW4kj8gZAZx4FCTKQ2Z?key=YWlrTDJybXVPbC00d2JDUUhuaVVxbDZleHhvVUtB', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(48, 0, 'Tập 24', 'tap-24', 27, 1, 'https://photos.google.com/share/AF1QipPpErkV3QcJwywBvaAdPIfevgNx_jo2FE_J4xM7yNG4zpAc9dK0zp1d14lx7spTIw/photo/AF1QipPVGdGjIASSseBgSvDAwAQTE2e0iYuG6BFpN29-?key=b3JpS2hwakxKNzRIa3k4RUtSQi1GakxhVGlWX1pR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(49, 0, 'Tập 25', 'tap-25', 27, 1, 'https://photos.google.com/share/AF1QipNvLT1o_4QlzdqSrR2fxq3VEnrnqA6yEy8OEkW5AQ8HqKhm8zyLb5WYs3UA9cleng/photo/AF1QipP0W7vkaW1NBon9bBKHObCT9h4zzSPBtsyuFOfh?key=MXFpSDdZZ0pmSDFVLUVGWk42SzN5Q3VLTnVMNGdR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(50, 0, 'Tập 26', 'tap-26', 27, 1, 'https://photos.google.com/share/AF1QipPSd25FOQdmLktj7Z1a0-CR3_4NXLsxpifpuzoYUgMVQRjjgYyMyvxHRiIWT371BA/photo/AF1QipO-wpCzAu_X9eUFLGjFcIllsiGu8TrRGvtLAXDO?key=bE1xZVB5SkIySW9nYzh5RDk5LVRGamJuMVg5SHNn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(51, 0, 'Tập 27', 'tap-27', 27, 1, 'https://photos.google.com/share/AF1QipPArUyK9SXdnwObs1nJkhR9iLKf6hXujMWVgZ7lKN3U1Roj44u6N-jzEf7SokXO9A/photo/AF1QipPr9iv1mKsqe9XcwxjBKC_O_TLgyK-Rp76H66ig?key=LUJaRzloWkVUTHdiZ1hULUszbmw2NkotOW1TNG13', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(52, 0, 'Tập 28', 'tap-28', 27, 1, 'https://photos.google.com/share/AF1QipNe5ANmRBMYBctILhZdPwWAVyOC9NkQBxO6nGc2DJ1-pO1X8p_sCv97rPyb6sxxFw/photo/AF1QipPpolNJmxxCTLTMSw2aTBZM3l9mCMPVQ_njnIB_?key=bWhUN0gyQlZoT1pYbDVDV28tSTV2XzFFTy1JZ05R', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(53, 0, 'Tập 29', 'tap-29', 27, 1, 'https://photos.google.com/share/AF1QipOsrnm4V1x2VAqM4WuL1IyG5C_yyQKAFjK07anABXYcdHyfAjIwCN9insM89EVwRQ/photo/AF1QipPz_TLZbYp3YbXs0ucYXH7JKPahSQIuwNiW9GnY?key=STNXbUItbkgwQmVWb3p1eVpSZ1V2dkFNRFN4ODJn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(54, 0, 'Tập 30', 'tap-30', 27, 1, 'https://photos.google.com/share/AF1QipMHjYhpIY6at5LG_KVCIfKDwNhLfPCYcGLQRmsO8ish3H8qoqTscthTFw9asfK6Ew/photo/AF1QipOmj9S_3Rbb_uHA1YOK4oHgSjzkun8axqbaaEm4?key=Mk1iOERBOE05YkNQWXlnWjBXMTlLVE9iQzZuNTVR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(57, 0, 'Tập 32', 'tap-32', 27, 1, 'https://photos.google.com/share/AF1QipPuD4E0-R7ucWGMZuArCpv5XLxuf_gjOe9PEM6kVUQ_FBP5dIQFVRKOGn_veiEMWg/photo/AF1QipNaSizPD8ZUbgy-P9S7KbpCPIFEPFDd7Fex4X79?key=V0ctTWxHOC1iOWVCTWhSQW1HTGoxY1k1V25JOXZn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(58, 0, 'Tập 33', 'tap-33', 27, 1, 'https://photos.google.com/share/AF1QipMw7MjEdc9ZT8xzCvByOXqtTDgjMqrz66AtnetboFNiezDCev2W9--qCq9caGc6Yw/photo/AF1QipM6zVAx210Fhev5zvuyR-m4hFL4Uwws_CGYzy3L?key=SEZ5RnpWdmVpWXJlcmQ5VE9oMWFvR3Ixb0FGV29B', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(60, 0, 'Tập 34', 'tap-34', 27, 1, 'https://photos.google.com/share/AF1QipNshnYaPHOASDbv-Oh6S3Xi2yyby0XDEY0zatn-15DRFi3LwYy9j4iCrAKqSF5JZA/photo/AF1QipMtkqxUwcU8zhsLvgMQirXupDNmBzMjovRFG1Lf?key=S1lXSTd5OHBUajloMHB6Y2ZkSFAzQ0NSNHI0bXpR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(61, 0, 'Tập 35', 'tap-35', 27, 1, 'https://photos.google.com/share/AF1QipNyC6jvC8Ha-ZeAHt1zCjHgMTrvULX00QWgyP4xr9m-q__On59VQahiK7Vq8mtN9Q/photo/AF1QipPcwIakKBSZFMqq9Sf113xT6f9iPUFGL8tpKhUa?key=anRmTTM4ZlpaS0FoUDV0QmkxOFdGZ1gtV0xUdGRB', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(62, 0, 'Tập 36', 'tap-36', 27, 1, 'https://photos.google.com/share/AF1QipNd0Tq6_DbcliTOFEJZg7aHlBdIbDIXuMexr6aeH_sfiAOs-rbVMzAC_tnJwxGFkA/photo/AF1QipOhIddRQLuFyqpk-VZ3wgz4rArENnfX8NZil1As?key=WFJLcXdfWDhXWE1MaHV0TUVpeldjRDhUOW5XQnNB', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(63, 0, 'Tập 37', 'tap-37', 27, 1, 'https://photos.google.com/share/AF1QipN2jeHsBHrNDmYHxCnpIRD4AUvlaT4__K0JDKkSi5m2WcbLnPakHi7Egrb43QsQxw/photo/AF1QipO4eGCmb0Z2LVyPAOkb1iM_cLc3LFA_CWMO5sBt?key=WVNxNm5odGdBWWwzR2cyNVVZeWFDam9Gdll5dHB3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(64, 0, 'Tập 38', 'tap-38', 27, 1, 'https://photos.google.com/share/AF1QipMgahaB0DTvR6RSSIrpaaAnWXc_TH2gAsZV2I6A4rTJKkM-CJe8pL3MYq6cV33lPQ/photo/AF1QipMKIOYvo5sMJH9Bk0zTdbFVthV5cxPVzrVLQEGs?key=RVkwcGhFRThud2lrejV2aHhtZmR0eHp0LXBrcFJR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(65, 0, 'Tập 39', 'tap-39', 27, 1, 'https://photos.google.com/share/AF1QipNXed9YJfA2gEWB0cEpbRnIFU24j8C2zMSHj732V4vgwIsAslpdUMheVq7XtcEobQ/photo/AF1QipMSyvv6VCTw-d3hwkbST_B2W1gBZQFh2P_B-skq?key=ZG1IQkJvUzZFdTZ5X0FmQkpDd05Gc251cnlFQmdn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(66, 0, 'Tập 40', 'tap-40', 27, 1, 'https://photos.google.com/share/AF1QipOfXbj_9X03lUoF19KKTccAVDz71X1XwOdB3kgTV9Ae7i0NiOadiCXqteTPutvqqg/photo/AF1QipPAdlV9QI0i5PAWi-PqQRxJiR015dI6kRP9k0Np?key=ZEZEeEJOTGNZLXRWS043bXFFZkFiZUJfeEZCMENR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(67, 0, 'Full', 'full', 18, 1, 'https://photos.google.com/share/AF1QipNVcShvc6qcOFuukoh5JcFpVAL4DKBx90lp1qe8gLofqlytgZkdNgN58ycB93wxug/photo/AF1QipPbfasEI_X7IHjVOKl_mcTtGgNQNW7TrxtZqAss?key=YzFDaHVUNzNOcUJHNXdiX0dFVkR4cHFucEZDOFdB', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(68, 0, 'Tập 1', 'tap-1', 1, 1, 'https://photos.google.com/share/AF1QipMXs6TSN16Z8DEY3JvQzD3Umu90KakCilInXJcWA5xxQfPvRBMUJg67DXRy55Rg_A/photo/AF1QipOKlDnNzxQXtpc9B1qOXrQ8TdeGOmzkAwRXqZzv?key=QTlPNDZmNjdJR0JVd1Y4bE1TeEVKallmNTlzYnpR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(69, 0, 'Tập 2', 'tap-2', 1, 1, 'https://photos.google.com/share/AF1QipNGunBbyGMY9Em5pcNyGksLIfRlB-wSXwogrffknWZR0pyiVpl2m_KBlr0ZqJNkEw/photo/AF1QipN7MrpEqandAq68MBMN-SCrKfZz2HIUxayayrem?key=bUxVWm9nYkhMSko3RVlqQXIyaWh5aUFadmdEOHd3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(70, 0, 'Tập 3', 'tap-3', 1, 1, 'https://photos.google.com/share/AF1QipMMoMOZZSBLsmKGywxggoYiQ_ICK6MFRR12qiwGq94g7aIaLoeuBrRHzZXekcQRkw/photo/AF1QipOpr_e2kHVcvT4CvHc0wvoyggAMFsmSkNThzTKI?key=b0lCSUMxcWVGVXYwVXEzQnlzMVFzNWVWLU5fUVpn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(71, 0, 'Tập 4', 'tap-4', 1, 1, 'https://photos.google.com/share/AF1QipMEJsC13R18aAdkaD82IBXuRtsWVoEileQFtxqQfNSU6WtY3N5nWNTWnx_c8FmprA/photo/AF1QipOodKi3v7huiaJW_YLS_cUxx4ws1dN1L8vCnCPy?key=R3pMU2FXaDFjd3h3SEFqcElRb2Zna1FrYWhhS0tR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(72, 0, 'Tập 5', 'tap-5', 1, 1, 'https://photos.google.com/share/AF1QipNoU5XIm5HuxcI7anB4feRNUCP7h9wHhv2giIdzbJqGqmbcde61-EP_FM_kLLuGdQ/photo/AF1QipOPpc472q9vwwIrTKK6Owq8cPjPf8JFyYwHXqsf?key=REZVdEhCMEdHc0E1ZnowZ3huUTZSdk1nRzRzVVZ3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(73, 0, 'Tập 6', 'tap-6', 1, 1, 'https://photos.google.com/share/AF1QipPeIySL_2SlaK8beOuFiwAn57RMjmELnnhHP7GbtPJXKU4v66WhuK-csiO9PL4alQ/photo/AF1QipNAlEyeoBMo9DD4Ttto2Ygk86wWnIPYO5NxLzzT?key=MWY4WUpTUDNNRS1PLWZKa01RME1PREJTN0YtRHd3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(74, 0, 'Tập 7', 'tap-7', 1, 1, 'https://photos.google.com/share/AF1QipNhMrg4pwJsWE29B_GRaxSCeEGg1w5toSGbpWo-vKt4xCrkyOt2Frd6Jvr6eUjiLQ/photo/AF1QipP8cen4gZzpCom0AU3bspH2-prxC8DGv88dDjrp?key=UmhXSDY1ZXNVOFd5akR3WjhSamVpVE1tM0FNX2Fn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(75, 0, 'Tập 8', 'tap-8', 1, 1, 'https://photos.google.com/share/AF1QipOraDeBGkrHk5y2FQrfWxSMMHJoZq2mqB-CaC1rzinD_OQy4A3uV6PHOyuMjwZkLA/photo/AF1QipNCwCOqIs14GmSkE2vZDKWYS-_n5WPRNMPKaXbh?key=UHhwU0hqTWlCQkxvUDRlLW05blo2U2hzMHJ4c1FR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(76, 0, 'Tập 9', 'tap-9', 1, 1, 'https://photos.google.com/share/AF1QipOkjkQ70CAIqIVAt-xml5hOSgbzJzvC0d8RFFdt41-4b0rk3K-ukGFLYQQSAogofQ/photo/AF1QipNOZvSu8O6IlRqLwWDHT9BP3AsH__wbkX6WiNB3?key=cVQzQnFwT1Y5cFFCUHRDTmZzMllmYXpaS21fR0pB', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(77, 0, 'Tập 10', 'tap-10', 1, 1, 'https://photos.google.com/share/AF1QipN3mcpTxYIlTX2ARxFM7Lje8WXorcUuD93C-AZF1iKUrBmje65W4CS85DPDHL1FQA/photo/AF1QipN_mqbj8FEx2Ho2N-13RJ6KLDcEi_TBIwkpIe0g?key=Rkd5YkZZWEpfUmVxMzNZRXZfZzViZEt5ZXdqd2dn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(78, 0, 'Tập 11', 'tap-11', 1, 1, 'https://photos.google.com/share/AF1QipMjsMs0dmGgWQwF5OgE2m8e5-1GweSE0Ev9tTbnL-Onyqm60LYS5DNn-AX-mKJ1ig/photo/AF1QipMmIjcQfi1Yg8Cr6wD6XMYCJTOYqXpXQVPJ4dm8?key=ZHV2UEt1dUVaTDgwcW1UQWNuQlZLWlBWMmZYLWJB', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(79, 0, 'Tập 12', 'tap-12', 1, 1, 'https://photos.google.com/share/AF1QipMuZ5AzCh-DnhYz4jQG0UQawA9btsT7Yf8g9wH_794EchJswIRgj5L7EejYulAG-Q/photo/AF1QipN7zk3JHOn40t47uVZgq5M00FsUm9k_Oi2SM9qy?key=aVRMYVY2dllLRThWUk5STk1qV3NRZXZjY21wWHpB', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(80, 0, 'Tập 13', 'tap-13', 1, 1, 'https://photos.google.com/share/AF1QipOzcqXfR4jXbcdV9ENHpCBJ-gGXDhk7X67ulnjDfH5vPf7ohUrUzANf9yJ9XUe0YA/photo/AF1QipMpYkAHa5PhZwCDsgSo50z5joMwy-_Vc_ov6gwN?key=WS1wTjY3a0RYbDhlQzRYaTF6VlZIUFZOMklVRHdn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(81, 0, 'Tập 14', 'tap-14', 1, 1, 'https://photos.google.com/share/AF1QipMTVLsTnraupEHgTfXs2lbzjsv8B5anagtmwFJDZzeIttXu3kDkOJBMZK1MxN6_bQ/photo/AF1QipPM-CoBCBSLtb6OTt3hG5fMKGiTYzGT0Th1f3Qu?key=TGZicGdqdWhrcU5tbmRsNlhtTlZ5U0QwZ3VrZlB3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(82, 0, 'Tập 15', 'tap-15', 1, 1, 'https://photos.google.com/share/AF1QipMDlxZbkI3b2GinkRH33aJkch3Hm_FQZnRAMKt4rIGIDKVZ4l-jOKWxzDi4Rtw6sw/photo/AF1QipN8LJ5byn53388mb0ZkD2RHjVcfq4COFl9UFg4U?key=djVZUGNzRjhoVU1pbmpZeDZ2MnFKWnFYeWdsa1lB', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(83, 0, 'Tập 16', 'tap-16', 1, 1, 'https://photos.google.com/share/AF1QipPtiBPFa3RSOHKwu2mEl058MCVa541pHqTXr2k94L6nHVGaCZ2lA327B4sjgFm7Zw/photo/AF1QipMJBIAbJCfZ7XZSjfLSKy4ccTp7SBZR7xdg0qFL?key=dnJ4R3NDY3JsUGtzd1JuUjc0RXBSdkd6eF8wUV9n', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(84, 0, 'Tập 17', 'tap-17', 1, 1, 'https://photos.google.com/share/AF1QipOlFrCiapmgX9hdc_b1xlra9A8EkpRYRS8KEUgeNRil0VhDRyZE1aiMwQn-U-AYGA/photo/AF1QipOLtWgUwuqCWVFClrfeUTBxk10JR1kmSGBQsJrA?key=eFFNMEJTaV9OOUhRRy1VeERiRE1GdE1lRldaZDBn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(85, 0, 'Tập 18', 'tap-18', 1, 1, 'https://photos.google.com/share/AF1QipNHume7ydbRsqqIXgTlyhKBpIrcKh1wrNCLW4Icuah_LYy667dashLEfPWED5SyWg/photo/AF1QipNS3kAKAOFQEL88u4II3yWX48TysbYu-PkGVZiD?key=TjQwb1UtZUpQbkRVV0JIeFp5VHlWQ3BUZnhobkp3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(86, 0, 'Tập 19', 'tap-19', 1, 1, 'https://photos.google.com/share/AF1QipMzPPTF4H9Memcs-PW7-9bY-CFYRmHdBaVHSdEtrC_3jRy1JVSbap4G2EdQvQBD7A/photo/AF1QipPGwhaMrYyrrVdC3q_EHStZLpJZBk9ET1InVenb?key=cHNHcl9IZnhPRWlOTWZyVTlBb2NtZXdsbG0zUk93', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(87, 0, 'Tập 20', 'tap-20', 1, 1, 'https://photos.google.com/share/AF1QipNx4vrB_pQ9ZGXABCahr19zYPRWIDjBOgz_HJomSqhke0rF_WxKyoQt6LkQhdZGig/photo/AF1QipPKQ25BXmZf__tFSFHJ027QUMeT8ZtV0-wza76f?key=R0lSdldoUzllcDYxdi13MWlibGJzMDlMN0NMVm9B', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(88, 0, 'Tập 21', 'tap-21', 1, 1, 'https://photos.google.com/share/AF1QipOrpjAwSZz3mrdouSIJEr_LJnJTPVR33zEjxmUccPptclKISnYW9Y60to9ow4Z5JQ/photo/AF1QipMf0TurwLWlvm3Sh_TSPsRoZYxZAVxBMRFEIKLS?key=ZlFrcHVKMTA5ZGo4dzNEVjFZcEJxRkoxSjItR2dn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(89, 0, 'Tập 22', 'tap-22', 1, 1, 'https://photos.google.com/share/AF1QipOiD1mfpZ2-sdCkV-1NyIhsEx0rB29E-dfo0mVUKpdCBXIzWqZwXgbCcdmC9PKgXA/photo/AF1QipPkE9s-N9e3w2Ya7lYg0D9gaWRQfsKfiIeT3CKK?key=Qk16c2RGNk5rVVBocTBnOUNtV0QyVzZ0Yzctd2FB', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(90, 0, 'Tập 23', 'tap-23', 1, 1, 'https://photos.google.com/share/AF1QipOU5Szyxu2qkqr1qYCeIvJNqduZaAbcZPuqZAh0KbNH4eS-PwkBgdHhRQNqTtOZzg/photo/AF1QipPIrwFJ2NFBPFK4uxy8L7jNnk8B1tOpXxI-Pngq?key=LTlWdU5TVHl0amZnUUQyY3VoSWU3N1VHZ1J2MW93', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(91, 0, 'mHD', 'mhd', 32, 1, 'https://photos.google.com/share/AF1QipOOeDrsWWO6WKPOn98ni3f2ZGjMUB0T6l8HzfiBLQ1xoY843nUd9GRqSE6uTJvK_w/photo/AF1QipNNXemdMRbvDTgEUCeF7rEczCv0IqFQMb0JIGlP?key=YVllZjg0bkRSNE11Rko2T2s4UjVpVFVWNWdVZkN3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(92, 0, 'Full', 'full', 4, 1, 'https://photos.google.com/share/AF1QipMceBcsEtWTRANEM8xdfYSd3YB8eD7SUEx7tqOrvt3wAW56fwPL7GOeCZ-R6-uVVQ/photo/AF1QipO0F4cgigKTZ9aUJDHJVeYdYPqBONUdUNIzmVH1?key=dGpSeDJST0JVVUJTNGlLWjg4WTd1Y1AyQ2J6R1FR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(93, 0, 'Full', 'full', 31, 1, 'https://photos.google.com/share/AF1QipPe2HvC5qmcatRKGYkfNRrANnuIkQnczvUSiKFGL2lhYLJ_iPbWmcyQob_fR6nhAg/photo/AF1QipOuDFCnge7iYrLVhSqoTWfaW6rEnrz0wS4RB6YK?key=S2JiYV9SYUNLb2hLVnVqWHAwb1JUS2VidHFGd0Nn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(94, 0, 'Tập 1', 'tap-1', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-1/IWZ9CUA8.html', '', '', 1, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(95, 0, 'Tập 2', 'tap-2', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-2/IWZ9CUA9.html', '', '', 2, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(96, 0, 'Tập 3', 'tap-3', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-3/IWZ9CUAA.html', '', '', 3, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(97, 0, 'Tập 4', 'tap-4', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-4/IWZ9CUAB.html', '', '', 4, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(98, 0, 'Tập 5', 'tap-5', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-5/IWZ9CUAC.html', '', '', 5, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(99, 0, 'Tập 6', 'tap-6', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-6/IWZ9CUAD.html', '', '', 6, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(100, 0, 'Tập 7', 'tap-7', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-7/IWZ9CUAF.html', '', '', 7, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(101, 0, 'Tập 8', 'tap-8', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-8/IWZ9CUB0.html', '', '', 8, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(102, 0, 'Tập 9', 'tap-9', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-9/IWZ9CUBI.html', '', '', 9, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(103, 0, 'Tập 10', 'tap-10', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-10/IWZ9CUBO.html', '', '', 10, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(104, 0, 'Tập 11', 'tap-11', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-11/IWZ9CUB6.html', '', '', 11, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(105, 0, 'Tập 12', 'tap-12', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-12/IWZ9CUB7.html', '', '', 12, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(106, 0, 'Tập 13', 'tap-13', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-13/IWZ9CUB8.html', '', '', 13, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(107, 0, 'Tập 14', 'tap-14', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-14/IWZ9CUB9.html', '', '', 14, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(108, 0, 'Tập 15', 'tap-15', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-15/IWZ9CUBA.html', '', '', 15, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(109, 0, 'Tập 16', 'tap-16', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-16/IWZ9CUBB.html', '', '', 16, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(110, 0, 'Tập 17', 'tap-17', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-17/IWZ9CUBC.html', '', '', 17, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(111, 0, 'Tập 18', 'tap-18', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-18/IWZ9CUBD.html', '', '', 18, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(112, 0, 'Tập 19', 'tap-19', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-19/IWZ9CUBE.html', '', '', 19, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(113, 0, 'Tập 20 - End', 'tap-20-end', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-20-End/IWZ9CUBF.html', '', '', 20, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(114, 0, 'Full', 'full', 29, 1, 'https://photos.google.com/share/AF1QipOsnpMXjdBSgsLcqXEp9M0XAjikH2GUNeZQM72eVk-iS1lHup2ZOQEANwmtCiQEYw/photo/AF1QipMeCkeggBhAt5Y3bdwdrbFIYEuWl_5pvy3hLYyb?key=S2RoeF9DV3NYZUxoNmhSSHh2aVotb0dYeXlMSENR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(115, 0, 'Tập 1', 'tap-1', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-1/IWZ9BCD0.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(116, 0, 'Tập 2', 'tap-2', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-2/IWZ9BCDI.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(117, 0, 'Tập 3', 'tap-3', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-3/IWZ9BCDW.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(118, 0, 'Tập 4', 'tap-4', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-4/IWZ9BCDO.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(119, 0, 'Tập 5', 'tap-5', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-5/IWZ9BCDU.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(120, 0, 'Tập 6', 'tap-6', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-6/IWZ9BCDZ.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(121, 0, 'Tập 7', 'tap-7', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-7/IWZ9BCD6.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(122, 0, 'Tập 8', 'tap-8', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-8/IWZ9BCD7.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(123, 0, 'Tập 9', 'tap-9', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-9/IWZ9BCD8.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(124, 0, 'Tập 10', 'tap-10', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-10/IWZ9BD60.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(125, 0, 'Tập 11', 'tap-11', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-11/IWZ9BD6I.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(126, 0, 'Tập 12', 'tap-12', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-12/IWZ9BD6O.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(127, 0, 'Tập 13', 'tap-13', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-13/IWZ9BD6U.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(128, 0, 'Tập 14', 'tap-14', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-14/IWZ9BD6Z.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(129, 0, 'Tập 15', 'tap-15', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-15/IWZ9BD66.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(130, 0, 'Tập 16', 'tap-16', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-16/IWZ9BD67.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(131, 0, 'Tập 17', 'tap-17', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-17/IWZ9BD68.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(132, 0, 'Tập 18', 'tap-18', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-18/IWZ9BD69.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(133, 0, 'Tập 19', 'tap-19', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-19/IWZ9BD6A.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(134, 0, 'Tập 20', 'tap-20', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-20/IWZ9BD6B.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(135, 0, 'Tập 21', 'tap-21', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-21/IWZ9BEZD.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(136, 0, 'Tập 22', 'tap-22', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-22/IWZ9BEZE.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(137, 0, 'Tập 23', 'tap-23', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-23/IWZ9BE60.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(138, 0, 'Tập 24', 'tap-24', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-24/IWZ9BE6I.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(139, 0, 'Tập 25', 'tap-25', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-25/IWZ9BE6O.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(140, 0, 'Tập 26', 'tap-26', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-26/IWZ9BE6U.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(141, 0, 'Tập 27', 'tap-27', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-27/IWZ9BE6Z.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(142, 0, 'Tập 28', 'tap-28', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-28/IWZ9BE67.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(143, 0, 'Tập 29', 'tap-29', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-29/IWZ9BE68.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(144, 0, 'Tập 30', 'tap-30', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-30/IWZ9BE6A.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(145, 0, 'Tập 31', 'tap-31', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-31/IWZ9BE9O.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(146, 0, 'Tập 32', 'tap-32', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-32/IWZ9BE9U.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(147, 0, 'Tập 33', 'tap-33', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-33/IWZ9BE9Z.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(148, 0, 'Tập 34', 'tap-34', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-34/IWZ9BE96.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(149, 0, 'Tập 35', 'tap-35', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-35/IWZ9BE97.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(150, 0, 'Tập 36', 'tap-36', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-36/IWZ9BE98.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(151, 0, 'Tập 37', 'tap-37', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-37/IWZ9BE99.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(152, 0, 'Tập 38', 'tap-38', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-38/IWZ9BE9A.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(153, 0, 'Tập 39', 'tap-39', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-39/IWZ9BE9B.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(154, 0, 'Tập 40', 'tap-40', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-40/IWZ9BE9C.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(155, 0, 'Tập 41', 'tap-41', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-41/IWZ9BE9D.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(156, 0, 'Tập 42', 'tap-42', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-42/IWZ9BE9F.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(157, 0, 'Tập 43', 'tap-43', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-43/IWZ9BEA0.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(158, 0, 'Tập 44', 'tap-44', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-44/IWZ9BEAI.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(159, 0, 'Tập 45', 'tap-45', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-45/IWZ9BEAW.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(160, 0, 'Tập 46', 'tap-46', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-46/IWZ9BEAO.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(161, 0, 'Tập 47', 'tap-47', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-47/IWZ9BEAU.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(162, 0, 'Tập 48', 'tap-48', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-48/IWZ9BEAZ.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(163, 0, 'Tập 49', 'tap-49', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-49/IWZ9BEA6.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(164, 0, 'Tập 50', 'tap-50', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-50/IWZ9BEA7.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(165, 0, 'Tập 51', 'tap-51', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-51/IWZ9BEA8.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(166, 0, 'Tập 52', 'tap-52', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-52/IWZ9BEA9.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(167, 0, 'Tập 53', 'tap-53', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-53/IWZ9BEAB.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(168, 0, 'Tập 54', 'tap-54', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-54/IWZ9BEAC.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(169, 0, 'Tập 55', 'tap-55', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-55/IWZ9BEAD.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(170, 0, 'Tập 56', 'tap-56', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-56/IWZ9BEAE.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(171, 0, 'Tập 57', 'tap-57', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-57/IWZ9BEAF.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(172, 0, 'Tập 58', 'tap-58', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-58/IWZ9BEB0.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(173, 0, 'Tập 59', 'tap-59', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-59/IWZ9BEBI.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(174, 0, 'Tập 60', 'tap-60', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-60/IWZ9BEBW.html', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(175, 0, 'Tập 1', 'tap-1', 35, 1, 'https://photos.google.com/share/AF1QipPsDb54SjGltowszHwuCFmep6gxCj6Y5yFbiWRtFPA33Bcfs2Xa6PXDy3OhaQ7bHQ/photo/AF1QipMccJu6A5XSPy2I8ewDdT13uNPt2xX5tKyL2V9x?key=cUlBeHhLTml3dWNjMWRQLXNVQnQ2M2Y3Ui01OUh3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(176, 0, 'Tập 2', 'tap-2', 35, 1, 'https://photos.google.com/share/AF1QipOzchFORJK70U0g1qfL363BO68ttpaj-Iamq2ElEp9qr_h6qraDWT1hkmclwiVRPQ/photo/AF1QipORw69AhjvrcAdKAgUdaQLhkmsOggqDWS3nsopy?key=ZjZTZEloUE9TTi0xTlllaTV6WXVCMzFhRnFfUU5R', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(177, 0, 'Tập 3', 'tap-3', 35, 1, 'https://photos.google.com/share/AF1QipP0Y6NDhUdRl0lxaIrq_aD-pnkQdGcpxCArzCDRbAIzIfQof__04euTqPMsYDL4Bg/photo/AF1QipMUCNlxEvqet_LfAFECiaPG-I6OywpisySJpEbc?key=WUZHYjNPS29sSHdaWjczMVZnS2I1XzZHckg0a1Nn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(178, 0, 'Tập 4', 'tap-4', 35, 1, 'https://photos.google.com/share/AF1QipM9b6snKTzHhdQquQw18OgR53gSre5fLmLsMDWDEiNgwVGV92Xj_ChIxkBNvY4zeA/photo/AF1QipN32hj2-yEiHhI5nnGLz32iUv1vbVbjZLKouTIc?key=ZXVOT2RzOE45WDQ1VDczR2huaXZRWmxQcHE4TFB3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(179, 0, 'Tập 5', 'tap-5', 35, 1, 'https://photos.google.com/share/AF1QipMpObT3lpkhyHoRNFEbraRggiTMiBSkKbosD-OWwBvTroc4-k-BfGdm6UORefTsQA/photo/AF1QipMEynGOw_HqADErtPOHuxpgFqfnvw1eDhTdnqUw?key=eXlpanlSVUlOTXJMNzZLZWx6Nno2Vy1SSkVWMlln', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(180, 0, 'Tập 6', 'tap-6', 35, 1, 'https://photos.google.com/share/AF1QipMYpVPw2Pp-KN0ACdBXvGzLgLRygR1Li3yVoQoXbzlpeKbnegqengMGnEF7HbW4gw/photo/AF1QipP-fmsEdCOUPyggl_MyIH7jdOdSQ648dAirz8SK?key=aVRqRmVXVXE4T2YtRUkzejNOajVkS3VYWGM1Ui1R', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(181, 0, 'Tập 7', 'tap-7', 35, 1, 'https://photos.google.com/share/AF1QipP4Npna7HHIVW6FiMh9uNThucIYDJOUxT_-MEOuEdKMU__wi6rBGApNGlQ0DpLMTQ/photo/AF1QipOiMB1XNKPwwtXZ0HzL62MoLs_MVtDShSsXFmzt?key=T0dfdVVGVTlWem5VS2dIQlhVaUY3NjNLeXh6aGhR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(182, 0, 'Tập 8', 'tap-8', 35, 1, 'https://photos.google.com/share/AF1QipMQv_MzjjMWs5tehefuvvmAKuV6zUiFv_KLtML1seYpkHfWt7Ot_oIC_d9Bv1vdZQ/photo/AF1QipNMO-5TE9QdcR_VuA7Atk4VDqnd8jNArqFxGtrA?key=TEV4cExyZFU1allsalFtZzYtVnRGU19ZOUpMV21n', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(183, 0, 'Tập 9', 'tap-9', 35, 1, 'https://photos.google.com/share/AF1QipMgcRd6G1HA4viQpXs9yI17ZOpX8sLigO2tQT4oBCCPnPKzrZmn22LRz9sOeuRlDw/photo/AF1QipPVTmnLNQjeoW6F8t4JVAR-td3-PcbFspoada54?key=WWJic2xJQ3pIU21FWFJSSW9fVEg1X05iRFNpMkdR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(184, 0, 'Tập 10', 'tap-10', 35, 1, 'https://photos.google.com/share/AF1QipPjgYpH8wHDPqTUntuXG0L2jmzhTFSNGhQKCkZfc0XF52HY0i50B4jZr35tOTgveA/photo/AF1QipOfrwnvvv4gVig5boh719mLPmpYXENBWJwTbgbS?key=SWxhMHkxNkt6cGhnVWwxTEcyY3VSNFFmMjhnSVdn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(185, 0, 'Tập 11', 'tap-11', 35, 1, 'https://photos.google.com/share/AF1QipMmkXt7PLVBg1yTnptSnkS7lASDPJ-zNKSFzG2AB0QaJ_ttpCRw8aNk6tok0I5ttA/photo/AF1QipMRmLL33L6sNDDAM9cOnjGf9RPceprEQyYWPWT2?key=U0hoMTBNdlB6aEUzVlFUZ1Yxbzd3ajg5OE1lOWxR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(186, 0, 'Tập 12', 'tap-12', 35, 1, 'https://photos.google.com/share/AF1QipPpNxK45u-XX1FGW6Nbb3fsGQMu2Hyx7SAg75pv45XXepAXWwNMdDUbslM3d0AR-Q/photo/AF1QipPUlnU-4mml4j3AmFDnwta9dZUMFSwayNHDSUg_?key=SW4yZGNVYXRjQTBFam9rY2ExdHBFN0prM2h4RDZ3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(187, 0, 'Tập 13', 'tap-13', 35, 1, 'https://photos.google.com/share/AF1QipNKVcybNFJ2_QUNL69UYe0w9gkvOMFv6pomPcdJyk0PmZb1oL7NZP3E6nO-y4_v4w/photo/AF1QipNXvmyfLY1KW5kaOIGGO8fS57cbR2FNlm-B2F5W?key=d09zRzBXdkpUVFBIUEdkR29laVVtWEpOTTdjTVR3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(188, 0, 'Tập 14', 'tap-14', 35, 1, 'https://photos.google.com/share/AF1QipNbVKjffejdtQwkLVz5ymKtetOSS2K3QKYDlDYpCIagNS73lLNoF-JipTjVJKo4kQ/photo/AF1QipM9oN0zF8bNeT-Ynpt5rCPffOs5iOHasYS5JZnw?key=d3BNZGE2dXFJV3MyVVg5dl9Xbmx3bFRJNjJRbFNR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(189, 0, 'Tập 15', 'tap-15', 35, 1, 'https://photos.google.com/share/AF1QipPQGs4qnoIhx3rRGX975M-V8TfBqUh1vDh67q512861OZRz2QfpsF4ZcmorWBT9vw/photo/AF1QipPsT54JtP6hSSansrcdW5vTw3z9hVZ98wawZco9?key=dldOVy12Z1VZM3lMMUJfd19iN19RWS1XR3oyZnVn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(190, 0, 'Tập 16', 'tap-16', 35, 1, 'https://photos.google.com/share/AF1QipMe-rRwO8nTnj5c8rsQPw_9sKbGOVtCjhCbs9VvvkFN9ZI7s1MLF5hQ9fFM2SfELA/photo/AF1QipNVbo-mG86g_xhCjc5aTm6OEKUAgMzoLHBjON8q?key=ZzVKbU01cnR3YUJBam9RNFRQdXV4cUJKcUlzVHB3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(191, 0, 'Tập 17', 'tap-17', 35, 1, 'https://photos.google.com/share/AF1QipOWJ5jQ46Eb4a6LhXxwEvArc3-xm-LwPdcFeLSPSPxTRmgg49y1Y2UBBdwnjjXI_Q/photo/AF1QipOyGPMTthWR_zR5yiA6wqnTuU7JBcJNU-28SAah?key=OHotNmZwX2tPSDhURGQ0cXVfa3MtR3hSQ1BGdm9B', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(192, 0, 'Tập 18', 'tap-18', 35, 1, 'https://photos.google.com/share/AF1QipO2xberHEmLnVn1H6tExwQY2bOxzk87wDH3e0iKj6wEr5hM4Gd3ehNqpdJXx8E7ZQ/photo/AF1QipMXGawGtoxkZ-Tm21SiNbdZwrT8K7GDvLb2mjo1?key=SXZyMWhnSXFRYzhvWlJnYnJvTzRxaWhvcnRab3pR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(193, 0, 'Tập 19', 'tap-19', 35, 1, 'https://photos.google.com/share/AF1QipP2ujqpKelxmytJRK5peN2YYsOmMySy9AlZnyWTnIketAGA53mT49gDr21cx8nibA/photo/AF1QipMRjoAROH1scjEgNjRVvLmEvVh3ZOup5jblMDQa?key=UjB4SXBoT3JZNk1Ub0FSVFBqN3dkOVhuT0JWOHlR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(194, 0, 'Tập 20', 'tap-20', 35, 1, 'https://photos.google.com/share/AF1QipMCNZcuLSQTJ-W147c1iJqEirQD04fu8C5uKKo85uKfD-KFBDzQn2KpNtyMWLmmLA/photo/AF1QipPteFtx9citUfNRwUISCzPDRx8G9IzwZMUH9L2v?key=eXJieFdzSk5Bei1SVm9VRk5PSkxsbzd3TDBmV1Bn', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(195, 0, 'Tập 21', 'tap-21', 35, 1, 'https://photos.google.com/share/AF1QipM_FTEz72QrJm8t_8d5zT0zxyvghhvtJD1VZ6tDz0Hm0hWFFObokPYAPqID-j08XA/photo/AF1QipP5fcNloq0DW9gYwLgH1ExZZLROlByUpUHmTjMp?key=bFJSc0gxcU92VTRDcEZucXFfRVQwRTZMVFJIeDZ3', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(196, 0, 'Tập 22', 'tap-22', 35, 1, 'https://photos.google.com/share/AF1QipMMzfneU5XsGHPCCDBbecW5MNtgyPHgF2ySCMcD5B6OaUhiYa49p-DfUWvi1b5vJw/photo/AF1QipNqtSzjrNQ28tviEKZLIBKBpDU7ojzgxGHLkimf?key=cTd5VTZDQlRYcTNIZjhYNTRtVGlhUXlmX3NHRVln', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(197, 0, 'Tập 23 - End', 'tap-23-end', 35, 1, 'https://photos.google.com/share/AF1QipMzCjEIjnn--WazIYLgLAh1iDMygeEqvqtjwkKI0Z1iip7zRy2LkmrqTG-wRy6n6w/photo/AF1QipNFuNOFtPjzK4bb0kHIjmK7PTNuDjInM8Rui5x-?key=VDhHUklpTXlpcUxnVlY0OHYtMElUeEwyaXd1cTdR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55'),
(198, 0, 'Tập 21', 'tap-21', 36, 1, 'https://photos.google.com/share/AF1QipMzCjEIjnn--WazIYLgLAh1iDMygeEqvqtjwkKI0Z1iip7zRy2LkmrqTG-wRy6n6w/photo/AF1QipNFuNOFtPjzK4bb0kHIjmK7PTNuDjInM8Rui5x-?key=VDhHUklpTXlpcUxnVlY0OHYtMElUeEwyaXd1cTdR', '', '', 0, 1, 1, '2015-05-20 11:29:55', '2015-05-20 11:29:55');

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
(145, 'fdhfdsh', 'dasgdg', 'safA', 'ASFaf'),
(146, 'test', 'test', 'test', 'name'),
(147, 'dsg', 'sdgasd', 'sdgasdg', 'sdgasdg'),
(148, 'Dg', 'asdgsg', 'sdgasd', 'gas'),
(149, 'Dgadsgadsgas', 'asdgsgsdgasdg', 'sdgasddgadsg', 'gassdgadsg'),
(150, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL,
  `meta_id` bigint(20) DEFAULT NULL,
  `slug` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `description` varchar(32) DEFAULT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `meta_id`, `slug`, `type`, `name`, `alias`, `description`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 2, 'action-movies', '1', 'action movies', NULL, '', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(5, 19, 'the-flash', '1', 'The Flash', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(6, 20, 'the-flash-season-1', '1', 'The Flash Season 1', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(7, 21, 'tv-series', '1', 'TV Series', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(8, 24, 'marvel', '1', 'Marvel', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(9, 25, 'age-of-ultron', '1', 'Age Of Ultron', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(10, 26, 'avengers', '1', 'Avengers', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(11, 27, 'avengers-2015', '1', 'Avengers 2015', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(12, 28, 'ciname-movies', '1', 'ciname movies', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(13, 29, 'thriller', '1', 'thriller', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(14, 30, 'fast-and-furious-7', '1', 'Fast and Furious 7', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(15, 31, 'fast-7', '1', 'Fast 7', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(16, 34, 'kyoto-kenshin', '1', 'Kyoto Kenshin', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(17, 35, 'flying-swords-of-dragon-gate', '1', 'Flying Swords Of Dragon Gate', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(18, 42, 'cinema-movie', '1', 'cinema movie', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(19, 52, 'one-piece', '1', 'One Piece', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(20, 57, 'fantasy', '1', 'fantasy', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(21, 58, 'drama', '1', 'drama', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(22, 61, 'survivor-2015', '1', 'Survivor 2015', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(23, 63, 'jurassic', '1', 'Jurassic', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(24, 64, 'jurassic-park-3', '1', 'Jurassic Park 3', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(25, 65, 'jurassic-2001', '1', 'Jurassic 2001', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(26, 67, 'sifu-vs-vampire', '1', 'sifu vs vampire', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(27, 68, 'phim-ma', '1', 'phim ma', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(28, 69, 'ong-toi-la-cuong-thi', '1', 'ông tôi là cương thi', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(29, 70, 'cuong-thi', '1', 'cương thi', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(35, 80, 'the-revenant-tron-bo', '1', 'The Revenant trọn bộ', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(37, 89, 'lam-tam-nhu', '2', 'lâm tâm như', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(38, 90, 'hoac-kien-hoa', '2', 'hoắc kiến hoa', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(41, 94, 'apocalypse', '1', 'Apocalypse', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(42, 95, 'days-of-future-past', '1', 'Days of Future Past', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(43, 96, 'ky-an-nha-thanh', '1', 'kỳ án nhà thanh', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(44, 97, 'ky-an-nha-thanh-tap-1', '1', 'ky an nha thanh tap 1', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(45, 98, 'ky-an-nha-thanh-2', '1', 'ky an nha thanh 2', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(46, 100, 'naruto', '1', 'naruto', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(47, 101, 'naruto-shippuuden', '1', 'Naruto Shippuuden', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(48, 102, 'uzumaki-naruto', '1', 'Uzumaki Naruto', NULL, NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(49, NULL, 'test', '1', 'test', 'test', '', 0, 0, '2016-08-07 14:03:15', '2016-08-07 14:03:15');

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
(43, 5, 1),
(43, 6, 1),
(43, 8, 1);

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
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles_cate`
--
ALTER TABLE `articles_cate`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`name`) USING BTREE;

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `articles_cate`
--
ALTER TABLE `articles_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `crew`
--
ALTER TABLE `crew`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
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
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `system_metadata`
--
ALTER TABLE `system_metadata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
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
