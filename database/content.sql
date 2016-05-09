-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2016 at 04:13 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
