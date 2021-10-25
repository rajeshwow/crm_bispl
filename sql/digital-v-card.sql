-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 03, 2021 at 08:54 AM
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
-- Database: `digital-v-card`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `pay_id` int(100) NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `signature_hash` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`pay_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  KEY `i` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `email`, `password`) VALUES
(11, 'manav@gmail.com', '123'),
(10, 'asha@gmail.com', '123'),
(9, 'jiju@gmail.com', '123'),
(8, 'vikash@gmail.com', '123'),
(7, 'rajesh007prajapati@gmail.com', '123'),
(12, 'karan@gmail.com', '123'),
(13, 'karan1@gmail.com', '123'),
(14, 'viku@gmail.com', '123'),
(15, 'raman@gmail.com', '123'),
(16, 'sks@gmail.com', '123'),
(17, 'fresh@gmail.com', '123'),
(18, 'khbi@gmail.com', '123'),
(19, 'aman@gmail.com', '123'),
(20, 'rahul@gmail.com', '123'),
(21, 'sampat@gmail.com', '123'),
(22, 'vibhakar@gmail.com', '123'),
(23, 'rajesh1@gmail.com', '1234'),
(24, 'khubig@gmail.com', '122'),
(25, 'xyz@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

DROP TABLE IF EXISTS `user_information`;
CREATE TABLE IF NOT EXISTS `user_information` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `card_status` varchar(100) NOT NULL DEFAULT 'inactive',
  `razorpay_payment_id` varchar(255) DEFAULT NULL,
  `razorpay_order_id` varchar(255) DEFAULT NULL,
  `razorpay_signature` varchar(255) DEFAULT NULL,
  `username` varchar(200) NOT NULL,
  `cardholder_name` varchar(300) DEFAULT NULL,
  `cardholder_position` varchar(300) DEFAULT NULL,
  `cardholder_company` varchar(300) DEFAULT NULL,
  `cardholder_phone` varchar(300) DEFAULT NULL,
  `cardholder_email` varchar(300) DEFAULT NULL,
  `cardholder_whatsapp` varchar(300) DEFAULT NULL,
  `cardholder_skype` varchar(300) DEFAULT NULL,
  `cardholder_about_me` varchar(300) DEFAULT NULL,
  `cardholder_skillval` varchar(300) DEFAULT NULL,
  `cardholder_scoreval` varchar(300) DEFAULT NULL,
  `cardholder_miledesval` varchar(300) DEFAULT NULL,
  `cardholder_milescoreval` varchar(300) DEFAULT NULL,
  `cardholder_experience_company` varchar(300) DEFAULT NULL,
  `cardholder_experience_value` varchar(300) DEFAULT NULL,
  `cardholder_experience_position` varchar(300) DEFAULT NULL,
  `cardholder_education_course` varchar(300) DEFAULT NULL,
  `cardholder_education_grade` varchar(300) DEFAULT NULL,
  `cardholder_education_year` varchar(300) DEFAULT NULL,
  `cardholder_facebook_url` varchar(300) DEFAULT NULL,
  `cardholder_twitter_url` varchar(300) DEFAULT NULL,
  `cardholder_linkedin_url` varchar(300) DEFAULT NULL,
  `cardholder_gplus_url` varchar(300) DEFAULT NULL,
  `banner` varchar(300) DEFAULT NULL,
  `background2` varchar(300) DEFAULT NULL,
  `background3` varchar(300) DEFAULT NULL,
  `textcolor` varchar(300) DEFAULT NULL,
  `company_tagline` varchar(300) DEFAULT NULL,
  `about_company` varchar(1000) DEFAULT NULL,
  `company_location` varchar(300) DEFAULT NULL,
  `company_website` varchar(300) DEFAULT NULL,
  `solution_title` varchar(300) DEFAULT NULL,
  `solution_description` varchar(3000) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_information`
--

