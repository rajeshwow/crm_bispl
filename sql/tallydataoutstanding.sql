-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 03, 2021 at 09:26 AM
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
-- Table structure for table `tallydataoutstanding`
--

DROP TABLE IF EXISTS `tallydataoutstanding`;
CREATE TABLE IF NOT EXISTS `tallydataoutstanding` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `party` varchar(100) NOT NULL,
  `pendingamount` varchar(100) NOT NULL,
  `dueon` varchar(100) NOT NULL,
  `overdueday` varchar(100) NOT NULL,
  KEY `mn` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=321 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tallydataoutstanding`
--

INSERT INTO `tallydataoutstanding` (`id`, `party`, `pendingamount`, `dueon`, `overdueday`) VALUES
(241, 'Hotel Galaxy Grand (Mr. Mohd. Rizwan)', '-10185.00', 'Array', '846'),
(242, 'Ezee Solutions (Kanpur)', '-20517.00', 'Array', '655'),
(243, 'Krati Infocom', '-2200.00', 'Array', '700'),
(244, 'Hexa computronics', '-11564.00', 'Array', '589'),
(245, 'M/S Vision Enterprises', '-2136.00', 'Array', '577'),
(246, 'M/s Ambey Enterprises', '-24500.00', 'Array', '498'),
(247, 'Zeal Computer Services', '-500.00', 'Array', '493'),
(248, 'Spin World', '-6098.87', 'Array', '437'),
(249, 'Shyam Infotech', '500.00', 'Array', '424'),
(250, 'Digital Video Solution', '-30800.00', 'Array', '414'),
(251, 'Digital Video Solution', '-3040.00', 'Array', '414'),
(252, 'System Gear', '-8625.00', 'Array', '406'),
(253, 'Digital Video Solution', '-10015.00', 'Array', '401'),
(254, 'Kaypee Systems (Allahabad)', '-6800.00', 'Array', '388'),
(255, 'Maharishi University', '-6500.00', 'Array', '393'),
(256, 'Laptop World', '-14300.00', 'Array', '370'),
(257, 'I.K Systems', '-34873.00', 'Array', '381'),
(258, 'I-Plexus', '-14025.00', 'Array', '351'),
(259, 'Infinity System (Moradabad)', '150.00', '2-May-2019', '336'),
(260, 'I.K Systems', '-67354.00', 'Array', '355'),
(261, 'I.K Systems', '-2500.00', 'Array', '355'),
(262, 'Zeal infosystem', '150.00', 'Array', '332'),
(263, 'Anna Computer (Jhansi)', '-812.00', 'Array', '330'),
(264, 'M/s Ambey Enterprises', '-19680.00', '31-May-2019', '307'),
(265, 'GS Networks (Kanpur)', '-8750.00', 'Array', '273'),
(266, 'Natraj Infotech', '-11130.00', 'Array', '273'),
(267, 'Ansh Corporation', '-45427.00', 'Array', '266'),
(268, 'Vishwa Info Solutions', '825.00', 'Array', '272'),
(269, 'MiniPlanet Global Educare Pvt. Ltd.', '-319606.00', 'Array', '291'),
(270, 'F1e Technologies', '-13888.00', 'Array', '255'),
(271, 'Anna Computer (Jhansi)', '-2360.00', 'Array', '267'),
(272, 'E-MACHINE', '4024.00', 'Array', '258'),
(273, 'E-MACHINE', '-75638.00', 'Array', '253'),
(274, 'E-MACHINE', '-56700.00', 'Array', '253'),
(275, 'Computer Rose', '8454.00', '31-Jul-2019', '246'),
(276, 'Impulse Microelectronics Peripherals Systems', '354.14', 'Array', '248'),
(277, 'HRM Technologies Pvt Ltd (JPR)', '-63720.00', '31-Jul-2019', '246'),
(278, 'Systems & Technology (Kanpur)', '-8437.00', '31-Jul-2019', '246'),
(279, 'E-MACHINE', '-18762.00', 'Array', '241'),
(280, 'Balaji computer (Bhopal)', '-324.00', 'Array', '263'),
(281, 'Zoel Infotech', '149.00', 'Array', '237'),
(282, 'ARP Solution', '-6.00', 'Array', '254'),
(283, 'TRIX TECHNOLOGIES', '-8791.00', 'Array', '251'),
(284, 'S.K Suppliers 17-18', '-118.00', 'Array', '225'),
(285, 'Info Care System', '-7434.00', 'Array', '223'),
(286, 'Adept IT Solution', '-12360.00', 'Array', '218'),
(287, 'Saavy Computex Solution', '-19942.00', 'Array', '237'),
(288, 'Adept IT Solution', '-2065.00', 'Array', '216'),
(289, 'M/S SS Services', '-26078.00', 'Array', '216'),
(290, 'CSPL COMPUTERS PVT. LTD.', '-5192.00', 'Array', '235'),
(291, 'Brillbean Ventures Pvt Ltd', '-23600.00', 'Array', '211'),
(292, 'Adept IT Solution', '-14720.00', 'Array', '205'),
(293, 'Adept IT Solution', '-64163.00', 'Array', '205'),
(294, 'DIGITEACH SYSTEMS AND SERVICES', '-20975.00', 'Array', '205'),
(295, 'Brillbean Ventures Pvt Ltd', '-101480.00', 'Array', '204'),
(296, 'COMPUTRONIX', '-10974.00', 'Array', '201'),
(297, 'CSPL COMPUTERS PVT. LTD.', '-20004.00', 'Array', '219'),
(298, 'Adept IT Solution', '-3274.50', 'Array', '198'),
(299, 'Kamla G9 enterprises', '-6150.00', 'Array', '198'),
(300, 'TRIX TECHNOLOGIES', '-4012.00', 'Array', '219'),
(301, 'Sikka Broadband Pvt Ltd (Lucknow)', '-3375.00', 'Array', '196'),
(302, 'Sikka Broadband Pvt Ltd (Lucknow)', '-6551.00', 'Array', '190'),
(303, 'Global Tech Engineers And Consultants Lucknow', '-1976.00', 'Array', '209'),
(304, 'S.K Suppliers 17-18', '-26124.00', 'Array', '189'),
(305, 'Jalan distributor', '-21948.00', 'Array', '187'),
(306, 'World Line Systems', '-7316.00', 'Array', '196'),
(307, 'WELL KNOWN COMPUTERS PRIVATE LIMITED', '10375.00', '2-Oct-2019', '183'),
(308, 'Adept IT Solution', '-47288.00', 'Array', '182'),
(309, 'Om Network Solutions', '100.00', 'Array', '182'),
(310, 'Vama Multi Trade', '-10152.00', 'Array', '201'),
(311, 'Brillbean Ventures Pvt Ltd', '-61124.00', 'Array', '180'),
(312, 'World Line Systems', '-9201.00', 'Array', '189'),
(313, 'Vama Multi Trade', '-21568.00', 'Array', '197'),
(314, 'WELL KNOWN COMPUTERS PRIVATE LIMITED', '-130833.00', 'Array', '176'),
(315, 'S.K Suppliers 17-18', '-2885.00', 'Array', '175'),
(316, 'Adept IT Solution', '-56522.00', 'Array', '174'),
(317, 'Ezee Solutions (Kanpur)', '-70924.00', 'Array', '160'),
(318, 'S.K Suppliers 17-18', '-5640.00', 'Array', '174'),
(319, 'Zeal infosystem', '-10095.00', 'Array', '174'),
(320, 'ACP IT Solution (P) Ltd.', '-28320.00', 'Array', 'Array');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
