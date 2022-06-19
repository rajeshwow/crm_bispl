-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 26, 2020 at 07:46 PM
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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(3000) NOT NULL,
  `email` varchar(3000) NOT NULL,
  `subject` varchar(3000) NOT NULL,
  `comment` varchar(3000) NOT NULL,
  KEY `i` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `comment`) VALUES
(1, 'Rajesh kumar prajapat', 'rajesh007prajapati@gmail.com', '', ' hii'),
(2, 'Rajesh kumar prajapat', 'rajesh007prajapati@gmail.com', '', ' fffffffffffffffffffff'),
(3, 'Rajesh kumar prajapat', 'rajesh007prajapati@gmail.com', '', ' CCCC'),
(4, 'RAJESH PRAJAPAT', 'rajesh007prajapati@gmail.com', 'fffffffffffffffff', ' ccccccccccccccccc'),
(5, 'Rajesh kumar prajapat', 'rajesh007prajapati@gmail.com', 'jh', ' jhg'),
(6, 'df', 'rajeshkiit6@gmailcom', 'df', ' sdf'),
(7, 'RAJESH PRAJAPAT', 'rajesh007prajapati@gmail.com', 'ddf', ' df'),
(8, 'RAJESH PRAJAPAT', 'rajesh007prajapati@gmail.com', 'ffffffff', ' ffffffffff'),
(9, '', '', '', ' '),
(10, '', '', '', ' ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
