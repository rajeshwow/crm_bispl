-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 12, 2020 at 11:41 AM
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
-- Table structure for table `crm_serialno_dump`
--

DROP TABLE IF EXISTS `crm_serialno_dump`;
CREATE TABLE IF NOT EXISTS `crm_serialno_dump` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `old_serial` varchar(100) DEFAULT NULL,
  `new_serial` varchar(100) DEFAULT NULL,
  `timestampp` timestamp(6) NULL DEFAULT current_timestamp(6),
  KEY `i` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_serialno_dump`
--

INSERT INTO `crm_serialno_dump` (`id`, `old_serial`, `new_serial`, `timestampp`) VALUES
(1, 'sdf', 'sdf', '2020-11-07 09:31:26.614583'),
(2, 'epsnew123', 'sdlkfjsdljf', '2020-11-07 09:32:28.050159'),
(3, 'sdlkfjsdljf', 'eps123', '2020-11-07 09:33:48.917618'),
(4, 'eps123', 'newserial', '2020-11-07 09:34:55.410416'),
(5, 'newserial', 'xxxxxxx', '2020-11-07 09:38:56.912091'),
(6, '2F5F61561015B7E100A31', 'new', '2020-11-08 08:04:06.473698'),
(7, '2F5F61561015B7E100A35', 'new upgrade', '2020-11-08 09:16:31.721239'),
(8, '2F5F61561015B7E100A27', 'sdf', '2020-11-08 09:20:34.307375'),
(9, 'sdf', 'sdfsdfsdfsdf', '2020-11-08 09:21:29.217017'),
(10, '2F5F61561015B7E100A32', 'A32', '2020-11-09 10:51:00.836924'),
(11, '2F5F61561015B7E100A22', 'a22', '2020-11-09 10:51:51.551870'),
(12, 'A32', 'newa32', '2020-11-09 10:54:45.151645'),
(13, 'a22', 'newa22', '2020-11-09 10:59:26.117450'),
(14, 'newa22', 'new new new', '2020-11-09 11:00:37.392642'),
(15, 'new new new', 'rajesh', '2020-11-09 11:01:33.968168'),
(16, '2F5F61561015B7E100A34', 'newwwwwwww', '2020-11-09 12:13:27.122425'),
(17, '2F5F61561015B7E100A19', '', '2020-11-10 10:29:52.125764'),
(18, '2F5F61561015B7E100A19', '', '2020-11-10 10:29:52.118906'),
(19, '2F5F61561015B7E100A16', '', '2020-11-10 10:34:05.717177'),
(20, '2F5F61561015B7E100A9', 'a9 new', '2020-11-10 11:08:48.060707'),
(21, '2F5F61561015B7E100A28', 'a28', '2020-11-10 11:32:31.003378'),
(22, 'rajesh', 'sdfaaaaaaaaaaaaaaaa', '2020-11-10 11:37:03.941784'),
(23, '2F5F61561015B7E100A23', 'a23', '2020-11-10 11:39:44.734822'),
(24, '2F5F61561015B7E100A26', 'A26', '2020-11-10 11:42:29.006360'),
(25, '2F5F61561015B7E100A33', 'SDF', '2020-11-10 11:45:45.117799'),
(26, 'newwwwwwww', 'BHAI BHAI ', '2020-11-10 11:46:34.060677'),
(27, 'new upgrade', 'aa ra hu me', '2020-11-10 11:49:12.888778'),
(28, 'sdfsdfsdfsdf', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkk', '2020-11-10 11:56:56.386498'),
(29, '2F5F61561015B7E100A30', 'a30', '2020-11-10 11:58:43.807367'),
(30, 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'kkkkk', '2020-11-10 12:00:56.107769'),
(31, 'dsfsdfsdfsdf', 'llllllllllllllllllllllllllllllll', '2020-11-10 12:01:22.713310'),
(32, 'llllllllllllllllllllllllllllllll', 'mmmmmmmmmmmmmmmmmm', '2020-11-10 12:02:04.910171'),
(33, 'mmmmmmmmmmmmmmmmmm', 'nnnnnnnnnnnnnnnnn', '2020-11-10 12:02:47.695723'),
(34, '2F5F61561015B7E100A18', 'a18', '2020-11-12 08:10:53.117819'),
(35, '', 'new nnnnnnnnnnnnnnn', '2020-11-12 08:11:16.456025'),
(36, '2F5F61561015B7E100A15', 'a15', '2020-11-12 08:11:39.567582'),
(37, '2F5F61561015B7E100A29', '', '2020-11-12 08:32:49.016711');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
