-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 19, 2020 at 06:43 AM
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
-- Table structure for table `crm_login`
--

DROP TABLE IF EXISTS `crm_login`;
CREATE TABLE IF NOT EXISTS `crm_login` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `usertype` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `createdon` timestamp(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  KEY `ii` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_login`
--

INSERT INTO `crm_login` (`id`, `usertype`, `email`, `password`, `createdon`) VALUES
(1, 'Admin', 'rajesh@gmail.com', 'admin@123', '2020-11-16 20:31:01.963'),
(2, 'Support', 'rajesh2@gmail.com', 'asdf', '2020-11-16 20:31:54.387'),
(3, 'Support', 'kamal@gmail.com', '123', '2020-11-16 20:37:51.900'),
(4, 'Support', 'new@gmail.com', '123', '2020-11-16 20:40:47.874'),
(5, 'Admin', 'payal@gmail.com', '123', '2020-11-16 20:44:02.634'),
(6, 'Support', 'khubi@gmail.com', '123', '2020-11-16 20:51:31.006'),
(7, 'Admin', 'dipankar@gmail.com', '123', '2020-11-16 20:52:43.921'),
(8, 'Support', 'fresh1dfdf@gmail.com', 'dffdfdf', '2020-11-16 20:57:07.930'),
(9, '', 'akdmnew@gmail.com', '123', '2020-11-17 11:26:09.133');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
