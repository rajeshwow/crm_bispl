-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2020 at 11:29 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bispl`
--

-- --------------------------------------------------------

--
-- Table structure for table `renewalmail`
--

DROP TABLE IF EXISTS `renewalmail`;
CREATE TABLE IF NOT EXISTS `renewalmail` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `mailto` varchar(100) DEFAULT NULL,
  `mailfrom` varchar(100) DEFAULT NULL,
  `mailcc` varchar(100) DEFAULT NULL,
  `mailsubject` varchar(100) DEFAULT NULL,
  `mailmessage` varchar(100) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT current_timestamp(6),
  KEY `dfsfd` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `renewalmail`
--

INSERT INTO `renewalmail` (`id`, `mailto`, `mailfrom`, `mailcc`, `mailsubject`, `mailmessage`, `created_at`) VALUES
(1, 'dsf@gmail.com', 'sales@bispl.net.in', 'info@bispl.net.in', ' ', '', '2020-11-22 20:11:50.936329'),
(2, 'rajesh007prajapati@gmail.com', 'sales@bispl.net.in', 'info@bispl.net.in', ' Hii', 'Tesing', '2020-11-22 20:13:09.058431'),
(3, 'dsf@gmail.com', 'sales@bispl.net.in', 'info@bispl.net.in', ' new mail', 'hiiiii', '2020-11-23 11:29:07.151007');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
