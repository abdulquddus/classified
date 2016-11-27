-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2016 at 03:13 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtuald_classified`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(112) NOT NULL,
  `auth_key` varchar(32) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(112) NOT NULL,
  `sms_verify` int(11) NOT NULL,
  `state` int(112) NOT NULL,
  `status` smallint(6) DEFAULT '10',
  `role` smallint(11) NOT NULL,
  `is_company` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `name`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `mobile`, `sms_verify`, `state`, `status`, `role`, `is_company`, `created_at`, `updated_at`) VALUES
(1, 'pm@webexdesigners.com', '', 'gBH_Zf8YMObcD2MlGxm82qJFYGhtYcr9', '$2y$13$rH4EwEmf..t6D/7D0gZWm.Y7LB6YawxCjHKey8sFKccp4.DjeBmXy', 'hp9hthVPzJqtrkdaGWn3Ul3b8IlspMds_1443942536', 'pm@webexdesigners.com', '', 0, 0, 10, 30, 0, '2015-09-05 23:53:02', '0000-00-00 00:00:00'),
(47, 'imran', '', 'jHbAeJAK7JXwu45J19gieZULPqUt3Kk5', '$2y$13$zSkZV7anMXfBMPUtRuUZceLEIPE.j.nMFTvZqaQmpFigRbus8qzym', NULL, 'imran@test.com', '', 0, 0, 10, 10, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'jawad', '', 'XkqyDJZlFLDA_QrwO4IhT83Dk5LC2Dob', '$2y$13$ufveGBJpaL/P6Ila5v8.RuS5QYDaIY66.lQr5n2QKvKFymd6qYKz.', NULL, 'jawad@test.com', '', 0, 0, 10, 20, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'info@virtual-developers.com', '', 'Ddwgyx9QLvamgpMle6UYc6Qm21ynXK2d', '$2y$13$CDeG0OUrZKqd9EPiO/HwYuMxywFgCZQ.97b/rR0R9nqb.CNusvwdO', NULL, 'info@virtual-developers.com', '', 0, 0, 10, 30, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ads_credit`
--

CREATE TABLE `ads_credit` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `credit` int(100) NOT NULL,
  `created` date NOT NULL,
  `status` enum('Active','De-active') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads_credit`
--

INSERT INTO `ads_credit` (`id`, `user_id`, `credit`, `created`, `status`) VALUES
(42, 0, 12, '0000-00-00', 'Active'),
(43, 42, 12, '0000-00-00', 'Active'),
(44, 42, 12, '0000-00-00', 'Active'),
(45, 42, 12, '2015-12-29', 'Active'),
(46, 42, 100, '2015-12-29', 'Active'),
(47, 48, 123, '2015-12-30', 'Active'),
(48, 48, 111, '2015-12-30', 'Active'),
(49, 48, 111, '2015-12-30', 'Active'),
(50, 62, 10, '2016-04-02', 'Active'),
(51, 62, 10, '2016-04-02', 'Active'),
(52, 62, 10, '2016-04-02', 'Active'),
(53, 62, 10, '2016-04-02', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `category_id` int(11) NOT NULL,
  `advertise_title` varchar(120) NOT NULL,
  `photo_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `condition` varchar(12) NOT NULL,
  `type` int(11) NOT NULL,
  `contact_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile_number` int(10) NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `address` text NOT NULL,
  `po_id` int(11) NOT NULL,
  `v_code` int(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `ad_status` int(11) NOT NULL DEFAULT '1',
  `views` int(11) NOT NULL,
  `sold_status` int(11) NOT NULL,
  `com_url` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `user_id`, `category_id`, `advertise_title`, `photo_name`, `description`, `price`, `condition`, `type`, `contact_name`, `email`, `mobile_number`, `state_id`, `city_id`, `address`, `po_id`, `v_code`, `status`, `created_date`, `ad_status`, `views`, `sold_status`, `com_url`, `link`) VALUES
