-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2021 at 10:25 PM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `i7232841_ma1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tallydatainv`
--

CREATE TABLE `tallydatainv` (
  `id` int(100) NOT NULL,
  `perticular` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tallydatainv`
--

INSERT INTO `tallydatainv` (`id`, `perticular`, `qty`, `rate`, `amount`) VALUES
(1, '12/U 400RACK (COMPUTER RACK)', '15 No', '2324.44', '-34866.59'),
(2, '12U/500 RACK (COMPUTER RACK )', '5 No', '2834.13', '-14170.64'),
(3, '12U/600 RACK (COMPUTER RACK )', '1 No', '3556.11', '-3556.11'),
(4, '15U/400 RACK (FOR COMPUTER RACK)', '4 No', '2528.50', '-10114.00'),
(5, '15U/500 RACK (FOR COMPUTER RACK)', '5 No', '2840.69', '-14203.44'),
(6, '15U/600 RACK (FOR COMPUTER RACK)', '3 No', '3371.00', '-10113.00'),
(7, '22U RACK FRAME /600X1000/STEEL/NRS1/CASTER TYPE 2', '1 No', '9327.24', '-9327.24'),
(8, '22U RACK FRAME /600X600/STEEL/FM/CASTERS TYPE 1', '2 No', '7493.29', '-14986.57'),
(9, '22U RACK FRAME /600X800/STEEL/NRS1/CASTERS TYPE 2', '2 No', '9916.88', '-19833.76'),
(10, '2.4GHZ 13 DBI MIMO OMNI ANTENNA', '1 No', '3000.00', '-3000.00'),
(11, '24 Volt POE Adaptor', '15 No', '500.00', '-7500.00'),
(12, '27U RACK FRAME /600X1000/STEEL/NRS1 CASTER TYPE 2', '1 No', '10339.67', '-10339.67'),
(13, '27U RACK FRAME /600X600/STEEL /FM /CASTERS TYPE 1', '1 No', '8436.61', '-8436.61'),
(14, '27U RACK FRAME /600X800/STEEL/NRS1/CASTERS TYPE 2', '1 No', '8896.92', '-8896.92'),
(15, '32U RACK FRAME /600X1000/STEEL/CASTERS TYPE 2', '2 No', '12438.08', '-24876.15'),
(16, '32U RACK FRAME /600X650/STEEL/NRS1/CASTER TYPE 2', '1 No', '9584.07', '-9584.07'),
(17, '32U RACK FRAME /600X800/STEEL/NRS1/CASTER TYPE 2', '1 No', '11012.38', '-11012.38'),
(18, '42U 600X1000 TOP COVER', '1 No', '2500.00', '-2500.00'),
(19, '42U RACK FRAME /600X1000/STEEL/NRS1 CASTERS TYPE 2', '3 No', '14140.44', '-42421.33'),
(20, '42U RACK FRAME /600X650/STEEL/NRS1/CASTERS TYPE 2', '1 No', '10703.82', '-10703.82'),
(21, '42U RACK FRAME /600X800/STEEL/NRS1 /CASTERS TYPE 2', '2 No', '9250.06', '-18500.12'),
(22, '42U RACK FRAME /800X1000/STEEL /NRS1/CASTERS TYPE 2', '2 No', '15984.08', '-31968.15'),
(23, '48 Volt POE Injector 10/100', '19 No', '502.51', '-9547.63'),
(24, '4IP NET HSG 326', '1 No', '12000.00', '-12000.00'),
(25, '4U/400 RACK (COMPUTER RACK)', '5 No', '1184.47', '-5922.36'),
(26, '4U/400 Rack/WMOD/Metal Door/Outdoor/IP55', '1 No', '4565.00', '-4565.00'),
(27, '6U/400 RACK (COMPUTER RACK)', '15 No', '1492.17', '-22382.51'),
(28, '6U/500 RACK (COMPUTER RACK)', '4 No', '1808.65', '-7234.60'),
(29, '9U/400 RACK (COMPUTER RACK )', '11 No', '1799.56', '-19795.15'),
(30, '9U/500 RACK (COMPUTER RACK)', '3 No', '2023.91', '-6071.72'),
(31, '9U/600 RACK (COMPUTER RACK )', '2 No', '2913.14', '-5826.28'),
(32, 'AC600 High Wifi Outdoor Ap', '4 No', '3000.00', '-12000.00'),
(33, 'AIR600 CEILIING MOUNT ACCESS POINT', '2 No', '2975.00', '-5950.00'),
(34, 'AIR BGN-1122 (300 MBPS ROUTER)', '10 No', '580.76', '-5807.59'),
(35, 'AIR BRIDGE 5.8 GHZ', '1 No', '1411.11', '-1411.11'),
(36, 'AIR CONNECT2', '4 No', '2050.00', '-8200.00'),
(37, 'AIRDRONA 2321 2.4 12DBI CPE', '8 No', '2176.47', '-17411.76'),
(38, 'AIR LAKSHYA 2.4 GHZ 300 MBPS AP/CLIENT', '1 No', '2600.00', '-2600.00'),
(39, 'AIR M1200 MBPS CEILLING MOUNT', '3 No', '6000.00', '-18000.00'),
(40, 'AIR-M600 MBPS CEILLING MOUNT AP', '8 No', '3150.00', '-25200.00'),
(41, 'AIR M-750 DUAL BAND ACCESS POINT', '5 No', '3276.63', '-16383.13'),
(42, 'Air MO-1200 MBPS Outdoor AP', '6 No', '7236.75', '-43420.51'),
(43, 'AIR MO-750 MBPS OUTDOOR AP', '2 No', '4800.00', '-9600.00'),
(44, 'Airpro Cat 6 UTP 305 MTR Cable', '7 No', '3600.00', '-25200.00'),
(45, 'Air Setu 2.4 G', '3 No', '4587.50', '-13762.50'),
(46, 'AIR WAP1100-300MBPS (RJ45+RJ11)', '5 No', '1850.00', '-9250.00'),
(47, 'AP-1208-2GE', '20 No', '3000.00', '-60000.00'),
(48, 'AP 1208 8+2 UPLINK SWITCH', '11 No', '2650.00', '-29150.00'),
(49, 'AP1216 16PORT POE SWITCH', '15 No', '6175.56', '-92633.35'),
(50, 'AP1224 24 PORT POE UNMANAGED SWITCH', '6 No', '9925.65', '-59553.91'),
(51, 'AP-16PORT REVERSE POE SWITCH', '5 No', '3500.00', '-17500.00'),
(52, 'AP 24 PORT LOADED PATCH PANEL', '2 No', '1300.00', '-2600.00'),
(53, 'AP 2 PORT SYNWALL PLATE', '100 No', '27.00', '-2700.00'),
(54, 'AP CAT 6 10\' PATCH CORD', '50 No', '40.00', '-2000.00'),
(55, 'AP CAT 6 1MTR  PATCH CORD', '50 No', '45.00', '-2250.00'),
(56, 'AP DATAGATE I/O JACK SHUTTERED', '100 No', '50.00', '-5000.00'),
(57, 'AP DATAGATE I/O JACK UNSHUTTERED', '100 No', '40.00', '-4000.00'),
(58, 'AP-ES106P (AP 1205) Switch', '21 No', '1424.36', '-29911.54'),
(59, 'AP -ES 1424', '1 No', '11800.00', '-11800.00'),
(60, 'AP-ESG105P', '2 No', '3000.00', '-6000.00'),
(61, 'AP-ESG108P (AP1208)Camera POE Switch', '56 No', '2391.17', '-133905.67'),
(62, 'AP ESG 1910P-2GE', '18 No', '4434.03', '-79812.59'),
(63, 'AP-GS1008 PORT POE SWITCH', '22 No', '941.66', '-20716.52'),
(64, 'AP-GS-1024', '2 No', '3250.00', '-6500.00'),
(65, 'AP-GS-1905', '2 No', '2675.46', '-5350.91'),
(66, 'AP-GS-1910P 8Port  Fiber Switch', '10 No', '5129.03', '-51290.32'),
(67, 'Ap GS1926 24G+2SFP Fibre Ports Switch with 24 Poe', '3 No', '13550.00', '-40650.00'),
(68, 'AP -POE 1000G ADAPTOR', '15 No', '620.00', '-9300.00'),
(69, 'ASUSTER 4 BAY NAS AS1004T', '2 No', '15782.00', '-31564.00'),
(70, 'ATVI 900 Thin Client', '3 No', '2041.64', '-6124.91'),
(71, 'Cantilaver Shelf Tray (N)', '13 No', '138.91', '-1805.83'),
(72, 'CANTILEVER SHELF /TYPE2/1U', '5 No', '224.87', '-1124.35'),
(73, 'Data Projector MS506P SVGA Solely Usable (BenQ)', '1 No', '17847.94', '-17847.94'),
(74, 'Ekin 200', '9 No', '2124.88', '-19123.90'),
(75, 'EKIN 300E (2GB/32GB) WITH WINDOWS', '2 No', '9500.00', '-19000.00'),
(76, 'EKIN/300WE/A', '1 No', '6101.69', '-6101.69'),
(77, 'EKIN-IWB7900/EKIN INTERACTIVE WHITE BOARD', '1 No', '17357.93', '-17357.93'),
(78, 'ES1108 8PORT 10/100 ETHERNET SWITCH', '31 No', '396.81', '-12301.21'),
(79, 'ES1116 16 PORT ETHERNET SWITCH', '2 No', '1100.00', '-2200.00'),
(80, 'ES1404 4+1 PORT 24V POE SWITCH', '7 No', '1790.00', '-12530.00'),
(81, 'ES1408 24V POE SWICTH', '3 No', '3619.51', '-10858.52'),
(82, 'FG100E Three  Year 8x5 Bundle Subscription Applianc', '4 No', '63000.00', '-252000.00'),
(83, 'FG100E Three  Year 8x5 LICENSE', '4 No', '103000.00', '-412000.00'),
(84, 'FG30E Three  Year 8x5 Bundle Subscription Appliance', '10 No', '9500.00', '-95000.00'),
(85, 'FG30E Three  Year 8x5 LICENSE', '10 No', '13500.00', '-135000.00'),
(86, 'FG50E Three  Year 8x5 Bundle Subscription Appliance', '4 No', '19000.00', '-76000.00'),
(87, 'FG50E Three  Year 8x5  LICENSE', '4 No', '27000.00', '-108000.00'),
(88, 'FG60E Three  Year 8x5 Bundle Subscription Appliance', '3 No', '21000.00', '-63000.00'),
(89, 'FG60E Three  Year 8x5 LICENSE', '2 No', '32000.00', '-64000.00'),
(90, 'Filter Unit/Double Louvered Module /IP55', '1 No', '990.00', '-990.00'),
(91, 'GLASS DOOR/600/32U/NRS1 (COMPUTER RACK )', '2 No', '861.88', '-1723.75'),
(92, 'GLASS DOOR /600/42U/NRS1 (COMPUTER RACK )', '1 No', '1962.38', '-1962.38'),
(93, 'Horz.Cable Organiser/1I/Channel on Front', '46 No', '234.67', '-10794.90'),
(94, 'Horz.Cable Organiser /1U/loop', '49 No', '128.26', '-6284.98'),
(95, 'HORZ. CABLE ORGANISER/2U/LOOP', '5 No', '162.50', '-812.50'),
(96, 'ITE NETWORK CIRCULATION MODULE 90CFM', '22 No', '393.58', '-8658.75'),
(97, 'ITE NETWORK CIRCULATION MODULE 90 CFM N', '11 No', '235.00', '-2585.00'),
(98, 'ITE/SERVER  RACJ AIR CIRCULATION MODULE /TOWER /180', '8 No', '971.92', '-7775.37'),
(99, 'ITE/SERVER RACK AIR CIRCULATION /TOWER /360 CFM', '13 No', '1877.39', '-24406.06'),
(100, 'Keyboard Shelf/19\'/Rty/800D (For Computer Rack)', '2 No', '800.00', '-1600.00'),
(101, 'LEVELLERS (COMPUTER RACK)', '5 No', '191.75', '-958.75'),
(102, 'MEDIA CONVERTOR SF 20KM 1310 GIGA', '10 No', '1400.00', '-14000.00'),
(103, 'MEDIA CONVERTOR SF-20KM 1550 GIGA', '10 No', '1400.00', '-14000.00'),
(104, 'Media Convertor SMDF 20 KM 100FX', '5 No', '750.00', '-3750.00'),
(105, 'Media Convertor SMDF Giga 20KM', '1 No', '1383.34', '-1383.34'),
(106, 'Molex Cat 6 Datagate Panel 24 Port (Loaded)  PID-00141\r\n', '1 No', '2500.00', '-2500.00'),
(107, 'Mounting Hardware -CR (PACK OF 10) (N)', '-65 No', '33.18', '2156.56'),
(108, 'Mounting Hardware -CR (PACK OF 20)', '-13 No', '59.74', '776.68'),
(109, 'OLT SFP-PX20', '2 No', '4500.00', '-9000.00'),
(110, 'OPTICAL TOUCH BOARD 82 DIAGONAL EKIN IWB 8000', '3 No', '16000.00', '-48000.00'),
(111, 'PIGTAIL CABLE', '2 No', '200.00', '-400.00'),
(112, 'POWER CORD 15 MTR', '5 No', '280.00', '-1400.00'),
(113, 'PROJECTOR MOUNT 2\'FT MS', '9 No', '365.00', '-3285.00'),
(114, 'Projector Mount 3\'Feet MS', '23 No', '425.00', '-9775.00'),
(115, 'PROJECTOR WALL MOUNT 4FT\' MST', '28 No', '1096.49', '-30701.75'),
(116, 'P.S Elegent 8x10 American MW Insta Lock', '3 No', '4600.00', '-13800.00'),
(117, 'P.S Lite 4X6 MW Insta Lock', '9 No', '1128.41', '-10155.69'),
(118, 'P.S Lite 4x6 MW Tripod', '2 No', '1706.67', '-3413.33'),
(119, 'P.S Lite 5x7 MW Insta Lock', '6 No', '1400.00', '-8400.00'),
(120, 'P.S Lite 5x7 MW Tripod', '2 No', '2175.00', '-4350.00'),
(121, 'P.S Lite 6x8 MW Insta Lock', '8 No', '2158.21', '-17265.64'),
(122, 'P.S Lite 6x8 MW Tripod', '2 No', '2666.67', '-5333.33'),
(123, 'P.S PRIME 4X6 AMERCAN MW MOTORISED', '3 No', '3200.00', '-9600.00'),
(124, 'P.S Prime 5x7 American MW Motorised', '3 No', '3500.00', '-10500.00'),
(125, 'P.S Prime 6X8 American MW Motorised', '1 No', '4350.00', '-4350.00'),
(126, 'P.S Prime 8 X 10 AMERICAN MW Motorised', '3 No', '6920.00', '-20760.00'),
(127, 'RACK GROUND BUS BAR/VERTICAL/19X3/1800', '2 No', '1670.50', '-3341.00'),
(128, 'S100/VCLOUD THIN CLIENT', '15 No', '5067.19', '-76007.81'),
(129, 'Sdfsdf', '10 No', '50.00', '-500.00'),
(130, 'SERVER /IT RACK MOUNT PDU 10 XINDIAN ROUND PIN 5A', '10 No', '927.11', '-9271.14'),
(131, 'SERVER/IT RACK PDU 12X INDIAN ROUND PIN 5/15A', '3 No', '1796.56', '-5389.67'),
(132, 'SERVER/IT RACK PDU 6X INDIAN ROUND PIN 5/15A', '12 No', '737.00', '-8844.03'),
(133, 'SERVER/IT RACK PDU 6X INDIAN ROUND PIN 5A', '20 No', '420.36', '-8407.23'),
(134, 'SERVER/IT RACK PDU 6X INDIAN ROUND PIN 5A (N)', '1 No', '250.00', '-250.00'),
(135, 'Shelf/1000 (For Computer Rack)', '10 No', '698.92', '-6989.15'),
(136, 'Shelf/600 (For Computer Rack)', '9 No', '378.55', '-3406.95'),
(137, 'Shelf/800 (For Computer Rack)', '8 No', '496.82', '-3974.54'),
(138, 'Shelf/key Board/19\'Rty /1000', '4 No', '659.91', '-2639.65'),
(139, 'Shelf/key Board/19\'Rty /650', '2 No', '625.00', '-1250.00'),
(140, 'Sliding Shelf/10/1000', '4 No', '975.00', '-3900.00'),
(141, 'TL -POE 150 S ADAPTOR', '2 No', '950.00', '-1900.00'),
(142, 'UNIVERSAL RACK GROUND KIT TYPE -1', '2 No', '393.24', '-786.48'),
(143, 'USB Extender 10 MTR  Male to Female Cable', '1 No', '1800.00', '-1800.00'),
(144, 'Vertical Cable Organiser /30U/Loop/Black', '10 No', '212.51', '-2125.07'),
(145, 'Verticle Cable Organiser/38U/Loop', '9 No', '234.00', '-2106.00'),
(146, 'VGA CABLE 10 MTR', '1 No', '790.00', '-790.00'),
(147, 'VGA CABLE 15 MTR', '6 No', '900.00', '-5400.00'),
(148, 'XDS100 MBPS CEILLING MOUNT AP 24 VOLT', '-1 No', 'Array', 'Array'),
(149, 'XDS 300 MBPS Ceilling Mount', '8 No', '1413.46', '-11307.69'),
(150, 'XDS9510  300 Mbps Celling Mount', '2 No', '1918.18', '-3836.36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tallydatainv`
--
ALTER TABLE `tallydatainv`
  ADD KEY `m` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tallydatainv`
--
ALTER TABLE `tallydatainv`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
