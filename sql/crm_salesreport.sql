-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 29, 2021 at 02:41 PM
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
-- Table structure for table `crm_salesreport`
--

DROP TABLE IF EXISTS `crm_salesreport`;
CREATE TABLE IF NOT EXISTS `crm_salesreport` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `costcentre` varchar(200) DEFAULT NULL,
  `party` varchar(200) DEFAULT NULL,
  `itemname` varchar(200) DEFAULT NULL,
  `rate` varchar(200) DEFAULT NULL,
  `qty` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `vdate` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  KEY `mmm` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6293 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
