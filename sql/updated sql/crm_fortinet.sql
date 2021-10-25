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
-- Table structure for table `crm_fortinet`
--

DROP TABLE IF EXISTS `crm_fortinet`;
CREATE TABLE IF NOT EXISTS `crm_fortinet` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) DEFAULT 'xxxxx',
  `serialno` varchar(200) DEFAULT NULL,
  `plantype` varchar(200) DEFAULT 'none',
  `type` varchar(200) DEFAULT 'Fortinet',
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
  `in_sell` varchar(200) NOT NULL,
  `out_sell` varchar(200) DEFAULT NULL,
  `dealer` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `modify_on` timestamp(6) NULL DEFAULT current_timestamp(6),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_fortinet`
--

INSERT INTO `crm_fortinet` (`id`, `product_name`, `serialno`, `plantype`, `type`, `users`, `expiry_date`, `company`, `designation`, `person_name`, `mobile`, `landline`, `email`, `address1`, `address2`, `city`, `state`, `in_sell`, `out_sell`, `dealer`, `status`, `remarks`, `modify_on`) VALUES
(1, 'FGT60E', 'FGT60E4Q16063608', '1095', 'crm_fortinet', '0', '2023-11-19', 'Govt College', 'None', 'Pradeep Modi', '154015400', 'None', 'pradeepjimodi@gmail.com', 'Sri ganganagar', 'none', 'Sri ganganagar', 'rajasthan', 'none', 'none', 'Binary Infosolutions Private Limited', 'QUOTED', 'no remarks', '2020-11-18 19:26:27.000000'),
(2, 'FGT40C', 'FGT40C3913002863', '365', 'crm_fortinet', '0', '2020-10-24', 'G R INFRAPROJECTS LIMITED', 'None', '', '9001996262', 'None', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', 'none', 'UDAIPUR', 'rajasthan', '', '', 'Adroit Infosystem-9001996262', 'QUOTED', 'no remarks', NULL),
(3, 'FG50E 8X5 1 YEAR RENEWAL', 'FGT50E3U16020473', '365', 'crm_fortinet', '0', '2020-11-04', 'Globe InternationalCarriers Ltd', 'None', '', '0141-2361794', 'None', 'info@gicbl.in', '205, Prakashdeep Complex, Near Mayank Trade Centre, 206, Station Rd, Jaipur, Rajasthan 302006', 'none', 'JAIPUR', 'rajasthan', '13316', '22033', 'HRM Technologies', 'QUOTED', 'no remarks', NULL),
(4, 'FG80C 8X5 1 YEAR RENEWAL', 'FGT80C3911605062', '365', 'crm_fortinet', '0', '2022-11-19', 'COLLEGE (VIT)', 'None', 'Mohan /Manohar ji', '9950426767/8112285658', 'None', 'info@vitj.ac.in', '', 'none', 'JAIPUR', 'rajasthan', '16657', '19000', 'ANJANI INFOTECH', 'QUOTED', 'no remarks', NULL),
(5, 'FGT40C', 'FGT40C3913002952', '365', 'crm_fortinet', '0', '2021-11-19', 'G R INFRAPROJECTS LIMITED', 'None', '', '9001897408', 'None', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', 'none', 'UDAIPUR', 'rajasthan', '', '', 'Adroit Infosystem-9001996262', 'QUOTED', 'no remarks', NULL),
(6, 'FGT30D', 'FGT30D3X16000170', '365', 'crm_fortinet', '0', '2021-11-19', 'G R INFRAPROJECTS LIMITED', 'None', '', '9001897408', 'None', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', 'none', 'UDAIPUR', 'rajasthan', '', '', 'Adroit Infosystem-9001996262', 'QUOTED', 'no remarks', NULL),
(7, 'FGT40C', 'FGT40C3915000815', '365', 'crm_fortinet', '0', '2021-11-19', 'Rupayan', 'None', 'Kunwar Raunaq', '', 'None', 'raunaq@rupayan.co.in', 'Sitapura', 'none', 'jaipur', 'rajasthan', '', '', 'BB PROFESSIONALS', 'QUOTED', 'no remarks', NULL),
(8, 'FGT60D', 'FGT60D4615024330', '365', 'crm_fortinet', '0', '2021-11-19', 'RSWM, LTD.,', 'None', 'Praveen Baheti', '9950479620/9413356039', 'None', 'ithelpdesk.kanyakheri@lnjbhilwara.com', 'Kanyakheri, Teh. Hamirgarh', 'none', 'Bhilwara', 'rajasthan', '', '', 'Mikroz InfoSecurity Pvt. Ltd.', 'QUOTED', 'no remarks', '2020-11-18 19:17:19.000000'),
(9, 'FGT30D', 'FGT30D3X15014920', '365', 'crm_fortinet', '0', '2020-11-28', 'G R INFRAPROJECTS LIMITED', 'None', '', '9001996262', 'None', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', 'none', 'UDAIPUR', 'rajasthan', '', '', 'Rubik Infotech', 'QUOTED', 'no remarks', NULL),
(10, 'FGT80C', 'FGT80C3914600857', '365', 'crm_fortinet', '0', '2019-12-06', 'ARMY PUBLIC SCHOOL BIKANER', 'None', 'SHASHI Sharma', '9829164134', 'None', 'yogeshbkn1@gmail.com', 'INSIDE ARMY CANTT BIKANER', 'none', 'Bikaner', 'rajasthan', '19451', '26000', 'Binary Infosolutions Private Limited', 'QUOTED', 'no remarks', NULL),
(11, 'FGT90D', 'FGT90D3Z13006101', '365', 'crm_fortinet', '0', '2019-12-06', 'National Engeneering Ltd', 'None', 'Giraraj Sharma', '8058000071', 'None', 'girarj.sharma@nbcbearings.in', '', 'none', 'Jaipur', 'rajasthan', '', '', 'Binary Infosolutions Private Limited', 'QUOTED', 'no remarks', NULL),
(12, 'FGT30E', 'FGT30E3U16013622', '365', 'crm_fortinet', '0', '2019-12-31', 'Arth Microfinance Pvt. Ltd.', 'None', 'Pramod Paliwal', '9887535758', 'None', 'rajvir.rathore@arthfinance.net', 'Sitapura', 'none', 'Jaipur', 'rajasthan', '', '', 'Ncs Computech Ltd.', 'QUOTED', 'no remarks', NULL),
(13, 'FG30E 8x5 3 YEAR', 'FGT30E3U17018259', '365', 'crm_fortinet', '0', '2020-10-03', '', 'None', '', '', 'None', '', '', 'none', 'UDAIPUR', 'rajasthan', '21926', '35000', 'HINDUSTAN COMPUTER', 'QUOTED', 'no remarks', NULL),
(14, 'FG30E 8x5 3 YEAR', 'FGT30E3U17018049', '365', 'crm_fortinet', '0', '2020-10-08', 'ASG HOSPITAL PVT LTD', 'None', 'Ramjash Yadav', '8875006140', 'None', 'it@asgeyehospital.com', 'ASG HOSPITAL PVT LTD', 'none', 'Jaipur', 'rajasthan', '21926', '26800', 'ADITYA SOLUTIONS', 'QUOTED', 'no remarks', NULL),
(15, 'FG30E 8x5 3 YEAR', 'FGT30E3U17018290', '365', 'crm_fortinet', '0', '2020-10-10', 'ASG HOSPITAL PVT LTD', 'None', 'Ramjash Yadav', '8875006140', 'None', 'it@asgeyehospital.com', 'ASG HOSPITAL PVT LTD', 'none', 'Jaipur', 'rajasthan', '21926', '26800', 'ADITYA SOLUTIONS', 'QUOTED', 'no remarks', NULL),
(16, 'FG30E 8x5 3 YEAR', 'FGT30E3U17017602', '365', 'crm_fortinet', '0', '2020-10-15', 'axel networks', 'None', 'Navdeep Chabra', '9928855300', 'None', 'accounts@axelnetworks.com', 'c-scheme', 'none', 'JAIPUR', 'rajasthan', '21926', '26000', 'BISPL', 'QUOTED', 'no remarks', NULL),
(17, 'FG100D', 'FG100D3G16821930', '365', 'crm_fortinet', '0', '2020-10-23', 'Metacube Software Pvt Ltd', 'None', 'Aditya Singh', '8769162058', 'None', 'aditya.singh@metacube.com', 'sp-6, Phase 4, EPIP, Sitapura', 'none', 'Jaipur', 'rajasthan', '', '', 'Netlogic Solutions', 'QUOTED', 'no remarks', NULL),
(18, 'FG30E 8x5 3 YEAR', 'FGT30E3U17018112', '365', 'crm_fortinet', '0', '2020-10-23', 'JAI SHANKAR SEEDS PVT LTD', 'None', 'Rishabh Gupta', '9772848888', 'None', 'jsspl947@gmail.com', '75,old dhan mandi', 'none', 'SRI GANGANAGAR', 'rajasthan', '21926', '41400', 'BISPL', 'QUOTED', 'no remarks', NULL),
(19, 'FG100D', 'FG100D3G16812551', '365', 'crm_fortinet', '0', '2020-10-24', 'Metacube Software Pvt Ltd', 'None', 'Aditya Singh', '8769162058', 'None', 'aditya.singh@metacube.com', 'sp-6, Phase 4, EPIP, Sitapura', 'none', 'Jaipur', 'rajasthan', '', '', 'Netlogic Solutions', 'QUOTED', 'no remarks', NULL),
(20, 'FG30E 8x5 3 YEAR', 'FGT30E3U17017637', '365', 'crm_fortinet', '0', '2020-10-26', '', 'None', '', '', 'None', '', '', 'none', 'UDAIPUR', 'rajasthan', '21926', '33500', 'ASSURE COMPUTER', 'QUOTED', 'no remarks', NULL),
(21, 'FG30E 8x5 3 YEAR', 'FGT30E3U17017766', '365', 'crm_fortinet', '0', '2020-10-31', 'Oji India Packaging Pvt Ltd', 'None', 'Vijay Kumar', '1494674706', 'None', 'vijay.kumar@ojpack.com', 'Plot No SP4-78, New Industrial Complex, (Majrakath), Neemrana', 'none', 'Jaipur', 'rajasthan', '21926', '30000', 'M/S OLWELL IT SOLUTIONS', 'QUOTED', 'no remarks', NULL),
(22, 'FG100D', 'FG100D3G16821906', '365', 'crm_fortinet', '0', '2020-11-04', 'Metacube Software Pvt Ltd', 'None', 'Aditya singh', '8.77E+09', 'None', 'aditya.singh@metacube.com', 'sp-6, Phase 4, EPIP, Sitapura', 'none', 'Jaipur', 'rajasthan', '', '', 'Netlogic Solutions', 'QUOTED', 'no remarks', NULL),
(23, 'FG30E 8x5 3 YEAR', 'FGT30E3U17017772', '365', 'crm_fortinet', '0', '2020-11-13', 'SHRI VISHVAKARMA (EMERY STONE) INDUSTRIES PVT LTD', 'None', 'Shri Gopal Sharma', '9829072228', 'None', 'sgs@choyal.com', 'ARJUNPURA KHALSA', 'none', 'AJMER', 'rajasthan', '21926', '35500', 'RATNATRAY COMPUTER VISION', 'QUOTED', 'no remarks', NULL),
(24, 'FG60E 8X5 3 YEAR', 'FGT60E4Q16096265', '365', 'crm_fortinet', '0', '2020-11-13', 'PWD Rajasthan', 'None', 'Dayanaand Choudhary', '0141-5110518', 'None', 'kulhari.dayanand@yahoo.in', 'Jaipur', 'none', 'JAIPUR', 'rajasthan', '46035', '64000', 'SYSTEMATIC SOLUTIONS', 'QUOTED', 'no remarks', NULL),
(25, 'FG30E 8x5 3 YEAR', 'FGT30E3U17018649', '365', 'crm_fortinet', '0', '2020-11-16', 'Indian Network for Development Exchange Pvt.Ltd.', 'None', 'Ninad Sharma', '9772240620', 'None', 'administration@goidex.com', '124,Goverdhan colony,New Sanganer Road Sodala Jaipur', 'none', 'JAIPUR', 'rajasthan', '21926', '28500', 'VINAYAKAM INFOSOLUTION', 'QUOTED', 'no remarks', NULL),
(26, 'FG30E 8x5 3 YEAR', 'FGT30E3U17017793', '365', 'crm_fortinet', '0', '2020-11-17', '', 'None', '', '', 'None', '', '', 'none', 'BHILWARA', 'rajasthan', '21926', '34000', 'CS SOLUTIONS', 'QUOTED', 'no remarks', NULL),
(27, 'FG800C', 'FG800C3912801243', '365', 'crm_fortinet', '0', '2020-11-18', 'Wipro Ltd', 'None', 'Brijesh Bhavsar', '8758381382', 'None', 'brijesh.bhavsar1@wipro.com', 'C-92 ,Lalkothi scheme ,behind new vidhan sabha', 'none', 'Jaipur', 'rajasthan', '', '', 'Wipro Ltd', 'QUOTED', 'no remarks', NULL),
(28, 'FG800C', 'FG800C3912801455', '365', 'crm_fortinet', '0', '2020-11-18', 'Wipro Ltd', 'None', 'Brijesh Bhavsar', '8758381382', 'None', 'brijesh.bhavsar1@wipro.com', 'C-92 ,Lalkothi scheme ,behind new vidhan sabha', 'none', 'Jaipur', 'rajasthan', '', '', 'Wipro Ltd', 'QUOTED', 'no remarks', NULL),
(29, 'FGT30D', 'FGT30D3X13007272', '365', 'crm_fortinet', '0', '2020-11-18', 'Tokai Imperial Hydraulics India Pvt.Ltd', 'None', 'Tarun Verma', '14946716000', 'None', 'tarun.verma@tihtokai.co.in', 'SP-2-93-95,RIICO Majrakath, Japanese Zone, Neemrana', 'none', 'Rajasthan', 'rajasthan', '', '', 'Binary Infosolutions Private Limited', 'QUOTED', 'no remarks', NULL),
(30, 'FG100D', 'FG100D3G16813724', '365', 'crm_fortinet', '0', '2020-11-22', 'Medica TS Hospital Pvt. Ltd.', 'None', 'Vikash Tiwari', '9062410555', 'None', 'vikash.tiwari@medicasynergie.in', 'Kalinganager', 'none', 'Kolkata', 'rajasthan', '', '', 'COMPUTER EXCHANGE PVT. LTD.', 'QUOTED', 'no remarks', NULL),
(31, 'FG50E 8X5 3 YEAR', 'FGT50E3U17015468', '365', 'crm_fortinet', '0', '2020-11-26', 'SIDDHI VINAYAK Computers', 'None', 'Naveen Goenka', '9829010675', 'None', 'n.goenka2005@gmail.com', '6-143,vidhyadhar nagar, jaipur', 'none', 'JAIPUR', 'rajasthan', '40000', '60000', 'BISPL', 'QUOTED', 'no remarks', NULL),
(32, 'FG30E 8x5 3 YEAR', 'FGT30E3U17018675', '365', 'crm_fortinet', '0', '2020-11-28', 'Pushkar Fort Hotel', 'None', 'Chandan', '9928037501', 'None', 'gm.rrpf@royalorchidhotels.com', 'pushkar ajmer', 'none', 'Pushkar', 'rajasthan', '21926', '31000', 'ICON INTEGRATED SERVICE', 'QUOTED', 'no remarks', NULL),
(33, 'FG90D 8X5 3YEAR', 'FGT90D3Z16007353', '365', 'crm_fortinet', '0', '2020-11-29', 'INDO THAI DEVLOPERS PVT LTD', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '90250', '117615', 'INDO THAI DEVLOPERS PVT LTD', 'QUOTED', 'no remarks', NULL),
(34, 'FG30E 8x5 3 YEAR', 'FGT30E3U17028182', '365', 'crm_fortinet', '0', '2020-12-03', 'Industrial Guar Products Pvt. Ltd.', 'None', 'Subrahmanyam', '9660991999', 'None', 'venkat@igp.co.in', 'EPIP Neemrana', 'none', 'NEEMRANA', 'rajasthan', '21926', '38000', 'TEPHRA INFOTECH', 'QUOTED', 'no remarks', NULL),
(35, 'FGT50E', 'FGT50E3U16020790', '365', 'crm_fortinet', '0', '2020-12-07', 'srg housing finance ltd', 'None', 'Vinod Jain', '2942561882', 'None', 'vinodfandot@gmail.com', 'srg housing finance ltd', 'none', 'UDAIPUR', 'rajasthan', '', '', 'Binary Infosolutions Private Limited', 'QUOTED', 'no remarks', NULL),
(36, 'FG30E 8x5 3 YEAR', 'FGT30E3U17018469', '365', 'crm_fortinet', '0', '2020-12-10', 'G R INFRAPROJECTS LIMITED', 'None', '9001996262', '2942487749', 'None', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', 'none', 'UDAIPUR', 'rajasthan', '21926', '30000', 'ASSURE COMPUTER', 'QUOTED', 'no remarks', NULL),
(37, 'FG30E 8x5 3 YEAR', 'FGT30E3U17018267', '365', 'crm_fortinet', '0', '2021-12-10', 'G R INFRAPROJECTS LIMITED', 'None', '9001996262', '2942487749', 'None', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', 'none', 'UDAIPUR', 'rajasthan', '21926', '30000', 'ASSURE COMPUTER', 'QUOTED', 'no remarks', NULL),
(38, 'FG30E 8x5 3 YEAR', 'FGT30E3U17026967', '365', 'crm_fortinet', '0', '2020-12-13', '', 'None', '', '', 'None', '', '', 'none', 'Lucknow', 'rajasthan', '21926', '30000', 'TRIX TECHNOLOGIES', 'QUOTED', 'no remarks', NULL),
(39, 'FG30E 8X5 1 YEAR RENEWAL', 'FGT30E3U16006086', '365', 'crm_fortinet', '0', '2020-12-15', 'Dangayach Products', 'None', 'Vishnu Dangayach', '8058790583', 'None', 'vlbsbassi@yahoo.in', 'Bassi', 'none', 'JAIPUR', 'rajasthan', '8396', '13000', 'SKYNET', 'QUOTED', 'no remarks', NULL),
(40, 'FG80C 8X5 1 YEAR RENEWAL', 'FGT80C3910613828', '365', 'crm_fortinet', '0', '2020-12-15', 'K S MOTORS PVT LTD', 'None', 'Harish Sharma', '141-4055545', 'None', 'harish@ksmotors.com', 'M.I. Road', 'none', 'JAIPUR', 'rajasthan', '19451', '23000', 'BB PROFESSIONAL', 'QUOTED', 'no remarks', NULL),
(41, 'FG30E 8x5 3 YEAR', 'FGT30E3U17017785', '365', 'crm_fortinet', '0', '2020-12-17', 'Sports International', 'None', 'Saurabh Bairakhi', '7727865570', 'None', 'sijaipur@gmail.com', 'G-1/96 , V.K.I.Extn Badharna, Jaipur', 'none', 'Jaipur', 'rajasthan', '21926', '35000', 'SHREE KESHAV ENTERPRISES', 'QUOTED', 'no remarks', NULL),
(42, 'FG30E 8x5 3 YEAR', 'FGT30E3U17028266', '365', 'crm_fortinet', '0', '2020-12-17', 'PEGMA RESOURCES PVT LTD', 'None', 'Shoaibh Mansoori', '9214887418', 'None', 'it@pegma.in', 'C-150, RIICO Hsg Complex, Ajmer Road, Beawar 305901 Rajasthan, India', 'none', 'BEAWER', 'rajasthan', '21926', '41000', 'Binary Infosolutions Pvt Ltd', 'QUOTED', 'no remarks', NULL),
(43, 'FG30E 8x5 3 YEAR', 'FGT30E3U17028224', '365', 'crm_fortinet', '0', '2020-12-23', 'G R INFRAPROJECTS LIMITED', 'None', '9001996262', '2942487749', 'None', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', 'none', 'UDAIPUR', 'rajasthan', '21926', '30000', 'ASSURE COMPUTER', 'QUOTED', 'no remarks', NULL),
(44, 'FGT50E', 'FGT50E3U16022492', '365', 'crm_fortinet', '0', '2020-12-26', 'EverData Technologies Pvt. Ltd.', 'None', 'Akar Periwal\nAnuj Asopa', '7229822288\n9950995978', 'None', 'periwalaakar26@yahoo.in', 'Shri Gopla Nagar', 'none', 'Jaipur', 'rajasthan', '', '', 'PJ Network', 'QUOTED', 'no remarks', NULL),
(45, 'FG30E 8x5 3 YEAR', 'FGT30E3U17027953', '365', 'crm_fortinet', '0', '2020-12-26', 'G R INFRAPROJECTS LIMITED', 'None', '9001996262', '2942487749', 'None', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', 'none', 'UDAIPUR', 'rajasthan', '21926', '30000', 'ASSURE COMPUTER', 'QUOTED', 'no remarks', NULL),
(46, 'FG240D', 'FG240D4615801302', '365', 'crm_fortinet', '0', '2020-12-27', 'Toyoda Gosei Minda India Private Limited', 'None', 'Shiv Kumar', '9829009984', 'None', 'shiv.kumar@tgin.co.in', 'Toyoda Gosei Minda India Private Limited, Plot No : SP2,30& 31, Riico Indl area, majrakath, Neemrana', 'none', 'Neemrana', 'rajasthan', '', '', 'Kddi India Pvt Ltd.', 'QUOTED', 'no remarks', NULL),
(47, 'FG30E 8x5 3 YEAR', 'FGT30E3U17028319', '365', 'crm_fortinet', '0', '2020-12-27', 'G R INFRAPROJECTS LIMITED', 'None', '9001996262', '2942487749', 'None', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', 'none', 'UDAIPUR', 'rajasthan', '21926', '30000', 'ASSURE COMPUTER', 'QUOTED', 'no remarks', NULL),
(48, 'FG60E 8X5 3 YEAR', 'FGT60E4Q16097237', '365', 'crm_fortinet', '0', '2020-12-27', 'SANJO FORGE INDIA PVT LTD', 'None', 'Manoj Kumar', '9214428216', 'None', 'manoj.kumar@sanjoindia.in', 'SP2-65,NEW INDUSTRIAL AREA, NEEMRANA', 'none', 'Neemrana', 'rajasthan', '46035', '57000', 'Kinesis Infotech Bussiness Services Company', 'QUOTED', 'no remarks', NULL),
(49, 'FG30E 8x5 3 YEAR', 'FGT30E3U17028287', '365', 'crm_fortinet', '0', '2020-12-28', 'G R INFRAPROJECTS LIMITED', 'None', '9001996262', '2942487749', 'None', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', 'none', 'UDAIPUR', 'rajasthan', '21926', '30000', 'ASSURE COMPUTER', 'QUOTED', 'no remarks', NULL),
(50, 'FG40C 8X5 1 Yr RENEWAL', 'FGT40C3912002940', '365', 'crm_fortinet', '0', '2020-12-29', 'Krishna Food Products', 'None', 'Anuj Srivastava', '9919101575', 'None', 'kfp_dewas@hotmail.com', '124-125,Gram Siya Maxi Road,Dewas (MP)', 'none', 'MP', 'rajasthan', '', '', 'Binary Infosolutions Pvt Ltd.', 'QUOTED', 'no remarks', NULL),
(51, 'FGT80C', 'FGT80C3912615652', '365', 'crm_fortinet', '0', '2020-12-29', 'The Indo Zinc Ltd Mahi Cement', 'None', 'Shashi Bhushan', '2962301550', 'None', 'mukhijasb@indiacements.co.in', 'Village-wazwana, Tehsil-gadhi', 'none', 'Banswara', 'rajasthan', '', '', 'Binary Infosolutions Private Limited', 'QUOTED', 'no remarks', NULL),
(52, 'FG30E 8x5 3 YEAR', 'FGT30E3U17026941', '365', 'crm_fortinet', '0', '2020-12-31', 'G R INFRAPROJECTS LIMITED', 'None', '9001996262', '2942487749', 'None', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', 'none', 'UDAIPUR', 'rajasthan', '21926', '30000', 'ASSURE COMPUTER', 'QUOTED', 'no remarks', NULL),
(53, 'FGT80C', 'FGT80C3909635593', '365', 'crm_fortinet', '0', '2021-10-01', 'Guardian International Pvt Ltd', 'None', 'Raj Albert', '9.87E+09', 'None', 'araj@amanresorts.com', 'Swai Madhopur, Sherpur Khilji Pur', 'none', 'Ranthambore', 'rajasthan', '', '', 'P JNETWORKS', 'QUOTED', 'no remarks', NULL),
(54, 'FG60E Three Year 8X5', 'FGT60ETK18055388', '365', 'crm_fortinet', '0', '2021-10-03', '', 'None', '', '', 'None', '', '', 'none', 'kota', 'rajasthan', '', '', 'Magnifying Solutions', 'QUOTED', 'no remarks', NULL),
(55, 'FG60E 8X5 3 YEAR', 'FGT60ETK18003846', '365', 'crm_fortinet', '0', '2021-10-07', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '44000', '61000', 'BLAZE TECHNOLOGIES', 'QUOTED', 'no remarks', NULL),
(56, 'FG100E 8x5 3 Years', 'FG100ETK18003462', '365', 'crm_fortinet', '0', '2021-10-09', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '156000', 'ANJANI INFOTECH', 'QUOTED', 'no remarks', NULL),
(57, 'FG30E 8x5 3 YEAR', 'FGT30E5618017846', '365', 'crm_fortinet', '0', '2021-10-13', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '23200', '28000', 'ANUP ENTERPRISES', 'QUOTED', 'no remarks', NULL),
(58, 'FG60E 8X5 3 YEAR', 'FGT60E4Q16096127', '365', 'crm_fortinet', '0', '2021-10-16', '', 'None', '', '', 'None', '', '', 'none', 'REWARI', 'rajasthan', '46035', '57000', 'Kinesis Infotech Bussiness Services Company', 'QUOTED', 'no remarks', NULL),
(59, 'FG30E 24X7 3 YEAR', 'FGT30E5618042961', '365', 'crm_fortinet', '0', '2021-10-21', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '37000', 'AT YOUR SERVICES', 'QUOTED', 'no remarks', NULL),
(60, 'FGT30E', 'FGT30E5618014062', '365', 'crm_fortinet', '0', '2021-10-22', 'Harita Fehrer Limited', 'None', 'Sankar G', '9788311829', 'None', 'g.sankar@haritaseating.com', 'Riico Industrial Area, Biwadi-301019', 'none', 'Bhiwadi', 'rajasthan', '', '', 'Sidhshree Computronics Pvt Ltd.', 'QUOTED', 'no remarks', NULL),
(61, 'FG200E 8X5 1 YEAR', 'FG200ETK18908050', '365', 'crm_fortinet', '0', '2021-10-22', 'G-TEKT INDIA PRIVATE LIMITED', 'None', '', '', 'None', '', '', 'none', 'ALWAR', 'rajasthan', '', '186000', 'G-TEKT INDIA PRIVATE LIMITED', 'QUOTED', 'no remarks', NULL),
(62, 'FG100E 8x5 3 Years', 'FG100ETK18002353', '365', 'crm_fortinet', '0', '2021-10-23', '', 'None', '', '', 'None', '', '', 'none', 'Lucknow', 'rajasthan', '', '165000', 'SPIN WOLRD', 'QUOTED', 'no remarks', NULL),
(63, 'FG50E 8X5 3 YEAR', 'FGT50E5618030228', '365', 'crm_fortinet', '0', '2021-10-26', 'Indiana Palace Jodhpur Unti of- WAVES HOTELS AND ESTATES Pvt. LTD.', 'None', '', '', 'None', '', '', 'none', 'JODHPUR', 'rajasthan', '40000', '51000', 'Indiana Palace Jodhpur Unti of- WAVES HOTELS AND ESTATES Pvt. LTD.', 'QUOTED', 'no remarks', NULL),
(64, 'FG60E 8X5 3 YEAR', 'FGT60ETK18003786', '365', 'crm_fortinet', '0', '2021-10-26', 'GANGANAGAR COMMODITY', 'None', '', '', 'None', '', '', 'none', 'SRI GANGANAGAR', 'rajasthan', '44000', '69000', 'GANGANAGAR COMMODITY', 'QUOTED', 'no remarks', NULL),
(65, 'FG60E Three Year 8X5', 'FGT60ETK18003786', '365', 'crm_fortinet', '0', '2021-10-26', '', 'None', '', '', 'None', '', '', 'none', 'Sri Ganganagar', 'rajasthan', '', '', 'Binary Infosolutions Private Limited', 'QUOTED', 'no remarks', NULL),
(66, 'FG100 8X5 3 YEAR RENEWAL', 'FG100D3G15806984', '365', 'crm_fortinet', '0', '2021-10-27', 'ALLEN CAREER INSTITUTE,KOTA', 'None', '', '', 'None', '', '', 'none', 'KOTA', 'rajasthan', '93852', '81032', 'ALLEN CAREER INSTITUTE', 'QUOTED', 'no remarks', NULL),
(67, 'FG50E 8X5 3 YEAR', 'FGT50E5618024461', '365', 'crm_fortinet', '0', '2021-10-30', '', 'None', '', '', 'None', '', '', 'none', 'Lucknow', 'rajasthan', '40000', '49000', 'Takyon Networks Pvt Ltd', 'QUOTED', 'no remarks', NULL),
(68, 'FG30E 24X7 3 YEAR', 'FGT30E5618039550', '365', 'crm_fortinet', '0', '2021-10-31', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '27000', 'BB PROFESSIONAL', 'QUOTED', 'no remarks', NULL),
(69, 'FG30E 24X7 3 YEAR', 'FGT30E5618040061', '365', 'crm_fortinet', '0', '2021-11-01', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '28000', 'ANUP ENTERPRISES', 'QUOTED', 'no remarks', NULL),
(70, 'FG30E 24X7 3 YEAR', 'FGT30E5618040128', '365', 'crm_fortinet', '0', '2021-11-02', 'SK FINANCE', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '26000', 'Techno Expert', 'QUOTED', 'no remarks', NULL),
(71, 'FG-500E BDL Appliance 3 years 24x7', 'FG5H0E5818904655', '365', 'crm_fortinet', '0', '2021-11-04', 'SK FINANCE', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '719859', '820000', 'Techno Expert', 'QUOTED', 'no remarks', NULL),
(72, 'FG30E 24X7 3 YEAR', 'FGT30E5618039735', '365', 'crm_fortinet', '0', '2021-11-10', '', 'None', '', '', 'None', '', '', 'none', 'Lucknow', 'rajasthan', '', '29000', 'TRIX TECHNOLOGIES', 'QUOTED', 'no remarks', NULL),
(73, 'FG30E 24X7 3 YEAR', 'FGT30E5618041687', '365', 'crm_fortinet', '0', '2021-11-11', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '33500', 'TELSO NETWORK', 'QUOTED', 'no remarks', NULL),
(74, 'FG30E 24X7 3 YEAR', 'FGT30E5618039737', '365', 'crm_fortinet', '0', '2021-11-12', '', 'None', '', '', 'None', '', '', 'none', 'Lucknow', 'rajasthan', '', '33000', 'COMPUTER MANAGEMENT SERVICES', 'QUOTED', 'no remarks', NULL),
(75, 'FG30E 24X7 3 YEAR', 'FGT30E5618039548', '365', 'crm_fortinet', '0', '2021-11-13', 'WONDER HOME FINANCE LTD', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '30000', 'WONDER HOME FINANCE LTD', 'QUOTED', 'no remarks', NULL),
(76, 'FG30E 24X7 3 YEAR', 'FGT30E5618039891', '365', 'crm_fortinet', '0', '2021-11-23', 'SK FINANCE', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '26000', 'Techno Expert', 'QUOTED', 'no remarks', NULL),
(77, 'FG30E 24X7 3 YEAR', 'FGT30E5618040008', '365', 'crm_fortinet', '0', '2021-11-26', 'SK FINANCE', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '26000', 'Techno Expert', 'QUOTED', 'no remarks', NULL),
(78, 'FG30E 24X7 3 YEAR', 'FGT30E5618039644', '365', 'crm_fortinet', '0', '2021-11-26', '', 'None', '', '', 'None', '', '', 'none', 'KANPUR', 'rajasthan', '', '33000', 'ARYANS COMPUTER & PHERIPHERALS', 'QUOTED', 'no remarks', NULL),
(79, 'FG-500E BDL Appliance 3 years 24x7', 'FG5H0E5818904660', '365', 'crm_fortinet', '0', '2021-11-26', 'SK FINANCE', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '719859', '820000', 'Techno Expert', 'QUOTED', 'no remarks', NULL),
(80, 'FG80E 8X5 3 YEAR', 'FGT80ETK18005666', '365', 'crm_fortinet', '0', '2021-11-26', '', 'None', '', '', 'None', '', '', 'none', 'INDORE', 'rajasthan', '72270', '87500', 'JUNOSYS', 'QUOTED', 'no remarks', NULL),
(81, 'FG30E Three Year 24X7 Bundle Subscription Appliance', 'FGT30E5618039644', '365', 'crm_fortinet', '0', '2021-11-26', 'Aryan Computer & Peripherals(Kanpur)', 'None', '', '', 'None', '', '', 'none', 'kanpur', 'rajasthan', '', '', '', 'QUOTED', 'no remarks', NULL),
(82, 'FG80E ThreeYear 8x5', 'FGT80ETK18005666', '365', 'crm_fortinet', '0', '2021-11-26', '', 'None', '', '', 'None', '', '', 'none', 'Bhopal', 'rajasthan', '', '', 'JUNOSYS', 'QUOTED', 'no remarks', NULL),
(83, 'FG30E 24X7 3 YEAR', 'FGT30E5618039625', '365', 'crm_fortinet', '0', '2021-11-27', 'SK FINANCE', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '26000', 'Techno Expert', 'QUOTED', 'no remarks', NULL),
(84, 'FG50E ThreeYear 8x5', 'FGT50E5618024431', '365', 'crm_fortinet', '0', '2021-12-03', 'SNG Group', 'None', '', '1415157999', 'None', 'snggroup@outlook.com', 'First Floor, Business Park, Maharishi Circle,Subhash Marg, C-Scheme', 'none', 'Jaipur', 'rajasthan', '', '', 'Binary Infosolutions Pvt Ltd.', 'QUOTED', 'no remarks', NULL),
(85, 'FG50E Three Year 8x5 Bundle Subscription Appliance', 'FGT50E5618024431', '365', 'crm_fortinet', '0', '2021-12-03', 'SNG GROUP', 'None', '', '', 'None', '', '', 'none', 'Jaipur', 'rajasthan', '', '', 'Abstract Solution & Consultants', 'QUOTED', 'no remarks', NULL),
(86, 'FG30E 24X7 3 YEAR', 'FGT30E5618039621', '365', 'crm_fortinet', '0', '2021-12-07', 'SK FINANCE', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '26000', 'Techno Expert', 'QUOTED', 'no remarks', NULL),
(87, 'FG30E 24X7 3 YEAR', 'FGT30E5618039643', '365', 'crm_fortinet', '0', '2021-12-07', 'SK FINANCE', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '26000', 'Techno Expert', 'QUOTED', 'no remarks', NULL),
(88, 'FG30E 24X7 3 YEAR', 'FGT30E5618039909', '365', 'crm_fortinet', '0', '2021-12-07', 'SK FINANCE', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '26000', 'Techno Expert', 'QUOTED', 'no remarks', NULL),
(89, 'FG30E 24X7 3 YEAR', 'FGT30E5618040340', '365', 'crm_fortinet', '0', '2021-12-07', 'SK FINANCE', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '26000', 'Techno Expert', 'QUOTED', 'no remarks', NULL),
(90, 'FG30E 24X7 3 YEAR', 'FGT30E5618039655', '365', 'crm_fortinet', '0', '2021-12-09', 'SK FINANCE', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '26000', 'Techno Expert', 'QUOTED', 'no remarks', NULL),
(91, 'FG60E 3yr 8x5', 'FGT60ETK18003012', '365', 'crm_fortinet', '0', '2021-12-11', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '', 'ANJANI INFOTECH', 'QUOTED', 'no remarks', NULL),
(92, 'FG80E 8X5 3 YEAR', 'FGT80ETK18006001', '365', 'crm_fortinet', '0', '2021-12-13', '', 'None', '', '', 'None', '', '', 'none', 'INDORE', 'rajasthan', '72270', '92000', 'ADVANCE TECHNOLOGY COMPUTER', 'QUOTED', 'no remarks', NULL),
(93, 'FG80E 3yr 8x5', 'FGT80ETK18006001', '365', 'crm_fortinet', '0', '2021-12-13', '', 'None', '', '', 'None', '', '', 'none', 'Indore', 'rajasthan', '', '', 'Advance Technology computer', 'QUOTED', 'no remarks', NULL),
(94, 'FG60E 3yr 8x5', 'FGT60ETK18001513', '365', 'crm_fortinet', '0', '2021-12-16', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '', 'ANJANI INFOTECH', 'QUOTED', 'no remarks', NULL),
(95, 'FG30E 24X7 3 YEAR', 'FGT30E5618039761', '365', 'crm_fortinet', '0', '2021-12-17', 'WONDER HOME FINANCE LTD', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '30000', 'WONDER HOME FINANCE LTD', 'QUOTED', 'no remarks', NULL),
(96, 'FG50E ThreeYear 8x5', 'FGT50E5618024453', '365', 'crm_fortinet', '0', '2021-12-18', '', 'None', '', '', 'None', '', '', 'none', 'Jaipur', 'rajasthan', '', '', 'B.B.Professional Marketing P Ltd.', 'QUOTED', 'no remarks', NULL),
(97, 'FG 100E 8x5 for 3 Years', 'FG100ETK18002814', '365', 'crm_fortinet', '0', '2021-12-19', 'Mikuni India Pvt Ltd', 'None', '', '', 'None', '', '', 'none', 'Alwar', 'rajasthan', '', '', 'Rama Tec', 'QUOTED', 'no remarks', NULL),
(98, '30E 24x7 for 3 yrs', 'Fgt30e5618038737', '365', 'crm_fortinet', '0', '2021-12-19', 'Shree Balaji Multi Commodity Pvt Ltd.', 'None', '', '', 'None', '', '', 'none', 'Jaipur', 'rajasthan', '', '', 'Shree Balaji Multi Commodity Pvt Ltd.', 'QUOTED', 'no remarks', NULL),
(99, 'FG100D', 'FG100ETK18002814', '365', 'crm_fortinet', '0', '2021-12-19', 'Mikuni India Pvt Ltd', 'None', '', '01494-246870', 'None', 'sandeep_agarwal@mikuni.co.in', 'SP-2, 20&21A, New Industrial Complex', 'none', 'Neemrana', 'rajasthan', '', '', 'NTT Communications India Pvt. Ltd.', 'QUOTED', 'no remarks', NULL),
(100, 'FG60E 3yr 8x5', 'FGT60ETK18055322', '365', 'crm_fortinet', '0', '2021-12-24', '', 'None', '', '', 'None', '', '', 'none', 'Bhiwadi', 'rajasthan', '', '', 'Technowick', 'QUOTED', 'no remarks', NULL),
(101, 'FG60E ThreeYear 8x5', 'FGT60ETK18003344', '365', 'crm_fortinet', '0', '2021-12-28', 'Allen Career institute', 'None', '', '', 'None', '', '', 'none', 'Jaipur', 'rajasthan', '', '', 'Binary Infosolutions Private Limited', 'QUOTED', 'no remarks', NULL),
(102, 'FG30E', 'FGT30E5618040037', '365', 'crm_fortinet', '0', '2021-12-31', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '29500', 'RNS', 'QUOTED', 'no remarks', NULL),
(103, 'FG30E', 'FGT30E5618082725', '365', 'crm_fortinet', '0', '2022-10-03', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '30500', 'ICON INTEGRATED SERVICE', 'QUOTED', 'no remarks', NULL),
(104, 'FG30E', 'FGT30E5618082465', '365', 'crm_fortinet', '0', '2022-10-03', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '30500', 'ICON INTEGRATED SERVICE', 'QUOTED', 'no remarks', NULL),
(105, 'FG100E 24x7', 'FGT100ETK19005358', '365', 'crm_fortinet', '0', '2022-10-09', 'HRH Hotels Pvt ltd', 'None', '', '', 'None', '', '', 'none', 'UDAIPUR', 'rajasthan', '172573', '190000', 'ASSURE COMPUTER', 'QUOTED', 'no remarks', NULL),
(106, 'FG30E', 'FGT30E5618082687', '365', 'crm_fortinet', '0', '2022-10-17', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '25800', 'ANJANI INFOTECH', 'QUOTED', 'no remarks', NULL),
(107, 'FG30E', 'FGT30E5618078716', '365', 'crm_fortinet', '0', '2022-10-31', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '30500', 'ICON INTEGRATED SERVICE', 'QUOTED', 'no remarks', NULL),
(108, 'FG30E', 'FGT30E5618082770', '365', 'crm_fortinet', '0', '2022-11-02', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '27500', 'HRM', 'QUOTED', 'no remarks', NULL),
(109, 'FG30E', 'FGT30E5618082608', '365', 'crm_fortinet', '0', '2022-11-17', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '30500', 'ICON INTEGRATED SERVICE', 'QUOTED', 'no remarks', NULL),
(110, 'FG30E', 'FGT30E5618083160', '365', 'crm_fortinet', '0', '2022-11-18', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '28910', 'SKYNET', 'QUOTED', 'no remarks', NULL),
(111, 'FGT50E', 'FGT50E3U16022411', '365', 'crm_fortinet', '0', '2022-11-25', 'Akhil modi', 'None', 'Akhil Modi', '9314455231', 'None', 'amodi@akhilmodi.com', '51-52, Vijay Nagar Kartarpura Phatak', 'none', 'Jaipur', 'rajasthan', '', '', 'BB PROFESSIONALS MKT. (P) LTD.', 'QUOTED', 'no remarks', NULL),
(112, 'FG30E', 'FGT30E5618082668', '365', 'crm_fortinet', '0', '2022-11-26', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '30000', 'NETINFO SYSTEM', 'QUOTED', 'no remarks', NULL),
(113, 'FG30E', 'FGT30E5618082631', '365', 'crm_fortinet', '0', '2022-11-27', '', 'None', '', '', 'None', '', '', 'none', 'INDORE', 'rajasthan', '', '32500', 'INFRA COMPUTERS', 'QUOTED', 'no remarks', NULL),
(114, 'FG30E', 'FGT30E5618083132', '365', 'crm_fortinet', '0', '2022-12-04', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '27500', 'HRM', 'QUOTED', 'no remarks', NULL),
(115, 'FG30E', 'FGT30E5618082808', '365', 'crm_fortinet', '0', '2022-12-08', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '30500', 'ICON INTEGRATED SERVICE', 'QUOTED', 'no remarks', NULL),
(116, 'FG30E', 'FGT30E5618083112', '365', 'crm_fortinet', '0', '2022-12-15', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '25800', 'ANJANI INFOTECH', 'QUOTED', 'no remarks', NULL),
(117, 'FG30E', 'FGT30E5618082486', '365', 'crm_fortinet', '0', '2022-12-15', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '30500', 'ICON INTEGRATED SERVICE', 'QUOTED', 'no remarks', NULL),
(118, 'FG30E', 'FGT30E5618082706', '365', 'crm_fortinet', '0', '2022-12-15', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '27500', 'HRM', 'QUOTED', 'no remarks', NULL),
(119, 'FG30E', 'FGT30E5618083285', '365', 'crm_fortinet', '0', '2022-12-16', '', 'None', '', '', 'None', '', '', 'none', 'BIKANER', 'rajasthan', '', '31000', 'LIFE LINE COMPUTERS', 'QUOTED', 'no remarks', NULL),
(120, 'FG30E', 'FGT30E5618083009', '365', 'crm_fortinet', '0', '2022-12-20', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '', '27500', 'SYSTEMATIC SOLUTION', 'QUOTED', 'no remarks', NULL),
(121, 'FG30E', 'FGT30E5618083010', '365', 'crm_fortinet', '0', '2022-12-31', '', 'None', '', '', 'None', '', '', 'none', 'UDAIPUR', 'rajasthan', '', '25500', 'HINDUSTAN COMPUTER', 'QUOTED', 'no remarks', NULL),
(122, 'FG60E 8X5 3 YEAR', 'FGT60E4216096257', '365', 'crm_fortinet', '0', '0000-11-29', '', 'None', '', '', 'None', '', '', 'none', 'JAIPUR', 'rajasthan', '46035', '57000', 'CYBER SHOPPE', 'QUOTED', 'no remarks', NULL),
(123, 'FG30E 8x5 3 YEAR', 'FGT30E3017042678', '365', 'crm_fortinet', '0', '0000-11-29', '', 'None', '', '', 'None', '', '', 'none', 'UDAIPUR', 'rajasthan', '21926', '30000', 'ASSURE COMPUTER', 'QUOTED', 'df', NULL),
(124, 'FG50E ThreeYear 8x5', 'FGT50E5618023935', '365', 'crm_fortinet', '0', '0000-00-00', '', 'None', '', '', 'None', '', '', 'none', 'Jaipur', 'rajasthan', '', '', 'TEAM COMPUTERS', 'QUOTED', 'no remarks', NULL),
(125, '30E 24x7 for 3 yrs', 'Fgt30e5618040041', '1095', 'crm_fortinet', '0', '0002-11-29', '', 'None', '', '', 'None', '', '', 'none', 'Jaipur', 'rajasthan', '', '', 'Cyber Shopee', 'QUOTED', 'no remarks', NULL),
(126, 'FG30E', 'FG30E5618040093', '365', 'crm_fortinet', '0', '0000-00-00', '', 'None', '', '', 'None', '', '', 'none', 'Jaipur', 'rajasthan', '', '27500', 'CYBER SHOPEE', 'QUOTED', 'no remarks', NULL),
(127, 'FG30E', 'FGT30E5618083154', '365', 'crm_fortinet', '0', '0000-11-29', '', 'None', '', '', 'None', '', '', 'none', 'Jaipur', 'rajasthan', '', '29000', 'Icon Integrated Service', 'QUOTED', 'no remarks', NULL),
(128, 'FG30E', 'FGT30E5618083538', '365', 'crm_fortinet', '0', '2021-11-19', '', 'None', '', '', 'None', '', '', 'none', 'Bhilwara', 'rajasthan', '', '32000', 'Jupitor Computer', 'QUOTED', 'no remarks', '2020-11-18 20:22:48.000000'),
(129, 'FG200E', 'FG200E4Q17907732', '365', 'crm_fortinet', '0', '2024-11-26', 'Oriental Power Cables Ltd (Kota)', 'None', 'Raj Kumar Thakur', '9928038880', 'None', 'rktkota68@gmail.com', 'P.O Cable Nagar ,NH-12,Kota -325003', 'none', 'Kota', 'rajasthan', '', '360000', 'Oriental Power Cables Ltd (Kota)', 'QUOTED', 'no remarks', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
