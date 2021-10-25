-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 12, 2020 at 11:40 AM
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
-- Table structure for table `crm_eps`
--

DROP TABLE IF EXISTS `crm_eps`;
CREATE TABLE IF NOT EXISTS `crm_eps` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) DEFAULT NULL,
  `serialno` varchar(200) DEFAULT NULL,
  `plantype` varchar(200) DEFAULT 'none',
  `type` varchar(200) DEFAULT 'EPS',
  `users` varchar(200) DEFAULT NULL,
  `expiry_date` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `person_name` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `landline` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `in_sell` varchar(200) DEFAULT NULL,
  `out_sell` varchar(200) DEFAULT NULL,
  `dealer` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_eps`
--

INSERT INTO `crm_eps` (`id`, `product_name`, `serialno`, `plantype`, `type`, `users`, `expiry_date`, `company`, `designation`, `person_name`, `mobile`, `landline`, `email`, `address1`, `address2`, `city`, `state`, `in_sell`, `out_sell`, `dealer`, `status`, `remarks`) VALUES
(1, 'Seqrite Endpoint Business', '2F5F61561015B7E100A7', 'None', 'crm_eps', '5', '2021-01-08', 'Adinath Sona Medicals', 'HR', 'Kamal ', '7073334386', '7073334386', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'Computer Garage', 'xyz', 'LOST ', 'Remarks updated'),
(2, 'Seqrite Endpoint  Total', '2F5F61561015B7E100A8', 'None', 'crm_eps', '15', '2021-01-08', 'Akar Palm Hotel & Resorts Pvt Ltd', 'Director', 'Dipankar', '7073334386', '7073334386', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'BISPL', 'xyz', 'CLOSED WON', 'Remarks updated'),
(3, 'Seqrite Endpoint Security Total', 'aaaaa9999999', 'None', 'crm_eps', '180', '2021-01-08', 'akme fintrade(I) Ltd.', 'HR', 'khubi', '2942489501', '2942489501', 'akmefintrade@yahoo.com', 'add1 ', 'add2', 'Udaipur', 'RAJASTHA ', NULL, 'Computer Garage', 'xyz', 'QUOTED', 'lossttt'),
(4, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A10', 'None', 'crm_eps', '28', '2021-01-08', 'All india radio jaipur', 'Director', 'Rajesh', '9413753177', '9413753177', 'jaipur@air.org.in', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'BISPL', 'xyz', 'LOST ', 'Remarks updated'),
(5, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A11', 'None', 'crm_eps', '5', '2021-01-08', 'ASES CHEMICAL WORKS', 'HR', 'Kamal ', '9414126152', '9414126152', 'aseschem@gmail.com', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', NULL, 'Frontline Computers', 'xyz', 'CLOSED WON', 'Remarks updated'),
(6, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A12', 'None', 'crm_eps', '64', '2021-01-08', 'Basant', 'Director', 'Dipankar', 'Ashok Jangid-7221860262', 'Ashok Jangid-7221860262', 'it@basant.info', 'add1 ', 'add2', 'JODHPUR', 'RAJASTHA ', NULL, 'SHREE BALAJI TECHNOLOGIES', 'xyz', 'QUOTED', 'Remarks updated'),
(7, 'Seqrite Endpoint Security Business', '2F5F61561015B7E100A13', 'None', 'crm_eps', '10', '2021-01-08', 'BHILWARA URBAN CO.BANK', 'HR', 'Kamal ', '9798798798', '9798798798', 'rajesh123@gmail.com', 'add1 ', 'add2', 'Bhilwara', 'RAJASTHA ', NULL, 'compusys', 'xyz', 'LOST ', 'Remarks updated'),
(8, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A14', 'None', 'crm_eps', '135', '2021-01-08', 'BMCHRC', 'Director', 'Kamal ', '10584335548', '10584335548', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'TINU INTERNATIONAL', 'xyz', 'CLOSED WON', 'Remarks updated'),
(9, 'Seqrite Endpoint Security Total', 'a15', 'None', 'crm_eps', '10', '2021-01-08', 'Bomabay Hospital Trust Jaipur', 'HR', 'Dipankar', '9820628047', '9820628047', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'Wi2Fi Networks', 'xyz', 'QUOTED', 'hiiiiiiiiiiiiiiiiiiiiiii'),
(10, 'Seqrite Endpoint Security Total', 'new nnnnnnnnnnnnnnn', '365', 'crm_eps', '15', '2022-01-08', 'BRYS FORT HOTEL', 'Director', 'khubi', '10584335548', '10584335548', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', NULL, 'Creadent Solutions', 'xyz', 'QUOTED', 'sdf'),
(11, 'Seqrite Endpoint Security Total', 'a17', '365', 'crm_eps', '135', '2022-01-08', 'BHILWARA URBAN CO.BANK', 'HR', 'Rajesh', '11933699445', '11933699445', 'akmefintrade@yahoo.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'Computer Garage', 'xyz', 'QUOTED', 'sdf'),
(12, 'Seqrite Endpoint Security Total', 'a18', 'None', 'crm_eps', '10', '2022-01-08', 'BMCHRC', 'Director', 'Kamal ', '13283063342', '13283063342', 'jaipur@air.org.in', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'BISPL', 'xyz', 'QUOTED', 'new'),
(13, 'Seqrite Endpoint Security Total', 'new nnnnnnnnnnnnnnn', '365', 'crm_eps', '15', '2022-01-08', 'Bomabay Hospital Trust Jaipur', 'HR', 'Dipankar', '14632427240', '14632427240', 'aseschem@gmail.com', 'add1 ', 'add2', 'Udaipur', 'RAJASTHA ', NULL, 'Computer Garage', 'xyz', 'QUOTED', 'sdf'),
(14, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A20', 'None', 'crm_eps', '135', '2021-01-08', 'BRYS FORT HOTEL', 'Director', 'Kamal ', 'Ashok Jangid-7221860262', 'Ashok Jangid-7221860262', 'it@basant.info', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'BISPL', 'xyz', 'QUOTED', 'Remarks updated'),
(15, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A21', '365', 'crm_eps', '10', '2022-01-08', 'BHILWARA URBAN CO.BANK', 'HR', 'Kamal ', '10089750047', '10089750047', 'rajesh123@gmail.com', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', NULL, 'Frontline Computers', 'xyz', 'QUOTED', 'Remarks updated'),
(16, 'Seqrite Endpoint Security Total', 'sdfaaaaaaaaaaaaaaaa', 'None', 'crm_eps', '15', '2021-11-10', 'BMCHRC', 'Director', 'Dipankar', '10100664671', '10100664671', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'JODHPUR', 'RAJASTHA ', NULL, 'SHREE BALAJI TECHNOLOGIES', 'xyz', 'QUOTED', 'aaaaaaaaaaaaaaaaaaaaaaaa'),
(17, 'Seqrite Endpoint Security Total', 'a23', 'None', 'crm_eps', '135', '2021-11-10', 'Bomabay Hospital Trust Jaipur', 'HR', 'khubi', '10111579296', '10111579296', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Bhilwara', 'RAJASTHA ', NULL, 'compusys', 'xyz', 'QUOTED', 'SFDF'),
(18, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A24', 'None', 'crm_eps', '10', '2021-01-08', 'BRYS FORT HOTEL', 'Director', 'Rajesh', '15981791137', '15981791137', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'TINU INTERNATIONAL', 'xyz', 'LOST', 'Remarks updated'),
(19, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A25', 'None', 'crm_eps', '15', '2021-01-08', 'BHILWARA URBAN CO.BANK', 'HR', 'Kamal ', '17331155035', '17331155035', 'akmefintrade@yahoo.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'Wi2Fi Networks', 'xyz', 'LOST', 'Remarks updated'),
(20, 'Seqrite Endpoint Security Total', 'A26', 'None', 'crm_eps', '135', '2021-11-10', 'BMCHRC', 'Director', 'Dipankar', '18680518932', '18680518932', 'jaipur@air.org.in', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', NULL, 'Creadent Solutions', 'xyz', 'QUOTED', 'SDF'),
(21, 'Seqrite Endpoint Security Total', 'kkkkk', '365', 'crm_eps', '10', '2021-11-15', 'Bomabay Hospital Trust Jaipur', 'HR', 'Kamal ', '20029882829', '20029882829', 'aseschem@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'Computer Garage', 'xyz', 'QUOTED', 'sdff'),
(22, 'Seqrite Endpoint Security Total', 'a28', '1095', 'crm_eps', '15', '2021-11-10', 'BRYS FORT HOTEL', 'Director', 'Kamal ', 'Ashok Jangid-7221860262', 'Ashok Jangid-7221860262', 'it@basant.info', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'BISPL', 'xyz', 'QUOTED', 'sdf'),
(23, 'Seqrite Endpoint Security Total', '', '', 'crm_eps', '135', '2021-01-08', 'BHILWARA URBAN CO.BANK', 'HR', 'Dipankar', '10122493920', '10122493920', 'rajesh123@gmail.com', 'add1 ', 'add2', 'Udaipur', 'RAJASTHA ', NULL, 'Computer Garage', 'xyz', 'QUOTED', 'sssss'),
(24, 'Seqrite Endpoint Security Total', 'a30', '1095', 'crm_eps', '10', '', 'BMCHRC', 'Director', 'khubi', '10133408545', '10133408545', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'BISPL', 'xyz', 'QUOTED', 'sdf'),
(25, 'Seqrite Endpoint Security Total', 'new', '1095', 'crm_eps', '15', '2021-01-08', 'Bomabay Hospital Trust Jaipur', 'HR', 'Rajesh', '10144323169', '10144323169', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', NULL, 'Frontline Computers', 'xyz', 'QUOTED', 'Remarks updated'),
(26, 'Seqrite Endpoint Security Total', 'newa32', '1095', 'crm_eps', '135', '2024-01-08', 'BRYS FORT HOTEL', 'Director', 'Kamal ', '21379246727', '21379246727', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'JODHPUR', 'RAJASTHA ', NULL, 'SHREE BALAJI TECHNOLOGIES', 'xyz', 'QUOTED', 'sdfsdfdfsfdsf'),
(27, 'Seqrite Endpoint Security Total', 'SDF', '365', 'crm_eps', '10', '2025-11-10', 'BHILWARA URBAN CO.BANK', 'HR', 'Dipankar', '22728610624', '22728610624', 'akmefintrade@yahoo.com', 'add1 ', 'add2', 'Bhilwara', 'RAJASTHA ', NULL, 'compusys', 'xyz', 'QUOTED', 'SDF'),
(28, 'Seqrite Endpoint Security Total', 'BHAI BHAI ', '365', 'crm_eps', '15', '2025-11-10', 'BMCHRC', 'Director', 'Kamal ', '24077974522', '24077974522', 'jaipur@air.org.in', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'TINU INTERNATIONAL', 'xyz', 'QUOTED', 'DF'),
(29, 'Seqrite Endpoint Security Total', 'aa ra hu me', '1095', 'crm_eps', '135', '2023-11-15', 'Bomabay Hospital Trust Jaipur', 'HR', 'Kamal ', '25427338419', '25427338419', 'aseschem@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', NULL, 'Wi2Fi Networks', 'xyz', 'QUOTED', 'due to corona'),
(30, 'Seqrite Endpoint Security Total', 'nnnnnnnnnnnnnnnnn', 'None', 'crm_eps', '10', '2022-01-08', 'BRYS FORT HOTEL', 'Director', 'Dipankar', 'Ashok Jangid-7221860262', 'Ashok Jangid-7221860262', 'it@basant.info', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', NULL, 'Creadent Solutions', 'xyz', 'QUOTED', 'df'),
(31, 'sf', 'fine records', '365', 'crm_eps', 'f', '11/11/2021', 'f', 'sdf', 'df', '21', '21', 'r@g.com', 'sf', 'sf', 'f', 'f', 'df', 'ddf', 'f', 'QUOTED', 'f'),
(32, 'sf', 'fine records', '365', 'crm_eps', 'f', '11/11/2021', 'f', 'sdf', 'df', '21', '21', 'r@g.com', 'sf', 'sf', 'f', 'f', 'df', 'ddf', 'f', 'QUOTED', 'f'),
(33, 'sf', 'fine records', '365', 'crm_eps', 'f', '2021-11-11', 'f', 'sdf', 'df', '21', '21', 'r@g.com', 'sf', 'sf', 'f', 'f', 'df', 'ddf', 'f', 'QUOTED', 'f'),
(34, 'sf', 'fine records', '365', 'crm_eps', 'f', '2021-11-11', 'f', 'sdf', 'df', '21', '21', 'r@g.com', 'sf', 'sf', 'f', 'f', 'df', 'ddf', 'f', 'QUOTED', 'f'),
(35, 'sf', 'fine records', '365', 'crm_eps', 'f', '2021-11-11', 'f', 'sdf', 'df', '21', '21', 'r@g.com', 'sf', 'sf', 'f', 'f', 'df', 'ddf', 'f', 'QUOTED', 'f'),
(36, 'sf', 'fine records', '365', 'crm_eps', 'f', '2021-11-11', 'f', 'sdf', 'df', '21', '21', 'r@g.com', 'sf', 'sf', 'f', 'f', 'df', 'ddf', 'f', 'QUOTED', 'f'),
(37, 'fortinet product ', 'xxxxxxxxxxx', '365', 'crm_fortinet', 'sdf', '', 'sf', 'sf', 'f', '54', '4', 'rR@gmail.com', 'sf', 'f', '', 'f', 'df', 'f', 'df', 'QUOTED', 'f'),
(38, 'sdf', 'sdfd', '365', 'crm_fortinet', 'sdf', '', 'sf', 'sdf', 'sf', '2', '21', 'f@g.com', 'kjh', 'kjh', '21', '21', 'kjh', 'kjh', 'kj', 'QUOTED', 'hjh'),
(39, 'sdf', 'sdfd', '365', 'crm_fortinet', 'sdf', '2020-11-11', 'sf', 'sdf', 'sf', '2', '21', 'f@g.com', 'kjh', 'kjh', '21', '21', 'kjh', 'kjh', 'kj', 'QUOTED', 'hjh'),
(40, 'sdf', 'sdfd', '365', 'crm_fortinet', 'sdf', '2020-11-11', 'sf', 'sdf', 'sf', '2', '21', 'f@g.com', 'kjh', 'kjh', '21', '21', 'kjh', 'kjh', 'kj', 'QUOTED', 'hjh'),
(41, 'sdf', 'fgtnew', '365', 'crm_fortinet', 'sdf', '', 'sf', 'sfd', 'sf', '5', '5', 'r@gmaic.com', 'sf', 'sdf', 'sdf', 'sfd', 'df', 'dsf', 'sf', 'QUOTED', 'sfd'),
(42, 'sdf', 'fgtnew', '365', 'crm_fortinet', 'sdf', '', 'sf', 'sfd', 'sf', '5', '5', 'r@gmaic.com', 'sf', 'sdf', 'sdf', 'sfd', 'df', 'dsf', 'sf', 'QUOTED', 'sfd'),
(43, 'df', 'epsnew', '365', 'crm_eps', 'sdf', '', 'sdf', 'sdf', 'dsf', '4', '4', 'r@g.com', 'dsdf', 'sdf', 'sdf', 'ddf', 'sdf', 'sdf', 'df', 'QUOTED', 'sdf'),
(44, 'df', 'fortinet', '365', 'crm_fortinet', 'dsdf', '29/11/2020', 'sf', 'sf', 'sf', '5', '5', 'r@g.com', 'dfd', 'sf', 'sfd', 'df', 'sf', 'sf', 'sdf', 'QUOTED', 'sdf'),
(45, 'df', 'fortinet', '365', 'crm_fortinet', 'dsdf', '', 'sf', 'sf', 'sf', '5', '5', 'r@g.com', 'dfd', 'sf', 'sfd', 'df', 'sf', 'sf', 'sdf', 'QUOTED', 'sdf'),
(46, 'df', 'fortinet', '365', 'crm_fortinet', 'dsdf', '', 'sf', 'sf', 'sf', '5', '5', 'r@g.com', 'dfd', 'sf', 'sfd', 'df', 'sf', 'sf', 'sdf', 'QUOTED', 'sdf'),
(47, 'df', 'fortinet', '365', 'crm_fortinet', 'dsdf', '', 'sf', 'sf', 'sf', '5', '5', 'r@g.com', 'dfd', 'sf', 'sfd', 'df', 'sf', 'sf', 'sdf', 'QUOTED', 'sdf'),
(48, 'df', 'fortinet', '365', 'crm_fortinet', 'dsdf', '', 'sf', 'sf', 'sf', '5', '5', 'r@g.com', 'dfd', 'sf', 'sfd', 'df', 'sf', 'sf', 'sdf', 'QUOTED', 'sdf'),
(49, 'df', 'fortinet', '365', 'crm_fortinet', 'dsdf', '', 'sf', 'sf', 'sf', '5', '5', 'r@g.com', 'dfd', 'sf', 'sfd', 'df', 'sf', 'sf', 'sdf', 'QUOTED', 'sdf'),
(50, 'df', 'fortinet', '365', 'crm_fortinet', 'dsdf', '', 'sf', 'sf', 'sf', '5', '5', 'r@g.com', 'dfd', 'sf', 'sfd', 'df', 'sf', 'sf', 'sdf', 'QUOTED', 'sdf'),
(51, 'df', 'fortinet', '365', 'crm_fortinet', 'dsdf', '', 'sf', 'sf', 'sf', '5', '5', 'r@g.com', 'dfd', 'sf', 'sfd', 'df', 'sf', 'sf', 'sdf', 'QUOTED', 'sdf'),
(52, 'sdf', 'new h ', '365', 'crm_eps', 'sf', '2021-11-11', 'lj', 'lkj', 'lkj', '987', '89', 'r@gmail.com', 'f', 'sdf', 'lkj', 'lk', 'lkjh', 'kjh', 'sf', 'QUOTED', 'sf'),
(53, 'sdf', 'new h ', '365', 'crm_eps', 'sf', '', 'lj', 'lkj', 'lkj', '987', '89', 'r@gmail.com', 'f', 'sdf', 'lkj', 'lk', 'lkjh', 'kjh', 'sf', 'QUOTED', 'sf'),
(54, 'sdf', 'new h ', '365', 'crm_fortinet', 'sf', '2021-11-11', 'lj', 'lkj', 'lkj', '987', '89', 'r@gmail.com', 'f', 'sdf', 'lkj', 'lk', 'lkjh', 'kjh', 'sf', 'QUOTED', 'sf'),
(55, 'sdf', 'new h ', '365', 'crm_fortinet', 'sf', '2020-11-11', 'lj', 'lkj', 'lkj', '987', '89', 'r@gmail.com', 'f', 'sdf', 'lkj', 'lk', 'lkjh', 'kjh', 'sf', 'QUOTED', 'sf');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
