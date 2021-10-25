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
  `modify_on` timestamp(6) NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_eps`
--

INSERT INTO `crm_eps` (`id`, `product_name`, `serialno`, `plantype`, `type`, `users`, `expiry_date`, `company`, `designation`, `person_name`, `mobile`, `landline`, `email`, `address1`, `address2`, `city`, `state`, `in_sell`, `out_sell`, `dealer`, `status`, `remarks`, `modify_on`) VALUES
(1, 'product name', 'serial no ', 'plan type', 'type', 'users', 'expiry date', 'company', 'designation', 'contact person', 'mobile', 'landline', 'email', 'addres 1 ', 'address 2', 'city', 'state', 'in sell ', 'out sell', 'dealer', 'status ', 'remarks   ', NULL),
(2, 'Seqrite Endpoint Business', '2F5F61561015B7E100A7', 'None', 'EPS', '5', '02-02-2020', 'Adinath Sona Medicals', 'HR', 'Kamal ', '7073334386', '7073334386', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'Computer Garage', 'xyz', 'LOST ', 'Remarks updated', NULL),
(3, 'Seqrite Endpoint  Total', '2F5F61561015B7E100A8', 'None', 'EPS', '15', '04-01-2023', 'Akar Palm Hotel & Resorts Pvt Ltd', 'Director', 'Dipankar', '7073334386', '7073334386', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'BISPL', 'xyz', 'CLOSED WON', 'Remarks updated', NULL),
(4, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A9', 'None', 'EPS', '180', '11-01-2022', 'akme fintrade(I) Ltd.', 'HR', 'khubi', '2942489501', '2942489501', 'akmefintrade@yahoo.com', 'add1 ', 'add2', 'Udaipur', 'RAJASTHA ', '', 'Computer Garage', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(5, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A10', 'None', 'EPS', '28', '28-02-2018', 'All india radio jaipur', 'Director', 'Rajesh', '9413753177', '9413753177', 'jaipur@air.org.in', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'BISPL', 'xyz', 'LOST ', 'Remarks updated', NULL),
(6, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A11', 'None', 'EPS', '5', '16-01-2021', 'ASES CHEMICAL WORKS', 'HR', 'Kamal ', '9414126152', '9414126152', 'aseschem@gmail.com', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', '', 'Frontline Computers', 'xyz', 'CLOSED WON', 'Remarks updated', NULL),
(7, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A12', 'None', 'EPS', '64', '10-03-2023', 'Basant', 'Director', 'Dipankar', 'Ashok Jangid-7221860262', 'Ashok Jangid-7221860262', 'it@basant.info', 'add1 ', 'add2', 'JODHPUR', 'RAJASTHA ', '', 'SHREE BALAJI TECHNOLOGIES', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(8, 'Seqrite Endpoint Security Business', '2F5F61561015B7E100A13', 'None', 'EPS', '10', '06-12-2020', 'BHILWARA URBAN CO.BANK', 'HR', 'Kamal ', '9798798798', '9798798798', 'rajesh123@gmail.com', 'add1 ', 'add2', 'Bhilwara', 'RAJASTHA ', '', 'compusys', 'xyz', 'LOST ', 'Remarks updated', NULL),
(9, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A14', 'None', 'EPS', '135', '06-10-2020', 'BMCHRC', 'Director', 'Kamal ', '10584335548', '10584335548', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'TINU INTERNATIONAL', 'xyz', 'CLOSED WON', 'Remarks updated', NULL),
(10, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A15', 'None', 'EPS', '10', '08-01-2021', 'Bomabay Hospital Trust Jaipur', 'HR', 'Dipankar', '9820628047', '9820628047', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'Wi2Fi Networks', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(11, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A16', 'None', 'EPS', '15', '05-02-2019', 'BRYS FORT HOTEL', 'Director', 'khubi', '10584335548', '10584335548', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', '', 'Creadent Solutions', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(12, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A17', 'None', 'EPS', '135', '06-12-2020', 'BHILWARA URBAN CO.BANK', 'HR', 'Rajesh', '11933699445', '11933699445', 'akmefintrade@yahoo.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'Computer Garage', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(13, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A18', 'None', 'EPS', '10', '08-01-2021', 'BMCHRC', 'Director', 'Kamal ', '13283063342', '13283063342', 'jaipur@air.org.in', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'BISPL', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(14, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A19', 'None', 'EPS', '15', '06-12-2020', 'Bomabay Hospital Trust Jaipur', 'HR', 'Dipankar', '14632427240', '14632427240', 'aseschem@gmail.com', 'add1 ', 'add2', 'Udaipur', 'RAJASTHA ', '', 'Computer Garage', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(15, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A20', 'None', 'EPS', '135', '08-01-2021', 'BRYS FORT HOTEL', 'Director', 'Kamal ', 'Ashok Jangid-7221860262', 'Ashok Jangid-7221860262', 'it@basant.info', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'BISPL', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(16, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A21', 'None', 'EPS', '10', '06-12-2020', 'BHILWARA URBAN CO.BANK', 'HR', 'Kamal ', '10089750047', '10089750047', 'rajesh123@gmail.com', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', '', 'Frontline Computers', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(17, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A22', 'None', 'EPS', '15', '08-01-2021', 'BMCHRC', 'Director', 'Dipankar', '10100664671', '10100664671', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'JODHPUR', 'RAJASTHA ', '', 'SHREE BALAJI TECHNOLOGIES', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(18, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A23', 'None', 'EPS', '135', '06-12-2020', 'Bomabay Hospital Trust Jaipur', 'HR', 'khubi', '10111579296', '10111579296', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Bhilwara', 'RAJASTHA ', '', 'compusys', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(19, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A24', 'None', 'EPS', '10', '08-01-2021', 'BRYS FORT HOTEL', 'Director', 'Rajesh', '15981791137', '15981791137', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'TINU INTERNATIONAL', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(20, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A25', 'None', 'EPS', '15', '06-12-2020', 'BHILWARA URBAN CO.BANK', 'HR', 'Kamal ', '17331155035', '17331155035', 'akmefintrade@yahoo.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'Wi2Fi Networks', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(21, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A26', 'None', 'EPS', '135', '08-01-2021', 'BMCHRC', 'Director', 'Dipankar', '18680518932', '18680518932', 'jaipur@air.org.in', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', '', 'Creadent Solutions', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(22, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A27', 'None', 'EPS', '10', '06-12-2020', 'Bomabay Hospital Trust Jaipur', 'HR', 'Kamal ', '20029882829', '20029882829', 'aseschem@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'Computer Garage', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(23, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A28', 'None', 'EPS', '15', '08-01-2021', 'BRYS FORT HOTEL', 'Director', 'Kamal ', 'Ashok Jangid-7221860262', 'Ashok Jangid-7221860262', 'it@basant.info', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'BISPL', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(24, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A29', 'None', 'EPS', '135', '06-12-2020', 'BHILWARA URBAN CO.BANK', 'HR', 'Dipankar', '10122493920', '10122493920', 'rajesh123@gmail.com', 'add1 ', 'add2', 'Udaipur', 'RAJASTHA ', '', 'Computer Garage', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(25, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A30', 'None', 'EPS', '10', '08-01-2021', 'BMCHRC', 'Director', 'khubi', '10133408545', '10133408545', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'BISPL', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(26, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A31', 'None', 'EPS', '15', '06-12-2020', 'Bomabay Hospital Trust Jaipur', 'HR', 'Rajesh', '10144323169', '10144323169', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', '', 'Frontline Computers', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(27, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A32', 'None', 'EPS', '135', '08-01-2021', 'BRYS FORT HOTEL', 'Director', 'Kamal ', '21379246727', '21379246727', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'JODHPUR', 'RAJASTHA ', '', 'SHREE BALAJI TECHNOLOGIES', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(28, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A33', 'None', 'EPS', '10', '06-12-2020', 'BHILWARA URBAN CO.BANK', 'HR', 'Dipankar', '22728610624', '22728610624', 'akmefintrade@yahoo.com', 'add1 ', 'add2', 'Bhilwara', 'RAJASTHA ', '', 'compusys', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(29, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A34', 'None', 'EPS', '15', '08-01-2021', 'BMCHRC', 'Director', 'Kamal ', '24077974522', '24077974522', 'jaipur@air.org.in', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'TINU INTERNATIONAL', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(30, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A35', 'None', 'EPS', '135', '06-12-2020', 'Bomabay Hospital Trust Jaipur', 'HR', 'Kamal ', '25427338419', '25427338419', 'aseschem@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'Wi2Fi Networks', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(31, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A36', 'None', 'EPS', '10', '08-01-2021', 'BRYS FORT HOTEL', 'Director', 'Dipankar', 'Ashok Jangid-7221860262', 'Ashok Jangid-7221860262', 'it@basant.info', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', '', 'Creadent Solutions', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(32, 'product name', 'serial no ', 'plan type', 'type', 'users', 'expiry date', 'company', 'designation', 'contact person', 'mobile', 'landline', 'email', 'addres 1 ', 'address 2', 'city', 'state', 'in sell ', 'out sell', 'dealer', 'status ', 'remarks   ', NULL),
(33, 'Seqrite Endpoint Business', '2F5F61561015B7E100A7', 'None', 'EPS', '5', '02-02-2020', 'Adinath Sona Medicals', 'HR', 'Kamal ', '7073334386', '7073334386', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'Computer Garage', 'xyz', 'LOST ', 'Remarks updated', NULL),
(34, 'Seqrite Endpoint  Total', '2F5F61561015B7E100A8', 'None', 'EPS', '15', '04-01-2023', 'Akar Palm Hotel & Resorts Pvt Ltd', 'Director', 'Dipankar', '7073334386', '7073334386', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'BISPL', 'xyz', 'CLOSED WON', 'Remarks updated', NULL),
(35, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A9', 'None', 'EPS', '180', '11-01-2022', 'akme fintrade(I) Ltd.', 'HR', 'khubi', '2942489501', '2942489501', 'akmefintrade@yahoo.com', 'add1 ', 'add2', 'Udaipur', 'RAJASTHA ', '', 'Computer Garage', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(36, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A10', 'None', 'EPS', '28', '28-02-2018', 'All india radio jaipur', 'Director', 'Rajesh', '9413753177', '9413753177', 'jaipur@air.org.in', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'BISPL', 'xyz', 'LOST ', 'Remarks updated', NULL),
(37, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A11', 'None', 'EPS', '5', '16-01-2021', 'ASES CHEMICAL WORKS', 'HR', 'Kamal ', '9414126152', '9414126152', 'aseschem@gmail.com', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', '', 'Frontline Computers', 'xyz', 'CLOSED WON', 'Remarks updated', NULL),
(38, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A12', 'None', 'EPS', '64', '10-03-2023', 'Basant', 'Director', 'Dipankar', 'Ashok Jangid-7221860262', 'Ashok Jangid-7221860262', 'it@basant.info', 'add1 ', 'add2', 'JODHPUR', 'RAJASTHA ', '', 'SHREE BALAJI TECHNOLOGIES', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(39, 'Seqrite Endpoint Security Business', '2F5F61561015B7E100A13', 'None', 'EPS', '10', '06-12-2020', 'BHILWARA URBAN CO.BANK', 'HR', 'Kamal ', '9798798798', '9798798798', 'rajesh123@gmail.com', 'add1 ', 'add2', 'Bhilwara', 'RAJASTHA ', '', 'compusys', 'xyz', 'LOST ', 'Remarks updated', NULL),
(40, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A14', 'None', 'EPS', '135', '06-10-2020', 'BMCHRC', 'Director', 'Kamal ', '10584335548', '10584335548', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'TINU INTERNATIONAL', 'xyz', 'CLOSED WON', 'Remarks updated', NULL),
(41, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A15', 'None', 'EPS', '10', '08-01-2021', 'Bomabay Hospital Trust Jaipur', 'HR', 'Dipankar', '9820628047', '9820628047', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'Wi2Fi Networks', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(42, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A16', 'None', 'EPS', '15', '05-02-2019', 'BRYS FORT HOTEL', 'Director', 'khubi', '10584335548', '10584335548', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', '', 'Creadent Solutions', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(43, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A17', 'None', 'EPS', '135', '06-12-2020', 'BHILWARA URBAN CO.BANK', 'HR', 'Rajesh', '11933699445', '11933699445', 'akmefintrade@yahoo.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'Computer Garage', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(44, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A18', 'None', 'EPS', '10', '08-01-2021', 'BMCHRC', 'Director', 'Kamal ', '13283063342', '13283063342', 'jaipur@air.org.in', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'BISPL', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(45, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A19', 'None', 'EPS', '15', '06-12-2020', 'Bomabay Hospital Trust Jaipur', 'HR', 'Dipankar', '14632427240', '14632427240', 'aseschem@gmail.com', 'add1 ', 'add2', 'Udaipur', 'RAJASTHA ', '', 'Computer Garage', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(46, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A20', 'None', 'EPS', '135', '08-01-2021', 'BRYS FORT HOTEL', 'Director', 'Kamal ', 'Ashok Jangid-7221860262', 'Ashok Jangid-7221860262', 'it@basant.info', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'BISPL', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(47, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A21', 'None', 'EPS', '10', '06-12-2020', 'BHILWARA URBAN CO.BANK', 'HR', 'Kamal ', '10089750047', '10089750047', 'rajesh123@gmail.com', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', '', 'Frontline Computers', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(48, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A22', 'None', 'EPS', '15', '08-01-2021', 'BMCHRC', 'Director', 'Dipankar', '10100664671', '10100664671', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'JODHPUR', 'RAJASTHA ', '', 'SHREE BALAJI TECHNOLOGIES', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(49, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A23', 'None', 'EPS', '135', '06-12-2020', 'Bomabay Hospital Trust Jaipur', 'HR', 'khubi', '10111579296', '10111579296', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Bhilwara', 'RAJASTHA ', '', 'compusys', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(50, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A24', 'None', 'EPS', '10', '08-01-2021', 'BRYS FORT HOTEL', 'Director', 'Rajesh', '15981791137', '15981791137', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'TINU INTERNATIONAL', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(51, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A25', 'None', 'EPS', '15', '06-12-2020', 'BHILWARA URBAN CO.BANK', 'HR', 'Kamal ', '17331155035', '17331155035', 'akmefintrade@yahoo.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'Wi2Fi Networks', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(52, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A26', 'None', 'EPS', '135', '08-01-2021', 'BMCHRC', 'Director', 'Dipankar', '18680518932', '18680518932', 'jaipur@air.org.in', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', '', 'Creadent Solutions', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(53, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A27', 'None', 'EPS', '10', '06-12-2020', 'Bomabay Hospital Trust Jaipur', 'HR', 'Kamal ', '20029882829', '20029882829', 'aseschem@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'Computer Garage', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(54, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A28', 'None', 'EPS', '15', '08-01-2021', 'BRYS FORT HOTEL', 'Director', 'Kamal ', 'Ashok Jangid-7221860262', 'Ashok Jangid-7221860262', 'it@basant.info', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'BISPL', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(55, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A29', 'None', 'EPS', '135', '06-12-2020', 'BHILWARA URBAN CO.BANK', 'HR', 'Dipankar', '10122493920', '10122493920', 'rajesh123@gmail.com', 'add1 ', 'add2', 'Udaipur', 'RAJASTHA ', '', 'Computer Garage', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(56, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A30', 'None', 'EPS', '10', '08-01-2021', 'BMCHRC', 'Director', 'khubi', '10133408545', '10133408545', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'BISPL', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(57, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A31', 'None', 'EPS', '15', '06-12-2020', 'Bomabay Hospital Trust Jaipur', 'HR', 'Rajesh', '10144323169', '10144323169', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', '', 'Frontline Computers', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(58, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A32', 'None', 'EPS', '135', '08-01-2021', 'BRYS FORT HOTEL', 'Director', 'Kamal ', '21379246727', '21379246727', 'it.jaiput@clarksinn.in,writerish07@gmail.com', 'add1 ', 'add2', 'JODHPUR', 'RAJASTHA ', '', 'SHREE BALAJI TECHNOLOGIES', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(59, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A33', 'None', 'EPS', '10', '06-12-2020', 'BHILWARA URBAN CO.BANK', 'HR', 'Dipankar', '22728610624', '22728610624', 'akmefintrade@yahoo.com', 'add1 ', 'add2', 'Bhilwara', 'RAJASTHA ', '', 'compusys', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(60, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A34', 'None', 'EPS', '15', '08-01-2021', 'BMCHRC', 'Director', 'Kamal ', '24077974522', '24077974522', 'jaipur@air.org.in', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'TINU INTERNATIONAL', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(61, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A35', 'None', 'EPS', '135', '06-12-2020', 'Bomabay Hospital Trust Jaipur', 'HR', 'Kamal ', '25427338419', '25427338419', 'aseschem@gmail.com', 'add1 ', 'add2', 'Jaipur', 'RAJASTHA ', '', 'Wi2Fi Networks', 'xyz', 'QUOTED', 'Remarks updated', NULL),
(62, 'Seqrite Endpoint Security Total', '2F5F61561015B7E100A36', 'None', 'EPS', '10', '08-01-2021', 'BRYS FORT HOTEL', 'Director', 'Dipankar', 'Ashok Jangid-7221860262', 'Ashok Jangid-7221860262', 'it@basant.info', 'add1 ', 'add2', 'Jodhpur', 'RAJASTHA ', '', 'Creadent Solutions', 'xyz', 'QUOTED', 'Remarks updated', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
