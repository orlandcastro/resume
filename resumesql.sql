-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2016 at 11:50 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resume`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_logged_in` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `name`, `email`, `username`, `password`, `is_logged_in`) VALUES
(1, 'James Orillaneda', 'orillaneda.james@gmail.com', 'RessuuAdmin', 'ad061af3fa161e2e56a195dab1ce9322', 0);

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `comp_inst` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `user_id`, `title`, `comp_inst`, `year`) VALUES
(2, 1, 'Microsoft Certified Professional', 'Microsoft', '2010'),
(3, 14, 'Certificate of Greatness', 'Greatness Company', '2012'),
(4, 14, 'Certificate of Greatness', 'Greatness Company', '2012'),
(5, 1, 'Microsoft Certified Technology Specialist', 'Microsoft', '2010'),
(6, 6, 'Microsoft Certified Professional', 'Microsoft', '2010'),
(7, 6, 'Microsoft Certified Technology Specialist', 'Microsoft', '2010'),
(8, 6, 'Microsoft Certified IT Professional', 'Microsoft', '2010'),
(9, 15, 'On-the-Job Training', 'pag-IBIG Fund Davao', '486 Hours'),
(10, 21, 'Computer Hardware Servicing NCII', 'Technical Education and Skills Development Authority (TESDA)', 'March 2013'),
(11, 21, 'Certification of Appreciation and Recognition', 'CTD Movers Company', 'July 2009'),
(12, 21, 'Certificate of Partisipation', 'Philippine Society of Information Technology Educators Foundation Inc.', 'March 2010'),
(13, 1, 'Microsoft Certified IT Professional', 'Microsoft', '2010'),
(14, 38, 'COMELEC: PCOS Machine Seminar', 'Estosan Garden Hotel Cotabato City', '2013'),
(15, 38, 'Android Programming', 'Notre Dame University Cotabato City', '2012'),
(16, 38, 'Senior’s Occupational Preparation', 'Notre Dame University Cotabato City', '2012'),
(17, 38, 'IT Research Updates', 'PSITS-PSITE XII  4th Regional Convention Notre Dame of Tacurong College, Tacurong City', '2012'),
(18, 38, 'Natural Language Processing', 'PSITS-PSITE XII 4th Regional Convention Notre Dame of Tacurong College, Tacurong City', '2012'),
(19, 38, 'Islamic Awareness', 'Cotabato City Central Pilot School Cotabato City', '2012'),
(20, 38, 'Emerging Technology', 'Notre Dame University Cotabato City', '2012'),
(21, 38, 'Robotics: Today and Tomorrow', 'PSITS-PSITE XII 3rd Regional Convention Notre Dame of Marbel University Koronadal City', '2011'),
(22, 38, 'Visual Basic 2008', 'Notre Dame University Cotabato City', '2011'),
(23, 38, 'Islamic Leadership', 'Sero Central School Cotabato City', '2011'),
(24, 38, 'Peace Orientation Workshop', 'Notre Dame University Cotabato City', '2011'),
(25, 38, 'Sensor Technology: 1st Step to  Mechatronics', 'PSITS-PSITE XII  2nd Regional Convention Notre Dame of Dadiangas University, General Santos City', '2010'),
(26, 54, 'Computer Programming NCIV', 'Technical Education and Skills Development Authority', 'August 2009');

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `id` int(100) NOT NULL,
  `camp_title` text NOT NULL,
  `camp_content` longtext NOT NULL,
  `camp_subject` text NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`id`, `camp_title`, `camp_content`, `camp_subject`, `date`) VALUES
