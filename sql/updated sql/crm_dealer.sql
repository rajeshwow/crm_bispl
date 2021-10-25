-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 19, 2020 at 06:42 AM
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
-- Table structure for table `crm_dealer`
--

DROP TABLE IF EXISTS `crm_dealer`;
CREATE TABLE IF NOT EXISTS `crm_dealer` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `company` varchar(200) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `telephone` varchar(200) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `address3` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `homeaddress1` varchar(200) DEFAULT NULL,
  `homeaddress2` varchar(200) DEFAULT NULL,
  `gst` varchar(100) DEFAULT NULL,
  `id1` varchar(200) DEFAULT NULL,
  `id2` varchar(200) DEFAULT NULL,
  `createdon` timestamp(6) NULL DEFAULT current_timestamp(6),
  KEY `i` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_dealer`
--

INSERT INTO `crm_dealer` (`id`, `company`, `contact_person`, `mobile`, `telephone`, `address1`, `address2`, `address3`, `city`, `state`, `email`, `homeaddress1`, `homeaddress2`, `gst`, `id1`, `id2`, `createdon`) VALUES
(1, 'A-Tech Systems,JPR', 'Akhilesh Sharma', '9828086339, 9667555339', '3962416/5177568', '1-A Vinyak Complex Vinoba Basti', 'Barkat Nagar, Tonk Phatak', 'Mahesh Nagar', 'Jaipur', 'rajasthan', 'atechsystems_ats@yahoo.co.in,\natechsystemsjpr@gmail.com', 'lkj', 'lkj', '08AUUPS4324B1ZF', 'kjh', 'kj', '2020-11-11 18:52:28.751732'),
(2, 'AA Techno Solutions,jpr', 'Alok Ji', '9549783333', '', '302,F179 Ramesh Marg', 'Ramesh Marg', 'C-Scheme', 'Jaipur', 'rajasthan', 'sales@aats.co.in', 'lkj', 'lkj', '', 'ljh', 'lj', '2020-11-11 18:52:28.751732'),
(3, 'Aadhar Infotech,JPR', 'Mr. Anurag jain', '9829034169', '0141-4914812/9829034169', 'Office No 412, Big Benn (Okay Plus)', 'Plot No N-6-A, Swej Farm', 'Sanganer', 'Jaipur', 'rajasthan', 'aadharinfotech@gmail.com', 'lkj', 'lkj', '08AGNPA1631N1ZC', 'ljk', 'lkj', '2020-11-11 18:52:28.751732'),
(4, 'Aadit IT Solutions,JPR', 'Vimal Kumar Jain', '9784457004', '', 'SH-57', 'Jaipur Electric Market Riddhi Siddhi Choraha', 'Mansarovar', 'Jaipur', 'rajasthan', 'aadititsolutions@gmail.com', 'lkj', 'lkj', '08AJRPJ6359H1ZM', 'lkj', 'lkj', '2020-11-11 18:52:28.751732'),
(5, 'new', 'new', '98988888888', '987', 'lkj', 'klj', 'klj', 'lkj', 'kl', 'rk@gmail.com', 'ljk', 'klj', 'lkj', 'klj', 'lkj', '2020-11-11 18:59:08.589019'),
(6, 'new', 'new', '98988888888', '987', 'lkj', 'klj', 'klj', 'lkj', 'kl', 'rk@gmail.com', 'ljk', 'klj', 'lkj', 'klj', 'lkj', '2020-11-11 19:00:16.751619'),
(7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-11-12 07:46:05.651301');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
