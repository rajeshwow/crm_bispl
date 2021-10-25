-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 20, 2021 at 04:38 PM
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
-- Table structure for table `tallyoutstanding_indore`
--

DROP TABLE IF EXISTS `tallyoutstanding_indore`;
CREATE TABLE IF NOT EXISTS `tallyoutstanding_indore` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `party` varchar(100) NOT NULL,
  `bill_date` varchar(110) DEFAULT NULL,
  `pendingamount` varchar(100) NOT NULL,
  `dueon` varchar(100) NOT NULL,
  `overdueday` varchar(100) NOT NULL,
  KEY `mn` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=797 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tallyoutstanding_indore`
--

INSERT INTO `tallyoutstanding_indore` (`id`, `party`, `bill_date`, `pendingamount`, `dueon`, `overdueday`) VALUES
(678, 'Impact Deals', '15-Jun-2015', '-23668.00', 'Array', '1558'),
(679, 'Deepak Soni CA', '23-Jul-2015', '-953.00', 'Array', '1499'),
(680, 'Sushila It Solutions ( Indore)', '23-May-2017', '-41079.00', 'Array', '850'),
(681, 'Team Computers Private Limited (Bhopal)', '30-May-2017', '-1049.00', 'Array', '813'),
(682, 'Rudra Enterprise', '16-Aug-2017', '-6018.00', 'Array', '765'),
(683, 'Rackbank Datacenters Pvt Ltd', '20-Jan-2018', '-2520.00', 'Array', '587'),
(684, 'Binary Infosolutions Pvt Ltd (U.P)', '17-May-2018', '-10431.00', 'Array', '470'),
(685, 'Binary Infosolutions Pvt Ltd (U.P)', '30-Oct-2018', '-1475.00', 'Array', '304'),
(686, 'Swastik Info Solutions', '1-Dec-2018', '7800.00', 'Array', '272'),
(687, 'Binary Infosolutions Pvt Ltd (U.P)', '5-Dec-2018', '-48852.00', 'Array', '268'),
(688, 'Silicon systems', '18-Dec-2018', '576.00', 'Array', '275'),
(689, 'New Technologi Solutions (Jhotwara)', '16-Jan-2019', '-12862.00', 'Array', '226'),
(690, 'Care Infosol', '27-Feb-2019', '9850.00', 'Array', '184'),
(691, 'GS Technologies', '12-Apr-2019', '7.00', 'Array', '161'),
(692, 'GS Technologies', '12-Apr-2019', '-5832.00', 'Array', '161'),
(693, '4DCompass InfoSolutions Private Limited', '13-Apr-2019', '-0.70', 'Array', '139'),
(694, 'One97 Commuincations Ltd', '8-May-2019', '1210.00', 'Array', '135'),
(695, 'Sonason Marketing and Services', '16-May-2019', '235.00', 'Array', '84'),
(696, 'A S Infotech (Bhopal)', '25-May-2019', '-18408.00', 'Array', '97'),
(697, 'Softcare security system', '20-Jun-2019', '-75.00', 'Array', '71'),
(698, 'Yantra Infotech', '24-Jun-2019', '-34220.00', 'Array', '67'),
(699, 'Binary Infosolutions Pvt Ltd (U.P)', '29-Jun-2019', '12390.00', 'Array', '62'),
(700, 'Softcare security system', '8-Jul-2019', '-10030.00', 'Array', '53'),
(701, 'Global Technologies', '14-Jul-2019', '-24898.00', 'Array', '28'),
(702, 'Sonason Marketing and Services', '20-Jul-2019', '-7316.00', '1-Sep-2019', '19'),
(703, 'Global Technologies', '23-Jul-2019', '1308.00', '1-Sep-2019', '19'),
(704, 'Hard N Soft Services', '24-Jul-2019', '-9440.00', 'Array', '37'),
(705, 'Perfect It Solution', '24-Jul-2019', '-9440.00', 'Array', '37'),
(706, 'Global Technologies', '29-Jul-2019', '-14868.00', 'Array', '13'),
(707, 'Global Technologies', '30-Jul-2019', '-17641.00', 'Array', '12'),
(708, 'Hardik Computer', '31-Jul-2019', '-12567.00', 'Array', '30'),
(709, 'Hardik Computer', '31-Jul-2019', '-1239.00', 'Array', '13'),
(710, 'Max Technologies', '31-Jul-2019', '-620.00', 'Array', '30'),
(711, 'Minerva Computers Services Pvt. Ltd.', '31-Jul-2019', '-1888.00', 'Array', '30'),
(712, 'Rainbow Associates', '31-Jul-2019', '-55439.00', 'Array', '30'),
(713, 'Sonason Marketing and Services', '31-Jul-2019', '-7080.00', 'Array', '8'),
(714, 'SSV Corporation', '31-Jul-2019', '-155290.00', 'Array', '8'),
(715, 'Maheshwari Computers Pvt.Ltd.', '2-Aug-2019', '-17523.00', 'Array', '28'),
(716, '4DCompass InfoSolutions Private Limited', '3-Aug-2019', '-17086.00', 'Array', '27'),
(717, 'Hardik Computer', '3-Aug-2019', '-684.00', 'Array', '10'),
(718, 'Magnum Computers', '3-Aug-2019', '-0.30', 'Array', '27'),
(719, 'Yantra Infotech', '5-Aug-2019', '82.00', 'Array', '16'),
(720, 'Dimension 4 Technologies', '6-Aug-2019', '-11564.00', 'Array', '24'),
(721, 'Hardik Computer', '7-Aug-2019', '-2360.00', 'Array', '6'),
(722, 'Perfect It Solution', '8-Aug-2019', '-4130.00', 'Array', '22'),
(723, 'Advance Technology Computers', '9-Aug-2019', '-18715.00', 'Array', '21'),
(724, 'Yantra Infotech', '9-Aug-2019', '-106761.00', 'Array', '12'),
(725, 'Aasi Prime Infotech', '10-Aug-2019', '-5782.00', '31-Aug-2019', '20'),
(726, 'Max Technologies', '10-Aug-2019', '-4207.00', '31-Aug-2019', '20'),
(727, 'Sixth Sense Tchnologies', '10-Aug-2019', '-11564.00', '31-Aug-2019', '20'),
(728, '4DCompass InfoSolutions Private Limited', '13-Aug-2019', '-3776.00', 'Array', '17'),
(729, 'Shivani Marketing & Services (Bhopal)', '13-Aug-2019', '-4012.00', 'Array', '17'),
(730, 'MANSHI ENTERPRISES', '14-Aug-2019', '-13749.00', 'Array', '16'),
(731, 'Hard N Soft Services', '16-Aug-2019', '-10266.00', 'Array', '14'),
(732, 'Max Technologies', '16-Aug-2019', '-6136.00', 'Array', '14'),
(733, 'Minerva Computers Services Pvt. Ltd.', '17-Aug-2019', '-19824.00', 'Array', '34'),
(734, 'Sonason Marketing and Services', '17-Aug-2019', '-16520.00', 'Array', 'Array'),
(735, 'SSV Corporation', '19-Aug-2019', '-9204.00', '1-Oct-2019', 'Array'),
(736, 'Nawal Computers', '20-Aug-2019', '-41229.00', 'Array', '10'),
(737, 'Apex Computech Pvt Ltd', '21-Aug-2019', '-9558.00', 'Array', '30'),
(738, 'Global Technologies', '21-Aug-2019', '-885.00', 'Array', 'Array'),
(739, 'Global Techno Solution', '21-Aug-2019', '-5192.00', 'Array', '9'),
(740, 'Hardik Computer', '21-Aug-2019', '-17844.00', 'Array', 'Array'),
(741, 'XTRANET TECHNOLOGIES PRIVATE LIMITED', '21-Aug-2019', '-4378.00', 'Array', '9'),
(742, 'Balaji Computer (Bhopal)', '22-Aug-2019', '324.00', 'Array', '28'),
(743, 'EagleTechsec Communications India Pvt Ltd', '22-Aug-2019', '-29204.00', 'Array', '8'),
(744, 'Hard N Soft Services', '22-Aug-2019', '-1593.00', 'Array', '8'),
(745, 'Minerva Computers Services Pvt. Ltd.', '22-Aug-2019', '-1534.00', 'Array', '29'),
(746, 'VSN International', '23-Aug-2019', '-3363.00', 'Array', '7'),
(747, 'Care Infosol', '24-Aug-2019', '-9912.00', 'Array', '6'),
(748, '4DCompass InfoSolutions Private Limited', '26-Aug-2019', '-48870.00', 'Array', '4'),
(749, 'VSN International', '27-Aug-2019', '-32426.00', 'Array', '3'),
(750, 'EagleTechsec Communications India Pvt Ltd', '29-Aug-2019', '-35046.00', 'Array', 'Array'),
(751, 'Global Techno Solution', '29-Aug-2019', '-11045.00', 'Array', '1'),
(752, 'Royal Computers Services', '29-Aug-2019', '-15098.00', 'Array', '1'),
(753, 'Global Technologies', '30-Aug-2019', '-5758.00', 'Array', 'Array'),
(754, 'It Services', '30-Aug-2019', '-4661.00', 'Array', '0'),
(755, 'Rishi Computer', '30-Aug-2019', '-4661.00', 'Array', '0'),
(756, 'Royal Computers Services', '30-Aug-2019', '-16166.00', 'Array', '0'),
(757, 'Shivi Computech (Indore)', '30-Aug-2019', '-11446.00', 'Array', '21'),
(758, 'Business Automation (I) Pvt. Ltd.', '31-Aug-2019', '-1298.00', '1-Sep-2019', '19'),
(759, 'G G Enterprises', '31-Aug-2019', '-20049.00', 'Array', 'Array'),
(760, 'Hard N Soft Services', '31-Aug-2019', '-54282.00', 'Array', 'Array'),
(761, 'Rishi Computer', '31-Aug-2019', '-22892.00', 'Array', 'Array'),
(762, 'Royal Computers Services', '31-Aug-2019', '-25311.00', 'Array', 'Array'),
(763, 'Royal Computers Services', '31-Aug-2019', '-4661.00', 'Array', 'Array'),
(764, 'Shivani Marketing & Services (Bhopal)', '31-Aug-2019', '-14160.00', 'Array', 'Array'),
(765, 'SSV Corporation', '31-Aug-2019', '-114462.00', 'Array', 'Array'),
(766, 'SSV Corporation', '31-Aug-2019', '-81420.00', 'Array', 'Array'),
(767, 'VSN International', '31-Aug-2019', '-6089.00', 'Array', 'Array'),
(768, 'SSV Corporation', '3-Sep-2019', '-9676.00', 'Array', 'Array'),
(769, 'Global Solutions', '4-Sep-2019', '-3629.00', 'Array', 'Array'),
(770, 'Royal Computers Services', '4-Sep-2019', '-2154.00', 'Array', 'Array'),
(771, 'RT & T Services', '4-Sep-2019', '-14160.00', 'Array', '16'),
(772, 'EagleTechsec Communications India Pvt Ltd', '5-Sep-2019', '-94282.00', 'Array', 'Array'),
(773, 'Maheshwari Computers Pvt.Ltd.', '5-Sep-2019', '-83190.00', 'Array', 'Array'),
(774, 'Preferred 7 Technologies', '5-Sep-2019', '-5782.00', 'Array', 'Array'),
(775, 'Pioneer Sales & Service', '6-Sep-2019', '-17370.00', 'Array', '14'),
(776, 'M/S INTERFACE TECHNO SYSTEM', '7-Sep-2019', '-52003.00', 'Array', 'Array'),
(777, 'Softcare security system', '9-Sep-2019', '-22302.00', 'Array', 'Array'),
(778, 'Winux Solutions', '9-Sep-2019', '-10502.00', 'Array', '10'),
(779, 'System Peripherals', '11-Sep-2019', '-9440.00', '2-Oct-2019', 'Array'),
(780, 'G G Enterprises', '12-Sep-2019', '-4285.00', 'Array', 'Array'),
(781, 'Veltronics India Pvt. Ltd.', '12-Sep-2019', '-4367.00', 'Array', 'Array'),
(782, 'Winux Solutions', '13-Sep-2019', '-9440.00', 'Array', '6'),
(783, 'CD Multi Media Gallery', '16-Sep-2019', '-5782.00', 'Array', 'Array'),
(784, 'EagleTechsec Communications India Pvt Ltd', '16-Sep-2019', '-16638.00', 'Array', 'Array'),
(785, 'Royal Computers Services', '16-Sep-2019', '-8968.00', 'Array', 'Array'),
(786, 'Sixth Sense Tchnologies', '16-Sep-2019', '-885.00', 'Array', 'Array'),
(787, 'VSN International', '16-Sep-2019', '-2478.00', 'Array', 'Array'),
(788, 'M/S INTERFACE TECHNO SYSTEM', '17-Sep-2019', '-6844.00', 'Array', 'Array'),
(789, 'Royal Computers Services', '17-Sep-2019', '-13688.00', 'Array', 'Array'),
(790, 'K.R. Computers', '18-Sep-2019', '-1500.00', 'Array', 'Array'),
(791, 'Royal Computers Services', '18-Sep-2019', '-13172.00', 'Array', 'Array'),
(792, 'Qsol Softwares Pvt. Ltd.', '19-Sep-2019', '-3481.00', 'Array', '0'),
(793, 'Dimension 4 Technologies', '20-Sep-2019', '-7316.00', 'Array', 'Array'),
(794, 'Netcare Solutions(Jaipur)', '20-Sep-2019', '-5664.00', 'Array', '0'),
(795, 'Softcare security system', '20-Sep-2019', '-2714.00', 'Array', 'Array'),
(796, 'VSN International', '20-Sep-2019', '-9558.00', 'Array', 'Array');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
