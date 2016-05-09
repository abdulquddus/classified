-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2016 at 08:45 AM
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
(47, 'imran', '', 'jHbAeJAK7JXwu45J19gieZULPqUt3Kk5', '$2y$13$Lzc3ARgQyyOcduP6fK6a/.Kc4C8ZsZsxzkJG.DMv54w4Yr2a3WDWe', NULL, 'imran@test.com', '', 0, 0, 10, 10, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'jawad', '', 'XkqyDJZlFLDA_QrwO4IhT83Dk5LC2Dob', '$2y$13$ufveGBJpaL/P6Ila5v8.RuS5QYDaIY66.lQr5n2QKvKFymd6qYKz.', NULL, 'jawad@test.com', '', 0, 0, 10, 20, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
  `advertise_title` varchar(45) NOT NULL,
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
  `v_code` int(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `ad_status` int(11) NOT NULL DEFAULT '1',
  `views` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `user_id`, `category_id`, `advertise_title`, `photo_name`, `description`, `price`, `condition`, `type`, `contact_name`, `email`, `mobile_number`, `state_id`, `city_id`, `address`, `v_code`, `status`, `created_date`, `ad_status`, `views`) VALUES
(7, 62, 20, 'TV', '', 'test', 5000, '', 0, 'Jawad K.', 'jawadkhan.it@gmail.com', 2147483647, 18, 430, 'uhkhkjhkjh', 1, 1, '2016-02-21 04:29:55', 1, 0),
(6, 62, 62, 'MY', '', 'test test', 10000, '', 0, 'khan', 'jawadkhan.it@gmail.com', 2147483647, 2, 27, 'test', 1, 2, '0000-00-00 00:00:00', 1, 0),
(5, 62, 28, 'asd', '', 'adsa', 233, '', 0, 'taha', 'jawadkhan.it@gmail.com', 2147483647, 13, 321, 'asdasd', 1, 2, '2016-01-13 19:29:55', 1, 0),
(4, 62, 28, 'my ad', '', 'kljkl', 123, '', 2, 'taha', 'jawadkhan.it@gmail.com', 2147483647, 12, 303, 'adsad', 1, 1, '2016-01-24 19:29:55', 1, 0),
(3, 0, 148, 'Imran''s Ads', '', 'test', 10000, '', 2, 'Jawad K.', '', 2147483647, 99, 5, 'test test test', 1, 1, '2016-01-01 04:29:55', 1, 0),
(1, 0, 85, 'my ad', '', 'disk', 1234, '', 2, 'khan', '', 98765, 99, 5, 'asd', 1, 1, '2016-02-20 06:29:55', 1, 0),
(2, 0, 66, 'my ad', '', 'test test', 10000, '', 2, 'Jawad K.', '', 2147483647, 99, 5, '', 1, 1, '2015-10-07 19:17:55', 1, 0),
(13, 62, 79, 'date', '', 'pakistan', 123, '', 2, 'khan', 'jawadkhan.it@gmail.com', 2147483647, 12, 306, 'kljaklj', 1, 1, '2016-02-22 09:48:40', 1, 0),
(9, 62, 27, 'my', '', '123', 1223, '', 2, 'khan', 'jawadkhan.it@gmail.com', 2147483647, 5, 95, 'asdasdasd', 1, 1, '2016-01-25 09:10:26', 1, 0),
(10, 62, 27, 'one', '', 'Descriptions', 1000, '', 2, 'Muhammad Taha Khan', 'jawadkhan.it@gmail.com', 2147483647, 1, 2, 'This is my address ', 1, 1, '2016-02-02 05:46:37', 1, 0),
(11, 62, 28, 'Honda civic', '', 'I want to sell my new honda civic', 1000000, '', 2, 'Muhammad Taha Khan', 'jawadkhan.it@gmail.com', 2147483647, 11, 267, 'North karachi pakistan', 1, 1, '2016-02-21 05:52:54', 1, 0),
(12, 62, 79, 'toyota Car 2', '', 'lkjsflksjkl', 1000, '', 2, 'Kahn', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, ' this is my address', 1, 2, '2016-02-15 09:12:12', 1, 0),
(14, 62, 79, 'aq', '', 'lskfj;klasjfknsdf skfbks fns flb', 123, '', 2, 'kahn', 'jawadkhan.it@gmail.com', 2147483647, 5, 90, ',snfjasifg', 7618, 1, '2016-02-22 11:41:55', 1, 0),
(15, 62, 28, 'taha', '', 'klsfjkhsj', 123, '', 2, 'TAha', 'jawadkhan.it@gmail.com', 2147483647, 16, 400, 'lkjhk', 4660, 0, '2016-02-23 06:45:18', 1, 0),
(16, 62, 117, 'taha2', '', 'lksjfklsjdfl', 987, 'old', 2, 'kij', 'jawadkhan.it@gmail.com', 2147483647, 6, 109, 'nmjkhj', 1, 1, '2016-02-23 06:47:01', 1, 0),
(17, 62, 78, 'condition', '', 'tahaknkj', 123, 'new', 2, 'khan', 'jawadkhan.it@gmail.com', 2147483647, 2, 28, 'kljhfjksh', 1, 1, '2016-02-24 06:18:55', 1, 0),
(18, 62, 29, 'company', '', 'Copnay ad description', 123, 'new', 1, 'Kahan', 'jawadkhan.it@gmail.com', 2147483647, 6, 102, 'Addresss', 1, 1, '2016-02-26 05:29:55', 1, 0),
(19, 62, 117, 'tow', '', 'kahn', 123, 'used', 2, 'khan', 'jawadkhan.it@gmail.com', 2147483647, 5, 86, 'khan', 1, 1, '2016-02-27 19:16:08', 1, 0),
(20, 62, 148, 'ad', '', 'description', 1200, 'used', 2, 'Taha', 'jawadkhan.it@gmail.com', 2147483647, 3, 42, 'Address', 1, 1, '2016-03-07 07:18:24', 0, 0),
(21, 62, 82, '2013 Harley-Davidson Super Glide DYNA CUSTOM', '', '2013 Harley-Davidson Super Glide DYNA CUSTOM, The Harley-Davidson Dyna Super Glide Custom is full of chrome from handlebars to the rocker covers, and even the wheels with the 110th Anniversary Edition. The Twin Cam 96 engine and the Six-Speed Cruise Drive transmission will make the ride more enjoyable especially with the strong driveline. Easy to maintain with very little routine maintenance you will ride more without having to worry about the upkeep. $9,750.00 2516212318 ', 9750, 'new', 2, 'Jawad Khan', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, '', 1, 0, '2016-04-18 12:29:46', 1, 0),
(22, 62, 82, '2000 Indian Chief VINTAGE', '', '2000 Iconic Indian Chief. Super clean, low miles with thoughtful chrome customizations to finish the look. This bike is a one of a kind head-turner powered by S&S, with performance enhancements to lean into the thunder if this suits you riding style. All manuals, and 2 boxes of spare parts are included. A great running bike that''s hard to find, and impossible to beat. (727) 424-4489', 10299, 'used', 2, 'Jawad Khan', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, '', 1, 0, '2016-04-18 12:36:46', 1, 0),
(23, 62, 82, '2000 Indian Chief VINTAGE', '', '2000 Iconic Indian Chief. Super clean, low miles with thoughtful chrome customizations to finish the look. This bike is a one of a kind head-turner powered by S&S, with performance enhancements to lean into the thunder if this suits you riding style. All manuals, and 2 boxes of spare parts are included. A great running bike that''s hard to find, and impossible to beat. (727) 424-4489 ', 10299, 'used', 2, 'jawad khan', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, '', 1, 0, '2016-04-18 12:53:17', 1, 0),
(24, 62, 118, 'title', '', 'asdfghjkl;', 12345, 'new', 2, 'name', 'jawadkhan.it@gmail.com', 2147483647, 9, 418, 'lkjhgfdd', 2146, 0, '2016-04-19 08:14:02', 1, 0),
(25, 62, 122, 'title2', '', 'qwertyuiop[ASDFGHZXCVBNM', 1234, 'used', 2, 'NAME', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'EDRTYU', 7973, 0, '2016-04-19 08:23:31', 1, 0),
(26, 62, 44, 'SDFG', '', 'SDFGHJ', 1234, 'used', 2, 'DFGHJ', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'WERTYUIO', 8781, 0, '2016-04-19 08:26:42', 1, 0),
(27, 62, 44, 'SDFG', '', 'SDFGHJ', 1234, 'used', 2, 'DFGHJ', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'WERTYUIO', 8385, 0, '2016-04-19 08:27:34', 1, 0),
(28, 62, 117, 'TAHA', '', '1234', 500, 'used', 2, 'TAHA', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'ADDRESS FOR PAKISTAN', 7323, 0, '2016-04-19 08:28:34', 1, 0),
(29, 62, 97, 'asd', '', 'sdfgh', 123, 'used', 2, 'namr', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'kjhijhg', 2762, 0, '2016-04-19 08:31:58', 1, 0),
(30, 62, 97, 'asd', '', 'sdfgh', 123, 'used', 2, 'namr', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'kjhijhg', 7249, 0, '2016-04-19 08:32:13', 1, 0),
(31, 62, 97, 'asd', '', 'sdfgh', 123, 'used', 2, 'namr', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'kjhijhg', 3186, 0, '2016-04-19 08:32:17', 1, 0),
(32, 62, 97, 'asd', '', 'sdfgh', 123, 'used', 2, 'namr', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'kjhijhg', 1834, 0, '2016-04-19 08:32:51', 1, 0),
(33, 62, 97, 'asd', '', 'sdfgh', 123, 'used', 2, 'namr', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, 'kjhijhg', 7872, 0, '2016-04-19 08:33:52', 1, 0),
(34, 62, 82, '2013 Harley-Davidson Super Glide DYNA CUSTOM', '', '2013 Harley-Davidson Super Glide DYNA CUSTOM, The Harley-Davidson Dyna Super Glide Custom is full of chrome from handlebars to the rocker covers, and even the wheels with the 110th Anniversary Edition. The Twin Cam 96 engine and the Six-Speed Cruise Drive transmission will make the ride more enjoyable especially with the strong driveline. Easy to maintain with very little routine maintenance you will ride more without having to worry about the upkeep. $9,750.00 2516212318 ', 11000, 'used', 2, 'Jawad Khan', 'jawadkhan.it@gmail.com', 2147483647, 17, 405, '', 1, 0, '2016-04-19 10:33:45', 1, 0);

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
(97, 'Bil', 'car.png', 'Cars', 3, 0, 1),
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
(148, 'test', '02 Test - Copy.png', 'test', 142, 0, 1),
(150, 'Third', '3.JPG', 'lfhlsdh fs f;hsdfj', 27, 0, 1),
(151, 'skdfkl', '3.JPG', 'm,.sfln', 1, 0, 1),
(152, 'lskjdfk', '3.JPG', ';o', 1, 0, 1),
(153, 'khwr', '3.JPG', 'klsjkl', 27, 0, 1),
(154, ';lkkljkl', '3.JPG', ';kp', 150, 0, 1),
(155, 'lijiljk', '3.JPG', 'kljkl', 153, 0, 1),
(156, 'skdhfjkh', '3.JPG', 'mjkh', 27, 0, 1),
(157, 'fourth', '3.JPG', 'lksdflks', 150, 0, 1);

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
(13, 150, 2);

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
(1, 'Category Page (category)', 'http://localhost/classified/frontend/web/', 0, 'hd-wallpapers-nature.jpg', 'https://www.google.com', 'left_size_image.png', 'https://www.google.com', 'left_size_image.png', 'https://www.google.com', 'hd-wallpapers-nature.jpg', 'https://www.google.com', 'hd-wallpapers-nature.jpg', 'https://www.google.com', 0),
(40, 'Category Page (Sub category)', 'localhost/classified/frontend/web/index.php?r=category%2Fcategories&id=1', 1, 'cate_top_size_image.png', '', 'cate_left_size_image.png', '', 'cate_right_size_image.png', '', '', '', '', '', 0),
(41, ' Kjøretøy ', 'test', 3, 'CAR_cate_top_size_image - Copy.png', '', 'CAR_cate_left_size_image.png', '', 'CAR_cate_left_size_image.png', '', '', '', '', '', 0);

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
(1, 'Index', '<h1>Welcome to <span> Mediscope</span></h1>', '<p>This is not <strong>Lorem ipsum dolor sit amet</strong>,&nbsp; it is a content <strong>coming from the data base</strong>. consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce el</p>\r\n\r\n<p>ementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>\r\n', 1),
(2, 'How It Works', '<h1>Application <span> Explained</span></h1>', '<p><strong>Content coming from database</strong>.consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce el</p>\r\n\r\n<p>ementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>\r\n', 1),
(3, 'Safety Tips', '<h1>Foundation <span> Programe</span></h1>', '<p><strong>Content coming from database</strong>.consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce el</p>\r\n\r\n<p>ementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>\r\n', 1),
(4, 'Who we are', '<h1>FP/AFP 2016 <span> Application Process Key Dates</span></h1>', '<p><strong>Content coming from database</strong>.consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit.</p>\r\n', 1),
(5, 'Terms of use', '<h1>About <span> Us</span></h1>', '<p><strong>Content coming from database</strong>.consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce el</p>\r\n\r\n<p>ementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>\r\n', 1),
(6, 'Help and Content', '<h1>Our <span> Mission</span></h1>', '<p><strong>Content coming from database</strong>.consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce el</p>\r\n\r\n<p>ementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>\r\n', 1),
(7, 'How It Works', '<h1>How<span> It Works</span></h1>', '<p><strong>Content coming from database</strong>.consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, met, consectetur adipiscing elit. Fusce el</p>\r\n\r\n<p>ementum, nulla vel pellentesque consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.ac tincidunt mauris lacus sed leo. vamus suscipit molestie vestibulum. Integer elementum congue.Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>\r\n', 1),
(8, 'Exam Instructions', '<h1>Exam<span> Instructions</span></h1>', '<p>Welcome to the Mediscope Exam</p>\r\n\r\n<p>To give you a clear idea what you&#39;re getting, this is a free version of what our members currently enjoy.</p>\r\n\r\n<p>We have worked hard to mimic the test environment as much as possible so that it can prove to be advantageous when you go to sit the real UKCAT.</p>\r\n\r\n<p>Full members receive mocks and practice with time-limits, performance feedback, and access to our entire question bank. This demo uses the same few questions each time you take it.</p>\r\n\r\n<p>The demo is divided into two subtests (sections), just like the UKCAT:</p>\r\n\r\n<p>Best 3</p>\r\n\r\n<p>Sort Order<br />\r\n<br />\r\nClick Next to proceed with the exam</p>\r\n', 1),
(9, 'Exam Instructions', '<h1>Exam<span> Instructions</span></h1>', '<p>Welcome to the Mediscope Exam</p>\r\n\r\n<p>To give you a clear idea what you&#39;re getting, this is a free version of what our members currently enjoy.</p>\r\n\r\n<p>We have worked hard to mimic the test environment as much as possible so that it can prove to be advantageous when you go to sit the real UKCAT.</p>\r\n\r\n<p>Full members receive mocks and practice with time-limits, performance feedback, and access to our entire question bank. This demo uses the same few questions each time you take it.</p>\r\n\r\n<p>The demo is divided into two subtests (sections), just like the UKCAT:</p>\r\n\r\n<p>Best 3</p>\r\n\r\n<p>Sort Order<br />\r\n<br />\r\nClick Next to proceed with the exam</p>\r\n', 1);

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
(17, 34, 63, 62);

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
(3, 17, 62, 2);

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
(2, 62, '10', 10, '2016-04-15');

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
(2, 62, 34, 3, '2016-04-19', 0);

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
(20, 'Provide your e-mail address & password and click confirm link in e-mail which will be sent to you..', 'Provide your e-mail address & password and click confirm link in e-mail which will be sent to you..', 1, 'frontend_centre_sub_heading5_signup');

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

--
-- Dumping data for table `form_additional_values`
--

INSERT INTO `form_additional_values` (`id`, `ad_id`, `field_id`, `values`) VALUES
(4, 8, 1, '10'),
(5, 8, 2, 'Bata'),
(6, 9, 2, '123'),
(7, 9, 3, 'adssa'),
(8, 6, 2, '1231'),
(9, 6, 3, '12123'),
(10, 10, 2, 'new'),
(11, 10, 3, '1000'),
(12, 20, 1, '12'),
(13, 20, 2, 'Pakistani');

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
(20, 'yandex', '<p>Have thing special to sell? just try and use our website.!</p>', 1462184479, 1462184479);

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
(20, 'no', 1, '<p>Har spesielle ting du skal selge? bare prøv og bruke vår hjemmeside.!</p>', 10, 1462184493, 1462184493, NULL);

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
(52, 34, '5.jpg');

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
(11, 34, 'a', 62, 63, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2016-04-11 09:45:16', 10);

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
-- Table structure for table `optional_fields`
--

CREATE TABLE `optional_fields` (
  `id` int(10) NOT NULL,
  `titles` varchar(100) DEFAULT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `optional_fields`
--

INSERT INTO `optional_fields` (`id`, `titles`, `desc`, `status`) VALUES
(1, 'Size', 'Size', 1),
(2, 'Brand', 'Brand', 1),
(3, 'KM''s', 'KM''s', 1);

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
(1, 'AdPost', 'adpost', 'Karachi', 'Karachi', '123456485', 'test@test.com', 'http://www.adpost.se', 0x89504e470d0a1a0a0000000d494844520000005a0000004608060000004cbc83e20000200049444154789ccd9c79b05fc955df3fa7eff6dbdfbe4a7ada351a793cf60c9eb1c731b6e3c2808d131220140412a89810486c7055a8028782140162521421896388c1612916272c26810448c003d8c69eb18719d9d6321a494f4fd293dea2b7fff6bbf4c91ff7dedfeff7de68c0d6489a74d5d3d5efdedb7dbbbf7dfadbe79c3eddc22b98acb588c89caabe01784ce094b5d1a1246ccda98d2b222676fccaa271fda754f5c3c6983f7f25ebfb7292dcef0faa2a400df866557d77dcad3fda5e7fc1ef6c2f10eedc84688b280a11140582a044f5c8bba84e3fbc057c8d18f3d9fb5de7bb915e09a0bf5a557fb1b3b530b773fd53b4372f236a1101ab698514f00c4436aba05b64e2d4b7521c39780df845e08f814b22b22322f67eb7e14ed27d055a558f009f69ac9c9d5c3bf7df41c0ec01d835105b70042c19e00938c660cab314478ee0d7e6f0cb930dc72f2f8b71e745645e55af02f322b2002c001b402c72df65e9b6e97e033dacaabf9684f5afaddf7cce6d2c9f266ead208edb03da3190d8b4035453e0239bdeb70abe03610c068b159f52a946e2d6307e0db738865f1cc12b4f5ab738bcea78a5e7811780f3d9f50555bd668c09ef67bbe195e3e893a87e9ba2dfded9bc7a68ebeaa768af9fc7380e22b28b3a72890f5c08934cf2150a1e74e3fef3a20bdd04ac2ad6423170b14e15539cc42b4de01647f04a93d62b8def385ee992883cabf03911f904e94888ef65bb5fd171a5aa0555fd76e067ba3b4bb59bcffe0a26de04afd89368cf49a96310f06e02ae40a25070fb80277b3ac46ada61b14d478b2a1851c41fc62f4fe35566298e3d6083daf4bc88f96355fd0de0b3c698bbcefbaf28d0d6da0af0ab36ee7e437de51c517d91d6e655c2fa0d3c471137e873b6c9807452605d27a5981c5847d2f7fc818e4932ea496cda52d5f4bd44d3efab2a6a13c429531c7f15c307df68fdf2c439447e06f86f22d2b95b6d7dc58056d551e037e2b0fdb5f5a5d3848d6534ee002975c4ed4da2d62d346e22c6502a787daa20a58ace00751432c015b076f7ef7c6424367d379f0b54d3df645f8dc390c2e8834c9c7c275e79e2b488fc531179e66eb4f715013a03f9b7e3b0f5b6ed1bcf11041eaa161183029211b1b51149d8a6db58a35b5fc6863b78da265283ef39242af88e1259e9496aaea5189302eeec91e89c9294f44f7a75caaf96a81b3276fc9d8c1c794b0b783ff073c69897c5e1f71d686b6d4944fe671cb6bf6af3fa33148b01b9722746b2c9527a288828aad96f2c491c12b5b748ba3bc49d1d6cdcc4466d2469a16228f80e619c7656926929b1cdc0cda944fbc01ae94b7ddec902745b4daafb5ecfd443df188b717e44447eeae5b4fbbe026dadf545e4c349dcfdcef5ab4f532c068898ac8503f2a583355450414c1f9c5d29bba9aac4dd3a49d8c4464db02149d4240e3bd8a48b27117192f43a325717738007018714f0b8d3a43af756264e7e9d1531ff40443e76a76dbf6f40676add0fa8ea076ecd7fc62d04601caf0fea4bd524c77f17f87b9ee7b7f3cee8e5c9468955202189236cd824899a44eded7464b45771bc60a09efd6f882aedfa3607def8fd94468f5c02fe9618b37a27ed377792e90ed35b55f5c7366f9e731de9e2b85e1f905dc0e5649971b5f4afe9cd816783494033a54c4cf66e5e5c6ac7e37a05bcf23885e183d4661fa6347e82244c150b3b3031e6f92c825b28b272f6f7008e297ce79d36febe00adaa25e083616bb3d4dab84c50aca4a0c820c6fd312bd2a783f49afd23d2033d07b5d75103929f66eb179e9be13d6907d42add9d25544c6f9214191860997bc0f5025aabe7e9365600be4d556b7782817b2799ee20bd4f6df2d0ea95cf511b1e6763e9129b4b97d389c738385e801794f10b65fc4215bf58c60bca18e3f6b97b10ac3c0d3cd2de8ff47e4a23bbf3a434d2cfdedebc86ebf9bb46d4ed18ccf10276169f61e2c1773d049c00be6c95ef9e03adaad3c07b77d6ae22dac138232c3eff69bacd4d8c71315e80e3f8a9f96d0c922127c6c52f56189d3dc1c8e4e1013d0c5a8d4dd6ae9da1581da13c3445a93602e2ece2fb6c00eca293c14e8ac32661639dcae81830a84ff7f3435a86e33ab43617206580d7f2ff23d0c077a9b5d31b8b9f67746212018e3ff62e5caf80eb151093691d194afd094d760de541cda4541d66eaf06b58bb7686ebe7ff1280eae82c435347189d3a8ceb17b32c7dfac8a92affddd9ba0162d18c3dcd00b8f95420d2a7a1a8b9963e523d7c2720dc53a0adb5a3c0b7b5ebabd8a889b825aedf5ca552f619a95410b199469053c3800ecd1e90a1e770422128d5d8f7c01b993efa282b0b5f6079fe3936972e71cdf5189e3ac2d4a1d750199dc5e4797a65a524de58bd805facf4791d764bf2c0a753153ecaeb50b8132cee29d022f206553db1be7896eae814bff29b7fc82ffcf26f32363ac6affffaafb16fdf346a13d4c6843b8bd8a8d96b30d01fff2f92ca3e93ba7e81d9638f3379f0d52c5f39cdca95d36cdcb8c0d6ca154ebde95b2855c7b2cad0bb46ed6dc2fa32a5d1290ca039c0039fcb756c236050c42de69373eb4eb0b867405b6b0df08da835f5f505868fbd9aeff896afe1ed6f7f1bd5e12966f7cda6da802871771b1ba7f5efa9cc9999960fdf9fffe5dfe3e73ff251e60eccf2bbbff5516ab532688cda184d629cb8c3fe134f307df8b5dcba7e8e427984f2d0587ff2cb395b859d9b5fc40d52da4a151ac14a3a211bb7802248b74edc5e435d37b528836aaebddcb8133cee19d0d9107b63a7be86eba67e66479403e30ec83aadd575fab396f63819d1d46b949682da14a0b7bff571e6afae70f8e803d44667705db7a7b6d9b84b77fb2a62c0f58bcc1c7d14540674e8b47c0592a84563f53cd5d149e230424afb90602c9d2f1c17ab96a050a2501e22ee6cb376f1e3c45148b5369357ea853bc2e3cea1fceb93aaee07aeae5dffbc69ac3ecff8cc91017db7af1ee48efcc11a257188713c5eb40c2506c7ab62bc02220eaa09366a93840dc00ea81a031359aef165df58bbf4e7b437afe05566284e3e44d8ed501d9e242896b1d6628ca1d3aa53df5a63787c9aeed6756e5df8138e7df5bfa1347a785e555f6f8c59fb72f1b8971c7d0c309dc6265e906a01392788488f13b587658a8a0844dd368592c7a0a601209a9074b749c2edddaeb73d26a638b95a974972f65ed85ca379eb05860f3e4e79e2241bab8b0c8d4fd3dad924ecb610e310876d5cafc0f8ec61d66ecc532c0fb3fff5df4371e45008fcf49d800cf716e87180246ae2bb4eaab65900e909de2e7d370329ec74b0765014fb46880afd7264b0c3649785a8097d8578970163997ef5dfc7af8cb1bd7693e1f119e2286274727feffb28ac2f5fa1581e62687c9646bdcef4c13700fca488fc973b05e35e026d5415d55457d55c3a07adb55c8d1bd0329a3b6b54472677fb3876497e9a765979bbb4949490f63afa5421a84ea00aede61695e1715c37c02ff43b0340b1784111e33a74bb0d86674e81981d11f9cf2f0b8c9793f96f481b2282eb9548a26ea626e752a3ec4222037d677319c7f5715d7fc067a103f68cf4543cb5fd7cf9428198b46734578c07e6849cb36d12532c0fe3ba851e9fe765a596a4a5323c4ea7d522a81ea23671a4057caf886cbc1c30eea5445f0208caa36c2d2df6272601b57bfccbaaac2f5f458c61746a7a97a1a299012346519bebd49a4a6d2eed16c86904e83da0ff9d54d805d7f3fafa38f4ca0388a388248ec1f88cccbd012f287f5655bf57449e7db960dc4b895e55d5739591593acd46e691d33d1eb9fc55c10b02826299a8db49dfd9e395eb4f6ee90dedb36a9a7a929d173960bff7e604dda3f2f5dfb736c1715c0ab51986f7bf0ed72f7d0c78bb31e6d9bb118473cf8056d59688fc7ea13a89e397686e6fd243afef8c4b93406d7486726d14d7f349e288248e003bc0d579de5c7d93dd5664de19924a7f4e199a193eb944f73e995720bb18e3e255f6511c3dde318ef72322f2ad22b273b7f0b867401b6350d55f1391ade9238fb3b6bc904a6a3ee9f4fcd1839229883178819f2e0c60fa423cc0b5833e892cdb2e4eee496d665bf704382f47497d2c390d199fc2c809fceabe6bc0d7abea4f88c85d8d66baa78e7f113907fce6f0cc498c53a4b1b5f2221349e93b8a7af70626bade834c5d1bf4b00dac15ece65ced2f1030e05412c39eb22ce28f521c7f95750b431f1391c78c31ffd798bb0fcb3db30cf3a4aa93c0679a9b378f5c7ef6f7d87ff4d5f841b12781623cfcea6c3a09d924052337e534e7f40cf94c916eaeaed2dc5cc2c65d4a63c394874706bc80d0377ef20974b7918428492214860fe29727d680f78ac8efdccbb0b07b0e3480aabe5555ff68eddae9c2cafc67983bfe08c67140854e7d9b4ffca7ff406de63063078f531c1a272856f15d0f631ce23044bb4d3a5117e327a89b509d99a23c36d1f765f7b4998116f5ac22e87712c461175318a7327e3436c6fd1822ef15913b5a70fd72d2fd021a55fd6ee083cb97fed2dfbc79967d471fc6755dd42acd8d75164f3f43bcd3c4f7029ca04471a846617898c2e8105ea5861bf859dc077b74647a529a9bf083cb55b9f2914421b1152a130fe297869f07be5f44fef47ec557df17a00154d500dfa3aa3fdb03fbf0ab762df5df1ec0db5c07deef9be4b729034892884ebb4d79f428e5b1831b9985f7ef44e48efcca779aee1bd090faa845e41faada0faf2f9e292d5ffc14b3871fecaf8a9319267964524e09ba871a065d21f02270d36fc534eb1b04d5030c4d3f181bc7fd08f0e3c6989bf7b3cd79baaf40436f83d09b55f557db3b2b87ae9cfe5fd446c6191e9f41c4ec1efa7ba439955eed3fdc65a08088d26db76935ebf8e54946f73f1cbb5ee149e04744e415ddfb724f80ce38d91711a3aa5644c2bdd655b63afec1386c7fc3f5731f37ddfa3253730fe0f9592c5e8f773327d14bd087881247318dad356ecd5fe1e61717f88a6f7a37930fbc2a2605f823aaba73bb3adccf74d7beacaa4655df2022df61ad7d5db3d99c8ba2a8e2795ea35c2edf346928d528b003cca3fa49856b22f2a1e6daad934f7ef0df327662849993c7191a99c12f94e8a96859557369b71ad36d3769d537d9bcbec4d6fc228d9b3bc48d2ed65a62a7c0a9affb3b8cccce50999cb241a5ba11546b8b22b2082ca8ea45525fcc82885c1391c6ddc2e1a5d25d01da5a7b04f8d976bbfdae858505e3ba2e434343b8aecba54b97e8b4db58550a8502939393b49b0d6ae50ab2b3c5adcb97b979e60b34ae5da150f4f12a01ce7081eacc08b5c931bc7211310e368e899a1d9a9bdbb46e6dd2dd6a13d7436c371eac079d4e44925882c0c3750ca0b84140a158c0ab0d539a98a2343e4165628acad494adceccb6bc62e99a71dcd322f245557d5644ce00ab7753af7ed940abea31e0ff2c2f2f1d59bab9c4ab1f7e38741c6751558f3cfdf4d39c3a758a6aa5ccea85e7f9fc5ffc19b7b6b628dc5ce46694301687943c43378c89e3042382e7396964689460d5f6fc132282e3188c6372f31e6b2d49a23955618ce079e95aa26fc08ae01921c9ac6d4b6a0adb7c7225b54c83a121aa93d354f7cf31347790a1fd73b63635b3601ce719e069e0d3aa7ada1873c73b00ee06d0bfdd6ab5bee9b9e79ee389279e8845e4fd22f28e6ea7f3b6a73ef549a6c236573ffd493a1be90a50db716919872089a94709a54613c73138d902ae8ac1da240b1dd24ce3d85d4d630411c118e9819e8709943c215283709bf8685e1c1f9d173d18a9a480098a0c1d3cc4e8e1638c1f3fc1d8e1231b5ea1f85911f938f087aafac297139cfeb280ce8217b72f5cb8e0562a65f6eddbbfa3aa4f2661f75d179ffc13f72f9ffc3863ad6d9c4c8262ab2471c22db740a9d366b35062bcbe43c7f709ab4330368e373e8ed76c5058b888e9763022584dc10570482533054c48dd1242c151ba312436ed1cdf513450fcd180c250091345b41b5dc24e0c56308990448226b20be00125a6b7c9d42616f57c86e70e3179ead5cc3dfaa8adcdec7b41447e1ff8a8889cbea7405b6b0bc0fae5cb974abe1f70e0c00156ce9fe1dcef7e94d6ca12751cda8e47addd24e9c624498245680605b68786a88c4f3272608ec9d959868686b8327f9966b395b6300c092e9dc75f5b25b67d3fb621075377e9cd38e0d70cc3876a4c9cd8c7c4f15986a6a6295686b2607745337f78127589c22e51d8260ebbc4ed886eb34ddc0e893b1161a343d80a89bb2161b34dd4ec1075151b2644ad986edb529e9ae5c0a3afe7c81bdf624ba363cf66eae316701d6800a733ae7ff94067607f308aa2f73cf5d453d496af71f3937f4694586c6289c2981de3d2f47d10839998a4b6ff0093fb0f502c1628972b789ed72b2b8e63e62f5da2d56aa5c12d36819b8b78175f40e2bda3543105a8cd15997ee820d30f1e6474ff3e82622fd0253366d2e174bb86f6d700b258d4ccd3b7f75d05344948e290248948a290b0d3a1db6c91249642751cc70d500cf5cd6daa234719997a6d0791af139127e1652e65a9ea2cf0baa8b143f4f42779fafa22e5488912a5ee06d899194afbf6736066969999198ac5e25f5b9eebba1c39768cf9cb976835d3e57fdd3747343c8a7be6344ea74e61cc63e2c129661f9a63e2e8412ac393034b2b7d40fb2ee9db830c03567bf6ce5e0373d7da84e3e03a453c8a28501aca9d8c4abbb1c9daf2391af51b2821413002222eb0b8f75b5f72ca66f8491179a3aafee4f6d28d53cffcc20759dada61a3324c5c1b6174629299d9596ab56aafd105dfc718f3e2a098dba42449b8327f9946bd914ab62a6e32cf4cf90b946a550aa5611c2fc01807c7f170bd028eebe1383e620cc678787e01c7f3711c2f8dc1763c5c2fc0f30a18c7cd1672072090816eea3bfb76b79dbc2394b0dd606df9228dfa0d2c6d827209630c61bbcdc8c8373171e0895055f7e571205f9244673ba9dea4aaef50d5b7359bcd531b9b5beed6f6368b975e401e7f0b07aa354e16b378b601eeacd777b87cf122ad568be3c78f531baae1b91e9ee7f1520e76c7713872f418d7ae2eb0b5b945370a81166ed1254eba34ea2b98ccefac084694c40e9a8b806a6f0fa2ea9eb5caec15631cc478148200718aa8188c90758a9f85153b88188c7171dd208d956ede22d63ac56a99a0ea0095be90c4096e50c99d68fb55754344ec4b8a97aabac09b55f51f596bdfb9bab636b9b2ba4a7da78eaaa51004148200d7757b80e920c2a49c67ade5ecd9b3dcbc7103c77579e0e4497c3fe5e5c00f28168bbdf76ed3c1dcb871832b572e33145ce7f0f442caf503b5ceb71d2bd23b25211fffce802a97efa055e8e5b7dadf101a9b1ae373df45b55c218e1b745bcb745a3789bb3bc4cd33580d31025118317df820c56af545f515717193292ae55751a8cee1570f7410f3eb22f2832f92e80ce0bfabaa3f5eaf374e5dbe72859b4b4b948a05a62727298c8d62ada5dd6e1186db68d2c5f3620a4182e3c478aec50f843014d6370fe0f9254e9d3a45a7d3667d7d9d2bf39779ecb1c729954abd3fd775595a5aa2d3d96d0f18633870603faeeb726bf1068ef496010782c4d34d3d4e06766e9028fdadcd90829c53799e2fdffe0ce088c7c8c80cb5ea7006c44910616373836b672e610831a2bb3a79a04f09cc1865ef044602d48684db9788db6b85e2c4c3df258e3fbe0b686bed6b55f5439d4ee70de72f5c304b4bcbf89e4be03a2451c8cef6752aa516b55ac8c17d8642d1497937ef24c89a9a498e7b8db5f583b86e91871f7e0d9f7be673341b0d363736387ce850260582e3384c4e4e72e3c60d9224d9d3f1303d3d4d49e6883bf3384e1fe4d40051622b247904940c004aba7b56d134207df780eb8d0001acdd61f9ea1fd1a8cdf5b958a1dd6ea124e906519b9993bbd8dba1ec1ea1e0cc02bb23a46cb88d8d1a1867f45d6eda18f581efb3d6fef8fc9585c2a5cb97708dc1730c9df606a3c35b1c3914303d3d94a94a03fbf27871ca2b3a352124dd05b69ac7088280d73cfc1a9e7efa29ce9e3bcbcccc0cb3b3b319988ae7794c4e4eb2bcbcdca3a05b1b8b14833285420537a810b7d90596934bf71ef0200b209714e8dcfb9767f51cb056b19af2bb08f86e89b14248b558472d743adb74c30da2ce2a0ead9e3193313d0278ce0865ef2846fb1c3db860ec04158c5701f81f92ed66fd80b5f67d9f7bf639b3b9be86eb38b45a1bec9b5ae3e0c104cf158c7129572631c6b90db47d9d755017cdef5dbae411730480e5e5654e9f7e8e5aadc63bdff1ce34724895300cb9b5b6ccad8d154a850a1bdbabd42a2344b64b9c74889bcf33a2cf664d945d529d023b00c16d7a3f97fe9442844a658ea9c947705d9fc4864471934e7b9b286c608c47b5b69f5aed006294edad6bacaefc1561d4208961e6d029862a47f0cc68affc5c995255c42de195f7e157f78762dc8fa9eaf78baafea8b5f65f3ff3ec736673631d9b2418b9c16b1e6a532aca2e55c7f72b04c591bd8b19e98778f14a53de409b28e79e1fc60ba65155ce9c39c3e2f56b4c4c4e7160ee00957205c7314471c4a5aba7a9871b782597d874703d171b2794a255f69beba8387b26bc943a4cafa1fd86e73e6c47fa1beffbd14b8ab5493a81b9253caf42a53ccdd4cc297c7f68d73cb0f7baabdd8e12851dbadd4dbad13a3b3b8b1c38f16e86274e85c063aa7ac618635d55fddef58d4db3baba4ae07b745ad7f9ca37b471bdbe7e892a2a421836308e8fef976fbb4467ad25b24ae038bd1e4e7d0696a9d1ab2c6f56f0fd0a274e9c607d7d9de5b5abf8256877ab048522d7975f60b57195d1a911c4c4d84ec24eab4179b240417dec8ef4375e660d4fac603242b6e454b09b8fada613a56423c0314aad7a94a1e1c304852a8e29e0387ee69cb284dd169e5f4abfb167db5c924424b645b7bb4127dca4136e9224ed34265b15e38ee00543909ae15fc835325744fee3d8e8c807868686e8b49a20a3dc586a71f040da923fb8b6c1861bf12abfc4b14a916136719c2055fa19ac80e5c3e7cff3945963c21438ec5738ea1539e1c0a8b38343846305d5c708828063c78ef1f9333b6cac6f52ae16b9b1f5022df7165ed941bd04752ca58a47c52fa091a5d98989931a46430293e06109b048a64e88c9770fecb60e4d766ff0401414ea3bd768d457b0364ebd8502c5e21895ca3423234771dd8056fb168dfa32edd60651d4228e9bb45b5b8ced9fc12f15309ea15034a045c2b6cff8e4d7323af3d89631ee2f65e7f4f525df5a5b11913f68773a6ffdb3bff804be63d8d9bec9138f6fd395840f2c5d67b1964647f9a1b02f09782418e291e1698ed786a8043e519cf04b172ef0bffd9bd8ac67e9ece06f6cf03de5833c363302c0ad0d97f9b50768440d9ae13661d2c4f55d02df21b650dfde66e6e47876b6527fc8e7c6b5556567bd41abdec01f32c4518b38eae2da18d726b86af1b0385629ac8414bb314e014c51713cc0158c93f2bb641b91120ba5a0caf8c4ebb04944abbd46bbb546bbb386230909267b379d3c6d143195e9d1aa4ad8546ac36f62f2c0db62e304bf2322ef275db9d94d31295de93155fd935b6b6b873ef7cc5fe1b90e71388f7778938fb4976854ec8b485812a8440e279c1a85d8f094b74ee282aa85fa2da45de7b5cd21de73f228cd66c2991bb0d62de17a7e36b4d309505c705c21514b75bc845ff0f6e8b7192d69b6475ca155efb2756b9ba1fd356c92d0696dd3e934d2a17f0b8a5f68515aeae0e4ce22401d10078cab982298824d3ba1008e6f09c6cad4f64d10c7db68bc439ce9dd26032cc98c9b388c983c7410638a54aaaf63eac0575b2fa8fd29f063aafad44b9dc7d4835d55df8cea1f2c5cbb5e3b7ffe3ca8a55cb8c2e107222ed45b7c3e6c72d6b658f322923d66ce2e8bb0b589343728b51dde377a9ced9d0237ea45fc2048018b23428d28543c2aa3258cd30f88738d0e38e5d3b87d939dab919e9994822dc0eafc1a85a932c6159230a1716585f2f90ea3eb51ba932b896977136c9cf4ea2892f2794e21a9552818d7e1897ff17d1c7cecf52d8573aa763c6aefd4c270a31677eb6eb7bb49d8dd260e1bb41b2b0c4d9c64fac05b62d7af3c097c4044fefc76e0de1668006bed3703bf7ce1e2c5d295f97992386472ec1a0f1c4f2b1926ca62a3cb173b4d4e474d16a44b27b00cc62aebce0ad269f044638c43f17eac5f43714892986edca53a51a4582df6ce34221f282259c3fb3e897410e58e79ed6b3aaa2ccfafe1953de4e20ea52b3b8cb413e2a47f38553e2aac55c230260ee3be0f5bb4bfb20e1c79eb5b79fcdddf8d31cebf14917f9fed912c903a316a22320b4c6647141d1791baaafe21f0ec977aa2d82ea0b395ec7f22221f3c7bfe7ce1eac24206f6220f9e18f0c6647ad35637e65ca3c5e9b0c979db66c38f48923695a50ddebc759072750a638476ab4d61d86568a292819a39f055d81d52be5b77ca694349273448876efdf206f6a925c63a42d5289d81e3d7761d62a5fda5acc42a51181375a35e6789403032ca3b7ee2a7280e0d7f02f89abb7932d84b029d7e5f0df09daafaf3e72fbce05fbdba808d232aa56b3cf46082e7f5b3a885b06ef04a16fc80852d6571758bd96289a75f58a250add26e37193b50c32bfa3da9ec47e6a777b2c5eadee12462135a3b21b6196277429c669778a34bb2d1c6b9d5a1d48d29970212319956911ed31666b23508b032e054d2543beab6bad8243d0ff5897ffe1e0e3df1953bc03bc4984fdf0b906f0bf400e0dfacaafff5cad5ab950b172e20aa58bbcc430fd4191a82b86368ad1824e8501a75e96e3b843b86a02a8cecaf71abdee5a973d7319500530bb275bed4b8e8019ec56d745b119d1b7592852d586ac046073f54dc9e2748f05c494f84710dc675f10d444a7ab5e98183b1f64f80cc29c4c9eee75e3a03c489a5d5e830fec049beea5ffd28c6717e4e55df7b2f0e16fc528006781cf870a3d178ed17ce9e657b738b286c71647285aa28a6d0c52fbb74375d94087fb84b75649ca4edd3dc68934411d687a71adbb8b560208a5669d543c26b5b24cfafe32d3509da16c731143c43224e4ffdf24c2aa9f9310f05073ac9c0efec644793a96a2f451d7b57c1bbdd8437ffc00f3175f2d4b2aa3e668c597c292cee29d079ca8eb5fcc7c00faf6f6ccc5dbc7409af7581f142abb75744118c6b314648628b09122aa3154a4345bc4281955b097f75b14be434595d5da7b91212ccaf31b6b6de0b35f05cd38bbf50769f4daa1960617e74265030d01d38bbb4e8a480437694e61e2af172df346979930fbd96d7ffb3f7601ce7fd2ff7a8b52f25fd8d40e7293bdef287811f5a5ff834cd952f027d7f82e4b379b183eb7b3852208e845046689be3b4db2167cf9e61edca15266fdda0a671cff19e9bd3b91a9768ffecd15d0707daecaa109814782f93583f115dee1a0000015749444154937c67804262db97744720df506bfc8027def7838ccc1d9a071e31c6dcb54d412f95bee4c559634c43557f1a786864ff57bccb2f56899a1b2042a3137363658b4e18e377aa389e479224546ba3201e572e5e62e1dc198a376f30b5bd45a1e463ddbe173097b2dc370cecd275634dc18514b0c8a67f4ac6cd0cfc369024d9efacc36c56463e52c61f38c9c8dc2144e443aa7acf41862f73155c4436acb55fef788553b5e987dfa4aa3322128dc181b907f5cd3bf5fa91f5f50dbfd56a21028b8b8b6892f0c8a38f72bce8f3c54bcf13947c8cebf4243807383fb43577b2e5e746e7741298941ae20c703fa38e28a3879c5a72c0fd81fc83d491281c7cd3df065846f5b7eec5c6a0db6277b70aca96c0f6931eeef408f070169abb082cabb57fafb3bd352ba8d9bde16db7f6bc77aba641b12ff95b31d9aa860e3c4f7f4bf63cfd7ffe5c500ac3a337c5980f003f77bfb656fc3f8adb44a8174604660000000049454e44ae426082, 'image/png');

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
  `updated_at` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_user`
--

INSERT INTO `tmp_user` (`id`, `username`, `name`, `auth_key`, `password_hash`, `email`, `mobile`, `v_code`, `status`, `is_company`, `sms_verify`, `email_verify`, `created_at`, `updated_at`) VALUES
(45, 'nazeeraashique2002@gmail.com', '', NULL, '123456', 'nazeeraashique2002@gmail.com', '03453130776', 3983, 10, 0, NULL, NULL, 15, NULL),
(47, 'jawadkhan.it@gmail.com', '', NULL, '123456', 'jawadkhan.it@gmail.com', '03412372360', 7948, 10, 0, NULL, NULL, 15, NULL),
(46, 'yarsas@hotmail.com', '', NULL, '123456', 'yarsas@hotmail.com', '47177477', 7919, 10, 0, NULL, NULL, 15, NULL),
(48, 'taha@yahoo.com', '', NULL, '123456', 'taha@yahoo.com', '03155923218', 4797, 10, 0, NULL, NULL, 16, NULL);

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
  `is_company` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `mobile`, `sms_verify`, `state`, `city`, `status`, `is_company`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', 'gBH_Zf8YMObcD2MlGxm82qJFYGhtYcr9', '$2y$13$rH4EwEmf..t6D/7D0gZWm.Y7LB6YawxCjHKey8sFKccp4.DjeBmXy', 'hp9hthVPzJqtrkdaGWn3Ul3b8IlspMds_1443942536', 'pm@webexdesigners.com', '', 1, 0, 0, 10, 0, '2015-09-05 23:53:02', '0000-00-00 00:00:00'),
(61, 'yarsas@hotmail.com', 'Enebakk shahvez', NULL, '$2y$13$cq/tvkr69bpaB27HhZMM8uC2lrIYm2wVOm.NC./iGWVN6IKA6l/sK', NULL, 'yarsas@hotmail.com', '47177477', 1, 5, 0, 10, 0, NULL, NULL),
(62, 'jawadkhan.it@gmail.com', '', NULL, '$2y$13$Y9GErbPMrJ7dU4IVRoj7tuhlfi9LLIMzcqfYYIK3GFAaYp1XSmDCe', NULL, 'jawadkhan.it@gmail.com', '03412372360', 1, 17, 405, 10, 0, NULL, NULL),
(60, 'nazeeraashique2002@gmail.com', '', NULL, '$2y$13$vqKW3Rgj36Zbh9sGoHr79.u9ipen117y9IHmXQJ2AP9SmUCXe56qO', NULL, 'nazeeraashique2002@gmail.com', '03453130776', 1, 0, 0, 10, 0, NULL, NULL),
(63, 'taha@yahoo.com', 'taha', NULL, '$2y$13$CWQkabeFNcUK5lwBdlZaS.a/07AImfWpjxyXtdGnswt2xqjUsCG0a', NULL, 'taha@yahoo.com', '03155923218', 1, 0, 0, 10, 0, NULL, NULL);

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
-- Indexes for table `email`
--
ALTER TABLE `email`
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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `ads_credit`
--
ALTER TABLE `ads_credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `category_additional_fields`
--
ALTER TABLE `category_additional_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `conv_status`
--
ALTER TABLE `conv_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `credits_details`
--
ALTER TABLE `credits_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `credits_expense`
--
ALTER TABLE `credits_expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `form_additional_values`
--
ALTER TABLE `form_additional_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `i18n_message`
--
ALTER TABLE `i18n_message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `i18n_translator`
--
ALTER TABLE `i18n_translator`
  MODIFY `translator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `optional_fields`
--
ALTER TABLE `optional_fields`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