(11, 'Sample Campaign', '<p>Sample Campaign with Image</p><p><p><img src="http://ressuu.me/upload_files/12.jpg"></p><br></p>\n', 'Sample Campaign', '1367059207');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('01eb258122dccd8bd494df2fe4ba55aa', '180.76.15.139', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 1434236513, ''),
('12bc368939b0ee80363c6cc5e6abc625', '100.43.81.155', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 1434303061, ''),
('190abcd1314ed29697d372e4f5197887', '207.46.13.58', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 1434366818, ''),
('20bcb05319ea658ec55b808d3cb23f06', '157.55.39.44', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465', 1434209739, ''),
('354c78cfd3d1584942bb24e5c7c507e4', '179.181.228.91', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36', 1434336874, ''),
('36504e63de562f71a3ac33be4fadf9d3', '217.12.204.95', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', 1434442078, ''),
('3a4f39174b2bf4841985be8e18a96736', '216.145.11.94', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3.5.30729) SurveyBot/', 1434400529, ''),
('460a4dc2b0dfc9e1d6bcb3af3d911f58', '66.91.234.178', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434261440, ''),
('47d7fde72ebd5dca993ed66911e18a99', '180.76.15.146', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 1434459751, ''),
('4cf16d23d2186ac5626e6dc56ae2ef44', '100.43.90.13', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 1434423690, ''),
('516647d9610aef7f6cf099f56a6561cb', '179.236.182.246', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36', 1434202901, ''),
('592c177a1cf3aad6af057ac5e84d9dc5', '157.55.39.17', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 1434371476, ''),
('5ac3c38a3462bd93ee9e968f3a85ab20', '207.46.13.58', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 1434366819, ''),
('5bf51093860faf26c92e5b228110e6eb', '66.249.79.96', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e', 1434295605, ''),
('6580e55f3ca04a919bced32957ccbc44', '157.55.39.218', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 1434366807, ''),
('768f0b8b4f9743697ced4c0d1578d4b8', '157.55.39.17', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 1434371476, ''),
('76a985818224e0c18f94ead769199b67', '180.76.15.136', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 1434234166, ''),
('913547213ef189b5e0390fcc7bb2a0fd', '69.171.227.113', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1434171934, ''),
('92dd4d18163151367a7008bd62297f55', '180.76.15.137', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 1434449359, ''),
('a88e0ec70c2229da5a98d464f22fa703', '203.111.224.94', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00J Build/KVT49L) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.109 M', 1434316473, ''),
('a8ed8cbd7e2945a375e9104cedd1e1cb', '180.76.15.160', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 1434367233, ''),
('ae60413c6fead9c6892448289a8562c2', '157.55.39.218', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 1434366807, ''),
('b0653e62410ffaa83020cb131998e159', '207.46.13.22', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465', 1434374900, ''),
('b430b1db506534a2c9be99ec47f4db3e', '100.43.81.155', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 1434308940, ''),
('b436df673d672b8a91abad0e70404129', '100.43.81.155', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 1434297304, ''),
('c6d992b62598910a554e70520f2e880f', '206.45.68.209', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36', 1434194066, ''),
('caf71e34b609e9b26a33edbd4ddc1613', '189.32.122.112', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36', 1434227037, ''),
('dfb8106a26aefb529cec8f5d4befe128', '180.76.15.142', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 1434200293, ''),
('f21b9f55db8647c7791593c833f13506', '186.45.148.149', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36', 1434205099, '');

-- --------------------------------------------------------

--
-- Table structure for table `connection_requests`
--

CREATE TABLE `connection_requests` (
  `id` int(100) NOT NULL,
  `to_user_id` int(100) NOT NULL,
  `from_user_id` int(100) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `connection_requests`
--

INSERT INTO `connection_requests` (`id`, `to_user_id`, `from_user_id`, `date`, `status`) VALUES
(13, 1, 33, '1366373582', 'confirmed'),
(14, 33, 1, '1366373704', 'confirmed'),
(15, 1, 33, '1366373704', 'confirmed'),
(18, 34, 13, '1366430598', 'pending'),
(22, 32, 13, '1366431111', 'confirmed'),
(23, 13, 32, '1366431111', 'confirmed'),
(24, 32, 1, '1366431116', 'confirmed'),
(25, 1, 32, '1366431116', 'confirmed'),
(36, 34, 1, '1366455954', 'pending'),
(37, 30, 1, '1366455957', 'pending'),
(39, 14, 1, '1366456250', 'pending'),
(40, 26, 1, '1366456262', 'pending'),
(41, 18, 1, '1366456279', 'pending'),
(42, 25, 1, '1366456504', 'pending'),
(43, 27, 1, '1366456507', 'pending'),
(56, 35, 1, '1366786670', 'pending'),
(57, 33, 32, '1366868325', 'confirmed'),
(58, 32, 33, '1366868325', 'confirmed'),
(59, 33, 13, '1366868336', 'confirmed'),
(60, 13, 33, '1366868336', 'confirmed'),
(64, 33, 11, '1366933430', 'confirmed'),
(65, 11, 33, '1366933430', 'confirmed'),
(69, 16, 11, '1366970464', 'pending'),
(70, 32, 11, '1367151118', 'confirmed'),
(71, 11, 32, '1367151118', 'confirmed'),
(74, 12, 11, '1367335204', 'confirmed'),
(75, 11, 12, '1367335204', 'confirmed'),
(79, 12, 32, '1367558827', 'confirmed'),
(80, 32, 12, '1367558827', 'confirmed'),
(81, 39, 1, '1367655457', 'pending'),
(84, 17, 11, '1369274968', 'confirmed'),
(85, 11, 17, '1369274968', 'confirmed'),
(86, 39, 36, '1369857006', 'pending'),
(87, 40, 36, '1369857007', 'pending'),
(88, 41, 36, '1369857010', 'pending'),
(89, 42, 36, '1369857011', 'pending'),
(90, 43, 36, '1369857012', 'pending'),
(91, 36, 11, '1369857017', 'confirmed'),
(92, 11, 36, '1369857017', 'confirmed'),
(95, 34, 36, '1369857162', 'pending'),
(96, 38, 36, '1369914940', 'confirmed'),
(97, 36, 38, '1369914940', 'confirmed'),
(98, 39, 38, '1369914953', 'pending'),
(104, 48, 1, '1371118697', 'pending'),
(105, 42, 13, '1371278901', 'pending'),
(106, 47, 13, '1371278905', 'pending'),
(108, 39, 13, '1371278958', 'pending'),
(110, 13, 11, '1371279819', 'confirmed'),
(111, 11, 13, '1371279819', 'confirmed'),
(112, 48, 13, '1371342760', 'confirmed'),
(113, 13, 48, '1371342760', 'confirmed'),
(114, 6, 13, '1371722000', 'confirmed'),
(115, 13, 6, '1371722000', 'confirmed'),
(116, 48, 32, '1374731737', 'pending'),
(117, 47, 32, '1374731741', 'pending'),
(118, 49, 32, '1374731747', 'pending'),
(119, 43, 32, '1374731750', 'pending'),
(120, 11, 48, '1375399304', 'confirmed'),
(121, 48, 11, '1375399304', 'confirmed'),
(122, 49, 11, '1375399319', 'pending'),
(123, 48, 33, '1375592978', 'pending'),
(124, 51, 11, '1381398588', 'pending'),
(125, 51, 32, '1385709870', 'pending'),
(126, 31, 1, '1387989188', 'confirmed'),
(127, 1, 31, '1387989188', 'confirmed'),
(128, 26, 57, '1418138804', 'pending'),
(130, 55, 57, '1418139386', 'pending'),
(131, 54, 57, '1418139390', 'pending'),
(132, 57, 56, '1418141465', 'pending'),
(133, 56, 57, '1418141479', 'confirmed'),
(134, 57, 56, '1418141479', 'confirmed'),
(135, 57, 54, '1418157739', 'pending'),
(136, 55, 54, '1418157743', 'pending'),
(137, 56, 54, '1418157747', 'pending'),
(138, 53, 54, '1418157751', 'pending'),
(139, 57, 1, '1433878193', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `user_id`, `address`, `email`, `phone`, `website`) VALUES
(1, 1, 'Bonifacio St Davao City', '', '', ''),
(2, 7, '', '', '', ''),
(3, 6, '', '', '', ''),
(4, 9, '', '', '', ''),
(5, 11, '', '', '', ''),
(6, 12, '', '', '', ''),
(7, 13, '', '', '', ''),
(8, 14, '', '', '', ''),
(9, 15, '', '', '', ''),
(10, 16, '', '', '', ''),
(11, 17, '', '', '', ''),
(12, 18, '', '', '', ''),
(13, 19, '', '', '', ''),
(14, 20, '', '', '', ''),
(15, 21, '', '', '', ''),
(16, 22, '', '', '', ''),
(17, 23, '', '', '', ''),
(18, 24, '', '', '', ''),
(19, 25, '', '', '', ''),
(20, 26, '', '', '', ''),
(21, 27, '', '', '', ''),
(22, 28, '', '', '', ''),
(23, 29, '', '', '', ''),
(24, 30, '', '', '', ''),
(25, 31, '', '', '', ''),
(26, 32, '', '', '', ''),
(27, 33, '', '', '', ''),
(28, 34, '', '', '', ''),
(29, 35, '', '', '', ''),
(30, 36, '', '', '', ''),
(32, 38, '', '', '', ''),
(33, 39, '', '', '', ''),
(34, 40, '', '', '', ''),
(35, 41, '', '', '', ''),
(36, 42, '', '', '', ''),
(37, 43, '', '', '', ''),
(40, 46, '', '', '', ''),
(41, 47, '', '', '', ''),
(42, 48, '', '', '', ''),
(43, 49, '', '', '', ''),
(44, 50, '', '', '', ''),
(45, 51, '', '', '', ''),
(46, 52, '', '', '', ''),
(47, 53, '', '', '', ''),
(48, 54, '', '', '', ''),
(49, 55, '', '', '', ''),
(50, 56, '', '', '', ''),
(51, 57, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `message`, `date`) VALUES
(1, 'James', 'dheymond_heart@yahoo.com', '', '1366797957'),
(2, 'James', 'dheymond_heart@yahoo.com', 'sfdsfsdf', '1366798517'),
(3, 'Eduardo D Barrete', 'eduardodbarrete@gmail.com', 'Test test test', '1367148022');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `school` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `date_start` varchar(255) NOT NULL,
  `date_end` varchar(255) NOT NULL,
  `awards_rec` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `user_id`, `school`, `course`, `date_start`, `date_end`, `awards_rec`) VALUES
(3, 1, 'Ateneo De Davao', 'M.S Information Technology', '2009', '2014', ''),
(4, 1, 'Notre Dame University', 'B.S Computer Science', '2002', '2008', ''),
(5, 14, 'School of the Greatest', 'All of the course', 'Since Birth', 'Present', 'All of the awards are mine!'),
(6, 6, 'Ateneo De Davao University', 'MS Information Technology', '2009', '', ''),
(7, 6, 'Notre Dame University', 'BS Computer Science', '2002', '2006', ''),
(8, 15, 'AMA Computer College - Davao', 'BS. in Information Technology', '2009', '2013', ''),
(9, 16, 'University of the Immaculate Conception', 'Bachelor of Science in Information Technology', '2010', '2013.', ''),
(10, 18, 'Systems Technology Institute', 'Bachelor of Science in Information Technology', '2007', '2011', ''),
(11, 21, 'Notre Dame University', 'Bachelor of Science in Computer Science', '2006', '2011', ''),
(12, 25, 'Notre Dame University Cotabato City', 'Bachelor of Science in Computer Science', '2005', '2012', ''),
(13, 31, 'Ateneo de Davao University', 'Bachelor of Science in Information Technology', '2009', '2013', 'Thesis: “A Comparative Study between an Integrated LTSP server-HPC Cluster of Low-end Machines and a LTSP-HPC High-end Machine”'),
(14, 32, 'Notre Dame University', 'Bachelor of Science in Information Technology', '2008', '2012', 'Most Outstanding Thesis Award.\nMost Outstanding Research Paper '),
(15, 33, 'Interface Computer College', 'Bachelor of Science in Information Technology', '2004', '2007', '...'),
(16, 34, 'Ateneo de Davao University', 'Bachelor of Science in Nursing', 'June 2005', 'March 2009', ''),
(17, 11, 'AMA Computer College', 'Bachelor of Science in Computer Science', '2007', '2008', ''),
(18, 11, 'Interface Computer College', 'Bachelor of Science in Information Technology', '2008', '2011', 'Academic Excellence Award, Best in Thesis'),
(19, 36, 'Interface Computer College', 'BSIT', '2009', '2013', ''),
(20, 38, 'Notre Dame University', 'Bachelor of Science in Computer Science', '2008', '2013', ''),
(21, 38, 'Maguindanao National High School', 'N/A', '2004', '2008', ''),
(22, 38, 'Shariff Aguak Central Elementary School', '', '', '2004', ''),
(23, 12, 'STI College Cotabato', 'Bachelor of Science In Information Technol0gy', '2008', '2012', 'Academic Excellence Awardee'),
(24, 17, 'Our Lady of Lourdes College', 'Elementary', 'June 1988', 'March 1994', 'Loyalty Award'),
(25, 17, 'Our Lady of Lourdes College', 'High School', 'June 1994', 'March 1998', 'Loyalty Award\nBand of the Year (Dark Sun) circa 1996'),
(26, 17, 'University of Southeastern Philippines', 'Bachelor of Science in Computer Science', 'June 1999', 'April 2003', 'Dean''s Lister'),
(27, 17, 'University of Southeastern Philippines', 'Master of Science in Information Science', 'June 2005', '', 'On going'),
(28, 49, 'Notre Dame University', 'Bachelor of Science in Information Technology', '2010', '2013', ''),
(29, 49, 'Notre Dame Dadiangas University', 'Bachelor of Secondary Education Major in Religious Educaiton', '2008', '2010', ''),
(30, 52, 'University of Mindanao', 'BSIT', 'june 2007', 'may 2012', ''),
(31, 55, 'FCAT', 'Bachelor of Science in Computer Science', '2009', '2013', 'Cum Laude'),
(32, 56, 'AMA Computer College Davao', 'Bachelor of Science of Computer Science', 'June 2008', 'May 2012', 'Exemplary Thesis Award 2012\nResearch Presentor Research Forum 2012'),
(33, 56, 'Daniel R. Aguinaldo National High School', 'Secondary', 'June 2001', 'March 2005', 'Asexual Plant Propagation Runner Up'),
(34, 54, 'Southeastern Mindanao Institute of Technology', 'Software Development (Desktop)', 'May 20, 2009', 'August 21, 2010', 'PGS-TESDA Scholarship Graduate'),
(35, 54, 'Jobs ACADEMY Davao', 'Web Software Development', 'August 2010', ' November 2012', 'ITWSP-TESDA SCHOLASHIP GRADUATE'),
(36, 1, 'University of Mindanao', 'PhD Computer Technology', 'January 2, 2011', 'December 20, 2015', 'Maecenas porttitor\r\nVestibulum feugiat'),
(37, 1, 'Xavier University', 'M.S Computer Science', 'October 2011', 'April 2015', 'Cras mattis quis\r\nVestibulum posuere'),
(38, 8, 'Assumption College of Davao City', 'BSIT', 'March 2010', 'April 2015', 'No Award'),
(39, 10, 'Xavier University', 'M.S Information Technology', 'March 2010', 'December 2015', 'Morbi nec eleifend tellus. Duis et laoreet orci. Donec mattis vehicula egestas.');

-- --------------------------------------------------------

--
-- Table structure for table `fb_user_id`
--

CREATE TABLE `fb_user_id` (
  `id` int(100) NOT NULL,
  `fb_id` int(255) NOT NULL,
  `fb_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fb_user_id`
--

INSERT INTO `fb_user_id` (`id`, `fb_id`, `fb_email`) VALUES
(4, 2147483647, 'jesterologer@yahoo.com'),
(5, 1154712307, 'dheymond_heart@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_address` varchar(100) NOT NULL,
  `company_job` varchar(100) NOT NULL,
  `company_details` varchar(100) NOT NULL,
  `company_rate` varchar(100) NOT NULL,
  `company_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `user_id`, `company_name`, `company_address`, `company_job`, `company_details`, `company_rate`, `company_status`) VALUES
(1, 0, 'Apple Inc.', 'Apple Campus, Cupertino, California, U.S.', 'Web Master', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '$2 / Hours', 'PENDING'),
(2, 0, 'Samsung Electronics', 'Suwon, South Korea', 'Android Developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '$200 / Week', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `latest_news`
--

CREATE TABLE `latest_news` (
  `id` int(100) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_content` varchar(255) NOT NULL,
  `news_slug` varchar(255) NOT NULL,
  `news_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latest_news`
--

INSERT INTO `latest_news` (`id`, `news_title`, `news_content`, `news_slug`, `news_date`) VALUES
(1, 'Ressuu Features', 'Easily update your profile. Update you profile so easily with just a few clicks away anywhere, anytime of the day.\n\nPut your masterpiece in place. Showcasing your portfolio online connected to social networking at the same time.\n\nPersonalized your CV. Per', 'ressuu-features', '1366878143'),
(2, 'Welcome to ressuu.me', 'We welcome you to join and explore what is ressuu.me', 'welcome-to-ressuu.me', '1366800382');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_feeds`
--

CREATE TABLE `news_feeds` (
  `id` int(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_feeds`
--

INSERT INTO `news_feeds` (`id`, `user_id`, `activity`, `date`) VALUES
(1, 11, 'Updated profile picture', '1365761851'),
(2, 11, 'Updated profile', '1365761940'),
(3, 11, 'Add Work Experience Entry', '1365761973'),
(4, 1, 'Set account to private', '1365763281'),
(5, 13, 'Updated profile', '1365821563'),
(6, 13, 'Updated profile', '1365822384'),
(7, 13, 'Updated profile', '1365822413'),
(8, 1, 'Set Account to public', '1365835652'),
(9, 1, 'Updated profile', '1365835678'),
(10, 1, 'Updated profile', '1365835786'),
(11, 14, 'Updated profile picture', '1365837569'),
(12, 14, 'Updated profile picture', '1365837661'),
(13, 14, 'Updated profile', '1365837824'),
(14, 14, 'Add Work Experience Entry', '1365837920'),
(15, 14, 'Update Work Experience Entry', '1365837944'),
(16, 14, 'Add Education Entry', '1365837979'),
(17, 14, 'Add Skill Entry', '1365838055'),
(18, 14, 'Add Certificate Entry', '1365838077'),
(19, 14, 'Add Certificate Entry', '1365838078'),
(20, 14, 'Add Portfolio Endtry', '1365838178'),
(21, 11, 'Updated profile', '1365839866'),
(22, 11, 'Updated profile', '1365839885'),
(23, 1, 'Updated profile', '1365841478'),
(24, 1, 'Add Certificate Entry', '1365841577'),
(25, 6, 'Updated profile', '1365842174'),
(26, 6, 'Updated profile picture', '1365842317'),
(27, 6, 'Add Work Experience Entry', '1365842389'),
(28, 6, 'Add Work Experience Entry', '1365842592'),
(29, 6, 'Remove Work Experience Endry', '1365842838'),
(30, 6, 'Update Work Experience Entry', '1365842911'),
(31, 6, 'Add Work Experience Entry', '1365842968'),
(32, 6, 'Add Education Entry', '1365843085'),
(33, 6, 'Add Education Entry', '1365843113'),
(34, 6, 'Add Skill Entry', '1365843153'),
(35, 6, 'Add Skill Entry', '1365843167'),
(36, 6, 'Updated profile', '1365843293'),
(37, 11, 'Updated profile picture', '1365848336'),
(38, 6, 'Update Work Experience Entry', '1365849872'),
(39, 6, 'Update Work Experience Entry', '1365850338'),
(40, 6, 'Add Work Experience Entry', '1365850426'),
(41, 6, 'Add Skill Entry', '1365850585'),
(42, 6, 'Add Certificate Entry', '1365850612'),
(43, 6, 'Add Certificate Entry', '1365850978'),
(44, 6, 'Add Certificate Entry', '1365851011'),
(45, 6, 'Add Skill Entry', '1365851079'),
(46, 6, 'Add Skill Entry', '1365851090'),
(47, 6, 'Add Portfolio Endtry', '1365851364'),
(48, 6, 'Add Portfolio Endtry', '1365851540'),
(49, 6, 'Update Education Entry', '1365851887'),
(50, 6, 'Update Certificate Entry', '1365851949'),
(51, 6, 'Add Portfolio Endtry', '1365852046'),
(52, 6, 'Add Skill Entry', '1365857629'),
(53, 6, 'Add Skill Entry', '1365857645'),
(54, 6, 'Updated profile', '1365862655'),
(55, 6, 'Updated Portfolio Endtry', '1365865468'),
(56, 0, 'Created Account', '1365885497'),
(57, 15, 'Updated profile picture', '1365885593'),
(58, 15, 'Updated profile', '1365885719'),
(59, 15, 'Updated profile', '1365885763'),
(60, 15, 'Updated profile', '1365885891'),
(61, 15, 'Add Education Entry', '1365886017'),
(62, 15, 'Add Skill Entry', '1365886051'),
(63, 15, 'Add Skill Entry', '1365886063'),
(64, 15, 'Add Skill Entry', '1365886070'),
(65, 15, 'Add Skill Entry', '1365886096'),
(66, 15, 'Add Skill Entry', '1365886113'),
(67, 15, 'Add Certificate Entry', '1365886178'),
(68, 15, 'Set account to private', '1365886234'),
(69, 0, 'Created Account', '1365897964'),
(70, 16, 'Updated profile', '1365898547'),
(71, 16, 'Updated profile picture', '1365898563'),
(72, 16, 'Add Education Entry', '1365898681'),
(73, 16, 'Add Skill Entry', '1365898712'),
(74, 16, 'Add Skill Entry', '1365898727'),
(75, 16, 'Add Skill Entry', '1365898741'),
(76, 16, 'Add Skill Entry', '1365898752'),
(77, 16, 'Remove Skill Entry', '1365898762'),
(78, 16, 'Remove Skill Entry', '1365898768'),
(79, 16, 'Remove Skill Entry', '1365898773'),
(80, 16, 'Update Skill Entry', '1365898782'),
(81, 16, 'Add Skill Entry', '1365898800'),
(82, 16, 'Add Skill Entry', '1365898882'),
(83, 16, 'Set account to private', '1365898925'),
(84, 0, 'Created Account', '1365903306'),
(85, 17, 'Add Work Experience Entry', '1365904777'),
(86, 17, 'Update Work Experience Entry', '1365904822'),
(87, 17, 'Add Work Experience Entry', '1365904948'),
(88, 0, 'Created Account', '1365938533'),
(89, 18, 'Updated profile', '1365938725'),
(90, 18, 'Add Work Experience Entry', '1365938852'),
(91, 18, 'Add Education Entry', '1365938960'),
(92, 0, 'Created Account', '1365939520'),
(93, 0, 'Created Account', '1365942548'),
(94, 20, 'Updated profile picture', '1365942630'),
(95, 20, 'Set Account to public', '1365942677'),
(96, 11, 'Set Account to public', '1366003611'),
(97, 11, 'Updated profile', '1366003640'),
(98, 6, 'Add Portfolio Endtry', '1366010819'),
(99, 6, 'Add Portfolio Endtry', '1366010896'),
(100, 6, 'Add Skill Entry', '1366013480'),
(101, 6, 'Add Skill Entry', '1366013497'),
(102, 6, 'Add Skill Entry', '1366013504'),
(103, 6, 'Update Skill Entry', '1366013517'),
(104, 6, 'Add Skill Entry', '1366013530'),
(105, 11, 'Set Account to public', '1366013753'),
(106, 6, 'Set account to private', '1366015211'),
(107, 11, 'Set account to private', '1366015538'),
(108, 0, 'Created Account', '1366016107'),
(109, 6, 'Set Account to public', '1366016314'),
(110, 21, 'Updated profile picture', '1366016592'),
(111, 21, 'Updated profile', '1366017725'),
(112, 21, 'Updated profile', '1366017751'),
(113, 21, 'Updated profile', '1366017857'),
(114, 21, 'Updated profile', '1366017873'),
(115, 21, 'Updated profile', '1366017891'),
(116, 21, 'Add Work Experience Entry', '1366018833'),
(117, 21, 'Add Education Entry', '1366018948'),
(118, 21, 'Add Skill Entry', '1366019004'),
(119, 21, 'Add Skill Entry', '1366019031'),
(120, 21, 'Add Skill Entry', '1366019051'),
(121, 21, 'Add Skill Entry', '1366019069'),
(122, 21, 'Add Skill Entry', '1366019089'),
(123, 21, 'Add Skill Entry', '1366019106'),
(124, 21, 'Add Skill Entry', '1366019137'),
(125, 21, 'Add Skill Entry', '1366019168'),
(126, 21, 'Add Skill Entry', '1366019185'),
(127, 21, 'Add Certificate Entry', '1366019666'),
(128, 21, 'Add Certificate Entry', '1366019861'),
(129, 21, 'Update Certificate Entry', '1366019906'),
(130, 21, 'Update Certificate Entry', '1366019915'),
(131, 21, 'Add Certificate Entry', '1366020017'),
(132, 21, 'Add Portfolio Endtry', '1366020308'),
(133, 21, 'Updated Portfolio Endtry', '1366020483'),
(134, 21, 'Updated Portfolio Endtry', '1366020507'),
(135, 21, 'Add Portfolio Endtry', '1366020537'),
(136, 21, 'Add Portfolio Endtry', '1366020576'),
(137, 21, 'Updated Portfolio Endtry', '1366020584'),
(138, 21, 'Add Portfolio Endtry', '1366020612'),
(139, 21, 'Add Portfolio Endtry', '1366020634'),
(140, 21, 'Add Portfolio Endtry', '1366020661'),
(141, 21, 'Updated profile', '1366020761'),
(142, 21, 'Updated profile', '1366020781'),
(143, 21, 'Update Skill Entry', '1366020859'),
(144, 21, 'Update Skill Entry', '1366020873'),
(145, 21, 'Set Account to public', '1366020943'),
(146, 21, 'Set Account to public', '1366020948'),
(147, 21, 'Update Work Experience Entry', '1366021559'),
(148, 21, 'Update Work Experience Entry', '1366021611'),
(149, 21, 'Updated profile', '1366022136'),
(150, 21, 'Updated profile', '1366022251'),
(151, 6, 'Set account to private', '1366022804'),
(152, 0, 'Created Account', '1366024909'),
(153, 0, 'Created Account', '1366027394'),
(154, 6, 'Set Account to public', '1366034512'),
(155, 0, 'Created Account', '1366071184'),
(156, 0, 'Created Account', '1366071227'),
(157, 24, 'Updated profile picture', '1366071270'),
(158, 24, 'Updated profile', '1366071341'),
(159, 25, 'Updated profile', '1366071374'),
(160, 25, 'Add Work Experience Entry', '1366071471'),
(161, 25, 'Add Education Entry', '1366071539'),
(162, 25, 'Add Skill Entry', '1366071674'),
(163, 25, 'Add Skill Entry', '1366071696'),
(164, 25, 'Add Skill Entry', '1366071711'),
(165, 25, 'Add Skill Entry', '1366071914'),
(166, 25, 'Add Skill Entry', '1366071930'),
(167, 25, 'Add Skill Entry', '1366071954'),
(168, 25, 'Set Account to public', '1366072018'),
(169, 11, 'Add Portfolio Endtry', '1366084220'),
(170, 0, 'Created Account', '1366087086'),
(171, 13, 'Updated profile', '1366090801'),
(172, 13, 'Add Work Experience Entry', '1366091258'),
(175, 6, 'Is now connected to James Orillaneda', '1366108943'),
(176, 0, 'Created Account', '1366110660'),
(177, 27, 'Set account to private', '1366110854'),
(178, 1, 'Remove Portfolio Endtry', '1366180808'),
(179, 1, 'Remove Portfolio Endtry', '1366180837'),
(180, 1, 'Remove Portfolio Endtry', '1366180856'),
(181, 1, 'Add Portfolio Endtry', '1366180926'),
(182, 1, 'Add Portfolio Endtry', '1366181092'),
(183, 1, 'Add Portfolio Endtry', '1366181259'),
(184, 1, 'Remove Work Experience Endry', '1366181288'),
(185, 1, 'Update Work Experience Entry', '1366181390'),
(186, 1, 'Add Work Experience Entry', '1366181439'),
(187, 1, 'Add Work Experience Entry', '1366181611'),
(188, 1, 'Add Work Experience Entry', '1366181672'),
(189, 1, 'Update Education Entry', '1366181779'),
(190, 1, 'Update Education Entry', '1366181815'),
(191, 1, 'Add Certificate Entry', '1366181987'),
(192, 1, 'Add Portfolio Endtry', '1366183562'),
(193, 1, 'Remove Portfolio Endtry', '1366183594'),
(194, 1, 'Remove Portfolio Endtry', '1366183608'),
(195, 1, 'Add Portfolio Endtry', '1366183757'),
(196, 1, 'Add Portfolio Endtry', '1366183841'),
(197, 1, 'Add Portfolio Endtry', '1366184155'),
(198, 1, 'Add Portfolio Endtry', '1366184344'),
(199, 1, 'Updated Portfolio Endtry', '1366184384'),
(200, 1, 'Add Portfolio Endtry', '1366184453'),
(201, 1, 'Add Portfolio Endtry', '1366184632'),
(202, 1, 'Add Portfolio Endtry', '1366184800'),
(203, 1, 'Add Portfolio Endtry', '1366186410'),
(204, 1, 'Add Portfolio Endtry', '1366186488'),
(205, 1, 'Is now connected to James Orillaneda', '1366186607'),
(206, 1, 'Update Work Experience Entry', '1366186676'),
(207, 1, 'Add Skill Entry', '1366186713'),
(208, 1, 'Add Skill Entry', '1366186739'),
(209, 1, 'Add Skill Entry', '1366186761'),
(210, 1, 'Add Skill Entry', '1366186777'),
(211, 1, 'Add Portfolio Endtry', '1366187399'),
(212, 1, 'Add Portfolio Endtry', '1366187534'),
(213, 1, 'Updated Portfolio Endtry', '1366187636'),
(214, 0, 'Created Account', '1366194526'),
(215, 28, 'Updated profile', '1366194622'),
(216, 1, 'Updated profile', '1366221663'),
(217, 0, 'Created Account', '1366248995'),
(218, 1, 'Updated Portfolio Endtry', '1366258521'),
(219, 1, 'Updated Portfolio Endtry', '1366258555'),
(220, 1, 'Updated Portfolio Endtry', '1366258563'),
(221, 1, 'Updated Portfolio Endtry', '1366258581'),
(222, 1, 'Updated Portfolio Endtry', '1366258591'),
(223, 1, 'Updated Portfolio Endtry', '1366258649'),
(224, 1, 'Updated Portfolio Endtry', '1366258679'),
(225, 1, 'Updated Portfolio Endtry', '1366280581'),
(226, 1, 'Updated Portfolio Endtry', '1366280591'),
(227, 1, 'Updated Portfolio Endtry', '1366280627'),
(228, 1, 'Updated Portfolio Endtry', '1366280682'),
(229, 1, 'Updated Portfolio Endtry', '1366280695'),
(230, 1, 'Updated Portfolio Endtry', '1366280704'),
(231, 1, 'Updated Portfolio Endtry', '1366280713'),
(232, 1, 'Updated Portfolio Endtry', '1366280723'),
(233, 1, 'Updated Portfolio Endtry', '1366280734'),
(234, 1, 'Updated Portfolio Endtry', '1366280774'),
(235, 0, 'Created Account', '1366341825'),
(236, 30, 'Updated profile', '1366342517'),
(237, 0, 'Created Account', '1366357343'),
(238, 31, 'Updated profile', '1366358193'),
(239, 31, 'Add Education Entry', '1366358611'),
(240, 31, 'Set Account to public', '1366359038'),
(241, 31, 'Set account to private', '1366359307'),
(242, 14, 'Remove Portfolio Endtry', '1366362969'),
(243, 14, 'Remove Portfolio Endtry', '1366362978'),
(244, 14, 'Remove Portfolio Endtry', '1366363023'),
(245, 14, 'Remove Portfolio Endtry', '1366363036'),
(246, 14, 'Created Account', '1366363286'),
(247, 32, 'Updated profile', '1366364199'),
(248, 32, 'Updated profile', '1366364332'),
(249, 32, 'Updated profile', '1366364438'),
(250, 32, 'Updated profile', '1366364474'),
(251, 32, 'Updated profile picture', '1366364562'),
(252, 32, 'Add Work Experience Entry', '1366364700'),
(253, 32, 'Add Education Entry', '1366364769'),
(254, 32, 'Add Skill Entry', '1366364801'),
(255, 32, 'Add Skill Entry', '1366364823'),
(256, 32, 'Add Skill Entry', '1366364948'),
(257, 32, 'Update Skill Entry', '1366365076'),
(258, 32, 'Remove Skill Entry', '1366365227'),
(259, 32, 'Remove Skill Entry', '1366365233'),
(260, 32, 'Add Skill Entry', '1366365338'),
(261, 32, 'Add Skill Entry', '1366365432'),
(262, 32, 'Add Skill Entry', '1366365512'),
(263, 32, 'Add Skill Entry', '1366365540'),
(264, 32, 'Add Skill Entry', '1366365562'),
(265, 32, 'Add Skill Entry', '1366365621'),
(266, 0, 'Created Account', '1366368097'),
(267, 11, 'Send connection request to Jeffrey P. Bugahod', '1366369601'),
(268, 32, 'Is now connected to James Orillaneda', '1366369658'),
(269, 33, 'Updated profile', '1366373148'),
(270, 33, 'Updated profile picture', '1366373211'),
(271, 33, 'Add Work Experience Entry', '1366373340'),
(272, 33, 'Add Education Entry', '1366373399'),
(273, 33, 'Add Skill Entry', '1366373508'),
(274, 1, 'Send connection request to Jeffrey P. Bugahod', '1366373533'),
(275, 1, 'Send connection request to Rommel Gloria', '1366373558'),
(276, 33, 'Is now connected to Eduardo D Barrete', '1366373582'),
(277, 33, 'Is now connected to Eduardo D Barrete', '1366373704'),
(278, 33, 'Set Account to public', '1366373782'),
(279, 0, 'Created Account', '1366376009'),
(280, 34, 'Updated profile', '1366376173'),
(281, 34, 'Add Work Experience Entry', '1366376483'),
(282, 34, 'Add Work Experience Entry', '1366376808'),
(283, 34, 'Add Education Entry', '1366376905'),
(284, 11, 'Send connection request to Rommel Gloria', '1366429712'),
(285, 11, 'Send connection request to Edwin Bryan Rosete', '1366429800'),
(286, 13, 'Send connection request to Francx Michael Zamora', '1366430598'),
(287, 13, 'Send connection request to Jeffrey P. Bugahod', '1366430685'),
(288, 13, 'Send connection request to Rommel Gloria', '1366430687'),
(289, 32, 'Send connection request to Rommel Gloria', '1366431105'),
(290, 32, 'Is now connected to Edwin Bryan Rosete', '1366431111'),
(291, 32, 'Is now connected to Eduardo D Barrete', '1366431116'),
(292, 11, 'Send connection request to Abolais Jr. Palagawad', '1366439338'),
(293, 11, 'Send connection request to Francx Michael Zamora', '1366439552'),
(294, 11, 'Send connection request to John Alvin Caralos', '1366439650'),
(302, 1, 'Send connection request to Francx Michael Zamora', '1366455954'),
(303, 1, 'Send connection request to Abolais Jr. Palagawad', '1366455957'),
(304, 1, 'Send connection request to John Alvin Caralos', '1366455960'),
(305, 1, 'Send connection request to Jeffrey Bugahod', '1366456250'),
(306, 1, 'Send connection request to Bai Saada Schejam Biruar', '1366456262'),
(307, 1, 'Send connection request to Keynvi Lubiano', '1366456279'),
(308, 1, 'Send connection request to John Philip Agustino', '1366456504'),
(309, 1, 'Send connection request to Armand John Virrey', '1366456507'),
(310, 11, 'Updated profile', '1366457964'),
(311, 11, 'Updated profile', '1366458189'),
(312, 11, 'Update Work Experience Entry', '1366458480'),
(313, 11, 'Add Education Entry', '1366458618'),
(314, 11, 'Add Education Entry', '1366458841'),
(315, 11, 'Update Education Entry', '1366458866'),
(316, 11, 'Add Skill Entry', '1366458902'),
(317, 11, 'Add Skill Entry', '1366458920'),
(318, 11, 'Add Skill Entry', '1366458941'),
(319, 11, 'Add Skill Entry', '1366458957'),
(320, 11, 'Update Skill Entry', '1366459118'),
(321, 11, 'Add Skill Entry', '1366459179'),
(322, 11, 'Update Skill Entry', '1366459205'),
(323, 11, 'Update Education Entry', '1366459336'),
(324, 11, 'Update Education Entry', '1366459441'),
(325, 11, 'Update Education Entry', '1366459482'),
(326, 11, 'Updated profile', '1366459658'),
(327, 11, 'Updated profile', '1366459695'),
(328, 11, 'Set account to private', '1366459748'),
(329, 11, 'Set Account to public', '1366459753'),
(330, 11, 'Updated profile', '1366459814'),
(331, 11, 'Updated Portfolio Endtry', '1366460098'),
(332, 11, 'Update Work Experience Entry', '1366460199'),
(333, 11, 'Update Work Experience Entry', '1366460597'),
(344, 11, 'Is now connected to Jeffrey P. Bugahod', '1366625244'),
(345, 0, 'Created Account', '1366775548'),
(346, 1, 'Send connection request to Sheila Tayone', '1366786670'),
(347, 35, 'Updated profile', '1366786885'),
(348, 32, 'Updated profile', '1366862749'),
(349, 32, 'Update Skill Entry', '1366862851'),
(350, 32, 'Update Skill Entry', '1366862885'),
(351, 32, 'Update Skill Entry', '1366862898'),
(352, 33, 'Is now connected to Jeffrey P. Bugahod', '1366868325'),
(353, 33, 'Is now connected to Edwin Bryan Rosete', '1366868336'),
(354, 33, 'Updated profile', '1366869454'),
(355, 33, 'Updated profile', '1366869474'),
(356, 0, 'Created Account', '1366871530'),
(357, 36, 'Updated profile', '1366871858'),
(358, 36, 'Add Work Experience Entry', '1366872111'),
(359, 36, 'Add Education Entry', '1366872193'),
(360, 36, 'Add Skill Entry', '1366872241'),
(361, 36, 'Add Skill Entry', '1366873598'),
(362, 36, 'Add Skill Entry', '1366873651'),
(363, 36, 'Update Skill Entry', '1366873663'),
(364, 36, 'Update Skill Entry', '1366873733'),
(368, 33, 'Is now connected to James G. Orillaneda', '1366933430'),
(369, 0, 'Created Account', '1366968609'),
(373, 11, 'Send connection request to Renemari Padillo', '1366970464'),
(374, 32, 'Is now connected to James G. Orillaneda', '1367151118'),
(375, 0, 'Created Account', '1367164023'),
(376, 38, 'Updated profile', '1367164559'),
(377, 38, 'Add Education Entry', '1367165163'),
(378, 38, 'Add Skill Entry', '1367165225'),
(379, 38, 'Add Certificate Entry', '1367165283'),
(380, 38, 'Add Certificate Entry', '1367165302'),
(381, 38, 'Add Certificate Entry', '1367165346'),
(382, 38, 'Add Certificate Entry', '1367165372'),
(383, 38, 'Add Certificate Entry', '1367165396'),
(384, 38, 'Add Certificate Entry', '1367165466'),
(385, 38, 'Add Certificate Entry', '1367165517'),
(386, 38, 'Add Certificate Entry', '1367165539'),
(387, 38, 'Add Certificate Entry', '1367165559'),
(388, 38, 'Add Certificate Entry', '1367165583'),
(389, 38, 'Add Certificate Entry', '1367165602'),
(390, 38, 'Add Certificate Entry', '1367165688'),
(391, 38, 'Add Education Entry', '1367165767'),
(392, 38, 'Update Education Entry', '1367165785'),
(393, 38, 'Update Education Entry', '1367165832'),
(394, 38, 'Add Education Entry', '1367165868'),
(395, 38, 'Add Work Experience Entry', '1367165972'),
(396, 38, 'Update Work Experience Entry', '1367165990'),
(397, 38, 'Add Work Experience Entry', '1367166102'),
(398, 38, 'Updated profile picture', '1367166262'),
(399, 38, 'Updated profile', '1367166576'),
(403, 0, 'Created Account', '1367216408'),
(404, 39, 'Updated profile', '1367216734'),
(405, 39, 'Updated profile', '1367216951'),
(406, 39, 'Updated profile picture', '1367217129'),
(407, 39, 'Updated profile', '1367217325'),
(408, 39, 'Updated profile', '1367217370'),
(409, 39, 'Updated profile', '1367217407'),
(410, 12, 'Updated profile picture', '1367331518'),
(411, 12, 'Updated profile', '1367335128'),
(412, 12, 'Updated profile', '1367335148'),
(413, 12, 'Is now connected to James G. Orillaneda', '1367335204'),
(414, 12, 'Add Work Experience Entry', '1367335317'),
(415, 12, 'Remove Work Experience Endry', '1367335324'),
(416, 32, 'Send connection request to James Orillaneda', '1367338912'),
(417, 6, 'Send connection request to James Orillaneda', '1367349067'),
(418, 0, 'Created Account', '1367371039'),
(419, 32, 'Updated profile', '1367411024'),
(420, 39, 'Updated profile', '1367479776'),
(421, 39, 'Updated profile picture', '1367480585'),
(422, 39, 'Set Account to public', '1367480585'),
(423, 0, 'Created Account', '1367491682'),
(424, 41, 'Updated profile picture', '1367492042'),
(425, 41, 'Updated profile', '1367496008'),
(426, 41, 'Add Skill Entry', '1367496165'),
(427, 41, 'Add Portfolio Endtry', '1367496702'),
(428, 12, 'Add Education Entry', '1367496771'),
(429, 12, 'Add Skill Entry', '1367496785'),
(430, 12, 'Add Skill Entry', '1367496801'),
(431, 12, 'Update Skill Entry', '1367496876'),
(432, 12, 'Update Skill Entry', '1367496967'),
(433, 41, 'Add Portfolio Endtry', '1367497003'),
(434, 12, 'Update Skill Entry', '1367497005'),
(435, 12, 'Add Work Experience Entry', '1367497147'),
(436, 12, 'Update Work Experience Entry', '1367497179'),
(437, 12, 'Update Work Experience Entry', '1367497225'),
(438, 12, 'Add Skill Entry', '1367497333'),
(439, 41, 'Add Portfolio Endtry', '1367497445'),
(440, 41, 'Add Portfolio Endtry', '1367497519'),
(441, 12, 'Add Portfolio Endtry', '1367497637'),
(442, 12, 'Update Education Entry', '1367497747'),
(443, 41, 'Add Portfolio Endtry', '1367497768'),
(444, 41, 'Add Portfolio Endtry', '1367497858'),
(445, 12, 'Add Portfolio Endtry', '1367498157'),
(446, 41, 'Add Portfolio Endtry', '1367498179'),
(447, 41, 'Add Portfolio Endtry', '1367498451'),
(448, 41, 'Set account to private', '1367498532'),
(449, 32, 'Send connection request to Alihadith S. Tua', '1367504567'),
(450, 12, 'Is now connected to Jeffrey P. Bugahod', '1367558827'),
(451, 11, 'Update Theme Settings', '1367654075'),
(452, 11, 'Update Theme Settings', '1367655251'),
(453, 11, 'Update Theme Settings', '1367655263'),
(454, 1, 'Update Theme Settings', '1367655281'),
(455, 1, 'Send connection request to Sheila Tayone', '1367655457'),
(456, 1, 'Send connection request to James Orillaneda', '1367655462'),
(457, 1, 'Updated profile', '1367655625'),
(458, 1, 'Updated profile', '1367655855'),
(459, 1, 'Update Work Experience Entry', '1367657062'),
(460, 1, 'Update Work Experience Entry', '1367657082'),
(461, 1, 'Update Theme Settings', '1367670640'),
(462, 11, 'Updated profile', '1367759644'),
(463, 1, 'Update Theme Settings', '1367816013'),
(464, 17, 'Update Work Experience Entry', '1368162478'),
(465, 17, 'Add Work Experience Entry', '1368162602'),
(466, 17, 'Add Work Experience Entry', '1368162688'),
(467, 17, 'Add Work Experience Entry', '1368162752'),
(468, 17, 'Add Work Experience Entry', '1368162835'),
(469, 17, 'Add Education Entry', '1368163018'),
(470, 17, 'Add Education Entry', '1368163083'),
(471, 17, 'Add Education Entry', '1368163132'),
(472, 17, 'Add Education Entry', '1368163209'),
(473, 0, 'Created Account', '1368261191'),
(474, 1, 'Update Theme Settings', '1368263049'),
(475, 13, 'Update Theme Settings', '1368865319'),
(476, 11, 'Update Theme Settings', '1369133536'),
(477, 11, 'Updated profile picture', '1369133653'),
(478, 11, 'Updated profile', '1369133715'),
(479, 11, 'Updated profile', '1369133779'),
(480, 11, 'Send connection request to Michael delos Santos', '1369133883'),
(481, 0, 'Created Account', '1369272676'),
(482, 17, 'Is now connected to James G. Orillaneda', '1369274968'),
(483, 33, 'Add Portfolio Endtry', '1369477295'),
(484, 33, 'Add Portfolio Endtry', '1369477444'),
(485, 33, 'Add Portfolio Endtry', '1369477455'),
(486, 33, 'Set account to private', '1369477578'),
(487, 33, 'Add Portfolio Endtry', '1369478021'),
(488, 33, 'Set Account to public', '1369478940'),
(489, 33, 'Set account to private', '1369478945'),
(490, 33, 'Update Theme Settings', '1369479558'),
(491, 33, 'Update Theme Settings', '1369480296'),
(492, 33, 'Set account to private', '1369480298'),
(493, 33, 'Update Skill Entry', '1369526784'),
(494, 33, 'Add Skill Entry', '1369526911'),
(495, 33, 'Add Skill Entry', '1369527102'),
(496, 33, 'Add Skill Entry', '1369527128'),
(497, 33, 'Add Skill Entry', '1369527249'),
(498, 33, 'Add Skill Entry', '1369527294'),
(499, 33, 'Update Skill Entry', '1369527319'),
(500, 33, 'Add Skill Entry', '1369527343'),
(501, 33, 'Updated profile', '1369527771'),
(502, 11, 'Add Portfolio Endtry', '1369645416'),
(503, 11, 'Remove Portfolio Endtry', '1369645434'),
(504, 12, 'Remove Portfolio Endtry', '1369655848'),
(505, 36, 'Updated profile picture', '1369853469'),
(506, 36, 'Send connection request to Sheila Tayone', '1369857006'),
(507, 36, 'Send connection request to mohamad basher abas', '1369857007'),
(508, 36, 'Send connection request to Meliza Daquis', '1369857010'),
(509, 36, 'Send connection request to geram alfeche', '1369857011'),
(510, 36, 'Send connection request to Ramee Adam Sareno', '1369857012'),
(511, 36, 'Is now connected to James G. Orillaneda', '1369857017'),
(512, 36, 'Send connection request to Saddam Tambungalan', '1369857162'),
(513, 36, 'Send connection request to James Orillaneda', '1369857162'),
(514, 36, 'Send connection request to Francx Michael Zamora', '1369857162'),
(515, 38, 'Is now connected to Felix Nicer Villanueva', '1369914940'),
(516, 38, 'Send connection request to Sheila Tayone', '1369914953'),
(517, 33, 'Remove Portfolio Endtry', '1369931151'),
(518, 33, 'Remove Portfolio Endtry', '1369931155'),
(519, 33, 'Remove Portfolio Endtry', '1369931159'),
(520, 33, 'Remove Portfolio Endtry', '1369931220'),
(521, 33, 'Remove Portfolio Endtry', '1369931222'),
(522, 33, 'Add Portfolio Endtry', '1369931274'),
(523, 33, 'Updated Portfolio Endtry', '1369931299'),
(524, 33, 'Updated Portfolio Endtry', '1369931330'),
(525, 33, 'Updated Portfolio Endtry', '1369931374'),
(526, 33, 'Add Portfolio Endtry', '1369931420'),
(527, 33, 'Add Portfolio Endtry', '1369931494'),
(528, 33, 'Remove Portfolio Endtry', '1369931514'),
(529, 33, 'Remove Portfolio Endtry', '1369931525'),
(530, 33, 'Add Portfolio Endtry', '1369931618'),
(531, 33, 'Add Portfolio Endtry', '1369931671'),
(532, 33, 'Add Portfolio Endtry', '1369931757'),
(533, 33, 'Add Portfolio Endtry', '1369931835'),
(534, 33, 'Add Portfolio Endtry', '1369931879'),
(535, 33, 'Add Portfolio Endtry', '1369931970'),
(536, 33, 'Add Portfolio Endtry', '1369932041'),
(537, 33, 'Add Portfolio Endtry', '1369932089'),
(538, 33, 'Set Account to public', '1369932111'),
(539, 33, 'Updated Portfolio Endtry', '1370080228'),
(545, 48, 'Updated profile', '1371105155'),
(546, 48, 'Updated profile picture', '1371105232'),
(547, 48, 'Updated profile', '1371105250'),
(548, 48, 'Updated profile picture', '1371105344'),
(549, 48, 'Send connection request to James G. Orillaneda', '1371105381'),
(550, 48, 'Updated profile', '1371107489'),
(551, 48, 'Updated profile', '1371108421'),
(552, 48, 'Updated profile', '1371111332'),
(553, 48, 'Updated profile', '1371111531'),
(554, 48, 'Updated profile', '1371111834'),
(555, 48, 'Updated profile', '1371112757'),
(556, 48, 'Updated profile', '1371112877'),
(557, 48, 'Updated profile', '1371113087'),
(558, 48, 'Updated profile', '1371113895'),
(559, 48, 'Updated profile', '1371115126'),
(560, 48, 'Updated profile', '1371115400'),
(561, 48, 'Add Portfolio Entry', '1371116006'),
(562, 48, 'Add Work Experience Entry', '1371117676'),
(563, 48, 'Updated profile', '1371118489'),
(564, 1, 'Send connection request to Dheymond Heart', '1371118697'),
(565, 11, 'Updated profile', '1371178512'),
(566, 11, 'Updated profile', '1371178601'),
(567, 13, 'Updated profile', '1371277910'),
(568, 13, 'Add Work Experience Entry', '1371278084'),
(569, 13, 'Add Portfolio Entry', '1371278311'),
(570, 13, 'Add Portfolio Entry', '1371278685'),
(571, 13, 'Send connection request to geram alfeche', '1371278901'),
(572, 13, 'Send connection request to John Elrayd', '1371278905'),
(573, 13, 'Send connection request to Dheymond Heart', '1371278932'),
(574, 13, 'Send connection request to Sheila Tayone', '1371278958'),
(575, 13, 'Send connection request to Eduardo D Barrete', '1371278967'),
(576, 13, 'Updated Portfolio Endtry', '1371279511'),
(577, 13, 'Is now connected to James G. Orillaneda', '1371279819'),
(578, 48, 'Is now connected to Edwin Bryan Rosete', '1371342760'),
(579, 6, 'Is now connected to Edwin Bryan Rosete', '1371722000'),
(580, 1, 'Add Portfolio Entry', '1372237717'),
(581, 1, 'Add Portfolio Entry', '1372237846'),
(582, 1, 'Remove Portfolio Endtry', '1372237881'),
(583, 1, 'Remove Portfolio Endtry', '1372237889'),
(584, 1, 'Remove Portfolio Endtry', '1372237915'),
(585, 1, 'Remove Portfolio Endtry', '1372237917'),
(586, 1, 'Remove Portfolio Endtry', '1372237921'),
(587, 1, 'Remove Portfolio Endtry', '1372237923'),
(588, 1, 'Remove Portfolio Endtry', '1372237935'),
(589, 0, 'Created Account', '1372945086'),
(590, 49, 'Updated profile', '1372945269'),
(591, 49, 'Updated profile picture', '1372945324'),
(592, 49, 'Updated profile', '1372945374'),
(593, 49, 'Updated profile', '1372945423'),
(594, 49, 'Add Education Entry', '1372945785'),
(595, 49, 'Add Education Entry', '1372945853'),
(596, 49, 'Add Skill Entry', '1372945975'),
(597, 49, 'Add Skill Entry', '1372946010'),
(598, 49, 'Add Skill Entry', '1372946259'),
(599, 49, 'Add Skill Entry', '1372946298'),
(600, 49, 'Add Skill Entry', '1372946340'),
(601, 31, 'Add Work Experience Entry', '1372952234'),
(602, 31, 'Update Work Experience Entry', '1372952312'),
(603, 31, 'Update Education Entry', '1372952391'),
(604, 31, 'Add Skill Entry', '1372952663'),
(605, 31, 'Add Skill Entry', '1372952674'),
(606, 31, 'Update Skill Entry', '1372952689'),
(607, 31, 'Add Skill Entry', '1372952711'),
(608, 31, 'Add Skill Entry', '1372952737'),
(609, 31, 'Add Skill Entry', '1372952745'),
(610, 31, 'Update Skill Entry', '1372952759'),
(611, 31, 'Add Skill Entry', '1372952796'),
(612, 31, 'Add Skill Entry', '1372952862'),
(613, 0, 'Created Account', '1374661102'),
(614, 50, 'Update Theme Settings', '1374661205'),
(615, 50, 'Update Theme Settings', '1374661218'),
(616, 50, 'Set account to private', '1374661280'),
(617, 11, 'Update Work Experience Entry', '1374673655'),
(618, 32, 'Updated profile', '1374731413'),
(619, 32, 'Send connection request to Dheymond Heart', '1374731737'),
(620, 32, 'Send connection request to John Elrayd', '1374731741'),
(621, 32, 'Send connection request to Kenny Myl Sebellino', '1374731747'),
(622, 32, 'Send connection request to Ramee Adam Sareno', '1374731750'),
(623, 32, 'Update Theme Settings', '1374731783'),
(624, 32, 'Update Theme Settings', '1374731832'),
(625, 32, 'Update Theme Settings', '1374731834'),
(626, 11, 'Is now connected to Dheymond Heart', '1375399304'),
(627, 11, 'Send connection request to Kenny Myl Sebellino', '1375399319'),
(628, 33, 'Send connection request to Dheymond Heart', '1375592978'),
(629, 1, 'Add Portfolio Entry', '1378727674'),
(630, 1, 'Add Portfolio Entry', '1378799454'),
(631, 0, 'Created Account', '1381373250'),
(632, 51, 'Updated profile picture', '1381373429'),
(633, 11, 'Send connection request to Chique Lim', '1381398588'),
(634, 11, 'Update Theme Settings', '1381398671'),
(635, 11, 'Update Theme Settings', '1381398686'),
(636, 11, 'Updated profile picture', '1381398732'),
(637, 11, 'Update Theme Settings', '1381398805'),
(638, 11, 'Set Account to public', '1381398810'),
(639, 11, 'Update Theme Settings', '1381398830'),
(640, 11, 'Set Account to public', '1381398835'),
(641, 1, 'Add Portfolio Entry', '1382364152'),
(642, 1, 'Add Portfolio Entry', '1382364216'),
(643, 1, 'Add Portfolio Entry', '1382364269'),
(644, 1, 'Add Portfolio Entry', '1382622707'),
(645, 1, 'Remove Portfolio Endtry', '1382622721'),
(646, 0, 'Created Account', '1382757988'),
(647, 52, 'Updated profile', '1382758220'),
(648, 52, 'Add Work Experience Entry', '1382758399'),
(649, 52, 'Add Education Entry', '1382758562'),
(650, 32, 'Send connection request to Chique Lim', '1385709870'),
(651, 0, 'Created Account', '1387335074'),
(652, 31, 'Is now connected to Eduardo D Barrete', '1387989188'),
(653, 1, 'Add Portfolio Entry', '1397676978'),
(654, 1, 'Add Portfolio Entry', '1397677007'),
(655, 0, 'Created Account', '1410920765'),
(656, 54, 'Updated profile', '1410921174'),
(657, 54, 'Updated profile picture', '1410921487'),
(658, 54, 'Add Work Experience Entry', '1410922509'),
(659, 54, 'Set Account to public', '1413365276'),
(660, 0, 'Created Account', '1414050645'),
(661, 55, 'Set Account to public', '1414050777'),
(662, 55, 'Set Account to public', '1414050800'),
(663, 55, 'Updated profile', '1414051528'),
(664, 55, 'Add Work Experience Entry', '1414051651'),
(665, 55, 'Add Education Entry', '1414051709'),
(666, 55, 'Add Skill Entry', '1414051744'),
(667, 55, 'Add Skill Entry', '1414051846'),
(668, 55, 'Add Skill Entry', '1414051865'),
(669, 55, 'Add Skill Entry', '1414051957'),
(670, 55, 'Add Skill Entry', '1414052034'),
(671, 0, 'Created Account', '1417676924'),
(672, 56, 'Updated profile', '1417677147'),
(673, 56, 'Updated profile', '1417677370'),
(674, 56, 'Add Work Experience Entry', '1417677476'),
(675, 56, 'Add Education Entry', '1417677768'),
(676, 56, 'Add Education Entry', '1417677834'),
(677, 56, 'Add Skill Entry', '1417677870'),
(678, 56, 'Add Skill Entry', '1417677883'),
(679, 56, 'Add Skill Entry', '1417677892'),
(680, 56, 'Add Skill Entry', '1417677900'),
(681, 56, 'Add Skill Entry', '1417677910'),
(682, 56, 'Add Skill Entry', '1417677923'),
(683, 56, 'Add Skill Entry', '1417677941'),
(684, 56, 'Add Skill Entry', '1417677952'),
(685, 56, 'Add Skill Entry', '1417677970'),
(686, 56, 'Add Portfolio Entry', '1417678136'),
(687, 56, 'Add Portfolio Entry', '1417678802'),
(688, 56, 'Add Portfolio Entry', '1417678865'),
(689, 56, 'Add Portfolio Entry', '1417679094'),
(690, 56, 'Updated Portfolio Endtry', '1417679143'),
(691, 56, 'Remove Portfolio Endtry', '1417679186'),
(692, 56, 'Remove Portfolio Endtry', '1417679194'),
(693, 56, 'Add Portfolio Entry', '1417679305'),
(694, 56, 'Updated profile picture', '1417744684'),
(695, 56, 'Updated Portfolio Endtry', '1417744752'),
(696, 56, 'Updated Portfolio Endtry', '1417744770'),
(697, 56, 'Updated Portfolio Endtry', '1417744790'),
(698, 56, 'Updated Portfolio Endtry', '1417744818'),
(699, 56, 'Updated Portfolio Endtry', '1417744916'),
(700, 0, 'Created Account', '1418137888'),
(701, 57, 'Send connection request to Bai Saada Schejam Biruar', '1418138804'),
(702, 57, 'Send connection request to Mark Alfred Tabal', '1418139360'),
(703, 57, 'Send connection request to Kenneth Ramos', '1418139386'),
(704, 57, 'Send connection request to Floyd Asio', '1418139390'),
(705, 56, 'Send connection request to Nii Mii', '1418141465'),
(706, 56, 'Is now connected to Nii Mii', '1418141479'),
(707, 54, 'Send connection request to Nii Mii', '1418157739'),
(708, 54, 'Send connection request to Kenneth Ramos', '1418157743'),
(709, 54, 'Send connection request to Mark Alfred Tabal', '1418157747'),
(710, 54, 'Send connection request to Mary Therese Cabatingan', '1418157751'),
(711, 54, 'Update Work Experience Entry', '1418184476'),
(712, 54, 'Add Portfolio Entry', '1418185126'),
(713, 54, 'Add Education Entry', '1418185864'),
(714, 54, 'Add Education Entry', '1418186019'),
(715, 54, 'Add Skill Entry', '1418186112'),
(716, 54, 'Add Certificate Entry', '1418186222'),
(717, 54, 'Updated profile', '1418186501'),
(718, 54, 'Update Certificate Entry', '1418187446'),
(719, 54, 'Add Skill Entry', '1418187638'),
(720, 54, 'Update Skill Entry', '1418187661'),
(721, 54, 'Add Skill Entry', '1418187762'),
(722, 54, 'Update Skill Entry', '1418187928'),
(723, 54, 'Updated profile', '1418188221'),
(724, 54, 'Updated profile', '1418188287'),
(725, 11, 'Update Theme Settings', '1429147138'),
(726, 54, 'Update Work Experience Entry', '1432345119'),
(727, 54, 'Update Work Experience Entry', '1432345524'),
(728, 1, 'Send connection request to Nii Mii', '1433878193'),
(729, 1, 'Update Theme Settings', '1433878228'),
(730, 1, 'Update Theme Settings', '1433878320'),
(731, 1, 'Set account to private', '1433881802'),
(732, 1, 'Set Account to public', '1433881822'),
(733, 10, 'Update Profile', 'zzzz'),
(734, 10, 'Update Profile', 'zzzz'),
(735, 8, 'Update Profile', 'zzzz'),
(736, 10, 'Add New Portfolio inInfographics', ''),
(737, 10, 'Add New Skills about PHP/HTML', ''),
(738, 10, 'Update Settings ', ''),
(739, 10, 'Update Skills in PHP/HTML', ''),
(740, 10, 'Add New Skills about Webdesign & Programming', ''),
(741, 10, 'Update Settings ', ''),
(742, 10, 'Update Settings ', ''),
(743, 10, 'Update Settings ', ''),
(744, 10, 'Add New Portfolio in Web Development', ''),
(745, 10, 'Add New Portfolio in Mobile', ''),
(746, 10, 'Add New Experience as Layout Artist in Toshiba', 'zzzz'),
(747, 10, 'Add New Educational Background as M.S Information Technology in Xavier University', 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ocojcastro@gmail.com', '84515a537b24b0b88dc79440d5beadfd700bd904a51b3c7993df7a8e99b42690', '2016-04-07 20:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `port_title` varchar(255) NOT NULL,
  `port_excerpt` text NOT NULL,
  `post_thumbnail` varchar(255) NOT NULL,
  `category_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `user_id`, `port_title`, `port_excerpt`, `post_thumbnail`, `category_id`) VALUES
(1, 15, 'asadsad', 'afasdf', 'IMG203.jpg', 0),
(2, 15, 'sadfsdf', 'sdfsdf', 'alberta.png', 0),
(3, 15, 'sdafdsfsdf', 'sdfsdf', 'IMG203.jpg', 0),
(9, 6, 'ebjr web prints mobile', 'I''m the creative director on the project supervising all the aspect of web design and development. \n\nwww.ebjr.net', '11.jpg', 0),
(10, 6, 'Notre Dame University Website', 'Created the mock up for the Notre Dame University ', '7.jpg', 0),
(11, 6, 'Microsoft Certified IT Professional', 'Microsoft Certified IT Professional', '860221_10151362605708505_1451705536_o.jpg', 0),
(12, 6, 'Microsoft Certified Professional', '', '23663_348254068504_5781543_n.jpg', 0),
(13, 6, 'Microsoft Certified Technology Specialist', '', '25784_342078368504_6187788_n.jpg', 0),
(14, 21, 'Virtual Private Network', 'One popular technology to accomplish these goals is a VPN (virtual private network). A VPN is a private network that uses a public network (usually the Internet) to connect remote sites or users together. The VPN uses "virtual" connections routed through the Internet from the business''s private network to the remote site or employee. By using a VPN, businesses ensure security -- anyone intercepting the encrypted data can''t read it.', 'deadvpnfinal3.png', 0),
(15, 21, 'My Works', '', 'deadvpnfinal4.png', 0),
(16, 21, 'My Works', '', 'deadvpnfinal5.png', 0),
(17, 21, 'My Works', '', 'final2.png', 0),
(18, 21, 'My Works', '', 'final1.png', 0),
(19, 21, 'My Works', '', 'deaddead.png', 0),
(20, 11, 'Sample', '', 'jamesfinalwallpaper.JPG', 19),
(21, 1, 'Microsoft Certified Professional', '', '23663_348254068504_5781543_n.jpg', 4),
(22, 1, 'Microsoft Certified Technology Specialist', '', '25784_342078368504_6187788_n.jpg', 4),
(23, 1, 'Microsoft Certified IT Professional', '', '31041_404935783504_7539060_n.jpg', 4),
(25, 1, 'ebjr web prints mobile', 'ebjr web prints mobile official website. design and development', '11.jpg', 2),
(26, 1, 'Notre Dame University Website', 'Notre Dame University Website official website. Created the mock up', '7.jpg', 2),
(27, 1, 'Points Media', 'Points Media Logo', '103.jpg', 6),
(28, 1, 'Zuztain Logo', 'Zuztain Logo', '104.jpg', 6),
(29, 1, 'Clock Logo', 'Clock watch my time', '101.jpg', 6),
(30, 1, 'Four Season Singapore', 'Four Season Singapore', '5.jpg', 2),
(31, 1, 'Template 85', 'Template 85 marketplace', '3.jpg', 2),
(32, 1, 'Social Skool', 'Social Skool', '10.jpg', 2),
(33, 1, 'My Yearbook', 'My Yearbook show it to the world', '8.jpg', 2),
(34, 1, 'Match and Go Android', 'Match and Go Android App', '396386_10151112027418505_444688906_n.jpg', 3),
(35, 1, 'Unity 3d Snow particles w/ medieval village', 'My first unity3D Snow particles w/ medieval village', '228868_10151112025913505_1639123354_n.jpg', 3),
(36, 41, 'Tarpaulin Layouts', 'Layouts generated for various occasions. ', 'tarp.JPG', 0),
(37, 41, 'Tarpaulin Layouts', 'Layouts generated for various occasions.', 'tarp4.jpg', 0),
(38, 41, 'Jersey Layouts', 'Sample layouts of singlet for basketball ', 'gray2.jpg', 0),
(39, 41, 'Jersey Layouts', 'Singlet for basketball', 'black2.jpg', 0),
(40, 12, 'HTML/CSS', '', 'portfolio1.png', 0),
(41, 41, 'Pocket-size prayer leaflet.', 'A leaflet i made for my religious mother. This layout is printed  and turned it into a PVC card by yours truly. ', 'pray3.jpg', 0),
(42, 41, 'School Seal', 'Generated an Official School Seal.', 'logovsbangoy.jpg', 0),
(44, 41, 'Name Substitution', '', 'cupcakeNUGGETS.jpg', 0),
(45, 41, 'Party Invites', '', 'hannnah.jpg', 0),
(51, 33, 'Anti Push Button', 'antipushbutton.com', '1.jpg', 22),
(52, 33, '1sitepro.com Orlando Pena', '1sitepro.com', '2.jpg', 22),
(54, 33, 'Underground Printing', 'undergroundprinting.ca', '3-1.jpg', 22),
(55, 33, 'Homefront Calgary', 'homefrontcalgary.com', '4.jpg', 22),
(56, 33, 'Jackstay', 'www.jackstaymusic.ca', '5-jac.jpg', 22),
(57, 33, 'Garage Box Auto Innovations', 'garageboxauto.com', '6-gara.jpg', 22),
(58, 33, 'Ancient Art New York', 'ancientartny.com', '7-ancy.jpg', 22),
(59, 33, 'Top Action Investments', 'topactioninvestments.com', '8-top.jpg', 22),
(60, 33, 'Universal Ink & Toner', 'universink.com', '9-uni.jpg', 22),
(61, 33, 'Dominique DeBeau', 'dominiquedebeau.com', '10-dom2.jpg', 22),
(63, 48, 'Logo', '', 'glowloading.png', 0),
(64, 13, 'PPSA', 'Website for Philippine Practical Shooting Association', 'PPSA NEW.jpg', 0),
(65, 13, 'Sultan Kudarat Province Government Website', 'Website i designed for Government of Sultan Kudarat Province ', 'sultan kudarat - index SLIDE 1.jpg', 0),
(66, 1, 'Glow Communication', 'Glow Communication', 'Glow-Index-a.jpg', 2),
(67, 1, 'Ed Project', 'Online tutorial', 'Index-Ed-Project.jpg', 2),
(68, 1, 'Ressuu.me', 'Ressuu.me', 'Public-Profile.jpg', 2),
(69, 1, 'Microsoft Certified IT Professional : Database Administrator', 'Microsoft Certified IT Professional : Database Administrator', 'CertMCITPSQL2008.jpg', 4),
(70, 1, 'Microsoft Certified Technology Specialist : Sharepoint Configuration', 'Microsoft Certified Technology Specialist : Sharepoint Configuration', 'CertMOSS2007.jpg', 0),
(71, 1, 'Microsoft Certified Technology Specialist : SQL Server 2008', 'Microsoft Certified Technology Specialist : SQL Server 2008', 'CertSQLServer2008.jpg', 0),
(72, 1, 'Ed Project Mock ups', 'Ed Project Mock ups', 'Home-Ed-Project-a.jpg', 2),
(73, 1, 'Ed Project Mock ups', 'Ed Project Mock ups', 'Home-Ed-Project-b.jpg', 2),
(74, 56, 'Look''N Better', 'Look''N Better Blog site\n\nhttp://looknbetter.com/', 'screenshot.jpg', 0),
(75, 56, 'Pasadena Now', 'Online Magazine\n\nhttp://pasadenanow.com/', 'pasadena.png', 0),
(76, 56, 'Accelerancy', 'Run a business? We make you money.\n\nhttp://accelerancy.com/', 'accelerancy.png', 0),
(78, 56, 'YouTurn Shopify', 'Online skin care product store\n\nshop.youturnusa.com - access aixaym', 'YouTurn-Shopify.png', 0),
(79, 54, 'My Released App', 'Lightning Bug Maze :\nhttps://play.google.com/store/apps/details?id=mex.app.studio.lightningbugmaze\n\nThe Cheese Hunter:\nhttps://play.google.com/store/apps/details?id=eight.app.studio.thecheesehunter&hl=en\n\nMonster''s Labyrinth:\nhttps://play.google.com/store/apps/details?id=mex.app.studio.monsterslabyrinth\n\nCheese Chaser:\nhttps://play.google.com/store/apps/details?id=mex.app.studio.cheesechaser\n\nCatching Fireflies:\nhttps://play.google.com/store/apps/details?id=eight.app.studio.cathingfireflies', 'iTunesArtwork.png', 0),
(95, 1, 'Sample 2', 'Sample Too 2', 'Quotes-Tumblr-7-437x3002.jpg', 8),
(96, 1, 'Mustache', 'Mustache', '179412-cute-mustache-tumblr.jpg', 7),
(97, 1, 'Hashtag City', 'Hashtag City', 'wallpaper-tumblr-backgrounds.jpg', 7),
(98, 1, 'Book Cover ', 'Sample ', '11870764_1111387932223118_2456913647274793474_n.jpg', 19),
(99, 6, 'Sample', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis tempus enim, in facilisis turpis. Suspendisse nec laoreet erat. In eu aliquam libero. Curabitur luctus lacinia massa. Quisque ac luctus ligula. Nullam quis risus lobortis, aliquam orci sollicitudin, iaculis massa. Donec eget sagittis magna. Nulla tristique ultrices arcu a faucibus. Phasellus ac risus risus. Nunc eget ante eu nibh vulputate pellentesque. Nullam turpis nunc, facilisis sit amet leo efficitur, dictum facilisis urna. In id congue eros. Pellentesque commodo tristique ante non interdum. \r\n                                                ', 'No Image', 28),
(100, 6, 'Durain Studio', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis tempus enim, in facilisis turpis. Suspendisse nec laoreet erat. In eu aliquam libero. Curabitur luctus lacinia massa. Quisque ac luctus ligula. Nullam quis risus lobortis, aliquam orci sollicitudin, iaculis massa. Donec eget sagittis magna. Nulla tristique ultrices arcu a faucibus. Phasellus ac risus risus. Nunc eget ante eu nibh vulputate pellentesque. Nullam turpis nunc, facilisis sit amet leo efficitur, dictum facilisis urna. In id congue eros. Pellentesque commodo tristique ante non interdum. \r\n                                                ', 'No Image', 6),
(101, 10, 'Scammer Alert', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis tempus enim, in facilisis turpis. Suspendisse nec laoreet erat. In eu aliquam libero. Curabitur luctus lacinia massa. Quisque ac luctus ligula. Nullam quis risus lobortis, aliquam orci sollicitudin, iaculis massa. Donec eget sagittis magna. Nulla tristique ultrices arcu a faucibus. Phasellus ac risus risus. Nunc eget ante eu nibh vulputate pellentesque. Nullam turpis nunc, facilisis sit amet leo efficitur, dictum facilisis urna. In id congue eros. Pellentesque commodo tristique ante non interdum. \r\n                                                ', 'No Image', 2),
(102, 10, 'Assumption College of Davao', '                                                Portfolio Description\r\n                                                ', 'No Image', 5),
(103, 10, 'WebWeb', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tellus sapien, ultricies id enim a, tristique semper odio. Vivamus et justo non sapien sodales blandit. Etiam sagittis arcu quis sapien rhoncus, at suscipit nibh rutrum. Vestibulum dictum nulla sed ante consectetur, quis eleifend lorem varius\r\n                                                ', '55221.jpg', 18),
(104, 10, 'Android Apps', 'Nulla in nunc mollis, tristique nisl quis, iaculis sapien. Maecenas at feugiat ex. Aliquam eleifend mollis risus, vitae molestie dui. Donec ullamcorper lorem at nisi vehicula, id condimentum leo viverra.\r\n                                                ', '56841.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_cat`
--

CREATE TABLE `portfolio_cat` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio_cat`
--

INSERT INTO `portfolio_cat` (`id`, `user_id`, `title`) VALUES
(2, 1, 'Web'),
(3, 1, 'Mobile'),
(4, 1, 'Certificates'),
(5, 1, 'Infographics'),
(6, 1, 'Logo'),
(7, 1, 'Graphics'),
(8, 1, 'Print'),
(18, 14, 'Web Development'),
(19, 11, 'Design'),
(22, 33, 'Web Designs & Development'),
(23, 11, 'Website'),
(25, 11, 'HTML'),
(28, 31, 'Web Developement');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `position` varchar(150) NOT NULL,
  `bday` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `is_logged_in` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `email`, `name`, `position`, `bday`, `address`, `phone`, `url`, `bio`, `profile_picture`, `facebook`, `linkedin`, `twitter`, `google`, `is_logged_in`) VALUES
(1, 1, 'eduardodbarrete@yahoo.com', 'Eduardos D. Barrete Jr.', 'Webmaster - Freelance', 'May 21, 1985', 'Davao City, Philippines', '0966568942970', 'www.eduardobarrete.me', '"Design is not just what it looks like and feels like. Design is how it works." - Steve Jobs\r\n                                    \r\n                                    \r\n                                    \r\n                                    ', '8318_161248858504_2995431_n1.jpg', 'https://www.facebook.com/', 'https://www.linkedin.com/', 'http://www.twitter.com/', 'http://plus.google.com/', 0),
(2, 6, 'eduardodbarrete@outlook.com', 'Eduardo D Barrete', 'Webmaster', 'May 21, 1985', 'Davao City, Philippines', '+63 227 5656', 'www.eduardobarrete.me', 'Its really hard to design products by focus groups. A lot of times, people dont know what they want until you show it to them. - Steve Jobs', '544014_10151266947293505_327673233_n.jpg', 'https://www.facebook.com/ebarrete', '', '', '', 0),
(3, 11, 'orillaneda.james@gmail.com', 'James G. Orillaneda', 'Web Developer', 'July 2, 1989', 'Davao', '+63 9204995330', 'http://jamesko.tk', 'I am a Web Developer with more than 3 years experience in Web Industry located in Philippines.\n<br>In life, I like simple solutions, so my work is inspired by the same - the simplicity and convenience', 'james.jpg', 'https://www.facebook.com/dheymond.heart', 'http://www.linkedin.com/profile/view?id=151233541', 'https://twitter.com/Dheymond', 'http://www.linkedin.com/profile/view?id=151233541', 0),
(4, 12, 'ali_mr.2857@yahoo.com.ph', 'Alihadith S. Tua', 'Web Developer/Wordpress', 'December 28, 1990', 'Barrio 1, Purok Siodina, Koronadal City, Philippines', '+639056452171', '', '', '5r.png', 'https://www.facebook.com/alihadith', '', 'https://twitter.com/AlihadithTua', 'https://plus.google.com/109618665806130639791/posts?hl=en', 0),
(5, 13, 'blocparty_101@hotmail.com', 'Edwin Bryan Rosete', 'Graphic Designer', 'Semptember 10, 1988', 'Blk 1, Lot 1 DSLA Village, Balusong Ext. Matina Crossing', '+639217359259', '', 'Internet Action Star', '1.JPG', 'www.facebook.com/edwin.bryan.rosete?ref=tn_tnmn', '', '', '', 0),
(6, 14, 'jbugahod@outlook.com', 'Jeffrey Bugahod', 'Senior Web Psycho Analyst Developer', '943945200', 'Philippines', 'hahaha', '', 'I am good in everything there and here. We gonna have been so good all the time.', '404951_578457202164999_1958540508_n.jpg', 'facebook.com/jeponkz', '', 'twitter.com/JepBugahod', '', 0),
(21, 29, 'mishylovesworking@gmail.com', 'Michelle Del Rosario', '', '0', '', '', '', '', '', '', '', '', '', 0),
(7, 15, 'nikkogerald.eroy@gmail.com', 'Nikko Gerald Eroy', '', 'November 20, 1992', 'Km. 10 Catalunan Pequeño, Davao City', '', '', '', '123.jpg', 'https://www.facebook.com/nikko.eroy', '', '', '', 0),
(8, 16, 'rene113094@gmail.com', 'Renemari Padillo', '', 'November 30, 2013', 'Garcia Heights Bacaca Road, Awhag Subdivision Corner Gemelina-Kamagong Street', '+639422983978', '', '', '376884_502995743048644_340749487_n.jpg', 'http://goo.gl/NBYky', '', '', 'http://goo.gl/JhTW9', 0),
(9, 17, 'miggysantos27@gmail.com', 'Michael delos Santos', '', '428641200', '', '', '', '', '', '', '', '', '', 0),
(10, 18, 'keyn.lubiano@gmail.com', 'Keynvi Lubiano', 'MIS Desktop Support', 'April 14, 2013', 'Blk. 1 Lot 1 Sarong st. Emi vill subd. Sasa Davao city', '639993682422', '', '', '', '', '', '', '', 0),
(11, 19, 'ryan010488@yahoo.com', 'Ryan Jayme', '', '943945200', '', '', '', '', '', '', '', '', '', 0),
(12, 20, 'basagunli@yahoo.com', 'rex gardose', '', '673063200', '', '', '', '', '8048_427374370688566_516317984_n.jpg', '', '', '', '', 0),
(13, 21, 'dead_roswel@yahoo.com.ph', 'Emyrson Oraga', 'IT Instructor', 'April 15, 2013', 'Cotabato City, Philippines', '+63917 78 36 225', '', 'A wise man does not display his Knowledge.', '177104_460997770584614_1806527493_o.jpg', 'http://facebook.com/dead060898', 'http://www.linkedin.com/profile/view?id=237586413&trk=tab_pro', 'https://twitter.com/dead060898', 'https://plus.google.com/117528368300169356786/posts/p/pub', 0),
(14, 22, 'credow@maaden.com.sa', 'Willy Credo', '', '433857600', '', '', '', '', '', '', '', '', '', 0),
(15, 23, 'lecithine@ymail.com', 'Jay Pocot', '', '591735600', '', '', '', '', '', '', '', '', '', 0),
(16, 24, 'nojlamoliva@yahoo.com', 'Aljon Moliva', 'Web Designer and Developer', 'August 8, 1992', 'Davao City', '09077874498', '', '', 'aljon.jpg', 'https://www.facebook.com/aljon.d.moliva?ref=tn_tnmn', '', '', '', 0),
(17, 25, 'wwwdotphilip@gmail.com', 'John Philip Agustino', 'Project Manager/Mobile Application Developer', 'April 15, 2013', 'Block 7 lot 12 RH 11 Malagapas, Cotabato City', '', '', '', '', 'https://www.facebook.com/wwwdotphilip', '', '', '', 0),
(18, 26, 'bsbiruar@gmail.com', 'Bai Saada Schejam Biruar', '', '544309200', '', '', '', '', '', '', '', '', '', 0),
(19, 27, 'ajvirrey@yahoo.com', 'Armand John Virrey', '', '596948400', '', '', '', '', '', '', '', '', '', 0),
(20, 28, 'macky.zapanta@gmail.com', 'Mark Rey Zapanta', 'Web Designer', 'April 6, 1992', 'Blk. 3, Lot 17, San Juan Village, Bangkal, Davao City', '09225400509', '', '', '', '', '', '', '', 0),
(22, 30, 'jun08abs@yahoo.com', 'Abolais Jr. Palagawad', '', 'April 18, 2000', '', '', '', '', '', 'https://www.facebook.com/jun08abs', 'http://www.linkedin.com/profile/view?id=238194040&trk=hb_tab_pro_top', 'https://twitter.com/HeneralAbsSupre', '', 0),
(23, 31, 'jadcaralos@gmail.com', 'John Alvin Caralos', '', 'April 19, 1992', 'BLK 14 LOT 1 Samantha Executive Homes, Matina Pangi, Davao City', '09333583905', '', 'Graduate of Bachelor of Science in Information Technology at Ateneo de Davao University', '', 'https://www.facebook.com/alvin.caralos', '', 'https://twitter.com/AlvinCaralos', 'https://plus.google.com/118240639631769554894/posts', 0),
(24, 32, 'jbugahod@gmail.com', 'Jeffrey P. Bugahod', 'Web Developer', 'April 2, 1992', 'Cotabato City , Philippines', '09421326733', 'www.jbugahod.com', 'Hi! I''m Jeffrey and is known for being a facetious web developer that produce a good quality output. I am adroit in developing website and I give value in every work I have.\n', 'photo.jpg', 'http://www.facebook.com/jeponkz', 'http://www.linkedin.com/profile/view?id=205222740&trk=hb_tab_pro_top', 'http://www.twitter.com/JepBugahod', 'https://plus.google.com/101205706870067824848', 0),
(25, 33, 'stanger_lei@yahoo.com', 'Rommel Gloria', 'Web Developer', 'March 26, 1983', 'Circumferential Road, Bajada Davao City, Philippines', '+639083639153', 'coming soon', 'Watch out and stay awake, because you do not know when the time will come. We are pressured, but not crushed; perplexed, but not frustrated; persecuted, but not abandoned.', '246490_4020222484058_848339426_n.jpg', 'http://www.facebook.com/rom.gloria', 'http://www.linkedin.com/in/rommelgloria', 'http://twitter.com/stanger_lei', 'http://gplus.to/stanger106', 0),
(26, 34, 'francx_133@yahoo.com', 'Francx Michael Zamora', 'Registered Nurse', 'November 27, 1989', 'Block 31, Lot 22, Guava Street, Phase 1, NHA, Bangkal, Davao City', '+63(82)299-1069', '', '', '', 'www.facebook.com/francxmichael.zamora', '', '', '', 0),
(31, 39, 'sheila_jhay2x@yahoo.com.au', 'Sheila Tayone', 'IT Project Coordinator ', 'November 30, 1984', 'Davao City, Philippines', '', 'http://sheilatayone.blogspot.com/', 'Nothing will work unless you do.--Maya Angelou \n ', '598655_4248655098747_1700283814_n.jpg', 'https://www.facebook.com/sheilatayone', 'http://www.linkedin.com/profile/view?id=149998692&trk=hb_tab_pro_top', 'https://twitter.com/aliesh24', '', 0),
(28, 36, 'felixvillanueva46@gmail.com', 'Felix Nicer Villanueva', '', 'June 14, 1991', 'Sasa km 12 Davao City', '+639461522672', '', '', 'IMG_0013.jpg', 'https://www.facebook.com/poiuytrewqp', 'http://www.linkedin.com/pub/felix-nicer-villanueva/37/aba/a11', '', 'https://plus.google.com/113215324609693005275/posts', 0),
(40, 48, 'dheymond_heart@yahoo.com', 'Dheymond Heart', 'Web Programmer', 'June 12, 2000', '', '', '', '', 'glowloading1.png', '', '', '', '', 0),
(30, 38, 'tambungalandham@yahoo.com', 'Saddam Tambungalan', 'Programmer', 'August 15, 1990', 'Brg. Labu-labu, Shariff Aguak, Maguindanao', '09263897107', '', '', 'Tambungalan,_SA-2527_-_2x2.jpg', 'https://www.facebook.com/dham.tambungalan', '', '', '', 0),
(33, 41, 'meliza4713@gmail.com', 'Meliza Daquis', 'Graphic Designer', 'May 2, 2000', 'Block 8 Lo 18 Wellspring Village II, Catalunan Pequeño, Davao City', '(082) 2227452', '', 'An enthusiast who is willing to learn more in graphic designing, explore and enhance skills to turn imaginative ideas into tangible visuals. ', '5115809.JPG', '', '', '', '', 0),
(32, 40, 'jlumenda22@yahoo.com', 'mohamad basher abas', '', '686354400', '', '', '', '', '', '', '', '', '', 0),
(34, 42, 'ranfeche@gmail.com', 'geram alfeche', '', '649569600', '', '', '', '', '', '', '', '', '', 0),
(44, 52, 'ronaldrosauro@gmail.com', 'Ronald Rosauro', '', 'April 24, 1988', 'Buhangin, Davao City', '09227274787', '', '', '', '', '', '', '', 0),
(35, 43, 'ramee@sarenosolutions.com', 'Ramee Adam Sareno', '', '418082400', '', '', '', '', '', '', '', '', '', 0),
(41, 49, 'kennymyl04@gmail.com', 'Kenny Myl Sebellino', 'Information Technology/Graphic artist', 'April 15, 1992', '#420 Block 1, Lot 29, San Pablo Village Cotabato City', '092650979398', 'kennysebellino.daportfolio.com', '<p>"Grab the oppurtunity in every difficulty, not the difficulty in every oppurtunity"<br></p>', 'km.png', 'https://www.facebook.com/ksebellino', '', '', '', 0),
(39, 47, 'jesterologer@yahoo.com', 'John Elrayd', '', '', '', '', '', '', '', '', '', '', '', 0),
(42, 50, 'traquor@gmail.com', 'Devon Auerswald', '', '433854000', '', '', '', '', '', '', '', '', '', 0),
(43, 51, 'chiqueylim@live.com', 'Chique Lim', '', '0', '', '', '', '', 'prim.jpg', '', '', '', '', 0),
(45, 53, 'therese.cra@gmail.com', 'Mary Therese Cabatingan', '', '770536800', '', '', '', '', '', '', '', '', '', 0),
(46, 54, 'asiolutions@gmail.com', 'Floyd Asio', 'Mobile App Developer (Game/Business)', 'December 25, 1983', 'Davao City', '09302236005', '', '<p>A 3yr. experienced Mobile App Developer using the Corona SDK for cross-platform app creation (Android/iOS) and Google Play/iTunes Publishing with 3rd party ADS Integration.<br></p>\n', '10600527_10202485923689349_50784252589277066_n.jpg', 'https://www.facebook.com/floyd.asio', '', '', '', 0),
(47, 55, 'kmramos@sysgen.com.ph', 'Kenneth Ramos', 'Digital Marketing Specialist | SEO | Web Developer | Software Engineer | Game Designer', 'Semptember 19, 1992', 'Pasay City', '+639159320285', 'http://www.sysgen.com.ph/blog/', '<p>As a multi-skilled Information Technology professional with high-level management experience in the IT industry, I learned that the best way to achieve success was to motivate the resources I had with well-defined objectives and empowerment.<br></p>', '', 'https://www.facebook.com/ramoskenet', 'ph.linkedin.com/in/kennethramos/', 'https://twitter.com/kentneth', 'https://plus.google.com/u/0/+KennethRamosIn', 0),
(48, 56, 'mark.tabal@outlook.com', 'Mark Alfred Tabal', 'Freelance Web Developer', 'March 25, 1989', 'Kawayan Drive, Matina 74-A, Davao City 8000, Philippines', '285-8291', '', '<p>BS Computer Science graduate year 2012, a freelance web developer. Working with Wordpress Content Management System, responsive, theme customization. PSD to HTML, Wordpress Conversion.</p>', '1621723_802292386450919_1791044752_n.jpg', 'https://www.facebook.com/mark.a.tabal', '', '', 'https://plus.google.com/u/0/109104866991863736584', 0),
(49, 57, 'ni.mi000089@gmail.com', 'Nii Mii', '', '544251600', '', '', '', '', '', '', '', '', '', 0),
(50, 10, 'zhar@gmail.com', 'Zhar Jill Donga', 'Webmaster - Freelance', 'May 21, 1985', 'Davao City, Philippiness', '0966568942970', ' ', '                                                                                                                                                                                                                                                                        Hellow WorldHellow WorldHellow WorldHellow World                                        \r\n                                          \r\n                                          \r\n                                          \r\n                                          \r\n                                          \r\n                                          ', ' ', 'https://www.facebook.com/', 'https://www.linkedin.com/', 'http://www.twitter.com/', 'http://plus.google.com/', 0),
(51, 8, 'orland_castro2@yahoo.com', 'Orland Jae Castro', 'Junior Developer', 'March 28, 1994', 'Davao City, Philippiness', '03264887975', ' ', 'Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment. \r\n                                                                                 "Buddha"\r\n                                          ', ' ', 'https://www.facebook.com/', 'https://www.linkedin.com/', 'http://www.twitter.com/', 'http://plus.google.com/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `profile_views`
--

CREATE TABLE `profile_views` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_views`
--

INSERT INTO `profile_views` (`id`, `user_id`, `ip_address`, `date`) VALUES
(1, 1, '110.55.106.221', '04/11/2013'),
(2, 1, '110.55.106.221', '04/12/2013'),
(3, 1, '37.107.51.38', '04/12/2013'),
(4, 1, '2.91.78.56', '04/13/2013'),
(5, 13, '110.55.106.221', '04/13/2013'),
(6, 13, '78.93.231.90', '04/13/2013'),
(7, 12, '78.93.231.90', '04/13/2013'),
(8, 6, '78.93.231.90', '04/13/2013'),
(9, 14, '110.55.106.221', '04/13/2013'),
(10, 14, '78.93.231.90', '04/13/2013'),
(11, 6, '121.54.125.86', '04/13/2013'),
(12, 6, '66.220.152.0', '04/13/2013'),
(13, 12, '49.145.10.78', '04/13/2013'),
(14, 11, '49.145.10.78', '04/13/2013'),
(15, 13, '188.55.117.154', '04/13/2013'),
(16, 6, '182.18.250.145', '04/13/2013'),
(17, 6, '92.97.10.197', '04/13/2013'),
(18, 6, '125.60.240.195', '04/13/2013'),
(19, 6, '112.201.206.139', '04/13/2013'),
(20, 6, '49.145.111.31', '04/13/2013'),
(21, 13, '112.201.206.139', '04/13/2013'),
(22, 14, '159.0.77.96', '04/13/2013'),
(23, 6, '112.207.3.195', '04/13/2013'),
(24, 13, '112.207.3.195', '04/13/2013'),
(25, 11, '112.207.3.195', '04/13/2013'),
(26, 6, '180.194.171.22', '04/13/2013'),
(27, 11, '180.194.171.22', '04/13/2013'),
(28, 6, '49.145.69.43', '04/13/2013'),
(29, 14, '49.145.127.155', '04/13/2013'),
(30, 13, '49.145.127.155', '04/13/2013'),
(31, 6, '121.54.58.133', '04/13/2013'),
(32, 6, '68.151.24.88', '04/13/2013'),
(33, 6, '180.190.247.103', '04/13/2013'),
(34, 6, '112.198.90.113', '04/13/2013'),
(35, 6, '125.60.240.215', '04/13/2013'),
(36, 15, '180.190.247.103', '04/13/2013'),
(37, 14, '180.190.247.103', '04/13/2013'),
(38, 13, '49.145.5.205', '04/13/2013'),
(39, 14, '49.145.5.205', '04/13/2013'),
(40, 6, '121.54.58.128', '04/13/2013'),
(41, 6, '112.198.205.249', '04/13/2013'),
(42, 6, '112.198.79.73', '04/13/2013'),
(43, 6, '180.194.171.208', '04/13/2013'),
(44, 6, '49.145.12.181', '04/13/2013'),
(45, 6, '112.198.246.54', '04/13/2013'),
(46, 6, '203.215.116.235', '04/13/2013'),
(47, 16, '203.215.116.235', '04/13/2013'),
(48, 15, '203.215.116.235', '04/13/2013'),
(49, 14, '121.54.58.205', '04/13/2013'),
(50, 6, '112.198.249.183', '04/13/2013'),
(51, 6, '49.145.32.224', '04/13/2013'),
(52, 6, '103.14.60.108', '04/13/2013'),
(53, 6, '103.14.60.198', '04/13/2013'),
(54, 14, '103.14.60.198', '04/13/2013'),
(55, 6, '112.201.165.61', '04/13/2013'),
(56, 6, '121.54.58.137', '04/13/2013'),
(57, 17, '112.198.82.246', '04/13/2013'),
(58, 14, '112.198.82.246', '04/13/2013'),
(59, 6, '120.28.221.154', '04/13/2013'),
(60, 6, '125.60.240.205', '04/13/2013'),
(61, 6, '112.207.185.235', '04/13/2013'),
(62, 6, '180.190.154.217', '04/13/2013'),
(63, 6, '180.190.236.19', '04/13/2013'),
(64, 6, '112.198.90.180', '04/14/2013'),
(65, 6, '124.107.241.57', '04/14/2013'),
(66, 6, '112.206.52.194', '04/14/2013'),
(67, 6, '49.145.17.198', '04/14/2013'),
(68, 6, '120.28.254.219', '04/14/2013'),
(69, 16, '125.212.117.210', '04/14/2013'),
(70, 6, '203.215.117.241', '04/14/2013'),
(71, 6, '203.215.117.81', '04/14/2013'),
(72, 6, '49.145.32.246', '04/14/2013'),
(73, 6, '94.200.126.54', '04/14/2013'),
(74, 6, '49.145.6.145', '04/14/2013'),
(75, 6, '150.70.97.120', '04/14/2013'),
(76, 6, '150.70.64.210', '04/14/2013'),
(77, 6, '203.215.116.175', '04/14/2013'),
(78, 6, '120.28.235.63', '04/14/2013'),
(79, 6, '37.107.134.171', '04/14/2013'),
(80, 18, '37.107.134.171', '04/14/2013'),
(81, 20, '37.107.134.171', '04/14/2013'),
(82, 6, '180.190.152.23', '04/14/2013'),
(83, 6, '180.194.170.159', '04/14/2013'),
(84, 6, '180.190.153.225', '04/14/2013'),
(85, 18, '65.55.213.67', '04/14/2013'),
(86, 17, '65.55.213.67', '04/14/2013'),
(87, 20, '65.55.213.67', '04/14/2013'),
(88, 19, '65.55.213.67', '04/14/2013'),
(89, 6, '203.177.74.143', '04/14/2013'),
(90, 6, '37.228.105.0', '04/14/2013'),
(91, 6, '49.145.64.48', '04/14/2013'),
(92, 6, '120.28.254.6', '04/15/2013'),
(93, 6, '125.212.121.232', '04/15/2013'),
(94, 6, '49.145.11.152', '04/15/2013'),
(95, 6, '50.117.80.102', '04/15/2013'),
(96, 6, '49.145.118.205', '04/15/2013'),
(97, 16, '49.145.118.205', '04/15/2013'),
(98, 6, '49.145.86.136', '04/15/2013'),
(99, 6, '124.105.45.206', '04/15/2013'),
(100, 6, '49.145.23.185', '04/15/2013'),
(101, 6, '125.212.121.170', '04/15/2013'),
(102, 6, '121.54.58.136', '04/15/2013'),
(103, 6, '120.28.233.160', '04/15/2013'),
(104, 6, '49.145.112.71', '04/15/2013'),
(105, 6, '78.93.231.90', '04/16/2013'),
(106, 6, '125.60.240.233', '04/16/2013'),
(107, 6, '110.55.106.221', '04/16/2013'),
(108, 1, '78.93.231.90', '04/16/2013'),
(109, 21, '119.93.41.146', '04/16/2013'),
(110, 1, '110.55.106.221', '04/16/2013'),
(111, 6, '174.129.228.67', '04/17/2013'),
(112, 6, '49.145.102.84', '04/17/2013'),
(113, 1, '112.210.52.135', '04/17/2013'),
(114, 6, '121.54.34.100', '04/18/2013'),
(115, 1, '37.107.61.176', '04/18/2013'),
(116, 6, '103.14.60.4', '04/18/2013'),
(117, 6, '119.93.41.124', '04/18/2013'),
(118, 6, '49.147.186.45', '04/18/2013'),
(119, 1, '41.203.85.70', '04/19/2013'),
(120, 33, '69.171.229.113', '04/19/2013'),
(121, 6, '49.147.187.165', '04/19/2013'),
(122, 6, '180.194.243.231', '04/19/2013'),
(123, 6, '112.198.90.195', '04/19/2013'),
(124, 21, '216.232.216.170', '04/20/2013'),
(125, 11, '110.55.106.221', '04/21/2013'),
(126, 1, '49.147.186.59', '04/21/2013'),
(127, 6, '120.28.220.208', '04/21/2013'),
(128, 1, '70.67.151.50', '04/22/2013'),
(129, 1, '71.43.73.242', '04/22/2013'),
(130, 1, '128.30.52.71', '04/22/2013'),
(131, 21, '49.145.63.119', '04/23/2013'),
(132, 6, '112.201.168.109', '04/23/2013'),
(133, 1, '110.55.106.221', '04/24/2013'),
(134, 1, '110.55.106.221', '04/23/2013'),
(135, 6, '49.145.13.131', '04/26/2013'),
(136, 21, '49.145.95.85', '04/27/2013'),
(137, 1, '78.93.231.90', '04/27/2013'),
(138, 1, '49.145.32.106', '04/28/2013'),
(139, 21, '49.145.102.230', '04/28/2013'),
(140, 21, '69.171.237.9', '04/28/2013'),
(141, 21, '49.145.69.222', '04/28/2013'),
(142, 21, '49.145.83.226', '04/29/2013'),
(143, 1, '195.59.102.34', '04/30/2013'),
(144, 21, '110.54.175.148', '04/30/2013'),
(145, 6, '121.97.194.54', '04/30/2013'),
(146, 6, '69.171.234.119', '04/30/2013'),
(147, 12, '125.212.121.240', '05/01/2013'),
(148, 1, '37.105.153.234', '05/01/2013'),
(149, 39, '180.194.171.173', '05/02/2013'),
(150, 39, '173.252.110.118', '05/02/2013'),
(151, 39, '49.241.115.213', '05/02/2013'),
(152, 39, '150.70.172.235', '05/02/2013'),
(153, 39, '180.194.172.27', '05/02/2013'),
(154, 39, '69.171.233.4', '05/02/2013'),
(155, 39, '112.206.77.77', '05/02/2013'),
(156, 20, '157.55.34.183', '05/03/2013'),
(157, 17, '157.55.33.88', '05/03/2013'),
(158, 19, '157.55.32.109', '05/03/2013'),
(159, 18, '157.55.33.88', '05/03/2013'),
(160, 21, '49.145.59.74', '05/03/2013'),
(161, 21, '69.171.233.2', '05/03/2013'),
(162, 21, '216.52.242.14', '05/03/2013'),
(163, 21, '37.104.95.149', '05/03/2013'),
(164, 11, '89.145.108.207', '05/03/2013'),
(165, 11, '216.82.243.83', '05/03/2013'),
(166, 33, '70.67.151.50', '05/03/2013'),
(167, 11, '207.189.121.45', '05/05/2013'),
(168, 1, '120.28.192.166', '05/05/2013'),
(169, 1, '2.89.112.57', '05/05/2013'),
(170, 1, '64.134.221.245', '05/05/2013'),
(171, 1, '110.55.106.221', '05/06/2013'),
(172, 12, '203.215.116.212', '05/06/2013'),
(173, 11, '121.54.44.184', '05/06/2013'),
(174, 39, '110.55.106.221', '05/06/2013'),
(175, 19, '157.56.229.186', '05/07/2013'),
(176, 39, '69.171.233.3', '05/09/2013'),
(177, 1, '110.55.106.221', '05/11/2013'),
(178, 11, '110.55.106.221', '05/11/2013'),
(179, 11, '112.198.77.90', '05/11/2013'),
(180, 1, '99.243.91.81', '05/12/2013'),
(181, 11, '110.55.106.221', '05/13/2013'),
(182, 11, '74.178.182.198', '05/13/2013'),
(183, 11, '120.28.98.155', '05/13/2013'),
(184, 1, '121.222.61.29', '05/13/2013'),
(185, 1, '68.148.12.73', '05/13/2013'),
(186, 1, '76.90.90.41', '05/14/2013'),
(187, 1, '97.79.120.238', '05/15/2013'),
(188, 11, '110.55.106.221', '05/16/2013'),
(189, 11, '120.28.86.117', '05/17/2013'),
(190, 11, '184.44.137.247', '05/19/2013'),
(191, 1, '42.61.212.110', '05/19/2013'),
(192, 1, '120.22.32.60', '05/20/2013'),
(193, 1, '65.52.100.214', '05/20/2013'),
(194, 1, '76.103.20.103', '05/20/2013'),
(195, 1, '94.98.2.163', '05/20/2013'),
(196, 11, '112.198.82.158', '05/21/2013'),
(197, 11, '112.198.77.253', '05/21/2013'),
(198, 11, '65.52.100.214', '05/21/2013'),
(199, 1, '121.54.11.228', '05/22/2013'),
(200, 33, '203.177.74.140', '05/22/2013'),
(201, 1, '70.72.146.62', '05/25/2013'),
(202, 33, '120.28.218.35', '05/25/2013'),
(203, 1, '198.228.216.154', '05/25/2013'),
(204, 1, '70.211.4.37', '05/27/2013'),
(205, 33, '66.249.73.167', '05/28/2013'),
(206, 39, '110.55.106.221', '05/28/2013'),
(207, 39, '69.171.234.115', '05/28/2013'),
(208, 11, '76.109.19.242', '05/28/2013'),
(209, 11, '120.28.98.155', '05/29/2013'),
(210, 11, '122.54.71.19', '05/29/2013'),
(211, 1, '76.171.188.158', '05/29/2013'),
(212, 33, '180.190.158.46', '05/30/2013'),
(213, 33, '110.55.106.221', '05/30/2013'),
(214, 33, '69.171.242.118', '05/30/2013'),
(215, 1, '96.49.48.89', '05/31/2013'),
(216, 33, '180.190.225.141', '06/01/2013'),
(217, 1, '2.88.125.214', '06/01/2013'),
(218, 11, '66.249.73.167', '06/01/2013'),
(219, 33, '180.190.247.144', '06/01/2013'),
(220, 11, '81.25.53.117', '06/02/2013'),
(221, 1, '65.36.92.164', '06/02/2013'),
(222, 1, '182.73.92.41', '06/03/2013'),
(223, 1, '182.18.208.4', '06/03/2013'),
(224, 1, '107.193.28.82', '06/03/2013'),
(225, 21, '69.171.247.117', '06/03/2013'),
(226, 21, '112.198.82.248', '06/03/2013'),
(227, 1, '202.8.243.106', '06/04/2013'),
(228, 1, '115.85.11.133', '06/04/2013'),
(229, 1, '110.55.106.221', '06/04/2013'),
(230, 6, '110.55.106.221', '06/04/2013'),
(231, 11, '66.55.132.182', '06/05/2013'),
(232, 1, '122.54.71.19', '06/05/2013'),
(233, 32, '69.171.247.113', '06/05/2013'),
(234, 32, '122.52.157.143', '06/05/2013'),
(235, 11, '49.145.103.31', '06/06/2013'),
(236, 1, '98.223.144.224', '06/06/2013'),
(237, 1, '180.191.237.174', '06/06/2013'),
(238, 1, '122.54.71.19', '06/06/2013'),
(239, 1, '50.194.85.30', '06/07/2013'),
(240, 1, '98.223.144.224', '06/07/2013'),
(241, 1, '174.129.228.67', '06/08/2013'),
(242, 11, '174.129.228.67', '06/08/2013'),
(243, 1, '2.88.34.149', '06/08/2013'),
(244, 33, '76.169.229.226', '06/09/2013'),
(245, 6, '173.252.112.114', '06/12/2013'),
(246, 6, '49.147.120.56', '06/12/2013'),
(247, 1, '174.7.241.59', '06/12/2013'),
(248, 1, '37.104.99.98', '06/12/2013'),
(249, 33, '120.28.213.84', '06/13/2013'),
(250, 48, '173.252.110.117', '06/13/2013'),
(251, 48, '110.55.106.221', '06/13/2013'),
(252, 48, '180.194.171.40', '06/13/2013'),
(253, 48, '49.145.105.252', '06/13/2013'),
(254, 48, '203.215.116.175', '06/13/2013'),
(255, 1, '125.60.156.248', '06/13/2013'),
(256, 6, '69.197.137.17', '06/14/2013'),
(257, 6, '49.145.89.112', '06/14/2013'),
(258, 6, '174.129.228.67', '06/15/2013'),
(259, 19, '157.55.35.93', '06/15/2013'),
(260, 48, '174.129.228.67', '06/16/2013'),
(261, 36, '174.129.228.67', '06/16/2013'),
(262, 12, '174.129.228.67', '06/16/2013'),
(263, 1, '49.144.122.72', '06/16/2013'),
(264, 32, '174.129.228.67', '06/16/2013'),
(265, 1, '49.144.64.72', '06/16/2013'),
(266, 1, '101.119.19.198', '06/17/2013'),
(267, 1, '2.90.27.139', '06/17/2013'),
(268, 1, '203.215.117.161', '06/17/2013'),
(269, 1, '110.55.106.221', '06/18/2013'),
(270, 1, '172.248.216.246', '06/18/2013'),
(271, 1, '112.198.79.243', '06/21/2013'),
(272, 1, '37.160.45.137', '06/21/2013'),
(273, 1, '78.93.231.90', '06/21/2013'),
(274, 1, '212.100.196.133', '06/21/2013'),
(275, 1, '172.248.216.246', '06/23/2013'),
(276, 1, '110.142.41.195', '06/23/2013'),
(277, 1, '110.142.41.195', '06/24/2013'),
(278, 1, '128.30.52.71', '06/24/2013'),
(279, 1, '110.142.41.195', '06/25/2013'),
(280, 1, '198.228.216.162', '06/26/2013'),
(281, 33, '180.76.5.192', '06/28/2013'),
(282, 1, '95.125.67.2', '06/28/2013'),
(283, 33, '180.76.5.170', '06/29/2013'),
(284, 33, '66.249.75.203', '06/30/2013'),
(285, 1, '120.28.91.240', '07/01/2013'),
(286, 1, '112.207.68.120', '07/03/2013'),
(287, 1, '108.66.128.97', '07/03/2013'),
(288, 1, '124.6.181.98', '07/04/2013'),
(289, 31, '180.191.252.181', '07/04/2013'),
(290, 21, '66.249.75.203', '07/05/2013'),
(291, 1, '110.93.94.130', '07/07/2013'),
(292, 6, '121.97.111.150', '07/08/2013'),
(293, 1, '174.17.99.107', '07/08/2013'),
(294, 1, '110.93.94.130', '07/09/2013'),
(295, 11, '31.31.73.162', '07/10/2013'),
(296, 1, '112.207.145.201', '07/10/2013'),
(297, 21, '58.69.101.55', '07/12/2013'),
(298, 1, '112.210.61.89', '07/15/2013'),
(299, 1, '71.20.160.90', '07/15/2013'),
(300, 1, '173.252.100.113', '07/15/2013'),
(301, 1, '112.198.90.249', '07/15/2013'),
(302, 33, '183.90.41.24', '07/16/2013'),
(303, 33, '173.75.255.91', '07/17/2013'),
(304, 6, '121.54.34.100', '07/19/2013'),
(305, 11, '174.26.224.87', '07/19/2013'),
(306, 11, '49.145.60.224', '07/24/2013'),
(307, 1, '69.171.229.117', '07/25/2013'),
(308, 1, '203.215.116.2', '07/25/2013'),
(309, 19, '157.55.32.76', '07/25/2013'),
(310, 39, '69.171.234.116', '07/26/2013'),
(311, 21, '49.145.29.11', '07/28/2013'),
(312, 33, '119.92.196.226', '07/29/2013'),
(313, 6, '173.252.73.117', '07/30/2013'),
(314, 33, '180.76.5.167', '08/01/2013'),
(315, 21, '66.249.72.203', '08/02/2013'),
(316, 33, '112.198.248.169', '08/03/2013'),
(317, 33, '166.137.156.150', '08/03/2013'),
(318, 33, '66.249.75.203', '08/04/2013'),
(319, 11, '66.249.73.167', '08/05/2013'),
(320, 21, '66.249.73.167', '08/05/2013'),
(321, 33, '66.249.75.203', '08/09/2013'),
(322, 1, '78.93.231.90', '08/12/2013'),
(323, 11, '66.249.72.203', '08/14/2013'),
(324, 33, '124.185.77.133', '08/16/2013'),
(325, 39, '49.145.103.37', '09/02/2013'),
(326, 39, '69.171.234.118', '09/02/2013'),
(327, 11, '66.249.66.203', '09/02/2013'),
(328, 21, '66.249.66.203', '09/02/2013'),
(329, 33, '180.76.5.142', '09/02/2013'),
(330, 1, '58.69.101.55', '09/03/2013'),
(331, 11, '66.249.75.203', '09/03/2013'),
(332, 1, '65.197.208.6', '09/04/2013'),
(333, 33, '199.192.207.146', '09/05/2013'),
(334, 1, '78.93.231.90', '09/09/2013'),
(335, 1, '46.230.99.241', '09/09/2013'),
(336, 1, '112.204.41.204', '09/10/2013'),
(337, 1, '24.213.176.122', '09/17/2013'),
(338, 1, '186.177.80.42', '09/17/2013'),
(339, 21, '66.249.66.203', '09/18/2013'),
(340, 1, '68.231.42.36', '09/18/2013'),
(341, 1, '98.144.123.126', '09/18/2013'),
(342, 1, '99.231.88.220', '09/19/2013'),
(343, 1, '68.231.42.36', '09/19/2013'),
(344, 1, '68.7.143.220', '09/19/2013'),
(345, 1, '70.26.155.53', '09/19/2013'),
(346, 1, '220.245.155.12', '09/19/2013'),
(347, 1, '24.213.176.122', '09/20/2013'),
(348, 1, '220.245.155.12', '09/21/2013'),
(349, 1, '68.231.42.36', '09/23/2013'),
(350, 1, '174.129.228.67', '09/23/2013'),
(351, 1, '220.245.155.12', '09/25/2013'),
(352, 1, '112.198.79.163', '09/25/2013'),
(353, 11, '184.88.34.101', '09/26/2013'),
(354, 11, '144.76.92.234', '09/28/2013'),
(355, 33, '66.249.74.42', '10/01/2013'),
(356, 1, '220.245.155.12', '10/01/2013'),
(357, 1, '49.248.175.31', '10/02/2013'),
(358, 1, '180.194.29.95', '10/02/2013'),
(359, 21, '66.249.74.42', '10/02/2013'),
(360, 1, '71.95.164.162', '10/03/2013'),
(361, 1, '111.68.32.180', '10/04/2013'),
(362, 33, '180.76.5.12', '10/04/2013'),
(363, 1, '111.68.32.180', '10/06/2013'),
(364, 1, '220.245.155.12', '10/07/2013'),
(365, 1, '180.194.242.254', '10/08/2013'),
(366, 1, '72.69.220.150', '10/08/2013'),
(367, 51, '119.93.139.143', '10/10/2013'),
(368, 11, '66.249.73.167', '10/11/2013'),
(369, 1, '101.98.181.93', '10/12/2013'),
(370, 39, '69.171.234.117', '10/13/2013'),
(371, 39, '49.145.106.212', '10/13/2013'),
(372, 1, '49.145.139.51', '10/17/2013'),
(373, 1, '66.35.60.156', '10/17/2013'),
(374, 1, '124.6.181.74', '10/17/2013'),
(375, 1, '66.35.60.195', '10/17/2013'),
(376, 1, '111.68.32.180', '10/18/2013'),
(377, 1, '76.173.75.250', '10/20/2013'),
(378, 1, '24.14.137.37', '10/20/2013'),
(379, 1, '78.93.231.90', '10/21/2013'),
(380, 1, '111.68.32.180', '10/21/2013'),
(381, 1, '180.194.250.193', '10/21/2013'),
(382, 1, '24.211.221.18', '10/21/2013'),
(383, 1, '146.251.39.182', '10/21/2013'),
(384, 1, '110.55.106.221', '10/21/2013'),
(385, 1, '49.147.82.99', '10/22/2013'),
(386, 1, '76.173.75.250', '10/22/2013'),
(387, 21, '49.145.66.241', '10/22/2013'),
(388, 21, '66.220.152.115', '10/22/2013'),
(389, 1, '37.141.85.203', '10/22/2013'),
(390, 1, '110.55.106.221', '10/22/2013'),
(391, 1, '78.93.231.90', '10/24/2013'),
(392, 1, '8.3.50.35', '10/24/2013'),
(393, 1, '101.98.181.93', '10/25/2013'),
(394, 19, '157.56.229.247', '10/26/2013'),
(395, 1, '101.98.181.93', '10/27/2013'),
(396, 1, '110.55.106.221', '10/27/2013'),
(397, 1, '101.98.181.93', '10/28/2013'),
(398, 1, '110.55.106.221', '10/28/2013'),
(399, 1, '49.147.124.64', '10/28/2013'),
(400, 1, '8.3.50.35', '10/29/2013'),
(401, 1, '37.141.181.237', '11/02/2013'),
(402, 1, '110.55.106.221', '11/03/2013'),
(403, 33, '180.76.5.58', '11/05/2013'),
(404, 1, '122.62.234.36', '11/11/2013'),
(405, 1, '110.55.106.221', '11/15/2013'),
(406, 1, '71.81.122.163', '11/15/2013'),
(407, 6, '180.190.152.140', '11/17/2013'),
(408, 6, '69.171.237.8', '11/17/2013'),
(409, 1, '184.96.185.250', '11/18/2013'),
(410, 11, '91.64.157.224', '11/19/2013'),
(411, 1, '174.29.9.67', '11/21/2013'),
(412, 33, '24.230.50.166', '11/23/2013'),
(413, 11, '66.249.75.203', '11/26/2013'),
(414, 6, '94.96.46.22', '11/27/2013'),
(415, 1, '180.191.100.176', '12/02/2013'),
(416, 18, '157.55.34.183', '12/05/2013'),
(417, 33, '180.76.6.155', '12/07/2013'),
(418, 1, '120.28.81.241', '12/08/2013'),
(419, 11, '66.249.66.203', '12/10/2013'),
(420, 1, '173.252.74.118', '12/11/2013'),
(421, 1, '110.55.106.221', '12/11/2013'),
(422, 11, '49.147.171.20', '12/14/2013'),
(423, 1, '110.55.106.221', '12/17/2013'),
(424, 1, '180.190.238.95', '12/17/2013'),
(425, 1, '121.54.58.242', '12/20/2013'),
(426, 19, '157.56.93.42', '12/22/2013'),
(427, 11, '66.249.66.203', '12/24/2013'),
(428, 21, '66.249.66.203', '12/28/2013'),
(429, 33, '66.249.66.203', '12/30/2013'),
(430, 33, '180.76.5.198', '01/07/2014'),
(431, 1, '110.55.106.221', '01/08/2014'),
(432, 18, '65.55.52.89', '01/14/2014'),
(433, 33, '66.249.74.132', '01/14/2014'),
(434, 21, '66.249.66.203', '01/15/2014'),
(435, 11, '66.249.66.203', '01/18/2014'),
(436, 1, '110.55.106.221', '01/19/2014'),
(437, 1, '67.81.77.45', '01/22/2014'),
(438, 1, '24.186.149.192', '01/24/2014'),
(439, 1, '67.81.77.45', '01/24/2014'),
(440, 1, '109.83.44.44', '01/25/2014'),
(441, 1, '110.55.106.221', '01/25/2014'),
(442, 1, '110.55.106.221', '01/26/2014'),
(443, 6, '66.220.152.119', '01/26/2014'),
(444, 6, '57.72.10.197', '01/26/2014'),
(445, 6, '103.246.38.196', '01/26/2014'),
(446, 1, '70.208.68.97', '01/27/2014'),
(447, 1, '24.186.149.192', '01/27/2014'),
(448, 11, '66.249.73.167', '01/28/2014'),
(449, 1, '49.144.24.52', '01/28/2014'),
(450, 1, '78.93.231.90', '01/28/2014'),
(451, 11, '199.58.86.206', '01/29/2014'),
(452, 33, '199.58.86.206', '01/29/2014'),
(453, 11, '162.210.196.130', '01/30/2014'),
(454, 33, '162.210.196.130', '01/30/2014'),
(455, 11, '144.76.166.252', '01/30/2014'),
(456, 33, '144.76.166.252', '01/30/2014'),
(457, 19, '157.55.35.117', '01/30/2014'),
(458, 1, '174.91.247.171', '01/31/2014'),
(459, 1, '78.93.231.90', '02/02/2014'),
(460, 1, '50.186.255.227', '02/04/2014'),
(461, 33, '180.76.6.54', '02/08/2014'),
(462, 11, '66.249.73.167', '02/11/2014'),
(463, 21, '66.220.158.118', '02/12/2014'),
(464, 21, '49.145.73.69', '02/12/2014'),
(465, 1, '50.186.255.227', '02/13/2014'),
(466, 33, '216.151.137.35', '02/17/2014'),
(467, 1, '110.55.106.221', '02/23/2014'),
(468, 39, '66.220.152.117', '02/24/2014'),
(469, 33, '216.151.137.35', '02/24/2014'),
(470, 1, '64.64.161.103', '02/24/2014'),
(471, 1, '78.93.231.90', '02/24/2014'),
(472, 1, '110.55.106.221', '02/25/2014'),
(473, 33, '216.151.130.170', '02/26/2014'),
(474, 1, '110.55.106.221', '02/26/2014'),
(475, 18, '199.30.20.15', '02/27/2014'),
(476, 1, '110.55.106.221', '02/28/2014'),
(477, 1, '5.108.69.194', '03/03/2014'),
(478, 1, '110.55.106.221', '03/04/2014'),
(479, 33, '216.151.130.170', '03/04/2014'),
(480, 33, '216.151.130.170', '03/05/2014'),
(481, 33, '216.151.130.170', '03/06/2014'),
(482, 1, '110.55.106.221', '03/06/2014'),
(483, 1, '222.127.62.173', '03/06/2014'),
(484, 21, '66.220.158.117', '03/07/2014'),
(485, 21, '49.147.102.104', '03/07/2014'),
(486, 11, '190.102.29.5', '03/07/2014'),
(487, 21, '120.72.16.42', '03/07/2014'),
(488, 19, '157.56.229.244', '03/09/2014'),
(489, 1, '110.55.106.221', '03/09/2014'),
(490, 31, '49.147.58.255', '03/11/2014'),
(491, 33, '216.151.130.170', '03/13/2014'),
(492, 33, '216.151.130.170', '03/14/2014'),
(493, 33, '180.76.6.58', '03/15/2014'),
(494, 33, '216.151.130.170', '03/15/2014'),
(495, 33, '216.151.130.170', '03/16/2014'),
(496, 18, '65.55.24.214', '03/16/2014'),
(497, 33, '66.249.74.222', '03/19/2014'),
(498, 33, '216.151.130.170', '03/21/2014'),
(499, 18, '157.56.229.184', '03/21/2014'),
(500, 33, '216.151.130.170', '03/22/2014'),
(501, 1, '97.96.238.180', '03/23/2014'),
(502, 1, '203.106.182.33', '03/23/2014'),
(503, 1, '97.96.238.180', '03/24/2014'),
(504, 33, '216.151.130.170', '03/25/2014'),
(505, 1, '5.108.1.204', '03/25/2014'),
(506, 33, '66.249.68.224', '03/25/2014'),
(507, 33, '216.151.130.170', '03/26/2014'),
(508, 1, '50.125.54.222', '03/26/2014'),
(509, 1, '24.240.186.222', '03/27/2014'),
(510, 1, '210.195.231.74', '03/27/2014'),
(511, 33, '216.151.130.170', '03/27/2014'),
(512, 33, '216.151.130.170', '03/29/2014'),
(513, 33, '216.151.130.170', '03/31/2014'),
(514, 33, '216.151.130.170', '04/01/2014'),
(515, 1, '24.240.186.222', '04/01/2014'),
(516, 11, '92.232.53.54', '04/01/2014'),
(517, 33, '92.232.53.54', '04/01/2014'),
(518, 1, '69.171.247.114', '04/02/2014'),
(519, 1, '94.201.234.130', '04/02/2014'),
(520, 1, '94.201.233.166', '04/02/2014'),
(521, 1, '76.246.2.111', '04/02/2014'),
(522, 1, '121.96.45.50', '04/02/2014'),
(523, 33, '216.151.130.170', '04/03/2014'),
(524, 1, '110.55.106.221', '04/03/2014'),
(525, 1, '210.195.47.194', '04/04/2014'),
(526, 1, '65.34.164.54', '04/04/2014'),
(527, 1, '65.34.164.54', '04/06/2014'),
(528, 1, '42.61.228.28', '04/06/2014'),
(529, 1, '65.34.164.54', '04/08/2014'),
(530, 1, '42.61.234.23', '04/08/2014'),
(531, 1, '125.60.241.217', '04/08/2014'),
(532, 33, '66.249.70.203', '04/08/2014'),
(533, 39, '69.171.230.119', '04/08/2014'),
(534, 1, '74.90.201.138', '04/14/2014'),
(535, 21, '49.146.213.28', '04/14/2014'),
(536, 21, '66.220.158.118', '04/14/2014'),
(537, 21, '69.18.50.59', '04/14/2014'),
(538, 1, '125.60.241.217', '04/15/2014'),
(539, 19, '157.55.33.126', '04/15/2014'),
(540, 33, '180.76.5.65', '04/16/2014'),
(541, 1, '5.108.37.64', '04/16/2014'),
(542, 11, '66.249.70.203', '04/19/2014'),
(543, 1, '110.55.106.221', '04/20/2014'),
(544, 18, '157.55.33.110', '04/22/2014'),
(545, 1, '101.119.30.94', '04/22/2014'),
(546, 1, '124.171.250.114', '04/23/2014'),
(547, 11, '66.249.65.160', '04/26/2014'),
(548, 1, '5.108.9.63', '04/27/2014'),
(549, 1, '112.208.5.130', '04/27/2014'),
(550, 18, '157.56.92.174', '04/27/2014'),
(551, 33, '46.246.35.48', '04/29/2014'),
(552, 1, '121.211.113.234', '04/29/2014'),
(553, 1, '110.55.106.221', '04/29/2014'),
(554, 33, '46.246.36.16', '04/29/2014'),
(555, 21, '66.220.158.116', '04/30/2014'),
(556, 21, '49.145.22.34', '04/30/2014'),
(557, 33, '46.246.40.79', '04/30/2014'),
(558, 1, '110.55.106.221', '04/30/2014'),
(559, 1, '108.66.239.48', '05/01/2014'),
(560, 33, '46.246.40.79', '05/01/2014'),
(561, 1, '207.102.70.3', '05/02/2014'),
(562, 1, '112.203.219.16', '05/03/2014'),
(563, 33, '46.246.43.43', '05/03/2014'),
(564, 1, '121.54.17.214', '05/05/2014'),
(565, 33, '46.246.39.42', '05/05/2014'),
(566, 33, '46.246.33.15', '05/06/2014'),
(567, 33, '46.246.42.94', '05/06/2014'),
(568, 1, '112.200.25.71', '05/07/2014'),
(569, 1, '112.203.238.188', '05/07/2014'),
(570, 1, '124.171.250.114', '05/08/2014'),
(571, 33, '46.246.49.20', '05/08/2014'),
(572, 33, '46.246.49.226', '05/09/2014'),
(573, 33, '46.246.49.20', '05/09/2014'),
(574, 33, '46.246.49.226', '05/10/2014'),
(575, 33, '46.246.32.132', '05/10/2014'),
(576, 18, '157.55.34.74', '05/10/2014'),
(577, 33, '46.246.32.136', '05/11/2014'),
(578, 1, '110.55.106.221', '05/13/2014'),
(579, 1, '173.252.100.117', '05/13/2014'),
(580, 1, '112.198.77.120', '05/13/2014'),
(581, 33, '46.246.32.99', '05/13/2014'),
(582, 33, '46.246.32.78', '05/13/2014'),
(583, 1, '99.234.243.231', '05/17/2014'),
(584, 33, '180.76.6.143', '05/18/2014'),
(585, 1, '182.18.238.14', '05/18/2014'),
(586, 1, '110.55.106.221', '05/19/2014'),
(587, 1, '216.80.32.74', '05/20/2014'),
(588, 1, '150.70.97.112', '05/20/2014'),
(589, 1, '150.70.75.36', '05/20/2014'),
(590, 1, '110.55.106.221', '05/21/2014'),
(591, 1, '99.234.243.231', '05/21/2014'),
(592, 1, '65.52.100.214', '05/21/2014'),
(593, 1, '110.55.106.221', '05/23/2014'),
(594, 21, '66.220.158.113', '05/25/2014'),
(595, 19, '157.56.93.37', '05/26/2014'),
(596, 1, '173.252.100.117', '06/02/2014'),
(597, 1, '76.246.2.111', '06/04/2014'),
(598, 1, '76.246.2.111', '06/07/2014'),
(599, 1, '173.252.100.116', '06/10/2014'),
(600, 1, '121.97.82.2', '06/10/2014'),
(601, 18, '65.55.55.229', '06/11/2014'),
(602, 1, '103.21.170.53', '06/11/2014'),
(603, 1, '121.97.82.2', '06/12/2014'),
(604, 1, '5.108.52.178', '06/15/2014'),
(605, 1, '24.44.113.133', '06/15/2014'),
(606, 1, '122.2.16.197', '06/16/2014'),
(607, 1, '70.187.190.93', '06/17/2014'),
(608, 21, '66.220.158.119', '06/17/2014'),
(609, 1, '110.55.106.221', '06/17/2014'),
(610, 1, '74.90.201.138', '06/17/2014'),
(611, 11, '37.59.20.217', '06/19/2014'),
(612, 33, '37.59.20.217', '06/19/2014'),
(613, 33, '180.76.5.65', '06/22/2014'),
(614, 1, '103.21.170.53', '06/22/2014'),
(615, 18, '157.55.39.102', '06/22/2014'),
(616, 1, '80.189.194.125', '06/26/2014'),
(617, 18, '207.46.13.85', '06/27/2014'),
(618, 19, '207.46.13.25', '07/04/2014'),
(619, 18, '157.55.39.169', '07/05/2014'),
(620, 1, '217.137.144.139', '07/05/2014'),
(621, 1, '213.188.53.125', '07/06/2014'),
(622, 18, '207.46.13.54', '07/07/2014'),
(623, 1, '188.154.228.25', '07/07/2014'),
(624, 1, '46.245.145.146', '07/08/2014'),
(625, 1, '213.55.184.156', '07/08/2014'),
(626, 18, '207.46.13.95', '07/09/2014'),
(627, 1, '188.154.228.25', '07/09/2014'),
(628, 1, '110.55.106.221', '07/09/2014'),
(629, 21, '69.171.230.117', '07/10/2014'),
(630, 1, '173.73.124.104', '07/10/2014'),
(631, 1, '217.137.144.139', '07/11/2014'),
(632, 1, '188.154.228.25', '07/13/2014'),
(633, 1, '222.127.174.138', '07/13/2014'),
(634, 1, '173.252.101.114', '07/13/2014'),
(635, 1, '92.107.4.236', '07/15/2014'),
(636, 18, '207.46.13.114', '07/17/2014'),
(637, 1, '209.133.66.2', '07/17/2014'),
(638, 33, '180.76.6.130', '07/23/2014'),
(639, 6, '146.251.86.6', '07/23/2014'),
(640, 33, '180.76.5.77', '07/27/2014'),
(641, 11, '86.6.184.214', '07/29/2014'),
(642, 33, '86.6.184.214', '07/29/2014'),
(643, 1, '112.210.189.206', '08/01/2014'),
(644, 1, '5.108.14.180', '08/01/2014'),
(645, 1, '110.55.106.221', '08/01/2014'),
(646, 6, '49.145.14.183', '08/03/2014'),
(647, 1, '112.203.173.9', '08/03/2014'),
(648, 11, '41.86.234.162', '08/04/2014'),
(649, 1, '110.55.106.221', '08/04/2014'),
(650, 18, '157.55.39.33', '08/08/2014'),
(651, 1, '70.189.249.108', '08/14/2014'),
(652, 1, '173.252.110.112', '08/14/2014'),
(653, 6, '173.252.110.112', '08/15/2014'),
(654, 11, '49.145.66.20', '08/20/2014'),
(655, 11, '49.145.108.166', '08/24/2014'),
(656, 11, '66.249.65.23', '08/26/2014'),
(657, 11, '66.249.65.23', '08/27/2014'),
(658, 33, '66.249.70.203', '08/28/2014'),
(659, 33, '180.76.5.177', '08/29/2014'),
(660, 1, '206.45.142.4', '08/31/2014'),
(661, 21, '66.249.65.23', '09/02/2014'),
(662, 21, '66.220.158.114', '09/05/2014'),
(663, 33, '180.76.6.135', '09/05/2014'),
(664, 1, '37.141.219.172', '09/05/2014'),
(665, 33, '66.249.65.15', '09/16/2014'),
(666, 21, '66.249.65.15', '09/16/2014'),
(667, 33, '180.76.5.172', '09/18/2014'),
(668, 21, '173.252.100.113', '09/23/2014'),
(669, 1, '37.16.169.111', '09/26/2014'),
(670, 1, '50.173.100.98', '09/26/2014'),
(671, 21, '49.145.70.173', '09/29/2014'),
(672, 1, '207.178.46.6', '09/29/2014'),
(673, 1, '49.144.119.121', '09/29/2014'),
(674, 1, '69.8.124.143', '09/30/2014'),
(675, 21, '66.249.69.95', '09/30/2014'),
(676, 1, '49.151.86.212', '10/02/2014'),
(677, 33, '180.76.6.50', '10/03/2014'),
(678, 11, '66.249.65.83', '10/03/2014'),
(679, 1, '72.77.224.215', '10/10/2014'),
(680, 21, '66.249.65.83', '10/14/2014'),
(681, 11, '180.191.78.81', '10/15/2014'),
(682, 1, '50.173.100.98', '10/15/2014'),
(683, 33, '180.76.5.24', '10/17/2014'),
(684, 1, '50.173.100.98', '10/17/2014'),
(685, 11, '24.230.61.73', '10/18/2014'),
(686, 33, '24.230.61.73', '10/18/2014'),
(687, 1, '101.63.150.149', '10/18/2014'),
(688, 1, '150.70.173.53', '10/18/2014'),
(689, 1, '112.208.15.103', '10/19/2014'),
(690, 1, '50.173.100.98', '10/19/2014'),
(691, 1, '122.144.121.161', '10/19/2014'),
(692, 1, '172.219.197.113', '10/20/2014'),
(693, 1, '122.53.80.1', '10/20/2014'),
(694, 1, '180.190.49.189', '10/20/2014'),
(695, 33, '180.76.6.159', '10/22/2014'),
(696, 1, '121.127.23.234', '10/22/2014'),
(697, 1, '60.240.34.205', '10/23/2014'),
(698, 1, '121.54.54.47', '10/25/2014'),
(699, 1, '103.14.60.155', '10/26/2014'),
(700, 33, '180.190.149.233', '10/27/2014'),
(701, 33, '49.145.39.154', '10/27/2014'),
(702, 21, '66.249.65.91', '10/28/2014'),
(703, 33, '180.76.6.41', '10/28/2014'),
(704, 33, '120.28.218.75', '10/28/2014'),
(705, 11, '66.249.65.83', '10/28/2014'),
(706, 1, '49.151.88.155', '10/29/2014'),
(707, 1, '60.240.34.205', '10/29/2014'),
(708, 21, '66.220.158.117', '10/30/2014'),
(709, 1, '162.207.8.49', '10/30/2014'),
(710, 33, '220.181.108.165', '10/31/2014'),
(711, 1, '174.129.228.67', '11/02/2014'),
(712, 6, '78.100.136.124', '11/02/2014'),
(713, 1, '27.32.81.65', '11/03/2014'),
(714, 1, '124.104.190.92', '11/04/2014'),
(715, 1, '112.198.79.248', '11/06/2014'),
(716, 1, '112.198.64.8', '11/07/2014'),
(717, 1, '112.198.64.8', '11/10/2014'),
(718, 33, '66.249.65.87', '11/10/2014'),
(719, 33, '180.76.5.153', '11/11/2014'),
(720, 21, '66.249.65.83', '11/11/2014'),
(721, 1, '58.173.75.74', '11/11/2014'),
(722, 1, '110.174.53.11', '11/11/2014'),
(723, 1, '120.29.99.85', '11/13/2014'),
(724, 1, '184.75.38.106', '11/13/2014'),
(725, 6, '173.252.110.112', '11/16/2014'),
(726, 1, '207.181.235.200', '11/21/2014'),
(727, 21, '66.220.156.117', '11/22/2014'),
(728, 1, '112.203.26.30', '11/22/2014'),
(729, 1, '54.191.244.235', '11/22/2014'),
(730, 1, '122.54.165.200', '11/24/2014'),
(731, 21, '66.249.65.91', '11/25/2014'),
(732, 21, '66.249.65.87', '11/28/2014'),
(733, 21, '66.249.65.91', '11/29/2014'),
(734, 11, '66.249.65.87', '12/01/2014'),
(735, 21, '66.249.65.83', '12/01/2014'),
(736, 21, '66.249.65.172', '12/03/2014'),
(737, 56, '138.75.166.156', '12/04/2014'),
(738, 56, '49.147.182.226', '12/04/2014'),
(739, 56, '49.147.161.255', '12/04/2014'),
(740, 11, '88.198.164.52', '12/04/2014'),
(741, 33, '88.198.164.52', '12/04/2014'),
(742, 1, '174.129.228.67', '12/05/2014'),
(743, 21, '66.249.65.164', '12/09/2014'),
(744, 54, '121.54.58.141', '12/09/2014'),
(745, 33, '180.76.6.57', '12/13/2014'),
(746, 1, '49.145.43.165', '12/15/2014'),
(747, 1, '149.126.9.48', '12/15/2014'),
(748, 1, '70.187.190.93', '12/15/2014'),
(749, 1, '150.70.97.96', '12/15/2014'),
(750, 1, '150.70.97.84', '12/15/2014'),
(751, 6, '121.54.34.99', '12/15/2014'),
(752, 21, '66.249.65.172', '12/16/2014'),
(753, 1, '88.5.114.186', '12/17/2014'),
(754, 1, '119.95.156.167', '12/18/2014'),
(755, 1, '112.209.251.113', '12/18/2014'),
(756, 21, '66.249.65.164', '12/30/2014'),
(757, 1, '14.203.117.66', '01/01/2015'),
(758, 1, '112.198.77.61', '01/02/2015'),
(759, 1, '120.21.56.242', '01/02/2015'),
(760, 1, '110.148.170.35', '01/02/2015'),
(761, 1, '180.232.124.74', '01/04/2015'),
(762, 1, '174.129.228.67', '01/05/2015'),
(763, 1, '112.209.141.137', '01/05/2015'),
(764, 1, '112.198.77.175', '01/06/2015'),
(765, 1, '74.6.254.86', '01/06/2015'),
(766, 21, '66.249.65.164', '01/06/2015'),
(767, 1, '180.191.97.6', '01/06/2015'),
(768, 1, '112.198.77.83', '01/06/2015'),
(769, 1, '72.219.245.73', '01/08/2015'),
(770, 1, '54.86.66.252', '01/08/2015'),
(771, 1, '180.232.124.74', '01/08/2015'),
(772, 1, '119.93.239.153', '01/08/2015'),
(773, 1, '180.232.124.74', '01/12/2015'),
(774, 1, '119.93.239.153', '01/12/2015'),
(775, 33, '180.76.5.67', '01/13/2015'),
(776, 1, '108.202.78.129', '01/13/2015'),
(777, 21, '66.249.65.172', '01/13/2015'),
(778, 54, '203.111.224.57', '01/13/2015'),
(779, 33, '180.76.6.130', '01/14/2015'),
(780, 1, '49.151.22.246', '01/14/2015'),
(781, 1, '112.209.91.51', '01/16/2015'),
(782, 1, '49.151.22.246', '01/16/2015'),
(783, 1, '49.151.22.246', '01/19/2015'),
(784, 21, '66.249.65.172', '01/20/2015'),
(785, 1, '103.225.38.2', '01/25/2015'),
(786, 1, '49.146.249.252', '01/26/2015'),
(787, 1, '49.151.34.196', '01/26/2015'),
(788, 1, '103.14.60.246', '01/26/2015'),
(789, 1, '5.42.226.154', '01/26/2015'),
(790, 1, '103.225.38.2', '01/27/2015'),
(791, 1, '180.232.124.75', '01/27/2015'),
(792, 21, '66.249.65.164', '01/28/2015'),
(793, 21, '66.249.65.172', '02/03/2015'),
(794, 1, '82.46.131.217', '02/05/2015'),
(795, 1, '103.14.60.88', '02/08/2015'),
(796, 1, '173.252.120.117', '02/08/2015'),
(797, 1, '121.97.194.54', '02/08/2015'),
(798, 39, '173.252.110.116', '02/09/2015'),
(799, 39, '182.18.225.52', '02/09/2015'),
(800, 21, '66.249.69.111', '02/10/2015'),
(801, 33, '66.249.69.95', '02/10/2015'),
(802, 1, '68.203.87.73', '02/13/2015'),
(803, 1, '103.225.38.2', '02/15/2015'),
(804, 1, '112.209.131.171', '02/15/2015'),
(805, 1, '125.212.121.84', '02/15/2015'),
(806, 1, '112.209.176.156', '02/16/2015'),
(807, 11, '49.147.108.93', '02/17/2015'),
(808, 1, '99.231.126.65', '02/19/2015'),
(809, 11, '162.210.196.97', '02/23/2015'),
(810, 33, '162.210.196.97', '02/23/2015'),
(811, 1, '99.17.221.172', '02/26/2015'),
(812, 1, '122.177.134.39', '02/26/2015'),
(813, 1, '122.53.114.250', '02/27/2015'),
(814, 1, '87.112.131.167', '02/27/2015'),
(815, 11, '66.249.65.164', '02/27/2015'),
(816, 1, '203.215.116.111', '03/02/2015'),
(817, 56, '203.215.117.197', '03/08/2015'),
(818, 1, '99.237.66.227', '03/10/2015'),
(819, 1, '49.144.235.35', '03/10/2015'),
(820, 1, '54.209.60.63', '03/10/2015'),
(821, 33, '180.76.5.169', '03/13/2015'),
(822, 1, '49.144.134.193', '03/15/2015'),
(823, 1, '190.7.217.98', '03/17/2015'),
(824, 11, '66.249.79.16', '03/23/2015'),
(825, 54, '115.64.9.87', '03/24/2015'),
(826, 54, '141.0.9.75', '03/28/2015'),
(827, 39, '182.18.225.1', '03/28/2015'),
(828, 54, '115.64.9.87', '03/29/2015'),
(829, 54, '121.54.44.136', '03/29/2015'),
(830, 54, '184.160.122.173', '04/01/2015'),
(831, 1, '1.32.26.165', '04/07/2015'),
(832, 1, '112.202.71.209', '04/07/2015'),
(833, 54, '24.162.198.239', '04/08/2015'),
(834, 54, '50.97.94.51', '04/08/2015'),
(835, 11, '104.255.67.238', '04/08/2015'),
(836, 33, '104.255.67.238', '04/08/2015'),
(837, 1, '174.129.228.67', '04/10/2015'),
(838, 54, '69.38.232.138', '04/12/2015'),
(839, 54, '46.188.121.245', '04/13/2015'),
(840, 54, '174.129.228.67', '04/14/2015'),
(841, 54, '107.72.162.83', '04/14/2015'),
(842, 33, '180.76.5.60', '04/15/2015'),
(843, 1, '5.42.226.154', '04/15/2015'),
(844, 33, '180.76.5.188', '04/16/2015'),
(845, 1, '80.230.83.70', '04/16/2015'),
(846, 1, '125.60.156.219', '04/18/2015'),
(847, 33, '66.249.65.164', '04/19/2015'),
(848, 1, '66.27.131.66', '04/19/2015'),
(849, 11, '72.252.9.47', '04/19/2015'),
(850, 1, '68.194.82.36', '04/20/2015'),
(851, 1, '175.136.35.255', '04/20/2015'),
(852, 33, '180.76.6.149', '04/22/2015'),
(853, 11, '144.76.137.226', '04/23/2015'),
(854, 33, '144.76.137.226', '04/23/2015'),
(855, 33, '202.90.134.2', '04/23/2015'),
(856, 33, '180.76.5.59', '04/24/2015'),
(857, 54, '74.115.234.2', '04/24/2015'),
(858, 54, '124.43.150.17', '04/26/2015'),
(859, 1, '184.75.38.106', '04/27/2015'),
(860, 1, '68.114.101.251', '04/27/2015'),
(861, 1, '80.230.123.94', '04/28/2015'),
(862, 54, '178.162.208.142', '04/29/2015'),
(863, 1, '184.75.38.106', '04/29/2015'),
(864, 54, '49.143.254.166', '04/29/2015'),
(865, 54, '70.210.77.35', '04/29/2015'),
(866, 33, '180.76.6.16', '04/29/2015'),
(867, 54, '108.218.20.221', '04/30/2015'),
(868, 33, '180.76.6.158', '04/30/2015'),
(869, 1, '24.108.83.151', '04/30/2015'),
(870, 1, '119.94.110.254', '04/30/2015'),
(871, 54, '68.227.18.240', '05/01/2015'),
(872, 1, '180.191.81.2', '05/01/2015'),
(873, 1, '180.190.50.160', '05/03/2015'),
(874, 11, '49.145.75.85', '05/06/2015'),
(875, 1, '178.41.247.205', '05/06/2015'),
(876, 54, '75.87.249.110', '05/06/2015'),
(877, 1, '173.168.174.142', '05/06/2015'),
(878, 1, '65.93.56.13', '05/07/2015'),
(879, 1, '220.244.68.48', '05/07/2015'),
(880, 1, '24.108.83.151', '05/08/2015'),
(881, 54, '124.155.244.174', '05/09/2015'),
(882, 1, '112.198.118.67', '05/11/2015'),
(883, 1, '122.54.71.15', '05/11/2015'),
(884, 1, '174.129.228.67', '05/11/2015'),
(885, 1, '75.80.230.117', '05/12/2015'),
(886, 1, '178.41.185.12', '05/13/2015'),
(887, 1, '114.108.203.178', '05/14/2015'),
(888, 54, '23.91.132.219', '05/14/2015'),
(889, 1, '108.206.173.130', '05/14/2015'),
(890, 54, '174.129.228.67', '05/15/2015'),
(891, 33, '66.249.65.244', '05/16/2015'),
(892, 54, '124.43.69.77', '05/17/2015'),
(893, 1, '139.218.192.237', '05/17/2015'),
(894, 54, '49.145.68.196', '05/17/2015'),
(895, 1, '49.146.194.100', '05/18/2015'),
(896, 21, '49.146.210.146', '05/18/2015'),
(897, 21, '98.138.142.9', '05/18/2015'),
(898, 21, '173.252.88.183', '05/18/2015'),
(899, 1, '75.157.7.224', '05/18/2015'),
(900, 1, '125.212.46.254', '05/18/2015'),
(901, 1, '49.145.48.101', '05/18/2015'),
(902, 1, '173.252.120.113', '05/19/2015'),
(903, 1, '49.145.48.101', '05/19/2015'),
(904, 1, '108.206.173.130', '05/19/2015'),
(905, 1, '174.7.126.168', '05/19/2015'),
(906, 1, '60.241.245.160', '05/21/2015'),
(907, 1, '122.54.71.15', '05/22/2015'),
(908, 1, '74.195.62.225', '05/22/2015'),
(909, 54, '59.165.9.2', '05/22/2015'),
(910, 54, '120.148.192.201', '05/22/2015'),
(911, 54, '59.165.9.2', '05/25/2015'),
(912, 54, '95.175.193.107', '05/27/2015'),
(913, 6, '37.141.20.80', '05/27/2015'),
(914, 11, '136.243.5.87', '05/28/2015'),
(915, 54, '27.145.253.177', '05/30/2015'),
(916, 33, '180.76.15.159', '05/31/2015'),
(917, 33, '180.76.15.157', '06/01/2015'),
(918, 1, '68.113.196.235', '06/01/2015'),
(919, 54, '74.115.234.2', '06/02/2015'),
(920, 1, '180.191.143.5', '06/03/2015'),
(921, 1, '104.45.18.178', '06/03/2015'),
(922, 1, '121.54.58.246', '06/03/2015'),
(923, 1, '121.54.122.198', '06/03/2015'),
(924, 1, '5.246.14.235', '06/03/2015'),
(925, 1, '31.13.102.117', '06/03/2015'),
(926, 1, '203.215.117.161', '06/03/2015'),
(927, 1, '180.191.138.253', '06/03/2015'),
(928, 1, '99.13.209.45', '06/03/2015'),
(929, 1, '23.101.172.224', '06/03/2015'),
(930, 1, '114.108.203.190', '06/03/2015'),
(931, 1, '175.156.49.6', '06/03/2015'),
(932, 54, '121.54.32.160', '06/03/2015'),
(933, 54, '121.54.32.162', '06/03/2015'),
(934, 1, '114.108.203.45', '06/04/2015'),
(935, 1, '180.191.143.5', '06/04/2015'),
(936, 54, '88.218.165.26', '06/05/2015'),
(937, 1, '180.191.143.5', '06/06/2015'),
(938, 1, '180.191.143.5', '06/08/2015'),
(939, 1, '182.18.226.109', '06/09/2015'),
(940, 1, '60.242.31.155', '06/09/2015'),
(941, 1, '182.18.226.109', '06/11/2015'),
(942, 1, '173.252.120.118', '06/11/2015'),
(943, 1, '49.147.189.135', '06/11/2015'),
(944, 21, '180.76.15.136', '06/13/2015'),
(945, 11, '180.76.15.139', '06/13/2015'),
(946, 1, '66.91.234.178', '06/13/2015'),
(947, 1, '203.111.224.94', '06/14/2015');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `preview` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `user_id`, `theme`, `status`, `permalink`, `key`, `username`, `preview`) VALUES
(1, 11, 'clean-modern', 'public', 'http://ressuu.me/cv/orillaneda.james', '11', 'orillaneda.james', '<iframe src="http://ressuu.me/cv/orillaneda.james" width="100%" height="100%" scrolling="no" style="border:0" ></iframe>\n                                '),
(2, 1, 'clean-modern', 'public', 'http://ressuu.me/cv/eduardodbarrete.1', '1', 'eduardodbarrete.1', '<iframe src="http://ressuu.me/cv/eduardodbarrete.1" width="100%" height="100%" scrolling="no" style="border:0" ></iframe>\r\n                                '),
(3, 6, 'default', 'public', 'http://ressuu.me/cv/eduardodbarrete.6', '6', 'eduardodbarrete.6', ''),
(4, 12, 'default', 'public', 'http://ressuu.me/cv/ali_mr2857.12', '12', 'ali_mr2857.12', ''),
(5, 13, 'clean-modern', 'public', 'http://ressuu.me/cv/blocparty_101.13', '13', 'blocparty_101.13', ''),
(6, 14, 'default', 'public', 'http://ressuu.me/cv/jbugahod.14', '14', 'jbugahod.14', ''),
(7, 15, 'default', 'private', 'http://ressuu.me/cv/nikkogeralderoy.15', '9bf31c7ff062936a96d3c8bd1f8f2ff3', 'nikkogeralderoy.15', ''),
(8, 16, 'default', 'private', 'http://ressuu.me/cv/rene113094.16', 'c74d97b01eae257e44aa9d5bade97baf', 'rene113094.16', ''),
(9, 17, 'default', 'public', 'http://ressuu.me/cv/miggysantos27.17', '17', 'miggysantos27.17', ''),
(10, 18, 'default', 'public', 'http://ressuu.me/cv/keynlubiano.18', '18', 'keynlubiano.18', ''),
(11, 19, 'default', 'public', 'http://ressuu.me/cv/ryan010488.19', '19', 'ryan010488.19', ''),
(12, 20, 'default', 'public', 'http://ressuu.me/cv/basagunli.20', '20', 'basagunli.20', ''),
(13, 21, 'default', 'public', 'http://ressuu.me/cv/dead060898', '21', 'dead060898', ''),
(14, 22, 'default', 'public', 'http://ressuu.me/cv/c.22', '22', 'c.22', ''),
(15, 23, 'default', 'public', 'http://ressuu.me/cv/l.23', '23', 'l.23', ''),
(16, 24, 'default', 'public', 'http://ressuu.me/cv/n.24', '24', 'n.24', ''),
(17, 25, 'default', 'public', 'http://ressuu.me/cv/johnphilip', '25', 'johnphilip', ''),
(18, 26, 'default', 'public', 'http://ressuu.me/cv/b.26', '26', 'b.26', ''),
(19, 27, 'default', 'private', 'http://ressuu.me/cv/ajvirrey.27', '02e74f10e0327ad868d138f2b4fdd6f0', 'ajvirrey.27', ''),
(20, 28, 'default', 'public', 'http://ressuu.me/cv/mackyzapanta.28', '28', 'mackyzapanta.28', ''),
(21, 29, 'default', 'public', 'http://ressuu.me/cv/mishylovesworking.29', '29', 'mishylovesworking.29', ''),
(22, 30, 'default', 'public', 'http://ressuu.me/cv/jun08abs.30', '30', 'jun08abs.30', ''),
(23, 31, 'default', 'private', 'http://ressuu.me/cv/jadcaralos.31', 'c16a5320fa475530d9583c34fd356ef5', 'jadcaralos.31', ''),
(24, 32, 'default', 'public', 'http://ressuu.me/cv/jbugahod.32', '32', 'jbugahod.32', ''),
(25, 33, 'default', 'public', 'http://ressuu.me/cv/stanger_lei', '33', 'stanger_lei', '<iframe src="http://ressuu.me/cv/stanger_lei" width="100%" height="100%" scrolling="no" style="border:0" ></iframe>\n                                '),
(26, 34, 'default', 'public', 'http://ressuu.me/cv/francx_133.34', '34', 'francx_133.34', ''),
(27, 35, 'default', 'public', 'http://ressuu.me/cv/sheila_jhay2x.35', '35', 'sheila_jhay2x.35', ''),
(28, 36, 'default', 'public', 'http://ressuu.me/cv/felixvillanueva46.36', '36', 'felixvillanueva46.36', ''),
(30, 38, 'default', 'public', 'http://ressuu.me/cv/tambungalandham.38', '38', 'tambungalandham.38', ''),
(31, 39, 'default', 'public', 'http://ressuu.me/cv/sheila_jhay2x.39', '39', 'sheila_jhay2x.39', ''),
(32, 40, 'default', 'public', 'http://ressuu.me/cv/jlumenda22.40', '40', 'jlumenda22.40', ''),
(33, 41, 'default', 'private', 'http://ressuu.me/cv/meliza4713', '3416a75f4cea9109507cacd8e2f2aefc', 'meliza4713', ''),
(34, 42, 'default', 'public', 'http://ressuu.me/cv/ranfeche.42', '42', 'ranfeche.42', ''),
(35, 43, 'default', 'public', 'http://ressuu.me/cv/ramee.43', '43', 'ramee.43', ''),
(38, 46, 'default', 'public', 'http://ressuu.me/cv/dheymond_heart.46', '46', 'dheymond_heart.46', ''),
(39, 47, 'default', 'public', 'http://ressuu.me/cv/jesterologer.47', '47', 'jesterologer.47', ''),
(40, 48, 'default', 'public', 'http://ressuu.me/cv/dheymond_heart.48', '48', 'dheymond_heart.48', ''),
(41, 49, 'default', 'public', 'http://ressuu.me/cv/kennymyl04.49', '49', 'kennymyl04.49', ''),
(42, 50, 'clean-modern', 'private', 'http://ressuu.me/cv/traquor.50', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'traquor.50', '<iframe src="http://ressuu.me/cv/traquor.50" width="100%" height="100%" scrolling="no" style="border:0" ></iframe>\n                                '),
(43, 51, 'default', 'public', 'http://ressuu.me/cv/chiqueylim.51', '51', 'chiqueylim.51', ''),
(44, 52, 'default', 'public', 'http://ressuu.me/cv/ronaldrosauro.52', '52', 'ronaldrosauro.52', ''),
(45, 53, 'default', 'public', 'http://ressuu.me/cv/theresecra.53', '53', 'theresecra.53', ''),
(46, 54, 'default', 'public', 'http://ressuu.me/cv/asiolutions.54', '54', 'asiolutions.54', '<iframe src="http://ressuu.me/cv/asiolutions.54" width="100%" height="100%" scrolling="no" style="border:0" ></iframe>\n                                '),
(47, 55, 'default', 'public', 'http://ressuu.me/cv/kennethramos', '55', 'kennethramos', '<iframe src="http://ressuu.me/cv/kennethramos" width="100%" height="100%" scrolling="no" style="border:0" ></iframe>\n                                '),
(48, 56, 'default', 'public', 'http://ressuu.me/cv/marktabal.56', '56', 'marktabal.56', ''),
(49, 57, 'default', 'public', 'http://ressuu.me/cv/nimi000089.57', '57', 'nimi000089.57', ''),
(50, 10, 'default', 'public', 'http://www.google.com.ph/?gfe_rd=cr&ei=SdMRV9zoJZDB4ALjqIGYBg&gws_rd=ssl', '1231231232131231', 'zhar@gmail.com', 'Embeded Code\r\n                                               \r\n                                               \r\n                                               \r\n                                               \r\n                                               \r\n                                               \r\n                                               \r\n                                               \r\n                                               ');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(100) NOT NULL,
  `skill_cat_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `skillname` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_cat_id`, `user_id`, `skillname`, `rate`, `description`) VALUES
(2, 0, 1, 'Photoshop', '5', ''),
(3, 0, 1, 'Illustrator', '5', ''),
(4, 0, 1, 'Indesign', '4', ''),
(6, 0, 1, 'LAMP', '5', ''),
(7, 0, 1, 'jQuery', '4', ''),
(8, 0, 1, 'Blender', '4', ''),
(9, 0, 1, 'Unity 3D', '4', ''),
(10, 0, 1, 'AWS EC2', '4', ''),
(11, 0, 1, 'Windows Azure', '5', ''),
(12, 0, 1, 'Sharepoint 2013', '5', ''),
(13, 0, 1, 'HTML/CSS', '5', ''),
(14, 0, 1, 'Corona SDK', '4', ''),
(15, 0, 1, 'iOS SDK', '4', ''),
(16, 0, 1, 'Android SDK', '4', ''),
(17, 0, 1, 'Infographics', '4', ''),
(18, 0, 14, 'Invention', '5', ''),
(19, 0, 6, 'PHP/MySQL', '5', ''),
(20, 0, 6, 'HTML/CSS', '5', ''),
(21, 0, 6, 'jQuery', '4', ''),
(22, 0, 6, 'Codeigniter', '5', ''),
(23, 0, 6, 'Wordpress', '5', ''),
(24, 0, 6, 'AWS EC2', '4', ''),
(25, 0, 6, 'Windows Azure', '4', ''),
(26, 0, 15, 'PHP/MySQL', '2', ''),
(27, 0, 15, 'HTML', '4', ''),
(28, 0, 15, 'CSS', '3', ''),
(29, 0, 15, 'Photo Editing', '3', ''),
(30, 0, 15, 'JavaScript', '3', ''),
(31, 0, 16, 'Programming', '3', ''),
(35, 0, 16, 'System Analyzation', '3', ''),
(36, 0, 16, 'Database Designing', '3', ''),
(37, 0, 6, 'Photoshop', '5', ''),
(38, 0, 6, 'Illustrator', '5', ''),
(39, 0, 6, 'Indesign', '5', ''),
(40, 0, 6, 'iOS SDK', '4', ''),
(41, 0, 21, 'Programming C++', '4', ''),
(42, 0, 21, 'OOP Java', '3', ''),
(43, 0, 21, 'HTML', '3', ''),
(44, 0, 21, 'Flowcharting', '5', ''),
(45, 0, 21, 'Data Flow Diagram', '4', ''),
(46, 0, 21, 'Database Management', '3', ''),
(47, 0, 21, 'Computer Hardware Servicing', '4', ''),
(48, 0, 21, 'Visual basic dot net', '4', ''),
(49, 0, 21, 'Algorithms', '3', ''),
(50, 0, 25, 'PHP', '3', ''),
(51, 0, 25, 'Android SDK', '4', ''),
(52, 0, 25, 'Corona SDK', '4.5', ''),
(53, 0, 25, 'Java', '4', ''),
(54, 0, 25, 'HTML/CSS', '3', ''),
(55, 0, 25, 'LUA', '4', ''),
(56, 0, 1, 'Ruby', '4', ''),
(57, 0, 1, 'Ruby on Rails', '3', ''),
(58, 0, 1, 'Python', '4', ''),
(59, 0, 1, 'Python Django', '3', ''),
(60, 0, 32, 'CSS / CSS3', '4.5', 'CSS/CSS3 coding.'),
(62, 0, 32, 'HTML / HTML5', '4.5', 'HTML development.'),
(63, 0, 32, 'Wordpress', '5', ''),
(64, 0, 32, 'Php', '4', ''),
(65, 0, 32, 'PSD to HTML', '5', ''),
(66, 0, 32, 'jQuery', '3.5', ''),
(67, 0, 32, 'javascript', '3.5', ''),
(68, 0, 32, 'Photoshop', '4', ''),
(69, 0, 33, 'XHTML/CSS', '5', '...'),
(70, 0, 11, 'Wordpress', '5', ''),
(71, 0, 11, 'Codeigniter', '4.5', ''),
(72, 0, 11, 'HTML/CSS', '4.5', ''),
(73, 0, 11, 'PHP/MySQL', '4.5', ''),
(74, 0, 11, 'jQuery/Ajax', '4.5', ''),
(75, 0, 36, 'Graphic Design', '5', 'I have strong skills in Photoshop, Illustrator\nI''m proficient in Logo Designing, flyers, Websites, Magazine Designs, Mobile Apps design. '),
(76, 0, 36, 'Web Design', '3', ''),
(77, 0, 36, 'Video Editing', '3', 'Using After Effects and Sony Vegas'),
(78, 0, 38, '.Net Programming', '3', ''),
(79, 0, 41, 'Graphic Design using Photoshop', '3', 'Basic Photoshop lay out and editing.'),
(80, 0, 12, 'Wordpress Theme Development', '5', ''),
(81, 0, 12, 'Slicing PSD to semantic HTML/CSS coding', '5', ''),
(82, 0, 12, 'Responsive HTML/Wordpress Theme', '5', 'Creating HTML or Wordpress Theme that is compatible with mobile devices.'),
(83, 0, 33, 'Responsive Layout Coding', '4', ''),
(84, 0, 33, 'jQuery', '4', '...'),
(85, 0, 33, 'PHP/MySQL', '4', ''),
(86, 0, 33, 'Joomla!', '4', ''),
(87, 0, 33, 'Photoshop', '5', ''),
(88, 0, 33, 'Wordpress', '5', ''),
(89, 0, 49, 'Adobe Photoshop', '3.5', 'Photo Editing\nPhoto Manipulation\nGraphics Design\nLayouting\nDigital Painting\nVector and Vexel\n'),
(90, 0, 49, 'Adobe After Effects', '2.5', 'Video Effects\nVideo Editing'),
(91, 0, 49, 'Adobe Premiere', '4', 'Video Editing'),
(92, 0, 49, 'Google Sketchup', '4', '3D modelling'),
(93, 0, 49, 'Unity 3D', '2', 'GUI and Scripting'),
(94, 0, 31, 'HTML', '4', ''),
(95, 0, 31, 'CSS', '3', ''),
(96, 0, 31, 'Javascript', '3', ''),
(97, 0, 31, 'Jquery', '3', ''),
(98, 0, 31, 'PHP', '4', ''),
(99, 0, 31, 'JAVA', '4', ''),
(100, 0, 31, 'Visual Basic .net Framework', '3', ''),
(101, 0, 55, 'SEO - Search Engine Optimization', '3', ''),
(102, 0, 55, 'Graphic Design', '3', 'Adobe Photoshop\nAdobe Indesign\nCorel Graphic Suite\nAutoCadd\n'),
(103, 0, 55, 'Digital Marketing', '3', ''),
(104, 0, 55, 'Google Analytics', '3', ''),
(105, 0, 55, 'Programming', '3', 'C++\nVisual Basic\n.Net\nProlog\nTurbo Pascal'),
(106, 0, 56, 'HTML5', '3', ''),
(107, 0, 56, 'JQuery', '3', ''),
(108, 0, 56, 'CSS3', '3', ''),
(109, 0, 56, 'PHP', '3', ''),
(110, 0, 56, 'Javascript', '3', ''),
(111, 0, 56, 'Wordpress', '3', ''),
(112, 0, 56, 'PSD Conversion', '4', ''),
(113, 0, 56, 'Responsive', '4', ''),
(114, 0, 56, 'Communication', '5', ''),
(115, 0, 54, 'GAME DEVELOPMENT CODING', '5', 'Can create game logic into live app  in specific time frame.'),
(116, 0, 54, 'Google Play, iTunes Stores Configuration', '5', 'Mobile integration on Mobile app ADS, Google Play, iTunes stores publishing.'),
(117, 0, 54, 'PHP/CodeIgniter and MySQL', '4', 'Having knowledge on web application as support programmer.'),
(118, 0, 1, 'Codeigniter', '3', 'Sample'),
(119, 0, 8, 'PHP/HTML', '3', '                                                Noooo\r\n                                                '),
(120, 0, 10, 'PHP/HTML', '5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis tempus enim, in facilisis turpis. Suspendisse nec laoreet erat. In eu aliquam libero. Curabitur luctus lacinia massa. Quisque ac luctus ligula. Nullam quis risus lobortis, aliquam orci sollicitudin, iaculis massa. Donec eget sagittis magna. Nulla tristique ultrices arcu a faucibus. Phasellus ac risus risus. Nunc eget ante eu nibh vulputate pellentesque. Nullam turpis nunc, facilisis sit amet leo efficitur, dictum facilisis urna. In id congue eros. Pellentesque commodo tristique ante non interdum. '),
(121, 0, 10, 'Webdesign & Programming', '2', 'Praesent faucibus fringilla nunc, ac laoreet turpis pulvinar nec. Aliquam erat volutpat. Sed a velit purus. Etiam mauris tellus, ullamcorper vitae tempor sit amet, condimentum id metus. Duis ut tristique nunc, vitae sollicitudin risus. Phasellus sodales eu turpis a faucibus. Mauris neque lectus, pretium ut imperdiet ut, pulvinar vitae turpis. Nullam luctus enim eu diam dignissim faucibus. Pellentesque aliquam id dolor quis venenatis');

-- --------------------------------------------------------

--
-- Table structure for table `skill_category`
--

CREATE TABLE `skill_category` (
  `id` int(100) NOT NULL,
  `skill_title` varchar(255) NOT NULL,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill_category`
--

INSERT INTO `skill_category` (`id`, `skill_title`, `user_id`) VALUES
(1, 'Graphics and media skills', 15),
(2, 'Designing', 15),
(3, 'Graphics and media skills', 11);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `name`, `email`, `date`, `status`) VALUES
(1, 'James Orillaneda', 'orillaneda.james@gmail.com', '1367059545', 'active'),
(2, 'Eduardo D Barrete', 'eduardodbarrete@gmail.com', '1367147986', 'active'),
(3, 'Eduardo D Barrete', 'eduardodbarrete@gmail.com', '1367147989', 'active'),
(4, 'Eduardo D Barrete', 'eduardodbarrete@gmail.com', '1367147991', 'active'),
(5, 'gilbeysalana', 'gilbeysalana@gmail.com', '1369139936', 'active'),
(6, 'gilbeysalana', 'gilbeysalana@gmail.com', '1369139943', 'active'),
(7, 'gilbeysalana', 'gilbeysalana@gmail.com', '1369139945', 'active'),
(8, 'jojo enok lidasan', 'jojo_lidasan@yahoo.com', '1370317553', 'active'),
(9, 'jojo enok lidasan', 'jojo_lidasan@yahoo.com', '1370317553', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `temp_users`
--

CREATE TABLE `temp_users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bday` varchar(255) NOT NULL,
  `key` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_users`
--

INSERT INTO `temp_users` (`id`, `email`, `password`, `name`, `bday`, `key`) VALUES
(41, 'viennarzc@gmail.com', '7c1eb6ffb034c6de93d7a6e8d9c1dd3c', 'Viennarz Curtiz Curtiz', '636321600', 'b500a18ac076ca50eb1360fa51647fb7'),
(42, 'jaycarl.trinidad@yahoo.com.ph', 'c10344fc7105c7a5dc828409290f2fe0', 'Jay Carl Trinidad', '0', '7d1582e4f9e7c3af86f8e719d8ef9a0a'),
(49, 'Morched_211315@yahoo.com', 'bbd0e25a7c8c3f2e9fdc0311add8da94', 'Morched Hadji Abdulkahar', '730998000', 'fc4c0e5555534975da03faeb99729da5'),
(50, 'Jcpenanueva@yahoo.com', 'd5cfbc9179a7f4e999a86d20bd0ef465', 'Jan Celex Peñanueva', '662720400', 'f6398f703b3c40045d763b1430e4d763'),
(53, 'Omarfaisal78@yahoo.com', '25d55ad283aa400af464c76d713c07ad', 'Faisal Omar', '957078000', 'a8aba4e08219795d385b9ae1b3281991'),
(55, 'gilbeysalana@gmail.com', 'b2d99aa4ed3be358b2f60761e6928ede', 'gilbey salana', '560102400', '78d22dcc542eeb110596dfb95fe01197'),
(56, 'hjerpe_90@hotmail.com', '36f17c3939ac3e7b2fc9396fa8e953ea', 'Derp Master', '410230800', '111d27cea5ff2869a9573c17e598bddf'),
(58, 'jojo_lidasan@yahoo.com', 'a2c69b11f073b29ec8efc6b27af590c9', 'jojo lidasan', '625924800', 'cf4d0f65d651be41845c989042c5a2c4'),
(59, 'sheilamae.bag_ao@yahoo.com', '4055d8adf7a44ece1ba487178a379acb', 'Sheila bag-ao', '602380800', '5df599de767c2368b4b1a0fd34a16298');

-- --------------------------------------------------------

--
-- Table structure for table `test_email`
--

CREATE TABLE `test_email` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_email`
--

INSERT INTO `test_email` (`id`, `name`, `email`) VALUES
(1, 'James Orillaneda', 'orillaneda.james@gmail.com'),
(2, 'James Orillaneda', 'dheymond_heart@yahoo.com'),
(3, 'Eduardo Barrete', 'eduardodbarrete@yahoo.com'),
(4, 'Eduardo Barrete', 'eduardobarrete@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`) VALUES
(1, 'default'),
(3, 'clean-modern');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Eduardos D. Barrete Jr.', 'eduardodbarrete@yahoo.com', '$2y$10$MB2Hdm.LYTrcjgxf9SSt9e8i8eMVZPpErA9Fv7Z57yz1pCXeXK5Pq', 'AeBRyThxg9wRqZMNSREpFAlU9he3cJkx9MFc4g05EgYnsfkkYW3XUSPqJcbq', '2016-04-05 01:54:15', '2016-04-15 21:56:10'),
(2, 'sample', 'sample@sample.gmail.com', '$2y$10$EY.qxWiZjcZyGxJPuDLtXOObaIWU2kMISA9nA.ZwAwuAinUIgHUgK', '0K7NortdkFMgkLy4eBoJQromjhBSUda0pear6r6DoBlazpLZqPD3NQSpOYsI', '2016-04-07 00:46:39', '2016-04-07 00:48:45'),
(3, 'admin', 'admin@gmail.com', '$2y$10$h42Lwuxi2nPchk9DlwMnQ.eUBO5vh8OD2cZwEuo1i7HRh/1P4dSsm', '1ouqoeIEC64ssNWjJWaivA2bjKwQtAAXEStEVb9SO2wvgIbxLPOyA8MdaDig', '2016-04-07 19:29:59', '2016-04-10 18:24:42'),
(4, 'test', 'test@test.com', '$2y$10$WV7W.6cjSft5.L4u3tVzLOXy9g7ipmfkaulmCxxSJDmDImWbShuru', 'sj7QKkZgPP5X9GoBiha8Pczvcx8xz3AC0vjDqVG8lTDHa2Lb7czWQhaezBsn', '2016-04-07 19:43:49', '2016-04-07 19:44:10'),
(5, 'orland', 'ocojcastro@gmail.com', '$2y$10$71n7n1V4gUn8S6aLdjFsYuT1mGZNmEO38uiwobLAtT9HzfF6GKX3.', 'yK0d3ePRs6vg77dCEB25rG9xXY0SkARY8Vi5XEF4i7NBw8b1d5tpfqbUr8Ok', '2016-04-07 19:59:26', '2016-04-07 19:59:29'),
(6, 'Orland Jae Castro', 'orland_castro@yahoo.com', '$2y$10$I0aj0ilQaOKXaAoZb1br6uneZTiSAeDIicujqvROA1pOj2CQ5Zzn6', 'aI7cTg2FEP3bydfOyLTDkNRZ5E7YsicNDbYf3t9KoUvmjjjwA98y8mA6KMPy', '2016-04-13 21:34:12', '2016-04-15 18:11:17'),
(7, 'Orland Castro', 'orland_castro1@yahoo.com', '$2y$10$UELm4mzz2YnYfzgcVtMAWuu2x6GA8JP7YRhnXXTel6IUdho/SOS8u', '8KJuLZGbq7cBDoWJaSOUZG3vt5S2hDGhhc9oEEdiaqff0CcmNSUN0Ezleu5s', '2016-04-13 21:40:29', '2016-04-13 21:42:24'),
(8, 'Orland Castro2', 'orland_castro2@yahoo.com', '$2y$10$Opr42Sr08cRc/6Nkk.1VW.YwxO9dZnyrB6EH3.VaETG7PK2xDzAfO', 'VaVt2tpJwI623jSBYu2kp28VFn3TW43fGg4fCPTYRPFDlB6MvjY55AIjBjzN', '2016-04-13 21:56:42', '2016-04-14 00:34:04'),
(9, 'Orland Castro3', 'orland_castro3@yahoo.com', '$2y$10$M5NOmSC/UL9Y4yDoECzPauJHfQocYnB0bgxpiyKfU1NYqIw1vltda', 'TAmXL8Y4xjeGo87HX4OuYWt1qLTVqxowcNzmABWVlJZBq6EBE6EuhDnIc0Pv', '2016-04-13 22:01:01', '2016-04-15 18:21:44'),
(10, 'Zhar', 'zhar@gmail.com', '$2y$10$XmxFD5k.enexBwwC1vzCFOO0UG6T68D9TmzWhm2ZbyxtQ45qKjny6', 'H2dmCTej7YHPjZ7I7A9lt1zHeZyRIcQbIDxYriAFOZAAXwBtVGjwW2QxwyzJ', '2016-04-13 22:46:02', '2016-04-19 20:52:50'),
(11, 'Daryl Ric Lanaban', 'dars@gmail.com', '$2y$10$m7K/UsIwe3wTVN83l2Le6.VfVaP6jhFKzfDnpaykUgUcnsWjBY2W6', 'vwUBQdcr4NVJ3u9b1nH27CwacNOadMXsepxpdHeijOvO3LubvPuWnp5aI2OE', '2016-04-14 00:34:32', '2016-04-14 23:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `work_experience`
--

CREATE TABLE `work_experience` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_experience`
--

INSERT INTO `work_experience` (`id`, `user_id`, `company_name`, `job_title`, `start_date`, `end_date`, `description`) VALUES
(1, 1, 'Systems Technology Institute STI', 'Computer Instructor (PT)', 'June 2006 ', 'March 2007', 'I''ve been teaching the following subjects: System Analysis and Design, Web Development, Software Engineering, Multimedia Presentation, Database Management System, Hardware and Software Installation, Hardware and Software Interfacing, Information Technology, Java, VB 6'),
(5, 11, 'Heuristic Design Studio', 'Web Programmer', 'April 2011', 'July 2013', 'Build Websites using Wordpress Platform or Object Oriented Programming Language like Codeigniter'),
(6, 14, 'No Solutions Incorporated', 'Chief Senior Executive Engineer Technology', 'Since Birth', 'Present', 'I am the only employer and employee here'),
(7, 6, 'Ebjr web prints mobile', 'Founder/Creative Director', 'June 2010', 'Present', 'Directing the creative functionalities of concept development, collaborating with team members, creating work environment, meeting work expectations, and discussing team goals and achievements. Ensuring the effective maintenance of creative functionalities, developing the creative products as per the market standards, maintaining the quality of creative work projects, and operating the designing firm in a profitable manner. Providing strategic solutions to the company and clients considering their market stakes involved in creating brand reputation for their organization'),
(9, 6, 'Heuristic Studio', 'Webmaster', 'August 2007', 'May 2010', 'Creates and manages the information content (words and pictures) and organization of a Web site. Manages the computer server and technical programming aspects of a Web site.'),
(10, 6, 'Systems Technology Institute (STI)', 'Computer Instructor', 'June 2006', 'June 2007', 'I have been teaching the following subjects:\nSystem Analysis and Design, Web Development,\nSoftware Engineering, Multimedia Presentation,\nDatabase Management System, Hardware and\nSoftware Installation, Hardware and Software\nInterfacing, Information Technology, Java, VB 6'),
(11, 17, 'Assumption College of Davao', 'IT Instructor', 'June 2006', 'Present', 'Handles mostly programming languages subject like C/C++, Visual Basic, Java, Visual Studio.NET, and web development tools like HTML/CSS, PHP/MySQL, Wordpress, Joomla, PSD to XHTML.\n\nI also handled some gen. ed. and computer concepts like Operating System, Theory of Automata, Linear Algebra, Discrete Mathematics, Probability and Statistics, College Algebra, Plane and Spherical Trigonometry, College Physics 1 and 2.'),
(12, 17, 'Assumption Technical and Vocational Institute', 'TechVoc Instructor', 'June 2007', 'Present', 'Programming NC IV Trainor\nOJT Coordinator (June 2010 - March 2012)\nICT Coordinator (June 2011 - March 2012)\nNTTC Level 1'),
(13, 18, 'Global Connect eSolutions', 'MIS Desktop Support', 'March 2011', 'Present', ' Responsibilities:\n•	Performed graphic designing with the company’s advertisement materials and also the company’s website.\n•	Assisted in troubleshooting user problems relating to Operating System issues (\nWin XP, Vista, Windows 7 and Linux/Unix Distros), Network Connectivity, TCP/IP    configuration, upgrades, MS Office products and Internet connectivity.\n\n•	Assembled and installed a wide array of computer systems, workstations, and peripheral hardware.\nAssisted in troubleshooting user problems relating to Operating System issues ( Win XP, Vista, Windows 7 and Linux ), Network Connectivity, TCP/IP configuration,   upgrades, MS Office products and Internet connectivity.\n•	Performed upgrades, installation of software and drivers and essential desktop troubleshooting. \n•	Assisted hardware troubleshooting and local system upgrades.\n'),
(14, 21, 'Computer Aided Design and Information Technology Institute, Inc. (CAD.IT)', 'IT Instructor', 'June 2012', '', 'Teaching the following Subjects Like Console Programming  C++, Object Oriented Programming Java, Web Dev HTML, SAD - System Analysis and Design, Logic Formulation and Algorithms, Computer Internet 1 and 2. '),
(15, 25, '8 App studio', 'Project Manager/Mobile Application Developer', 'October 2012', 'Present', ''),
(16, 13, 'Digital Pixmaker', 'Graphic Artist / Operator', 'March 2009', 'June 2010', ''),
(17, 1, 'Heuristic Studio', 'Senior Web Designer/Developer', 'April 2007', 'June 2009', 'Lead designer and developer for web sites and promotional media for small businesses. Utilized contemporary design to create concise web sites for specific client needs. Site creation included use of Asp.Net, C#, CSS, HTML, JavaScript, MySQL, Adobe Flash, Swish Max, PHP, online payment features, and form processing. Created and assembled web graphics, including logos and advertisements. Designed email blasts and newsletters for site launches and event announcements. '),
(18, 1, 'MLS Design and Concepts', 'Lead Technical Analyst, I/T Specialist', 'August 2006', 'April 2007', 'Primary technical contact for critical issues for company Intranet application used for opportunity management and team collaboration. Tasks included resolving technical failures in a timely manner, automating application monitoring tools, and providing technical expertise for application upgrades. Prepared technical training and process documentation for team, to aid with day-to-day support issues.\r\n'),
(19, 1, 'Freelance', 'Webmaster', '2009', 'Present', 'I''ve been teaching the following subjects: System Analysis and Design, Web Development, Software Engineering, Multimedia Presentation, Database Management System, Hardware and Software Installation, Hardware and Software Interfacing, Information Technology, Java, VB 6'),
(20, 32, 'Ebjr Web and Prints', 'Web Developer', 'November 2012', 'Present', 'My responsibilities:\n\n- PSD to HTML conversion\n- PSD to Wordpress conversion\n- Wordpress Development\n- Web development\n- Web management\n- Web maintenance\n- Web administration'),
(21, 33, 'EBJR Web & Prints', 'Web Developer / Programmer', 'March 2010', 'Present', '..'),
(22, 34, 'Davao Mediquest Hospital Incorporated', 'Registered Nurse', 'August 5, 2011', 'August 31, 2011', 'Rotated in Emergency Department, Internal Medicine, Pediatrics, Operating Room, and Delivery Room; providing nursing care to a variety of patients in each area.'),
(23, 34, '', 'Southern Philippines Medical Center', 'December 2011', 'December 2012', 'Medical Communicable Pavillion - (December 2011 - May 2012) - Provided basic to advanced nursing care to patients with infectious diseases; effectively implementing doctors'' orders, teaching patients about disease processes, treatment plans and medications\n\nPay Ward 1 ( June - July 2012) - Managed private patients with a wide expanse of conditions ranging from internal medicine, obstetric, pediatric, surgical and orthopedic cases\n\nIntensive Care Unit 1 ( August - September 2012) - An eight-bed unit catering to patients with conditions needing critical care interventions with co morbid infectious diseases; managed patients with high-risk pneumonia, acute and chronic renal failure, etc.\n\nCoronary Care Unit (October - December 2012) - A six-bed unit catering to patients with cardiac conditions requiring intensive care management; worked with patients with myocardial infarction, valvular heart diseases, congestive heart failure, patients for coronary angiogram and open heart surgery\n\n'),
(24, 36, 'Philippine Global Outsourcing', 'iOS Design/Android Dev.(OJT)', 'Dec. 21', 'Mar. 8', ''),
(25, 38, 'Officeof the Chief of Staff - ARMM', 'OJT Trainee (Programmer)', 'April 2012', 'June 2012', 'Document Management System created for the office during our OJT.'),
(26, 38, 'Notre Dame University', 'Programmer', 'November 2011', 'December 2011', 'Computerized Judging System During Notre Dame Festival 2011.'),
(27, 12, 'Ebjr & Heuristic Studio', 'Web Developer/Wordpress', 'November 12, 2012', 'April 30, 2013', 'Wordpress Theme development and maintenance. Responsive Wordpress Theme development.'),
(28, 12, 'com1usa.com', 'HTML/CSS Coder', 'December 04, 2011', 'August 05, 2013', 'Slicing PSD to semantic HTML/CSS Coding. Responsive HTML website.'),
(29, 17, 'TechFactors Inc.', 'IT Trainor', 'March 2011', 'Present', 'Training teachers on how to teach the TFI products and how to use the online exercises. Handles also the advancement training of some old clients'),
(30, 17, 'Cubepixels Laboratory', 'IT Trainor (On Call)', 'March 2013', 'Present', 'In-charge of the PHP/MySQL training of students. '),
(31, 17, 'Philippine College of Technology', 'IT Instructor (Part time)', 'May 2013', 'Present', ''),
(32, 17, 'Interface Computer College', 'IT Instructor', 'June 2003', 'April 2006', 'Handles mostly IT Subjects especially programming subjects. Handles the UNITS club.'),
(33, 48, 'Heuristic Design Studio', 'Web Programmer', '2011', 'Present', ''),
(34, 13, 'EBJR Web & Prints', 'Graphics Designer', '2010', 'Present', ''),
(35, 31, 'Segworks Technologies Corporation', 'Software Developer', 'June 5, 2013', 'Present', 'I worked with a team that developed software solutions for various local companies in the Philippines.'),
(36, 52, 'DTI-Overlan Transport Corp', 'System Programmer', 'march 2013', 'present', ''),
(37, 54, '8 App Studio and Mex App Studio', 'Mobile App Developer', 'November 21, 2012', 'December 15, 2014', 'Creating game apps and backup developer for business apps using Corona SDK IDE for cross-platform development(Android/iOS) and LUA Programming Language. Can integrates 3rd party api for Ads Revenue on Chartboost, Revmob, Tap for Tap and Flurry for app tracking.'),
(38, 55, 'SYSGEN - Systems Generators Philippines Inc.', 'SEO Specialist', 'July 8, 2013', 'Present', 'Plans and execute all digital marketing campaigns\nGroups and classifies the website target keywords\nAnalyses web content and the website as a whole\nMonitors updated trends on SEO best practices and techniques\nPlans and leads Social Media Campaigns for website promotion\nReports campaign issues\nBlog Writing and Content Creator.\nSupport and assist the Sourcing Team Lead in daily sourcing activities'),
(39, 56, 'EBJR', 'Web Developer', 'July 2014', 'Present', 'Web Developer, Wordpress Development, Customization, PSD Conversion, Responsive'),
(48, 1, 'Vivamus dignissim', 'Integer mi ipsum', 'January 20, 2010', 'December 20, 2010', 'In at orci dictum, iaculis dolor eu, laoreet odio. Aliquam erat volutpat. Curabitur vitae ex nec enim pharetra ornare sed ac augue. Nulla semper nisi vel ex volutpat, nec placerat arcu accumsan. Nam eleifend velit at ex molestie accumsan. Aenean nec iaculis orci. Sed vehicula nisi ex, in convallis nunc condimentum non.'),
(49, 1, 'Durian Studio', 'Master in System Information', 'March 2010', 'December 2010', 'Ive been teaching the following subjects: System Analysis and Design, Web Development, Software Engineering, Multimedia Presentation, Database Management System, Hardware and Software Installation, Hardware and Software Interfacing, Information Technology, Java, VB 6'),
(50, 8, 'Durian Studio', 'Web Master', 'March 2010', 'Marach 2015', 'Hellow World\r\nHellow World'),
(51, 10, 'Huawei', 'Android Developer', 'March 2010', 'December 2015', 'Morbi nec eleifend tellus. Duis et laoreet orci. Donec mattis vehicula egestas. Donec pulvinar nunc quis vehicula faucibus. Donec non sodales dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(52, 10, 'Toshiba', 'Layout Artist', 'January 2010', 'Marach 2015', 'Morbi nec eleifend tellus. Duis et laoreet orci. Donec mattis vehicula egestas. Donec pulvinar nunc quis vehicula faucibus. Donec non sodales dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `connection_requests`
--
ALTER TABLE `connection_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_user_id`
--
ALTER TABLE `fb_user_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `latest_news`
--
ALTER TABLE `latest_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_feeds`
--
ALTER TABLE `news_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_cat`
--
ALTER TABLE `portfolio_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_views`
--
ALTER TABLE `profile_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_category`
--
ALTER TABLE `skill_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_users`
--
ALTER TABLE `temp_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_email`
--
ALTER TABLE `test_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `connection_requests`
--
ALTER TABLE `connection_requests`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `fb_user_id`
--
ALTER TABLE `fb_user_id`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `latest_news`
--
ALTER TABLE `latest_news`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `news_feeds`
--
ALTER TABLE `news_feeds`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=748;
--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `portfolio_cat`
--
ALTER TABLE `portfolio_cat`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `profile_views`
--
ALTER TABLE `profile_views`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=948;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `skill_category`
--
ALTER TABLE `skill_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `temp_users`
--
ALTER TABLE `temp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `test_email`
--
ALTER TABLE `test_email`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
