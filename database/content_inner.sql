-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2016 at 08:09 AM
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
-- Table structure for table `email`
--

CREATE TABLE `content_inner` (
  `id` int(11) NOT NULL,
  `title` varchar(112) NOT NULL,
  `content` varchar(112) NOT NULL,
  `status` int(12) NOT NULL,
  `system_title` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