(7, 62, 20, 'TV', '', 'test', 5000, '', 0, 'Jawad K.', 'jawadkhan.it@gmail.com', 2147483647, 18, 430, 'uhkhkjhkjh', 0, 1, 1, '2016-02-21 04:29:55', 1, 0, 0, '', ''),
(6, 62, 62, 'MY', '', 'test test', 10000, '', 0, 'khan', 'jawadkhan.it@gmail.com', 2147483647, 2, 27, 'test', 0, 1, 2, '0000-00-00 00:00:00', 1, 0, 0, '', ''),
(5, 62, 28, 'asd', '', 'adsa', 233, '', 0, 'taha', 'jawadkhan.it@gmail.com', 2147483647, 13, 321, 'asdasd', 0, 1, 2, '2016-01-13 19:29:55', 1, 0, 0, '', ''),
(4, 62, 28, 'my ad', '', 'kljkl', 123, '', 2, 'taha', 'jawadkhan.it@gmail.com', 2147483647, 12, 303, 'adsad', 0, 1, 1, '2016-01-24 19:29:55', 1, 0, 0, '', ''),
(3, 0, 148, 'Imran''s Ads', '', 'test', 10000, '', 2, 'Jawad K.', '', 2147483647, 99, 5, 'test test test', 0, 1, 1, '2016-01-01 04:29:55', 1, 0, 0, '', ''),
(1, 0, 85, 'my ad', '', 'disk', 1234, '', 2, 'khan', '', 98765, 99, 5, 'asd', 0, 1, 1, '2016-02-20 06:29:55', 1, 0, 0, '', ''),
(2, 0, 66, 'my ad', '', 'test test', 10000, '', 2, 'Jawad K.', '', 2147483647, 99, 5, '', 0, 1, 1, '2015-10-07 19:17:55', 1, 0, 0, '', ''),
(13, 62, 79, 'date', '', 'pakistan', 123, '', 2, 'khan', 'jawadkhan.it@gmail.com', 2147483647, 12, 306, 'kljaklj', 0, 1, 1, '2016-02-22 09:48:40', 1, 0, 0, '', ''),
(9, 62, 27, 'my', '', '123', 1223, '', 2, 'khan', 'jawadkhan.it@gmail.com', 2147483647, 5, 95, 'asdasdasd', 0, 1, 1, '2016-01-25 09:10:26', 1, 0, 0, '', ''),
(10, 63, 27, 'one', '', 'Descriptions', 1000, '', 2, 'Muhammad Taha Khan', 'jawadkhan.it@gmail.com', 2147483647, 1, 2, 'This is my address ', 0, 1, 1, '2016-02-02 05:46:37', 1, 2, 0, '', ''),
(11, 62, 28, 'Honda civic', '', 'I want to sell my new honda civic', 1000000, '', 2, 'Muhammad Taha Khan', 'jawadkhan.it@gmail.com', 2147483647, 11, 267, 'North karachi pakistan', 0, 1, 1, '2016-02-21 05:52:54', 1, 4, 0, '', ''),
(12, 62, 79, 'toyota Car 2', '', 'lkjsflksjkl', 1000, '', 2, 'Kahn', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, ' this is my address', 0, 1, 2, '2016-02-15 09:12:12', 1, 0, 0, '', ''),
(14, 62, 79, 'aq', '', 'lskfj;klasjfknsdf skfbks fns flb', 123, '', 2, 'kahn', 'jawadkhan.it@gmail.com', 2147483647, 5, 90, ',snfjasifg', 0, 7618, 1, '2016-02-22 11:41:55', 1, 0, 0, '', ''),
(15, 62, 28, 'taha', '', 'klsfjkhsj', 123, '', 2, 'TAha', 'jawadkhan.it@gmail.com', 2147483647, 16, 400, 'lkjhk', 0, 4660, 0, '2016-02-23 06:45:18', 1, 0, 0, '', ''),
(16, 62, 117, 'taha2', '', 'lksjfklsjdfl', 987, 'old', 2, 'kij', 'jawadkhan.it@gmail.com', 2147483647, 6, 109, 'nmjkhj', 0, 1, 1, '2016-02-23 06:47:01', 1, 0, 0, '', ''),
(17, 62, 78, 'condition', '', 'tahaknkj', 123, 'new', 2, 'khan', 'jawadkhan.it@gmail.com', 2147483647, 2, 28, 'kljhfjksh', 0, 1, 1, '2016-02-24 06:18:55', 1, 0, 0, '', ''),
(18, 62, 29, 'company', '', 'Copnay ad description', 123, 'new', 1, 'Kahan', 'jawadkhan.it@gmail.com', 2147483647, 6, 102, 'Addresss', 0, 1, 1, '2016-02-26 05:29:55', 1, 0, 0, '', ''),
(19, 62, 117, 'tow', '', 'kahn', 123, 'used', 2, 'khan', 'jawadkhan.it@gmail.com', 2147483647, 5, 86, 'khan', 0, 1, 1, '2016-02-27 19:16:08', 1, 1, 0, '', ''),
(20, 62, 148, 'ad', '', 'description', 1200, 'used', 2, 'Taha', 'jawadkhan.it@gmail.com', 2147483647, 3, 42, 'Address', 0, 1, 1, '2016-03-07 07:18:24', 0, 0, 0, '', ''),
(21, 62, 82, '2013 Harley-Davidson Super Glide DYNA CUSTOM', '', '2013 Harley-Davidson Super Glide DYNA CUSTOM, The Harley-Davidson Dyna Super Glide Custom is full of chrome from handlebars to the rocker covers, and even the wheels with the 110th Anniversary Edition. The Twin Cam 96 engine and the Six-Speed Cruise Drive transmission will make the ride more enjoyable especially with the strong driveline. Easy to maintain with very little routine maintenance you will ride more without having to worry about the upkeep. $9,750.00 2516212318 ', 9750, 'new', 2, 'Jawad Khan', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, '', 0, 1, 0, '2016-04-18 12:29:46', 1, 0, 0, '', ''),
(22, 62, 82, '2000 Indian Chief VINTAGE', '', '2000 Iconic Indian Chief. Super clean, low miles with thoughtful chrome customizations to finish the look. This bike is a one of a kind head-turner powered by S&S, with performance enhancements to lean into the thunder if this suits you riding style. All manuals, and 2 boxes of spare parts are included. A great running bike that''s hard to find, and impossible to beat. (727) 424-4489', 10299, 'used', 2, 'Jawad Khan', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, '', 0, 1, 0, '2016-04-18 12:36:46', 1, 0, 0, '', ''),
(23, 62, 82, '2000 Indian Chief VINTAGE', '', '2000 Iconic Indian Chief. Super clean, low miles with thoughtful chrome customizations to finish the look. This bike is a one of a kind head-turner powered by S&S, with performance enhancements to lean into the thunder if this suits you riding style. All manuals, and 2 boxes of spare parts are included. A great running bike that''s hard to find, and impossible to beat. (727) 424-4489 ', 10299, 'used', 2, 'jawad khan', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, '', 0, 1, 0, '2016-04-18 12:53:17', 1, 0, 0, '', ''),
(24, 62, 118, 'title', '', 'asdfghjkl;', 12345, 'new', 2, 'name', 'jawadkhan.it@gmail.com', 2147483647, 9, 418, 'lkjhgfdd', 0, 2146, 0, '2016-04-19 08:14:02', 1, 0, 0, '', ''),
(25, 62, 122, 'title2', '', 'qwertyuiop[ASDFGHZXCVBNM', 1234, 'used', 2, 'NAME', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'EDRTYU', 0, 7973, 0, '2016-04-19 08:23:31', 1, 0, 0, '', ''),
(26, 62, 44, 'SDFG', '', 'SDFGHJ', 1234, 'used', 2, 'DFGHJ', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'WERTYUIO', 0, 8781, 0, '2016-04-19 08:26:42', 1, 0, 0, '', ''),
(27, 62, 44, 'SDFG', '', 'SDFGHJ', 1234, 'used', 2, 'DFGHJ', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'WERTYUIO', 0, 8385, 0, '2016-04-19 08:27:34', 1, 0, 0, '', ''),
(28, 62, 117, 'TAHA', '', '1234', 500, 'used', 2, 'TAHA', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'ADDRESS FOR PAKISTAN', 0, 7323, 0, '2016-04-19 08:28:34', 1, 0, 0, '', ''),
(29, 62, 97, 'asd', '', 'sdfgh', 123, 'used', 2, 'namr', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'kjhijhg', 0, 2762, 0, '2016-04-19 08:31:58', 1, 0, 0, '', ''),
(30, 62, 97, 'asd', '', 'sdfgh', 123, 'used', 2, 'namr', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'kjhijhg', 0, 7249, 0, '2016-04-19 08:32:13', 1, 0, 0, '', ''),
(31, 62, 97, 'asd', '', 'sdfgh', 123, 'used', 2, 'namr', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'kjhijhg', 0, 3186, 0, '2016-04-19 08:32:17', 1, 0, 0, '', ''),
(32, 62, 97, 'asd', '', 'sdfgh', 123, 'used', 2, 'namr', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'kjhijhg', 0, 1834, 0, '2016-04-19 08:32:51', 1, 0, 0, '', ''),
(33, 62, 81, 'asd', '', 'sdfgh', 123, 'used', 2, 'namr', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'kjhijhg', 0, 7872, 1, '2016-04-19 08:33:52', 1, 1, 0, '', ''),
(34, 62, 82, '2013 Harley-Davidson Super Glide DYNA CUSTOM', '', '2013 Harley-Davidson Super Glide DYNA CUSTOM, The Harley-Davidson Dyna Super Glide Custom is full of chrome from handlebars to the rocker covers, and even the wheels with the 110th Anniversary Edition. The Twin Cam 96 engine and the Six-Speed Cruise Drive transmission will make the ride more enjoyable especially with the strong driveline. Easy to maintain with very little routine maintenance you will ride more without having to worry about the upkeep. $9,750.00 2516212318 ', 11000, 'used', 2, 'Jawad Khan', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, '', 0, 1, 0, '2016-04-19 10:33:45', 1, 0, 0, '', ''),
(35, 62, 82, 'Honda Hornet', '', 'my motorcycle', 75222, 'used', 2, 'Jawad', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, '', 0, 1, 1, '2016-05-09 20:08:50', 1, 0, 0, '', ''),
(36, 62, 69, 'Honda Civic', '', 'my car', 750000, 'used', 2, 'Jawad', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, '', 0, 1, 1, '2016-05-09 20:13:21', 1, 0, 0, '', ''),
(37, 62, 69, 'New Honda This is testing charachter', '', 'my new car', 25455, 'used', 2, 'asad', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, '', 0, 1, 1, '2016-05-09 20:17:55', 1, 0, 0, '', ''),
(38, 62, 97, '2001 Toyota Lexus', '', 'Location: 	Westmoreland\r\nExterior Colour: 	Gray\r\nDriver Side: 	RHD\r\nTransmission: 	Tiptronic\r\nCC rating: 	Unsure\r\n	\r\nBody Type:	Sedan\r\nInterior Colour: 	Cream\r\nDrive Type: 	4WD/AWD\r\nFuel type: 	Gas\r\nMileage: 	Unsure', 800000, 'used', 2, 'Jawad', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, '', 0, 1, 1, '2016-05-11 07:48:01', 1, 0, 0, '', ''),
(39, 62, 97, '2002 Toyota altezza', '', 'Location: 	Clarendon\r\nExterior Colour: 	\r\nDriver Side: 	RHD\r\nTransmission: 	Tiptronic\r\nCC rating: 	Unsure\r\n	\r\nBody Type:	Sedan\r\nInterior Colour: 	\r\nDrive Type: 	RWD\r\nFuel type: 	Gas\r\nMileage: 	Unsure', 720000, 'used', 2, 'Jawad Khan', 'jawadkhan.it@gmail.com', 2147483647, 17, 406, '', 0, 1, 1, '2016-06-12 16:05:43', 1, 0, 1, '', ''),
(42, 62, 28, 'my ad', '', 'kljkl', 123, '', 0, 'taha', 'jawadkhan.it@gmail.com', 2147483647, 12, 303, 'adsad', 0, 0, 1, '0000-00-00 00:00:00', 1, 0, 0, '', ''),
(41, 62, 28, 'my ad', '', 'kljkl', 123, '', 0, 'taha', 'jawadkhan.it@gmail.com', 2147483647, 12, 303, 'adsad', 0, 0, 1, '0000-00-00 00:00:00', 1, 0, 0, '', ''),
(43, 62, 28, 'my ad', '', 'kljkl', 123, '', 0, 'taha', 'jawadkhan.it@gmail.com', 2147483647, 12, 303, 'adsad', 0, 0, 1, '0000-00-00 00:00:00', 1, 0, 0, '', ''),
(44, 62, 28, 'my ad', '', 'kljkl', 123, '', 0, 'taha', 'jawadkhan.it@gmail.com', 2147483647, 12, 303, 'adsad', 0, 0, 1, '0000-00-00 00:00:00', 1, 0, 0, '', ''),
(45, 62, 29, 'company', '', 'Copnay ad description', 123, '', 0, 'Kahan', 'jawadkhan.it@gmail.com', 2147483647, 6, 102, 'Addresss', 0, 0, 1, '0000-00-00 00:00:00', 1, 0, 0, '', ''),
(46, 62, 97, '2002 Toyota altezza', '', 'Location: 	Clarendon\r\nExterior Colour: 	\r\nDriver Side: 	RHD\r\nTransmission: 	Tiptronic\r\nCC rating: 	Unsure\r\n	\r\nBody Type:	Sedan\r\nInterior Colour: 	\r\nDrive Type: 	RWD\r\nFuel type: 	Gas\r\nMileage: 	Unsure', 720000, 'used', 0, 'Jawad Khan', '', 2147483647, 17, 406, '', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, '', ''),
(47, 62, 97, '2002 Toyota altezza', '', 'Location: 	Clarendon\r\nExterior Colour: 	\r\nDriver Side: 	RHD\r\nTransmission: 	Tiptronic\r\nCC rating: 	Unsure\r\n	\r\nBody Type:	Sedan\r\nInterior Colour: 	\r\nDrive Type: 	RWD\r\nFuel type: 	Gas\r\nMileage: 	Unsure', 720000, 'used', 0, 'Jawad Khan', '', 2147483647, 17, 406, '', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, '', ''),
(48, 62, 97, '2002 Toyota altezza', '', 'Location: 	Clarendon\r\nExterior Colour: 	\r\nDriver Side: 	RHD\r\nTransmission: 	Tiptronic\r\nCC rating: 	Unsure\r\n	\r\nBody Type:	Sedan\r\nInterior Colour: 	\r\nDrive Type: 	RWD\r\nFuel type: 	Gas\r\nMileage: 	Unsure', 720000, 'used', 0, 'Jawad Khan', '', 2147483647, 17, 406, '', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, '', ''),
(49, 62, 97, '2002 Toyota altezza', '', 'Location: 	Clarendon\r\nExterior Colour: 	\r\nDriver Side: 	RHD\r\nTransmission: 	Tiptronic\r\nCC rating: 	Unsure\r\n	\r\nBody Type:	Sedan\r\nInterior Colour: 	\r\nDrive Type: 	RWD\r\nFuel type: 	Gas\r\nMileage: 	Unsure', 720000, 'used', 0, 'Jawad Khan', '', 2147483647, 17, 406, '', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, '', ''),
(50, 62, 97, '2001 Toyota Lexus', '', 'Location: 	Westmoreland\r\nExterior Colour: 	Gray\r\nDriver Side: 	RHD\r\nTransmission: 	Tiptronic\r\nCC rating: 	Unsure\r\n	\r\nBody Type:	Sedan\r\nInterior Colour: 	Cream\r\nDrive Type: 	4WD/AWD\r\nFuel type: 	Gas\r\nMileage: 	Unsure', 800000, 'used', 0, 'Jawad', '', 2147483647, 17, 405, '', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 0, '', ''),
(51, 62, 29, 'company', '', 'Copnay ad description', 123, '', 0, 'Kahan', '', 2147483647, 6, 102, 'Addresss', 0, 0, 0, '0000-00-00 00:00:00', 1, 0, 0, '', ''),
(52, 62, 29, 'company testing this is your work this is not working but i need it to be done', '', 'Copnay ad description', 123, '', 0, 'Kahan', '', 2147483647, 6, 102, 'Addresss', 0, 0, 1, '0000-00-00 00:00:00', 1, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `advertise_additional_fields`
--

CREATE TABLE `advertise_additional_fields` (
  `id` int(11) NOT NULL,
  `advertise_id` int(11) NOT NULL,
  `optional_field_id` int(11) NOT NULL,
  `optional_field_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `advertise_comment`
--

CREATE TABLE `advertise_comment` (
  `id` int(10) NOT NULL,
  `advertise_id` int(10) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `author_name` varchar(100) DEFAULT NULL,
  `author_email` varchar(100) DEFAULT NULL,
  `body` text,
  `enabled` tinyint(1) DEFAULT '1',
  `status` tinyint(1) DEFAULT '0',
  `mark_spam` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Admin', '1', 1443982861);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('Admin', 1, 'Admin of the website', 'admin', NULL, 1443509656, 1443982622),
('test', 2, 'test', 'admin', NULL, 1443982828, 1443982828);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_rule`
--

INSERT INTO `auth_rule` (`name`, `data`, `created_at`, `updated_at`) VALUES
('admin', 'O:23:"backend\\rbac\\AuthorRule":3:{s:4:"name";s:5:"admin";s:9:"createdAt";i:1443982581;s:9:"updatedAt";i:1443982581;}', 1443982581, 1443982581);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(55) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `credits` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `image`, `description`, `parent_id`, `credits`, `status`) VALUES
(1, 'Eiendom', 'bulding.png', 'Property', 0, 0, 1),
(2, 'Industri', 'inustry.png', 'Industry', 0, 0, 1),
(3, 'Kjøretøy', 'car.png', 'Vehicle', 0, 0, 1),
(4, 'Motorsykkel', 'mc2.png', 'Motorcycle', 0, 0, 1),
(5, 'Båt', 'boat.png', 'Boat', 0, 0, 1),
(6, 'Jobb', 'jobb.png', 'Jobs', 0, 0, 1),
(7, 'Restauranter', 'rest1.jpg', 'Restaurants', 0, 0, 1),
(8, 'Reise', 'trv1.jpg', 'Travel', 0, 0, 1),
(9, 'Utdanning', 'image.jpeg', 'Education', 0, 0, 1),
(10, 'Katalog', 'IMG_8567.jpg', 'Directory', 0, 0, 1),
(11, 'Nettbutikker', 'netbutiker.jpg', 'Online Shops', 0, 0, 1),
(12, 'Kjøpesenter', 'property.png', 'Mall', 0, 0, 1),
(13, 'Auksjon', 'bid.jpg', 'Bid and Auction', 0, 0, 1),
(142, 'Data Mobil', 'elek.jpg', 'Mobiles Computer', 19, 0, 1),
(15, 'Stahjuling', 'segway2.png', 'Segway', 3, 0, 1),
(19, 'Til Salgs', 'sofa.jpeg', 'For Sale', 0, 0, 1),
(20, 'Aktiviteter', 'samfun.jpg', 'Activities', 0, 0, 1),
(21, 'Tjenester', 'serv7.jpg', 'Services', 0, 0, 1),
(128, 'Kjøpesenter', 'property.png', 'Shopping centers', 12, 0, 1),
(132, 'Barne', 'barne.png', 'Kid Clothes and accessories', 19, 0, 1),
(131, 'Hjem  Hage', 'home hage.png', 'Home Garage Garden', 19, 0, 1),
(130, 'Dekor Interior', 'vase.png', 'Decoration  Interior', 19, 0, 1),
(27, 'Maglerne', 'IMG_8570.jpg', 'Brokers', 1, 0, 1),
(28, 'Parkerings til leie', 'parking1.png', 'Parking for Rent', 1, 0, 1),
(29, 'Parkerings til Salg', 'parking 2.png', 'Parking for Sale', 1, 0, 1),
(30, 'Hytte til salg', 'hytte1.gif', 'Holiday Home for Sale', 1, 0, 1),
(31, 'Hytte til leie', 'hytte2.jpg', 'Holiday Home for Rent', 1, 0, 1),
(32, 'Næringseiendom   Til Leie', 'naring til leie.jpg', 'Commercial Properties for Rent', 1, 0, 1),
(33, 'Næringseiendom   Til Salg', 'naring 1.jpg', 'Commercial Properties for Sale', 1, 0, 1),
(34, 'Hus til leie', 'hus til salg.jpg', 'House for Rent', 1, 0, 1),
(35, 'Hus til salg', 'hus til salg 2.jpg', 'House for Sale', 1, 0, 1),
(36, 'Tomter', 'tomte.png', 'Plots', 1, 0, 1),
(129, 'Hvitevarer', 'hvetevare.jpg', 'Appliances', 19, 0, 1),
(127, 'Tilbud Pa Butikker', '20-70.jpg', 'Offer At Stores', 12, 0, 1),
(38, 'Bedrifter / Tjenster', 'services 3.jpg', 'Enterprises / Services)', 22, 0, 1),
(124, 'Praksisplass', 'internships.jpg', 'Internships', 6, 0, 1),
(126, 'Jobbyrå', 'jobb.png', 'Job agency', 6, 0, 1),
(41, 'Valuta', 'exch 1.png', 'Currency', 8, 0, 1),
(42, 'Taxi Buss', 'taxi-cab9.png', 'Taxi / Bus', 8, 0, 1),
(147, 'Kjøkkenutstyr', 'kjøkken3.jpg', 'Kitchenware', 19, 0, 1),
(43, 'Risepakke', 'reise.png', 'Travel Package', 8, 0, 1),
(44, 'Hotell Hytte', 'hotel 2.png', 'Hotel / Motel / Cabin', 8, 0, 1),
(45, 'Billetter', 'passport-plane-ticket.png', 'Tickets (Plane, Train, Boat)', 8, 0, 1),
(46, 'Leiebil', 'tilleie.png', 'Rent a Car', 8, 0, 1),
(47, 'Helse Trening Skjonnhet', 'fitness.gif', 'Health – Fitness – Beauty', 9, 0, 1),
(48, 'Trafikk Skole', 'traffik skole 2.jpg', 'Driving School', 9, 0, 1),
(49, 'IT Kurs', 'it kurse 2.png', 'IT Course', 9, 0, 1),
(50, 'Hobby Class', 'hoby2.png', 'Hobby Class)', 9, 0, 1),
(51, 'Musik Danse', 'dance.gif', 'Dance/Music Classes', 9, 0, 1),
(52, 'Coaching Tuition', 'study.jpg', 'Coaching / Tuition', 9, 0, 1),
(53, 'Skole Universitet', 'skole.jpg', 'School / University', 9, 0, 1),
(143, 'Advokat Revisor', 'advokat.jpg', 'Accountent', 21, 0, 1),
(54, 'Barnehage', 'barnehage.jpg', 'Kindergarten', 9, 0, 1),
(55, 'Annet', 'annet.jpg', 'Others', 9, 0, 1),
(56, 'Kino Teater', 'kino 2.gif', 'Movie Theater Actor Film', 20, 0, 1),
(57, 'Aktivieter', 'Aktivieter.png', 'Activities', 20, 0, 1),
(58, 'Bil Markedsdag', 'tilleie.png', 'Car Market Day', 20, 0, 1),
(60, 'Festival', 'festival.gif', 'Festival Dances Music Concert', 20, 0, 1),
(61, 'Markedsdag Nattapent', 'Shopping_cart_with_veggies_and_fruit.jpg', 'Market Day', 20, 0, 1),
(62, 'Annet', 'annet.jpg', 'Other Events', 20, 0, 1),
(144, 'Bøker', 'bøker.jpg', 'Books', 19, 0, 1),
(63, 'Catering  Event', 'resturant 2.jpg', 'Catering  Event Services', 21, 0, 1),
(64, 'Renhold', 'renhold.jpg', 'Cleaning', 21, 0, 1),
(65, 'Mat Varer', 'kake.jpeg', 'Food Products', 7, 0, 1),
(66, 'Restauranter', 'resturant.png', 'Restaurants', 7, 0, 1),
(67, 'Båt til leie', 'båt til leie.png', 'Boat for rent', 5, 0, 1),
(68, 'Ferge', 'ferry2.png', 'Ferry', 5, 0, 1),
(69, 'Båt', 'båt til salg.png', 'Boat', 5, 0, 1),
(70, 'Deler', 'båt deler.jpg', 'Parts', 5, 0, 1),
(71, 'Verksted', 'båt service.gif', 'Workshop', 5, 0, 1),
(72, 'Sjøskole', 'traffik skole 2.jpg', 'Boat School', 5, 0, 1),
(73, 'Båtplasser', 'parcking.gif', 'Boat Parking', 5, 0, 1),
(74, 'Utstyr', 'båt life ring.jpg', 'Equipment', 5, 0, 1),
(75, 'Forhandlere', 'båt forhandler.jpg', 'Retailers', 5, 0, 1),
(76, 'Til Leie', 'motorsykkel til leie.jpg', 'For rent', 4, 0, 1),
(141, 'Delebil Vrakbil', 'delebil.png', 'Scrap car', 3, 0, 1),
(78, 'Verksted', 'verksted 4.png', 'Workshop', 4, 0, 1),
(79, 'Deler', 'tank motorc.jpg', 'Parts', 4, 0, 1),
(80, 'Scooter Og Moped', 'moped.png', 'Scooter And Moped', 4, 0, 1),
(81, 'Snoscooter', 'snoscooter.jpg', 'Snow Scooter', 4, 0, 1),
(82, 'Motorsykkel', 'motorsykkel til salg.png', 'Motor cycle', 4, 3, 1),
(83, 'Forhandlere', 'forhandler.jpeg', 'Retailers', 4, 0, 1),
(84, 'Utstyr', 'motorsykkelutstyr.png', 'Equipment', 4, 0, 1),
(85, 'Bygg Oppussing', 'bygg anleg.jpg', 'Building  Construction  Renovation', 21, 0, 1),
(145, 'Billett Gavekort', 'gavekort.jpg', 'Ticket Gift card', 19, 0, 1),
(87, 'Meglere', 'broker.jpg', 'Real Estate Agents', 21, 0, 1),
(88, 'Industri  Naeringsliv', 'pict---industrial-transport---vector-stencils-library.png--diagram-flowchart-example.png', 'Industry  Business  Excavation', 21, 0, 1),
(89, 'Helse  Hudpleie', 'nail.jpg', 'Health  BodyCare', 21, 0, 1),
(90, 'IT Web', 'web.png', 'IT', 21, 0, 1),
(91, 'Dekor  Malere', 'maling.png', 'Home  Décor  Painters', 21, 0, 1),
(92, 'Flytting  Hjem hjelp', 'flating.jpg', 'Moving  work for home help', 21, 0, 1),
(93, 'Rolegger Elektriker', 'relegger.png', 'Pluming  Bath  Electrician', 21, 0, 1),
(94, 'Snekker Flislegger', 'snekker.jpg', 'Carpentry  Designing', 21, 0, 1),
(95, 'Elektronikk  Data Telefoni', 'images.jpg', 'Electronics  Computers  Telephone', 21, 0, 1),
(96, 'Annet', 'annet.jpg', 'Other', 21, 0, 1),
(97, 'Bil', '202044767763985image.png', 'Cars', 3, 3, 1),
(98, 'Varebil', 'varebil 2.jpg', 'Van', 3, 0, 1),
(99, 'Campingvogn', 'campingvogen2.png', 'Caravan', 3, 0, 1),
(100, 'Bobil', 'bobil1.jpg', 'Motorhome', 3, 0, 1),
(101, 'EL bil', 'el bil.jpg', 'Electric Car', 3, 0, 1),
(102, 'Truck', 'truk.png', 'Truck', 3, 0, 1),
(103, 'Buss', 'buss.jpg', 'Bus', 3, 0, 1),
(104, 'Forsikring  Veihjelp', 'veihjelp 2.png', 'Auto Insurance  Road Assistance', 3, 0, 1),
(105, 'Bilopphuggeri', 'bil haugeri 2.jpg', 'Scape Yard', 3, 0, 1),
(106, 'Deler', 'bil deler.jpg', 'Parts', 3, 0, 1),
(107, 'Sykler', 'cycle.gif', 'Cycles', 3, 0, 1),
(108, 'Verksted', 'verksted.png', 'Workshop', 3, 0, 1),
(109, 'Trafik Skole', 'traffik skole 2.jpg', 'Driving School', 3, 0, 1),
(110, 'Andrekjoretory', 'pict---industrial-transport---vector-stencils-library.png--diagram-flowchart-example.png', 'Others Vehicles', 3, 0, 1),
(111, 'Forhandlere', 'carkey.jpg', 'Retailers', 3, 0, 1),
(112, 'Bilvask', 'car wash.png', 'Car Wash', 3, 0, 1),
(113, 'Tilhenger', 'tilhangere.png', 'Trailer', 3, 0, 1),
(114, 'Til Leie', 'tilleie.png', 'For Rent', 3, 0, 1),
(116, 'Kjøretøy', 'kkk.jpg', 'Vehicle', 2, 0, 1),
(117, 'Utstyer  Invente', 'wheel.png', 'Supplies & Equipment', 2, 0, 1),
(118, 'Bygg Og Anlegg', 'bygge.jpg', 'Building  Construction', 2, 0, 1),
(120, 'Landburk', 'landbruk 3.png', 'Agriculture', 2, 0, 1),
(121, 'Bedrifter Til Slag', 'eiendom.png', 'Businesses For Sale', 2, 0, 1),
(122, 'aant', 'annet.jpg', 'Others', 2, 0, 1),
(123, 'Bedrifter  Tjenster', 'IMG_8570.jpg', 'Businesses Services', 21, 0, 1),
(125, 'Jobb', 'job.png', 'Jobs', 6, 0, 1),
(133, 'Elektronikk', 'elektronikk.jpg', 'Electronics  Appliances', 19, 0, 1),
(134, 'Møbler', 'møbler 2.png', 'Furniture', 19, 0, 1),
(135, 'Kjæledyr', 'dyr.png', 'Pets Pet Equipment', 19, 0, 1),
(136, 'Hobby  Sport', 'friluft.png', 'Hobbies  Sports', 19, 0, 1),
(137, 'Kunst  Antikk', 'antikk.jpg', 'Art Antique', 19, 0, 1),
(138, 'Næringsliv', 'næringsliv.jpeg', 'Business world', 19, 0, 1),
(139, 'Klær og stil', 'styl.png', 'Fashion', 19, 0, 1),
(140, 'Annet', 'annet.jpg', 'Other', 19, 0, 1),
(150, 'Third', '3.JPG', 'lfhlsdh fs f;hsdfj', 27, 0, 1),
(151, 'skdfkl', '3.JPG', 'm,.sfln', 1, 0, 1),
(152, 'lskjdfk', '3.JPG', ';o', 1, 0, 1),
(153, 'khwr', '3.JPG', 'klsjkl', 27, 0, 1),
(154, ';lkkljkl', '3.JPG', ';kp', 150, 0, 1),
(155, 'lijiljk', '3.JPG', 'kljkl', 153, 0, 1),
(156, 'skdhfjkh', '3.JPG', 'mjkh', 27, 0, 1),
(157, 'fourth', '3.JPG', 'lksdflks', 150, 0, 1),
(159, 'test', '1101968896966818image.png', 'test', 157, 100, 1),
(161, 'Category name', '896060938549781image.png', ' description of category', 1, 12, 1),
(162, 'Samfunn', '474542552.jpg', 'Samfunn', 0, 1, 1),
(163, 'Once Again', '474542650.jpg', 'Once Again', 162, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_additional_fields`
--

CREATE TABLE `category_additional_fields` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `optional_field_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_additional_fields`
--

INSERT INTO `category_additional_fields` (`id`, `category_id`, `optional_field_id`) VALUES
(6, 1, 1),
(2, 5, 9999),
(7, 148, 1),
(8, 148, 2),
(9, 6, 3),
(10, 149, 1),
(11, 27, 2),
(12, 27, 3),
(13, 150, 2),
(14, 158, 2),
(18, 160, 3),
(17, 160, 2),
(22, 142, 5),
(21, 161, 2),
(33, 163, 256),
(28, 97, 1),
(30, 80, 169),
(31, 80, 255);

-- --------------------------------------------------------

--
-- Table structure for table `category_images`
--

CREATE TABLE `category_images` (
  `id` int(10) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_images`
--

INSERT INTO `category_images` (`id`, `category_id`, `image`) VALUES
(1, 3, 'image.png'),
(2, 5, 'image.png');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(10) NOT NULL,
  `region_id` int(10) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `slug` varchar(60) DEFAULT NULL,
  `country_code` char(2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `region_id`, `name`, `slug`, `country_code`, `status`) VALUES
(1, 1, 'Asker', 'asker', '99', 0),
(2, 1, 'Aurskog-høland', 'aurskog-h%c3%b8land', '1', 1),
(3, 1, 'Bærum', 'b%c3%a6rum', '1', 1),
(4, 1, 'Eidsvoll', 'eidsvoll', '1', 1),
(5, 1, 'Enebakk', 'enebakk', '99', 1),
(6, 1, 'Fet', 'fet', 'no', 1),
(7, 1, 'Frogn', 'frogn', 'no', 1),
(8, 1, 'Gjerdrum', 'gjerdrum', 'no', 1),
(9, 1, 'Hurdal', 'hurdal', '99', 1),
(10, 1, 'Lørenskog', 'l%c3%b8renskog', 'no', 1),
(11, 1, 'Nannestad', 'nannestad', 'no', 1),
(12, 1, 'Nes', 'nes', 'no', 1),
(13, 1, 'Nesodden', 'nesodden', 'no', 1),
(14, 1, 'Nittedal', 'nittedal', 'no', 1),
(15, 1, 'Oppegård', 'oppegard', 'no', 1),
(16, 1, 'Rælingen', 'r%c3%a6lingen', 'no', 1),
(17, 1, 'Skedsmo', 'skedsmo', 'no', 1),
(18, 1, 'Ski', 'ski', 'no', 1),
(19, 1, 'Sørum', 's%c3%b8rum', 'no', 1),
(20, 1, 'Ullensaker', 'ullensaker', 'no', 1),
(21, 1, 'Vestby', 'vestby', 'no', 1),
(22, 1, 'Ås', 'as', 'no', 1),
(23, 2, 'Åmli', 'amli', 'no', 1),
(24, 2, 'Arendal', 'arendal', 'no', 1),
(25, 2, 'Birkenes', 'birkenes', 'no', 1),
(26, 2, 'Bygland', 'bygland', 'no', 1),
(27, 2, 'Bykle', 'bykle', 'no', 1),
(28, 2, 'Evje Og Hornnes', 'evje-og-hornnes', 'no', 1),
(29, 2, 'Froland', 'froland', 'no', 1),
(30, 2, 'Gjerstad', 'gjerstad', 'no', 1),
(31, 2, 'Grimstad', 'grimstad', 'no', 1),
(32, 2, 'Iveland', 'iveland', 'no', 1),
(33, 2, 'Lillesand', 'lillesand', 'no', 1),
(34, 2, 'Risør', 'ris%c3%b8r', 'no', 1),
(35, 2, 'Tvedestrand', 'tvedestrand', 'no', 1),
(36, 2, 'Valle', 'valle', 'no', 1),
(37, 2, 'Vegårshei', 'vegarshei', 'no', 1),
(38, 3, 'Ål', 'al', 'no', 1),
(39, 3, 'Drammen', 'drammen', 'no', 1),
(40, 3, 'Flesberg', 'flesberg', 'no', 1),
(41, 3, 'Flå', 'fla', 'no', 1),
(42, 3, 'Gol', 'gol', 'no', 1),
(43, 3, 'Hemsedal', 'hemsedal', 'no', 1),
(44, 3, 'Hol', 'hol', 'no', 1),
(45, 3, 'Hole', 'hole', 'no', 1),
(46, 3, 'Hurum', 'hurum', 'no', 1),
(47, 3, 'Kongsberg', 'kongsberg', 'no', 1),
(48, 3, 'Krødsherad', 'kr%c3%b8dsherad', 'no', 1),
(49, 3, 'Lier', 'lier', 'no', 1),
(50, 3, 'Modum', 'modum', 'no', 1),
(51, 3, 'Nedre Eiker', 'nedre-eiker', 'no', 1),
(52, 3, 'Nes', 'nes', 'no', 1),
(53, 3, 'Nore Og Uvdal', 'nore-og-uvdal', 'no', 1),
(54, 3, 'Øvre Eiker', '%c3%98vre-eiker', 'no', 1),
(55, 3, 'Ringerike', 'ringerike', 'no', 1),
(56, 3, 'Rollag', 'rollag', 'no', 1),
(57, 3, 'Røyken', 'r%c3%b8yken', 'no', 1),
(58, 3, 'Sigdal', 'sigdal', 'no', 1),
(59, 4, 'Alta', 'alta', 'no', 1),
(60, 4, 'Batsfjord', 'batsfjord', 'no', 1),
(61, 4, 'Berlevag', 'berlevag', 'no', 1),
(62, 4, 'Hammerfest', 'hammerfest', 'no', 1),
(63, 4, 'Hasvik', 'hasvik', 'no', 1),
(64, 4, 'Havoysund', 'havoysund', 'no', 1),
(65, 4, 'Honningsvag', 'honningsvag', 'no', 1),
(66, 4, 'Kamoyvaer', 'kamoyvaer', 'no', 1),
(67, 4, 'Karasjok', 'karasjok', 'no', 1),
(68, 4, 'Kautokeino', 'kautokeino', 'no', 1),
(69, 4, 'Kirkenes', 'kirkenes', 'no', 1),
(70, 4, 'Lakselv', 'lakselv', 'no', 1),
(71, 4, 'Mehamn', 'mehamn', 'no', 1),
(72, 4, 'North Cape', 'north-cape', 'no', 1),
(73, 4, 'Oksfjord', 'oksfjord', 'no', 1),
(74, 4, 'Repvag', 'repvag', 'no', 1),
(75, 4, 'Skarsvag', 'skarsvag', 'no', 1),
(76, 4, 'Talvik', 'talvik', 'no', 1),
(77, 4, 'Tana', 'tana', 'no', 1),
(78, 4, 'Vadso', 'vadso', 'no', 1),
(79, 4, 'Vardo', 'vardo', 'no', 1),
(80, 5, 'Alvdal', 'alvdal', 'no', 1),
(81, 5, 'Eidskog', 'eidskog', 'no', 1),
(82, 5, 'Elverum', 'elverum', 'no', 1),
(83, 5, 'Engerdal', 'engerdal', 'no', 1),
(84, 5, 'Folldal', 'folldal', 'no', 1),
(85, 5, 'Grue', 'grue', 'no', 1),
(86, 5, 'Hamar', 'hamar', 'no', 1),
(87, 5, 'Kongsvinger', 'kongsvinger', 'no', 1),
(88, 5, 'Løten', 'l%c3%b8ten', 'no', 1),
(89, 5, 'Nord-odal', 'nord-odal', 'no', 1),
(90, 5, 'Os', 'os', 'no', 1),
(91, 5, 'Rendalen', 'rendalen', 'no', 1),
(92, 5, 'Ringsaker', 'ringsaker', 'no', 1),
(93, 5, 'Stange', 'stange', 'no', 1),
(94, 5, 'Stor-elvdal', 'stor-elvdal', 'no', 1),
(95, 5, 'Sør-odal', 's%c3%b8r-odal', 'no', 1),
(96, 5, 'Tolga', 'tolga', 'no', 1),
(97, 5, 'Trysil', 'trysil', 'no', 1),
(98, 5, 'Tynset', 'tynset', 'no', 1),
(99, 5, 'Våler', 'valer', 'no', 1),
(100, 5, 'Åmot', 'amot', 'no', 1),
(101, 5, 'Åsnes', 'asnes', 'no', 1),
(102, 6, 'Askøy', 'ask%c3%b8y', 'no', 1),
(103, 6, 'Austevoll', 'austevoll', 'no', 1),
(104, 6, 'Austrheim', 'austrheim', 'no', 1),
(105, 6, 'Bergen', 'bergen', 'no', 1),
(106, 6, 'Bømlo', 'b%c3%b8mlo', 'no', 1),
(107, 6, 'Eidfjord', 'eidfjord', 'no', 1),
(108, 6, 'Etne', 'etne', 'no', 1),
(109, 6, 'Fedje', 'fedje', 'no', 1),
(110, 6, 'Fitjar', 'fitjar', 'no', 1),
(111, 6, 'Fjell', 'fjell', 'no', 1),
(112, 6, 'Fusa', 'fusa', 'no', 1),
(113, 6, 'Granvin', 'granvin', 'no', 1),
(114, 6, 'Jondal', 'jondal', 'no', 1),
(115, 6, 'Kvam', 'kvam', 'no', 1),
(116, 6, 'Kvinnherad', 'kvinnherad', 'no', 1),
(117, 6, 'Lindås', 'lindas', 'no', 1),
(118, 6, 'Masfjorden', 'masfjorden', 'no', 1),
(119, 6, 'Meland', 'meland', 'no', 1),
(120, 6, 'Modalen', 'modalen', 'no', 1),
(121, 6, 'Odda', 'odda', 'no', 1),
(122, 6, 'Os', 'os', 'no', 1),
(123, 6, 'Osterøy', 'oster%c3%b8y', 'no', 1),
(124, 6, 'Øygarden', '%c3%98ygarden', 'no', 1),
(125, 6, 'Radøy', 'rad%c3%b8y', 'no', 1),
(126, 6, 'Samnanger', 'samnanger', 'no', 1),
(127, 6, 'Stord', 'stord', 'no', 1),
(128, 6, 'Sund', 'sund', 'no', 1),
(129, 6, 'Sveio', 'sveio', 'no', 1),
(130, 6, 'Tysnes', 'tysnes', 'no', 1),
(131, 6, 'Ullensvang', 'ullensvang', 'no', 1),
(132, 6, 'Ulvik', 'ulvik', 'no', 1),
(133, 6, 'Vaksdal', 'vaksdal', 'no', 1),
(134, 6, 'Voss', 'voss', 'no', 1),
(135, 7, 'Ålesund', 'alesund', 'no', 1),
(136, 7, 'Aukra', 'aukra', 'no', 1),
(137, 7, 'Aure', 'aure', 'no', 1),
(138, 7, 'Averøy', 'aver%c3%b8y', 'no', 1),
(139, 7, 'Eide', 'eide', 'no', 1),
(140, 7, 'Fræna', 'fr%c3%a6na', 'no', 1),
(141, 7, 'Frei', 'frei', 'no', 1),
(142, 7, 'Giske', 'giske', 'no', 1),
(143, 7, 'Gjemnes', 'gjemnes', 'no', 1),
(144, 7, 'Halsa', 'halsa', 'no', 1),
(145, 7, 'Haram', 'haram', 'no', 1),
(146, 7, 'Hareid', 'hareid', 'no', 1),
(147, 7, 'Herøy', 'her%c3%b8y', 'no', 1),
(148, 7, 'Kristiansund', 'kristiansund', 'no', 1),
(149, 7, 'Midsund', 'midsund', 'no', 1),
(150, 7, 'Molde', 'molde', 'no', 1),
(151, 7, 'Nesset', 'nesset', 'no', 1),
(152, 7, 'Norddal', 'norddal', 'no', 1),
(153, 7, 'Ørskog', '%c3%98rskog', 'no', 1),
(154, 7, 'Ørsta', '%c3%98rsta', 'no', 1),
(155, 7, 'Rauma', 'rauma', 'no', 1),
(156, 7, 'Rindal', 'rindal', 'no', 1),
(157, 7, 'Sande', 'sande', 'no', 1),
(158, 7, 'Sandøy', 'sand%c3%b8y', 'no', 1),
(159, 7, 'Skodje', 'skodje', 'no', 1),
(160, 7, 'Smøla', 'sm%c3%b8la', 'no', 1),
(161, 7, 'Stordal', 'stordal', 'no', 1),
(162, 7, 'Stranda', 'stranda', 'no', 1),
(163, 7, 'Sula', 'sula', 'no', 1),
(164, 7, 'Sunndal', 'sunndal', 'no', 1),
(165, 7, 'Surnadal', 'surnadal', 'no', 1),
(166, 7, 'Sykkylven', 'sykkylven', 'no', 1),
(167, 7, 'Tingvoll', 'tingvoll', 'no', 1),
(168, 7, 'Tustna', 'tustna', 'no', 1),
(169, 7, 'Ulstein', 'ulstein', 'no', 1),
(170, 7, 'Vanylven', 'vanylven', 'no', 1),
(171, 7, 'Vestnes', 'vestnes', 'no', 1),
(172, 7, 'Volda', 'volda', 'no', 1),
(173, 8, 'Alstahaug', 'alstahaug', 'no', 1),
(174, 8, 'Andøy', 'and%c3%b8y', 'no', 1),
(175, 8, 'Ballangen', 'ballangen', 'no', 1),
(176, 8, 'Beiarn', 'beiarn', 'no', 1),
(177, 8, 'Bindal', 'bindal', 'no', 1),
(178, 8, 'Bø', 'b%c3%b8', 'no', 1),
(179, 8, 'Bodø', 'bod%c3%b8', 'no', 1),
(180, 8, 'Brønnøy', 'br%c3%b8nn%c3%b8y', 'no', 1),
(181, 8, 'Dønna', 'd%c3%b8nna', 'no', 1),
(182, 8, 'Evenes', 'evenes', 'no', 1),
(183, 8, 'Fauske', 'fauske', 'no', 1),
(184, 8, 'Flakstad', 'flakstad', 'no', 1),
(185, 8, 'Gildeskål', 'gildeskal', 'no', 1),
(186, 8, 'Grane', 'grane', 'no', 1),
(187, 8, 'Hadsel', 'hadsel', 'no', 1),
(188, 8, 'Hamarøy', 'hamar%c3%b8y', 'no', 1),
(189, 8, 'Hattfjelldal', 'hattfjelldal', 'no', 1),
(190, 8, 'Hemnes', 'hemnes', 'no', 1),
(191, 8, 'Herøy', 'her%c3%b8y', 'no', 1),
(192, 8, 'Leirfjord', 'leirfjord', 'no', 1),
(193, 8, 'Lødingen', 'l%c3%b8dingen', 'no', 1),
(194, 8, 'Lurøy', 'lur%c3%b8y', 'no', 1),
(195, 8, 'Meløy', 'mel%c3%b8y', 'no', 1),
(196, 8, 'Moskenes', 'moskenes', 'no', 1),
(197, 8, 'Narvik', 'narvik', 'no', 1),
(198, 8, 'Nesna', 'nesna', 'no', 1),
(199, 8, 'Øksnes', '%c3%98ksnes', 'no', 1),
(200, 8, 'Rana', 'rana', 'no', 1),
(201, 8, 'Rødøy', 'r%c3%b8d%c3%b8y', 'no', 1),
(202, 8, 'Røst', 'r%c3%b8st', 'no', 1),
(203, 8, 'Saltdal', 'saltdal', 'no', 1),
(204, 8, 'Sømna', 's%c3%b8mna', 'no', 1),
(205, 8, 'Sørfold', 's%c3%b8rfold', 'no', 1),
(206, 8, 'Sortland', 'sortland', 'no', 1),
(207, 8, 'Steigen', 'steigen', 'no', 1),
(208, 8, 'Tjeldsund', 'tjeldsund', 'no', 1),
(209, 8, 'Træna', 'tr%c3%a6na', 'no', 1),
(210, 8, 'Tysfjord', 'tysfjord', 'no', 1),
(211, 8, 'Værøy', 'v%c3%a6r%c3%b8y', 'no', 1),
(212, 8, 'Vågan', 'vagan', 'no', 1),
(213, 8, 'Vefsn', 'vefsn', 'no', 1),
(214, 8, 'Vega', 'vega', 'no', 1),
(215, 8, 'Vestvågøy', 'vestvag%c3%b8y', 'no', 1),
(216, 8, 'Vevelstad', 'vevelstad', 'no', 1),
(217, 9, 'Flatanger', 'flatanger', 'no', 1),
(218, 9, 'Fosnes', 'fosnes', 'no', 1),
(219, 9, 'Frosta', 'frosta', 'no', 1),
(220, 9, 'Grong', 'grong', 'no', 1),
(221, 9, 'Høylandet', 'h%c3%b8ylandet', 'no', 1),
(222, 9, 'Inderøy', 'inder%c3%b8y', 'no', 1),
(223, 9, 'Leka', 'leka', 'no', 1),
(224, 9, 'Leksvik', 'leksvik', 'no', 1),
(225, 9, 'Levanger', 'levanger', 'no', 1),
(226, 9, 'Lierne', 'lierne', 'no', 1),
(227, 9, 'Meråker', 'meraker', 'no', 1),
(228, 9, 'Mosvik', 'mosvik', 'no', 1),
(229, 9, 'Nærøy', 'n%c3%a6r%c3%b8y', 'no', 1),
(230, 9, 'Namdalseid', 'namdalseid', 'no', 1),
(231, 9, 'Namsos', 'namsos', 'no', 1),
(232, 9, 'Namsskogan', 'namsskogan', 'no', 1),
(233, 9, 'Overhalla', 'overhalla', 'no', 1),
(234, 9, 'Røyrvik', 'r%c3%b8yrvik', 'no', 1),
(235, 9, 'Snåsa', 'snasa', 'no', 1),
(236, 9, 'Steinkjer', 'steinkjer', 'no', 1),
(237, 9, 'Stjørdal', 'stj%c3%b8rdal', 'no', 1),
(238, 9, 'Verdal', 'verdal', 'no', 1),
(239, 9, 'Verran', 'verran', 'no', 1),
(240, 9, 'Vikna', 'vikna', 'no', 1),
(241, 10, 'Dovre', 'dovre', 'no', 1),
(242, 10, 'Etnedal', 'etnedal', 'no', 1),
(243, 10, 'Gausdal', 'gausdal', 'no', 1),
(244, 10, 'Gjøvik', 'gj%c3%b8vik', 'no', 1),
(245, 10, 'Gran', 'gran', 'no', 1),
(246, 10, 'Jevnaker', 'jevnaker', 'no', 1),
(247, 10, 'Lesja', 'lesja', 'no', 1),
(248, 10, 'Lillehammer', 'lillehammer', 'no', 1),
(249, 10, 'Lom', 'lom', 'no', 1),
(250, 10, 'Lunner', 'lunner', 'no', 1),
(251, 10, 'Nord-aurdal', 'nord-aurdal', 'no', 1),
(252, 10, 'Nord-fron', 'nord-fron', 'no', 1),
(253, 10, 'Nordre Land', 'nordre-land', 'no', 1),
(254, 10, 'Østre Toten', '%c3%98stre-toten', 'no', 1),
(255, 10, 'Øyer', '%c3%98yer', 'no', 1),
(256, 10, 'Øystre Slidre', '%c3%98ystre-slidre', 'no', 1),
(257, 10, 'Ringebu', 'ringebu', 'no', 1),
(258, 10, 'Sel', 'sel', 'no', 1),
(259, 10, 'Skjåk', 'skjak', 'no', 1),
(260, 10, 'Søndre Land', 's%c3%b8ndre-land', 'no', 1),
(261, 10, 'Sør-aurdal', 's%c3%b8r-aurdal', 'no', 1),
(262, 10, 'Sør-fron', 's%c3%b8r-fron', 'no', 1),
(263, 10, 'Vågå', 'vaga', 'no', 1),
(264, 10, 'Vang', 'vang', 'no', 1),
(265, 10, 'Vestre Slidre', 'vestre-slidre', 'no', 1),
(266, 10, 'Vestre Toten', 'vestre-toten', 'no', 1),
(267, 11, 'Bjerke', 'bjerke', 'no', 1),
(268, 11, 'Bygdøy-frogner', 'bygd%c3%b8y-frogner', 'no', 1),
(269, 11, 'Bøler', 'b%c3%b8ler', 'no', 1),
(270, 11, 'Ekeberg-bekkelaget', 'ekeberg-bekkelaget', 'no', 1),
(271, 11, 'Furuset', 'furuset', 'no', 1),
(272, 11, 'Gamle Oslo', 'gamle-oslo', 'no', 1),
(273, 11, 'Grefsen-kjelsås', 'grefsen-kjelsas', 'no', 1),
(274, 11, 'Grorud', 'grorud', 'no', 1),
(275, 11, 'Grünerløkka-sofienberg', 'grunerl%c3%b8kka-sofienberg', 'no', 1),
(276, 11, 'Hellerud', 'hellerud', 'no', 1),
(277, 11, 'Helsfyr-sinsen', 'helsfyr-sinsen', 'no', 1),
(278, 11, 'Lambertseter', 'lambertseter', 'no', 1),
(279, 11, 'Manglerud', 'manglerud', 'no', 1),
(280, 11, 'Nordstrand', 'nordstrand', 'no', 1),
(281, 11, 'Romsås', 'romsas', 'no', 1),
(282, 11, 'Røa', 'r%c3%b8a', 'no', 1),
(283, 11, 'Sagene-torshov', 'sagene-torshov', 'no', 1),
(284, 11, 'Sogn', 'sogn', 'no', 1),
(285, 11, 'St. Hanshaugen-ullevål', 'st-hanshaugen-ulleval', 'no', 1),
(286, 11, 'Stovner', 'stovner', 'no', 1),
(287, 11, 'Søndre Nordstrand', 's%c3%b8ndre-nordstrand', 'no', 1),
(288, 11, 'Ullern', 'ullern', 'no', 1),
(289, 11, 'Uranienborg-majorstuen', 'uranienborg-majorstuen', 'no', 1),
(290, 11, 'Vinderen', 'vinderen', 'no', 1),
(291, 11, 'Østensjø', '%c3%98stensj%c3%b8', 'no', 1),
(292, 12, 'Aremark', 'aremark', 'no', 1),
(293, 12, 'Askim', 'askim', 'no', 1),
(294, 12, 'Eidsberg', 'eidsberg', 'no', 1),
(295, 12, 'Fredrikstad', 'fredrikstad', 'no', 1),
(296, 12, 'Halden', 'halden', 'no', 1),
(297, 12, 'Hobøl', 'hob%c3%b8l', 'no', 1),
(298, 12, 'Hvaler', 'hvaler', 'no', 1),
(299, 12, 'Marker', 'marker', 'no', 1),
(300, 12, 'Moss', 'moss', 'no', 1),
(301, 12, 'Rakkestad', 'rakkestad', 'no', 1),
(302, 12, 'Rygge', 'rygge', 'no', 1),
(303, 12, 'Rømskog', 'r%c3%b8mskog', 'no', 1),
(304, 12, 'Råde', 'rade', 'no', 1),
(305, 12, 'Sarpsborg', 'sarpsborg', 'no', 1),
(306, 12, 'Skiptvet', 'skiptvet', 'no', 1),
(307, 12, 'Spydeberg', 'spydeberg', 'no', 1),
(308, 12, 'Trøgstad', 'tr%c3%b8gstad', 'no', 1),
(309, 12, 'Våler', 'valer', 'no', 1),
(310, 13, 'Bjerkreim', 'bjerkreim', 'no', 1),
(311, 13, 'Bokn', 'bokn', 'no', 1),
(312, 13, 'Eigersund', 'eigersund', 'no', 1),
(313, 13, 'Finnøy', 'finn%c3%b8y', 'no', 1),
(314, 13, 'Forsand', 'forsand', 'no', 1),
(315, 13, 'Gjesdal', 'gjesdal', 'no', 1),
(316, 13, 'Haugesund', 'haugesund', 'no', 1),
(317, 13, 'Hjelmeland', 'hjelmeland', 'no', 1),
(318, 13, 'Hå', 'ha', 'no', 1),
(319, 13, 'Karmøy', 'karm%c3%b8y', 'no', 1),
(320, 13, 'Klepp', 'klepp', 'no', 1),
(321, 13, 'Kvitsøy', 'kvits%c3%b8y', 'no', 1),
(322, 13, 'Lund', 'lund', 'no', 1),
(323, 13, 'Randaberg', 'randaberg', 'no', 1),
(324, 13, 'Rennesøy', 'rennes%c3%b8y', 'no', 1),
(325, 13, 'Sandnes', 'sandnes', 'no', 1),
(326, 13, 'Sauda', 'sauda', 'no', 1),
(327, 13, 'Sokndal', 'sokndal', 'no', 1),
(328, 13, 'Sola', 'sola', 'no', 1),
(329, 13, 'Stavanger', 'stavanger', 'no', 1),
(330, 13, 'Strand', 'strand', 'no', 1),
(331, 13, 'Suldal', 'suldal', 'no', 1),
(332, 13, 'Time', 'time', 'no', 1),
(333, 13, 'Tysvær', 'tysv%c3%a6r', 'no', 1),
(334, 13, 'Utsira', 'utsira', 'no', 1),
(335, 13, 'Vindafjord', 'vindafjord', 'no', 1),
(336, 14, 'Årdal', 'ardal', 'no', 1),
(337, 14, 'Askvoll', 'askvoll', 'no', 1),
(338, 14, 'Aurland', 'aurland', 'no', 1),
(339, 14, 'Balestrand', 'balestrand', 'no', 1),
(340, 14, 'Bremanger', 'bremanger', 'no', 1),
(341, 14, 'Eid', 'eid', 'no', 1),
(342, 14, 'Fjaler', 'fjaler', 'no', 1),
(343, 14, 'Flora', 'flora', 'no', 1),
(344, 14, 'Førde', 'f%c3%b8rde', 'no', 1),
(345, 14, 'Gaular', 'gaular', 'no', 1),
(346, 14, 'Gloppen', 'gloppen', 'no', 1),
(347, 14, 'Gulen', 'gulen', 'no', 1),
(348, 14, 'Hornindal', 'hornindal', 'no', 1),
(349, 14, 'Høyanger', 'h%c3%b8yanger', 'no', 1),
(350, 14, 'Hyllestad', 'hyllestad', 'no', 1),
(351, 14, 'Jølster', 'j%c3%b8lster', 'no', 1),
(352, 14, 'Lærdal', 'l%c3%a6rdal', 'no', 1),
(353, 14, 'Leikanger', 'leikanger', 'no', 1),
(354, 14, 'Luster', 'luster', 'no', 1),
(355, 14, 'Naustdal', 'naustdal', 'no', 1),
(356, 14, 'Selje', 'selje', 'no', 1),
(357, 14, 'Sogndal', 'sogndal', 'no', 1),
(358, 14, 'Solund', 'solund', 'no', 1),
(359, 14, 'Stryn', 'stryn', 'no', 1),
(360, 14, 'Vågsøy', 'vags%c3%b8y', 'no', 1),
(361, 14, 'Vik', 'vik', 'no', 1),
(362, 15, 'Åfjord', 'afjord', 'no', 1),
(363, 15, 'Agdenes', 'agdenes', 'no', 1),
(364, 15, 'Bjugn', 'bjugn', 'no', 1),
(365, 15, 'Frøya', 'fr%c3%b8ya', 'no', 1),
(366, 15, 'Hemne', 'hemne', 'no', 1),
(367, 15, 'Hitra', 'hitra', 'no', 1),
(368, 15, 'Holtålen', 'holtalen', 'no', 1),
(369, 15, 'Klæbu', 'kl%c3%a6bu', 'no', 1),
(370, 15, 'Malvik', 'malvik', 'no', 1),
(371, 15, 'Meldal', 'meldal', 'no', 1),
(372, 15, 'Melhus', 'melhus', 'no', 1),
(373, 15, 'Midtre Gauldal', 'midtre-gauldal', 'no', 1),
(374, 15, 'Oppdal', 'oppdal', 'no', 1),
(375, 15, 'Orkdal', 'orkdal', 'no', 1),
(376, 15, 'Ørland', '%c3%98rland', 'no', 1),
(377, 15, 'Osen', 'osen', 'no', 1),
(378, 15, 'Rennebu', 'rennebu', 'no', 1),
(379, 15, 'Rissa', 'rissa', 'no', 1),
(380, 15, 'Roan', 'roan', 'no', 1),
(381, 15, 'Røros', 'r%c3%b8ros', 'no', 1),
(382, 15, 'Selbu', 'selbu', 'no', 1),
(383, 15, 'Skaun', 'skaun', 'no', 1),
(384, 15, 'Snillfjord', 'snillfjord', 'no', 1),
(385, 15, 'Trondheim', 'trondheim', 'no', 1),
(386, 15, 'Tydal', 'tydal', 'no', 1),
(387, 16, 'Bamble', 'bamble', 'no', 1),
(388, 16, 'Bø', 'b%c3%b8', 'no', 1),
(389, 16, 'Drangedal', 'drangedal', 'no', 1),
(390, 16, 'Fyresdal', 'fyresdal', 'no', 1),
(391, 16, 'Hjartdal', 'hjartdal', 'no', 1),
(392, 16, 'Kragerø', 'krager%c3%b8', 'no', 1),
(393, 16, 'Kviteseid', 'kviteseid', 'no', 1),
(394, 16, 'Nissedal', 'nissedal', 'no', 1),
(395, 16, 'Nome', 'nome', 'no', 1),
(396, 16, 'Notodden', 'notodden', 'no', 1),
(397, 16, 'Porsgrunn', 'porsgrunn', 'no', 1),
(398, 16, 'Sauherad', 'sauherad', 'no', 1),
(399, 16, 'Seljord', 'seljord', 'no', 1),
(400, 16, 'Siljan', 'siljan', 'no', 1),
(401, 16, 'Skien', 'skien', 'no', 1),
(402, 16, 'Tinn', 'tinn', 'no', 1),
(403, 16, 'Tokke', 'tokke', 'no', 1),
(404, 16, 'Vinje', 'vinje', 'no', 1),
(405, 17, 'Balsfjord', 'balsfjord', 'no', 1),
(406, 17, 'Bardu', 'bardu', 'no', 1),
(407, 17, 'Berg', 'berg', 'no', 1),
(408, 17, 'Bjarkøy', 'bjark%c3%b8y', 'no', 1),
(409, 17, 'Dyrøy', 'dyr%c3%b8y', 'no', 1),
(410, 17, 'Gratangen', 'gratangen', 'no', 1),
(411, 17, 'Harstad', 'harstad', 'no', 1),
(412, 17, 'Ibestad', 'ibestad', 'no', 1),
(413, 17, 'Kåfjord', 'kafjord', 'no', 1),
(414, 17, 'Karlsøy', 'karls%c3%b8y', 'no', 1),
(415, 17, 'Kvæfjord', 'kv%c3%a6fjord', 'no', 1),
(416, 17, 'Kvænangen', 'kv%c3%a6nangen', 'no', 1),
(417, 17, 'Lavangen', 'lavangen', 'no', 1),
(418, 17, 'Lenvik', 'lenvik', 'no', 1),
(419, 17, 'Lyngen', 'lyngen', 'no', 1),
(420, 17, 'Målselv', 'malselv', 'no', 1),
(421, 17, 'Nordreisa', 'nordreisa', 'no', 1),
(422, 17, 'Salangen', 'salangen', 'no', 1),
(423, 17, 'Skånland', 'skanland', 'no', 1),
(424, 17, 'Skjervøy', 'skjerv%c3%b8y', 'no', 1),
(425, 17, 'Sørreisa', 's%c3%b8rreisa', 'no', 1),
(426, 17, 'Storfjord', 'storfjord', 'no', 1),
(427, 17, 'Torsken', 'torsken', 'no', 1),
(428, 17, 'Tranøy', 'tran%c3%b8y', 'no', 1),
(429, 17, 'Tromsø', 'troms%c3%b8', 'no', 1),
(430, 18, 'Åseral', 'aseral', 'no', 1),
(431, 18, 'Audnedal', 'audnedal', 'no', 1),
(432, 18, 'Farsund', 'farsund', 'no', 1),
(433, 18, 'Flekkefjord', 'flekkefjord', 'no', 1),
(434, 18, 'Hægebostad', 'h%c3%a6gebostad', 'no', 1),
(435, 18, 'Kristiansand', 'kristiansand', 'no', 1),
(436, 18, 'Kvinesdal', 'kvinesdal', 'no', 1),
(437, 18, 'Lindesnes', 'lindesnes', 'no', 1),
(438, 18, 'Lyngdal', 'lyngdal', 'no', 1),
(439, 18, 'Mandal', 'mandal', 'no', 1),
(440, 18, 'Marnardal', 'marnardal', 'no', 1),
(441, 18, 'Sirdal', 'sirdal', 'no', 1),
(442, 18, 'Songdalen', 'songdalen', 'no', 1),
(443, 18, 'Søgne', 's%c3%b8gne', 'no', 1),
(444, 18, 'Vennesla', 'vennesla', 'no', 1),
(445, 19, 'Andebu', 'andebu', 'no', 1),
(446, 19, 'Hof', 'hof', 'no', 1),
(447, 19, 'Holmestrand', 'holmestrand', 'no', 1),
(448, 19, 'Horten', 'horten', 'no', 1),
(449, 19, 'Lardal', 'lardal', 'no', 1),
(450, 19, 'Larvik', 'larvik', 'no', 1),
(451, 19, 'Nøtterøy', 'n%c3%b8tter%c3%b8y', 'no', 1),
(452, 19, 'Re', 're', 'no', 1),
(453, 19, 'Sande', 'sande', 'no', 1),
(454, 19, 'Sandefjord', 'sandefjord', 'no', 1),
(455, 19, 'Stokke', 'stokke', 'no', 1),
(456, 19, 'Svelvik', 'svelvik', 'no', 1),
(457, 19, 'Tjøme', 'tj%c3%b8me', 'no', 1),
(458, 19, 'Tønsberg', 't%c3%b8nsberg', 'no', 1),
(459, NULL, 'Billingstad', 'billingstad', '1', 1),
(460, NULL, 'Haslum', 'haslum', '1', 1),
(461, NULL, 'Hosle', 'hosle', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `commercial_ads`
--

CREATE TABLE `commercial_ads` (
  `id` int(12) NOT NULL,
  `name` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `category_id` int(12) NOT NULL,
  `top_ad` varchar(200) DEFAULT NULL,
  `top_ad_url` varchar(225) DEFAULT NULL,
  `left_ad` varchar(200) DEFAULT NULL,
  `left_ad_url` varchar(225) DEFAULT NULL,
  `right_ad` varchar(200) DEFAULT NULL,
  `right_ad_url` varchar(225) DEFAULT NULL,
  `centre_ad` varchar(200) DEFAULT NULL,
  `centre_ad_url` varchar(225) DEFAULT NULL,
  `bottom_ad` varchar(200) DEFAULT NULL,
  `bottom_ad_url` varchar(225) DEFAULT NULL,
  `status` int(12) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercial_ads`
--

INSERT INTO `commercial_ads` (`id`, `name`, `url`, `category_id`, `top_ad`, `top_ad_url`, `left_ad`, `left_ad_url`, `right_ad`, `right_ad_url`, `centre_ad`, `centre_ad_url`, `bottom_ad`, `bottom_ad_url`, `status`) VALUES
(44, 'company name(Parent)', 'wwww.google.com', 0, 'testing.jpg', '', 'testing.jpg', '', 'testing.jpg', '', 'bottom-ad.png', '', 'center-ad.jpg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `commercial_search_ads`
--

CREATE TABLE `commercial_search_ads` (
  `id` int(12) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(12) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` longblob NOT NULL,
  `notes` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `image_type` varchar(35) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercial_search_ads`
--

INSERT INTO `commercial_search_ads` (`id`, `title`, `category_id`, `url`, `image`, `notes`, `user_id`, `image_type`, `status`) VALUES
(1, 'This is it', 10, 'http://www.google.com', 0x89504e470d0a1a0a0000000d494844520000005a0000004608060000004cbc83e20000200049444154789c84bb59b0e5d779ddf7dbc37f3af3b96377df9e0034664e204109a41442b46c32962bb2625ba9a44a8e145552192a8f49552a55aae28b9ff398d84aaa9cc8e544a622d9a6a39244911485109c091040636c347abef319fff39ef2f0bf0d92f290fb72ee3df79c3bacfded6faf6fadb585f73e84101042f0d38f3ffdf1f0b9e57a4ed3e66c8c7758aee754ed092a1ef2c3f7fe9472dd609b8a716f9bc5c99c955962db86a8efd0a18fb30555056b738c7596611691648e75d122091495a1f615e5b2473fce30f18c2475600383b887148e281d70f720e7e870cd381b1074838e2dcbb5a517252002e361866f7b1c2d8ed99ac68ca28ca355c5649a725a16843266d2cff83b5ffc6dae7ff03dde7dfd3a7e20184c13825b134719de6af6361f67988e11f18227ae7e962b3b1f6732de0614107e069b871f7f15b79fc1d07bff6fffeed99b1f026d6dc3c9ea3e8db3accb398bfc0e753be368b6c0b5122d149e1ce51dc7b335fd38234d62da2a67301a319bb7a8b8c4d120d39238788e16062f242114045ad29e403b8f45924409090df7f72b1a17519682c589a23639593f3099c2b52724c73385291382d32c561545a1f1758b5486cd8d2ddae0699b3952492e5f7c0c1f1d112b4f53370cd4801fbf77cae624c30bcd78b0c1b50b9f61344879fcea73f47b7dfafd0dc6832952083a5cfff562fcff035aff3b4126606d8d5011ce59ee9f7cc069fe3602c972bd222f4b5679c1626db18d21d19e205a9c09182fd0c3161b6608623c069f34cc8f5bcab2a0959e7e56e19da0585bceef0e91bd9cfda32503a9c89229555cb2c81d650541a5ac9635836c48ee57547520b39efde33ec679c663c3bd5b0dab798dad331c2d7162385e1f10eb09d31d8dc0b2ac6f82912404e24c735aacb1417274d2d0eff54823c1d6ce36a91a5255357bbb57b8fede77f9c4b32fa28482f0937a0e217c5888defb7f1794e87ffb2a745b422a8db11eef1c79b16055b534654ba402b6f0c4ed80ed698ffb470ff041d37ac3f1ec94ed8d14eb2dc67b6ce37870700f132cf552311c09b468c8648fd186c49e6f7036600cc432e668d93019ccc9748f265468ad58d7258d5ca3db1e936407d49a7e4f7078b8440a0dd51e7b3bdb9c3c7885c6ad1122209c24b331242b8c0d1c1db5282dd898a634b242ae86d40d681138cd4b1a2fa9dc8a975ef90a9ffde88b6c6f66042a1e7fe429944c512210f837e3f510f0bfda7a1f3eafff6a8f79f8f5c3cf95883054acab39de3ba6d90eb9abd0ca92edc48c7b57b877ff030e9a07b4b2a62d1a5219813254b541a030de518786a65194a665aa636c29185f6c89079ebe4cf1ce305f6af21c66ab1a9d0db0e582fcc8736eeb1cc82577f65b8c5ff389a79ee7c1e207b83662b568984e270c26317973139180ca0571df2152c97251b27731c31a435d4854a2c9eb964b9b113986d5bc653bdb420c34c629341623e6bc77f05dd6f531afbcf143b4dae0fcf655ce6f5ee4d2de45b4968487b80510a2abf21002a2fbe4c39ee07dc007df55f44fafc2bf69359aa606a1b8b0f51887f3dbd4769f81d2cc8a7bdc3dbe8b701a2b4b308ab236f4c611934d497eaaa08dc8eb196d6319c40e3510786d196e1aa228e6783f50bb35a6161c1e5744fd04a5071cdda9d9dbc9180fc72ccb9c93e31655f5294ccea9fb017ab0e2e848d21bc6b461c1d1e18aaa4a70ad60f7b184c5a261304a51a245861a2b2417af3a8ad3c0fc10b6fa09c34d8317827befeea37a194dddd01fed206c6098ecb03bf908dfbaf115ca3ce2c76fbdc6289bf2ece3cff1c2a75e200888548473ae033a04aaaa26d21a29012465d120b5224e53b473ee6700feab151d42002119f7365122a055c2a2b8c1b23ca6ca255555921733e238d0da86c6956ca7038ad99a750eb66a7864ef125eb42cf27b88a865bc59515586776f42b17058e9e8c95d1a33a7bcef99ad5688d8331804b636fa6c6d0b44df50b94075ead8bf9d53d701ddab69ad44ab08dd57480757b7cfa3fa479810313bce194f7aa43dc9ecb4a53502a1255a594e571585355cd81db3fbd93e21ecb05ce49465c9a8dfa76d977cf0de034e0f24eb62cddec5094d932322cfe1f10312dd47478ac16048d3189c735807520a4200ef1d524a9490d8d6a09552ff5a0587b35d21ce8abb478ad61a1f1c657d445d43ecb75917ef625c492fab290b8f9219fdd873ff7ec5681c31c8622e3d7281621598af6fb1cac152b378a01151ccfed12934096569d1f22695753851b1a1375888131a3c5ead0841334907945b156d6d708d20728a44044a5b8155489571e7e088c1d0608f2d593a6077a7606bd7e0a4e2e2ae2608d83f00b10021245932c61b453ce9717c7444a4121a63288da5d7dc454ac7a38f059c53a017b876c0fce43ae73753b4dac49a84a9da201d6548a9102200028120f800b2ebe801f9b3ac4308f193561f7e02be52114dd37030bbc7697ec4c17c9fbacec9b23ee56a411c4fb07ece7c7d82c483305cd8f80c1b5b8aa699335fce99af2b564b816a3658358e78634d2fcdc89d25ee1bdac21344201d049a2a478440beaa99cb3e559372fbf62deacae305f85c130749b611a3ac43268aba0db495e3a03e21960a537ab6ce0d59150d79d5d0f78278a448534d1dc53cf8e084fa9ca3d9904479c1c6b08f6f6a1496811298754131de27b47dbc97481b706a45adeff2fd1b0f88549f27af7e9e34e9d31f8e88a31e4a0882f708290922e0acc51970a6e980fee961e5a7c978c0315f1da3554612274c871b780a86c900674b7082cde10eb70f6f12858ce79ff91c37efbe8ea2c7dd931f72581448a158af3cab85238a233636071c9ddea71586611651d4966ad5e06d8c51063f17c499410bd8deec9325810fde58b32e346dd3a2080c0603e8d714a664321a81ce2957016f03d64bb6461768ca35a7f72dd1d0b22c7396aec776b5c5747491c1a6a5356b6814c1394e4e6ae6479ecd210cb384c63510149b2266e54aea42a07484947067754024354a469c1c7f999dcd0b8ce25dbc031162b6a68f30194f316d4ef02d8b7c4694c4a8dff99ddff9d2435af2d3b4ce7b87b10d21487a5946ac63a49254f59a440f385dceb0ac98cdd7486198ade714eb438a5541de1e110d5bca55c37c59a0649fbac9b162c9717e847382a6b644fdc06c91636d200485af1559df319846544d606ba258342b149ed61bf2b547f808997afa5b8eb6b13869196ea494cd9ae063aaa5a56ed7643dc96023a66a4a621db33ddae3e69d5b54e69048195001d21a9578e64712a11dc642d00d521bb4541cde561034f355db51d526b02e2ca1f5b46dc3743261980dc8f303aa6686129a679ff914e3c936c78bf7d93fbac1d52b4f311e5d405bd712cb841004010fc8333e2889a31e49dcf51d3c9465cee9ec00834458c934bbc2bde2c7b4b621531b2ce72d6d288832cbc1fd15994c40054e9687a459c05887ad3c2e58b234667f7f89aea73466463f9d727bff01dbe787348b16b14e68ada45e421b72fa5b8a2851d445cbfc784d948e20021d02da2ab48ef1d2e1434729ab7acdc14149bf9740d6929bfb649124d49a225ad1eb4bd646e07d60b46918660352a1591525224df1c2a193409e5b9a00cdaa45590332106d0ce8f5625cdb72b87f074b8b9603f0735e7dfdab0cfb23eeefbf8e52296fbefb2a9ff8d82fa1feb3dffacd2f496909780e8fee9124095a2b0492b2ac5052764d3e044e57c71c2cee72ebfe5b2408445c32ea0dc8c479523d62301ce2a2234cdd50ad15e5da630a10ca800f98c2b2386cd12a6194f6e9eb146163fa63c9bc3a25e9795c21b976e569caa2a48d57180ceb95255fb40c7b9a68e0c99781f634a63f8d890681d255782fe9479a7259311944a4d3140f78d722d16829c94482948eddf3134619a848d01ac1609422454b3f6b49921ed2c608a5312e707a6c308dc73b8f45108423488740621a8b771e21244a41bfd7a3ad96e4cb07c8e0d1b2479a4df042a0fea3dff87b5fbafece2bb4b6e564becf7c3e6777fb3c22487ef0daeb2cf31c81e6c1e22d5e7df36b9c1e9fa0931527f323168b15c60aca72c6fce401972fee61bde1e46889f41952490c8628f6346d0b750fa515423ba2d8625a98d747547e8512016f0547b75b6ce1c8db395638d244727ad710ca94d196022339b7abb97fa7a62a1ac63b11ebb6824652978232afd063853b5b58ad40441e07b4a121edc744b1c40b41aa26a44253542bf6c603a2482023c3c628416a58cf12f23ca0bcc4fa8e2f8ffb2959344058686a83c3831764598af40a5f39daa6a6110123a058e6ccf303f43b6fbf830f8ef5fa75a4d4384e684d60bd5c1370dcbc7bc2c664c8babecb2c3f60d0ef7332ef58c1aa9cb3bbb5c17863877931e7c6ad0fc87a8a38ee11456374dc70e76481121ae324455512bb3e892c7118565585091eeb1cbd2446e6111115ab7c4db613f05816c79232f788d0e05dca6261199e1b93254baac6b0ff41ceb5a736b9f3c129bdfe9024ee019ed058c6bd313ad588c853ae2d562cf141524b43241de3812253318328224a1cf3d31ec13b8e8e055e26acaa1665244de31049a0df8bd156132bc5a26c48644c2f8988b5c2150d8d10843650044b1406f8a24436394919a15e78f1335f72a1a5692b6a57d1eb3b96c509b3c59cc604d68b82d3f58ca38335daa7548de0eecd9a621df052922f05d819e3de1ebb1b17d8180f682ac9c1f18c4c6e329b55946e892b2274c8e84f5bd082b4a7299b96b686c63ae224c679105e23ad4265926a29989d34b4ae254e15f3d38a2687b2a96985c19b40ec06e8083009556e198c7a94554d9e7b149aaa2ec8c490cde9109216250d9bbb7d7ab1c03629cbf59c74ac48f490a65118b389f5127c44a4522c2dd3c910613bc9368e525a6369ad65920e89907803aa97e1a5201302973a826d10da21128db5163d3fa8b9b0b7c7b31f7f82612fa11f6b9c4a489288c9604c92f6a916336e5dbfce70638b9d2b9738385df0eebbef73e7f43ab3f280a5356ca892417685a393130e1e1458a7d0c335c989c0fb01c920653e6bc9579247b612526f39cc2db110f447438aaa6271ea990c120eab35516ea9f300444422a238f4f854a1d30657496239403435956db9fdc19a484a4414f0bac6fb801481a2cc51bdc0786bccb52b4ff2e8e567f9d11b5fe660f580c9b4cfc776ff1af70e6ee3e54de6b38232f409614d3aca084e92e71599ee616a8b358224498948a99a9a49364688800d11e3f198a2cc69ab0ab9b349ec7a2867c9ed1211eb6e47bcfcadef84ab572fa39178295021105c8b0d0253d5cc0e6fa2db25c1d42c5bc57cbe24dbb8884e7b9c9687bcfcfa4bb8daf3c8a52d362617180fcfb1581f50db39bb1b3199da204d238c51bc79e34dbccab973e72e32686eddbfcd7c65897a01494c7592e093054a29ccbac16ba84d8bd611e4b02a1a7422194d3490e2d635512f62b00dbd2c669917f4fb195bc31dce9ddfe5fabbafd2cffafcfa7ff09ff3d6db7f864a7be8c471f3ce6dca7ccd783a80fa19eedcbbc1e6b9c0c191a7a91c837e4422351a8d0890e818e92549acd9dd1e837024bd84755ba188d1c4648301765eb076158d768c2584da824e89d218f59bbff6852fd5cb53eebdf55d74a439fae05d0eefbdcd703ce5fe6b7fc178d86772ed598e576bb2dd47685dc5683262324e78eae9679866439eb97a8dcf7ef217d9dbbb86d609c3be627b6bc26a798f54261c9ede66ddd6f47b1b1476c53c2ff9e28b7f931fbef3238474d826666fb4479c7a882a1adfd256012103512c31adc0d7312ad148dd478b31bde106c43d06c35dbc18809892c657e86797714c1061c4b9cda789a209d83ec14e39383ec0d686733b57385d9f328cce21cd846a0587872b7c2bf095c42e0dca47ac8f1b6ce57026a08442484ba4055248e64541b082348bc89773ecbaa18e3dd239540c320e58129c1554798e78e3bb7f1cb676f658dd7e8f734f3f4755e428ad904a90efdf45a53da6579e64b55cd21f6f7170e73ac139948fd97bf223d8b6a4cc6724f188c67b8c2910c1b3281e60ad2403a486376fbdceb5c77e813ffaf37f88332d97b6aef0c3b75ec55bcbaa743c72fe129ba30bfce1d7fe88d25a2824693c211e5e66637295e1f832321920b38848f7f0487c90782f4963503a2578898e23a43004015a6a94141dd391824809848e68ab1ce197c4aa25b2967c7ec0f7bffbc7983227f29a7e9a10494f7f9c219380ca047114d3139289eab1df2c114e31994ca85230ad23d8c02456a4590fef3d615da04609ac02c6d4e89e4e698a539c8e983d788fcdc79e4329c1e9dd9be85411920ca56336ce5d023c5b171ee3de8d57188e4628ad916a485db5d43610270991ce48071983a64f92ec70e7f62bdcf8e07b6422d0e4eff2c4a5984bbb9f80d6f1b1277e95e5ba64516f73f3e6ebfcf2e77e91fdd55d5e7de32d7ae34b6c5cfbbbe8de1e69e4e9c5b06a028488b89711a7194a4b648811c57d643a62315b32ecf750ed8a68bc8b9309ded418d7e90e8db104e7102181b0cdacf66c9e3fcff6958cfff4b3bfcafd1b3fe0cd6ffd09cdeaa013ab82673488287c89a9002dc84603d25a13477d56aea65a5a9ab261777393755dd36a85b1255ba32958834b2cb18a10f7de7c39b86010dea1e3115b8f3c8bc0e19d63797aca70730785c5eb04814278cf6c7ecc68b849a405c6d5d8b6c6d812e762469bbb086f097681f33ddeb9fd06c3acc7284d180d079ccc0e89a314190251dae7645172eec2e3fcfe1ffe43764703feafaffe29567d84f1ee2f80148c86238e67a7dcbdf51e663d270a154a7994b44819ba2a0d2dbe91f4476396cb198da991518c208210619d476a4d1011014d90112a4ad9dc9ed08b13185c62b2f70897b6fb8c534b75f41af35bdfe1e0de3be475c3f17ac974dca7efe163c939eea40e95094e960f7091844a30d998b2ae0ba412a810318ea0d015fd24236d1ac4f19dd7c37a718a42333977856cbc05389c87a0348280f00d881821342148acaf99cfefd25473da72890e35d9648fcddd8f22548cf48e604f414c286c45960c689b1cd91604d7d018f0d631989e8338c6d89aaf7fe36b7cedbbd711c34fb3ac3dd3d184fbefbdcee2f8c7ec6cf4b970f102d9b8df595478029a486aa224422ac1ad37dfa72e4a927ec660730382440868ea86b49775939d7538ebb0cee18ca5a96a9a6285730175fe0506173ece70d8677b92b03bd2f4dc030edefd4b6ebdf53dda72cd603022e0513dc17ab5a6adc166012cf4a3841683902089912a9017a74c2753221710f9ba08d8ba939274d4b9bc020202a162845004bfc279817511499a0082b65ee3ac41e91821245a2a441413444006f0768e943d3c11488903a40f4801018f77012be0e0ee6ddebd738fb7eec5bc7f68696b4b702d076f7f95f397fa0c06e33313d403022d054a6a94d6e828466b4d5b579cdcdbc7989638eb118f2628e1695a439265040fc1399c77b8d0edd6e03d048dab6b848c58cf8f09d34f307df4e749e3982c8dd89846ec0e32a6f19cf9adeff0fe9bdfc19882c146ca7cb1a4692dc62bf262414fc5acab9a244bc9fa7d826bc97444e425cbb242cc66f3509505b6aeb04d4bd2cb88b24ec856714ca4630225a669a96b4196c6a4599fd6d6803c73140202ce162660adc5d92549dc47c81e1e475595246976e6e404f2d58cb7df7f9f5b0bc3bb47538eeeaf8863c9d1ed57994473a65b3d6a1b70c61382c75afb3306e899800e3ee0db165fd4b46d8348225aa1bb228834de77b67508be33567df8d04d521e44b038112122895f97f8d1b34c1e7b91388e48a39838538c078a8d41c4f951c9fcd6f7f8e0bd6fd2da05a7a5a5ae6a14025f7baad6d1cf6222e518f61411922c1de16d403cb877af0bd0c880372dabd592b8d7238e3350925ed2a3aae6c860a95b897796e168429474443c8a156d5d118420d60901870f81ba3a22cb4684a0f1ce52e46b7494727272c26030e5d67ac51b375bee9e6694b312644e79fc2a97f7a658ef69db16673b8bc839df9de4a17b7c68edbbe009d6e3da069a9610028d35148d41c7c9d94e80101c8140f09d711a7cc01883168a7e3fc3788f40e09c471883987c8c8dc75f24d2314a0b94d6c4b1a2d7d76cf42497a735f5fe0f79ffbdefb3ac5714eb25ebc51a95246c6c6c304c12b6867d863aa14d34a3518af8da3fffdf83d682e03cc880b186284a9052134420af6a8ca9694dc9e9bc617b7bcacef6186703ad31a43ac236254105f011699691a43d9406a9628e4fd7eccf72befdf22b3cf5d4137cfa859fe3adbce5dd930d96b7977807f9f23d76fa0b26d309693fa65c15040fd65a5ad3e09ced003e03dcdaaec28d3158677145455316c471cc7c9dd3fa00be73871e2ecac30cc6438f5429850c30ecf7294dfb13ebce39a4d0a88d9f67f2e8f344914609491c2be248216345120b76c78abd41cb6cff07dc79f76dca6a456b5b6414e8f7122e4c47ac4e0fd00426ba8778f59bff4f105a4370282970ce82e848b9b10e4ba74d4b65695639499221748cd4292a8e996e6e912409b57524498f341b12271a2534a78b39fff33ffaa7548de1d1ab5b3cf2e815bef9e3bbb8e1f35c9c0a12bfe0dd5b473cf378cc746f8b203c2104def8c1db2c4e17586bf1de75adc87b827f58d11d80ce39bc75b8a2a4692ab4d6aceb96d607827567bb207cf828844076163500324096a654ce744f7887f092e01cd6d68caefc87a47b4f91205191248a24320a4452126b18f452c63dc5b9a1a71f374853d0362b6cb3c6b635cbd5115bb1c5340bf4feec1469218e62aabaa635358240a413d234a6319e74d84328c1d6ee15363677487b53fac32151a43fcc33acab9a1bb7ef61da05376e1df0f60787c4499ffb458fbffeef7d94c6c0fffb2e2ce34f71ffc7dfe2577eeb73bcfa5ecc9dd3c0e1fd97f9e2afbe483cea639d63b65a75cc20387cf02005120542a38423c880310e632d755d826d71b6c5398fb12dde0341810409c47142a4145a6aa48a400662a50952d18b63848a083a22123d9cd0581163ac422a45d934b469421c04d259821068051ec93a6f581782e319447144126f13a91d222d988c35e72e44486a86277f81f8f23ffe47210447aa358480f39ea26e7001149ead0b97188e36397ff932e7ce5d20493a661108344d8b9092e5bae6c6dd43deba3de774511154c6f1d250d596de70031dc5ac5b8929720e5fff0af5e226213ecf7a6590c272f1bc4527119f79f1b39c1c2d393d98e382c37a8f4022954248890c0a2d22840e08d169ce8d6969d605c609a27e9f7e3604a5e1cc2552522354425011426940814c412578a90932c6a3303ec23b4fe72749bc8e48b144344c467d64b0102cca3ba4964c37373e3c98b592041fb0ce635da06d0c756308384cb9e68a7e071dc70a6f3deb7cd94d7b52a0054449ca687387673ffe4936b7b73b8081d63bdad6e3bc20afe0745d723c37dc3fcd5885049b05f2a20115e86f64782128ac432b30a6e2f2332f60ddcff1a397ff92f9fc886b4f3c8dd87e94e9ee396e2f87882c267d54e3a1a3964882e84cfcd0f14ecabac2566b86932d0651c6503aaa55413ae88308dd7b42e85e2f3c52044410046ff14e6081e045c7443c786338bcfd36c5d11de274c2ded39f04e9295d407881c82dd57a46341c217d841096fbf3078cc763bc73b4c652371d3575d60092380ef45285f48659758278e94ffe5988a4a4692d0188e201d3dd3dd2f1265b3b1bf4e21827c0b68155d9b0581b66ab96796158d79eaa09ac4ac1ba6ac98dc25a8ff3e07dc04a49081225c1964bb2d10864d4b187aae0fa8f7ec8ad9bb7b9faf4c77191e6da938fa250d82070c19cf5e2ce97f7dea3bc45fa8afb6fbf46bd2a199fbbc87073171dc7d8d6227a3d82979dff195cd79f0338e77167bd5af800c11382c0078f72065f9cd0164b8c6de85655a07a637ad3cbf80069ac714d858f6222401268db06a525a9d6645a219444c582484b10012d0c4a4a5647f77876b48f78e5a53f089180a6ac295ccaf6e58f70fed205966bc3dde39afd99e164d992378ebc96b4c61384240849631d8d072702222834a0a42208819402240829c036601c712feb4e2021f1d6636d4b59d4acf29cc1b04714670402ce09081ee73dce069c0f581f688b39c5c93d4c5d239ca1750eaf22fac36dd2de06ad901f56a938ab58d735ecce78f612194c979b0b02e1cd1913f1241a26e301eb7549e502bd7e4a4090465d1baa8b12e2047db65b7a89e3cade26a91434bea56903de3bb494f8e069db9afd3bf7d88a0ff93bbf7805bd5e39f61fdce2d147f720dee0d5f74ef83fbf7e9b526c114702ad354ac518030d012524ad97b820f1219068d50d2d3f150911322065574d4104aa72c96834c5fb871359974e0d2190658a341de383c33bd3b9174db708d6199c3504e771d6d3b40e2706589d2231b8e01001168707087184b18e1004ce7b2ca6cb5a9c811f478a411ad34f14128d140a2f3ba08395e4ad219f6bbc9714b5c36e8e998e47c848605dd78eb433f4334d966ac6fd04616bf2d6d29cd1cfe03dcbd2b05ae75465812edee7852f3ecd30f16853dc6773aac90613ae5c7b96e2fb6f32d49ef9aaa4949a2c83580796ab3575dde2bc27ea0f188fc72459843b1b2244903819f0c6d3960d6ddbd0b486a6a929e7a72c06739c7580eb0e0ddb011bbcede89beb5a45e4da0e1c1110c181f7382199ad0a4e176d172126a065603c48184412e36a74dc8333ce6c1d34b547004a0b0892c62b9c2bb02e6690c64441a184ece403e111b1a7b516a4629245d475453d1cd3945d505e88847e22b972a9f315cbb2265f1b9c0d94eb350707c7ac566b8c691078527b9fffe4573ec1d58bdbf498a3b77612828eb1a1e1fb3f7a89dffb83d771836b5cbed2e3f8f08037dfff3187b7dea1298f70a645e191c9009d6d70eecab34c2f5c43e998aaaeb06d772a07e911c2232d381c4dbdc62eb28e27133eccf43d0caeca3340d55952ca8740c09d35e76ed41ea7d0c6862a5894eef494ed410402646148b5e56162b62410c7164f40284908e0bc42394f681d2658bc9068d56558a41044025414138420684d948da0cdf1d6818ed059c2b9ed5d82b398b61bb7abd59a1b371fb05ace1141a269d0c22143495ade66ffce98f7dfbcceafffcd2710affcf9ff125a325ebb71cc3ffb173fe420dfc1c523a603cff19d57c94fefe1a4e3b14b17b970ee02d920c15bcf62b9e4f0e884aa910c369fa1bfb94b080282e10b9fdde3d927b7f8dd7ffa7d8e5781a6aa502ac1058b770e84444a7906f419a80f7508bad452f73d830f20e892f6c678827288a0f12110451aa125d2b528d989fb5d0beb380a671938211584081102882e022703042c5268b4d2e848d37a85f08ea638a59cdfc5d50b5a5fe31d10f7d8d97d94cb4f3dc7b94b8fb15c2eb97efd26b62e49952596a14bdb7a4f2b0cb16f4109ce4f15fff1ca68c600001b9049444154fd6f3f87f8d1cbff2a8cb7aef27b7ff012fff26b6fe15a439248e6fb6fb05ced331d6ff2ec934fe0da82a228f122904609a38d09bd7e9fd53ce7fd0f3ec0e873a8de054488d0a246d2d084080f58d32254d401204207c6d975047146d938e3a43eb8b3d79d4560cf626a926e6184b008ba935d21504ae26c8dd0090281179dc025fdc3c49523088d171d1727740aa27401af002202e0f0b4d582f2f83a935431998e885437498ae059ad4adebf7d9b562ace5ffd3493dde728ab8a241408d1eddc4425a4fd3e516f44a463742fe5f1cbe7f8f8950471e3cd57c3effdcb57a8f436b31c5ef9d6372867d739397c9f9d8d6d2e5fdc61319b311c6d70edda35eab6c6d996c3837dd6ab153bbbbb0c8723de7cfb2d2abf89ec9debe851f078ba6d695b838c628c0b1d802220a5408aee869314feacc2031270dee2bdec009512ef034202b80e742110b21b48f0e06c83d4094186b36a5684603bc937083cf227a942a9b1d68114686189a4c47b41b1be05d5031ebd7899bc59932fd7a469ca60d023cf73dac6309a4cb97770c8c1d1032e5e7c8168fbc94e3311926c34a23f98800b046b316d816f4b8c59d38b5a7496f4f8f64bdfe238d7f82011aea458ee13ab889d8d11abf9925f7cf16f509994479fb8ca97ffc9ff467e7cc4b56b57b8fa914ff0c6f5d7298b86271f7f9257debc0e3646ea29492f231bef222514ab25d96048f8a9db4c0fa72a11c0bb8e82793aea071eef25beeb2c88878290efa8a50a67f719644009419d1f23bc201b8d0141f0aaa3913f811779962cf442321002bca7c867346d892b66608f78e2d14739b87f97bd471ee789a79f6575baa0c86bae3dfb0c17ce9fe7bbdffa3adbd311de3af6efbdc6d5e1189ded1084c39c56cc678788e091b4101c8480969ef39b7d74d91a7677faacf305d6399a26a7694ab6a753f272c5e73fff458e566baebff65d0a2b79e6a39fe0e5afff31e39319e974979fff855fe2db2f7d9d41bfc723172ff1feed43a261469537d4eb055274712abb3ec27a7f265b3ebcc6f1132c7ce8b6354a20822378813bab642120f880909d64296cb7233ce06520184314a5d893022102ce75fd59d271691f044a6902012904ed999eed9d07db52afeff2f453577970ff0ecf3dff59e2f116a9ab78efc18fb8f1c12d9ef69fe7e2a39fe0f35ff8db7cf79b7f821092d96ccef2f80e1be732e4d92923bae11def6d6754048fd4f0a98f3d858c95e40b7fed7922e5d01a9cab117846fd019bd32d2e5f7b9a375efd01c5ec0ef9ec90f1f83ccf7cf479f63ef939565b4fa0d488a79f7996a3a37b6c6d4e91944857e0cfa643e73a4661ab06ef2dced9338dd9e1bdc33973c6991b826da16dbb0077a8c11bbc31b46d8b755da0d0d60d8daf31b6eef407e7cec6e016635a5a63b0ce116c8bf0e6acb21cae6df06d8bb5673fcf1a5a5350ae3e60effc84c56cc6d52b9739b87f9bfc74c9bdb9e052b4c9f34f7d9a277ffe17b9f7febb7cfba5bfe4f32fbe4853954c2643caf218ef2abc6d096d4368736c5b604d8d7735849a272e8ff9f4c71e471f1f1e33ee0dc8d214d174a948458452f0c8a357d9dbdba63f1ca011d445ce8d9bef90f5b679fd70c65eaf207eed87f49eba4a6303b669d91c4d99ad7242a2ba8a3a2bd9c65aa43fbb1f73b675017c78d81fc0d0b5092f05b86ed2420a84eafab4770209583c2d0a68504242f0e820114ae28243fa402b044e0a9473180221744ca3631d0a2fc1fb86b69a331c3cc5c1bddbec3efd0c27fbb7b9f7836fd07fe633c8cb8f736e38e29def7c9ba74feef09ac911e92fb13d1d53d62debaac05b834320bc4709babf450682108c87199ffb85e7083242afd7258354331dc61cb62d49922265d7e08d09bcf5ce311f7fe15758cd2bf2c5031e1c1bdc5a726d6fc4c18fbf4feb0aec7ccd783466b55a319ef4395d1dd2efede17c675b85e011da631b7f26c03b10dd36160f013f031b7f26f484d05dbe7120da6e285252e14420784f081201675f070c5527da29894602925638f067172e43e806212452740924a1d68cb2188247c511650ddf7bf53a1fbdf008499c70bc86c3c592244b314a20da406960bcb98bdf3f46461aa5154a74b283089df4a0cfcaab0bdbb498f204dd1ff4689b927fff973fc397bff2128d49d1521110ac966b26938c9bef3dc05725bbe72e11e431c56245a237f9c46ffc7dfeef7ff2bb6cf55254dde29c234e22ac6da8aa92877eb50f1eef5a22a2b3115de3cefa1a081e5e935441e0a4e18cfd11798190ea8c5d846eca13e07148ba0af5feec60f4a2bb762644b75e229c0947a08444d201ddfd3e83ee8f886d43ac20088f4a125ef8ebbfcce4ca35721b931f1f5015730270fed214f1d8dfe20be3988f7cf2795efdce370801a228c29a0a1f245a5886a394d130e5fcf6946b97ce71e9e20e8440e362b49231492278e492e0b7fee3bfc1db376ef2f65b1107fb079c9cecf3b9cf7e146f66fcfeeffd1f6c2f0f49767f8ec974409de77ceffa3dfefe7ffd3fb0b5a9f99ffec13f607b678baa2c8885409835d65408df0216610d75e8689ce42737c01c3fb944ea43d752a5909ddb13c00a81f49d806f25083c519a52d50dc209a244d19af0e155b38787ab0c5de38a0220c185ce33543a224885a91ccecf4158322dd8af2a6ede3de2f0788d6f6a0ef7eff191a79fa33f76dc78e32daaaac1b92dae7ffffb1c3db8cfe630a667049b3dcfce4ec4959d5df6f62ea323419625e83826eba7444a53b72ddaf90a1f142a89d8dd9e90248f30e90baafc09fee2e56ff38f7ff77fe5bff86f7e1b2f04df7bf93504969baf7f9b6675801a9ee7fa20c1950fa8ab86f1b0cf9b776ee3db92e06ea3a5408b2e5f21e3409020ce38b40aa29bda94ec8642efa99b1a1d476763b843494d6b2d2aea861a47376c44a1218d044e58940c64d199b015fc1955ec3cc1c6b4dda2f98edcd9e0c0766640aa526a6b6883c786807016d5cea8673778e395ef6383e0da732f30bb7f9f0737dfe4dc638ff16b7ffbd779f91b5fc5d23248343b1b193d551379837119453903e949d34dc6c3095a401c2bd2c1149dc53d6c806655319b9d9c91f306ef0d572feef1bdef7c9be974c27ff9dffe573456335b5a12f90cd63dc1b31ffb14f57ac11ffdfecb8cc71907fb076796ce88348dcfcc02cfb03f224d53dab639e3c396388e69db1625243ad2186b69db96ba6a4104a248755ab4f71f5e7874cea3759737ee7a60777b4f9e5d3bf3e12717df8baa268e2738e750677a870f9e2449ba9c4710b820b0ce309f9d321e0d79e91b7fca7ff73f7e896ffec5235c7ffd6d26b167ddd3fcadbff71bfcdadffd156ebdfb16dff8f33f258d2571a4bb03dcd5f4f49848c5ac960b26e311b6aa695773e28d31759563962de2db5ffb66004751e6acd62beaa6a1c8738a754e5154dc3f38e4fa3b37d83e7781bdc73ec6f39ffe244f3df308fbf70ef9fa57ff8cbffcfa9f9128c5b9dd29b6754449c4b09f31ecf5e8f5529234214d539cb5981090b2bb405a55156ddbe2bd454a85730fa7434f9274af1752d1347577c0688d31862ccbd05137be277142d334c800cbe592a2ae180f06b4c6b0582f504a12c759f71ea9ba56e51c52288207171cc6584e4e4e31ad63b15a920c37f9cddffa4d9effec67f8ea375e6373abcfa79f7e843ffce77fc0bffa175f617314331df6505290f67bc8009b9b23b6479b144dcdf9dd5d948224915cb87c0d1f34691c21befb8daf85cec2b7ac8b922ccb3839390602d53a67be58b158ad78e58db798cd560434420bdaa62278cfcee6842b17ceb3b3bbc5743226ebf7d04ad1ef0f88e2182961b198a355441c27c45946591414e50a82a3df1bb058ad8863fde182a8207080f7026b5aa4ecee16fae0b1c160da16ad35499c9ef57cc1e2f4142941a7194d63887b31c17a4c63904a22e38424d134eb1c8243441175d5628de1e4644659d6cc170b3eb8fb80ba95c449cc70720e6372962733e258f0f8b50b7ceca96b445a639a9aa49722118c467d501aa5225c5bb2b7f7282885695ad2b487d211e29d575e09ce39b4d6346d4d59576469d66d4fefb0deb23c5db0ae6b9cb314754514470cfa3d141225554707b5228a34f26c12733ed0cb32ac35ac8b9c2ccd487a3db22c66753aa3d7ef53b70d6dd3107c204e62a4945867d04262ce069a10026ddbd23415a6ad081efaa38c34195055355276a0445a7fc82eacf128e10902eab661b95e32996c13c511f3f9117114d3ef8f59af4f38393e623cde623cda20e0105251568ee57ac9bddbef2375cc703864673a6130189246313a8ea8cb1ceb1d9bdbe770c112ecd9c4a02571d2234bfac820f0c2128240dc7efbadd0346d27bac70a63ba8c83d68af56a499224b4c6d0dacecdb0ce13eb2e831782a7284ba23806eb08c12223d5fda3eaac7f2a417b1650196fec203034754559d5d475f353598bee0f3d3abe4b3f1bd0eb8d90c1238420493256eb15014796c467e3bba4ae1a06c35ec7587c27797654dca184a3b50d47c7fb0c8713d278441469a238c619830c011f043a8af9ff7a38af5dd9b2b30a7f33af5461c7d3a7bbed76000be1e7e09e17e05d7830ee90c008c916920da251ab031d4ed8a1d24a337231abb92e6949554bf58731bef18730a1b52215b8fbe413b4d0c494f1614117434c01443d75b41d76e494097ea5ddf4906a56510231873a428a82518e9420668f360af1d59fff5c8c95d77558e0fd5ac1411f28b9362e2515b15412531b839f175ce3904a91a939bb1223d3f11dc3f61ed3b424047e5950b24a9fe365e4729ef8ed6f7fcdbcceccf382d6aa8e795a9162be2e3030cf67428a386b388f6784c8bcbc3cf1bbdffd1e4921848c945594aaae8da210afd7613239268c759414b88c27ac6b70b6f97f35420941cad4f34814b4d1c49869daa64e485920b5426949161a95abd42bb5a42441cabe8eee3963db8e12abccf07278a16b3bb4b34804c79727fafd7df5efbffbafff2ee7e989713ab3dfbc258b6a97a7109019e6e98cedb61455b0d69172fd41b43284182ad4981252c0e9f482ebf60c5d5f8dd1b0428e142aeba6b4bab2160a1f22469baa1dabab4014334215624c7cfcf02d4a3ab637b74804ae71c49028b9e2b06db34549c3f1f44c5c677cf0c4e451c6727ffb29d63914a094e0783ef2eefd37dcdfbd61bbb9e3e5e5039bed5d157d1048add9ecf6e4589f5fb444cb6b92382784d458d3f1eec37734aea36dbafa7da4402943a470faf8917eb7e1328d74aea5713d3e468428641f10fff9afff54faed03fef24a8886621ced6620ac17424c9ce667c2321352e1b3cf7e8352861c53ad3f79665dce08dd636c83569a699969aca5e480d18ab6751c4e27d49534fd794c73ce915324c588319654242906421819a70b3967f6bb47a4aa33f2ebe1196b356ddb72394db4ad633c1f59d603651d51baafaeb9814fdffe35ab5fd152e04c839212a5143106620a4cd385100aaee989eb4cdb3a521618e5408bca5c0b816b1a522e94b422a5e67cbeb0bfb9adbbe5151e52cdc0f9f84c675565582e238db63837e0fd859777ff8b6eb7e89685f1e357a8f606dd5bd6e942582b7e2544a18444ef06da6e8353b69ab34aa2a4e4e9c30b3a83d9689c6b505a61ac2193485180903cbf9ee8bab6bae2b98e75a9cc843432b45ba4d1c418304d8794012d0786aeafb695805c123eccc4b4b06dee01e87b4b2905db34b4ede7b504a85a9fb7c3801416a3ce7c7cfdc0f066f7f31d1ea45458a950433d8ba18c060cda36a85c28c12393a278492043aed8f09a56ac6bd9ed6e58d795922ad7b1dbdd10e633eb72a6730f9418283e91756659cf480a4518441168af06ecfd0e2b0ad33cd10fbbdac41a473c793e7bfc35455d39e89449258380758d6cf66fd1aa2e1be50a470aa908eb82948522057dd79372a214c97cb9d4512b498c06a31a66bfe0a723426494b2f83021658b92922212e3f940ca2b7ddb5072669947a679c4af2b9bcd0db251a492701984720865f0eb4a3fec91d22132bc1cdfa1916cf76faa6313024e28c23c9142216bf07122cf2b9bfd8e903c320b969450d2b08c53351f9c8510af346be0f5f595ae57b4c654b531c166b7ff99f8a1c4c4ede3237e9a105fffe5cb620dd702afc939e19aa602de5749526558d6b5269db4aac27c1148a5f06b406b8d5011210c7ef5bc7bf78ecb38d36d376cbb86beb7bcbc3cd1f55d05b373e595ad36d8b625fb99180252839f17b4b2c45c38bc3ea19464b37f20a74211b9260d7266b37f209130da553d7a1c69ba1e6d0cae690831f2f2f281b76fbfe0e5f523719eb8bd7b53f18894293e208c649d27b4312015ebb9661cad1b904a30cd13c3664b2e11592086aa3a66147ddf335ece15eb955716300994b3c410293ea0aea296d402f1f19baf4bc80b6919399e8e286dd9ec1e18c785526a93bb5c9e514ab2bf7d5b5f409c41e81a9750123f9f0931d1361b728957107d2189ccd058c6e9cc6ef380eb2d3164a492accb881286a6edaebc5aaa5655cc1c8ecfacebcc7eff488c2b6bf0ec6f6e50aaa16d1caf4f1f91aec50d3dadb3accb091f32c376cbe57c629ccef46e5b9bb6940812e3e5841496767353278618b16d73ed0b11292492ccbc2c0034b641b40d25ac68671145915364be1ad4d6689c5295bacaa00448a508315f452dc86b20109046a29769664d2bd3f9c0edfd5b7c54041f5122f0fcf107d675e2eefe0d85c2e1e927a4683056611b454ea93695ddc0f19b6f199a9642625d3d77f7f7f814d040db6cd0aad29f15304fe428706dcd9fd47342d5b3ca696599ce6405a669d041d2b50d71f524593dbfede3e7a430119791690948ad699d25fbccd3fbef58fdcaa5bc4769c3edfe13bacd164c537515ab104aa3544ff49e982196c232564ddd3807d792c56a6afebb6bb1aef699a66b98d799cbe985d5b4ec873dd26a48f532a41419a575d5c91d9428699a0de2ab3ffdb194ab03edacc618471192e06704d5bbcbb2f2693905baed8e4cc10849084b157d70185339bb791a6bfec534f810902520954649c9349d787afac0dddd2758e758d799f6ba46a30c2146c23c21b5a6e91ba669461069dc969433ce59b2903cbd7f4f632dc62812d0741d719931aea548d0daf0eefbafe9ba966177cbebeb0bc36683b32da40ab55bd7918b444a982f67e2b2a28d4519454c999212596bca78c1b61d31458a14346d8fd60e3f1d50b621cf91982f882c715d87d68e2ceb84a39400a9d14220befcf73f94beef51b65ec84a61659ccf48211986e12a964b524a1867115aa19d25cc0bda6852494c8767524c0c9b3bb4967c78ff3dc7d32b6f1e3fa7691aa452d7f9bb703e9f68bb0d4de3ea69cdb82044e1c7f71f20c3c3fd1eeb5a10829424ab5f38bebc306c7bace9b17dcfd3d37bb67dc36e7f8f8f81983d619c984262700d85887116d30ce4b060db8ee71fbee7eeed67ac29c09a2bbe5b26a4548471e470fac8b0b961186e91da20458de8fd6c265427591043c0b886e8579a7e434919d32aa24facf35c391555c17921415b475a57c4fffcf10fc539c7e447d610e965cb8797ef797cf3966ee820db8abda684710a29e53507225862228640f6238d7335325c324a2994d48c97034e39facd507dc0ab8c99538d3df865a1884c161abf2e280d5db7a91c5f4eccd34c588f8ca72712866ef7c0667b876d2db2c41a530e85f73f7ec9b21e78bcfb8c75f52034cb72a6df3e7277f7882f60aca2dfdc4008f875e672bed00d96654e5c2ecf150f43e2dc0e1f03d6181aeb70db8e12564acaf52ae55a9305824ccc0952c1f53d3116b432287d452ad2caf932b2ae89dd7e83f8ea4fff56924f3cbdfec0e327bfa2ed1a8a12c8a211421063a6148f314dd541acc2688b7196e5f84a5867c212d06d53b32ceb82941a29157e3d61a421fa3afa99b6416b89d29a357a72aa1cb3738e659aeb3412abd6723a1f5106a6c307760f9fa34d4bd36e59fd8a5496653ad334961c2314094a737cfe896ed8d0f47ba4aeae8db503d37ce2eefe81d7f73f71f3e6177cf91fffccb0bd637bfb0808a6f305dbb564bf62b421fa15a11dab3f305f266e6e1e31b60169c8c1a3ad242c1ea4a2a48091ba8a60b2a08da5b50e990bd3328314b5375ca613fbcd0dbfd8fc0daa165ae23c12f288321dae1d58c785d37a822cd80f772cd385793a2185c46e06741b31ca540314b0a60a45d6dc70be3cf3fafa13dbcd2dc2188c31f835d6cf6dbdf91c62c0a8ba59a10da514eeac655c176c1b888bc7357b528c744dcbec6736fb0d29264a06e70c11c5c3a75f70391d10a5a095426b472901bfcc04ef41489e7ef88e9802c7c33bac7128eb1886961412b66d28b9f072fc809092b76fbe20976764d3d0ed6e4118de7dfd35c3be655903a6b52801a97884d1e4d5832a5c8e27ac31686beba1c194115ffdf15f4a8c826ed82080e972649d5f312874dbc3557b284d4f5c12ca40f6137dd363ba9e14125a2b72a9e5a5dff5e498f08b0724e7f1842c85140a9b6d8f6eda7a5e3204b4b1c490508dc5aa722d174bad734896f9cc321d4829a0ad65bb7d83713fa77b2b072d8d659d2f2c970b45086eefee2009b4d54c9791c3cbbb2baf67b9bd7bcbe2234a445e0e4ff4db7bfa664b082bd66884aadcb436308f63cd4eba01670ce3f44a8c82cef5b8dd16bf782e87d3153ecfa414b14a5eff45867989086b31120eaf4f684aa1dbf5f87926ad23c98f74d6314f2f4c8733a6d9d30ddb9a2729134f3f7e835f16bef8cdef31a6d6e254220283758ee803d3349311f4c386360d2005d31ab824d8cbaad019adaa8ba280b412634d0b344a73194f1c0f152ceffa0d0f8f9f23948254083923514821504a9143c22f0b97d37be27cc6ca42b77da414f0fe4cc99e711af9e4ed6f40198c13347640ab962c0a5a786cabd05ab17a4f95e135ae192a1d2b0b6b88a4acf1fe0279a1e882129ab63594ac8971653a2f14d7e09c65bc4ce42cd114a2844677e869f514b1927d22144d280df3782061b97dbc274e17d6f347869b474481bb87cf695d8b1d76a85289faac0cb61d2a9de36b53f021308f33abf73446b3710d45444a8e350312023f7cf71d8fbff825ca18c23ad1f73de7e94c2172f7f809311594548c87675cab19c719d36ee8fb1d39664e97099d33edb0a7ffe50de20ab917295997c0341e0969c1594b4801957c0d1d298dea34795d385e4e74dd508f8a0881d612212b26218d259748bfdb228e99653a9193bc6eaffaca711794d6f4434f2c19d3982b072ed15a928bc0a882fa87bfffbb7fbc7d78c3f1e5094884585529ad343ffdf025d94fa4e4391c9f30da72f3f0294ddba194823512e38a695b74d75350ac6b204bc9cddd1d948406b49458a328ba665d620c48abe9fbae9aadeb5cc97b6dc949d1f50345489ab6452a4d2e91e7a71f5142d1f73bb4d6486dd1d631dcdc56f6a3e42ba620f1eb82693b8490f49b5bde7cf22ba469c9145e5f3ff2faee5b6c33f0f4fc2d1fbeff6f7c0a58d760db96a6dfa18c434a450c0bda589a6183320dc3fe0e50b46d0352d00e374851b5961822fd66474c1e2d25ded767b6c30dfd7e8beea4e0ebbffc81379ffe8e3904fa7e20c7991fdf7fc3ebf189d0df433ab0d93ca0fb0d7ef6e4c6a04a21c68c2f355f22a691943c252c386759c691653a41b6f56da785e532a35483328ae22b942e9421e782b6b0ae13ca08c6f5fa8294442885b20d778fbf441ac7e6e62dd3eb47c4d56d59e73346352c193ad7305f0ee494985e5fab319104e765c199964db721c5c239d730cfaf7efdb7ac6fff0ad70f18dd703a3d23fd84949ad3e9c27e7fc31257a6c313b61d10579300ad6b0849094208d8b665d8eef0cb4c0a82655ee8da96d3cb33e1dd4f6c6f36fc1f81377e8586ee0c060000000049454e44ae426082, 1, 1, 'image/jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `page_name` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `content` mediumtext,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `page_name`, `title`, `content`, `status`) VALUES
(1, 'Who We Are', '<h1>Welcome to <span> Ad-Post</span></h1>', '<p>I am editing this page for my own testing,&nbsp; it is a content <strong>coming from the data base</strong>. consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce el</p>\r\n\r\n<p>ementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>\r\n', 1),
(2, 'Safety Tips', '<h1>Safety <span> Tips</span></h1>', '<p><strong>Content coming from database</strong>.consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce el</p>\r\n\r\n<p>ementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>\r\n', 1),
(3, 'Terms of Use', '<h1>Terms of  <span> Use</span></h1>', '<p><strong>Content coming from database</strong>.consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce el</p>\r\n\r\n<p>ementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>\r\n', 1),
(4, 'Help and Contact', '<h1>Help and <span> Contact</span></h1>', '<p><strong>Content coming from database</strong>.consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit.</p>\r\n', 1),
(5, 'FAQs', '<h1><span> FAQs</span></h1>', '<p><strong>Content coming from database</strong>.consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce el</p>\r\n\r\n<p>ementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>\r\n', 1),
(6, 'Our Mission', '<h1>Our <span> Mission</span></h1>', '<p><strong>Content coming from database</strong>.consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce el</p>\r\n\r\n<p>ementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>\r\n', 1),
(7, 'How It Works', '<h1>How<span> It Works</span></h1>', '<p><strong>Content coming from database</strong>.consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce el</p>\r\n\r\n<p>ementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>\r\n', 1),
(8, 'Usage of Application', '<h1>Usage of <span> Application</span></h1>', '<p>Welcome to the Ad-Post</p>\r\n\r\n<p>To give you a clear idea what you&#39;re getting, this is a free version of what our members currently enjoy.</p>\r\n\r\n<p>We have worked hard to mimic the test environment as much as possible so that it can prove to be advantageous when you go to sit the real UKCAT.</p>\r\n\r\n<p>Full members receive mocks and practice with time-limits, performance feedback, and access to our entire question bank. This demo uses the same few questions each time you take it.</p>\r\n\r\n<p>The demo is divided into two subtests (sections), just like the UKCAT:</p>\r\n\r\n<p>Best 3</p>\r\n\r\n<p>Sort Order<br />\r\n<br />\r\nClick Next to proceed with the exam</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `content_inner`
--

CREATE TABLE `content_inner` (
  `id` int(11) NOT NULL,
  `title` varchar(112) NOT NULL,
  `content` varchar(112) NOT NULL,
  `status` int(12) NOT NULL,
  `system_title` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_inner`
--

INSERT INTO `content_inner` (`id`, `title`, `content`, `status`, `system_title`) VALUES
(4, 'Email title for user', 'Your security code is {link}', 1, 'Classified: SMS Code'),
(5, 'Titl for admin', 'Content for admin', 1, ''),
(6, 'Sell Your Item On Our Website', 'This is your registration verification {code}', 1, 'frontend_left_heading1_index'),
(7, 'Have thing special to sell? just try and use our website.!', 'Have thing to sell? use our website', 1, 'frontend_left_heading2_index'),
(9, 'Just fill the simple form and post your product ad in just few clicks', 'Just fill the simple form and post your product ad in just few clicks', 1, 'frontend_left_heading3_index'),
(10, 'You can sell your products as private customer', 'You can sell your products as private customer', 1, 'frontend_short_heading1_ad-posting'),
(11, 'You can grow your business', 'You can grow your business', 1, 'frontend_short_heading2_ad-posting'),
(12, 'Inlimited ads', 'Inlimited ads', 1, 'frontend_short_heading3_ad-posting'),
(13, 'Work as Dealer and Company', 'Work as Dealer and Company', 1, 'frontend_short_heading4_ad-posting'),
(14, 'Increase your product sales with good offers', 'Increase your product sales with attractive offers', 1, 'frontend_short_heading5_ad-posting'),
(15, 'Inlimited ads', 'Inlimited ads', 1, 'frontend_short_heading6_ad-posting'),
(16, 'By having a password you will have access to My ads where you can:', 'By having a password you will have access to My ads where you can:', 1, 'frontend_centre_heading1_signup'),
(17, 'Edit or Delete your Ads', 'Edit or Delete your Ads', 1, 'frontend_centre_sub_heading2_signup'),
(18, 'Check responses for your Ads', 'Check responses for your Ads', 1, 'frontend_centre_sub_heading3_signup'),
(19, 'See saved Ads', 'See saved Ads', 1, 'frontend_centre_sub_heading4_signup'),
(20, 'Provide your e-mail address & password and click confirm link in e-mail which will be sent to you..', 'Provide your e-mail address & password and click confirm link in e-mail which will be sent to you..', 1, 'frontend_centre_sub_heading5_signup');

-- --------------------------------------------------------

--
-- Table structure for table `conversation`
--

CREATE TABLE `conversation` (
  `id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversation`
--

INSERT INTO `conversation` (`id`, `ad_id`, `from`, `to`) VALUES
(17, 34, 63, 62),
(18, 10, 62, 63);

-- --------------------------------------------------------

--
-- Table structure for table `conv_status`
--

CREATE TABLE `conv_status` (
  `id` int(11) NOT NULL,
  `conv_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conv_status`
--

INSERT INTO `conv_status` (`id`, `conv_id`, `user_id`, `status`) VALUES
(1, 16, 63, 1),
(2, 17, 63, 1),
(3, 17, 62, 1),
(4, 18, 62, 2),
(5, 18, 63, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) NOT NULL,
  `code` char(2) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `slug` varchar(80) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `code`, `name`, `slug`) VALUES
(1, '99', 'Norway', 'norway');

-- --------------------------------------------------------

--
-- Table structure for table `credits_details`
--

CREATE TABLE `credits_details` (
  `id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `credits` varchar(100) DEFAULT NULL,
  `amount_paid` int(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credits_details`
--

INSERT INTO `credits_details` (`id`, `user_id`, `credits`, `amount_paid`, `date`) VALUES
(1, 62, '10', 10, '2016-04-15'),
(2, 62, '10', 10, '2016-04-15'),
(3, 62, '10', 10, '2016-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `credits_expense`
--

CREATE TABLE `credits_expense` (
  `id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `ad_id` int(10) DEFAULT NULL,
  `credit_exp` int(10) DEFAULT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credits_expense`
--

INSERT INTO `credits_expense` (`id`, `user_id`, `ad_id`, `credit_exp`, `date`, `status`) VALUES
(1, 62, 33, 0, '2016-04-19', 0),
(2, 62, 34, 10, '2016-04-19', 0),
(3, 62, 37, 10, '2016-05-09', 0),
(4, 62, 38, 10, '2016-05-11', 0),
(5, 62, 39, 0, '2016-05-11', 0),
(6, 62, 39, 3, '2016-06-12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `credit_packages`
--

CREATE TABLE `credit_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `crdit` float NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_packages`
--

INSERT INTO `credit_packages` (`id`, `name`, `crdit`, `price`) VALUES
(1, 'First Packages', 1500, 800),
(2, 'next', 1600, 900),
(3, 'test', 2300, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `title` varchar(112) NOT NULL,
  `content` varchar(112) NOT NULL,
  `status` int(12) NOT NULL,
  `system_title` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `title`, `content`, `status`, `system_title`) VALUES
(4, 'Email title for user', 'Your security code is {link}', 1, 'Classified: SMS Code'),
(5, 'Titl for admin', 'Content for admin', 1, ''),
(6, 'Sell Your Item On Our Website', 'This is your registration verification {code}', 1, 'frontend_left_heading1_index'),
(7, 'Have thing special to sell? just try and use our website.!', 'Have thing to sell? use our website', 1, 'frontend_left_heading2_index'),
(9, 'Just fill the simple form and post your product ad in just few clicks', 'Just fill the simple form and post your product ad in just few clicks', 1, 'frontend_left_heading3_index'),
(10, 'You can sell your products as private customer', 'You can sell your products as private customer', 1, 'frontend_short_heading1_ad-posting'),
(11, 'You can grow your business', 'You can grow your business', 1, 'frontend_short_heading2_ad-posting'),
(12, 'Inlimited ads', 'Inlimited ads', 1, 'frontend_short_heading3_ad-posting'),
(13, 'Work as Dealer and Company', 'Work as Dealer and Company', 1, 'frontend_short_heading4_ad-posting'),
(14, 'Increase your product sales with good offers', 'Increase your product sales with attractive offers', 1, 'frontend_short_heading5_ad-posting'),
(15, 'Inlimited ads', 'Inlimited ads', 1, 'frontend_short_heading6_ad-posting'),
(16, 'By having a password you will have access to My ads where you can:', 'By having a password you will have access to My ads where you can:', 1, 'frontend_centre_heading1_signup'),
(17, 'Edit or Delete your Ads', 'Edit or Delete your Ads', 1, 'frontend_centre_sub_heading2_signup'),
(18, 'Check responses for your Ads', 'Check responses for your Ads', 1, 'frontend_centre_sub_heading3_signup'),
(19, 'See saved Ads', 'See saved Ads', 1, 'frontend_centre_sub_heading4_signup'),
(20, 'Provide your e-mail address & password and click confirm link in e-mail which will be sent to you..', 'Provide your e-mail address & password and click confirm link in e-mail which will be sent to you..', 1, 'frontend_centre_sub_heading5_signup'),
(21, 'ADS by USER Confirmation', 'content for admin', 1, ''),
(22, 'ADMIN Approval Confirmation', 'content for admin', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `filter_name`
--

CREATE TABLE `filter_name` (
  `id` int(50) NOT NULL,
  `filter_name` varchar(255) NOT NULL,
  `filter_description` varchar(500) DEFAULT NULL,
  `filter_value` varchar(225) DEFAULT NULL,
  `parent_filter` int(11) NOT NULL DEFAULT '0',
  `display_for_adpost_page` int(11) NOT NULL DEFAULT '1',
  `display_for_screen_page` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filter_name`
--

INSERT INTO `filter_name` (`id`, `filter_name`, `filter_description`, `filter_value`, `parent_filter`, `display_for_adpost_page`, `display_for_screen_page`, `status`) VALUES
(1, 'Merke', 'Bil', 'Merke (Bil)', 0, 1, 2, 1),
(2, 'Andre8', 'Test', 'Andre8', 1, 1, 2, 1),
(3, 'Audi', 'Test', 'Audi', 1, 1, 2, 1),
(4, 'Austin', 'Test', 'Austin', 1, 1, 2, 1),
(5, 'Bentley', 'Test', 'Bentley', 1, 1, 2, 1),
(6, 'BMW', 'Test', 'BMW', 1, 1, 2, 1),
(7, 'Buddy', 'Test', 'Buddy', 1, 1, 2, 1),
(8, 'Buick', 'Test', 'Buick', 1, 1, 2, 1),
(9, 'Cadillac', 'Test', 'Cadillac', 1, 1, 2, 1),
(10, 'Chevrolet', 'Test', 'Chevrolet', 1, 1, 2, 1),
(11, 'Chrysler', 'Test', 'Chrysler', 1, 1, 2, 1),
(12, 'Citroen', 'Test', 'Citroen', 1, 1, 2, 1),
(13, 'Dacia', 'Test', 'Dacia', 1, 1, 2, 1),
(14, 'Daewoo', 'Test', 'Daewoo', 1, 1, 2, 1),
(15, 'DAF', 'Test', 'DAF', 1, 1, 2, 1),
(16, 'Daihatsu', 'Test', 'Daihatsu', 1, 1, 2, 1),
(17, 'Datsun', 'Test', 'Datsun', 1, 1, 2, 1),
(18, 'Dodge', 'Test', 'Dodge', 1, 1, 2, 1),
(19, 'DS', 'Test', 'DS', 1, 1, 2, 1),
(20, 'Ferrari', 'Test', 'Ferrari', 1, 1, 2, 1),
(21, 'Fiat', 'Test', 'Fiat', 1, 1, 2, 1),
(22, 'Fisker', 'Test', 'Fisker', 1, 1, 2, 1),
(23, 'Ford', 'Test', 'Ford', 1, 1, 2, 1),
(24, 'GMC', 'Test', 'GMC', 1, 1, 2, 1),
(25, 'Honda', 'Test', 'Honda', 1, 1, 2, 1),
(26, 'Hummer', 'Test', 'Hummer', 1, 1, 2, 1),
(27, 'Hyundai', 'Test', 'Hyundai', 1, 1, 2, 1),
(28, 'Infiniti', 'Test', 'Infiniti', 1, 1, 2, 1),
(29, 'Isuzu', 'Test', 'Isuzu', 1, 1, 2, 1),
(30, 'Iveco', 'Test', 'Iveco', 1, 1, 2, 1),
(31, 'Jaguar', 'Test', 'Jaguar', 1, 1, 2, 1),
(32, 'Jeep', 'Test', 'Jeep', 1, 1, 2, 1),
(33, 'Kewet', 'Test', 'Kewet', 1, 1, 2, 1),
(34, 'Kia', 'Test', 'Kia', 1, 1, 2, 1),
(35, 'Lada', 'Test', 'Lada', 1, 1, 2, 1),
(36, 'Lamborghini', 'Test', 'Lamborghini', 1, 1, 2, 1),
(37, 'Lancia', 'Test', 'Lancia', 1, 1, 2, 1),
(38, 'Land Rover', 'Test', 'Land Rover', 1, 1, 2, 1),
(39, 'Lexus', 'Test', 'Lexus', 1, 1, 2, 1),
(40, 'Lincoln', 'Test', 'Lincoln', 1, 1, 2, 1),
(41, 'Lotus', 'Test', 'Lotus', 1, 1, 2, 1),
(42, 'Maserati (22)', 'Test', 'Maserati (22)', 1, 1, 2, 1),
(43, 'Matra', 'Test', 'Matra', 1, 1, 2, 1),
(44, 'Maybach', 'Test', 'Maybach', 1, 1, 2, 1),
(45, 'Mazda', 'Test', 'Mazda', 1, 1, 2, 1),
(46, 'McLaren', 'Test', 'McLaren', 1, 1, 2, 1),
(47, 'Mercedes-Benz', 'Test', 'Mercedes-Benz', 1, 1, 2, 1),
(48, 'Mercury', 'Test', 'Mercury', 1, 1, 2, 1),
(49, 'MG', 'Test', 'MG', 1, 1, 2, 1),
(50, 'MINI', 'Test', 'MINI', 1, 1, 2, 1),
(51, 'Mitsubishi', 'Test', 'Mitsubishi', 1, 1, 2, 1),
(52, 'Morgan', 'Test', 'Morgan', 1, 1, 2, 1),
(53, 'Morris', 'Test', 'Morris', 1, 1, 2, 1),
(54, 'Nissan', 'Test', 'Nissan', 1, 1, 2, 1),
(55, 'Oldsmobile', 'Test', 'Oldsmobile', 1, 1, 2, 1),
(56, 'Opel', 'Test', 'Opel', 1, 1, 2, 1),
(57, 'Peugeot', 'Test', 'Peugeot', 1, 1, 2, 1),
(58, 'Plymouth', 'Test', 'Plymouth', 1, 1, 2, 1),
(59, 'Pontiac', 'Test', 'Pontiac', 1, 1, 2, 1),
(60, 'Porsche', 'Test', 'Porsche', 1, 1, 2, 1),
(61, 'Radical', 'Test', 'Radical', 1, 1, 2, 1),
(62, 'Renault', 'Test', 'Renault', 1, 1, 2, 1),
(63, 'Rolls Royce', 'Test', 'Rolls Royce', 1, 1, 2, 1),
(64, 'Rover', 'Test', 'Rover', 1, 1, 2, 1),
(65, 'Saab', 'Test', 'Saab', 1, 1, 2, 1),
(66, 'Seat', 'Test', 'Seat', 1, 1, 2, 1),
(67, 'Skoda', 'Test', 'Skoda', 1, 1, 2, 1),
(68, 'Smart', 'Test', 'Smart', 1, 1, 2, 1),
(69, 'Ssangyong', 'Test', 'Ssangyong', 1, 1, 2, 1),
(70, 'Subaru', 'Test', 'Subaru', 1, 1, 2, 1),
(71, 'Suzuki', 'Test', 'Suzuki', 1, 1, 2, 1),
(72, 'Tesla', 'Test', 'Tesla', 1, 1, 2, 1),
(73, 'Think', 'Test', 'Think', 1, 1, 2, 1),
(74, 'Toyota', 'Test', 'Toyota', 1, 1, 2, 1),
(75, 'Triumph', 'Test', 'Triumph', 1, 1, 2, 1),
(76, 'Volkswagen', 'Test', 'Volkswagen', 1, 1, 2, 1),
(77, 'Volvo', 'Test', 'Volvo', 1, 1, 2, 1),
(78, 'Salgsform', 'Salgsform', 'Salgsform', 0, 2, 2, 1),
(135, 'Merke', 'Campingvogn', 'Merke (Campingvogn)', 0, 1, 2, 1),
(136, 'Adria', 'Campingvogn', 'Adria', 135, 2, 2, 1),
(137, 'Atlas', 'Campingvogn', 'Atlas', 135, 2, 2, 1),
(138, 'Bjølseth', 'Campingvogn', 'Bjølseth', 135, 2, 2, 1),
(139, 'Bürstner', 'Campingvogn', 'Bürstner', 135, 2, 2, 1),
(140, 'Cabby', 'Campingvogn', 'Cabby', 135, 2, 2, 1),
(141, 'Carado', 'Campingvogn', 'Carado', 135, 2, 2, 1),
(142, 'Caravelair', 'Campingvogn', 'Caravelair', 135, 2, 2, 1),
(143, 'Cavalier', 'Campingvogn', 'Cavalier', 135, 2, 2, 1),
(144, 'Dethleffs', 'Campingvogn', 'Dethleffs', 135, 2, 2, 1),
(145, 'Eifelland', 'Campingvogn', 'Eifelland', 135, 2, 2, 1),
(146, 'Fendt', 'Campingvogn', 'Fendt', 135, 2, 2, 1),
(147, 'Fleetwood', 'Campingvogn', 'Fleetwood', 135, 2, 2, 1),
(148, 'Frankia', 'Campingvogn', 'Frankia', 135, 2, 2, 1),
(149, 'Hobby', 'Campingvogn', 'Hobby', 135, 2, 2, 1),
(150, 'Home-car', 'Campingvogn', 'Home-car', 135, 2, 2, 1),
(151, 'Husvogner', 'Campingvogn', 'Husvogner', 135, 2, 2, 1),
(152, 'Hymer', 'Campingvogn', 'Hymer', 135, 2, 2, 1),
(153, 'KABE', 'Campingvogn', 'KABE', 135, 2, 2, 1),
(154, 'Kip', 'Campingvogn', 'Kip', 135, 2, 2, 1),
(155, 'Knaus', 'Campingvogn', 'Knaus', 135, 2, 2, 1),
(156, 'LMC/Münsterland', 'Campingvogn', 'LMC/Münsterland', 135, 2, 2, 1),
(157, 'Monaco', 'Campingvogn', 'Monaco', 135, 2, 2, 1),
(158, 'Polar', 'Campingvogn', 'Polar', 135, 2, 2, 1),
(159, 'Poletta', 'Campingvogn', 'Poletta', 135, 2, 2, 1),
(160, 'Savsjø', 'Campingvogn', 'Savsjø', 135, 2, 2, 1),
(161, 'Solifer', 'Campingvogn', 'Solifer', 135, 2, 2, 1),
(162, 'Sterckeman', 'Campingvogn', 'Sterckeman', 135, 2, 2, 1),
(163, 'Sunlight', 'Campingvogn', 'Sunlight', 135, 2, 2, 1),
(164, 'Tabbert', 'Campingvogn', 'Tabbert', 135, 2, 2, 1),
(165, 'Tec', 'Campingvogn', 'Tec', 135, 2, 2, 1),
(166, 'Weinsberg', 'Campingvogn', 'Weinsberg', 135, 2, 2, 1),
(167, 'Wilk', 'Campingvogn', 'Wilk', 135, 2, 2, 1),
(168, 'Willerby', 'Campingvogn', 'Willerby', 135, 2, 2, 1),
(169, 'Merke', 'Merke for scooter og moped', 'Merke (scooter og moped)', 0, 1, 5, 1),
(170, 'Access', 'scooter og moped', 'Access', 169, 1, 2, 1),
(171, 'Aeon', 'scooter og moped', 'Aeon', 169, 1, 2, 1),
(172, 'Agirra', 'scooter og moped', 'Agirra', 169, 1, 2, 1),
(173, 'Aixam', 'scooter og moped', 'Aixam', 169, 1, 2, 1),
(174, 'Aprilia', 'scooter og moped', 'Aprilia', 169, 1, 2, 1),
(175, 'Bajaj', 'scooter og moped', 'Bajaj', 169, 1, 2, 1),
(176, 'Baotian', 'scooter og moped', 'Baotian', 169, 1, 2, 1),
(177, 'Benelli', 'scooter og moped', 'Benelli', 169, 1, 2, 1),
(178, 'Beta', 'scooter og moped', 'Beta', 169, 1, 2, 1),
(179, 'Bultaco', 'scooter og moped', 'Bultaco', 169, 1, 2, 1),
(180, 'Chatenet', 'scooter og moped', 'Chatenet', 169, 1, 2, 1),
(181, 'Cobra', 'scooter og moped', 'Cobra', 169, 1, 2, 1),
(182, 'CPI', 'scooter og moped', 'CPI', 169, 1, 2, 1),
(183, 'Daelim', 'scooter og moped', 'Daelim', 169, 1, 2, 1),
(184, 'Derbi', 'scooter og moped', 'Derbi', 169, 1, 2, 1),
(185, 'Fantic', 'scooter og moped', 'Fantic', 169, 1, 2, 1),
(186, 'FYM', 'scooter og moped', 'FYM', 169, 1, 2, 1),
(187, 'Generic', 'scooter og moped', 'Generic', 169, 1, 2, 1),
(188, 'Gilera', 'scooter og moped', 'Gilera', 169, 1, 2, 1),
(189, 'Honda', 'scooter og moped', 'Honda', 169, 1, 2, 1),
(190, 'Husqvarna', 'scooter og moped', 'Husqvarna', 169, 1, 2, 1),
(191, 'Hyosung', 'scooter og moped', 'Hyosung', 169, 1, 2, 1),
(192, 'Italjet', 'scooter og moped', 'Italjet', 169, 1, 2, 1),
(193, 'Jonway', 'scooter og moped', 'Jonway', 169, 1, 2, 1),
(194, 'Junak', 'scooter og moped', 'Junak', 169, 1, 2, 1),
(195, 'Kawasaki', 'scooter og moped', 'Kawasaki', 169, 1, 2, 1),
(196, 'Keeway', 'scooter og moped', 'Keeway', 169, 1, 2, 1),
(197, 'Kubota', 'scooter og moped', 'Kubota', 169, 1, 2, 1),
(198, 'Kymco', 'scooter og moped', 'Kymco', 169, 1, 2, 1),
(199, 'Ligier', 'scooter og moped', 'Ligier', 169, 1, 2, 1),
(200, 'Lingben', 'scooter og moped', 'Lingben', 169, 1, 2, 1),
(201, 'Linhai', 'scooter og moped', 'Linhai', 169, 1, 2, 1),
(202, 'Malaguti', 'scooter og moped', 'Malaguti', 169, 1, 2, 1),
(203, 'Mancini', 'scooter og moped', 'Mancini', 169, 1, 2, 1),
(204, 'Mega', 'scooter og moped', 'Mega', 169, 1, 2, 1),
(205, 'MGB', 'scooter og moped', 'MGB', 169, 1, 2, 1),
(206, 'Microcar', 'scooter og moped', 'Microcar', 169, 1, 2, 1),
(207, 'MotoNordic', 'scooter og moped', 'MotoNordic', 169, 1, 2, 1),
(208, 'Motorbike', 'scooter og moped', 'Motorbike', 169, 1, 2, 1),
(209, 'Motorhispania', 'scooter og moped', 'Motorhispania', 169, 1, 2, 1),
(210, 'Motrac', 'scooter og moped', 'Motrac', 169, 1, 2, 1),
(211, 'Peugeot', 'scooter og moped', 'Peugeot', 169, 1, 2, 1),
(212, 'Pgo', 'scooter og moped', 'Pgo', 169, 1, 2, 1),
(213, 'Piaggio', 'scooter og moped', 'Piaggio', 169, 1, 2, 1),
(214, 'Puch', 'scooter og moped', 'Puch', 169, 1, 2, 1),
(215, 'QINGQI', 'scooter og moped', 'QINGQI', 169, 1, 2, 1),
(216, 'Rieju', 'scooter og moped', 'Rieju', 169, 1, 2, 1),
(217, 'Sachs', 'scooter og moped', 'Sachs', 169, 1, 2, 1),
(218, 'Senda', 'scooter og moped', 'Senda', 169, 1, 2, 1),
(219, 'Sherco', 'scooter og moped', 'Sherco', 169, 1, 2, 1),
(220, 'Simson', 'scooter og moped', 'Simson', 169, 1, 2, 1),
(221, 'Skyteam', 'scooter og moped', 'Skyteam', 169, 1, 2, 1),
(222, 'SMC', 'scooter og moped', 'SMC', 169, 1, 2, 1),
(223, 'Sonik', 'scooter og moped', 'Sonik', 169, 1, 2, 1),
(224, 'Starway', 'scooter og moped', 'Starway', 169, 1, 2, 1),
(225, 'Suzuki', 'scooter og moped', 'Suzuki', 169, 1, 2, 1),
(226, 'SYM', 'scooter og moped', 'SYM', 169, 1, 2, 1),
(227, 'Tempo', 'scooter og moped', 'Tempo', 169, 1, 2, 1),
(228, 'TGB', 'scooter og moped', 'TGB', 169, 1, 2, 1),
(229, 'Tms', 'scooter og moped', 'Tms', 169, 1, 2, 1),
(230, 'Vectra', 'scooter og moped', 'Vectra', 169, 1, 2, 1),
(231, 'Veli', 'scooter og moped', 'Veli', 169, 1, 2, 1),
(232, 'Vespa', 'scooter og moped', 'Vespa', 169, 1, 2, 1),
(233, 'Viarelli', 'scooter og moped', 'Viarelli', 169, 1, 2, 1),
(234, 'Victory', 'scooter og moped', 'Victory', 169, 1, 2, 1),
(235, 'XWAY', 'scooter og moped', 'XWAY', 169, 1, 2, 1),
(236, 'Yamaha', 'scooter og moped', 'Yamaha', 169, 1, 2, 1),
(237, 'Yamoto', 'scooter og moped', 'Yamoto', 169, 1, 2, 1),
(238, 'Zundapp', 'scooter og moped', 'Zundapp', 169, 1, 2, 1),
(239, '4W-Moto', 'scooter og moped', '4W-Moto', 169, 1, 2, 1),
(240, 'Andre', 'scooter og moped', 'Andre', 169, 1, 2, 1),
(241, 'Pris', 'scooter og moped', 'Pris', 169, 1, 2, 1),
(242, 'Merke', 'Snoscooter', 'Merke (Snoscooter)', 0, 1, 2, 1),
(243, 'Apex', 'snowscooter', 'Apex', 242, 1, 2, 1),
(244, 'Arctic-cat', 'snowscooter', 'Arctic-cat', 242, 1, 2, 1),
(245, 'Can-Am', 'snowscooter', 'Can-Am', 242, 1, 2, 1),
(246, 'Kawasaki', 'snowscooter', 'Kawasaki', 242, 1, 2, 1),
(247, 'Lynx', 'snowscooter', 'Lynx', 242, 1, 2, 1),
(248, 'Ockelbo', 'snowscooter', 'Ockelbo', 242, 1, 2, 1),
(249, 'Panthera', 'snowscooter', 'Panthera', 242, 1, 2, 1),
(250, 'Polaris', 'snowscooter', 'Polaris', 242, 1, 2, 1),
(251, 'Ski-doo', 'snowscooter', 'Ski-doo', 242, 1, 2, 1),
(252, 'Yamaha', 'snowscooter', 'Yamaha', 242, 1, 2, 1),
(253, '4W-Moto', 'snowscooter', '4W-Moto', 242, 1, 2, 1),
(254, 'Andre', 'snowscooter', 'Andre', 242, 1, 2, 1),
(255, 'KM', 'KM', 'KM (Scooter Og Moped)', 0, 3, 5, 1),
(256, 'Event', 'Event', 'Event (Samfunn)', 0, 6, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `form_additional_values`
--

CREATE TABLE `form_additional_values` (
  `id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `values` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `i18n_message`
--

CREATE TABLE `i18n_message` (
  `message_id` int(11) NOT NULL,
  `category` varchar(32) NOT NULL,
  `message` text NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `i18n_message`
--

INSERT INTO `i18n_message` (`message_id`, `category`, `message`, `created_at`, `updated_at`) VALUES
(1, 'yandex', 'Congratulations!', 1462110610, 1462110610),
(2, 'yandex', '<p>Just fill the simple form and post your product ad in just few clicks</p>', 1462172856, 1462172856),
(3, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=1"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/bulding.png></div>Eiendom</a></li>', 1462182155, 1462182155),
(4, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=2"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/inustry.png></div>Industri</a></li>', 1462182157, 1462182157),
(5, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=3"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/car.png></div>Kjøretøy</a></li>', 1462182158, 1462182158),
(6, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=4"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/mc2.png></div>Motorsykkel</a></li>', 1462182160, 1462182160),
(7, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=5"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/boat.png></div>Båt</a></li>', 1462182161, 1462182161),
(8, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=6"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/jobb.png></div>Jobb</a></li>', 1462182162, 1462182162),
(9, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=7"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/rest1.jpg></div>Restauranter</a></li>', 1462182164, 1462182164),
(10, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=8"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/trv1.jpg></div>Reise</a></li>', 1462182165, 1462182165),
(11, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=9"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/image.jpeg></div>Utdanning</a></li>', 1462182167, 1462182167),
(12, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=10"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/IMG_8567.jpg></div>Katalog</a></li>', 1462182168, 1462182168),
(13, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=11"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/netbutiker.jpg></div>Nettbutikker</a></li>', 1462182170, 1462182170),
(14, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=12"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/property.png></div>Kjøpesenter</a></li>', 1462182171, 1462182171),
(15, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=13"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/bid.jpg></div>Auksjon</a></li>', 1462182173, 1462182173),
(16, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=19"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/sofa.jpeg></div>Til Salgs</a></li>', 1462182174, 1462182174),
(17, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=20"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/samfun.jpg></div>Aktiviteter</a></li>', 1462182175, 1462182175),
(18, 'yandex', '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=21"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/serv7.jpg></div>Tjenester</a></li>', 1462182177, 1462182177),
(19, 'yandex', '<h3>Sell Your Item On Our Website</h3>', 1462184364, 1462184364),
(20, 'yandex', '<p>Have thing special to sell? just try and use our website.!</p>', 1462184479, 1462184479),
(21, 'yandex', 'Please Login First.', 1462457044, 1462457044),
(22, 'yandex', 'Your message sended successfully!', 1462612834, 1462612834),
(23, 'yandex', 'Enter your confirmation code.', 1462817336, 1462817336),
(24, 'yandex', 'Your ad has been posted ', 1462817362, 1462817362),
(25, 'yandex', 'You do not have enough credits', 1462946287, 1462946287),
(26, 'yandex', 'User settings saved successfully.', 1464843381, 1464843381),
(27, 'yandex', 'Your ad is now pending for Admin Approval', 1465740416, 1465740416),
(28, 'yandex', 'User settings not saved successfully.', 1468475880, 1468475880),
(29, 'yandex', 'Creaeted new copy and pending form admin to approve ad', 1468494818, 1468494818);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_translation`
--

CREATE TABLE `i18n_translation` (
  `message_id` int(11) NOT NULL,
  `language` varchar(16) NOT NULL,
  `translator_id` int(11) DEFAULT NULL,
  `translation` text,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `error_message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `i18n_translation`
--

INSERT INTO `i18n_translation` (`message_id`, `language`, `translator_id`, `translation`, `status`, `created_at`, `updated_at`, `error_message`) VALUES
(1, 'de', 1, 'Herzlichen Glückwunsch!', 10, 1462172602, 1462172650, 'Unknown SSL protocol error in connection to translate.yandex.net:443 '),
(1, 'en', 1, 'Congratulations!', 10, 1462172527, 1462172527, NULL),
(1, 'fr', 1, 'Félicitations!', 10, 1462110613, 1462110613, NULL),
(1, 'no', 1, 'Gratulerer!', 10, 1462173446, 1462173446, NULL),
(1, 'sv', 1, 'Grattis!', 10, 1462173472, 1462173472, NULL),
(2, 'de', 1, '<p>füllen Sie Einfach die einfache form und veröffentlichen Sie Ihre Produkt-Anzeige in nur wenigen Klicks</p>', 10, 1462172858, 1462172858, NULL),
(2, 'en', 1, '<p>Just fill the simple form and post your product ad in just few clicks</p>', 10, 1462172865, 1462172865, NULL),
(2, 'fr', 1, '<p>il vous suffit de remplir le formulaire simple et publiez votre annonce pour un produit en seulement quelques clics,</p>', 10, 1462172871, 1462172871, NULL),
(2, 'no', 1, '<p>Bare fyll ut det enkle skjemaet, og innlegget ditt produkt annonse i bare noen få klikk</p>', 10, 1462173444, 1462173448, 'Unknown SSL protocol error in connection to translate.yandex.net:443 '),
(2, 'sv', 1, '<p>behöver du Bara fylla i enkla formulär och skicka din produktannons i bara några klick</p>', 10, 1462173471, 1462173471, NULL),
(3, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=1"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/Gebäude.png></div>Eiendom</a></li>', 10, 1462182241, 1462182241, NULL),
(3, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=1"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/bulding.png></div>Eiendom</a></li>', 10, 1462182194, 1462182194, NULL),
(3, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=1"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/bulding.png></div>Eiendom</a></li>', 10, 1462182157, 1462182157, NULL),
(4, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=2"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/inustry.png></div>Industri</a></li>', 10, 1462182242, 1462182242, NULL),
(4, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=2"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/inustry.png></div>Industri</a></li>', 10, 1462182195, 1462182195, NULL),
(4, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=2"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/inustry.png></div>Industri</a></li>', 10, 1462182158, 1462182158, NULL),
(5, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=3"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/Auto.png></div>Kjøretøy</a></li>', 10, 1462182244, 1462182244, NULL),
(5, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=3"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/car.png></div>Kjøretøy</a></li>', 10, 1462182196, 1462182196, NULL),
(5, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=3"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/bil.png></div>Kjøretøy</a></li>', 10, 1462182160, 1462182160, NULL),
(6, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=4"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/mc2.png></div>Motorsykkel</a></li>', 10, 1462182245, 1462182245, NULL),
(6, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=4"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/mc2.png></div>Motorsykkel</a></li>', 10, 1462182197, 1462182197, NULL),
(6, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=4"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/mc2.png></div>Motorsykkel</a></li>', 10, 1462182161, 1462182161, NULL),
(7, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=5"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/Boot.png></div>Båt</a></li>', 10, 1462182246, 1462182246, NULL),
(7, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=5"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/boat.png></div>Båt</a></li>', 10, 1462182198, 1462182198, NULL),
(7, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=5"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/båt.png></div>Båt</a></li>', 10, 1462182162, 1462182162, NULL),
(8, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=6"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/jobb.png></div>Jobb</a></li>', 10, 1462182248, 1462182248, NULL),
(8, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=6"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/jobb.png></div>Jobb</a></li>', 10, 1462182199, 1462182199, NULL),
(8, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=6"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/jobb.png></div>Jobb</a></li>', 10, 1462182164, 1462182164, NULL),
(9, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=7"><div class="cat-img-box"><img class="img-responsive" src=../../backend/web/uploads/rest1.jpg></div>Restauranter</a></li>', 10, 1462182249, 1462182249, NULL),
(9, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=7"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/rest1.jpg></div>Restauranter</a></li>', 10, 1462182200, 1462182200, NULL),
(9, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=7"><div class="cat-img-box"><img class="img-lyhörd" src=../../backend/web/uploads/rest1.jpg></div>Restauranter</a></li>', 10, 1462182165, 1462182165, NULL),
(10, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=8"><div class="cat-img-box"><img class="img-responsive" src=../../backend/web/uploads/trv1.jpg></div>Reise</a></li>', 10, 1462182250, 1462182250, NULL),
(10, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=8"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/trv1.jpg></div>Reise</a></li>', 10, 1462182202, 1462182202, NULL),
(10, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=8"><div class="cat-img-box"><img class="img-lyhörd" src=../../backend/web/uploads/trv1.jpg></div>Reise</a></li>', 10, 1462182167, 1462182167, NULL),
(11, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=9"><div class="cat-img-box"><img class="img-responsive" src=../../backend/web/uploads/image.jpeg></div>Utdanning</a></li>', 10, 1462182251, 1462182251, NULL),
(11, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=9"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/image.jpeg></div>Utdanning</a></li>', 10, 1462182203, 1462182203, NULL),
(11, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=9"><div class="cat-img-box"><img class="img-lyhörd" src=../../backend/web/uploads/image.jpeg></div>Utdanning</a></li>', 10, 1462182168, 1462182168, NULL),
(12, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=10"><div class="cat-img-box"><img class="img-responsive" src=../../backend/web/uploads/IMG_8567.jpg></div>Katalog</a></li>', 10, 1462182253, 1462182253, NULL),
(12, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=10"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/IMG_8567.jpg></div>Katalog</a></li>', 10, 1462182204, 1462182204, NULL),
(12, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=10"><div class="cat-img-box"><img class="img-lyhörd" src=../../backend/web/uploads/IMG_8567.jpg></div>Katalog</a></li>', 10, 1462182170, 1462182170, NULL),
(13, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=11"><div class="cat-img-box"><img class="img-responsive" src=../../backend/web/uploads/netbutiker.jpg></div>Nettbutikker</a></li>', 10, 1462182254, 1462182254, NULL),
(13, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=11"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/netbutiker.jpg></div>Nettbutikker</a></li>', 10, 1462182205, 1462182205, NULL),
(13, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=11"><div class="cat-img-box"><img class="img-lyhörd" src=../../backend/web/uploads/netbutiker.jpg></div>Nettbutikker</a></li>', 10, 1462182171, 1462182171, NULL),
(14, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=12"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/Eigenschaft.png></div>Kjøpesenter</a></li>', 10, 1462182255, 1462182255, NULL),
(14, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=12"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/property.png></div>Kjøpesenter</a></li>', 10, 1462182206, 1462182206, NULL),
(14, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=12"><div class="cat-img-box"><img class="img-responsive" src= " ../../backend/web/uploads/fastighet.png></div>Kjøpesenter</a></li>', 10, 1462182172, 1462182172, NULL),
(15, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=13"><div class="cat-img-box"><img class="img-responsive" src=../../backend/web/uploads/bid.jpg></div>Auksjon</a></li>', 10, 1462182257, 1462182257, NULL),
(15, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=13"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/bid.jpg></div>Auksjon</a></li>', 10, 1462182207, 1462182207, NULL),
(15, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=13"><div class="cat-img-box"><img class="img-lyhörd" src=../../backend/web/uploads/bid.jpg></div>Auksjon</a></li>', 10, 1462182174, 1462182174, NULL),
(16, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=19"><div class="cat-img-box"><img class="img-responsive" src=../../backend/web/uploads/sofa.jpeg></div>Til Salgs</a></li>', 10, 1462182258, 1462182258, NULL),
(16, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=19"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/sofa.jpeg></div>Til Salgs</a></li>', 10, 1462182208, 1462182208, NULL),
(16, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=19"><div class="cat-img-box"><img class="img-lyhörd" src=../../backend/web/uploads/sofa.jpeg></div>Til Salgs</a></li>', 10, 1462182175, 1462182175, NULL),
(17, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=20"><div class="cat-img-box"><img class="img-responsive" src=../../backend/web/uploads/samfun.jpg></div>Aktiviteter</a></li>', 10, 1462182259, 1462182259, NULL),
(17, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=20"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/samfun.jpg></div>Aktiviteter</a></li>', 10, 1462182209, 1462182209, NULL),
(17, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=20"><div class="cat-img-box"><img class="img-lyhörd" src=../../backend/web/uploads/samfun.jpg></div>Aktivieter</a></li>', 10, 1462182177, 1462182177, NULL),
(18, 'de', 1, '<li><a href="/klassifiziert/frontend/web/index.php?r=Kategorie%2Fcategories&id=21"><div class="cat-img-box"><img class="img-responsive" src=../../backend/web/uploads/serv7.jpg></div>Tjenester</a></li>', 10, 1462182260, 1462182260, NULL),
(18, 'en', 1, '<li><a href="/classified/frontend/web/index.php?r=category%2Fcategories&id=21"><div class="cat-img-box"><img class="img-responsive"  src=../../backend/web/uploads/serv7.jpg></div>Tjenester</a></li>', 10, 1462182210, 1462182210, NULL),
(18, 'sv', 1, '<li><a href="/klassificerad/frontend/web/index.php?r=category%2Fcategories&id=21"><div class="cat-img-box"><img class="img-lyhörd" src=../../backend/web/uploads/serv7.jpg></div>Tjenester</a></li>', 10, 1462182178, 1462182178, NULL),
(19, 'de', 1, '<h3>Verkaufen Sie Ihre Artikel Auf Unserer Website</h3>', 10, 1462184366, 1462184366, NULL),
(19, 'en', 1, '<h3>Sell Your Item On Our Website</h3>', 10, 1462184370, 1462184370, NULL),
(19, 'fr', 1, '<h3>Vendre Votre Article Sur Notre Site web</h3>', 10, 1462184488, 1462184488, NULL),
(19, 'no', 1, '<h3>Selge Varen På Vår Hjemmeside</h3>', 10, 1462184492, 1462184492, NULL),
(20, 'de', 1, '<p>Haben, was besonderes zu verkaufen? einfach ausprobieren und der Nutzung unserer website.!</p>', 10, 1462184481, 1462184481, NULL),
(20, 'en', 1, '<p>Have thing special to sell? just try and use our website.!</p>', 10, 1462201680, 1462201680, NULL),
(20, 'fr', 1, '<p>Avez-chose de spécial à vendre? juste essayer et d''utiliser notre site web.!</p>', 10, 1462184489, 1462184489, NULL),
(20, 'no', 1, '<p>Har spesielle ting du skal selge? bare prøv og bruke vår hjemmeside.!</p>', 10, 1462184493, 1462184493, NULL),
(21, 'en', 1, 'Please Login First.', 10, 1462457047, 1462457047, NULL),
(22, 'en', 1, 'Your message sended successfully!', 10, 1462612835, 1462612835, NULL),
(23, 'en', 1, 'Enter your confirmation code.', 10, 1462817337, 1462817337, NULL),
(24, 'en', 1, 'Your ad has been posted ', 10, 1462817363, 1462817363, NULL),
(25, 'en', 1, 'You do not have enough credits', 10, 1462946289, 1462946289, NULL),
(26, 'en', 1, 'User settings saved successfully.', 10, 1464843383, 1464843383, NULL),
(27, 'en', 1, 'Your ad is now pending for Admin Approval', 10, 1465740417, 1465740417, NULL),
(28, 'en', 1, 'User settings not saved successfully.', 10, 1468475883, 1468475883, NULL),
(29, 'en', 1, 'Creaeted new copy and pending form admin to approve ad', 10, 1468494819, 1468494819, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_translator`
--

CREATE TABLE `i18n_translator` (
  `translator_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `i18n_translator`
--

INSERT INTO `i18n_translator` (`translator_id`, `class_name`, `created_at`, `updated_at`) VALUES
(1, 'conquer\\i18n\\translators\\YandexTranslator', 1462110610, 1462110610);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) NOT NULL,
  `advertise_id` int(10) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `advertise_id`, `image`) VALUES
(1, 8, '01.jpg'),
(2, 8, '02.jpg'),
(3, 8, '03.jpg'),
(4, 8, '04.jpg'),
(5, 8, '05.jpg'),
(6, 8, '06.jpg'),
(7, 8, '07.jpg'),
(8, 8, '08.jpg'),
(9, 9, '3.jpg'),
(10, 10, 'CREATIVE-BRANDING.jpg'),
(11, 10, 'ONLINE-MARKETING.jpg'),
(12, 10, 'SEO-01.jpg'),
(13, 10, 'techmantic.jpg'),
(14, 10, 'ALLSERVICES.jpg'),
(15, 10, 'CALLCENTER-BPO.jpg'),
(16, 11, '3.jpg'),
(17, 11, '1.jpg'),
(18, 12, '1.jpg'),
(19, 12, '3.jpg'),
(20, 13, '1.jpg'),
(21, 14, '1.jpg'),
(22, 15, '1.jpg'),
(23, 15, '3.jpg'),
(24, 16, '3.jpg'),
(25, 17, '3.jpg'),
(26, 18, '3.jpg'),
(27, 19, '3.jpg'),
(28, 20, '2000px-Flag_of_Pakistan.svg.png'),
(29, 21, '56c60d99ae3a22fb2157053e.jpg'),
(30, 21, '56c60d99af3a22723af07b71.jpg'),
(31, 21, '56c60d99af3a221274f07d8e.jpg'),
(32, 21, '56c60d99b43a22c453950763.jpg'),
(33, 21, '56c60d99b43a22521b95090e.jpg'),
(34, 22, '1.jpg'),
(35, 22, '2.jpg'),
(36, 22, '3.jpg'),
(37, 22, '4.jpg'),
(38, 22, '5.jpg'),
(39, 23, '1.jpg'),
(40, 23, '2.jpg'),
(41, 23, '3.jpg'),
(42, 23, '4.jpg'),
(43, 23, '5.jpg'),
(44, 24, 'Chrysanthemum.jpg'),
(45, 25, 'Lighthouse.jpg'),
(46, 28, 'Koala.jpg'),
(47, 33, 'Jellyfish.jpg'),
(48, 34, '1.jpg'),
(49, 34, '2.jpg'),
(50, 34, '3.jpg'),
(51, 34, '4.jpg'),
(52, 34, '5.jpg'),
(53, 35, '474542552.jpg'),
(54, 35, '474542619.jpg'),
(55, 35, '474542650.jpg'),
(56, 35, '474542715.jpg'),
(57, 36, '5047_1.jpg'),
(58, 36, '5047_3.jpg'),
(59, 36, '5047_4.jpg'),
(60, 36, '5047_5.jpg'),
(61, 37, '5047_5.jpg'),
(62, 37, '5047_4.jpg'),
(63, 37, '5047_3.jpg'),
(64, 37, '5047_1.jpg'),
(69, 39, '474542619.jpg'),
(66, 39, '6841M15.jpg'),
(67, 39, 'B6ALM15.jpg'),
(68, 39, 'CM59M15.jpg'),
(70, NULL, '474542619.jpg'),
(71, NULL, '6841M15.jpg'),
(72, NULL, 'B6ALM15.jpg'),
(73, NULL, 'CM59M15.jpg'),
(74, NULL, '474542619.jpg'),
(75, NULL, '6841M15.jpg'),
(76, NULL, 'B6ALM15.jpg'),
(77, NULL, 'CM59M15.jpg'),
(78, NULL, '474542619.jpg'),
(79, NULL, '6841M15.jpg'),
(80, NULL, 'B6ALM15.jpg'),
(81, NULL, 'CM59M15.jpg'),
(82, NULL, '474542619.jpg'),
(83, NULL, '6841M15.jpg'),
(84, NULL, 'B6ALM15.jpg'),
(85, NULL, 'CM59M15.jpg'),
(86, NULL, '474542619.jpg'),
(87, NULL, '6841M15.jpg'),
(88, NULL, 'B6ALM15.jpg'),
(89, NULL, 'CM59M15.jpg'),
(90, NULL, '474542619.jpg'),
(91, NULL, '6841M15.jpg'),
(92, NULL, 'B6ALM15.jpg'),
(93, NULL, 'CM59M15.jpg'),
(94, NULL, '474542619.jpg'),
(95, NULL, '6841M15.jpg'),
(96, NULL, 'B6ALM15.jpg'),
(97, NULL, 'CM59M15.jpg'),
(98, NULL, '474542619.jpg'),
(99, NULL, '6841M15.jpg'),
(100, NULL, 'B6ALM15.jpg'),
(101, NULL, 'CM59M15.jpg'),
(102, NULL, '474542619.jpg'),
(103, NULL, '6841M15.jpg'),
(104, NULL, 'B6ALM15.jpg'),
(105, NULL, 'CM59M15.jpg'),
(106, NULL, '474542619.jpg'),
(107, NULL, '6841M15.jpg'),
(108, NULL, 'B6ALM15.jpg'),
(109, NULL, 'CM59M15.jpg'),
(110, NULL, '474542619.jpg'),
(111, NULL, '6841M15.jpg'),
(112, NULL, 'B6ALM15.jpg'),
(113, NULL, 'CM59M15.jpg'),
(114, NULL, '474542619.jpg'),
(115, NULL, '6841M15.jpg'),
(116, NULL, 'B6ALM15.jpg'),
(117, NULL, 'CM59M15.jpg'),
(118, NULL, '474542619.jpg'),
(119, NULL, '6841M15.jpg'),
(120, NULL, 'B6ALM15.jpg'),
(121, NULL, 'CM59M15.jpg'),
(122, NULL, '474542619.jpg'),
(123, NULL, '6841M15.jpg'),
(124, NULL, 'B6ALM15.jpg'),
(125, NULL, 'CM59M15.jpg'),
(126, NULL, '474542619.jpg'),
(127, NULL, '6841M15.jpg'),
(128, NULL, 'B6ALM15.jpg'),
(129, NULL, 'CM59M15.jpg'),
(130, NULL, '474542619.jpg'),
(131, NULL, '6841M15.jpg'),
(132, NULL, 'B6ALM15.jpg'),
(133, NULL, 'CM59M15.jpg'),
(134, NULL, '474542619.jpg'),
(135, NULL, '6841M15.jpg'),
(136, NULL, 'B6ALM15.jpg'),
(137, NULL, 'CM59M15.jpg'),
(138, NULL, '474542619.jpg'),
(139, NULL, '6841M15.jpg'),
(140, NULL, 'B6ALM15.jpg'),
(141, NULL, 'CM59M15.jpg'),
(142, NULL, '5047_5.jpg'),
(143, NULL, '5047_4.jpg'),
(144, NULL, '5047_3.jpg'),
(145, NULL, '5047_1.jpg'),
(146, NULL, '474542619.jpg'),
(147, NULL, '6841M15.jpg'),
(148, NULL, 'B6ALM15.jpg'),
(149, NULL, 'CM59M15.jpg'),
(150, 47, '474542619.jpg'),
(151, 47, '6841M15.jpg'),
(152, 47, 'B6ALM15.jpg'),
(153, 47, 'CM59M15.jpg'),
(154, 48, '474542619.jpg'),
(155, 48, '6841M15.jpg'),
(156, 48, 'B6ALM15.jpg'),
(157, 48, 'CM59M15.jpg'),
(158, 49, '474542619.jpg'),
(159, 49, '6841M15.jpg'),
(160, 49, 'B6ALM15.jpg'),
(161, 49, 'CM59M15.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `from_viewed` tinyint(1) NOT NULL DEFAULT '0',
  `to_viewed` tinyint(1) NOT NULL DEFAULT '0',
  `from_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `to_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `from_vdate` datetime DEFAULT NULL,
  `to_vdate` datetime DEFAULT NULL,
  `from_ddate` datetime DEFAULT NULL,
  `to_ddate` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `conv_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `ad_id`, `message`, `from`, `to`, `from_viewed`, `to_viewed`, `from_deleted`, `to_deleted`, `from_vdate`, `to_vdate`, `from_ddate`, `to_ddate`, `created`, `conv_id`) VALUES
(1, 1, '<p>Hello Dmitry,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ligula risus, viverra sit amet purus id, ullamcorper venenatis leo. Ut vitae semper neque. Nunc vel lacus vel erat sodales ultricies sed sed massa. Duis non elementum velit. Nunc quis molestie dui. Nullam ullamcorper lectus in mattis volutpat. Nunc egestas felis sit amet ultrices euismod. Donec lacinia neque vel quam pharetra, non dignissim arcu semper. Donec ultricies, neque ut vehicula ultrices, ligula velit sodales purus, eget eleifend libero risus sed turpis. Fusce hendrerit vel dui ut pulvinar. Ut sed tristique ante, sed egestas turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n\r\n<p>Fusce sit amet dui at nunc laoreet facilisis. Proin consequat orci sollicitudin sem cursus, quis vehicula eros ultrices. Cras fermentum justo at nibh tincidunt, consectetur elementum est aliquam.</p>\r\n\r\n<p>Nam dignissim convallis nulla, vitae porta purus fringilla ac. Praesent consectetur ex eu dui efficitur sollicitudin. Mauris libero est, aliquam a diam maximus, dignissim laoreet lacus.</p>\r\n\r\n<p>Nulla ac nisi sodales, auctor dui et, consequat turpis. Cras dolor turpis, sagittis vel elit in, varius elementum arcu. Mauris aliquet lorem ac enim blandit, nec consequat tortor auctor. Sed eget nunc at justo congue mollis eget a urna. Phasellus in mauris quis tortor porta tristique at a risus.</p>\r\n\r\n<p><strong>Best Regards<br />\r\nJohn Doe</strong></p>\r\n', 43, 42, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-08-01 03:10:00', 12),
(2, 1, '<p>Hello Dmitry,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ligula risus, viverra sit amet purus id, ullamcorper venenatis leo. Ut vitae semper neque. Nunc vel lacus vel erat sodales ultricies sed sed massa. Duis non elementum velit. Nunc quis molestie dui. Nullam ullamcorper lectus in mattis volutpat. Nunc egestas felis sit amet ultrices euismod. Donec lacinia neque vel quam pharetra, non dignissim arcu semper. Donec ultricies, neque ut vehicula ultrices, ligula velit sodales purus, eget eleifend libero risus sed turpis. Fusce hendrerit vel dui ut pulvinar. Ut sed tristique ante, sed egestas turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n\r\n<p>Fusce sit amet dui at nunc laoreet facilisis. Proin consequat orci sollicitudin sem cursus, quis vehicula eros ultrices. Cras fermentum justo at nibh tincidunt, consectetur elementum est aliquam.</p>\r\n\r\n<p>Nam dignissim convallis nulla, vitae porta purus fringilla ac. Praesent consectetur ex eu dui efficitur sollicitudin. Mauris libero est, aliquam a diam maximus, dignissim laoreet lacus.</p>\r\n\r\n<p>Nulla ac nisi sodales, auctor dui et, consequat turpis. Cras dolor turpis, sagittis vel elit in, varius elementum arcu. Mauris aliquet lorem ac enim blandit, nec consequat tortor auctor. Sed eget nunc at justo congue mollis eget a urna. Phasellus in mauris quis tortor porta tristique at a risus.</p>\r\n\r\n<p><strong>Best Regards<br />\r\nJohn Doe</strong></p>\r\n', 42, 43, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-08-01 03:10:00', 12),
(8, 34, 'tah', 63, 62, 0, 1, 0, 0, '2016-05-01 00:00:00', NULL, NULL, NULL, '2016-03-21 09:56:52', 10),
(9, 34, 'pakistan', 63, 62, 0, 1, 0, 0, NULL, NULL, NULL, NULL, '2016-03-21 09:57:02', 11),
(10, 34, 'pakistan kkkkk', 63, 62, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2016-03-21 09:58:41', 12),
(7, 34, 'tah', 63, 62, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2016-03-21 09:56:28', 17),
(6, 34, 'tah', 63, 62, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2016-03-21 09:55:51', 17),
(11, 34, 'a', 62, 63, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2016-04-11 09:45:16', 10),
(12, 10, 'WOW what a deal', 62, 63, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2016-05-07 11:20:33', 18),
(13, 10, 'TEST MESSAGE', 62, 63, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2016-05-09 09:06:54', 18);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1440392615),
('m130524_201442_init', 1440392618),
('m140506_102106_rbac_init', 1443428445),
('m170610_152817_i18n', 1462110606);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `letter_content` varchar(800) NOT NULL,
  `name` varchar(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `letter_content`, `name`, `date`) VALUES
(2, '<p>taha khan lskjf fklsjf sfjsdf<span style="background-color:#DAA520">kjfhsdf&nbsp; dfigdf<span style="color:#EE82EE">iojfiosa fhfohsdf</span></span><span style="color:#EE82EE">fjosidjfoisjffkjlsk<img alt="lkfjskjhsh" src="https://www.goodui.org/" /></span></p>\r\n', 'Letter 2', '2015-11-10'),
(3, '<p>s;ldfjls fjsf kljsfjslfjiusfkjd fhohsfidh</p>\r\n', 'Letter3', '2015-11-11'),
(4, '<p>kjsfhnjiksfbasihfbis dfusdgfyugdfyui</p>\r\n', 'letter3', '2015-11-10'),
(5, '<p>sjkfh fjhsid fishdf ius hfigs ifgisfgysfyuggsufgdyusgd f</p>\r\n', 'letter4', '2015-11-11'),
(6, '<p>;lkllkjlk</p>\r\n', 'kjklj', '2016-08-10'),
(7, '<p>This is my first news letter</p>\r\n\r\n<p>hope find you all in the best of you health</p>\r\n', 'Letter 3', '0000-00-00'),
(8, '<p>Hope to find you in the best of health.</p>\r\n', 'FirstNews', '2016-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscription`
--

CREATE TABLE `newsletter_subscription` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `key` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter_subscription`
--

INSERT INTO `newsletter_subscription` (`id`, `email`, `status`, `key`) VALUES
(3, 'jawadkhan.it@gmail.com', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `notification`) VALUES
(1, 62, '<p>taha</p>\n'),
(2, 62, '<p>pagal sahi kam kar</p>\n'),
(3, 62, '<p>sdhFjkshjskdf</p>\n'),
(4, 62, '<p>;sjfjkjhsajhk</p>\n'),
(5, 62, '<p>sasdasdasd</p>\n'),
(6, 62, '<p>sdklajkdjhagdjhfhahd</p>\n'),
(7, 62, '<p>asfjsklfjkshdgsdjfhjksd dfkljhsfjkhsjh<strong>lskjfkljsfkhskhfjsh</strong></p>\n'),
(8, 62, '<p>asfjsklfjkshdgsdjfhjksd dfkljhsfjkhsjh<strong>lskjfkljsfkhskhfjsh</strong></p>\n'),
(9, 62, '<p>asfjsklfjkshdgsdjfhjksd dfkljhsfjkhsjh<strong>lskjfkljsfkhskhfjsh</strong></p>\n'),
(10, 62, '<p>asfjsklfjkshdgsdjfhjksd dfkljhsfjkhsjh<strong>lskjfkljsfkhskhfjsh</strong></p>\n'),
(11, 62, '<p>asfjsklfjkshdgsdjfhjksd dfkljhsfjkhsjh<strong>lskjfkljsfkhskhfjsh</strong></p>\n'),
(12, 62, '<p>asfjsklfjkshdgsdjfhjksd dfkljhsfjkhsjh<strong>lskjfkljsfkhskhfjsh</strong></p>\n'),
(13, 62, '<p>asfjsklfjkshdgsdjfhjksd dfkljhsfjkhsjh<strong>lskjfkljsfkhskhfjsh</strong></p>\n'),
(14, 62, '<p>asfjsklfjkshdgsdjfhjksd dfkljhsfjkhsjh<strong>lskjfkljsfkhskhfjsh</strong></p>\n'),
(15, 62, '<p>asfjsklfjkshdgsdjfhjksd dfkljhsfj</p>\n'),
(16, 62, '<p>asfjsklfjkshdgsdjfhjksd dfkljhsfj</p>\n'),
(17, 62, '<p>asfjsklfjkshdgsdjfhjksd dfkljhsfj</p>\n'),
(18, 62, '<p>asfjsklfjkshdgsdjfhjksd dfkljhsfj</p>\n'),
(19, 62, '<p>skdfksfjksbjh<strong>kjdnfjkhsfjkgsgsjhfjhsgf<u>ksfjsfsjhvfgshd</u></strong></p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `notification_admin`
--

CREATE TABLE `notification_admin` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `optionalfield_bridge_table`
--

CREATE TABLE `optionalfield_bridge_table` (
  `id` int(11) NOT NULL,
  `optional_field_key` int(11) NOT NULL,
  `filter_field_key` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `optionalfield_bridge_table`
--

INSERT INTO `optionalfield_bridge_table` (`id`, `optional_field_key`, `filter_field_key`) VALUES
(0, 8, 1),
(0, 9, 11);

-- --------------------------------------------------------

--
-- Table structure for table `optional_fields`
--

CREATE TABLE `optional_fields` (
  `id` int(10) NOT NULL,
  `titles` varchar(100) DEFAULT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `display_for_adpost_page` int(11) NOT NULL DEFAULT '1',
  `dd_options` varchar(500) NOT NULL,
  `display_for_screen_page` int(11) NOT NULL DEFAULT '1',
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(25) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `website` varchar(120) DEFAULT NULL,
  `logo` longblob NOT NULL,
  `logo_type` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `name`, `alias`, `address_line1`, `address_line2`, `phone`, `email`, `website`, `logo`, `logo_type`) VALUES
(1, 'AdPost', 'adpost', 'Karachi', 'Karachi', '123456485', 'test@test.com', 'http://www.adpost.se', 0x89504e470d0a1a0a0000000d494844520000005a0000004608060000004cbc83e20000144c49444154789ced9cf98f1cc775c73fd5d3dd73edccdecb3d4991cb43174951879548322d4581143b72623bb61127708c384180c07f808d24409cc48063c38911030112c0f9c9f105440e64473e622bb2a4849629d194481d3c422ec95d7297bbcbbde69e3e2a3ff47475f7f4ccee925c72e9400fe8ad9d57df7a7574d5abf75ed58cf8dab39ae41dbaa1241068f8c3fc4e7a43533da11974647672ad5429d5282d5531533af9deec35cbb991643b454a954984f4fa7db353003d93dec653078f5f73270efff0243f7ae615761d18e5a94f3f7acd726e244dcfff27cf1f7e9fd779b8e929802e0021fc8f574f22fcf73ae4dc701241a76f760aa05d4393dfa16b204d02527a9ae45ad2eb2d7f3352ef7f406e520ae8102cf96b49c57596dfe8b45aaae3d82ed9ce5454956db256d36e61ad7ad554582873e8bb6f32796a2e96b759fad94fafdb5bb9def21b49afbd7096979f3dc1ca7c2996b7d9e6f475cfe85b69454c9d9cc3b69c96799b3ea3d768fb3bb441a46fc4d297b790fe68d794cd6ca2a0e1b05cb7a05b497fb4a1cd6ee2ff3bd5b1d903da8e3664a06f21cdb16a5b36cbe2800d30efe0d69d4561daac80923fbe111d2da5c4752548d0348158c5f8735dcfc794aa1b2d3a2765c31595084dac1a749252225d0faf25da63a5ebb551085aca14aa4d2dcaae23158d30bd50bd73d73163051a5a8313c743c305f73b3037b5c48b4f1fa7b45ce5e10fdcc5f8fee1961d766c87a3cf9fa15aac3784c531d29514972abcf9b3f3548a756e7fd71883b775b71d40ab66f3dc375f6361bac0a31fddc7c8cebeb84c293975648ac33f3c49675f96831fde4b577f47134a60d71daaa53a00c98cd1a685cda534743d477ff743f4763d0042a3569be5ecd4d7b09d42fb7242a7bffb61b6f43d86e3543977f1eb94ab53344f3e35d085c532dff8dbe759b95206606e6a993ff9c26f92efcdc484bffdf349beffd5c300f40ce65a3660766a89ef7ce5bf999b5c06e0d88b67f9c3bf79927c4f5c1ec01b87cef3ca0f4f02505aa9f2479f7b92849e88606a658b67bf7a98e25205802b9756f8c45f3d81d6b4f28efce434a75e9d02e0639f79ac657d51d2e8ef79847b767f8efe9e87233943fd4ff23f477f0fdb897b9b0023034ff1c83dff4a22910660fbf0c778fe95a72857279b6ac09b297353cb6a9001ca851a275eb9d058fec1e3382eaffce8a4c22dcc046f3b8c7beeeb47d520032ccf9738f6c2d9983c5f5d1df9f129859d9958e0e2ff5e89e14ebe3aa9061960f2d41cd5524de5fbb4345b64f2d41c93a7e6705d77cd614e9abdbce7be7fa7affba1589d23fdef636cf0436dcaf573efed5f40d3520adfd97117778d7f9a663b439334a2702d96f499d7a7559effaccc979839b7d8b2e230ae5ca8c5f2df7af93cd29531998585724ce689c39331dcb9372fc7646a09ad6dfbd74b86de816974c5eaf31e8d3ddb3e85108958b9ed23bf4f2ebb335666c7c8c7e9c8dc166da7ff8f6e269034de6423bd7c7e31325300a6cf2e50af59115cbbed2726efc21285c54a0c77eecdcbb88e1bc15f38318beb04b3d1755d66ce2d46e401a43266b4ce36ed926b3cab5177fe0099d46804af0993ad831f6e89d7f50eb60e7e24225b0d7442d710081042a585c50ab58a1511323db110c389365b4d334eba9299730b31dca5335762f216660a54cb41ddf5aa4d61b11cc1e9667c96ada75df176ae4e9aa6d3dffd508497cddc46777e7fdb322303ef450bad02b58df88d0e479da42b59992f4704cc5f5a89e156a3665c2bb53337b514c3d5ca168585a0ee5ad9a256b622b864da58b3be30bfddb31eeace1f8894e9eb7a103dd17a6307e8ccdd8d69f4c4e3d18691404a896e24d00d6fd0a5941497a34b7d69b6b8ea9151985ae1e6a6962318db72586ec48f23476452b27039d868aba5ba0a81e6bad3a473498ca44e2b6a7794b5da1326c7ad51b79622bc5c766704dfd7f5ae683f9c0a5206215a53ef2497d9a964ab19ade91af9de0c8f7cf02eee7ee436c0dbdc2ac57a44e0f27c092104095d63db9d5b14ae150921e81fed64db1d03eaf3f25cd44caa552cb5717674a6d97ef7a092b7345b54b86ab9aef80f3cb98787de7f27e98ea87ef629934fd1bda5839ec15ce898ab311b5ba5a1e65bf60ac74fff356f9cf93c752b587d99d468a45c576e9fca735d8b13137fcfc5b91f84faaed19ddfaf64ab2991ca981cfc9d7dec3bb89d95f932affff40c5242ad1c0c74bd6a516d7c1e1eefe5f18f1de0e9afbc14532f61baf357b7b17def20dffee24fa914eb14972ad896a3564db558c7aada2061e78161f61ddcc1e4c939ecba1331371dcbdb18cd94cede776f27953549655b0cb484dbef1f63d7bd2300deacaf34bc3ed13a0d53ad7e85b7ce7e0921747af3f7b16df8a30024cd3e8466e04a0b21209fdda5cacc2f1de6adb35f229fddc350efe3caa6ce657729575c6d8666da60efbbb7a31b097a0673e41a8e85637b1d94525229d591aed7b41d7b8718dbd3cfae0323d17e36adc3ee810eb6ee1950b3bf56b5a8d76c852b17aab8ae67218cef1f6274571f1d5d292492d27235a6065259936c670a33a573f7c3b7c5d513922ddbbad8f3c028b7bf6b8c84aea917b05aea9777a58d94368e53e5e2ecb38aaf6b29f4441a24984637a6d1abca4dce3c4ddd5a6161e5172c168e2b7e2eb343c9570e8ba6090c33e12d35019d7d5924605b2e527ab66fa550f7ac07bc192da5a477281fb4b9810b3a1df0c7f6f423f15c6dab662b5ca5e4b9f15a426360ac1bdd4cd03d98032128afd462f2b484a66c6733a5ab7ca5be4227e2617e53768bb48127e02f168e29bea6a5d0b42442403a3988a6e98d7649e6160f79ab433acc2fbeaceacda6b729f99a5f49739aebf666b455b715bf5aaaa9d1eb19f2f45f38f0d42c27ccef1bce039e0aa837cc36efe579fad94ce964bbbc2b023d833990de6c6f9667d71decbaddbebed0820af3d713ca6cc6972a17145f133a9ad091402a39a8f896bd4cb132a1e42cac1c517252e640dc8e6ea664c6f02ee9b94153ea55dbdb10242a66e17f6e45617ed740ce7bbb12ea353b9059b111d233d59229cf5ccbf7661180557762f22ac51acbabec09edccb57687a6abe12d7b05d76dbc54cd4008038137803ed5ea0bd4ad6525a7583ea7f29266dfda87b3869988b5a256b190028cb41e7516d6ea1d90ca189e09293c9bd8a772b10602d21d491286d79c6c3e8914de46e9936e78ed716c9733af5f6ad76c649bb6ac6746c7f12e96ed99989a30d0340309984697c2556a9790d252722ab5695cd7eb9fa619e8092fba1831441dc7e5d0336f323bb9ccca951677235c4f87a532c655c7167433816e26b0ea4ed4be75834d4e2db9ac89c08f797b14b6995f7bfe0c0ffcc61e1289f83cd9c8190de03825c00beffabe6638eee1bf081f6f3b251cb786a679ab53d34c704ad1813efcfd13bcf8f47115fc6f26df1d6fe728ac46092341a261d285ddfa4066d0785f7e1897ce25d11202d791cc4e2d71fcc509ee796c7cddf5af15cf68876d0e8f7a33ba477db6ece508de756bb86e0df066b2a1e7a95b8b81eaa8552c7efe831338b6db38e968df3465325d05699a507163df648cca0c06da6c0c7438a8944c1b980d1d8e8443df7b33a2ebd7a2ab71c1d7ce0b727cfdec3fae5bc7750395e7af5265decd9c5b883808616a8ef71aa61ee38571adf8095d534e4a6b9909c50beb7f9f97cc18643b538a3f7f7185f36f5d5eb5ce087f1d76b47f3b36c26f6e6b335e5a4d7c17891b9409dbd100174f5fe156264d136cd9da15e19d3e7271fd02ae55496f105f059566279758ff9e1c50d435699ddbfad37a72a2fc1dfb8622fc893766d66a5e6b716b7573fddd47083d8a171aad8c39e5b02ccd1691785e9f61ea8da075e010f8ba4642f494a4052ec0363914a1a5d98c0bcb94ae54f5474e2ef60e914c1baa9d0b970b9e6ddfd4be566d81c0f46b9546fa13e68764f9b25d19d4691add117c423349686650467afb8cf2eb4acb550490ce9aec7f749ceefe6cdbcd20e648b4c035f35d47e23a725d32adbaa3226561ea1ae860f7fda36ae391ae5421d6b5da12ce5b4b7bacc5b7ed20aa98d05211bc260c3411c4c91dc70b33abaf56d42adef1d48ebd833cf989fbd979602416b0d1121a524a1517be9aaf3838b68be3b82ae6edf37d998e1dd8d75623e86484707efae07b6f27dd91549b4d61a1dc14776ef7ffea4fb49ed013e637f21cb7a2f049b33782d7f59c8ade4929b11b58a53a6a150b8160fc9e6112ba161c6d112c7dc34c2040dd9950b186265c2bbeebbab88e8bc08b6bf87c4fa6502a00bc70ac0074538fc91ddcdec3ce03c3caccaa96ea11f5109e85cd5fad10629534524f1b7ee34fdd5e56fc54720b9aa62b7ccaec57ce8a9436b6edad38a53aac9a0d027a06f391c6852961244008ea552b6a0baf43773896ebc5949bf4a6efea574b753573aa250b8440375a6c2a9ae0c063e3f811f85ab5c9961602c789dbe97e8da6de453a39b46ea3a395faa8d78373cfa4d18ba1e7142e9bbe4de57907070d1ded337d9b2f934b065243bbae949264cab39f5d5b5229d6024813ae55f95ad5522a416f1c9b0124b32648ef04c5b63cf5512e78716823a9d34a0d8deceaf3da29c169a1c6ac9ad3a29cd7ddbbc73fc33db77f9e5ce3dbc231b5a1fa41d3e7404eb57e597d36f43c99d45685efecb843e16bf579c50fa68c1048e1dd7b53e3145e794260a60d855b6c1c338916b856e5cb2b551c578210a4b241ac24993290c28be2d52b9efa58b9e29d769b6983983a1202c3d4e91ae888d52b346ffdd62b568b72d09ddbcbae6d7fca8e918fb375e8238a1fc105c3d1f4399053ae4e071e9f66d0d37940e1fbba1e54f872ed62341eed0b14e01d2b8578614a7724156e617aa52dae157f71a688001289c60b6b5032e3851eeb355bdd425abcec6123abab8952193356afeeef21e57aab220cf4bc1b43f762102303ef5da5e5ab93652f51ab070eded8960f02deb9626fd7038a1f0e99c69460ab0b2e3e65f241c72f9c887fc5ac15cd9c5f8ca4ba190db1fa6eb57425b3934bd4ab165766bc9798cd072e77b95063e278e0a0d4aad1fb26808aa52c350e804b2b55152f9140beb1ac01b2e9ede889ec3a5da5285f4a8762f9ace26de97d0fe3a39fe4ee9d7f1e09a1164aa783c0bfff8f7f47a2d505179fd25953059426de98a112ba02d08e4e1c9e647ae20a270e7ba715869150661b78b3564b78cec0a923534c4f2c505cac2089bed8c26299e7be799472a1866d399113729f92192f5e3c7b61894ab1ce73df381acc6ee91d41f964e87974bd63bd4e698cbf58783d242bc7be5d7fc96dc3bf1b812e158e2bbcba1f6da6756a158b632f4d3034decba5b3f1d88796d0c8f564589a2db23c5fe23bfff012972f2cc570615a9e2bf16f5f7e490d4c326b60a4c2aac3c44c19544b754effe22297cf2f29c7267cf3d4aa394c4f2cf0bd7ffa199d7d59ca2bde3197910a42b666ca5343a5e50adffae2f3cc9c5be4e087f62ad3cb37bb0084d0106831a728c85f9dbfb07c04c6fe58f133e9d108ceb28b2c17df52783d98d1262b5458982ef0cc3f1ef2ccad1615e5bad32cce1691ae64e28d191c67f50886771126987d5dfd1d916bb6c98c41ba2349a554a756b599bf18c477bb435782eb150bd7959c3e7a894442e09f0998a1d878aa31a3a584a95373b8b2716c96baba89bb5a88c3cf9b5b7c19291d5a5d7e042855ce51a95d8e5f37f0cd25d775292e553d95d0a2c681b12ee5223976c87d6ad7aac0bd0249ec7eb4a6f987b15ebe6f666ac2bbaaa04435f88eed50af390a1fde30d3b9a4e2fb8717b6efda3735d30f67aef5066433abc128944e532c4fb4290cd3f33ff642a861f34e4a49df483e24369a8663bbfda39debc2b5ca07c9d0f69e18ae7fac33864b7524c9f76614cebbcd14952744e35a4403e39fdc8771610ba45a9b5158db29e13865058fc4a39b9a1d8b7737dcf07397be15e94bf0b84c5cfc3ae1229a1f9dea1dca07e762a114a291b091dd7dde7747d6c0a9cf4db8feb1f83de4e1f1de18ae6730e799930d8c63bb3179baa191efcb2a8cba0211c2f9379c04b0523ca9f24be5092c6b256227fbd1bbd8d3220f0967a6fe05db2ec4fa3d33ff1c8bcb47032c21d531b2ab4ff9f8aa652da86fb893cedecc9a3845219c99d219dad113836cbb6300cd3f1e6be077ec1d8c60eafef96148dee0f69ec8016def602e38cf6ce07c0f1601b30b2fe13855a474b9bcf0821a3557da144a672894ce50aa4c4646b9549d5479aeb4a279950bbc79f60bea80564a974a6d9ad74efd45f44dd138059752b2656b375d5b722cce14a0a1c213ba463a6b46968d99d2d979cf08477e725ae11090ed4a459797573542d390ae0b08c6f70f63a6f418aea32bcde8ae5e2e9c9855f5eeb97f2c82cbe483c359bfdeddf78e463042138cede9e7ecb14baa5d66c82ab9b27c9873d3dfa633bb87d317fe59f1cbd549befbc26e5ad17f1d7eb225dfa7b727be4c424b3132f07e6ca7c8db67ff8e85e5576338f5c328665ae781277673e8bb6f61d71dccb4cee8ee7eee78702be1eb55524a0efcda4e4efd628ac24205dd4cd03fdac943efbf33826b749d81b12e5616cae84682fb9ff03ad32c4f08c181c77731737e11ab6ab3edce2dea1b5c7efef83d238ceeeef7ac09077a87f3dcf12b5b63f2f61fdcc1d4a939ea359b81b12ec6f60cb05c7f5b75f8e5639f5c75e0ae965cb7c6b1d39fe5d8e9cfae8a53e69d1082fb9fd88d96d0282d55e81dceb3e7feb1e0eb6321bd3b3cdecb7b3ebc8f93af4e91ebc970dfafefa26fa43382036fa5ec7f740776cd21db9962db1d032d631700773cb895cbe717599a2df2f06fdf8dd650097e7e3a6bf2c41fdcc7cbfff136b58ac5bd8fefa477288834fab8ddf78d72e9cc1596e64b3cf0c46eb29d2996e720b6d86e220901e299e777cbdf7af4e4dae8aba4affed90fb874e60a1ff8d443ec3bb863c3e55f0d5d9afbd1e6fe1c9b105cfd4d985f5612f1fdfb66a5b001bf12f6cb9042c367daa40736e8f73adad20d157e75d4eec6ebcda97c95fbd11b927283e45e650a8d99253629256447df188a2fe14da5f691811b9bd2f403831b4db10b349b48b1a3a99b9cded89ffab94526b2a24d9cd13776a0377f22df3224bef1fda4ecc85efb0f75b7a3a5d92276dd21d793269969fdc5cb9b45b65df47e3f63f33c1674575a2c17de460890920d4bb50c1869a8b9502d6c9cdceb4a376b9cc1fb8d7f81c77d27bd3129c0ff0182b8a47af9c332d50000000049454e44ae426082, 'image/png');

-- --------------------------------------------------------

--
-- Table structure for table `postcode`
--

CREATE TABLE `postcode` (
  `id` int(10) NOT NULL,
  `code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_deals`
--

CREATE TABLE `promotion_deals` (
  `id` int(225) NOT NULL,
  `key` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotion_deals`
--

INSERT INTO `promotion_deals` (`id`, `key`, `title`, `content`) VALUES
(1, 'key_1', 'New Promotion Deals', '<p><strong>Extending this module</strong></p>\r\n\r\n<p><em>This project contains two modules:</em></p>\r\n\r\n<p>Realistic Dummy Content API (realistic_dummy_content_api), which looks inside every enabled module for files which contain images or text, and replaces available fields.</p>\r\n\r\n<p>Realistic Dummy Content (realistic_dummy_content), which replaces user pictures and node article images with portraits and stock photography. You can reproduce the realistic_dummy_content/realistic_dummy_content directory structure in your own modules for better control of the realistic dummy content you want to generate. If you don&#39;t want the example stock images that ship with this module, you can disable Realistic Dummy Content (realistic_dummy_content) and leave Realistic Dummy Content API (realistic_dummy_content_api) enabled.</p>\r\n\r\n<p>Developers can also extend Realistic Dummy Content by implementing hooks defined in api/realistic_dummy_content_api.api.php. Specifically, if you want to be able to define realistic dummy content for a custom field type and the standard technique is not working, you can submit an issue or patch to the <a href="https://drupal.org/project/issues/2253941?categories=All" rel="nofollow">issue queue</a> for this module; but you can also implement the field modifier yourself by looking at Realistic Dummy Content API&#39;s implementation of hook_realistic_dummy_content_attribute_manipulator_alter(), and the classes which are referenced from there.</p>\r\n\r\n<p>Creating recipes</p>\r\n\r\n<p>Often, sites require a set number of entities to be created in a specific sequence. For example, if your site defines schools which have <a href="https://www.drupal.org/project/entityreference" rel="nofollow">entity references</a> to school boards, a realistic scenario may be to generate 3 school boards followed by 20 schools. You can define this type of recipe for your <a href="http://dcycleproject.org/blog/44/what-site-deployment-module" rel="nofollow">site deployment module</a> (or any module), by creating a file called ./sites/*/modules/mymodule/realistic_dummy_content/recipe/mymodule.recipe.inc. <a href="http://cgit.drupalcode.org/realistic_dummy_content/tree/realistic_dummy_content/recipe/realistic_dummy_content.recipe.inc" rel="nofollow">An example is included herein</a>.</p>\r\n\r\n<p>Field meta data</p>\r\n\r\n<p>Some fields have special meta data: body fields can have input formats in addition to body text; image fields can have alt text in addition to the image. This can be achieved using a specific naming scheme, and you will find an example in the enclosed data, which looks like:</p>\r\n\r\n<p>realistic_dummy_content/fields/node/article/<br />\r\n&nbsp; - body/<br />\r\n&nbsp;&nbsp;&nbsp; - ipsum.txt<br />\r\n&nbsp;&nbsp;&nbsp; - ipsum.txt.format.txt<br />\r\n&nbsp;&nbsp;&nbsp; - lorem.txt<br />\r\n- field_image/<br />\r\n&nbsp;&nbsp;&nbsp; - 1.jpg<br />\r\n&nbsp;&nbsp;&nbsp; - 2.jpg<br />\r\n&nbsp;&nbsp;&nbsp; - 2.jpg.alt.txt</p>\r\n\r\n<p>In the above example, realistic_dummy_content sees two possible body values, <em>one of which with a specific input format</em>; and two possible images, <em>one of which with a specific alt text</em>. Meta data is never compulsory, and in the case where a meta attribute is needed, a reasonable fallback value is used, for example filtered_html will be used if no format is specified for the body.</p>\r\n\r\n<p>Issue queue</p>\r\n\r\n<p>See the <a href="https://drupal.org/project/issues/2253941?categories=All" rel="nofollow">issue queue</a> if you have questions, bug reports or feature requests.</p>\r\n\r\n<p>Docker integration</p>\r\n\r\n<p>To test this module you can run:</p>\r\n\r\n<p>./scripts/test.sh</p>\r\n\r\n<p>To create a development environment, you can run:</p>\r\n\r\n<p>./scripts/dev.sh</p>\r\n\r\n<p>For more information see <a href="http://dcycleproject.org/blog/91/quick-intro-docker-drupal-project" rel="nofollow">A quick intro to Docker for a Drupal project (Dcycle Project, Feb. 18, 2015)</a>. These scripts are meant to be used with <a href="https://www.docker.com" rel="nofollow">Docker</a> and <a href="https://coreos.com" rel="nofollow">CoreOS</a>.</p>\r\n\r\n<p>Continuous integration with Circle CI</p>\r\n\r\n<p><a href="https://circleci.com/gh/alberto56/realistic_dummy_content" rel="nofollow">CircleCI</a> is a continuous integration platform for Drupal projects. In <a href="http://dcycleproject.org/blog/92/continuous-integration-circle-ci-and-docker-your-drupal-project" rel="nofollow">Continuous integration with Circle CI and Docker for your Drupal project (Dcycle project, Feb. 20, 2015)</a>, I documented how and why I set up continuous integration with Circle CI and Docker for Realistic Dummy Content.</p>\r\n\r\n<p><a href="https://circleci.com/gh/alberto56/realistic_dummy_content" rel="nofollow">See CircleCI test results here.</a></p>\r\n'),
(2, 'key_2', 'Packages', '<p><strong>Extending this module</strong></p>\r\n\r\n<p><em>This project contains two modules:</em></p>\r\n\r\n<p>Realistic Dummy Content API (realistic_dummy_content_api), which looks inside every enabled module for files which contain images or text, and replaces available fields.</p>\r\n\r\n<p>Realistic Dummy Content (realistic_dummy_content), which replaces user pictures and node article images with portraits and stock photography. You can reproduce the realistic_dummy_content/realistic_dummy_content directory structure in your own modules for better control of the realistic dummy content you want to generate. If you don&#39;t want the example stock images that ship with this module, you can disable Realistic Dummy Content (realistic_dummy_content) and leave Realistic Dummy Content API (realistic_dummy_content_api) enabled.</p>\r\n\r\n<p>Developers can also extend Realistic Dummy Content by implementing hooks defined in api/realistic_dummy_content_api.api.php. Specifically, if you want to be able to define realistic dummy content for a custom field type and the standard technique is not working, you can submit an issue or patch to the <a href="https://drupal.org/project/issues/2253941?categories=All" rel="nofollow">issue queue</a> for this module; but you can also implement the field modifier yourself by looking at Realistic Dummy Content API&#39;s implementation of hook_realistic_dummy_content_attribute_manipulator_alter(), and the classes which are referenced from there.</p>\r\n\r\n<p>Creating recipes</p>\r\n\r\n<p>Often, sites require a set number of entities to be created in a specific sequence. For example, if your site defines schools which have <a href="https://www.drupal.org/project/entityreference" rel="nofollow">entity references</a> to school boards, a realistic scenario may be to generate 3 school boards followed by 20 schools. You can define this type of recipe for your <a href="http://dcycleproject.org/blog/44/what-site-deployment-module" rel="nofollow">site deployment module</a> (or any module), by creating a file called ./sites/*/modules/mymodule/realistic_dummy_content/recipe/mymodule.recipe.inc. <a href="http://cgit.drupalcode.org/realistic_dummy_content/tree/realistic_dummy_content/recipe/realistic_dummy_content.recipe.inc" rel="nofollow">An example is included herein</a>.</p>\r\n\r\n<p>Field meta data</p>\r\n\r\n<p>Some fields have special meta data: body fields can have input formats in addition to body text; image fields can have alt text in addition to the image. This can be achieved using a specific naming scheme, and you will find an example in the enclosed data, which looks like:</p>\r\n\r\n<p>realistic_dummy_content/fields/node/article/<br />\r\n&nbsp; - body/<br />\r\n&nbsp;&nbsp;&nbsp; - ipsum.txt<br />\r\n&nbsp;&nbsp;&nbsp; - ipsum.txt.format.txt<br />\r\n&nbsp;&nbsp;&nbsp; - lorem.txt<br />\r\n- field_image/<br />\r\n&nbsp;&nbsp;&nbsp; - 1.jpg<br />\r\n&nbsp;&nbsp;&nbsp; - 2.jpg<br />\r\n&nbsp;&nbsp;&nbsp; - 2.jpg.alt.txt</p>\r\n\r\n<p>In the above example, realistic_dummy_content sees two possible body values, <em>one of which with a specific input format</em>; and two possible images, <em>one of which with a specific alt text</em>. Meta data is never compulsory, and in the case where a meta attribute is needed, a reasonable fallback value is used, for example filtered_html will be used if no format is specified for the body.</p>\r\n\r\n<p>Issue queue</p>\r\n\r\n<p>See the <a href="https://drupal.org/project/issues/2253941?categories=All" rel="nofollow">issue queue</a> if you have questions, bug reports or feature requests.</p>\r\n\r\n<p>Docker integration</p>\r\n\r\n<p>To test this module you can run:</p>\r\n\r\n<p>./scripts/test.sh</p>\r\n\r\n<p>To create a development environment, you can run:</p>\r\n\r\n<p>./scripts/dev.sh</p>\r\n\r\n<p>For more information see <a href="http://dcycleproject.org/blog/91/quick-intro-docker-drupal-project" rel="nofollow">A quick intro to Docker for a Drupal project (Dcycle Project, Feb. 18, 2015)</a>. These scripts are meant to be used with <a href="https://www.docker.com" rel="nofollow">Docker</a> and <a href="https://coreos.com" rel="nofollow">CoreOS</a>.</p>\r\n\r\n<p>Continuous integration with Circle CI</p>\r\n\r\n<p><a href="https://circleci.com/gh/alberto56/realistic_dummy_content" rel="nofollow">CircleCI</a> is a continuous integration platform for Drupal projects. In <a href="http://dcycleproject.org/blog/92/continuous-integration-circle-ci-and-docker-your-drupal-project" rel="nofollow">Continuous integration with Circle CI and Docker for your Drupal project (Dcycle project, Feb. 20, 2015)</a>, I documented how and why I set up continuous integration with Circle CI and Docker for Realistic Dummy Content.</p>\r\n\r\n<p><a href="https://circleci.com/gh/alberto56/realistic_dummy_content" rel="nofollow">See CircleCI test results here.</a></p>\r\n'),
(3, 'key_3', 'Packages For Deal', '<p><strong>Extending this module</strong></p>\r\n\r\n<p><em>This project contains two modules:</em></p>\r\n\r\n<p>Realistic Dummy Content API (realistic_dummy_content_api), which looks inside every enabled module for files which contain images or text, and replaces available fields.</p>\r\n\r\n<p>Realistic Dummy Content (realistic_dummy_content), which replaces user pictures and node article images with portraits and stock photography. You can reproduce the realistic_dummy_content/realistic_dummy_content directory structure in your own modules for better control of the realistic dummy content you want to generate. If you don&#39;t want the example stock images that ship with this module, you can disable Realistic Dummy Content (realistic_dummy_content) and leave Realistic Dummy Content API (realistic_dummy_content_api) enabled.</p>\r\n\r\n<p>Developers can also extend Realistic Dummy Content by implementing hooks defined in api/realistic_dummy_content_api.api.php. Specifically, if you want to be able to define realistic dummy content for a custom field type and the standard technique is not working, you can submit an issue or patch to the <a href="https://drupal.org/project/issues/2253941?categories=All" rel="nofollow">issue queue</a> for this module; but you can also implement the field modifier yourself by looking at Realistic Dummy Content API&#39;s implementation of hook_realistic_dummy_content_attribute_manipulator_alter(), and the classes which are referenced from there.</p>\r\n\r\n<p>Creating recipes</p>\r\n\r\n<p>Often, sites require a set number of entities to be created in a specific sequence. For example, if your site defines schools which have <a href="https://www.drupal.org/project/entityreference" rel="nofollow">entity references</a> to school boards, a realistic scenario may be to generate 3 school boards followed by 20 schools. You can define this type of recipe for your <a href="http://dcycleproject.org/blog/44/what-site-deployment-module" rel="nofollow">site deployment module</a> (or any module), by creating a file called ./sites/*/modules/mymodule/realistic_dummy_content/recipe/mymodule.recipe.inc. <a href="http://cgit.drupalcode.org/realistic_dummy_content/tree/realistic_dummy_content/recipe/realistic_dummy_content.recipe.inc" rel="nofollow">An example is included herein</a>.</p>\r\n\r\n<p>Field meta data</p>\r\n\r\n<p>Some fields have special meta data: body fields can have input formats in addition to body text; image fields can have alt text in addition to the image. This can be achieved using a specific naming scheme, and you will find an example in the enclosed data, which looks like:</p>\r\n\r\n<p>realistic_dummy_content/fields/node/article/<br />\r\n&nbsp; - body/<br />\r\n&nbsp;&nbsp;&nbsp; - ipsum.txt<br />\r\n&nbsp;&nbsp;&nbsp; - ipsum.txt.format.txt<br />\r\n&nbsp;&nbsp;&nbsp; - lorem.txt<br />\r\n- field_image/<br />\r\n&nbsp;&nbsp;&nbsp; - 1.jpg<br />\r\n&nbsp;&nbsp;&nbsp; - 2.jpg<br />\r\n&nbsp;&nbsp;&nbsp; - 2.jpg.alt.txt</p>\r\n\r\n<p>In the above example, realistic_dummy_content sees two possible body values, <em>one of which with a specific input format</em>; and two possible images, <em>one of which with a specific alt text</em>. Meta data is never compulsory, and in the case where a meta attribute is needed, a reasonable fallback value is used, for example filtered_html will be used if no format is specified for the body.</p>\r\n\r\n<p>Issue queue</p>\r\n\r\n<p>See the <a href="https://drupal.org/project/issues/2253941?categories=All" rel="nofollow">issue queue</a> if you have questions, bug reports or feature requests.</p>\r\n\r\n<p>Docker integration</p>\r\n\r\n<p>To test this module you can run:</p>\r\n\r\n<p>./scripts/test.sh</p>\r\n\r\n<p>To create a development environment, you can run:</p>\r\n\r\n<p>./scripts/dev.sh</p>\r\n\r\n<p>For more information see <a href="http://dcycleproject.org/blog/91/quick-intro-docker-drupal-project" rel="nofollow">A quick intro to Docker for a Drupal project (Dcycle Project, Feb. 18, 2015)</a>. These scripts are meant to be used with <a href="https://www.docker.com" rel="nofollow">Docker</a> and <a href="https://coreos.com" rel="nofollow">CoreOS</a>.</p>\r\n\r\n<p>Continuous integration with Circle CI</p>\r\n\r\n<p><a href="https://circleci.com/gh/alberto56/realistic_dummy_content" rel="nofollow">CircleCI</a> is a continuous integration platform for Drupal projects. In <a href="http://dcycleproject.org/blog/92/continuous-integration-circle-ci-and-docker-your-drupal-project" rel="nofollow">Continuous integration with Circle CI and Docker for your Drupal project (Dcycle project, Feb. 20, 2015)</a>, I documented how and why I set up continuous integration with Circle CI and Docker for Realistic Dummy Content.</p>\r\n\r\n<p><a href="https://circleci.com/gh/alberto56/realistic_dummy_content" rel="nofollow">See CircleCI test results here.</a></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(10) NOT NULL,
  `country_code` char(2) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `slug` varchar(60) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `country_code`, `name`, `slug`, `status`) VALUES
(1, '1', 'Akershus', 'akershus', 0),
(2, '1', 'Aust-agder', 'aust-agder', 0),
(3, '1', 'Buskerud', 'buskerud', 1),
(4, '1', 'Finnmark', 'finnmark', 1),
(5, '1', 'Hedmark', 'hedmark', 1),
(6, '1', 'Hordaland', 'hordaland', 1),
(7, '1', 'Møre Og Romsdal', 'm%c3%b8re-og-romsdal', 1),
(8, '1', 'Nordland', 'nordland', 1),
(9, '1', 'Nord-trøndelag', 'nord-tr%c3%b8ndelag', 1),
(10, '1', 'Oppland', 'oppland', 1),
(11, '1', 'Oslo', 'oslo', 1),
(12, '1', 'Østfold', '%c3%98stfold', 1),
(13, '1', 'Rogaland', 'rogaland', 1),
(14, '1', 'Sogn Og Fjordane', 'sogn-og-fjordane', 1),
(15, '1', 'Sør-trøndelag', 's%c3%b8r-tr%c3%b8ndelag', 1),
(16, '1', 'Telemark', 'telemark', 1),
(17, '1', 'Troms', 'troms', 1),
(18, '1', 'Vest-agder', 'vest-agder', 1),
(19, '1', 'Vestfold', 'vestfold', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_user`
--

CREATE TABLE `tmp_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(112) NOT NULL,
  `auth_key` varchar(32) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(112) NOT NULL,
  `v_code` int(11) NOT NULL,
  `status` smallint(6) DEFAULT '10',
  `is_company` int(11) NOT NULL,
  `sms_verify` int(11) DEFAULT NULL,
  `email_verify` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `com_url` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_user`
--

INSERT INTO `tmp_user` (`id`, `username`, `name`, `auth_key`, `password_hash`, `email`, `mobile`, `v_code`, `status`, `is_company`, `sms_verify`, `email_verify`, `created_at`, `updated_at`, `com_url`) VALUES
(45, 'nazeeraashique2002@gmail.com', '', NULL, '123456', 'nazeeraashique2002@gmail.com', '03453130776', 3983, 10, 0, NULL, NULL, 15, NULL, ''),
(47, 'jawadkhan.it@gmail.com', '', NULL, '123456', 'jawadkhan.it@gmail.com', '03412372360', 7948, 10, 0, NULL, NULL, 15, NULL, ''),
(46, 'yarsas@hotmail.com', '', NULL, '123456', 'yarsas@hotmail.com', '47177477', 7919, 10, 0, NULL, NULL, 15, NULL, ''),
(48, 'taha@yahoo.com', '', NULL, '123456', 'taha@yahoo.com', '03155923218', 4797, 10, 0, NULL, NULL, 16, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(112) NOT NULL,
  `auth_key` varchar(32) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(112) NOT NULL,
  `sms_verify` int(11) NOT NULL,
  `state` int(112) NOT NULL,
  `city` int(11) NOT NULL,
  `status` smallint(6) DEFAULT '10',
  `address` varchar(255) NOT NULL,
  `is_company` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `img` varchar(100) NOT NULL,
  `logo` longblob NOT NULL,
  `logo_type` varchar(35) NOT NULL,
  `com_url` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `mobile`, `sms_verify`, `state`, `city`, `status`, `address`, `is_company`, `created_at`, `updated_at`, `img`, `logo`, `logo_type`, `com_url`) VALUES
(1, 'admin', '', 'gBH_Zf8YMObcD2MlGxm82qJFYGhtYcr9', '$2y$13$rH4EwEmf..t6D/7D0gZWm.Y7LB6YawxCjHKey8sFKccp4.DjeBmXy', 'hp9hthVPzJqtrkdaGWn3Ul3b8IlspMds_1443942536', 'pm@webexdesigners.com', '', 1, 0, 0, 10, '', 0, '2015-09-05 23:53:02', '0000-00-00 00:00:00', '', '', '', ''),
(61, 'yarsas@hotmail.com', 'Enebakk shahvez', NULL, '$2y$13$cq/tvkr69bpaB27HhZMM8uC2lrIYm2wVOm.NC./iGWVN6IKA6l/sK', NULL, 'yarsas@hotmail.com', '47177477', 1, 5, 0, 10, '', 0, NULL, NULL, '', '', '', ''),
(62, 'jawadkhan.it@gmail.com', 'Jawad Khan1', NULL, '$2y$13$Y9GErbPMrJ7dU4IVRoj7tuhlfi9LLIMzcqfYYIK3GFAaYp1XSmDCe', NULL, 'jawadkhan.it@gmail.com', '03412372360', 1, 17, 405, 10, 'House # 9, Street 33', 0, NULL, NULL, 'jpg', '', '', ''),
(60, 'nazeeraashique2002@gmail.com', '', NULL, '$2y$13$vqKW3Rgj36Zbh9sGoHr79.u9ipen117y9IHmXQJ2AP9SmUCXe56qO', NULL, 'nazeeraashique2002@gmail.com', '03453130776', 1, 0, 0, 10, '', 0, NULL, NULL, '', '', '', ''),
(63, 'taha@yahoo.com', 'taha', NULL, '$2y$13$CWQkabeFNcUK5lwBdlZaS.a/07AImfWpjxyXtdGnswt2xqjUsCG0a', NULL, 'taha@yahoo.com', '03155923218', 1, 0, 0, 10, '', 0, NULL, NULL, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_credit`
--
ALTER TABLE `ads_credit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertise_additional_fields`
--
ALTER TABLE `advertise_additional_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catetory_additional_fields_fk0` (`advertise_id`);

--
-- Indexes for table `advertise_comment`
--
ALTER TABLE `advertise_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertise_comment_fk0` (`advertise_id`);

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_additional_fields`
--
ALTER TABLE `category_additional_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catetory_additional_fields_fk0` (`category_id`);

--
-- Indexes for table `category_images`
--
ALTER TABLE `category_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commercial_ads`
--
ALTER TABLE `commercial_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commercial_search_ads`
--
ALTER TABLE `commercial_search_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conv_status`
--
ALTER TABLE `conv_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_fk0` (`code`);

--
-- Indexes for table `credits_details`
--
ALTER TABLE `credits_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits_expense`
--
ALTER TABLE `credits_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_packages`
--
ALTER TABLE `credit_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter_name`
--
ALTER TABLE `filter_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_additional_values`
--
ALTER TABLE `form_additional_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `i18n_message`
--
ALTER TABLE `i18n_message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `i18n_translation`
--
ALTER TABLE `i18n_translation`
  ADD PRIMARY KEY (`message_id`,`language`),
  ADD KEY `fk_i18n_translation_translator` (`translator_id`),
  ADD KEY `ix_i18n_translation_status` (`status`);

--
-- Indexes for table `i18n_translator`
--
ALTER TABLE `i18n_translator`
  ADD PRIMARY KEY (`translator_id`),
  ADD UNIQUE KEY `ix_i18n_translator_class_name` (`class_name`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscription`
--
ALTER TABLE `newsletter_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_admin`
--
ALTER TABLE `notification_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `optional_fields`
--
ALTER TABLE `optional_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postcode`
--
ALTER TABLE `postcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_deals`
--
ALTER TABLE `promotion_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_fk1` (`country_code`);

--
-- Indexes for table `tmp_user`
--
ALTER TABLE `tmp_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `ads_credit`
--
ALTER TABLE `ads_credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `advertise_additional_fields`
--
ALTER TABLE `advertise_additional_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `advertise_comment`
--
ALTER TABLE `advertise_comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `category_additional_fields`
--
ALTER TABLE `category_additional_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `category_images`
--
ALTER TABLE `category_images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;
--
-- AUTO_INCREMENT for table `commercial_ads`
--
ALTER TABLE `commercial_ads`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `commercial_search_ads`
--
ALTER TABLE `commercial_search_ads`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `conv_status`
--
ALTER TABLE `conv_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `credits_details`
--
ALTER TABLE `credits_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `credits_expense`
--
ALTER TABLE `credits_expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `credit_packages`
--
ALTER TABLE `credit_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `filter_name`
--
ALTER TABLE `filter_name`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
--
-- AUTO_INCREMENT for table `form_additional_values`
--
ALTER TABLE `form_additional_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i18n_message`
--
ALTER TABLE `i18n_message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `i18n_translator`
--
ALTER TABLE `i18n_translator`
  MODIFY `translator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `newsletter_subscription`
--
ALTER TABLE `newsletter_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `notification_admin`
--
ALTER TABLE `notification_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `optional_fields`
--
ALTER TABLE `optional_fields`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `postcode`
--
ALTER TABLE `postcode`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `promotion_deals`
--
ALTER TABLE `promotion_deals`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tmp_user`
--
ALTER TABLE `tmp_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `i18n_translation`
--
ALTER TABLE `i18n_translation`
  ADD CONSTRAINT `fk_i18n_translation_message` FOREIGN KEY (`message_id`) REFERENCES `i18n_message` (`message_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_i18n_translation_translator` FOREIGN KEY (`translator_id`) REFERENCES `i18n_translator` (`translator_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