INSERT INTO `user_information` (`id`, `card_status`, `razorpay_payment_id`, `razorpay_order_id`, `razorpay_signature`, `username`, `cardholder_name`, `cardholder_position`, `cardholder_company`, `cardholder_phone`, `cardholder_email`, `cardholder_whatsapp`, `cardholder_skype`, `cardholder_about_me`, `cardholder_skillval`, `cardholder_scoreval`, `cardholder_miledesval`, `cardholder_milescoreval`, `cardholder_experience_company`, `cardholder_experience_value`, `cardholder_experience_position`, `cardholder_education_course`, `cardholder_education_grade`, `cardholder_education_year`, `cardholder_facebook_url`, `cardholder_twitter_url`, `cardholder_linkedin_url`, `cardholder_gplus_url`, `banner`, `background2`, `background3`, `textcolor`, `company_tagline`, `about_company`, `company_location`, `company_website`, `solution_title`, `solution_description`) VALUES
(124, 'active', 'pay_GKj4beKHVvHEEN', 'order_GKj48eik7CLdjq', '29103e58ce43237628f5f132467ea7591f77b32035446116df9b1ca478a95434', 'ramkumarz', 'rakesh', 'kumar', 'mindha', '8978978898', 'r@gmail.com', '7868667768', 'df', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '../img/background9.jpg', '../img/background10.jpg', '../img/background3.png', '#f7f2f2', '', '', '', '', '', ''),
(122, 'inactive', NULL, NULL, NULL, 'Sampat', 'Sampat', 'Director', 'Google', '4544885545', 'r@g.com', '5445454445', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '../img/background9.jpg', '../img/background9.jpg', '../img/background8.jpg', '#f4f1f1', '', '', '', '', ',', ','),
(123, 'active', 'pay_GGU4vVbaJjyCm5', 'order_GGU4I78W81nmAb', '5109a8906f84f7fa477cbbc4421e7c8c7ecc2835a8262b53e4d444ddf9e4e7b0', 'Vibhakar', 'Vibhakar', 'Engineer', 'Google', '8989988998', 'r@gmco.com', '6545545441', '5444554', 'fhggjjggfd', 'jhg,,', '75,,', 'hgf,', '575,', 'kjh,', '8,', ',mn,', 'jhf,', ',m,', '1212,', 'jh', 'jhg', 'jh', 'jhg', './img/background9.jpg', './img/background9.jpg', './img/background8.jpg', '#f5efef', 'hgjhg', 'jhgjhgjh', 'hkjhd', 'www.bispl.net.in', 'ghfgh,', 'nbvnb,'),
(121, 'active', 'pay_FvydX1snkwTuQ7', 'order_FvycdnAtu6oUQp', 'fb5cc09c195802a0c0d842e20ce46cfd69203aa285ff5b153ac8da519ee06dcd', 'rahullll', 'rahulsa', 'new', 'new', '9879878798', 'sdf', '9879877899', 'df', '', 'df,,', '23,,', 'sdf,,', '234,,', 'df,,', '234,,', 'df,,', 'df,,', 'sdf,,', '234,,', 'fds', 'df', 'dsf', 'df', '../img/background9.jpg', '../img/background9.jpg', '../img/background9.jpg', '#8d3a3a', 'sdf', 'df', 'sdf', 'sdf', 'sdf,,', 'df,,'),
(120, 'active', 'pay_FvWRIRim5hqL71', 'order_FvWQ9J0X5bAGn4', 'c844b88523ff0ea82ab322f8fa5452cc417d8dc42a9855a31d68cd5b160f6e62', 'amanshah', 'amansa', 'SSE', 'Accenture', '8888888888', 'aman@gmail.com', '7777777777', 'ldf', '', 'pythan,df,', '78,23,', 'hp,,', '99,,', 'accenture,,', '3,,', 'SSE,,', 'mca,,', '99,,', '2017,,', 'fb', 'tw', 'li', 'gp', '../img/background1.jpg', '../img/background1.jpg', '../img/background1.jpg', '#ece4e4', 'wowo', 'woowowowoo', 'dffsf', 'http://www.bispl.net.in', 'ss,,', 'dlfjkdsjf  lkdjf dlfjksdjdlf sdklf jl dfjkjl fkljdsklfjlkd klf jkdfl,,'),
(119, 'active', 'pay_FvToXxmBSYbPPm', 'order_FvToGsAfXsHZtX', '34eb4dc7dc3931f7b499e783500c1e143bb4092dd26650a9fb7799e9c76411d9', 'khbi', 'khubisa', 'SE', 'Attah', '', 'dsf', '', '', '', ',,', ',,', ',,', ',,', ',,', ',,', ',,', ',,', ',,', ',,', '', '', '', '', '../img/background10.jpg', '../img/background10.jpg', '../img/background10.jpg', '#ebeaea', '', '', '', '', ',,', ',,'),
(117, 'inactive', NULL, NULL, NULL, 'raman', 'raman', 'business', 'lahor', '8987897987', 'df', '9879879877', 'sdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '../img/background1.jpg', '../img/background1.jpg', '../img/background1.jpg', '#f3f2f2', '', '', '', '', '', ''),
(118, 'active', 'pay_FvThCnlGkgnDlF', 'order_FvTgm9dxVXCI47', '71d3fa46f4e2acaf7a760282ac23bc4500ab54b9f573e5e82f04eaaa2463242b', 'sks', 'sdflk', 'lkjdf', 'df', '', 'sdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '../img/background10.jpg', '../img/background10.jpg', '../img/background10.jpg', '#e8e3e3', '', '', '', '', '', ''),
(116, 'active', 'pay_FvRf4emAgyZGK2', 'order_FvRekHEzn47Y5N', 'fc64eb7e461a7e81b5d9ee648b58de25f074e047cd429803c4109e2675ee57ba', 'viku', 'asha', 'asha', 'ash', '7777777777', 'sdf', '7777777777', 'df', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '../img/background1.jpg', '../img/background3.png', '../img/background9.jpg', '#81bc29', '', '', '', '', '', ''),
(115, 'active', 'pay_FvQEZM4ViLZhQn', 'order_FvQEA45I5QN0Vy', '632319236e47bec39449ba295d385235773d6a36939216c2feb8bee050f123a2', 'karan', 'karan kumar', 'software engineer', 'google', '9999999999', 'rajesh007prajapati@gmail.com', '8888888888', 'sdf', 'im from jaipur', 'java,', '85,', 'happ client,', '550,', 'acn,', '5,', 'se,', 'mca,', '70,', '2342,', 'fb', 'tw', 'li', 'gp', './img/background8.jpg', './img/background8.jpg', './img/background8.jpg', '#eee7e7', 'come here', 'Awesome Company ', 'lco', 'web', 'new solution,', 'our solution,'),
(114, 'active', 'pay_Fv4l9ukxCEL7K4', 'order_Fv4knxEUHfEZkU', 'a04b77cd953f39437b75596e9ff837c8f0a0087e30ee77ab51431c615e856e71', 'manav', 'mohit', 'kk', 'acn', '7777777777', 'rkg@gmail.com', '9999999999', 'asdf', '', 'one,two,three,four,', '78,87,9,88,', 'hc,new,sdf,', '89,70,234,', 'NAIHARA TECHNOLOGY,rk,new,', '5,8,4,', 'sf,sdf,sdf,', 'mca,ddddd,', '78,dsf,', '2017,2342,', 'fb', 'tw', 'li', 'gp', '../img/background22.jpg', '../img/background22.jpg', '../img/background22.jpg', '#eee2e2', '', '', '', '', 'Software Solutions,two,', 'how best,234,'),
(113, 'active', 'pay_Fv0SIJ38hQAmxI', 'order_Fv0Rv766PnvyTt', '2dc83e3bb27d451640489c30796167f74b45ec5da002ed3aa43e7a87dca6d520', 'asha', 'asha', 'software engineer', 'google', '8888888888', 'dsf', '8888888888', 'df', 'sdf', 'java,c,c++', '30,90,80', 'clients,comapny,kch b', '50,55,40', 'accenture,google,binary', '2,5,7', 'Software engineer,direcotor,BA', '', '', '', '', '', '', '', './img/background8.jpg', './img/background8.jpg', './img/background8.jpg', '#cd1d1d', '', '', '', '', '', ''),
(111, 'active', 'pay_FuQqKD31OYkjY1', 'order_FuQpq7tUrJ80Ov', '7c00494d3d3eb49a1a584c743f1003ba0ea6b79c98e4e29a56b4673b312d5b47', 'vikash', 'Vikash', 'Vikash', 'dfdfdf', '', 'df', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', './img/background8.jpg', './img/background8.jpg', './img/background8.jpg', '#f7f3f3', '', '', '', '', '', ''),
(112, 'inactive', NULL, NULL, NULL, 'jiju', 'df', 'df', 'df', '', 'df', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', './img/background10.jpg', './img/background10.jpg', './img/background10.jpg', '#fbf9f9', '', '', '', '', '', ''),
(110, 'active', 'pay_FuHxIfyyA7bvSk', 'order_FuHwljroj64nct', '1913646855e513f0949c44122fda23b4bc41799d162776be4db13b7822181cda', 'rajesh', 'rajesh kumar', 'software engineer', 'Binary ', '9879878997', 'rajesh007prajapati@gmail.com', '9787878878', 'sdf', 'My name is rajesh', 'java ,html,', '90,100,', 'happy ,new ,', '54,654,', 'acn,binary,', '5,5,', 'Software ENgineer,sdf,', 'mca,', '89,', '2017,', 'fb', 'tw', 'li', 'gp', './img/background10.jpg', './img/background8.jpg', './img/background3.png', '#f7f3f3', 'rkk', 'woww', 'sdf', 'sdf', 'sof,', 'Software Solutions,');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
