-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 21, 2021 at 04:00 AM
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
-- Table structure for table `suspense`
--

DROP TABLE IF EXISTS `suspense`;
CREATE TABLE IF NOT EXISTS `suspense` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `party` varchar(100) DEFAULT NULL,
  `chequeno` varchar(100) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `amount` int(100) DEFAULT NULL,
  `billno` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `requested_date` timestamp(6) NULL DEFAULT current_timestamp(6),
  `requested_by` varchar(100) DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `approved_by` varchar(100) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suspense`
--

INSERT INTO `suspense` (`id`, `party`, `chequeno`, `bill_date`, `bank`, `amount`, `billno`, `remarks`, `status`, `requested_date`, `requested_by`, `approved_date`, `approved_by`) VALUES
(1, 'Rajesh ki party', '123', '2021-02-01', 'HDFC', 5000, '1234', 'uuhgkjh', 'Failed', '2021-02-13 15:53:41.295327', 'rajesh@gmail.com', '2021-02-20', 'asha@gmail.com'),
(2, 'sdflkj', 'lkjkj', '2021-02-12', 'lkjklj', 987, 'df', 'mmnmmnm', 'Failed', '2021-02-13 16:35:17.128592', 'rajesh@gmail.com', '2021-02-14', 'rajesh@gmail.com'),
(3, 'Binary', '1234', '2021-02-20', 'lkjdf', 123, 'sdfdf', 'lkj', 'Failed', '2021-02-13 19:57:48.835624', 'rajesh@gmail.com', '2021-02-15', 'rajesh@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
