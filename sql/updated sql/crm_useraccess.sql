-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 22, 2020 at 01:51 PM
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
-- Table structure for table `crm_useraccess`
--

DROP TABLE IF EXISTS `crm_useraccess`;
CREATE TABLE IF NOT EXISTS `crm_useraccess` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL DEFAULT 'NO',
  `insellview` varchar(200) NOT NULL DEFAULT 'NO',
  `inselledit` varchar(100) NOT NULL DEFAULT 'NO',
  `outsellview` varchar(200) NOT NULL DEFAULT '''NO''',
  `outselledit` varchar(100) NOT NULL DEFAULT 'NO',
  `renewedit` varchar(100) NOT NULL DEFAULT 'NO',
  `upgradeedit` varchar(100) NOT NULL DEFAULT 'NO',
  `lostandrenewedit` varchar(100) NOT NULL DEFAULT 'NO',
  `lostandupgradeedit` varchar(100) NOT NULL DEFAULT 'NO',
  `dontwanttorenewedit` varchar(100) NOT NULL DEFAULT 'NO',
  `createon` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  KEY `accessi` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_useraccess`
--

INSERT INTO `crm_useraccess` (`id`, `email`, `insellview`, `inselledit`, `outsellview`, `outselledit`, `renewedit`, `upgradeedit`, `lostandrenewedit`, `lostandupgradeedit`, `dontwanttorenewedit`, `createon`) VALUES
(1, 'rajesh@gmail.com', 'No', 'No', 'Yes', '', 'Yes', 'Yes', '', '', 'Yes', '2020-11-22 12:16:51.453865'),
(2, 'rajesh@gmail.com', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2020-11-22 12:59:39.946971');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
