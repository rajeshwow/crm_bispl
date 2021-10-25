-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2020 at 11:40 AM
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
  `email` varchar(200) DEFAULT 'NO',
  `insellview` varchar(200) DEFAULT 'NO',
  `inselledit` varchar(100) DEFAULT 'NO',
  `outsellview` varchar(200) DEFAULT 'NO',
  `outselledit` varchar(100) DEFAULT 'NO',
  `product_name_view` varchar(100) DEFAULT 'No',
  `product_name_edit` varchar(100) DEFAULT 'No',
  `users_view` varchar(100) DEFAULT 'No',
  `users_edit` varchar(100) DEFAULT 'No',
  `remarks_view` varchar(100) DEFAULT 'No',
  `remarks_edit` varchar(100) DEFAULT 'No',
  `expiry_date_view` varchar(100) DEFAULT 'No',
  `expiry_date_edit` varchar(100) DEFAULT 'No',
  `company_view` varchar(100) DEFAULT 'No',
  `company_edit` varchar(100) DEFAULT 'No',
  `contact_person_view` varchar(100) DEFAULT 'No',
  `contact_person_edit` varchar(100) DEFAULT 'No',
  `mobile_view` varchar(100) DEFAULT 'No',
  `mobile_edit` varchar(100) DEFAULT 'No',
  `email_view` varchar(100) DEFAULT 'No',
  `email_edit` varchar(100) DEFAULT 'No',
  `dealer_view` varchar(100) DEFAULT 'No',
  `dealer_edit` varchar(100) DEFAULT 'No',
  `quotedprice_view` varchar(100) DEFAULT 'No',
  `quotedprice_edit` varchar(100) DEFAULT 'No',
  `renewedit` varchar(100) DEFAULT 'NO',
  `upgradeedit` varchar(100) DEFAULT 'NO',
  `lostandrenewedit` varchar(100) DEFAULT 'NO',
  `lostandupgradeedit` varchar(100) DEFAULT 'NO',
  `dontwanttorenewedit` varchar(100) DEFAULT 'NO',
  `renewalpage` varchar(100) NOT NULL DEFAULT 'NO',
  `dealerpage` varchar(100) NOT NULL DEFAULT 'NO',
  `supportpage` varchar(100) NOT NULL DEFAULT 'NO',
  `createuserpage` varchar(100) NOT NULL DEFAULT 'NO',
  `uploadpage` varchar(100) NOT NULL DEFAULT 'NO',
  `createon` timestamp(6) NULL DEFAULT current_timestamp(6),
  KEY `accessi` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_useraccess`
--

INSERT INTO `crm_useraccess` (`id`, `email`, `insellview`, `inselledit`, `outsellview`, `outselledit`, `product_name_view`, `product_name_edit`, `users_view`, `users_edit`, `remarks_view`, `remarks_edit`, `expiry_date_view`, `expiry_date_edit`, `company_view`, `company_edit`, `contact_person_view`, `contact_person_edit`, `mobile_view`, `mobile_edit`, `email_view`, `email_edit`, `dealer_view`, `dealer_edit`, `quotedprice_view`, `quotedprice_edit`, `renewedit`, `upgradeedit`, `lostandrenewedit`, `lostandupgradeedit`, `dontwanttorenewedit`, `renewalpage`, `dealerpage`, `supportpage`, `createuserpage`, `uploadpage`, `createon`) VALUES
(1, 'rajesh@gmail.com', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2020-11-23 09:54:15.812810');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
