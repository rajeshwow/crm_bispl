-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2021 at 01:04 PM
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
-- Table structure for table `airpro_outdoor_access`
--

CREATE TABLE `airpro_outdoor_access` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airpro_outdoor_access`
--

INSERT INTO `airpro_outdoor_access` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, 'outdoor1', 'Air Drona', 'IEEE 802.11b/g/n compliant with 150Mbps high-speed data rate.\r\nWireless modes: Gateway, WDS, Repeater, AP Mode, Wireless ISP.\r\nWireless users access control.\r\nAP Client, PTP, PTM.\r\nWireless security - 64/128bit WEP, WPA/WPA2,.\r\nSupport 802.1d Spanning Tree.\r\nQuick and easy setup with Web-based management utility.\r\n12V/24V Power Over Ethernet support.\r\nWeather proof case against rugged environment.', './img/airpro/outdoor access/outdoor1.png', ' AirPro Air Drona is a 150Mbps high power outdoor CPE/AP. It Complies with IEEE 802.11b/g/n standard and adopts Qualcomm QCA9531 chipset. It comes with 12dBi high gain antenna, 1000mW high power, transmit/receive wireless distance can be of more than 2000 meters.  It supports Wireless AP, Gateway, WISP, Wireless Bridge, WDS operation mode which makes it an effective solution for PTP, PTMP application and outdoor long range Wi-Fi coverage application. Moreover, it has WDS button on case for switching the connection between PTP/PTMP modes. Also, it includes reset button, which eliminates the need of accessing product GUI.  Air Drona comes with ABS waterproof, dustproof and sunscreen shell, temperature adaptive and board protective; meantime, it supports Power over Ethernet and passive PoE. Ideal for outdoor use; easy to setup in areas where power socket are not readily available.  Besides that, Air Drona uses LED signal light to show the strength of the signal, so finding a suitable place for this outdoor CPE is easy, then firmware comply with the AC controller System and Cloud Management System, helpful in central management and data setting, to implement Advertisement and authentication function, also saves human work and cost, which makes it a professional outdoor wireless networking solution.', './img/airpro/outdoor access/1-1.png', 'https://airpro.in/wp-content/uploads/2017/03/Air-Drona-1.pdf'),
(2, 'outdoor2', 'Air Connect-2, 300Mbps Outdoor CPE', '', './img/airpro/outdoor access/outdoor2.png', ' AirPro Air Connect2 is a 300 Mbps outdoor CPE/AP that supports TDMA. Air Connect 2 complies with IEEE 802.11b/g/n standard, features 12dBi dual polarized high gain antenna and supports PTP/PTMP distance up to 2000 meters.  Air Connect2 suports HI-MAX TDMA Technology (use polling technique to solve the hidden node and resource waste problem between the CPE and base station, provide low latency, high throughput in PTP/PTMP application likes IP camera, long range Wi-Fi Transmission), Gateway, Wireless AP, WISP, WDS operation mode for all wireless coverage.  It comes with ABS waterproof, dustproof and sunscreen shell, temperature adaptive, LED signal lights to show signal strength; additionally, it supports 24V passive PoE, easy to setup even with no power socket nearby, ideal for outdoor use.  Also, Air Connect2 features WDS switch button on the case, for switching the connection between WDS PTP/PTMP modes. Apart from this there is a reset button, zero configuration which saves human work and cost, makes it a professional outdoor wireless networking solution.', './img/airpro/outdoor access/1-2.png', 'https://airpro.in/wp-content/uploads/2018/04/Air-Connect-2-1.pdf'),
(3, 'outdoor3', 'Air Lakshya', 'High Power 300Mbps AP/Client.\r\n14dBi antenna.\r\nWPA/WPA2 encryptions for defence against security threats.\r\nSeamlessly compatible with 802.11b/g/n devices.\r\nSupports 24V/1A PoE.\r\nCompatible with Major Base station in Client Mode.', './img/airpro/outdoor access/outdoor3.png', ' AirPro Air Lakshya is a 300Mbps high power outdoor CPE/AP. It Complies with IEEE 802.11b/g/n standard and adopts Qualcomm QCA9531 chipset. It comes with 14dBi dual polarized high gain antenna, 500mW/27dBm high power, transmit/receive wireless distance can be of more than 3000 meters.  It supports Wireless AP, Gateway, WISP, Wireless Bridge, WDS operation mode which makes it an effective solution for PTP, PTMP application and outdoor long range Wi-Fi coverage application. Moreover, it has WDS button on case for switching the connection between PTP/PTMP modes. Also, it includes reset button, which eliminates the need of accessing product GUI.  Air Lakshya comes with ABS waterproof, dustproof and sunscreen shell, temperature adaptive and board protective; meantime, it supports Power over Ethernet and passive PoE. Ideal for outdoor use; easy to setup in areas where power socket are not readily available.  Besides that, Air Lakshya uses LED signal light to show the strength of the signal, so finding a suitable place for this outdoor CPE is easy, then firmware comply with the AC controller System and Cloud Management System, helpful in central management and data setting, to implement Advertisement and authentication function, also saves human work and cost, which makes it a professional outdoor wireless networking solution.', './img/airpro/outdoor access/1-3.png', 'https://airpro.in/wp-content/uploads/2017/03/Air-Lakshya-1.pdf'),
(4, 'outdoor4', 'Air Bridge M5', 'Comply with IEEE 802.11ac/a/n, 5G,450Mbps Data Rate.\r\n1 10/100Mbps WAN Portï¼Œ1 10/100Mbps LAN Port.\r\n800mW high power, build in 10dBi MIMO panel antenna, stronger signal strength, more wireless coverage.\r\nSupport passive PoE.\r\nSupport SSID broadcasting, Multi SSID up to 4.\r\nSupport Gateway (PPPOE, static IP, dynamic IP) , Wireless AP, Repeater, WISP operation mode.\r\nWith function of build in firewall, IP filter, URL filter and MAC filter.\r\nComply with IEEE 802.3az standard, beam forming technology, RF power adjustment and frequency analyzer for better application in different environment.\r\nSupport DDNS, VPN pass through, Port forwarding and DMZ host.\r\nSupport 64/128-bit WEP security, 128bit WPA (TKIP/AES) security.', './img/airpro/outdoor access/outdoor4.png', ' Air Bridge5 is an high power industrial 5G outdoor CPE with the next generation 802.11ac Wi-Fi standard, combined 450Mbps high speed in 5G, it make more than 50 end users can access into it to enjoy seamless HD movies, streaming, online gaming, wireless security and other bandwidth-intensive tasks.', './img/airpro/outdoor access/1-4.jpg', 'http://airpro.in/wp-content/uploads/2017/03/Air-Bridge-5-11AC-450Mbps-5G-High-Power-Outdoor.pdf'),
(5, 'outdoor5', 'Air Dhruv, 11ac 900Mbps 5G High Power Outdoor CPE', 'Comply with IEEE 802.11ac/a/n, 5G,900Mbps Data Rate.\r\n1*10/100/1000Mbps WAN Portï¼Œ1*10/100/1000Mbps LAN Port.\r\n500mW high power, build in 18dBi MIMO panel antenna, stronger signal strength, more wireless coverage.\r\nSupport passive PoE, 24V.\r\nSupport SSID broadcasting, Muiti SSID up to 4, then support tag VLAN based on SSID.\r\nSupport Gateway (PPPOE, static IP, dynamic IP), Wireless AP, Repeater, WISP, WDS operation mode.\r\nWith function of build in firewall, IP filter, URL filter and MAC filter.\r\nComply with IEEE 802.3az standard, RF power adjustment and frequency analyzer for better application in different environment.\r\nSupport DDNS, VPN pass through, Port forwarding and DMZ host.\r\nSupport 64/128-bit WEP security, 128bit WPA (TKIP/AES) security.', './img/airpro/outdoor access/outdoor5.png', ' Air Dhruv-5 is an high power industrial 5G outdoor CPE with the next generation 802.11ac Wi-Fi standard, Qualcomm Chipset, combined 900Mbps high speed in 5G, equipped Gigabit WAN port, 3 times Ethernet data rate faster than Air Dhruv-5 it make more than 60 end users access into it and enjoy seamless HD movies, streaming, online gaming, wireless security and other bandwidth-intensive tasks.  900Mbps Data Rate & Gigabit WAN/LAN Ports Air Dhruv-5 features 802.11ac Wi-Fi and 2*2 MIMO technology, 900Mbps wireless speed. Equipped with Gigabit Ethernet port ensures high speed internet access and more end users access.  10KM PTP/PTMP Distance Designed in two line Power Amplifier on PCB board, the power can be 500mW high power, 18dBi MIMO high gain panel antenna, greatly increase the wifi range to 10KM distance, then supply the stable wifi signal for users.  Power over Ethernet Air Dhruv-5 has integrated passive Power over Ethernet (PoE), for easy installation and lower cost. So it can be installed in areas where power outlets are not readily available, eliminating the mess of altering existing network infrastructure.  Multiple operation mode, Press WDS Switch button to do PTP/PTMP Connection Air Dhruv-5 support Gateway, WISP, Wireless AP, WiFi Repeater, WDS operation mode, it is widely used in WiFi Bridge Connection, WISP Connection and Wireless Security; CPE890SR with WDS Switch button, press it to do the PTP/PTMP connection, very easy, no need to access into GUI.  Access Controller System & Cloud Management System With Access Control System under AP/WDS operation mode, easily access advanced network settings through PC, like AP status monitor, change IP address, ESSID, Channel, Password, upgrade firmware, backup and restoreâ€¦.  Then work with Cloud Management System, easy to do central and remote management, advertisement and multi authentication make this AP more professional in WiFi Projects.', './img/airpro/outdoor access/1-5.png', 'https://airpro.in/wp-content/uploads/2018/07/Air-Dhruv-2.pdf'),
(6, 'outdoor6', 'Air Namo 2', 'High Power 300Mbps AP/Client.\r\n2*7dbi Omniantenna.\r\nWPA/WPA2 encryptions for defence against security threats.\r\nSeamlessly compatible with 802.11b/g/n devices.\r\nSupports 24V/1A PoE.\r\nsupport multi SSID(up to 4).\r\nIEEE 802.1Q VLAN,.\r\nManaged through Access controller.\r\n', './img/airpro/outdoor access/outdoor6.png', ' AirPro Air Namo2 is a 300Mbps high power outdoor wireless access point with omni antenna, it complies with IEEE 802.11b/g/n standard, adapts Qualcomm chipset, comes with 16MB flash, 64MB SDRAM, 7dBi omni antenna and 500mW high power. Covers more than 300 meters Wi-Fi range and is a good option for outdoor Wi-Fi signal coverage.  It comes with AP, Router and Wi-Fi Repeater operation mode to transmit a Wi-Fi signal in a certain place for outdoor users or can bridge the existing Wi-Fi signal to extend the range.  Air Namo2 comes with ABS waterproof, dustproof and sunscreen shell, temperature adaptive and board protective; ideal for outdoor Wi-FI networking projects. Meantime, it supports Power over Ethernet and passive PoE. Easy to setup in areas where power socket are not readily available.  Additionally, Air Namo2 supports up to 4 multi SSID, each SSID complies with IEEE 802.1Q VLAN, then Air Namo2 works with our AC controller, easy to configure and setup centrally, supports Captive Portal Authentication, easy to do ads, asks for login before entering into the network.', './img/airpro/outdoor access/1-6.png', 'https://airpro.in/wp-content/uploads/2017/03/Air-Namo-2-1.pdf'),
(7, 'outdoor7', 'Air MO750, 11ac 750Mbps High Power Outdoor Wireless AP', 'Comply with IEEE 802.11ac/b/g/n, dual band, 750Mbps Data Rate.\r\n1*10/100Mbps WAN Portï¼Œ1*10/100Mbps LAN Port.\r\n500mW high power, Qualcomm Chipset, 16M Flash, 128M DDR2 RAM, more user, more stable.\r\nSupport 24V Passive PoE or 48V IEEE 802.3af POE.\r\nSupport SSID broadcasting, Multi SSID up to 8 (4 SSID in 2.4GHz, 4 SSID in 5GHz), support tag VLAN based on SSID to protect the whole data safety.\r\nSupport Gateway (PPPOE, static IP, dynamic IP) , Wireless AP, Repeater, WISPoperation mode.\r\nWith function of firewall, IP filter, URL filter and MAC filter.\r\nComply with IEEE 802.3az standard,RF power adjustment and frequency analyzer for better application in different environment.\r\nSupport DDNS, VPN pass through, Port forwarding and DMZ host.\r\nSupport 64/128-bit WEP security, 128bit WPA (TKIP/AES) security.', './img/airpro/outdoor access/outdoor7.png', ' Air Mo750is an Qualcomm Solution 11ac high power industrial use Outdoor wireless access point with the next generation 802.11ac Wi-Fi standard, combined 750Mbps Wi-Fi speed over 2.4GHz(300Mbps) and 5GHz(450Mbps), fast Ethernet data rate make100+ end users can access into it to enjoy seamless HD movies, streaming, online gaming, wireless security and other bandwidth-intensive tasks.  ABS waterproof, dust proof and sunscreen shell, temperature adaptive and board protective Air Mo750with ABS waterproof, dust proof and sunscreen shell, avoid the damage from dust, rainy weather. Meantime, it adaptive to various environment, the working temperature can be normal at -40â„ƒ to 55â„ƒ. Suit for any country.  High Power, 5dBi omni antenna, more WiFi Range Designed in two line Power Amplifier on PCB board, the power can be 500mW high power, build in 3PCS omni antenna, outdoor WiFi range up to 500 meters.  Power over Ethernet AIR-MO750 has integrated Power over Ethernet (PoE), for easy installation and lower cost. So it can be installed in areas where power outlets are not readily available, eliminating the mess of altering existing network infrastructure. Pls note, the default is 24V Passive PoE; 48V IEEE 802.3af active PoE is optional by extra price.  Access Controller System & Cloud Management System Work with WLAN controller in wireless AP operation mode,easily access advanced network settings through PC, like AP status monitor, change IP address, ESSID, Channel, Password, upgrade firmware, backup and restoreâ€¦.  Then work with Cloud Management System, easy to do central and remote management, advertisement and multi authentication make this device more professional in WiFi Projects.', './img/airpro/outdoor access/1-7.png', 'https://airpro.in/wp-content/uploads/2018/04/AIR-MO750.pdf'),
(8, 'outdoor8', 'Air MO1200, 11ac 1200Mbps High Power Outdoor Wireless AP', 'Comply with IEEE 802.11ac/b/g/n, dual band, 1200Mbps Data Rate\r\n1*10/100Mbps WAN Portï¼Œ1*10/100/1000Mbps LAN Port\r\n1000mW high power, Qualcomm Chipset, 16M Flash, 128M DDR2 RAM, more user, more stable.\r\nSupport 48V active PoE, work with IEEE 802.3at standard PoE switch or 48V PoE adapter.\r\nSupport SSID broadcasting, Multi SSID up to 8 (4 SSID in 2.4GHz, 4 SSID in 5GHz), support tag VLAN based on SSID to protect the whole data safety.\r\nSupport Gateway (PPPOE, static IP, dynamic IP) , Wireless AP, Repeater, WISP operation mode\r\nWith function of firewall, IP filter, URL filter and MAC filter\r\nComply with IEEE 802.3az standard, RF power adjustment and frequency analyzer for better application in different environment\r\nSupport DDNS, VPN pass through, Port forwarding and DMZ host\r\nSupport 64/128-bit WEP security, 128bit WPA (TKIP/AES) security', './img/airpro/outdoor access/outdoor8.png', ' AirPro AIR Mo1200 is a 1200Mbps high power industrial use Outdoor Wireless Access Point and comes with next generation 802.11ac Wi-Fi standard, 2X2 MIMO technology, Gigabit WAN/LAN port, it works on dual band and combines 1200Mbps Wi-Fi speed, i.e. 2.4GHz (300Mbps) and 5GHz (900Mbps). At a Fast Ethernet data rate allows more than 100 users to access into wireless network and enjoy uninterrupted HD movies, online games, wireless security and other bandwidth-intensive tasks.  ABS waterproof, dust proof and sunscreen shell, temperature adaptive and board protective AIR Mo1200 comes with ABS waterproof, dust proof and sunscreen shell, to avoid damage in dust and rainy weather. Also, it adapts to various environment, i.e. the working temperature can be from -20Â°C to 55Â°C, suitable for any country.  High Power, 5dBi omni antenna, more WiFi Range Designed on the PCB board with two line power amplifier, comes with 500mW high power and is built with 5dBi omni Wi-FI antenna, which increases outdoor Wi-Fi range upto 500 meters.  Power over Ethernet AIR Mo1200 has integrated active Power over Ethernet (PoE) for easy installation and is available at affordable cost. Therefore, it can be installed in areas where power outlets are not promptly accessible, thereby eliminating the mess of altering existing network infrastructure. Please Note, AIR Mo1200 supports 48V IEEE 802.3at PoE or 24V Passive PoE, change is possible via PCB board.  Access Controller System & Cloud Management System It works with WLAN controller in wireless AP operation mode, allows easy access to advanced network settings through PC, including AP status monitor, change IP address, ESSID, channel, password, upgrade firmware, backup and restore, etc.  Additionally, it works with Cloud Management System, providing easy central and remote management, advertisement and multi authentication, which makes this device more professional in Wi-Fi Projects.', './img/airpro/outdoor access/1-8.png', 'https://airpro.in/wp-content/uploads/2018/04/Air-MO1200.pdf'),
(9, 'floor1', 'Floor Mount Racks - FMOD', 'FMOD Series, General Electronics Floor mount Racks for Outdoor Application and Designed to meet IP56 with Fan & IP66 without Fan (Ingress protection) requirement. Racks manufactured out of Galvanized Steel sheet punched, formed, welded and to withstand the Harsh Outdoor condition the racks are specially powder coated dual coat with primer & pure polyester powder.\r\n\r\nRacks are manufactured with highest quality standards under stringent ISO 9001 | ISO 14001 | ISO 27001 | ISO 45001 Manufacturing & Quality management system.\r\n\r\nStandard for Racks will be fully welded frame with integrated side panel and Associated Front & Back Metal Door with 3 Point lock & Key and provision to mount racks on Floor.\r\n\r\nAvailable from 6RU to 27RU Variants with 600 & 800 Width and 600~800 Depth configurations.\r\n\r\nFan mounting provision can be on sides or top with canopy with filter unit to meet IP 56 (Ingress protection) requirements.', './img/netrack/floor mount/floor1.png', ' FMOD Series, General Electronics Floor mount Racks for Outdoor Application and Designed to meet IP56 with Fan & IP66 without Fan (Ingress protection) requirement. Racks manufactured out of Galvanized Steel sheet punched, formed, welded and to withstand the Harsh Outdoor condition the racks are specially powder coated dual coat with primer & pure polyester powder.  Racks are manufactured with highest quality standards under stringent ISO 9001 | ISO 14001 | ISO 27001 | ISO 45001 Manufacturing & Quality management system.  Standard for Racks will be fully welded frame with integrated side panel and Associated Front & Back Metal Door with 3 Point lock & Key and provision to mount racks on Floor.  Available from 6RU to 27RU Variants with 600 & 800 Width and 600~800 Depth configurations.  Fan mounting provision can be on sides or top with canopy with filter unit to meet IP 56 (Ingress protection) requirements.', './img/netrack/floor mount/1-1.png', 'https://www.netrackindia.com/pdf/Outdoor-Cabinet/Floor-Mount-Outdoor-Cabinets-FMOD-600-070520.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `airpro_poe_switch`
--

CREATE TABLE `airpro_poe_switch` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airpro_poe_switch`
--

INSERT INTO `airpro_poe_switch` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, 'switch1', '6 Ports PoE Switch', 'IEEE 802-3af/at power on up to 4 ports.\r\nSupply power to wireless access points and surveillance cameras over Cat-5 /Cat6 cabling.\r\n6x 10/100 Mbps Ports with AutoUplinkâ„¢.\r\nSupports PoE power up to 15-4W / 30W for each PoE port.\r\nSupports PoE IEEE 802-3af/at compliant PDs.\r\nSupports IEEE 802-3x flow control for Full-duplex Mode and backpressure for Half-duplex Mode.\r\nSupport VLAN Mode and Extend 250meters.\r\nInternal Power Adapter Supply 52V1.25A / 65W.\r\nPort Lightning Protection: General Mode 4KV, Differential Mode 2KV, ESD 8KV.', './img/airpro/poe switch/switch1.png', ' Flexible: Choose to plug in up to five Ethernet or Fast Ethernet devices and mix in up to four IEEE802.3af/at IP-based devices like wireless access points or IP-based network surveillance cameras. Place these IEEE802.3af/at-compliant devices where they belong â€“ high up on walls and ceiling for maximum coverage â€“ or anywhere else you need them. Power and data are carried over standard Cat 5 cabling.  Plug and Play: The standards-based PoE Switch senses and adjusts for network speed and cabling type automatically, for easy integration into your existing 10/100 Ethernet network. For PoE, the switch automatically detects IEEE802.3af/at-compliant devices, and supplies power as needed. Front panel LEDs keep you informed of switch and PoE status.  Quiet and Compact: Engineered for compact convenience, it durable metal case that is easily positioned on your desktop or a wall, using the included mounting hardware. The fan-less design quietly integrates with your small office environment.', './img/airpro/poe switch/1-1.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ES106P.pdf'),
(2, 'switch2', '10 Ports PoE Switch', 'IEEE 802-3af/at power on up to 8 ports.\r\nSupply power to wireless access points and surveillance cameras over Cat-5/6 cabling.\r\n10x 10/100 Mbps Ports with AutoUplink™\r\nSupports PoE power up to 15.4W / 30W for each PoE port.\r\nSupports PoE power up to 150W for all PoE ports.\r\nSupports PoE IEEE 802-3af/at compliant PDs.\r\nSupports IEEE 802-3x flow control for Full-duplex Mode and backpressure for Half-duplex Mode.\r\n1K entry MAC address table of the PoE Switch with auto-learning and auto-aging.\r\nLED indicators for monitoring power.\r\nSupport VLAN Mode and Extend 250meters.\r\nInternal Power Adapter Supply 52V2-88A / 150W.\r\nPort Lightning Protection: General Mode 4KV, Differential Mode 2KV, ESD 15KV.', './img/airpro/poe switch/switch2.png', ' Flexible: Choose to plug in up to 8 Fast Ethernet devices and mix in up to 8 IEEE802.3af/at IP-based devices like wireless access points or IP-based network surveillance cameras. Place these IEEE802.3af/at-compliant devices where they belong â€“ high up on walls and ceiling for maximum coverage â€“ or anywhere else you need them. Power and data are carried over standard Cat 5/6 cabling.  Plug and Play: The standards-based PoE Switch senses and adjusts for network speed and cabling type automatically, for easy integration into your existing 10/100 Ethernet network. For PoE, the switch automatically detects IEEE802.3af/at-compliant devices, and supplies power as needed. Front panel LEDs keep you informed of switch and PoE status.  Quiet and Compact: Engineered for compact convenience, it durable metal case that is easily positioned on your desktop or a wall, using the included mounting hardware. The fan-less design quietly integrates with your small office environment.', './img/airpro/poe switch/1-2.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ES108P.pdf'),
(3, 'switch3', '8 Ports-2GE PoE Switch', 'IEEE 802-3af/at power on up to 8 ports.\r\nSupply power to wireless access points and surveillance cameras over Cat-5 cabling.\r\n8x 10/100 Mbps Ports with AutoUplinkâ„¢ with 2 Uplink 1000M.\r\nSupports PoE power up to 15.4W / 30W for each PoE port.\r\nSupports PoE IEEE 802-3af/at compliant PDs.\r\nSupports IEEE 802-3x flow control for Full-duplex Mode and backpressure for Half-duplex Mode.\r\nSupport VLAN Mode and Extend 250meters.\r\nInternal Power Adapter Supply 52V1.25A / 150W.\r\nPort Lightning Protection: General Mode 4KV, Differential Mode 2KV, ESD 8KV.', './img/airpro/poe switch/switch3.png', ' Flexible: Choose to plug in up to 8 Fast Ethernet devices and mix in up to 8 IEEE802.3af/at IP-based devices like wireless access points or IP-based network surveillance cameras. Place these IEEE802.3af/at-compliant devices where they belong â€“ high up on walls and ceiling for maximum coverage â€“ or anywhere else you need them. Power and data are carried over standard Cat 5 cabling.  Plug and Play: The standards-based PoE Switch senses and adjusts for network speed and cabling type automatically, for easy integration into your existing 10/100 Ethernet network. For PoE, the switch automatically detects IEEE802.3af/at-compliant devices, and supplies power as needed. Front panel LEDs keep you informed of switch and PoE status.  Quiet and Compact: Engineered for compact convenience, it durable metal case that is easily positioned on your desktop or a wall, using the included mounting hardware. The fan-less design quietly integrates with your small office environment.', './img/airpro/poe switch/1-3.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ES108P-2GE.pdf'),
(4, 'switch4', 'AP-ES1216, 19 Ports PoE Switch', 'Support IEEE802-3, IEEE802-3u, IEEE802-3x, IEEE802-3af / at, store and forward.\r\nSupports 16* 10 / 100M POE port and 2*Gigabit RJ45 ports+ 1* Gigabit SFP Fiber port.\r\nCompatible with IEEE802-3at (30W) and IEEE802-3af (15.4w).\r\nEthernet port supports 10 / 100M adaptive and POE functions.\r\nWith DIP switch support 10M transmission rate via cat.6 transmission distance of up to 250 meters.\r\nLED indicators for monitoring power, link, activity and speed.\r\nCompatible with 1U Rack-Mount Chassis Installation.\r\nSupport VLAN Mode and Extend 250meters.\r\nInternal Power Adapter Supply 52V5.76A / 300W.\r\nPort Lightning Protection: General Mode 6KV, Differential Mode 4KV, ESD 15KV.', './img/airpro/poe switch/switch4.png', ' AP-ES1216 19 ports POE Switch, Adapted high-quality high-speed network IC and the most stable POE chip, POE port to meet the IEEE802.3af / at standard, series of POE switches can be 10/100M Ethernet Network provides seamless connection, and POE power supply port can automatically detect IEEE802.3af / IEEE802.3at compliant power supply equipment and its power supply, Only transmit data for non-POE equipment.  POE technology (Power over Ethernet), it refers to some IP-based terminals (such as IP telephones, wireless access AP, network cameras, etc.) while transmitting data signals, but also for the device to provide DC power supply Technology, which receive DC power supply equipment called power receiving equipment.  This series of POE switches, using 16 POE ports + 2 uplink Gigabit Ethernet port+ 1 uplink Gigabit Fiber port, the uplink port is to connect with the network equipment which provide data.', './img/airpro/poe switch/1-4.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ES1216.pdf'),
(5, 'switch5', 'AP-ES1224, 24FE+2Gigabit 48V Ports PoE Switch with 24-Port PoE', '24 100Mbps Ports with 24 PoE,2 Gigabit Ports.\r\nSupports PoE power up to 30W for each port.\r\nSupports PoE IEEE 802-3af/at compliant PDs.\r\nInternal power adapter supply 250W.\r\nLED indicators for LINK/ACT, Power, PoE Status, 100/1000Mbps.\r\n8K entry MAC address table with auto-learning and auto-aging.', './img/airpro/poe switch/switch5.png', ' Air Pro 26-Port 100Mbps Switch with 24-Port PoE provides seamless network connection. It integrates 10/100Mbps Fast Ethernet network capabilities.  How This Product Works The 24 Auto-Negotiation RJ45 ports (port-1 to port-24) of the switch support Power over Ethernet (PoE) function. These PoE ports automatically detect and supply power to IEEE 802.3af/at compliant Powered Devices (PDs). In this position, the electrical power is transmitted along with data in one single cable allowing you to expand your network where there are no power lines or outlets, where you wish to fix devices such as APs, IP Cameras or IP Phones, etc.  Easy To Use It is easy to use as no specific configuration and installation is required. AP1224 comes with outstanding performance and quality, the 26-Port Gigabit Switch with 24-Port PoE is a great selection for expanding your home or office network.', './img/airpro/poe switch/1-5.png', 'https://airpro.in/wp-content/uploads/2017/03/AP1224.pdf'),
(6, 'switch6', 'AP-ES1024P, 27 Ports PoE Switch', 'Supports 24* 10 / 100M POE Ports + 2*Gigabit Ethernet Uplink Ports + 1* Gigabit SFP Uplink Port.\r\nSupport IEEE802-3, IEEE802-3u, IEEE802-3x, IEEE802-3af / at, store and forward.\r\nCompatible with IEEE802-3at (30W) and IEEE802-3af (15.4w).\r\nEthernet port supports 10 / 100M adaptive and POE functions.\r\nWith DIP Switch support 10M transmission rate via cat.6 transmission distance of up to 250 meters.\r\nLED indicators for monitoring power, link, activity and speed.\r\nCompatible with 1U Rack-Mount Chassis Installation.\r\nInternal Power Supply 52V5.76A / 400W.\r\nSupport VLAN Mode and Extend 250mtrs.', './img/airpro/poe switch/switch6.png', ' AirPro AP-ES1024P, 27 Ports POE Switch, Adapted high-quality high-speed network IC and the most stable POE chip, POE Port to meet the IEEE802.3af / at standard, this series of POE Switches can be 10/100M Ethernet Network provides seamless connection, and POE power supply port can automatically detect IEEE802.3af / IEEE802.3at compliant power supply equipment and Power on the devices.  POE technology (Power over Ethernet) , it refers to some IP-based terminals (such as IP telephones, wireless access AP, network cameras, etc.) while transmitting data signals, but also for the device to provide DC power supply Technology, which receive DC power supply equipment called power receiving equipment.  This series of POE Switches, using 24 * POE Ports + 2 * Gigabit Ethernet Uplink Ports + 1* Gigabit SFP  Uplink Port, the Uplink port is to connect with the network equipment which provide data.', './img/airpro/poe switch/1-6.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ES1024P.pdf'),
(7, 'switch7', 'AP-ESG1906P, 6 Ports PoE Giga Switch', 'Supply power to 5 classes Ethernet wireless access point (AP) and network surveillance cameras.\r\nPort 1 to port 4 compatible with IEEE802-3af/at standard power.\r\nSupply (Maximum power of each port is 30W).\r\n4x 10/100 /1000Mbps automatic adjustmentRJ45 ports.\r\nMeets the standards of the IEEE 802-3 /IEEE 802-3u/IEEE 802-3z and IEEE 802-3ab.\r\nFlow Control Type: Full duplex adopts IEEE 802-3x standard, half duplex adopts back pressure standard.\r\nAuto-flip ports (Auto MDI/MDIX).\r\nMaximum PoE Power: 96W.\r\nStore-and-forward architecture, 192K forwarding memory.\r\nAll ports support wire-speed switching, frame size within the range of 64 to 1536 can achieve wire-speed.\r\nAutomatic adjustment, plug and play, no need software and protocol conversion.', './img/airpro/poe switch/switch7.png', ' Flexible: Two High Speed Uplink Ports The built-in 2 Gigabit uplink ports provide fast connection to servers or the backplane of the gigabit speed. The effective connectivity of the four 10/100/1000Mbps ports, allows growing business networks, classrooms and workgroups to obtain benefits from the demand for superior performance and sustain network expansion. This high-performance switch features with non-blocking, wire-speed switching. All RJ45 ports can auto adjust the highest connection speed for a normal working, Auto Uplink â„¢ technology can ensure proper network connection.  Application Situations: â€¢    Million HD surveillance transmission and power supply. â€¢    Wireless AP distribution transmission and power supply. â€¢    VoIP transmission, intelligent home systems. â€¢    City intelligent traffic monitoring system (ITS), safe city, and wireless city. â€¢    Highway surveillance system, electronic road surveillance, snapshot system. â€¢    Large industrial factory & enterprise security surveillance system, network multifunction system.', './img/airpro/poe switch/1-7.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ESG1906P.pdf'),
(8, 'switch8', 'AP-ESG1906P-SF, 6 Ports PoE Giga Switch', 'Port 1 to port 4 compatible with IEEE802-3af/at standard power.\r\nSupply (Maximum power of each port is 15.4W).\r\n4x 10/100 /1000Mbps automatic adjustment RJ45 ports.\r\nMeets the standards of the IEEE 802-3 /IEEE 802-3u/IEEE 802-3z and IEEE 802-3ab.\r\nFlow Control Type: Full duplex adopts IEEE 802-3x standard, half duplex adopts back pressure standard.\r\nAuto-flip ports (Auto MDI/MDIX).\r\nNetwork port has lighting-proof function (AC power port: differential mode +/-2kV, common mode +/-4kV).\r\nMaximum PoE Power: 65W.\r\nStore-and-forward architecture, 192K forwarding memory .\r\nAll ports support wire-speed switching, frame size within the range of 64 to 1536 can achieve wire-speed.\r\nWall-mounted design, easy to install and use.\r\nAutomatic adjustment, plug and play, no need software and protocol conversion.', './img/airpro/poe switch/switch8.png', ' Flexible: Two High Speed Uplink Ports The built-in two Gigabit uplink ports provide fast connection to servers or the backplane of the gigabit speed. The effective connectivity of the four 10/100/1000Mbps ports, allows growing business networks, classrooms and workgroups to obtain benefits from the demand for superior performance and sustain network expansion. This high-performance switch features with non-blocking, wire-speed switching, and 8.8Gbps switching capacity. All RJ45 ports can auto adjust the highest connection speed for a normal working, Auto Uplink â„¢ technology can ensure proper network connection.  Application Situations: â€¢    Million HD surveillance transmission and power supply. â€¢    Wireless AP distribution transmission and power supply. â€¢    VoIP transmission, intelligent home systems. â€¢    City intelligent traffic monitoring system (ITS), safe city, and wireless city. â€¢    Highway surveillance system, electronic road surveillance, snapshot system. â€¢    Large industrial factory & enterprise security surveillance system, network multifunction system.', './img/airpro/poe switch/1-8.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ESG1906P-SF.pdf'),
(9, 'switch9', 'AP-ESG1910P-2GE, 10 Ports Gigabit PoE Switch', 'Desktop metal case, easy to set up.\r\n8*10/100/1000Mbps PoE Ports, 2*10/100/1000Mbps Up-Link Port.\r\n8 Gigabit PoE ports, comply with IEEE802-3af/at PD equipment.\r\nSupport PoE power up to 30W for IEEE802-3at PD equipment, up to 15W for IEEE 802-3af PD equipment.\r\nPort priority: if all PoE PD equipment power consumption become overloaded, a priority will be arranged among the PoE ports, then the system will cut off the power of the lowest-priority port.\r\nWith VLAN button, support port isolation.', './img/airpro/poe switch/switch9.png', ' AP-ESG1910-2GE is an 10 ports Gigabit PoE switch with Gigabit up-link ports and Gigabit PoE ports. Designed with desktop metal case, easy to make the transition to Gigabit Ethernet to wireless AP, IP camera, IP phone and other gigabit IEEE 802.3af/at standard PD equipment.  All 10 ports support auto-negotiation, auto MDI/MDIX and standard IEEE 802.3af/at POE, simply plug and play. With the innovative energy-efficient technology, users can choose the PoE switch according power consumption, making it an eco-friendly solution for home/business networking.', './img/airpro/poe switch/1-9.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ESG1910-2GE.pdf'),
(10, 'switch10', 'PoE Extender AP-PX411', 'Extender 100base-t Ethernet signal and power.\r\nRate is up to 100base-t, the transmission distance can reach 400 meters.\r\nWithout local power supply, remote device powered by 802.3af/at POE.\r\nShort circuit and overload protection surge protection.', './img/airpro/poe switch/switch10.jpg', ' The Poe extender AP-PX411 extends the Ethernet signal and power through Cat 6, A 100base-t port as powered port can support IEEE802.3af/at. A 100base-t port as pse port can support IEEE802.3af/at. Poe extender can extend 400M distance by using at least 3 units connection.', './img/airpro/poe switch/1-10.jpg', 'http://airpro.in/wp-content/uploads/2017/03/AP-PX411.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `airpro_wlan_aps`
--

CREATE TABLE `airpro_wlan_aps` (
  `id` int(30) NOT NULL,
  `product_id` varchar(300) NOT NULL DEFAULT 'airpro',
  `name` varchar(300) NOT NULL,
  `specification` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(30) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airpro_wlan_aps`
--

INSERT INTO `airpro_wlan_aps` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(2, 'airpro2', 'AirPro XDS9510 300mW, 300Mbps Ceiling Mount AP', '300mW, High Power 300Mbps Access Point.\r\n2*5 dbi MIMO Antenna.\r\nWPA/WPA2 encryptions for defence against security threats.\r\nSeamlessly compatible with 802.11b/g/n devices.\r\nSupports 48V/1A PoE.\r\nSupport Multiple SSID.\r\nSupport 802.1Q VLAN.\r\n', './img/airpro/airpro2.png', ' AirPro XDS9510 is a smart type Indoor Ceiling Access Point; it is designed for home environment or business-class, such as hotels, coffee houses, shops, university campuses, etc. XDS9510 works on 2T2R 2.4GHz MIMO technology, which provides access to a maximum 32 users at a time with a data rate of 300mbps. It comes with aesthetic ceiling design and can be deployed on the ceiling or crawlspaces. Integration with 802.3af PoE allows installation of XDS9510 in the areas where power outlets are not readily available.  Key Features: 300Mbps High SpeedXDS9510 is compliant with IEEE 802.11b/g/n, providing speed of 300Mbps at 2.4G frequency, thereby making the transfer of files faster and video streaming smoothly. Simply have fun and link your world with this wireless device. Power over Ethernet:XDS9510 features a PoE port on the back panel, which permits both power and data to be carried over a single Ethernet cable with the PoE adapter or PoE switch. Additionally, this device can be deployed in area where power outlets are scarce or not available. Multi Operation Mode to Meet Different Requirements:The XDS9510 comes with Wireless Access Point, Router and Wi-Fi repeater operation mode and can be used to extend existing Wi-Fi signals, Wi-Fi coverage or as a home router. Support AC management, VLAN and Easy to Manage:XDS9510 works with VLAN switches, to create a separate SSID with different VLAN for networking safety. In addition, it works with AC controller to do centralized management of IP address distribute, SSID, password, channel, RF power modify, etc.  If required, this wireless AP can access into a cloud server for remote management, advertisement, captive portal authentication, making it more professional in a business environment.', './img/airpro/1-2.png', 'http://airpro.in/wp-content/uploads/2017/03/ceiling-mount-XD9510.pdf'),
(31, 'airpro4', 'Air-M600, 600Mbps High Power Ceiling Mount AP', 'High Power 600Mbps Access Point.\r\n4*5 dbi MIMO Antenna.\r\nWPA/WPA2 encryptions for defence against security threats.\r\nSeamlessly compatible with 802-11b/g/n devices.\r\nSupports 24V/1A PoE.\r\nSupport Multiple SSID.\r\nSupport 802-1Q VLAN.', './img/airpro/airpro4.png', ' AirPro M600 is a new ceiling style wireless access point, comes with 600Mbps high speed. It works on MIMO technology featuring 4*5dBi antenna and 500mW high power, the Wi-Fi range is 5 times more than a standard wireless access point.  It supports PoE and works with Air Pro Access Controller System, the best choice for a large area Wi-Fi solution. M600 comes with todayâ€™s most advanced wireless technology, i.e. Wireless-N that uses 4X4 MIMO for increasing speed and bandwidth, allowing 60~100 users to share internet access, files and printing. Apart from this, user can enjoy media-intensive activities like gaming, video and voice-over-IP phone calls all at once, with less lag and performance degradation.', './img/airpro/1-4.png', 'https://airpro.in/wp-content/uploads/2017/03/datasheet-ceiling-mount-600mbps-1.pdf'),
(32, 'airpro5', 'Air-M750, 750Mbps Dual Band High Power Ceiling Mount AP', 'High Power AC Dual Band 750Mbps Access Point.\r\n3*5 dbi MIMO Antenna.\r\nWPA/WPA2 encryptions for defence against security threats.\r\nSeamlessly compatible with 802-11b/g/n devices.\r\nSupports 24V/1A PoE.\r\nSupport Multiple SSID.\r\nSupport 802-1Q VLAN.', './img/airpro/airpro5.png', ' AirPro AIR M750 is a 11ac Ceiling Wireless Access Point based on SNMP/CAPWAP Protocol, it is designed specifically to operate in Residential and commercial applications. Complies with IEEE 802.11ac/n/g/b standard and comes with dual radio, i.e. 2.4GHz and 5GHz, allows more than 100 users to enjoy more stable and faster Ethernet surfing with a data rate of up to 733Mbps (300Mbps in 2.4G, 433Mbps in 5G).  It comes equipped with Qualcomm Chipset, 500mW high RF Power and high gain 5dBi antenna. The Wi-Fi range is 4 times more than a normal wireless router or wireless access point. Tested, provides full Wi-Fi signals to 6 hotel rooms.  Built with advanced Wi-Fi channel analysis tool as it comes with adjustable RF Power, client isolation, tag VLAN and it can be applied in a different environment for stability and safety performance.  Centrally managed by WLAN control, works with PoE switch, it is plug and play, zero configuration in large quantity installation. Additionally, provides access into a cloud server for remote management, advertisement and captive portal authentication like Facebook Login, Google Login, Member Login and SMS Login.  Applications This dual radio, high power and high speed wireless Access Point can be deployed in a wide array of situations for both residential and commercial applications.  Residential Applications: Available with DC Power, comes with adjustable RF Power based on room range, also support gateway operation mode, eliminating need of a wireless router. Additionally, support cloud server access for remote control and provides effective wireless connectivity.  Commercial Applications: Supports PoE, comes with High RF Power and provides Wi-Fi signals to 6 hotel rooms, 100+ end users; works as a wireless AP and is managed by WLAN Controller. Air Pro AIR M750 can be used in hotel, school, and shopping mall in mass installation.', './img/airpro/1-5.png', 'https://airpro.in/wp-content/uploads/2017/03/datasheet-ceiling-mount-750mbps-1.pdf'),
(29, 'airpro1', 'AirPro XDS100 100mW, 300Mbps Ceiling Mount AP', '300Mbps High Speed.\r\nPower Over Ethernet 802-3af.\r\nMulti Operation mode to meet with different requirement : AP/Router/Repeater.\r\nSupport AC Management, VLAN, Easy to manage.', './img/airpro/airpro1.png', ' AirPro XDS100 is a smart type Indoor Ceiling Access Point, designed specifically for Home and Business, including Hotels, Coffee House, Shops, University Campus and so forth. XDS100 works on 2T2R 2.4GHz MIMO technology, allowing access to maximum 32 users at a time with a data rate of 300mbps. It comes with aesthetic ceiling design and can be deployed on the ceiling or crawlspaces. Integration with 802.3af PoE allows XDS100 installation in the areas where power outlets are not promptly accessible.', './img/airpro/1-1.jpg', 'http://airpro.in/wp-content/uploads/2017/03/ceiling-mount-XDS100-100Mw.pdf'),
(30, 'airpro3', 'AirPro XDS9500s 500mW, 300Mbps High Speed', 'High Power 300Mbps Access Point.\r\n2*5 dbi MIMO Antenna.\r\nWPA/WPA2 encryptions for defence against security threats.\r\nSeamlessly compatible with 802-11b/g/n devices.\r\nSupports 24V/1A PoE.\r\nSupport Multiple SSID.\r\nSupport 802-1Q VLAN.', './img/airpro/airpro3.png', ' AirPro XDS9500S is a 300Mbps High power Ceiling Wireless Access Point with Qualcomm QCA9531 Chipset. It Complies with IEEE 802.11b/g/n standard, providing Internet access at a data rate of 300Mbps, featuring MIMO omni antenna inside with the 500mW high RF power together with PoE, and making it easy to set up in different environments.  XDS9500S is designed specifically for business-class environments, such as hotels, airports, coffee shops, shopping centers, sporting venues and university campus. It comes with Ceiling Mount case, Qualcomm chipset hardware, 16M Flash, 64M DDR2. Firmware works with AC controller for central management and captive portal authentication function.  Stylish Ceiling Mount Design Housed in stylish ceiling mountable case, XDS9500S can be installed on a ceiling or wall; it blends nicely with most interior decorations in a modern hotel. As it is installed high on the ceiling, it extends optimum wireless signal to multiple neighboring rooms and better heat radiations.  High Power and Whole Coverage XDS9500S comes with 500mW high power and is internally equipped with 2X2 multiple-input, multiple-output (MIMO) 5dBi omni antennas, help improving frequency range and maximizing data rates. At an indoor operating range of 40-50 meters, wirelessly covers 6~8 hotel rooms and allows simultaneous access to upto 50 users with a data rate of upto 300Mbps, ensuring sufficient level of service to many users.  Power over Ethernet The device has integrated Power over Ethernet (PoE) for easy installation and is available at affordable cost. Therefore, it can be installed in areas where power outlets are not promptly accessible, thereby eliminating the mess of altering existing network infrastructure. But please note XDS9500S supports 24V Passive PoE or 48V IEEE 802.3af PoE.  WLAN Controller & Cloud Server Support XDS9500S works with Access Control System, allows easy access to advanced network settings through PC, including AP status monitor, change IP address, ESSID, channel, password, upgrade firmware, backup and restore, etc.  Also, this wireless access point works with Cloud Server, providing easy remote management, advertisement and captive portal authentication. Additionally, the billing function is likely to be included in the near future, which makes this AP more professional in Wi-Fi Projects.', './img/airpro/1-3.png', 'http://airpro.in/wp-content/uploads/2017/03/ceiling-mount-300mbps-XDS-9500-S.pdf'),
(33, 'airpro6', 'Air-M1200, 1200Mbps Dual Band Ceiling Mount AP', 'Comply with IEEE 802-11ac/b/g/n, dual band, 1200Mbps Data Rate.\r\n1 10/100/1000Mbps WAN Portï¼Œ 1 10/100/1000Mbps LAN Port, faster Ethernet.\r\n1000mW high power, build in 5dBi MIMO antenna, stronger signal strength, more wireless coverage, 16M Flash, 128M DDR2 RAM, more user, more stable.\r\nSupport active IEEE 802-3at 48V POE standard.\r\nSupport SSID broadcasting, Multi SSID up to 8 (4 SSID in 2-4GHz, 4 SSID in 5GHz).\r\nSupport Gateway (PPPOE, static IP, dynamic IP) , Wireless AP, Repeater, WISP operation mode.\r\nWith function of build in firewall, IP filter, URL filter and MAC filter.\r\nComply with IEEE 802-3az standard, RF power adjustment and frequency analyzer for better application in different environment.\r\nSupport DDNS, VPN pass through, Port forwarding and DMZ host.\r\nSupport 64/128-bit WEP security, EAP, 128bit WPA (TKIP/AES) security.', './img/airpro/airpro6.jpg', ' AirPro AIR M1200 is a Qualcomm Chipset high power industrial Ceiling Wireless Access Point with next generation 802.11ac Wi-Fi standard, support Wave2, comes equipped with Gigabit WAN & LAN port, combines 1200Mbps Wi-Fi speed over 2.4GHz(300Mbps) and 5GHz(900Mbps). At Fast Ethernet data rate allows more than 100 users to access into XD4200 and enjoy uninterrupted HD movies, online games, wireless security and other bandwidth-intensive tasks. It is ideal for use in schools, hospitals, hotels, offices, shopping malls etc.  High Power for More Range and Stable Signal Designed on the PCB board with two-row power amplifier and comes with 1000mW high power, 5 dBi MIMO high gain antenna, along with roof mount, which greatly increases the wireless range and provides a stable Wi-Fi signal to the users.  Wave 2 Technology With Wave 2 technology, it adopts 256 QAM modulation supports MU-MIMO (Multi-user multiple-input and multiple-output), 160 MHz frequency, make significant improvements in communication efficiency.  Power over Ethernet XD4200 has integrated IEEE802.3 at Power over Ethernet (PoE) for easy installation and is available at affordable cost. Therefore, it can be installed in areas where power outlets are not promptly accessible, thereby eliminating the mess of altering existing network infrastructure.  Access Controller System & Cloud Management System It works with Access Control System, allows easy access to advanced network settings through PC, including AP status monitor, change IP address, ESSID, channel, password, upgrade firmware, backup and restore, etc.  Additionally, it works with Cloud Management System, providing easy central and remote management, advertisement and multiple captive portal authentication, which makes this AP more professional in Wi-Fi Projects.', './img/airpro/1-6.png', 'http://airpro.in/wp-content/uploads/2017/03/datasheet-ceiling-mount-1200mbps.pdf'),
(34, 'airpro7', 'AirPro AP-WAC2100, 1200Mbps WAVE2 11ac Ceiling Mount AP', 'Comply with IEEE 802-11ac/b/g/n, dual band, 1200Mbps Data Rate, 2x2 MIMO Technology.\r\n1*10/100/1000Mbps WAN Port, 1*10/100Mbps LAN Port, faster Ethernet.\r\nSupport active IEEE 802-3af 48V PoE standard.\r\nSupport SSID broadcasting, Multi SSID up to 8 (4 SSID in 2-4GHz, 4 SSID in 5GHz).\r\nSupport Gateway (PPPOE, static IP, dynamic IP) , Wireless AP, Repeater, WISP operation mode in FAT AP.\r\nWith function of build in firewall, IP filter, URL filter and MAC filter\r\nComply with IEEE 802-3az standard, RF power adjustment and frequency analyzer for better application in different environment.', './img/airpro/airpro7.png', ' AP-WAC2100 is an 11ac Wi-Fi standard Realtek Chipset high power Ceiling Wireless Access Point support Wave2, combined 1200Mbps Wi-Fi speed over 2.4GHz(300Mbps) and 5GHz(900Mbps), Gigabit WAN port, make more wireless users can access into it. It is an economic option for hotel, school, restaurant or other enterprise places.  FIT/FAT Operation Mode AP-WAC2100 support FIT/FAT operation mode;  FIT AP mode works with AC controller, plug and play, central management by AC controller, mostly for enterprise application.  FAT AP mode supports AP, repeater, gateway, WISP operation mode, can be configured by GUI, suits for home mostly.  Wave 2 MU-MIMO Technology With Wave 2 Technology, it adopts 256QAM modulation, supports MU-MIMO (Multi-User Multiple-Input Multiple-Output), 4 Spatial steams greatly improves the communication efficiency.  Power over Ethernet APWAC2100 has integrated IEEE802.3af Power over Ethernet (PoE), for easy installation and lower cost. So it can be installed in areas where power outlets are not readily available, eliminating the mess of altering existing network infrastructure.  Zero Configurations Supports FIT/FAT AP together, works with Airpro WLAN Controller, configures IP address, ESSID, Channel, Password, upgrade firmware, backup and restore. Besides that, it supports advertisements and authentication functions like WeChat/Google/SMS/Facebook/Member Authentication.  WLAN controller is easy for administrator accessto do remote monitoring/management at any time and any place, makes this AP and WLAN controller more professional and cost effective in Wi-Fi Projects.', './img/airpro/1-7.png', 'https://airpro.in/wp-content/uploads/2019/12/AP-WAC2100.pdf'),
(35, 'airpro8', 'AirPro AIR-VEGA, 1300Mbps WAVE2 11ac Ceiling Wireless AP', 'Comply with IEEE 802-11ac/b/g/n, dual band,1300Mbps Data Rate.\r\n1*10/100/1000Mbps WAN Port, 1*10/100/1000Mbps LAN Port, faster Ethernet.\r\n500mW high power, build in 5dBi MIMO antenna, stronger signal strength, more wireless coverage, 32M Flash, 512M DDR3 RAM, more user, more stable.\r\nSupport active IEEE 802-3at 48V PoE standard.\r\nSupport SSID broadcasting, Multi SSID up to 16 (8 SSID in 2-4GHz, 8 SSID in 5GHz).\r\nSupport Gateway (PPPOE, static IP, dynamic IP) , Wireless AP, Repeater, WISP operation mode.\r\nWith function of build in firewall, IP filter, URL filter and MAC filter.\r\nComply with IEEE 802-3az standard, RF power adjustment and frequency analyzer for better application in different environment.\r\nSupport DDNS, VPN pass through, Port forwarding and DMZ host.\r\nSupport 64/128-bit WEP security, EAP, 128bit WPA (TKIP/AES) security.', './img/airpro/airpro8.png', ' AIR-VEGA an MU-MIMO 11ac Wi-Fi standard Qualcomm Chipset high power industrial Ceiling Wireless Access Point support Wave2.0. Combined of 1300Mbps Wi-Fi speed over 2 radios: 2.4GHz (400Mbps)+5GHz(900Mbps)), equipped Gigabit WAN & LAN port, fast Ethernet data rate make more than 100 end users can access into AIR-VEGAwith Gigabit Ethernet, make them to enjoy seamless HD movies, streaming, online gaming, wireless security and other bandwidth-intensive tasks, widely be used in school, hospital, hotel, office, shipping mallâ€¦  HIGH POWER FOR MORE RANGE AND STABLE SIGNAL Designed in Power Amplifier on PCB board, the power can be 500mW high power, 5dBi MIMO high gain antenna, together with Ceiling mount, greatly increase the wireless range and supply the stable Wi-Fi signal for users.  METAL CASE, PERFECT HEAT DISSIPATION TO EXTEND THE WORKING LIFE The bottom shell with metal shell, improved the heat dissipation function, make it work as normal in -30Â°C to 70Â°C, extend the device working life.  MU-MIMO, WAVE2.0 TECHNOLOGY Comply with Wave2.0 Technology, it adopt 256QAM modulation, support MU-MIMO (Multi-User Multiple-Input Multiple-Output), 8 Spatial Steams, greatly to improved the communication efficiency.  BEAMFRORMING, DFS, AIRTIME FAIRNESS, BAND STEERING, OFDM SUPPORT AIR-VEGA support many functions like Beamfrorming, DFS(Dynamic Frequency Selection), Airtime Fairness, Band Steering ( 5G Prior), OFDM (Orthogonal Frequency Division Multiplexing), RF Power adjustable to improve the performance and Wi-Fi stability.  POWER OVER ETHERNET AND DC POWER AVAILABLE AIR-VEGA has integrated IEEE802.3at Power over Ethernet (PoE), for easy installation and lower cost. Whatâ€™s more, it support DC input if need, So it can be installed in areas where power outlets are not readily available, eliminating the mess of altering existing network infrastructure.  ACCESS CONTROLLER SYSTEM & CLOUD MANAGEMENT SYSTEM With Access Control System, plug and play, zero configure the APâ€™s IP address, ESSID, Channel, Password, upgrade firmware, backup and restoreâ€¦.Whatâ€™s more, the AC controller with local authentication function, easy to do advertisement and captive portal authentication like Member/WeChat/SMS login. Besides that, administrator can remote manage through AC controller or cloud server at any place/time, simple and cost save in maintenance.', '', 'https://airpro.in/wp-content/uploads/2020/01/Air-Vega.pdf'),
(36, 'airpro9', 'AirPro AIR-CANOPUS, 2200Mbps WAVE2 11ac Ceiling Mount AP', 'Comply with IEEE 802-11ac/b/g/n, tri-band, 2200Mbps Data Rate.\r\n1*10/100/1000Mbps WAN Port, 1*10/100/1000Mbps LAN Port, Gigabit Ethernet.\r\n500mW high power, build in 5dBi MIMO antenna, stronger signal strength, more wireless coverage, 32M Flash, 512M DDR3 RAM, more user, more stable.\r\nSupport active IEEE 802-3at 48V PoE standard.\r\nSupport SSID broadcasting, Multi SSID up to 12 (4 SSID in 2-4GHz, 8 SSID in 5GHz).\r\nSupport Gateway (PPPOE, static IP, dynamic IP) , Wireless AP, Repeater, WISP operation mode.\r\nWith function of build in firewall, IP filter, URL filter and MAC filter.\r\nComply with IEEE 802-3az standard, RF power adjustment and frequency analyzer for better application in different environment.\r\nSupport DDNS, VPN pass through, Port forwarding and DMZ host.\r\nSupport 64/128-bit WEP security, EAP, 128bit WPA (TKIP/AES) security.', './img/airpro/airpro9.png', ' Air Canopus is an 11ac Wi-Fi standardQualcomm Chipset high power 4*4 MIMO industrial Ceiling Wireless Access Point support MU-MIMO, Wave2.0.Combined 2200Mbps Wi-Fi speed over 3 radios: 2.4GHz(400Mbps)+5GHz(900Mbps)+5GHz(900Mbps), equipped Gigabit WAN & LAN port, fast Ethernet data rate make more than 200 end users can access into Air Canopus with faster speed, make them to enjoy seamless HD movies, streaming, online gaming, wireless security and other bandwidth-intensive tasks, widely be used in school, hospital, hotel, office, shipping mallâ€¦  HIGH POWER FOR MORE RANGE AND STABLE SIGNAL: Designed in Power Amplifier on PCB board, the power can be 500mW high power, 5dBi MIMO high gain antenna, together with Ceiling mount, greatly increase the wireless range and supply the stable Wi-Fi signal for users.  METAL CASE, PERFECT HEAT DISSIPATION TO EXTEND THE WORKING LIFE: The bottom shell with metal shell, improved the heat dissipation function, make it work as normal in -30Â°C to 70Â°C, extend the device working life.  WAVE 2 TECHNOLOGY: With Wave 2 Technology, it adopt 256QAM modulation, support MU-MIMO (Multi-User Multiple-Input Multiple-Output), 8 Spatial Steams, greatly to improve the communication efficiency.  POWER OVER ETHERNET AND DC POWER AVAILABLE: Air Canopus has integrated IEEE802.3at Power over Ethernet (PoE), for easy installation and lower cost. Whatâ€™s more, it support DC input if need, So it can be installed in areas where power outlets are not readily available, eliminating the mess of altering existing network infrastructure  ACCESS CONTROLLER SYSTEM & CLOUD MANAGEMENT SYSTEM: With Access Control System, plug and play, zero configure the APâ€™s IP address, ESSID, Channel, Password, upgrade firmware, backup and restore. Whatâ€™s more, the AC controller with local authentication function, easy to do advertisement and captive portal authentication like Member/WeChat/SMS login. Besides that, administrator can remote manage the AC controller or wireless AP at any place/time, simple and cost save in maintenance.', './img/airpro/1-9.png', 'https://airpro.in/wp-content/uploads/2020/02/Air-Canopus.pdf'),
(41, 'airpro12', 'WAP1200, WALL AP', 'In Wall Panel Design.\r\nWireless N and 300Mbps Speed.\r\nPower over Ethernet.\r\nRJ11 Port for Telephone Function.\r\nSupport Multiple SSID and VLAN TAG.\r\nCentralized Management and through controller.', './img/airpro/airpro12.png', ' AirPro WAP1100 is an in wall AP with Qualcomm chipset, which provides Internet access at a data rate of 300Mbps. It is designed mainly for Hotel to provide guests and roomers secure Internet access and phone line connection in their hotel room, guest room, living room and lobby.  It supports 802.3af PoE, compliant with any 802.3af Power over Ethernet equipment, easy to install and provides complete Wi-Fi coverage.  Managed by WLAN controller, easy to configure data centrally or remotely; also it works with cloud server for portal authentication and advertisement function.  Main Features: In Wall Panel Design: Matches with cassette size of 86mm or 75mm, effortlessly provide Wi-Fi and matches with design style. Wireless N and 300Mbps Speed : Compliant with IEEE 802.11b/g/n standard; comes with a data rate of 300Mbps providing the seamless internet surf and faster downloads. Power over Ethernet: It supports 802.3af PoE, can be powered by any 802.3af Power over Ethernet equipment, making it a cost-effective solution. RJ11 Port for Telephone Function: At front WAP1100 features RJ11 port, to work with telephone from the hotel management system, additionally saving wiring cost. Support Multiple SSID and VLAN TAG: AirPro WAP1100 supports 4 SSID; each SSID can be tagged for a specified network VLAN for different user access, based on established access rights and internet safety. Centralized Management and through controller: It supports WLAN controller for centralized management, allowing IT staff to set up separate IP addresses, ESSID and manages APâ€™s of each room at the same time. Also, they can remotely add, set up, monitor, delete and upgrade firmware via the WLAN controller through computer. Additionally, it works with the cloud server for remote management, then with function of accounting, Facebook / Google authentication, SMS verification and so on.', '', ''),
(39, 'airpro10', 'WAP100, 300Mbps Wall Mount Wireless Access Point', 'In wall design with touchable glass screen, matches with cassette size of 86mm, easy to attach at home/hotel socket cover, looks stunning when embedded with modern decoration style.\r\nCompliant with IEEE 802-11b/g/n standard, comes with a data rate of 300Mbps providing the seamless Internet surf and faster downloads.\r\nRJ45 port on the back panel of the WAP100 supports IEEE 802-3AF 48V POE, which allows both power and data to be transported over an Ethernet cable, making it cost effective and can be setup easily at the right places.', './img/airpro/airpro10.png', ' AirPro WAP100 is a wall plate design Wireless AP featuring power touchable glass screen. It is designed principally for home, apartments and hotel rooms to provide users with more security, high speed and most stable Internet access at a data rate of 300Mbps; additionally, saving power for environment protection at the same time.  Main Features: In wall design with touchable glass screen, matches with cassette size of 86mm, easy to attach at home/hotel socket cover, looks stunning when embedded with modern decoration style. Compliant with IEEE 802.11b/g/n standard, comes with a data rate of 300Mbps providing the seamless Internet surf and faster downloads. RJ45 port on the back panel of the WAP100 supports IEEE 802.3AF 48V POE, which allows both power and data to be transported over an Ethernet cable, making it cost effective and can be setup easily at the right places. It supports Wi-Fi Roaming, and Smart Channel Analysis to make a device work steadily, providing 5 star Wi-Fi Internet experience to each customer. Supports 802.1Q tag VLAN and Multi SSID, there are 4 SSID, each SSID supports tag VLAN, allowing IT staff to assign different users with different SSID, banding different Ethernet data and security method to ensure the networking safety. Supports AC Controller and cloud server for central or remote management, even home maintenance is very easy. In addition, it complies with our gateway, which can supply advertisement and captive portal authentication like Google / Facebook / SMS / Member Login for shop, hotel, restaurant, etc. If required WAP100 can work with CAPWAP protocol. It works with WLAN controller, zero and plug and play configurations.', './img/airpro/1-10.png', 'https://airpro.in/wp-content/uploads/2017/04/WAP100.pdf'),
(40, 'airpro11', 'WAP1100, WALL AP', 'In Wall Panel Design.\r\nWireless N and 300Mbps Speed.\r\nPower over Ethernet.\r\nRJ11 Port for Telephone Function.\r\nSupport Multiple SSID and VLAN TAG.\r\nCentralized Management and through controller.', './img/airpro/airpro11.png', ' AirPro WAP1100 is an in wall AP with Qualcomm chipset, which provides Internet access at a data rate of 300Mbps. It is designed mainly for Hotel to provide guests and roomers secure Internet access and phone line connection in their hotel room, guest room, living room and lobby.  It supports 802.3af PoE, compliant with any 802.3af Power over Ethernet equipment, easy to install and provides complete Wi-Fi coverage.  Managed by WLAN controller, easy to configure data centrally or remotely; also it works with cloud server for portal authentication and advertisement function.  Main Features: In Wall Panel Design: Matches with cassette size of 86mm or 75mm, effortlessly provide Wi-Fi and matches with design style. Wireless N and 300Mbps Speed : Compliant with IEEE 802.11b/g/n standard; comes with a data rate of 300Mbps providing the seamless internet surf and faster downloads. Power over Ethernet: It supports 802.3af PoE, can be powered by any 802.3af Power over Ethernet equipment, making it a cost-effective solution. RJ11 Port for Telephone Function: At front WAP1100 features RJ11 port, to work with telephone from the hotel management system, additionally saving wiring cost. Support Multiple SSID and VLAN TAG: AirPro WAP1100 supports 4 SSID; each SSID can be tagged for a specified network VLAN for different user access, based on established access rights and internet safety. Centralized Management and through controller: It supports WLAN controller for centralized management, allowing IT staff to set up separate IP addresses, ESSID and manages APâ€™s of each room at the same time. Also, they can remotely add, set up, monitor, delete and upgrade firmware via the WLAN controller through computer. Additionally, it works with the cloud server for remote management, then with function of accounting, Facebook / Google authentication, SMS verification and so on.', './img/airpro/1-11.png', 'https://airpro.in/wp-content/uploads/2017/04/WAP1100.pdf'),
(42, 'airpro13', 'WAP2750E, 750Mbps Dual Band Wall Mount Wireless AP', 'Compatible with 802-11ac wireless technology, work with 802-11ac/b/g/n device.\r\n1 * 10/100Mbps WAN port, 1 * 10/100Mbps LAN port, WAN port support IEEE 802-3af PoE.\r\nSimultaneous Dual-Band with speeds up to 750Mbps at 2-4GHz and 5GHz band concurrently\r\n16M Flash + 128M DDRII RAM, more stable performance in wireless.\r\nEasy setup, remote and central managed by access controller system and Cloud management system.', './img/airpro/airpro13.png', ' Description AirPro WAP2750E is an SNMP protocol based 11ac Wall Mount style Wireless Access Point. Upgrade to the latest wireless-AC technology and enjoy the seamless internet at fast data rates (433Mbps in 5G and 300Mbps in 2.4GHz), dual band allows seamless stream, faster content download and quickly sync large video or music files. It comes embedded with PoE, providing a steady wireless network in Hotel, School and Hospital. Additionally, it works with AirPro Access Controller system and cloud management system providing easy central configuration, meet with different advertisement and multi authentication requirements, which makes it a professional and cost effective solution for large area Wi-Fi.  Wireless AC Technology The WAP2750E is a dual band wall mount Wireless Access Point offering wireless-AC technology for seamless/smoother video and music streaming, with this technology several users can share data over the Wi-Fi networks and can even watch online Internet-ready TV, play games and other Wi-Fi devices can access into this wireless networking at transfer rates of up to 750Mbps speed.  Dual Band, Less Interference Double your network bandwidth with this Dual-Band AC (2.4G and 5G) which is designed to avoid interference and maximize throughput. You can browse web pages, handle mails and chat over 2.4G, while enjoying lag-free HD multimedia and online gaming over 5G without worrying about any interference.  Power over Ethernet WAP2750E AC AP has integrated with IEEE 802.3af standard Power over Ethernet (PoE), for easy installation and is available at affordable cost. Therefore, it can be installed in areas where power outlets are not promptly accessible, thereby eliminating the mess of altering existing network infrastructure.  Access Controller System & Cloud Management System WAP2750E works with Access Control System, allows easy access to advanced network settings through PC, including AP status monitor, change IP address, ESSID, channel, password, upgrade firmware, backup and restore, etc.  Additionally, it works with Cloud Management System, providing easy central and remote management, advertisement and multi authentication. Also, the billing function is likely to be included in the near future, which makes this AP more professional in Wi-Fi Projects.  Main Features: Compatible with 802.11ac wireless technology, work with 802.11ac/b/g/n device 1 * 10/100Mbps WAN port, 1 * 10/100Mbps LAN port, WAN port support IEEE 802.3af PoE. Simultaneous Dual-Band with speeds up to 750Mbps at 2.4GHz and 5GHz band concurrently 16M Flash + 128M DDRII RAM, more stable performance in wireless Easy setup, remote and central managed by access controller system and Cloud management system', './img/airpro/1-13.png', 'https://airpro.in/wp-content/uploads/2018/04/WAP2750E.pdf'),
(43, 'airpro14', 'AP-WLC1500, Wireless Lan Controller', 'Multi Gigabit WAN with load balance function.\r\nFlow Control function (QoS).\r\nAccess into Cloud Server for Remote Management, Captive Portal authentication, advertisement and accounting functions.\r\nMulti firewall and simple behavior functions.', './img/airpro/airpro14.png', ' AP-WLC1500 is a small-scale enterprise gateway with Gigabit WAN ports up to 4 and 1Gigabit LAN port, Gigabit transfer improved the Ethernet speed and increased the concurrent end users to 150; It can access into cloud server for remote management and multiple captive portal authentication such as SMS, Facebook, Google, member login method, to apply this device into shopping mall, restaurant for advertisement.  Besides that, WAC1500 is an AC controller to manage, configure and monitor 100 wireless access pointssimultaneous, very easy to set up this desktop class AC controller  Gateway operation mode functions: A. Multi Gigabit WAN with load balance function WAC 1500 support PPPoE/DHCP/Static IP, work with different ISP and max 150 end users can access into it. with multiple Gigabit WAN ports up to 4 in hardware, then load balance function for this WAN Ethernet to avoid bandwidth overload, or recover the dropped networking line to ensure the whole networking smoothly; Besides that, it support Ethernet Line backup function to keep Ethernet in working status all the time; Support Ethernet superimposed based on multi-WAN.  B. Flow Control function (QoS) Based on the IEEE 802.11e standard, it provides Quality of Service(QoS) features to end users according to IP/MAC address;Besides that, it can control the flow after set priority for instant messaging service, download, video or officeâ€¦  C. Access into Cloud Server for Remote Management, Captive Portal authentication, advertisement and accounting functions WAC1500 can access into cloud server when work as gateway for remote management and captive portal:  Through cloud server, administrator easy to reset/reboot/delete WAC1500 or the connected wireless AP remotely, then track/collect the end userâ€™s information for second sale.  It is easy for administrator to promote the advertisement to end users based on captive portal like SMS authentication, Facebook/Google/member authentication; Or collect the Ethernet cost after set up a stable public Wi-Fi.  D. Multi firewall and simple behavior functions WAC1500 support port forwarding, URL Filter, IP Filter, MAC Filter, DMZ, DDNS functions to protect the networking safety, besides that, it support behavior based on IP group and time group to improve the performance and bandwidth efficiency.  Wireless AP Management functions: Assign IP address for wireless AP to avoid IP address conflict and easy management.  Mark Wireless APâ€™s location and name to examine networking problem faster; Add Zero Config group before power on wireless AP, then wireless AP will get this groupâ€™s SSID, password channel, bandwidth, and RF power and so on without any config;  Or config Wireless APâ€™s SSID, password, tag VLAN, channel, end users QTY, client isolationâ€¦ One by one or in group based on requirement.  Firmware upgrade, Reset/reboot/delete/back up wireless AP in batch or one by one based on web management or cloud management.', './img/airpro/1-14.png', ''),
(44, 'airpro15', 'AP-WLC2000, Wireless Lan Controller', 'Multi Gigabit WAN with load balance function.\r\nFlow Control function (QoS).\r\nAccess into Cloud Server for Remote Management, Captive Portal authentication, advertisement and accounting functions.\r\nMulti firewall and simple behavior functions.\r\n', './img/airpro/airpro15.png', ' AP-WLC2000 is a middle-scale enterprise gateway with Gigabit WAN ports up to 4 and 1 Gigabit LAN port improved the Ethernet speed and increased the concurrent end users to 200; It can access into cloud server for remote management and multiple captive portal authentication such as SMS, Facebook, Google, member login method, to apply this device into shopping mall, restaurant for advertisement and second time selling.  Besides that, AP-WLC2000 is an AC controller to manage, control and monitor 200PCS wireless access point in the same networking diagram simultaneous, very easy to set up this desktop AC controller, then to keep the whole networking stability.  Gateway operation mode functions: 1. Multi Gigabit WAN with load balance function AP-WLC2000 support PPPoE/DHCP/Static IP, work with different ISP and max 200 end users can access into it.  with multiple Gigabit WAN ports up to 4 in hardware, then load balance function for this WAN Ethernet to avoid bandwidth overload, or recover the dropped networking line to ensure the whole networking smoothly; Besides that, it support Ethernet Line backup function to keep Ethernet in working status all the time; Support Ethernet superimposed based on multi-WAN.  2. Flow Control function (QoS) Based on the IEEE 802.11e standard, it provides basic Quality of Service(QoS) features to end users according to IP/MAC address; Besides that, it can control the flow after set priority for instant messaging service, download, video etc..  3. Access into Cloud Server for Remote Management, Captive Portal authentication, advertisement and accounting functions AP-WLC2000 can access into cloud server when work as gateway for remote management and captive portal. Through cloud server, administrator easy to reset/reboot/deleteAP-WLC2000 or the connected wireless AP remotely, then track/collect the end userâ€™s information for second sale.  It easy for administrator to promote the advertisement to end users based on captive portal like SMS authentication, Facebook/Google/member authentication; Or collect the Ethernet cost after set up a stable public Wi-Fi.  4. Multi firewall and simple behavior functions AP-WLC2000 support port forwarding, Url Filter, IP Filter, MAC Filter, DMZ, DDNS functions to protect the networking safety, besides that, it support behavior based on IP group and time group to improve the performance and bandwidth efficiency.  Wireless AP Management functions: Assign IP address for wireless AP to avoid IP address conflict and easy managementMark Wireless APâ€™s location and name to examine networking problem faster;  Add Zero Config group before power on wireless AP, then wireless AP will get this groupâ€™s SSID, password channel, bandwidth, and RF power and so on without any config;  Or config Wireless APâ€™s SSID, password, tag VLAN, channel, end users QTY, client isolation one by one or in-group based on requirement. Firmware upgrade, Reset/reboot/delete/back up wireless AP in batch or one by one based on web management or cloud management.  Others AP-WLC2000 with humanity Web management, which combined with picture and words, more convenience and humanity when control it;  With desktop metal case and lightning protection function, set up easily, then more safety in application.', './img/airpro/1-15.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `asus`
--

CREATE TABLE `asus` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asus`
--

INSERT INTO `asus` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, 'asus1', 'AS1002T v2', 'Exceptional transfer performance\r\nUltra-quiet operation\r\nEnergy efficient low power consumption\r\nHand screw design for toolless installation\r\nStylish diamond-plate finished cover design', './img/asus/asus1.png', ' Exceptional transfer performance Ultra-quiet operation Energy efficient low power consumption Hand screw design for toolless installation Stylish diamond-plate finished cover design', './img/asus/1-1.png', 'https://www.asustor.com/materials/datasheet/1447134624.pdf'),
(2, 'asus2', 'AS1004T v2', 'Exceptional transfer performance.\r\nUltra-quiet operation.\r\nEnergy efficient low power consumption.\r\nHand screw design for toolless installation.\r\nStylish diamond-plate finished cover design.', './img/asus/asus2.png', ' Exceptional transfer performance. Ultra-quiet operation. Energy efficient low power consumption. Hand screw design for toolless installation. Stylish diamond-plate finished cover design.', './img/asus/1-2.png', 'https://www.asustor.com/materials/datasheet/Datasheet_AS1004T%20v2_ENG.pdf'),
(3, 'asus3', 'AS3102T v2', 'Powered by the latest Intel Celeron processors.\r\nHand screw design for toolless installation.\r\nStylish diamond-plate finished cover design.\r\nEquipped with hardware transcoding engine.\r\nNow with two Gigabit ports, up to double the speed', './img/asus/asus3.png', ' Powered by the latest Intel Celeron processors. Hand screw design for toolless installation. Stylish diamond-plate finished cover design. Equipped with hardware transcoding engine. Now with two Gigabit ports, up to double the speed', './img/asus/1-3.png', 'https://www.asustor.com/materials/datasheet/Datasheet_AS3102T%20v2_ENG.pdf'),
(4, 'asus4', 'AS3204T v2', 'Equipped with Intel Celeron quad-core processors and 2GB of dual-channel memory.\r\nHand screw design for toolless installation.\r\nStylish diamond-plate finished cover design.\r\nEquipped with hardware transcoding engine.\r\nNow with two Gigabit ports, up to double the speed', './img/asus/asus4.png', ' Equipped with Intel Celeron quad-core processors and 2GB of dual-channel memory. Hand screw design for toolless installation. Stylish diamond-plate finished cover design. Equipped with hardware transcoding engine. Now with two Gigabit ports, up to double the speed', './img/asus/1-4.png', 'https://www.asustor.com/materials/datasheet/Datasheet_AS3204T%20v2_ENG.pdf'),
(5, 'asus5', 'AS5202T', 'Two 2.5 GbE ports with up to 5 Gbps under Link Aggregation.\r\nUp to 32TB. Store live streams on your NAS.\r\nOverwhelming 4K experience.\r\n2GB DDR4-2400 - 30% faster than DDR3.\r\nIntel Celeron dual core CPU - 30% faster than previous generation.\r\nThree year warranty, best in class', './img/asus/asus5.png', ' Two 2.5 GbE ports with up to 5 Gbps under Link Aggregation. Up to 32TB. Store live streams on your NAS. Overwhelming 4K experience. 2GB DDR4-2400 - 30% faster than DDR3. Intel Celeron dual core CPU - 30% faster than previous generation. Three year warranty, best in class', './img/asus/1-5.png', 'https://www.asustor.com/materials/datasheet/Datasheet_Nimbustor%202_ENG.pdf'),
(6, 'asus6', '2.5GbE stores even more with the AS5304T!\r\nThe #1 cloud storage device for live stream collection and content creators.', 'Two 2-5 GbE ports with up to 5 Gbps under Link Aggregation.\r\nUp to 64TB Store live streams on your NAS.\r\nOverwhelming 4K experience.\r\n4GB DDR4-2400 - 30% faster than DDR3.\r\nIntel Celeron quad core CPU - 30% faster than previous generation.\r\nThree year warranty, best in class', './img/asus/asus6.png', ' Two 2-5 GbE ports with up to 5 Gbps under Link Aggregation. Up to 64TB Store live streams on your NAS. Overwhelming 4K experience. 4GB DDR4-2400 - 30% faster than DDR3. Intel Celeron quad core CPU - 30% faster than previous generation. Three year warranty, best in class', './img/asus/1-6.png', 'https://www.asustor.com/materials/datasheet/Datasheet_Nimbustor%204_ENG.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `benq_flat_panel`
--

CREATE TABLE `benq_flat_panel` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benq_flat_panel`
--

INSERT INTO `benq_flat_panel` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, 'benq_ifp1', '4K UHD 65â€Education Interactive Flat Panel Display | RM6502K', 'RM6502K is designed to tap into the dynamic possibilities of the classroom and help teachers build a healthy and engaging learning environment. Not only does RM6502K come with Eye-Care solution, but it is also installed with proficient cloud whiteboard for enhanced class participation and foster collaboration with students beyond locations and platforms. RM6502K is your ultimate interactive display to achieve a touch-enhanced, and connect entire class for a smooth and fun learning experience.', './img/benq/rm6502-front-bigimg.jpg', ' RM6502K is designed to tap into the dynamic possibilities of the classroom and help teachers build a healthy and engaging learning environment. Not only does RM6502K come with Eye-Care solution, but it is also installed with proficient cloud whiteboard for enhanced class participation and foster collaboration with students beyond locations and platforms. RM6502K is your ultimate interactive display to achieve a touch-enhanced, and connect entire class for a smooth and fun learning experience.', './img/benq/rm6502-front-bigimg1-1.png', ''),
(2, 'benq_ifp2', '4K UHD 75â€Education Interactive Flat Panel Display | RM7502K', 'RM7502K is designed to tap into the dynamic possibilities of the classroom and help teachers build a healthy and engaging learning environment. Not only does RM7502K come with Eye-Care solution, but it is also installed with proficient cloud whiteboard for enhanced class participation and foster collaboration with students beyond locations and platforms. RM7502K is your ultimate interactive display to achieve a touch-enhanced, and connect entire class for a smooth and fun learning experience.', './img/benq/rm7502k-right45-1000.jpg', ' RM7502K is designed to tap into the dynamic possibilities of the classroom and help teachers build a healthy and engaging learning environment. Not only does RM7502K come with Eye-Care solution, but it is also installed with proficient cloud whiteboard for enhanced class participation and foster collaboration with students beyond locations and platforms. RM7502K is your ultimate interactive display to achieve a touch-enhanced, and connect entire class for a smooth and fun learning experience.', './img/benq/rm7502k-right45-10001-2.png', ''),
(3, 'benq_ifp3', '4K UHD 86â€Education Interactive Flat Panel Display | RM8602K', 'RM8602K is designed to tap into the dynamic possibilities of the classroom and help teachers build a healthy and engaging learning environment. Not only does RM8602K come with Eye-Care solution, but it is also installed with proficient cloud whiteboard for enhanced class participation and foster collaboration with students beyond locations and platforms. RM8602K is your ultimate interactive display to achieve a touch-enhanced, and connect entire class for a smooth and fun learning experience.', './img/benq/rm8602-left45.png', ' RM8602K is designed to tap into the dynamic possibilities of the classroom and help teachers build a healthy and engaging learning environment. Not only does RM8602K come with Eye-Care solution, but it is also installed with proficient cloud whiteboard for enhanced class participation and foster collaboration with students beyond locations and platforms. RM8602K is your ultimate interactive display to achieve a touch-enhanced, and connect entire class for a smooth and fun learning experience.', './img/benq/rm8602-left451-3.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `benq_projector`
--

CREATE TABLE `benq_projector` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benq_projector`
--

INSERT INTO `benq_projector` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, 'benq_projector1', 'BenQ MS550 3600lm SVGA Business Projector', '3600 ANSI Lumen High Brightness for Stunning Presentations.\r\n\r\n20,000:1 High Native Contrast for Crisp Readability.\r\n\r\nDual HDMI inputs for multiplatform digital connectivity', './img/benq/01-ms550-front30.png', ' 3,600 lumens of high brightness enable comfortable lights-on presentations to promote discussion, collaboration, and note-taking in larger meeting rooms with bright lights accommodating up to 20 participants. The high luminance lets even participants seated furthermost clearly see the slides and boosts picture quality with vibrant color for pictures and videos as well as crisp text and fine details.With industry-leading contrast and pixel fill factor, BenQ projectors produce the truest blacks and unmatched readability with every character, graph, and chart crisply defined. High fill factor increases clarity for black and white or color images and reduces eye strain for presenters and audiences to stay focused on the content.', './img/benq/01-ms550-front301-1.png', ''),
(2, 'benq_projector2', 'SVGA Business Projector For Presentation | MS535P', '3600 ANSI Lumen High brightness and 15,000:1 High Contrast.\r\n\r\nExclusive Infographic Mode Showcases Text and Graphic in Detail.\r\n\r\nSmartEco Mode Saves Lamp Power Up To 70%\r\n\r\n', './img/benq/cq5dam.web.800.800.jpeg', ' 3600 ANSI Lumen High brightness and 15,000:1 High Contrast.  Exclusive Infographic Mode Showcases Text and Graphic in Detail.  SmartEco Mode Saves Lamp Power Up To 70%', './img/benq/cq5dam.web.800.8001-2.png', ''),
(3, 'benq_projector3', 'SVGA Business Projector For Presentation | MS527', '3300 ANSI Lumen High brightness and 13,000:1 High Contrast.\r\n\r\nScenario Oriented Picture Modes Showcases Text and Graphic in Detail.\r\n\r\nSmartEco Mode Saves Lamp Power Up To 70%', './img/benq/cq5dam.web.800.800 (1).jpeg', ' 3300 ANSI Lumen High brightness and 13,000:1 High Contrast.  Scenario Oriented Picture Modes Showcases Text and Graphic in Detail.  SmartEco Mode Saves Lamp Power Up To 70%', './img/benq/cq5dam.web.800.800 (1)1-3.png', ''),
(4, 'benq_projector4', 'BenQ MS610 Wireless Meeting Room SVGA Business Projector', 'Optional Accessories: QCast/QCast Mirror.\r\n\r\nHigh Brightness of SVGA 4000 ANSI Lumens.\r\n\r\nWireless Presentation via Simple Screen Mirroring Optional', './img/benq/01-ms610-front30.png', ' Optional Accessories: QCast/QCast Mirror.  High Brightness of SVGA 4000 ANSI Lumens.  Wireless Presentation via Simple Screen Mirroring Optional', './img/benq/01-ms610-front301-4.png', ''),
(5, 'benq_projector5', 'XGA Business HDMI Projector | MX535', '3600 ANSI Lumen High brightness and 15,000:1 High Contrast.\r\n\r\nExclusive Infographic Mode Showcases Text and Graphic in Detail.\r\n\r\n2x HDMI and 2x VGA for multiplatform digital connectivity', './img/benq/cq5dam.web.800.800 (2).jpeg', ' 3600 ANSI Lumen High brightness and 15,000:1 High Contrast.  Exclusive Infographic Mode Showcases Text and Graphic in Detail.  2x HDMI and 2x VGA for multiplatform digital connectivity', './img/benq/cq5dam.web.800.800 (2)1-5.png', ''),
(6, 'benq_projector6', 'Education Projector MX808ST', 'Advanced Interactive Instruction for Leading Schools.\r\nMX808ST education projector enhances interactive learning and classroom collaboration with outstanding picture quality, high brightness, and short throw capability. Smart installation flexibility combined with reduced maintenance and ownership costs make MX808ST the ideal choice for todayâ€™s schools.', './img/benq/07-mx825st-left30.png', ' Advanced Interactive Instruction for Leading Schools. MX808ST education projector enhances interactive learning and classroom collaboration with outstanding picture quality, high brightness, and short throw capability. Smart installation flexibility combined with reduced maintenance and ownership costs make MX808ST the ideal choice for todayâ€™s schools.', './img/benq/07-mx825st-left301-6.png', ''),
(7, 'benq_projector7', 'Dustproof Projector with Short Throw, XGA | DX808ST', 'Preserves Long-Lasting Picture Quality in Challenging Classroom Environments\r\nCritically important for schools, BenQ DX808ST enhances reliability and minimize downtime with a comprehensive dustproof solution to protect key components of the projection engine from dust damage. With the latestest BenQ Dust GuardTM dustproof technology, DX808ST greatly reduces maintenance costs with bright, fresh projection quality that endures for years.', './img/benq/07-dx808st-left30.png', ' Preserves Long-Lasting Picture Quality in Challenging Classroom Environments Critically important for schools, BenQ DX808ST enhances reliability and minimize downtime with a comprehensive dustproof solution to protect key components of the projection engine from dust damage. With the latestest BenQ Dust GuardTM dustproof technology, DX808ST greatly reduces maintenance costs with bright, fresh projection quality that endures for years.', './img/benq/07-dx808st-left301-7.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(100) NOT NULL,
  `name` varchar(3000) NOT NULL,
  `email` varchar(3000) NOT NULL,
  `subject` varchar(3000) NOT NULL,
  `comment` varchar(3000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `comment`) VALUES
(1, 'contacthfgaal', 'damsonxristinja1992@rambler.ru', 'We offer sending newsletters of Your commercial offers via contact forms to the sites of firms via all countries of the world in all languages. ', ' Good whatever time of day it is where you are! \r\n \r\nSending newsletters via forms into the \"Contact us\" section to the sites of firms via any countries and domain zones of the world.  \r\n \r\nThe commercial offer is sent to email of firm 100 percent will get to inbox folder! \r\n \r\n2000 bases: \r\nhttps://xn----7sbb1bbndheurc1a.xn--p1ai/prajs-list/ \r\n \r\nTest: \r\n20000 messages on foreign zones to your email address - twenty $. \r\nWe need from You only E-mail, title and text of the letter. \r\n \r\nIn our price there are more 800 databases for all domain zones of the world. \r\nCommon databases: \r\nAll Europe 44 countries 60726150 of domain names - 1100$ \r\nAll European Union 28 countries 56752547 of domains- 1000$ \r\nAll Asia 48 countries 14662004 of domain names - 300$ \r\nAll Africa 50 countries 1594390 of domains - 200$ \r\nAll North and Central America in 35 countries 7441637 of domain names - 300$ \r\nAll South America 14 countries 5826884 of domains - 200$ \r\nNew sites from around the world registered 24-48 hours ago. (A cycle of 15 mailings during the month) - 500$ \r\nEnterprises and organizations of Russia 4025015 - 300$ \r\nUkraine 1114526 of domain names - 100$ \r\nAll Russian-speaking countries minus RF are 14 countries and there are 1979217 of domain names - 200$ \r\nNew sites of the Russia, registered 24-48 hours ago (A cycle of 15 mailings during the month) - 250$ \r\n \r\nDatabases: \r\nWHOIS databases of domains for all nations of the world. \r\nYou can purchase our databases separately from newsletter\'s service at the request. \r\n \r\nP/S \r\nPlease, do not respond to this message from your email account, as it has been generated automatically and will not reach us! \r\nContact Feedback form =Â» https://xn----7sbb1bbndheurc1a.xn--p1ai/to-order/ \r\n \r\nPRICE LIST: \r\n \r\nTest mailing: $20 â€“ 20000 contact forms websites \r\n \r\nAll Europe 44 countries there are 60726150 websites â€“ $1100 \r\n \r\nAll EU 28 countries there are 56752547 websites â€“ $1000 \r\n \r\nAll Asia 48 countries there are 14662004 websites â€“ $500 \r\n \r\nAll Africa 50 countries there are 1594390 websites â€“ $200 \r\n \r\nAll North and Central America is 35 countries there are 7441637 websites â€“ $300 \r\n \r\nAll South America 14 countries there are 5826884 websites â€“ $200 \r\n \r\nTop 1 Million Worldâ€™s Best websites â€“ $100 \r\n \r\nTop 16821856 the most visited websites in the world â€“ $300 \r\n \r\nNew websites from around the world registered 24-48 hours ago. (A cycle of 15 mailings during the month) â€“ 500$ \r\n \r\nBusinesses and organizations of the Russian Federation â€“ there are 4025015 websites â€“ $300 \r\n \r\nAll Russian-speaking countries minus Russia â€“ there are 14 countries and 2440822 websites â€“ $200 \r\n \r\nNew websites of the Russian Federation, registered 24-48 hours ago. (A cycle of 15 mailings during the month) â€“ 250$ \r\n \r\n1499203 of hosting websites around the world (there are selections for all countries, are excluded from databases for mailings) â€“ $150 \r\n \r\n295285 websites of public authorities of all coun'),
(2, 'Robertbuict', 'innaa.t.a.k.o.v.a.9.2.@gmail.com', 'broken heart remedies ', ' welfare drug testing  <a href=https://blackhills.co.uk/xanax-uk-gb.html>https://blackhills.co.uk/xanax-uk-gb.html</a>   prescription contacts '),
(3, 'Mike Carter\r\n', 'no-replybookeMak@gmail.com', 'Gaining Higher Domain Authority score', ' Greetings \r\n \r\nDo you want a quick boost in ranks and sales for your bispl.net.in website? \r\nHaving a superior DA score, always helps \r\n \r\nGet your bispl.net.in to have a guaranteed 50+ points in Moz DA with us today and rip the benefits of such a great feat. \r\n \r\nFor more details, check our service here \r\nhttps://speed-seo.net/product/moz-da50-seo-plan/ \r\n \r\nNEW: ahrefs DR50+ possible now: \r\nhttps://speed-seo.net/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike Carter\r\n \r\nEmail: support@speed-seo.net'),
(4, 'Larryodose', 'innaa.ta.k.o.v.a.9.2.@gmail.com', 'christiana care health ', ' ant problem remedies  <a href=https://blackhills.co.uk/xanax-uk-gb.html>https://blackhills.co.uk/xanax-uk-gb.html</a>   reverse erectile dysfunction '),
(5, 'Franktogue', 'innaatako.v.a.9.2.@gmail.com', 'herbal extracts manufacturer ', ' fibroids herbal treatment  <a href=http://cscom.fr/lorazepam.html>http://cscom.fr/lorazepam.html</a>   pill timer alarm '),
(6, 'Frankamoug', 'innaatakov.a.9.2.@gmail.com', 'croup cough remedy ', ' diuretics herbal  <a href=https://holisticdrbright.com/cheap-oxycodone-us.php>https://holisticdrbright.com/cheap-oxycodone-us.php</a>   holistic allergy remedies '),
(7, 'Peter Bawerman\r\n', 'no-replyVoinc@gmail.com', 'Negative SEO Services', ' Hi \r\n \r\nDo your rivals not playing the game fair and square? \r\nNow you can fight back. \r\n \r\nNegative SEO, to make their SEO be ruined \r\nhttps://blackhat.to/ \r\n \r\nGet in touch with us for any queries: \r\nsupport@blackhat.to'),
(8, 'Sukhman Mann', 'sukhmann13122005@gmail.com', '', ' Lg Interactive screen is amazing'),
(9, 'SammyTok', 'innaatakova.9.2.@gmail.com', 'spots remedies ', ' natural menopause pills  <a href=http://magnumsports.com.au/stilfr.html>http://magnumsports.com.au/stilfr.html</a>   prescription wayfarer sunglasses '),
(10, 'Mike Nicholson\r\n', 'no-reply@google.com', 'quality monthly SEO plans', ' Hi there \r\n \r\nI have just took a look on your SEO for  bispl.net.in for its SEO Trend and saw that your website could use a push. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our services below, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Nicholson\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(11, 'AustinBip', 'innaatakova9.2.@gmail.com', 'zombie herbal incense ', ' natural stress remedy  <a href=http://magnumsports.com.au/stilfr.html>http://magnumsports.com.au/stilfr.html</a>   native natural remedies '),
(12, 'Davidlex', 'aquire143@gmail.com', 'If You Are Android App Developer then Surprise For You', ' Hi Sir/ mam , \r\nIf you are Android app Developer or web Developer \r\nCongress........... \r\nBecause we are coming with brand new website For you. \r\nHear you can buy source code of codecanyon in cheapest price . \r\nVisit our brand new website - codescarts.com \r\nFor discount coupon \r\nMassage our team on WhatsApp \r\n+1 289 206 8106 \r\nThanks & Regards'),
(13, 'NIMIL TIWARI', 'nimilvibha@gmail.com', 'Interested in buying interactive panel', ' Director achievers is academy bilaspur cg'),
(14, 'Vikas yadav', 'vy034634@gmail.com', '75 smart board , ', ' Price and installation  charge in village area '),
(15, 'Mike Carrington\r\n', 'see-email-in-message@monkeydigital.co', 'Increase sales for bispl.net.in', ' Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your bispl.net.in website? \r\nHaving a high DA score, always helps \r\n \r\nGet your bispl.net.in to have a 50+ points in Moz DA with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike Carrington\r\n \r\nsupport@monkeydigital.co'),
(16, 'Dimanlang Kassar', 'dimanlang176@gmail.com', 'Require interactive smart panel for school', ' St Mary\'s Hr. Sec. School, shillong');

-- --------------------------------------------------------

--
-- Table structure for table `crm_dealer`
--

CREATE TABLE `crm_dealer` (
  `id` int(100) NOT NULL,
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
  `createdon` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_eps`
--

CREATE TABLE `crm_eps` (
  `id` int(16) NOT NULL,
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
  `quotedprice` varchar(100) DEFAULT NULL,
  `modify_on` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_eps`
--

INSERT INTO `crm_eps` (`id`, `product_name`, `serialno`, `plantype`, `type`, `users`, `expiry_date`, `company`, `designation`, `person_name`, `mobile`, `landline`, `email`, `address1`, `address2`, `city`, `state`, `in_sell`, `out_sell`, `dealer`, `status`, `remarks`, `quotedprice`, `modify_on`) VALUES
(1, 'QHTS', 'FB013765A700DA877272', '', 'crm_eps', '35', '2021-02-28', 'All india radio jaipur', '', '', '9413753177', '', 'jaipur@air.org.in', '', '', 'JAIPUR', 'RAJASTHAN', '450', '575', 'Binary Info Solutions PVT. LTD.', '', '', '', '2020-12-01 09:33:48.000000'),
(2, 'Seqrite Endpoint Security Business', 'F801365267005A886161', '', 'crm_eps', '10', '2021-05-28', 'NHANCE DESIGN STUDIO', '', '', '9649935444', '', 'STUDIO@NHANCEDS.COM', '', '', 'Kota', 'RAJASTHAN', '', '', 'EXACT COMPUTERS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(3, 'Seqrite Endpoint Security Total', '15752B6F0D6101861C18', '', 'crm_eps', '25', '2021-12-28', 'Unique Group', '', '', '9414033455', '', 'durgalalverma@hotmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '900', '950', 'Anjani Infotech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(4, 'Seqrite Endpoint Security Business', '2082596F0A8101731768', '', 'crm_eps', '10', '2021-07-20', 'Sadhna- Seva Mandir', '', '', '9460701012', '', 'info@sevamandir.org', '', '', 'Udaipur', 'RAJASTHAN', '', '', 'Regal Infotech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(5, 'Seqrite Endpoint Security Business', 'R3011472C1009C8B1178', '', 'crm_eps', '10', '2023-08-12', 'soni hospital', '', '', '', '', 'info@sonihospital.com', '', '', 'Ajmer', 'RAJASTHAN', '900', '975', 'mars infotech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(6, 'CTS', '8A6F1165C015C29200DB', '', 'crm_eps', '37', '2022-12-27', 'Mr.kuldeep ji', '', '', '9166444666', '', 'excel.projects@rediffmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '1000', '1100', 'EXCEL TECH CONSULTANCY & PROJECTS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(7, 'Seqrite Endpoint Security Total', '2967667R0A5101832C78', '', 'crm_eps', '17', '2022-12-13', 'Mr.Ashish Dhing', '', '', '0141-2363508', '', 'vijaysingh_jhala@hotmail.com', '', '', 'Udaipur', 'RAJASTHAN', '742', '1442', 'RS ENTERPRISES', '', '', NULL, '2020-11-29 07:00:00.000000'),
(8, 'Seqrite Endpoint Security Total', '32F4256F0DB101902428', '', 'crm_eps', '20', '2021-08-11', 'KOTAHWALAS EXPORT PVT LTD', '', '', '141-2371111', '', 'gmlpj@lordshotels.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Choice Infotech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(9, 'QHENT', '09880A8A7CC611361R87', '', 'crm_eps', '160', '2023-08-16', 'Mayoor School, Ajmer', '', '', '9828273980', '', 'pawan4net@yahoo.com', '', '', 'Ajmer', 'RAJASTHAN', '600', '1100', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(10, 'QHTS', 'A688F38E1F87A0829580', '', 'crm_eps', '40', '2021-08-19', 'Friends Engineering Works', '', '', '9950996021', '', 'info@friendseng.com', '', '', 'Udaipur', 'RAJASTHAN', '900', '950', 'Shrada Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(11, 'QHTS', '60591R904BA28808BE73', '', 'crm_eps', '28', '2023-08-26', 'JAY SONI', '', '', '7340115555', '', 'systems.jdh@zonebythepark.com', '', '', 'Jodhpur', 'RAJASTHAN', '', '', 'AMAZING TECH', '', '', NULL, '2020-11-29 07:00:00.000000'),
(12, 'QHTS', '6B85D17E1R17D2B11200', '', 'crm_eps', '230', '2040-08-30', 'K.N.Modi University', '', '', '8875010017', '', 'it@dknmu.org', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Binary Info Solutions PVT. LTD.', 'Dont want to renew', 'KEY  discontinued', NULL, '2020-11-30 06:11:21.000000'),
(13, 'Seqrite Endpoint Security Total', 'C088B1811R47D0B41810', '', 'crm_eps', '5', '2023-09-01', 'Sukh Sagar Synthetix pvt ltd', '', '', '01482 225965', '', 'satkarsulz@yahoo.com', '', '', 'BHILWARA', 'RAJASTHAN', '', '', 'Excel Computers Bhilwara', '', '', NULL, '2020-11-29 07:00:00.000000'),
(14, 'QH', 'B33A0877D664FB806112', '', 'crm_eps', '5', '2023-09-02', 'Swaraj Sulz Pvt. Ltd.', '', '', '9351370805', '', 'swarajsulzinfo@gmail.com', '', '', 'BHILWARA', 'RAJASTHAN', '', '', 'Compusys', '', '', NULL, '2020-11-29 07:00:00.000000'),
(15, 'QH', '85AFA1878245E9D003AB', '', 'crm_eps', '100', '2021-09-05', 'RD WR AMD DEPT OF ATOMIC ENERGY', '', '', '1412795448', '', 'rdwr.amd@gov.in', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'AVANT COMPUTER TECHNOLOGIES SYSTEMS PVT.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(16, 'QHTS', 'C0261R8017A28A088673', '', 'crm_eps', '10', '2023-09-10', 'Hotel Via Lakhela', '', '', '9829074985', '', '', '', '', 'Udaipur', 'RAJASTHAN', '', '', 'vijay infotech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(17, 'Seqrite Endpoint Security Business', 'A8521F6024C28809A931', '', 'crm_eps', '50', '2023-09-13', 'G-TEKT INDIA PVT. LTD.', '', '', '9509952509', '', 'Mahendra@g-tip.co.in', '', '', 'BHIWADI', 'RAJASTHAN', '', '', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(18, 'CTS', '8DDF11659015C19301CA', '', 'crm_eps', '20', '2021-09-14', 'IBS HOSPITAL', '', '', '0141-2744441', '', 'kbgoyal76@hotmail.co.uk', '', '', 'JAIPUR', 'RAJASTHAN', '356', '381', 'G.L TECHNOVATIONS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(19, 'QHUTM', 'D388B3901R97A0F47A40', '', 'crm_eps', '28', '2023-09-19', 'U AND T TRACTORS', '', '', '9413819845', '', 'PEETER.VIKRANT@GMAIL.COM', '', '', 'Jodhpur', 'RAJASTHAN', '850', '2075', 'PM COMPUTER/PEETER', '', '', NULL, '2020-11-29 07:00:00.000000'),
(20, 'Seqrite Endpoint Security Total', '6S8953S91R2780A17210', '', 'crm_eps', '0', '2021-09-19', 'MEDNEXT PHARMA PVT. LTD.', '', '', '8952908000', '', 'accounts@mednextpharma.com', '', '', '', 'RAJASTHAN', '', '', 'pcworldclinic@gmail.com', '', '', NULL, '2020-11-29 07:00:00.000000'),
(21, 'QHTS', 'F90132647800BA87716C', '', 'crm_eps', '20', '2020-12-28', '187 MH', '', '', '8726686941', '', 'rajeev6534@gmail.com', '', '', 'BIKANER', 'RAJASTHAN', '450', '550', 'Vishwam Computer', 'Quoted', 'delay due to army case ', '750', '2020-11-30 06:14:34.000000'),
(22, 'QH', '838N11758215C2B001D4', '', 'crm_eps', '800', '2023-12-19', 'Miraj', '', '', '8875992825', '', 'sachin.singhvi@mirajgroup.in', '', '', 'UDAIPUR', 'RAJASTHAN', '955', '1255', 'Swastik Computer', 'Lost and Upgrade', 'lost and upgrade on sophos', NULL, '2020-11-29 07:00:00.000000'),
(23, 'Seqrite Endpoint Security Total', '8189F3801FA7A0C49780', '', 'crm_eps', '40', '2021-09-23', 'DainikNavajyoti Kota', '', '', '9829038881', '', 'office123469@yahoo.com', '', '', 'Kota', 'RAJASTHAN', '', '', 'kay kay softech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(24, 'Seqrite Endpoint Security Total', '8F9F11534015C2C101D4', '', 'crm_eps', '16', '2021-09-24', 'Hotel Surya Royal', '', '', '7442390092', '', 'reservations@thesuryahotels.com', '', '', 'Kota', 'RAJASTHAN', '725', '750', 'Kumar Expert Computers', '', '', NULL, '2020-11-29 07:00:00.000000'),
(25, 'Seqrite Endpoint Security Total', '85AF718C9125C89503AD', '', 'crm_eps', '20', '2021-09-25', 'Maharana Mewar Vidhya Mandir (MMVM)', '', '', '9782070726', '', 'ccell@mmvmschool.org', '', '', 'Udaipur', 'RAJASTHAN', '575', '600', 'ASSURE COMPUTER', '', '', NULL, '2020-11-29 07:00:00.000000'),
(26, 'Seqrite Endpoint Security Business', '0F382D5608D601511F82', '', 'crm_eps', '10', '2021-10-04', 'Gesesis Design Group', '', '', '0141- 2176301', '', 'info@genesisdesign.co.in', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Cyber 2000', '', '', NULL, '2020-11-29 07:00:00.000000'),
(27, 'Seqrite Endpoint Security Total', '0228A48C514848F0B0R1', '', 'crm_eps', '160', '2023-10-10', 'Central Sheep and Wool Research Institute', '', '', '1437220149', '', 'cswriavikanagar@yahoo.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(28, 'EPS Business', 'DD241F6045D28F05C133', '', 'crm_eps', '15', '2023-10-11', 'Marda Associates', '', '', '9982400355', '', 'Info@netinfosystems.info', '', '', 'JAIPUR', 'RAJASTHAN', '1300', '1400', 'Netinfosystems', '', '', NULL, '2020-11-29 07:00:00.000000'),
(29, 'Seqrite Endpoint Security Total', 'F229248C521848E070R0', '', 'crm_eps', '24', '2023-10-12', 'Arts Craft,Mansarover', '', '', '0141-2398277', '', 'acraftjpr@sify.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Ncs computech(p) ltd', '', '', NULL, '2020-11-29 07:00:00.000000'),
(30, 'QH BUSINESS', 'AA484F84R1933506590F', '', 'crm_eps', '33', '2020-10-21', 'SOUVENIR HOTELS JAIPUR', '', '', '9875275739', '', 'corp.it@souvenirhotels.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'TMS', 'Hold', 'need visit', NULL, '2020-11-30 06:11:58.000000'),
(31, 'Seqrite Endpoint Security Total', '8B6F11659115C19501DB', '', 'crm_eps', '370', '2021-10-21', 'Lipi Data System Limited', '', '', '0294-2499700', '', 'sunil.upadhyay@lipidata.in', '', '', 'Udaipur', 'RAJASTHAN', '380', '400', 'Shrada Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(32, 'Seqrite Endpoint Security Total', '07B2295F2C7101811318', '', 'crm_eps', '100', '2021-10-21', 'Lipi Data System Limited', '', '', '022-41713030', '', 'mangesh.sasane@lipidata.in', '', '', 'Udaipur', 'RAJASTHAN', '380', '400', 'Shrada Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(33, 'Seqrite Endpoint Security Total', '06A94A6A460604341F85', '', 'crm_eps', '30', '2021-10-26', 'Dinesh Goyal', '', '', '9829069975', '', 'care@traditionalgallery.com', '', '', 'JAIPUR', 'RAJASTHAN', '725', '870', 'RACE COMPUTER SERVICES', '', '', NULL, '2020-11-29 07:00:00.000000'),
(34, 'Seqrite Endpoint Security Total', '6A3A08618744R4502511', '', 'crm_eps', '50', '2021-03-26', 'RRSC-J/ISRO, JODHPUR', '', '', '2912660824', '', 'ajain.isro@gmail.com', '', '', 'JODHPUR', 'RAJASTHAN', '475', '560', 'SD SERVICES', '', '', NULL, '2020-11-29 07:00:00.000000'),
(35, 'Seqrite Endpoint Security Total', '0F62D77E071963F8DAA0', '', 'crm_eps', '36', '2023-10-26', 'Precision Design and Engineering Pvt Ltd', '', '', '8696102111', '', 'manish.bhardwaj@pdeindia.in', '', '', 'JAIPUR', 'RAJASTHAN', '1090', '1150', 'Lexical System', '', '', NULL, '2020-11-29 07:00:00.000000'),
(36, 'Seqrite Endpoint Security Total', '7B89A77F1F27D0C21650', '', 'crm_eps', '30', '2021-10-26', 'Lipi Data System Limited', '', '', '2222882960', '', 'mustafa.pothiwala@lipidata.in', '', '', 'Udaipur', 'RAJASTHAN', '410', '430', 'Shrada Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(37, 'Seqrite Endpoint Security Total', '8F6F11523015C09206D8', '', 'crm_eps', '27', '2021-11-04', 'sarovarportico', '', '', '1415157777', '', 'it@sarovarporticojaipur.com', '', '', 'JAIPUR', 'RAJASTHAN', '700', '840', 'Shri Balaji Computers (Rohit)', '', '', NULL, '2020-11-29 07:00:00.000000'),
(38, 'Seqrite Endpoint Security Total', '82dfa187b145e90203ae', '', 'crm_eps', '60', '2021-11-07', 'Oasis Infotech Limited', '', '', '0141-2211417', '', 'oasusers@rediffmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Bhushan System', '', '', NULL, '2020-11-29 07:00:00.000000'),
(39, 'Seqrite Endpoint Security Total', 'A1782876F1B337046A09', '', 'crm_eps', '30', '2021-11-08', 'Nitya Hotels Pvt Ltd', '', '', '8440046107', '', 'it@cisbhiwadi.in', '', '', 'BHIWADI', 'RAJASTHAN', '', '', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(40, 'QH Business', 'C982D3701F97A0C47960', '', 'crm_eps', '30', '2021-03-10', 'JJTU', '', '', '9887204519', '', 'vineetsharma.90@live.com', '', '', 'JHUNJHUNU', 'RAJASTHAN', '1350', '1400', 'SUPER COLLECTION', 'Quoted', 'Prices quoted to Super Collection', '720+Gst and 1300+Gst for 3 Yrs', '2020-12-25 12:32:19.000000'),
(41, 'Seqrite Endpoint Security Total', 'FE0016639900FC8044AB', '', 'crm_eps', '60', '2023-11-14', 'Sanghi Classic Jaipur', '', '', '9928014893', '', 'info@bmw-sanghiclassic.in', '', '', 'JAIPUR', 'RAJASTHAN', '680', '740', 'Computer Garage Jaipur (1133)', '', '', NULL, '2020-11-29 07:00:00.000000'),
(42, 'QHTS', 'CFF6B27A7368788150F0', '1095', 'crm_eps', '30', '2023-12-04', 'best capital services limited', '', '', '8946857477', '', 'pradeep@bestcapital.in', '', '', 'JAIPUR', 'RAJASTHAN', '1600', '1600', 'Binary Info Solutions PVT. LTD.', 'Renewed', '', NULL, '2020-12-04 13:54:21.000000'),
(43, 'QHTS', '809F7174B025C59103A7', '1095', 'crm_eps', '200', '2023-11-30', 'Tempsens Instruments', '', '', '9799839777', '', 'it@tempsens.com', '', '', 'Udaipur', 'RAJASTHAN', '', '', 'National Computer Udaipur', 'Lost and Renew', 'Renewed by Udaipur Partner', NULL, '2020-11-30 06:13:21.000000'),
(44, 'CTS', '0372548C071996R85A90', '', 'crm_eps', '30', '2020-12-06', 'Kokoku Intech', '', '', '8003098795', '', 'y.singh@kokoku-intech.com', '', '', 'Behror', 'RAJASTHAN', '600', '1350', 'Pradeep Computers', 'Quoted', 'prices quoted ,delay from customer side ', '850', '2020-11-29 07:00:00.000000'),
(45, 'CTR', 'CE071R812AA28A0B9C73', '1095', 'crm_eps', '50', '2023-12-18', 'DAINIK NAVJYOTI', '', '', '9314883686', '', 'beni.prakash@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '850', '900', 'INFORMATIC COMPUTECH', 'Renewed', '', NULL, '2020-12-18 12:23:40.000000'),
(46, 'QHTS', 'B2120R8023D2850CAF81', '', 'crm_eps', '5', '2020-12-12', 'Khandwala Integrated Financial Services Pvt. Ltd.', '', '', '9351990050', '', 'avijha@rediffmail.com', '504, Crystal Mall, Bani Park Rajasthan Jaipur India Pincode-302001', '', 'JAIPUR', 'RAJASTHAN', '', '', 'BB Professionals', 'Quoted', 'delay from customer side ', '850', '2020-12-25 10:54:23.000000'),
(47, 'QHTS', 'FD01165280001D8944A8', '', 'crm_eps', '10', '2020-12-12', 'Silkasia', '', '', '', '', 'admin@silkasia.net', '', '', 'JAIPUR', 'RAJASTHAN', '1450', '1500', 'SWIFT TECHNOLOGIES', 'Quoted', 'delay from customer side ', '800', '2020-11-30 06:13:33.000000'),
(48, 'QHTS', '2F93244F0C4101811418', '', 'crm_eps', '700', '2023-12-19', 'Miraj', '', '', '', '', 'suresh.rawat@riya.travel', '', '', 'Udaipur', 'RAJASTHAN', '', '', 'Binary Info Solutions PVT. LTD.', 'Lost and Upgrade', 'lost and upgrade on sophos', NULL, '2020-11-30 06:13:52.000000'),
(283, 'Seqrite Endpoint Security Total Edition', 'DF3A088AE004RCB09624', '1095', 'crm_eps', '30', '2023-02-12', 'K.N.Modi University', 'IT HEAD ', 'MANISH ', '8875010017', '', 'it@dknmu.org', 'Plot No. Ins-1, RIICo Industrial Area', 'Ph-II Newai, Tonk Rajasthan Jaipur', 'JAIPUR', 'RAJASTHAN', '625', '700', 'BINARY INFOSOLUTIONS PVT LTD ', 'QUOTED', '', NULL, '2020-12-04 07:15:50.124671'),
(49, 'QHTS', '0872716F071973F88A10', '365', 'crm_eps', '6', '2022-01-03', 'Rohan Art Exports', '', '', '9414126152', '', 'logistics@rohanartexports.com', '', '', 'Jodhpur', 'RAJASTHAN', '', '', 'Frontline Computers', 'Lost and Renew', 'Renewed by other partner', NULL, '2020-11-30 06:14:03.000000'),
(50, 'QHTS', '868F61661015B76503A6', '1095', 'crm_eps', '26', '2024-01-20', 'R S Infra Transmission Ltd. Jaipur', '', '', '8233090819', '', 'rsitl@rsinfratransmission.com', '241-242 (A, Rd Number 6-D, Vishwakarma Industrial Area ', 'Jaipur, Rajasthan 302013', 'JAIPUR', 'RAJASTHAN', '', '', 'Titan Data Products,jaipur', 'Lost and Renew', 'Renewed by Titan Data through Aadhar Infonet ', '850', '2021-01-18 05:25:23.000000'),
(51, 'Seqrite Endpoint Security Total', 'C51D0862F614F7604112', '', 'crm_eps', '20', '2021-07-01', 'SHREE RAJASTHAN SYNTEX LIMITED', '', '', '', '', 'pankaj@srsl.in', '', '', 'Udaipur', 'RAJASTHAN', '400', '451', 'Parmar Techno', '', '', NULL, '2020-11-29 07:00:00.000000'),
(52, 'QHTS', 'F73A0872F754R4103212', '365', 'crm_eps', '10', '2022-01-18', 'Bomabay Hospital Trust Jaipur', '', '', '9820628047', '', 'mpved@bombayhospital.com', '', '', 'JAIPUR', 'RAJASTHAN', '1250', '1300', 'Wi2Fi Networks', 'Lost and Renew', 'Bombay Hospital Trust Jaipur', '900', '2020-11-30 06:14:22.000000'),
(53, 'QH Business', 'C7F7127A731878C170F0', '1095', 'crm_eps', '5', '2024-01-28', 'ASES CHEMICAL WORKS', '', '', '9414126152', '', 'aseschem@gmail.com', '', '', 'Jodhpur', 'RAJASTHAN', '', '', 'Frontline Computers', 'Lost and Renew', 'Renewed by Jodhpur Other Partner', '', '2020-11-30 06:19:15.000000'),
(54, 'QHTS', 'AF181E55F11332136D05', '', 'crm_eps', '100', '2021-01-19', 'NIA', '', '', '9928038573', '', 'itcenter.nia@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Rise tech software pvt ltd', 'Quoted', 'details shared with Arpit for visit ', '', '2020-11-30 06:19:02.000000'),
(55, 'QHTS', '4E93447R0AB101F32C28', '1095', 'crm_eps', '33', '2024-01-23', 'GOLDEN TULIP JAIES', '', '', '7727805252', '', 'it@goldentulipjaies.com', '', '', 'JAIPUR', 'RAJASTHAN', '1000', '1200', 'AADIT IT SOLUTIONS', 'Renewed', 'prices quoted to Aadit IT ', '1250', '2021-01-23 10:58:33.000000'),
(56, 'QH mSuite StaN ', '', '', 'crm_eps', '101', '2021-01-28', 'Truworth Health Technologies Pvt. Ltd.', '', '', '', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '470', '480', '', '', '', NULL, '2020-11-30 06:17:33.000000'),
(57, 'QH Business', '8CAR718B1025C8C803A5', '1095', 'crm_eps', '40', '2024-01-23', 'SONAK TOYOTA', '', '', '9119196020', '', 'jp04a.ac@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '1130', '1180', 'BB SOFTECH', 'Lost and Renew', 'Renewed by Anjani Infotech because BB Softech denied to get billing from Binary .', '', '2020-11-30 06:18:37.000000'),
(58, 'QH Business', 'BD3A0867F674F8107112', '', 'crm_eps', '3', '2041-01-25', 'HARISH SHARMA', '', '', '9829018059', '', 'taxntax19@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'TITAN DATA PRODUCTS', 'Dont want to renew', 'Customer migrate to QH Retail ', '', '2020-11-30 06:18:10.000000'),
(59, 'QH Business', '6481F37E1F77A0827720', '1095', 'crm_eps', '32', '2024-01-25', 'Soni International', '', '', '9461183369', '', 'inquiry@soniinternational.com', '', '', 'JAIPUR', 'RAJASTHAN', '850', '1089', 'Titan Data', 'Renewed', 'Intimation Sent ,customer not pick my call .', '', '2021-01-25 07:17:13.000000'),
(60, 'QH Business', '03CA6A64449601311F82', '365', 'crm_eps', '25', '2022-01-29', 'Trimurty Colonizers and Builders Pvt Ltd', '', '', '9166897722', '', 'admin@trimurty.com', '', '', 'JAIPUR', 'RAJASTHAN', '450', '900', 'Binary Info Solutions PVT. LTD.', 'Renewed', 'Shared PI With Customer', '', '2021-01-29 10:53:07.000000'),
(61, 'QH Business', '8783D3610F47C0748520', '', 'crm_eps', '140', '2021-02-01', 'Om Metals Auto Pvt Ltd', '', '', '', '', 'edp@omtoyota.com', '', '', 'JAIPUR', 'RAJASTHAN', '390', '490', 'RS ENTERPRISES', 'Quoted', 'prices quoted to Om Metals ', '475+gst', '2021-01-20 05:13:17.000000'),
(62, 'QHTS', 'A7282E75R11333244E06', '', 'crm_eps', '120', '2021-02-12', 'HCM RIPA,JAIPUR', '', '', '9414073226', '', 'hcmripa@rajasthan.gov.in', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'RNS INFOTECH,JAIPUR', 'Quoted', 'Sent Intimation and share details with Arpit for Visit', '', '2020-11-30 06:17:47.000000'),
(63, 'QH Business', 'E8041F7146D28F05C926', '', 'crm_eps', '80', '2021-02-13', 'IASE UNIVERSITY', '', '', '', '', 'SKSHAARMA.TRN@GMAIL.COM', '', '', 'SARDARSHAHR', 'RAJASTHAN', '', '', 'COMPUTER WORD', 'Quoted', 'prices quoted to Computer World ', '675', '2020-11-30 06:16:39.000000'),
(64, 'QH Business', '29AD876F0A0101A34198', '', 'crm_eps', '14', '2021-02-15', 'DR.BANSI DHAR SCHOOL', '', '', '', '', 'school@dcmsr.com', '', '', 'KOTA', 'RAJASTHAN', '480', '550', 'OM COMPUTER', 'Quoted', 'Prices quoted to OM Computers', '500+Gst ', '2020-11-30 06:16:27.000000'),
(65, 'QHTS', 'FD01225C314828A160F0', '', 'crm_eps', '40', '2021-02-15', 'veto switchgears cablers pvt. ltd.', '', '', '9828022373', '', 'vetoswitch vetoswitchgears@yahoo.co.in', '', '', 'JAIPUR', 'RAJASTHAN', '620', '700', 'CHOICE INFOTECH', 'Quoted', 'Intimation Sent ', '', '2020-11-30 06:15:49.000000'),
(66, 'QHTS', 'F1011464A0008D88228A', '', 'crm_eps', '20', '2021-02-18', 'Hotal The Chunda Palace', '', '', '', '', 'resv@chundapalace.com', '', '', 'Udaipur', 'RAJASTHAN', '', '', 'Smart Computer', '', '', NULL, '2020-11-30 06:15:38.000000'),
(67, 'QHTS', 'DD282852F12313175B06', '', 'crm_eps', '175', '2021-02-18', 'IIHMR', '', '', '3924700', '', 'iihmr@iihmr.org', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Computer Heartbeat', '', '', NULL, '2020-11-30 06:15:04.000000'),
(68, 'QHTS', 'DF282C52F12313072B08', '', 'crm_eps', '15', '2021-02-23', 'RAJA MOTORS', '', '', '9928050000', '', 'rajamotor@sancharnetnet.in', '', '', 'Jodhpur', 'RAJASTHAN', '572', '593', 'DIAMOND SALES', '', '', NULL, '2020-11-30 06:13:00.000000'),
(69, 'QH Business', '0D01585D011921F85D26', '', 'crm_eps', '55', '2021-03-12', 'Maithel Associates Architects (P) Ltd.', '', '', '', '', 'maarchitects@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '700', '725', 'Anjani Infotech', '', '', '', '2020-12-25 12:27:35.000000'),
(70, 'QH Business', 'D3282B79R01313140B09', '', 'crm_eps', '50', '2021-03-12', 'Sangasm School of Excellence', '', '', '1482312251', '', '', '', '', 'BHILWARA', 'RAJASTHAN', '', '', 'Network Systems Solutions', '', '', '', '2020-12-25 12:27:05.000000'),
(71, 'QHTS', 'CA1C08526784F4123002', '', 'crm_eps', '105', '2021-03-17', 'NIAM', '', '', '2795177', '', 'niamjpr@hotmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'NCS COMPUTECH PVT.LTD.', '', '', '', '2020-12-25 12:31:10.000000'),
(72, 'QHTS', 'F8019972D700DA857279', '', 'crm_eps', '15', '2021-03-16', 'P C Modi and Company', '', '', '9772222296', '', 'ncssupport@hotmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '580', '700', 'Neha Computer Solution', '', '', '', '2020-12-25 12:28:34.000000'),
(73, 'QHTS', 'A082D36C1F17A1314200', '', 'crm_eps', '50', '2021-03-18', 'Poddar Pigments Limited', '', '', '9314417791', '', 'it@poddarpigments.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Aditya Solutions', '', '', '', '2020-12-25 12:31:38.000000'),
(74, 'QHTS', 'D7282850F11313043B09', '', 'crm_eps', '20', '2021-03-16', 'Goyal Kirana Store,Khanpur', '', '', '', '', 'prahaladkhanpur@rediffmail.com', '', '', 'KOTA', 'RAJASTHAN', '1450', '1500', 'NYATI COMPUTER', 'Quoted', 'Prices quoted to Nyati Computer', '750+Gst ', '2020-12-25 12:29:30.000000'),
(75, 'QHTS', '05CA2D7C98D601110F83', '', 'crm_eps', '40', '2021-03-23', 'Industrial Automation', '', '', '7442360374', '', 'info@indsgroup.com', '', '', 'Kota', 'RAJASTHAN', '', '', 'OM COMPUTER', '', '', '', '2020-12-25 12:28:04.000000'),
(76, 'QHTS', '618CA27E1F17D0B12520', '', 'crm_eps', '100', '2021-03-23', 'Nitin Spinners Limited', '', '', '1482286111', '', 'patodia@nitinspinners.com', '', '', 'BHILWARA', 'RAJASTHAN', '825', '850', 'Primestar It Services', '', '', '', '2020-12-25 12:31:53.000000'),
(77, 'Seqrite Endpoint Security Business', '09046279041979f8adc9', '', 'crm_eps', '20', '2021-03-30', 'CAZRI,RRS,BIKANER (RAJ.)', '', '', '1512252114', '', 'gahlot_moolsingh@rediffmail.com', '', '', 'BIKANER', 'RAJASTHAN', '500', '600', 'Vishvam Computer', 'Quoted', 'prices quoted to Vishvam computer', '600+Gst ', '2020-11-29 07:00:00.000000'),
(78, 'Seqrite Endpoint Security Total', 'E49C0884D724FEC08214', '', 'crm_eps', '10', '2021-03-31', 'Samir Wheaton', '', '', '9829067222', '', 'bjagwani@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '780', '1000', 'COMPUSYS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(79, 'Seqrite Endpoint Security Total', 'E983D18F1R27D0B22350', '', 'crm_eps', '63', '2021-04-02', 'cipet jaipur', '', '', '0141-3239784', '', 'cipetjprcad@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'B.M.Traders', '', '', NULL, '2020-11-29 07:00:00.000000'),
(80, 'Seqrite Endpoint Security Total', 'DA02A26D6718286190F0', '', 'crm_eps', '4', '2021-04-09', 'MEDLEY PHARMACEUTICALS LTD', '', '', '8781600187', '', 'MEDLEYJAIPUR@GMAIL.COM', '', '', 'JAIPUR', 'RAJASTHAN', '538', '729', 'Binary Infosolutions Pvt Ltd', '', '', NULL, '2020-11-29 07:00:00.000000'),
(81, 'Seqrite Endpoint Security Total', '8C85116A232818A130R0', '', 'crm_eps', '15', '2021-04-16', 'SHREE GOPAL INDUSTERIES', '', '', '9312993120', '', 'info@sgiindia.in', '', '', 'BHIWADI', 'RAJASTHAN', '', '', 'BBCC IT SOLUTION', '', '', NULL, '2020-11-29 07:00:00.000000'),
(82, 'Seqrite Endpoint Security Total', '83DF41752045F0D205D7', '', 'crm_eps', '21', '2021-04-18', 'Enkay Enviro Services', '', '', '0141-2363996', '', 'info@enkayenviro.com', '', '', 'JAIPUR', 'RAJASTHAN', '640', '700', 'THE SURYAN COMPUTES', '', '', NULL, '2020-11-29 07:00:00.000000'),
(83, 'Seqrite Endpoint Security Total', 'C084C3701F97A0647A10', '', 'crm_eps', '6', '2021-04-19', 'Bhushan System and Consulatants Ltd', '', '', '0141-2783323', '', 'vbhushan@bsclimited.com', '', '', 'JAIPUR', 'RAJASTHAN', '450', '475', 'Bhushan System and Consulatants Ltd', '', '', NULL, '2020-11-29 07:00:00.000000'),
(84, 'Seqrite Endpoint Security Total', '886F21534025047903A6', '', 'crm_eps', '73', '2021-04-21', 'Mgd School', '', '', '9414064084', '', 'harshitinfotech@dataone.in', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Harshit Infotech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(85, 'Seqrite Endpoint Security Business', '0F492A656CD602371F85', '', 'crm_eps', '15', '2021-04-26', 'VYANKATESH OPTICS', '', '', '', '', 'VINOD.KULKARNI@VYANKATESHOPTICS.COM', '', '', 'Jodhpur', 'RAJASTHAN', '', '', 'KAMALSHREE ENTERPRISES', '', '', NULL, '2020-11-29 07:00:00.000000'),
(86, 'Seqrite Endpoint Security Total', 'CFF3516C232818B190F0', '', 'crm_eps', '10', '2021-05-02', 'Hotel Neel Kamal', '', '', '9829179622', '', 'bharplani@hotmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '846', '896', 'Ratnatray Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(87, 'Seqrite Endpoint Security Total', '5CA5566R0A7101034248', '', 'crm_eps', '25', '2021-05-04', 'Nirwana Hometel', '', '', 'Pintu-8003993689', '', 'edp@jaipurhometel.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Frontline Solutions', '', '', NULL, '2020-11-29 07:00:00.000000'),
(88, 'Seqrite Endpoint Security Total', '898F1165A015C25108D7', '', 'crm_eps', '7', '2021-05-05', 'Shakun Motors Pvt Ltd', '', '', '7891233333', '', 'rmkjain@gmail.com', '', '', 'Jodhpur', 'RAJASTHAN', '', '', 'Compunet Technologies', '', '', NULL, '2020-11-29 07:00:00.000000'),
(89, 'Seqrite Endpoint Security Total', 'F201856272007D88117A', '', 'crm_eps', '33', '2021-05-05', 'Shakun Motors Pvt Ltd', '', '', '7891233333', '', 'yogesh.moondra@vw-shakunmotors.co.in', '', '', 'Jodhpur', 'RAJASTHAN', '', '', 'Compunet Technologies', '', '', NULL, '2020-11-29 07:00:00.000000'),
(90, 'Seqrite Endpoint Security Total', '14B2045F0DC101811218', '', 'crm_eps', '8', '2021-05-09', 'shri balaji builder', '', '', '01493-220065', '', 'sbbuilder@rediffmail.com', '', '', 'Alwar', 'RAJASTHAN', '', '', 'bbcc it solution', '', '', NULL, '2020-11-29 07:00:00.000000'),
(91, 'Seqrite Endpoint Security Total', 'E61D08741D94F9B06304', '', 'crm_eps', '15', '2021-05-10', 'KK ROYAL HOTEL AND CONVENTION CENTRE', '', '', '4055000', '', 'edp@kkjaipur.com', '', '', 'JAIPUR', 'RAJASTHAN', '1400', '1500', 'Global Computech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(92, 'Seqrite Endpoint Security Total', 'A5782B77f193090D2a07', '', 'crm_eps', '20', '2021-05-10', 'SEPL', '', '', '9214312280', '', 'accounts@sankhlagroup.co', '', '', 'Behror', 'RAJASTHAN', '675', '700', 'AVON COMPUTER', '', '', NULL, '2020-11-29 07:00:00.000000'),
(93, 'Seqrite Endpoint Security Total', '53411F5012D286029911', '', 'crm_eps', '25', '2021-05-11', 'Gemscab Industries Limited', '', '', '01493-645142', '', 'gemscab@datainfosys.net', '', '', 'Alwar', 'RAJASTHAN', '', '', 'Softmart Solution', '', '', NULL, '2020-11-29 07:00:00.000000'),
(94, 'Seqrite Endpoint Security Total', 'AE181A65R12332032F07', '', 'crm_eps', '6', '2021-05-12', 'Anup Enterprises Pvt. Ltd.', '', '', '0141 - 2370111', '', 'anirudh.sah@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '1400', '1450', 'Anup Enterprises', '', '', NULL, '2020-11-29 07:00:00.000000'),
(95, 'Seqrite Endpoint Security Total', 'DD484C61F12375081D09', '', 'crm_eps', '10', '2021-05-17', 'Gemscab Industries Limited Unit-II', '', '', '01493-260374', '', 'pathredi@gemscab.com', '', '', 'Alwar', 'RAJASTHAN', '', '', 'Softmart Solution Pvt. Ltd.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(96, 'Seqrite Endpoint Security Total', '0CA72D6928E602021F86', '', 'crm_eps', '20', '2021-05-21', 'Industrial Technical Enterprises kota', '', '', '0744-2365645', '', 'iteamit@gmail.com', '', '', 'Kota', 'RAJASTHAN', '1300', '1400', 'OM COMPUTER, KOTA', '', '', NULL, '2020-11-29 07:00:00.000000'),
(97, 'Seqrite Endpoint Security Total', 'F801386267008A8C7275', '', 'crm_eps', '35', '2021-05-22', 'Ananta Medicare Ltd', '', '', '7610932282', '', 'acount@anantamedicare.in', '', '', 'SRI GANGANAGAR', 'RAJASTHAN', '1100', '1700', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(98, 'Seqrite Endpoint Security Total', '0E552D6D3AD601911F82', '', 'crm_eps', '10', '2021-05-23', 'Anubha Creations', '', '', '9982400355', '', 'sales@netinfosystems.info', '', '', 'JAIPUR', 'RAJASTHAN', '1300', '1350', 'NETINFO SYSTEMS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(99, 'Seqrite Endpoint Security Business', '9318549AD32898F1E0r0', '', 'crm_eps', '20', '2021-05-25', 'CHANDRAKALA BROKING SERVICES PVT LTD', '', '', '9079007913', '', 'info@chandrakalabroking.com', '', '', 'BIKANER', 'RAJASTHAN', '1000', '1100', 'COMPUTER WORLD', '', '', NULL, '2020-11-29 07:00:00.000000'),
(100, 'Seqrite Endpoint Security Total', 'FA013452B6005A856164', '', 'crm_eps', '12', '2021-05-26', 'BB PROFESSIONALS (P) lTD', '', '', '9828113451', '', 'tech@bb.in', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'BB PROFESSIONALS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(101, 'Seqrite Endpoint Security Total', '0F627158071953F88A20', '', 'crm_eps', '10', '2021-05-27', 'Bella Casa Fashion and Retail Limited', '', '', '9829056514', '', 'gaurav@bellacasa.in', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Aditya Solutions', '', '', NULL, '2020-11-29 07:00:00.000000'),
(102, 'Seqrite Endpoint Security Total', 'FF013564D600DA897275', '', 'crm_eps', '30', '2021-05-27', 'Daiichi N Horizon Autocomp Pvt. Ltd.', '', '', '9462274677', '', 'jeetaish.sharma@daiichinh.co.in', '', '', 'Alwar', 'RAJASTHAN', '', '', 'eConcept Systems Pvt Ltd', '', '', NULL, '2020-11-29 07:00:00.000000'),
(103, 'Seqrite Endpoint Security Business', 'AE681567F193580C2906', '', 'crm_eps', '26', '2021-05-29', 'Technology Mindz', '', '', '7597959691', '', 'himanshu@marketingmindz.in', '', '', 'JAIPUR', 'RAJASTHAN', '600', '800', 'Shri Siddhi Vinayak Computers', '', '', NULL, '2020-11-29 07:00:00.000000'),
(104, 'Seqrite Endpoint Security Total', 'CC83E16E1F17C2A12200', '', 'crm_eps', '100', '2021-05-31', 'JSEL securities ltd.', '', '', '2729061', '', 'jselsec@yahoo.co.in', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'shiv shakti computers', '', '', NULL, '2020-11-29 07:00:00.000000'),
(105, 'Seqrite Endpoint Security Total', 'E31D08749924FF506214', '', 'crm_eps', '10', '2021-06-06', 'Kalinga Hotel', '', '', '2615870', '', 'info@kalingahotel.com', '', '', 'Jodhpur', 'RAJASTHAN', '1050', '1100', 'Diamond Sales>WEB<', '', '', NULL, '2020-11-29 07:00:00.000000'),
(106, 'Seqrite Endpoint Security Business', 'DD181E69F06312192A0B', '', 'crm_eps', '90', '2021-06-08', 'Seva Mandir Udaipur', '', '', '0294-2452006', '', 'info@sevamandir.org', '', '', 'Udaipur', 'RAJASTHAN', '', '', 'Regal Infotech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(107, 'Seqrite Endpoint Security Total', '84F7527A8338786170f0', '', 'crm_eps', '35', '2021-06-09', 'Reliable Diagonistic Centre', '', '', '9799983646', '', 'dishebh@yahoo.com', '', '', 'JAIPUR', 'RAJASTHAN', '1000', '1050', 'KALRA COMPUTER', '', '', NULL, '2020-11-29 07:00:00.000000'),
(108, 'Seqrite Endpoint Security Total', '61F7929AA818788180R0', '', 'crm_eps', '5', '2021-06-14', 'R. Raman Gupta and Co.', '', '', '9829008315', '', 'rrgupta_ca@hotmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '1100', '1200', 'Bhushan System', '', '', NULL, '2020-11-29 07:00:00.000000'),
(109, 'EPS BUSINESS', '49E42D6F0D7101912628', '', 'crm_eps', '30', '2021-06-15', 'SURFACE FINISHING', '', '', '', '', 'sfec@sify.com', '', '', 'Jodhpur', 'RAJASTHAN', '1050', '1100', 'DIAMOND SALES JODHPUR', '', '', NULL, '2020-11-29 07:00:00.000000'),
(110, 'Seqrite Endpoint Security Total', 'B73A0877AB74F7528512', '', 'crm_eps', '115', '2021-06-15', 'Autolite India Ltd', '', '', '9309452862', '', 'admin@autopal.com', '', '', 'JAIPUR', 'RAJASTHAN', '300', '330', 'Netcare Solutions', '', '', NULL, '2020-11-29 07:00:00.000000'),
(111, 'Seqrite Endpoint Security Total', 'B01D08617804FC602311', '', 'crm_eps', '25', '2021-06-17', 'Iscon Surgicals Limited', '', '', '2913208081', '', 'info@pricon.co.in', '', '', 'Jodhpur', 'RAJASTHAN', '900', '950', 'Diamond Sales', '', '', NULL, '2020-11-29 07:00:00.000000'),
(112, 'Seqrite Endpoint Security Total', 'BB1D0871B694RA602301', '', 'crm_eps', '25', '2021-06-22', 'MAhila Samerdhi Bank.', '', '', '0294-5131845', '', 'umsucb@rediffmail.com', '', '', 'Udaipur', 'RAJASTHAN', '', '', 'Netcom', '', '', NULL, '2020-11-29 07:00:00.000000'),
(113, 'Seqrite Endpoint Security Total', 'F3041F7145D28906C917', '', 'crm_eps', '105', '2021-06-23', 'CHEER SAGAR', '', '', '1415161111', '', 'edp@cheersagar.com', '', '', 'JAIPUR', 'RAJASTHAN', '730', '775', 'Informatic Computech Pvt Ltd', '', '', NULL, '2020-11-29 07:00:00.000000'),
(114, 'Seqrite Endpoint Security Total', 'D682B7611F47D0740510', '', 'crm_eps', '10', '2021-06-23', 'Gomour Fabrices P. Ltd.', '', '', '', '', 'suraj_net123@yahoo.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'CompuSys,Bhilwara', '', '', NULL, '2020-11-29 07:00:00.000000'),
(115, 'Seqrite Endpoint Security Total', '541D8C8R0A7101A34398', '', 'crm_eps', '25', '2021-06-29', 'The Rajsamand Urban Co-Operative Bank Ltd.', '', '', '9001997553', '', 'rucb96@rediffmail.com', '', '', 'Rajsamand', 'RAJASTHAN', '680', '1600', 'Pragati Infotech Pvt. Ltd.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(116, 'Seqrite Endpoint Security Total', '44621F6324D28515AC31', '', 'crm_eps', '1150', '2021-07-06', 'Jaipur National University', '', '', '9351288071', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'AS Infoways', '', '', NULL, '2020-11-29 07:00:00.000000'),
(117, 'Seqrite Endpoint Security Total', '879F717C6225C89203A5', '', 'crm_eps', '67', '2021-07-07', 'Audi Motors Pvt. Ltd.', '', '', '9660337478', '', 'audi.bkn.it@gmail.com', '', '', 'BIKANER', 'RAJASTHAN', '500', '525', 'Vishwam Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(118, 'Seqrite Endpoint Security Total', 'f6011875e2008d8a44ac', '', 'crm_eps', '47', '2021-07-09', 'THE ADITYA BIRLA PUBLIC SCHOOL ,CHITTORGARH', '', '', '9887482103', '', 'deepak.garg@adityabirla.com', '', '', 'Kota', 'RAJASTHAN', '560', '610', 'Om computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(119, 'Seqrite Endpoint Security Total', '820R918E7045E81203A7', '', 'crm_eps', '10', '2021-07-17', 'AHUJA OVERSEAS', '', '', '9829013036', '', 'ahuja@ahujajaipur.com', '', '', 'JAIPUR', 'RAJASTHAN', '1475', '1525', 'COMPUTER GARAGE', '', '', NULL, '2020-11-29 07:00:00.000000'),
(120, 'Seqrite Endpoint Security Total', 'AC484C54F17335066100', '', 'crm_eps', '40', '2021-07-18', 'VENUS FOOTARTS LIMITED', '', '', '9982515000', '', 'INFO@VENUSFOOTARTS.COM', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Computer Plus', '', '', NULL, '2020-11-29 07:00:00.000000'),
(121, 'Seqrite Endpoint Security Total', '007C8A9C5AD602371R83', '', 'crm_eps', '40', '2021-07-21', 'Media', '', '', '9828671197', '', 'mishra.anupam968@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '850', '1500', 'Omega TV Media Pvt ltd', '', '', NULL, '2020-11-29 07:00:00.000000'),
(122, 'Seqrite Endpoint Security Total', '85DF71767025C68303A8', '', 'crm_eps', '41', '2021-07-22', 'wipe hotwire india theramal equipments pvt ltd', '', '', '9813226063', '', 'jp@infotechsystems.co.in', '', '', 'Behror', 'RAJASTHAN', '731', '750', 'Gupta Computers', '', '', NULL, '2020-11-29 07:00:00.000000'),
(123, 'QHTS', '0522746D715848A1B0F0', '', 'crm_eps', '15', '2021-07-25', 'KANCHAN INDIA LTD.(PROCESS DIVISION)', '', '', '9414514400', '', 'singh.atal@gmail.com', '', '', 'BHILWARA', 'RAJASTHAN', '', '', 'Compsuys', '', '', NULL, '2020-11-29 07:00:00.000000'),
(124, 'Seqrite Endpoint Security Total', 'E21D0884BF94FE705304', '', 'crm_eps', '16', '2021-07-25', 'Arihant Tiles Marbles Pvt. Ltd.', '', '', '2440329', '', 'sales@arihantmarbles.com', '', '', 'Udaipur', 'RAJASTHAN', '', '', 'Mehta Infotech Pvt. Ltd.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(125, 'Seqrite Endpoint Security Business', '5487E37E1F77A0B25310', '', 'crm_eps', '60', '2021-07-29', 'ARG Group', '', '', '9928464645', '', 'itsupport@arggroupjaipur.com', '', '', 'JAIPUR', 'RAJASTHAN', '414', '505', '3 Handshake Solutions', '', '', NULL, '2020-11-29 07:00:00.000000'),
(126, 'Seqrite Endpoint Security Total', 'Fresh (0A700-A8E5C-F6243-91R85)', '', 'crm_eps', '100', '2021-07-30', 'Arun Shanti Education Society', '', '', '9929094392', '', 'suresh.verma@jietjodhpur.ac.in', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'B.D. Computronix', '', '', NULL, '2020-11-29 07:00:00.000000'),
(127, 'Seqrite Endpoint Security Total', 'A48B638D1R67A0515360', '', 'crm_eps', '25', '2021-11-09', 'Shakun Hotels', '', '', '9829460895', '', 'pradeep.sharma@shakunhotels.com', '', '', 'JAIPUR', 'RAJASTHAN', '1000', '1260', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(128, 'Seqrite Endpoint Security Total', '7F220F6023D2870AAC78', '', 'crm_eps', '50', '2021-07-31', 'GOYAL PROTINE LTD', '', '', '0744-2112262', '', 'goyaladmin@gplindia.com', '', '', 'KOTA', 'RAJASTHAN', '936', '1300', 'NYATI COMPUTER', '', '', NULL, '2020-11-29 07:00:00.000000'),
(129, 'Seqrite Endpoint Security Business', 'RA0134706510CA89727A', '', 'crm_eps', '50', '2022-01-05', 'SNG Group', '', '', '9929113996', '', 'maheshc@snggroupindia.com', '', '', 'JAIPUR', 'RAJASTHAN', '825', '1400', 'Abstract Solution & Consultants', '', '', NULL, '2020-11-29 07:00:00.000000'),
(130, 'Seqrite Endpoint Security Business', 'D421847C71584891F0F0', '', 'crm_eps', '60', '2021-08-08', 'Stonage IT', '', '', '9983800010', '', 'tulsiram@stoneage.co.in', '', '', 'JAIPUR', 'RAJASTHAN', '800', '826', 'Unique Info Solutions', '', '', NULL, '2020-11-29 07:00:00.000000'),
(131, 'Seqrite Endpoint Security Total', '0C7E5C6714E612121F85', '', 'crm_eps', '85', '2021-08-17', 'Magppie International ltd.', '', '', '0130-2219901', '', 'nitin@magppie.com', '', '', 'Sonipat', 'RAJASTHAN', '', '', 'Digital Solution', '', '', NULL, '2020-11-29 07:00:00.000000'),
(132, 'Seqrite Endpoint Security Total', 'D2691R9045A28C08BC53', '', 'crm_eps', '30', '2021-08-17', 'Oriental Power Cable Limited', '', '', '7665436671', '', 'chaturvedigautam@yahoo.com', '', '', 'Kota', 'RAJASTHAN', '1400', '1450', 'Axel Network', '', '', NULL, '2020-11-29 07:00:00.000000'),
(133, 'QHEPS-TOTAL', 'A6511F6015D286089D11', '', 'crm_eps', '100', '2021-08-31', 'coloured rocks trading pvt ltd', '', '', '2360225', '', 'pankaj@gemstvuk.in', '', '', 'JAIPUR', 'RAJASTHAN', '975', '1093', 'yash computers', '', '', NULL, '2020-11-29 07:00:00.000000'),
(134, 'QH mSuite StaN ', '', '', 'crm_eps', '101', '2021-01-28', 'Truworth Health Technologies Pvt. Ltd.', '', '', '', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '470', '480', '', '', '', NULL, '2020-11-30 06:17:33.000000'),
(135, 'Seqrite Endpoint Security Total', '75440F7046C28708CF91', '', 'crm_eps', '99', '2021-09-02', 'MSBS SCHOOL', '', '', '0141-3272000', '', 'MANGAL.MEENA76@GMAIL.COM', '', '', 'JAIPUR', 'RAJASTHAN', '950', '1000', 'ABSTRACT SOLUTION & CONSULTANTS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(136, 'Seqrite Endpoint Security Total', '837F1162911584B703A3', '', 'crm_eps', '88', '2021-09-11', 'Ambuja Public School', '', '', '2939288022', '', 'ambujapublicschool@ymail.com', '', '', 'JODHPUR', 'RAJASTHAN', '989', '1040', 'SIDDI ELECTRONICS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(137, 'Seqrite Endpoint Security Business', 'D218849AE31898B1A0R0', '', 'crm_eps', '8', '2021-09-11', 'Five Dimension System And Services', '', '', '9829059905', '', 'kadam@fivedimension.in', '', '', 'JAIPUR', 'RAJASTHAN', '925', '950', 'Five Dimension System And Services', '', '', NULL, '2020-11-29 07:00:00.000000'),
(138, 'Seqrite Endpoint Security Total', '058A4C8826E602721R86', '', 'crm_eps', '20', '2021-09-11', 'Maheshwari Girls Public School', '', '', '', '', 'mgpsjaipur@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '780', '940', 'GATEWAY COMPUTER', '', '', NULL, '2020-11-29 07:00:00.000000'),
(139, 'Seqrite Endpoint Security Business', 'Fresh (045C0-A8657-D6723-71R83)', '', 'crm_eps', '400', '2021-09-14', 'Mahendra Rathore', '', '', '964974644', '', 'mrathore@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Maan IT Solution', '', '', NULL, '2020-11-29 07:00:00.000000'),
(140, 'Seqrite Endpoint Security Business', '0B917A7F56F604391F86', '', 'crm_eps', '70', '2021-10-01', 'Symbiosis Managment Consultant', '', '', '', '', 'support@appointmentindia.com', '', '', 'JAIPUR', 'RAJASTHAN', '917', '967', 'Namokar IT Solution', '', '', NULL, '2020-11-29 07:00:00.000000'),
(141, 'Seqrite Endpoint Security Business', 'C5484B82R1A3180B1D07', '', 'crm_eps', '10', '2021-10-17', 'maheswari public school', '', '', '', '', 'ic.mukesh@yahoo.com', '', '', 'JAIPUR', 'RAJASTHAN', '700', '757', 'Gateway Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(142, 'CISUP', 'C4484C72F1A3080A1D0A', '', 'crm_eps', '5', '2021-10-30', 'Readiprint', '', '', '9694772144', '', 'tapan@readiprint.com', '', '', 'JAIPUR', 'RAJASTHAN', '1250', '1300', 'Five Dimensions', '', '', NULL, '2020-11-29 07:00:00.000000'),
(143, 'Seqrite Endpoint Security Total', '008A2C8B2F0604141R87', '', 'crm_eps', '10', '2021-11-04', 'Ashok Tambi', '', '', '0141-2378289', '', 'ssjaipuri@yahoo.co.in', '', '', 'JAIPUR', 'RAJASTHAN', '1150', '1200', 'COMPUTER GARAGE', '', '', NULL, '2020-11-29 07:00:00.000000'),
(144, 'Seqrite Endpoint Security Total', '8BEF21635025D36201DB', '', 'crm_eps', '12', '2021-11-06', 'Bansal', '', '', '9799114284', '', 'adamkhn616@gmail.com', '', '', 'Udaipur', 'RAJASTHAN', '1400', '1605', 'Shree Shyam Enterprises (Udaipur)', '', '', NULL, '2020-11-29 07:00:00.000000'),
(145, 'Seqrite Endpoint Security Business', 'A016A47A9318988160F0', '', 'crm_eps', '5', '2021-11-07', 'Goyal Fashions pvt ltd', '', '', '8003094441', '', 'mail@goyalfashions.net', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Latasha Enterprises', '', '', NULL, '2020-11-29 07:00:00.000000'),
(146, 'Seqrite Endpoint Security Business', '42321F6027C28B0BA610', '', 'crm_eps', '20', '2021-11-07', 'nishita trading', '', '', '9289179622', '', 'bharplani@hotmail.com', '', '', 'Ajmer', 'RAJASTHAN', '791', '876', 'ratnatray computer visions', '', '', NULL, '2020-11-29 07:00:00.000000'),
(147, 'CISUP', 'B98BB37E1F77A0426710', '', 'crm_eps', '20', '2021-11-16', 'SURAKSHA FLEXO PACK PVT LTD', '', '', '9828049620', '', 'suraksha.ajmer@gmail.com', '', '', 'Ajmer', 'RAJASTHAN', '970', '1020', 'RATNATRAY COMPUTER VISIONS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(148, 'CTSUP', '0DA95C8D95D601110Z83', '', 'crm_eps', '50', '2021-11-22', 'N.K BUILDCON PVT LTD', '', '', '', '', 'manrathoer@yahoo.com', '', '', 'JAIPUR', 'RAJASTHAN', '750', '800', 'COMPUTER GARAGE', '', '', NULL, '2020-11-29 07:00:00.000000'),
(149, 'QHTS', 'A48B638D1R67A0515360', '', 'crm_eps', '25', '2021-11-30', 'Shakun Hotels & Resorts Pvt Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'BINARY INFOSOLUTIONS PVT LTD', '', '', NULL, '2020-11-29 07:00:00.000000'),
(150, 'Seqrite Endpoint Security Total', 'E81C08841E24RCC08214', '', 'crm_eps', '10', '2021-12-04', 'Hyphen designs', '', '', '0141-4033610/9929847858', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '666', '823', 'IGOODS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(151, 'Seqrite Endpoint Security Total', '51C6599R0AD101A34C98', '', 'crm_eps', '15', '2021-12-09', 'SHINE JEWELLERY CONCEPTS', '', '', '9314074463', '', 'shinejc@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '925', '975', 'Anjani Infotech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(152, 'CISUP', 'DEE8C18A2328789170R0', '', 'crm_eps', '13', '2021-12-21', 'Wings Life Style', '', '', '9660500444', '', 'marketing.suti@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '1400', '1500', 'RAJ COMPUTERS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(153, 'Seqrite Endpoint Security Business', '858CB18E1R17C2B12500', '', 'crm_eps', '115', '2021-12-24', 'DEREWALA JEWELLERY INDUSTIRES LTD', '', '', '1414099480', '', 'janak.rajput@derewala.com', '', '', 'JAIPUR', 'RAJASTHAN', '700', '780', 'Anjani Infotech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(154, 'Seqrite Endpoint Security Business', '85E4948R0AD101832388', '', 'crm_eps', '42', '2022-03-28', 'Perfality Business Solutions LLP', '', '', '9799032219', '', 'kpojaipur@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '1250', '1300', 'Salient Infosys', '', '', NULL, '2020-11-29 07:00:00.000000'),
(155, 'Seqrite Endpoint Security Business', 'D53A088A1994RE205314', '', 'crm_eps', '19', '2022-02-09', 'BAJRANG WIRE PRODUCTS PVT LTD', '', '', '0141-4151110', '', 'contact@bajranggroup.com', '', '', 'JAIPUR', 'RAJASTHAN', '950', '1000', 'NATIONAL COMPUTER', '', '', NULL, '2020-11-29 07:00:00.000000'),
(156, 'Seqrite Endpoint Security Total', '88ARA1852045E91203AF', '', 'crm_eps', '15', '2022-03-19', 'Rog Nidan Seva', '', '', '2618886', '', 'info@rognidan.org', '', '', 'JODHPUR', 'RAJASTHAN', '850', '900', 'DIAMOND SALES', '', '', NULL, '2020-11-29 07:00:00.000000'),
(157, 'Seqrite Endpoint Security Business', '1E528079071943R8AAC0', '', 'crm_eps', '50', '2021-12-28', 'JDA/Narendra/Zentek', '', '', '9414020201', '', 'nskharra@zentekinfosoft.com', '', '', 'JAIPUR', 'RAJASTHAN', '900', '1125', 'Zentek Infosoft', '', '', NULL, '2020-11-29 07:00:00.000000'),
(158, 'Seqrite Endpoint Security Business', 'ABE6C17A634868B150F0', '', 'crm_eps', '22', '2021-12-28', 'BUREAU OF INDIAN STANDARDS', '', '', '9910080975', '', 'jbo@bis.org.in', '', '', 'JAIPUR', 'RAJASTHAN', '750', '1080', 'JAI AMBEY COMPUTERS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(159, 'Seqrite Endpoint Security Total', '81BRA195A045E89303A7', '', 'crm_eps', '35', '2021-10-15', 'GEHLOT ENTERPRISES PVT LTD', '', '', '9785091141', '', 'ksford.edpkot@ksmotors.com', '', '', 'kota', 'RAJASTHAN', '1350', '1400', 'Crystal Computers', '', '', NULL, '2020-11-29 07:00:00.000000'),
(160, 'Seqrite Endpoint Security Business', 'B1E6B17A6318685140F0', '', 'crm_eps', '25', '2021-12-28', 'Unique Group', '', '', '9414033455', '', 'integralbank.ho@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Latasha Enterprises', '', '', NULL, '2020-11-29 07:00:00.000000'),
(161, 'QHTS', '5C8B538D1R67A0B17960', '365', 'crm_eps', '55', '2022-01-01', 'CARGO MOTORS RAJ. PVT.LTD.', '', '', '9928368752', '', 'itservice.cargo@gmail.com', '', '', 'Ajmer', 'RAJASTHAN', '725', '750', 'SP Infocom', 'Lost and Renew', 'Renewed from HO Ahmedabad', '1150', '2020-11-30 06:12:14.000000'),
(162, 'Seqrite Endpoint Security Total', '0822B87B021961F89DC7', '', 'crm_eps', '180', '2022-01-11', 'akme fintrade(I) Ltd.', '', '', '2942489501', '', 'akmefintrade@yahoo.com', '', '', 'Udaipur', 'RAJASTHAN', '', '', '', '', '', NULL, '2020-11-29 07:00:00.000000'),
(163, 'CISUP', '21B3687R0A8101731168', '', 'crm_eps', '55', '2022-01-13', 'Readiprint Fashion', '', '', '9828111105', '', 'order@indianweddingsaree.com', '', '', 'JAIPUR', 'RAJASTHAN', '1190', '1240', 'Five Dimension', '', '', NULL, '2020-11-29 07:00:00.000000'),
(164, 'Seqrite Endpoint Security Total', '6F161F5016A28C018573', '', 'crm_eps', '15', '2022-01-14', 'ERCON COMPOSITES', '', '', '0291-2744064', '', 'ercon.it@ercon-india.com', '', '', 'JODHPUR', 'RAJASTHAN', '1039', '1133', 'DIAMOND SALES', '', '', NULL, '2020-11-29 07:00:00.000000'),
(165, 'Seqrite Endpoint Security Total', 'C7491R8046A28801BD63', '', 'crm_eps', '25', '2022-01-29', 'PUSA HOTELS PVT LTD', '', '', '2912514444', '', 'it@fernresidencyjodhpur.com', '', '', 'Jodhpur', 'RAJASTHAN', '1000', '1250', 'Marcomm Signages', '', '', NULL, '2020-11-29 07:00:00.000000'),
(166, 'Seqrite Endpoint Security Total', '835R71899125C7A003A5', '', 'crm_eps', '55', '2022-02-03', 'Rajendra Sharma', '', '', '8740926262', '', 'it@lbsacademy.edu.in', '', '', 'KOTA', 'RAJASTHAN', '800', '1270', 'Magnifying Solution Pvt.Ltd', '', '', NULL, '2020-11-29 07:00:00.000000'),
(167, 'Seqrite Endpoint Security Business', '13E2045F0C9101811218', '', 'crm_eps', '6', '2022-02-03', 'J.H.R', '', '', '2912571991', '', 'it@jodhanaheritage.com', '', '', 'Jodhpur', 'RAJASTHAN', '1375', '1425', 'All Well computech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(168, 'Seqrite Endpoint Security Business', 'BCE6218A339868C190R0', '', 'crm_eps', '45', '2022-02-09', 'Lemon Tree Premier With Compliance Pack', '', '', '9929445333', '', 'techm.pjp1@lemontreehotels.com', '', '', 'JAIPUR', 'RAJASTHAN', '755', '1045', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(169, 'Seqrite Endpoint Security Total', '01725277071999F8AA90', '', 'crm_eps', '10', '2023-03-25', 'curio craft', '', '', '2748166', '', 'info@curiojodhpur.com', '', '', 'JODHPUR', 'RAJASTHAN', '420', '600', 'DIAMOND SALES', '', '', NULL, '2020-11-29 07:00:00.000000'),
(170, 'Seqrite Endpoint Security Total', 'FE0186628200FD87228A', '', 'crm_eps', '10', '2022-02-24', 'DRAWMET', '', '', '220166', '', 'drawmet@gmail.com', '', '', 'BHIWADI', 'RAJASTHAN', '', '', 'AADHAR INFONET', '', '', NULL, '2020-11-29 07:00:00.000000'),
(171, 'Seqrite Endpoint Security Business', 'F701566482008D88228A', '', 'crm_eps', '20', '2022-02-28', 'Cad Max Consultancy Pvt.Ltd.', '', '', '0141-4113111', '', 'info@cadmax.co.in', '', '', 'JAIPUR', 'RAJASTHAN', '692', '740', 'Neha Computer Solution', '', '', NULL, '2020-11-29 07:00:00.000000'),
(172, 'Seqrite Endpoint Security Total', '35B3145F0C8101912128', '', 'crm_eps', '20', '2022-03-08', 'PRATAHKAL MULTIMEDIA', '', '', '', '', 'avinish_g@hotmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '650', '700', 'CHOICE INFOTECH', '', '', NULL, '2020-11-29 07:00:00.000000'),
(173, 'Seqrite Endpoint Security Total', 'FD019361B300FD8A2285', '', 'crm_eps', '19', '2022-03-09', 'kalani company', '', '', '9829888823', '', 'omcomputerskota@gmail.com', '', '', 'Kota', 'RAJASTHAN', '1200', '1250', 'Om Computers', '', '', NULL, '2020-11-29 07:00:00.000000');
INSERT INTO `crm_eps` (`id`, `product_name`, `serialno`, `plantype`, `type`, `users`, `expiry_date`, `company`, `designation`, `person_name`, `mobile`, `landline`, `email`, `address1`, `address2`, `city`, `state`, `in_sell`, `out_sell`, `dealer`, `status`, `remarks`, `quotedprice`, `modify_on`) VALUES
(174, 'Seqrite Endpoint Security Total', '0782A48E0719B6R85A30', '', 'crm_eps', '20', '2022-03-13', 'Hotel Royal Poly Victory', '', '', '9587899228', '', 'It@hotelroyalpolovictory.com', '', '', 'JAIPUR', 'RAJASTHAN', '800', '1600', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(175, 'Seqrite Endpoint Security Total', '05C54A8988C601371R82', '', 'crm_eps', '42', '2022-03-19', 'JKJ and Sons Jewellers', '', '', '9829260606', '', 'sunilmosun1@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '800', '1200', 'Premier Software', '', '', NULL, '2020-11-29 07:00:00.000000'),
(176, 'Seqrite Endpoint Security Business', '7C83836D1F67A0816450', '', 'crm_eps', '40', '2022-03-24', 'Emerge glass india pvt ltd', '', '', '7230053001', '', 'it.plant@emergeglass.in', '', '', 'Behror', 'RAJASTHAN', '1200', '1400', 'Avon Computers', '', '', NULL, '2020-11-29 07:00:00.000000'),
(177, 'Seqrite Endpoint Security Total', '0071526A010921F86C86', '', 'crm_eps', '60', '2022-03-25', 'Kundanmal Mukanmal', '', '', '0141-2361785', '', 'jaipur@kundanmal.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'G L Technovition', '', '', NULL, '2020-11-29 07:00:00.000000'),
(178, 'Seqrite Endpoint Security Total', 'R2017685C2006D89228C', '', 'crm_eps', '50', '2022-03-26', 'ROYAL ORCHID HOTELS PVT LTD', '', '', '8003299919/141 7191919', '', 'it.hroj@royalorchidhotels.com', '', '', 'JAIPUR', 'RAJASTHAN', '925', '1200', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(179, 'Seqrite Endpoint Security Total', '2AA82A7F0DB101B94A48', '', 'crm_eps', '60', '2022-03-27', 'JUMBO FINVEST INDIA LTD', '', '', '9928055842', '', 'jfpljaipur@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '770', '1375', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(180, 'Seqrite Endpoint Security Total', '3C371R7113A28C038D93', '', 'crm_eps', '65', '2022-04-02', 'PALI URBAN CO OPERATIVE BANK LTD', '', '', '9214421413', '', 'pucbcbs@gmail.com', '', '', 'Jodhpur', 'RAJASTHAN', '1300', '1500', 'VIRTUAL MACHINE', '', '', NULL, '2020-11-29 07:00:00.000000'),
(181, 'Seqrite Endpoint Security Total', '0018348AD3489871C0R0', '', 'crm_eps', '35', '2022-04-03', 'STERLING BANK', '', '', '982920394', '', 'STUCBOSS@GMAIL.COM', '', '', 'JAIPUR', 'RAJASTHAN', '800', '1300', 'Shri Siddhi Vinayak Computers', '', '', NULL, '2020-11-29 07:00:00.000000'),
(182, 'Seqrite Endpoint Security Total', '5684816F1F27D0A21340', '', 'crm_eps', '28', '2022-04-12', 'Vijay Tech', '', '', '0141-2294432', '', 'vijayassociates@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Tinnu International', '', '', NULL, '2020-11-29 07:00:00.000000'),
(183, 'Seqrite Endpoint Security Total', 'AD484D73F1C335068E0D', '', 'crm_eps', '46', '2022-04-18', 'Gie Jewels', '', '', '8003005888', '', 'gorang@giejewels.com', '', '', 'JAIPUR', 'RAJASTHAN', '1000', '1272', 'NSC Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(184, 'Seqrite Endpoint Security Total', 'DD282D79R04313082B09', '', 'crm_eps', '13', '2022-04-24', 'Khandwala Int. Fin. Serv. Pvt Ltd.', '', '', '0141-4099721-730', '', 'avijha@rediffmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'B B Professional', '', '', NULL, '2020-11-29 07:00:00.000000'),
(185, 'Seqrite Endpoint Security Business', 'AE781B79R1333306590A', '', 'crm_eps', '30', '2022-04-25', 'CAJAGDISH', '', '', '9829874414', '', 'GOPAL@CHIRAMRITLAW.COM', '', '', 'JAIPUR', 'RAJASTHAN', '800', '1475', 'Maa Karni Traders', '', '', NULL, '2020-11-29 07:00:00.000000'),
(186, 'Seqrite Endpoint Security Total', 'F80135656400DA8D4491', '', 'crm_eps', '40', '2022-04-25', 'MAAM ARTS', '', '', '9829052052', '', 'boss@maamarts.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'B B PROFESSIONALS MKT. PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(187, 'Seqrite Endpoint Security Total', 'C982817F1R27D1623300', '', 'crm_eps', '200', '2022-05-05', 'Paayas Milk Producer Company Ltd', '', '', '9549653405', '', 'harish.dhaka@paayasmilk.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '950', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(188, 'Seqrite Endpoint Security Total', '86AF21634025D39011D9', '', 'crm_eps', '500', '2022-05-27', 'Genus Power Infrastractures Ltd.', '', '', '9351019701', '', 'it@genus.in', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'NCS Computech Ltd.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(189, 'Seqrite Endpoint Security Total', 'C9291R8048A28708B963', '', 'crm_eps', '10', '2022-08-06', 'Dr.B.Lal.Clinical Laboratory Pvt.Ltd', '', '', '8696578843', '', 'it@blallab.com', '', '', 'JAIPUR', 'RAJASTHAN', '1250', '1300', 'Axel Network', '', '', NULL, '2020-11-29 07:00:00.000000'),
(190, 'Seqrite Endpoint Security Total', 'A6782886R193361B0A0C', '', 'crm_eps', '150', '2022-09-21', 'Iconic fashion retailing pvt ltd', '', '', '9468603331', '', 'Amit.sinha@iconicindia.com', '', '', 'JAIPUR', 'RAJASTHAN', '1250', '1300', 'COMPUTER GARAGE', '', '', NULL, '2020-11-29 07:00:00.000000'),
(191, 'Seqrite Endpoint Security Total', 'DE22C47D88284891E0F0', '', 'crm_eps', '10', '2022-06-01', 'Anant Syntex Ltd. Fabric Division', '', '', '1482249176', '', 'anantopelsyntex@gmail.com', '', '', 'BHILWARA', 'RAJASTHAN', '', '', '', '', '', NULL, '2020-11-29 07:00:00.000000'),
(192, 'Seqrite Endpoint Security Total', '06281D6B05E602821F83', '', 'crm_eps', '30', '2022-06-18', 'Tanishq', '', '', '', '', 'info@netinfosystems.info', '', '', 'JAIPUR', 'RAJASTHAN', '1150', '1450', 'netinfo systems', '', '', NULL, '2020-11-29 07:00:00.000000'),
(193, 'Seqrite Endpoint Security Total', '82AF21736025D0B801DD', '', 'crm_eps', '30', '2022-06-19', 'KIFS SECURITIES PVT. LTD.', '', '', '0141-4099700', '', 'anuj.katta@yahoo.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'B. B . PROFESSIONALS MARKETING PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(194, 'Seqrite Endpoint Security Total', 'EF86D38E1R77A3626600', '', 'crm_eps', '200', '2022-06-21', 'Bikaji Foods International Ltd', '', '', '9460168321', '', 'gajender.singh@bikajifoods.com', '', '', 'BIKANER', 'RAJASTHAN', '825', '900', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(195, 'Seqrite Endpoint Security Total', '005B0D7433D621111R83', '', 'crm_eps', '100', '2022-07-03', 'DEFENCE LABORATORY', '', '', '2912567421', '', 'maneesh1m@yahoo.co.in', '', '', 'Jodhpur', 'RAJASTHAN', '900', '1430', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(196, 'Seqrite Endpoint Security Total', '823A1R9047A28B07BF93', '', 'crm_eps', '17', '2022-07-08', 'Nims Fluxlite Pvt Ltd', '', '', '9.93E+09', '', 'foziaahad@fluxlitenims.com', '', '', 'JAIPUR', 'RAJASTHAN', '1025', '1300', 'Genesis System and Solutins', '', '', NULL, '2020-11-29 07:00:00.000000'),
(197, 'Seqrite Endpoint Security Total', 'D8181563F153920A2A0D', '', 'crm_eps', '20', '2022-07-16', 'Poornima HandicraftsPvt.Ltd.', '', '', '7737760971', '', 'info@poornimahandicrafts.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'cyber Shoppe', '', '', NULL, '2020-11-29 07:00:00.000000'),
(198, 'Seqrite Endpoint Security Total', 'Fresh (C1891-R9145-A28E0-7B853)', '', 'crm_eps', '90', '2022-07-26', 'mahima realestate', '', '', '9772210347', '', 'avanish@mahimagroup.org', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Hitachi Systems Microclinic pvt. ltd', '', '', NULL, '2020-11-29 07:00:00.000000'),
(199, 'Seqrite Endpoint Security Business', '0A7A4A8969D602371R86', '', 'crm_eps', '35', '2022-07-27', 'Rajasthan Gum Pvt. Ltd', '', '', '9829024044', '', 'dineshdhoot@rajasthangum.com', '', '', 'Jodhpur', 'RAJASTHAN', '830', '1420', 'S.S Electronics', '', '', NULL, '2020-11-29 07:00:00.000000'),
(200, 'Seqrite Endpoint Security Total', 'C0F2C19C564818A1A0R0', '', 'crm_eps', '25', '2023-02-27', 'Gopal Jain', '', '', '0141-4040345', '', 'ismc123@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '900', '1000', 'COMPUSYS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(201, 'Seqrite Endpoint Security Total', '2765687R0AB101731768', '', 'crm_eps', '10', '2022-07-30', 'Jewels Artisan', '', '', '9784595959', '', 'kuldeep@jewelsartisan.com', '', '', 'JAIPUR', 'RAJASTHAN', '825', '1442', 'NSC Computers', '', '', NULL, '2020-11-29 07:00:00.000000'),
(202, 'Seqrite Endpoint Security Business', '0E74C689091993R8EA22', '', 'crm_eps', '40', '2023-03-04', 'Bikaji Foods Internation Limited', '', '', '9460168321', '', 'gajender.singh@bikajifoods.com', '', '', 'BIKANER', 'RAJASTHAN', '800', '850', 'Vishwam Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(203, 'Seqrite Endpoint Security Total', 'A63A08779704R4806221', '', 'crm_eps', '10', '2023-11-02', 'APEX HOSPITALS PVT LTD.', '', '', '7737426727', '', 'it@apexhospitals.com', '', '', 'JAIPUR', 'RAJASTHAN', '1050', '1125', 'EXCEL SOLUTION', '', '', NULL, '2020-11-29 07:00:00.000000'),
(204, 'Seqrite Endpoint Security Total', 'B0491R9048A28E07B963', '', 'crm_eps', '33', '2022-08-02', 'A.L. Paper House', '', '', '0141-5107015', '', 'info@netinfosystems.info', '', '', 'JAIPUR', 'RAJASTHAN', '1212', '1254', 'Net Info System', '', '', NULL, '2020-11-29 07:00:00.000000'),
(205, 'Seqrite Endpoint Security Business', 'A3781789R18334078909', '', 'crm_eps', '40', '2022-08-20', 'Sushil udyog', '', '', '9001010041', '', 'ashoksinghcharan@gmail.com', '', '', 'Jodhpur', 'RAJASTHAN', '1280', '1420', 'S.S Electronics', '', '', NULL, '2020-11-29 07:00:00.000000'),
(206, 'Seqrite Endpoint Security Business', '8F9R82777025C0B203A4', '', 'crm_eps', '10', '2023-07-21', 'Sumit Arora', '', '', '9928843391', '', 'director.zenith@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '900', '950', 'Sunrise Computers', '', '', NULL, '2020-11-29 07:00:00.000000'),
(207, 'Seqrite Endpoint Security Business', 'F7F0128A630888D260R1', '', 'crm_eps', '50', '2023-01-31', 'the fern hotel', '', '', '9001993080', '', 'edp@fernhoteljaipur.com', '', '', 'JAIPUR', 'RAJASTHAN', '700', '750', 'HRM TECHNOLOGIES', '', '', NULL, '2020-11-29 07:00:00.000000'),
(208, 'Seqrite Endpoint Security Total', 'RE0236608010AA868272', '', 'crm_eps', '51', '2023-03-07', 'Tanya cars Pvt Ltd', '', '', '9928014893', '', 'manrathore@yahoo.com', '', '', 'JAIPUR', 'RAJASTHAN', '625', '660', 'COMPUTER GARAGE', '', '', NULL, '2020-11-29 07:00:00.000000'),
(209, 'Seqrite Endpoint Security Business', '88E7B17A93186841B0F0', '', 'crm_eps', '5', '2021-11-13', 'friends international', '', '', '9829019052', '', 'santosh@dyach.com', '', '', 'JAIPUR', 'RAJASTHAN', '593', '950', 'CHOICE INFOTECH', '', '', NULL, '2020-11-29 07:00:00.000000'),
(210, 'Seqrite Endpoint Security Total', '0F2D1C7C95E602120R83', '', 'crm_eps', '5', '2022-08-26', 'Sachiya Travels', '', '', '2389091', '', 'sachiyatravel@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '928', '989', 'Computer Garage', '', '', NULL, '2020-11-29 07:00:00.000000'),
(211, 'Seqrite Endpoint Security Total', 'BF3D08719724RBC05211', '', 'crm_eps', '10', '2022-09-09', 'D.R Mohnot And Company', '', '', '', '', 'manrathore@yahoo.com', '', '', 'JAIPUR', 'RAJASTHAN', '1195', '1236', 'Computer garage', '', '', NULL, '2020-11-29 07:00:00.000000'),
(212, 'Seqrite Endpoint Security Total', 'AA782D77F19339143A0E', '', 'crm_eps', '60', '2022-09-18', 'Samachar Jagat', '', '', 'Naveen Jain - 8005893490', '', 'sales@netinfosystems.info', '', '', 'JAIPUR', 'RAJASTHAN', '1250', '1300', 'NET INFO SYSTEM', '', '', NULL, '2020-11-29 07:00:00.000000'),
(213, 'Seqrite Endpoint Security Total', 'A13A0-8867B-64RA9-05111', '', 'crm_eps', '8', '2022-09-30', 'Khurdia Associates', '', '', '9460352800', '', 'kkhurdia@gmail.com', '', '', 'Udaipur', 'RAJASTHAN', '1200', '1300', 'Shrada Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(214, 'Seqrite Endpoint Security Total', '91F99-29A53-48886-1B0R0', '', 'crm_eps', '20', '2022-09-30', 'KUNDAN SWITCHGEARS PVT LRTD', '', '', '', '', '', '', '', 'Udaipur', 'RAJASTHAN', '1200', '1300', 'Shrada Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(215, 'Seqrite Endpoint Security Total', '91F9929A53488861B0R0', '', 'crm_eps', '25', '2022-10-02', 'Kundan Switchgears', '', '', '9829041586', '', 'vijay.jain@kundanswitchgears.com', '', '', 'Udaipur', 'RAJASTHAN', '1250', '1300', 'Shradha Computers', '', '', NULL, '2020-11-29 07:00:00.000000'),
(216, 'Seqrite Total Security', '0F9C0D6D38D611111F83', '', 'crm_eps', '80', '2022-10-05', 'Arch Academy of design', '', '', '9414223917', '', 'yashpal@archedu.org', '', '', 'JAIPUR', 'RAJASTHAN', '875', '940', 'Team Computer (P) Ltd', '', '', NULL, '2020-11-29 07:00:00.000000'),
(217, 'Seqrite Total Security', '808R8195B025C9B103AD', '', 'crm_eps', '7', '2022-11-21', 'Axes Architectural Design and Eng. Services P Ltd.', '', '', '9828115410', '', 'architectsaxes@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '1250', '1300', '3handshake innovation pvt. ltd.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(218, 'Seqrite Endpoint Security Total', 'R0017A849800EA846163', '', 'crm_eps', '20', '2022-11-21', 'Tanishq Store III', '', '', '', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '800', '1500', 'Net Info System', '', '', NULL, '2020-11-29 07:00:00.000000'),
(219, 'Seqrite Endpoint Security Total', '837F2176B225D2E001DA', '', 'crm_eps', '100', '2022-12-05', 'LK Singhania Education Centre Gotan', '', '', '01591-231022', '', 'dabas.suraj@gmail.com', '', '', 'Gotan', 'RAJASTHAN', '725', '1130', 'Front Line Solutions', '', '', NULL, '2020-11-29 07:00:00.000000'),
(220, 'Seqrite Endpoint Security Total', '16AC777F0A8101A34998', '', 'crm_eps', '26', '2022-12-05', 'Verdia Hotels Private Limited', '', '', '9414169605', '', 'shaunak@bamboosaa.com', '', '', 'Udaipur', 'RAJASTHAN', '1150', '1275', 'Swastik Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(221, 'Seqrite Endpoint Security Total', 'DE3A0899FC64SE918314', '', 'crm_eps', '65', '2022-12-07', 'XL Laboratories Pvt. Ltd', '', '', 'Neeraj - 8696922644', '', 'it.bhiwadi@xllaboratories.com', '', '', 'Neemrana', 'RAJASTHAN', '', '', 'Micro Systems World', '', '', NULL, '2020-11-29 07:00:00.000000'),
(222, 'Seqrite Endpoint Security Total', 'R6013583C600EA8C616A', '', 'crm_eps', '15', '2023-01-04', 'Akar Palm Hotel & Resorts Pvt Ltd', '', '', '7073334386', '', 'it.jaiput@clarksinn.in,writerish07@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '1275', '1500', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(223, 'Seqrite Endpoint Security Business', 'RF013976B7000A8B9492', '', 'crm_eps', '35', '2023-02-15', 'Pacific Institute', '', '', '9462552582', '', 'aj.amarjeet@gmail.com', '', '', 'UDAIPUR', 'RAJASTHAN', '750', '800', 'Synergy System (Udaipur)', '', '', NULL, '2020-11-29 07:00:00.000000'),
(224, 'Seqrite Endpoint Security Total', '0EAB2C6777E602120F83', '', 'crm_eps', '30', '2023-02-18', 'sandeep bafana', '', '', '', '', 'sandeep@mewarpolytex.com', '', '', 'Udaipur', 'RAJASTHAN', '', '', 'Computer Hut', '', '', NULL, '2020-11-29 07:00:00.000000'),
(225, 'Seqrite Endpoint Security Total', '4B96787R0AD101731268', '', 'crm_eps', '30', '2023-02-22', 'Mayoor Chopasani School', '', '', '9928614996', '', 'mcsjodhpur@gmail.com', '', '', 'Jodhpur', 'RAJASTHAN', '825', '1600', 'Binary Infosolutions Pvt Ltd', '', '', NULL, '2020-11-29 07:00:00.000000'),
(226, 'Seqrite Endpoint Security Total', 'BF191R7049A28002BC73', '', 'crm_eps', '6', '2023-02-22', 'Radha Soami Food Products Pvt Ltd', '', '', '9829644477', '', 'chopra_nipun@yahoo.com', '', '', 'JAIPUR', 'RAJASTHAN', '1600', '1800', 'Bhushan System', '', '', NULL, '2020-11-29 07:00:00.000000'),
(227, 'Seqrite Endpoint Security Total', 'B0F7229A736878A1A0R0', '', 'crm_eps', '30', '2023-03-03', 'LatIyal Handicrafts Pvt Ltd', '', '', '9116122001', '', 'ganesh@latiyalhandicrafts.com', '', '', 'JODHPUR', 'RAJASTHAN', '1150', '1750', 'SHREE BALAJI TECHNOLOGIES', '', '', NULL, '2020-11-29 07:00:00.000000'),
(228, 'Seqrite Endpoint Security Total', 'B13A08878774RB317212', '', 'crm_eps', '120', '2023-03-10', 'Basant', '', '', 'Ashok Jangid-7221860262', '', 'it@basant.info', '', '', 'JODHPUR', 'RAJASTHAN', '1290', '1340', 'SHREE BALAJI TECHNOLOGIES', '', '', NULL, '2020-11-29 07:00:00.000000'),
(229, 'Seqrite Endpoint Security Business', '2CB2755F0D6100811818', '', 'crm_eps', '40', '2023-03-22', 'LOTUS DAIRY PRODUCTS PVT. LTD.', '', '', '0141-2742307', '', 'lotusdairy@dataone.in', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Caliber Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(230, 'EPS BUSINESS', 'CAF9416C2118187070F0', '', 'crm_eps', '7', '2023-04-22', 'JAIN SHAH COMPANY', '', '', '2742968', '', 'jainshah@hotmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '920', '1235', 'SHIVSHAKTI COMPUTERS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(231, 'Seqrite Endpoint Security Total', 'AB681767F19358042909', '', 'crm_eps', '10', '2023-04-24', 'aryavratinfotech Pvt. Ltd.', '', '', '7742277291', '', 'info@tesca.in', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Binary Infosolutions Pvt Ltd', '', '', NULL, '2020-11-29 07:00:00.000000'),
(232, 'Seqrite Endpoint Security Business', 'A3782f77f1932a051a07', '', 'crm_eps', '5', '2023-05-03', 'Balaji Paper Mart', '', '', '9829067467', '', 'balajipaper.mart1@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '1400', '1525', 'Hitech Computer & Peripherals ', '', '', NULL, '2020-11-29 07:00:00.000000'),
(233, 'Seqrite Endpoint Security Total', '02D5467R1AC101034548', '', 'crm_eps', '100', '2023-05-13', 'Medipulse Hospital', '', '', '9929094392', '', 'info@medipulse.in', '', '', 'Jodhpur', 'RAJASTHAN', '', '', 'B.D. computronix', '', '', NULL, '2020-11-29 07:00:00.000000'),
(234, 'Seqrite Endpoint Security Total', 'BD8553591F17A0314250', '', 'crm_eps', '40', '2023-05-14', 'KANSARA BEARINGS LTD', '', '', '9928010826', '', 'edp@kansara.com', '', '', 'Jodhpur', 'RAJASTHAN', '1300', '1450', 'CTC INFOTECH', '', '', NULL, '2020-11-29 07:00:00.000000'),
(235, 'Seqrite Endpoint Security Total', '728906701F97A0F47B20', '', 'crm_eps', '15', '2023-05-18', 'Vantage Organic Foods Private Limited', '', '', '9549017865', '', 'manish@globalcomputech.com', '', '', 'JAIPUR', 'RAJASTHAN', '1200', '1450', 'Global Computech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(236, 'Seqrite Endpoint Security Total', '61971F7026A287069D63', '', 'crm_eps', '50', '2023-06-05', 'ORIENT SYNTEX PROP:APM INDUSTRIES', '', '', '9314623746', '', 'it@apmindustries.co.in', '', '', 'BHIWADI', 'RAJASTHAN', '', '', 'BBCC IT SOLUTION', '', '', NULL, '2020-11-29 07:00:00.000000'),
(237, 'EPS TOTAL', '20A62C7F0D7101972C28', '', 'crm_eps', '10', '2023-06-16', 'Gurukripa Career Institute', '', '', '9587096088', '', 'gcisikar@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Jalan Computers', '', '', NULL, '2020-11-29 07:00:00.000000'),
(238, 'Seqrite Endpoint Security Total', 'A7782D87R16338081A0B', '', 'crm_eps', '7', '2023-06-17', 'Gem Plaza Jewellery MFG. CO. Pvt. Ltd.', '', '', '1415102412', '', 'gemplaza@gemplaza.net', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'dkalrapc@gmail.com', '', '', NULL, '2020-11-29 07:00:00.000000'),
(239, 'Seqrite Endpoint Security Total', '14115079011937R88D66', '', 'crm_eps', '370', '2023-06-17', 'Narayan Seva Sanathan Badi', '', '', '9983304444', '', 'ifo@narayanseva.org', '', '', 'Udaipur', 'RAJASTHAN', '', '', 'My Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(240, 'Seqrite Endpoint Security Business', '0B71616C010927F86DA6', '', 'crm_eps', '15', '2023-06-18', 'GEM PLAZA JEWELLERY MFG CO.(P) LTD.', '', '', '0141-5102401', '', 'mail@gemplaza.net', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'KALRA COMPUTERS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(241, 'Seqrite Endpoint Security Total', '48021R7323A28A05FB43', '', 'crm_eps', '150', '2023-06-18', 'JIET Group of Institutions', '', '', '9929094392', '', 'suresh.verma@jietjodhpur.com', '', '', 'Jodhpur', 'RAJASTHAN', '', '', 'B.D. Computronix', '', '', NULL, '2020-11-29 07:00:00.000000'),
(242, 'Seqrite Endpoint Security Total', '0D6D0D60180614141R86', '', 'crm_eps', '60', '2023-06-30', 'Bhansali Engineering Polymers Ltd., AbuRoad', '', '', '2974226781', '', 'rajesh@bhansaliabs.com', '', '', 'AbuRoad', 'RAJASTHAN', '', '', 'Quick Heal', '', '', NULL, '2020-11-29 07:00:00.000000'),
(243, 'Seqrite Endpoint Security Total', '70311F6012D28C039D21', '', 'crm_eps', '20', '2023-07-17', 'Friends cards', '', '', '7023333132', '', 'friendsweddingcards@yahoo.com', '', '', 'JAIPUR', 'RAJASTHAN', '1200', '1450', 'SKYNET INDIA', '', '', NULL, '2020-11-29 07:00:00.000000'),
(244, 'Seqrite Endpoint Security Business', 'C98703601F97A0A46802', '', 'crm_eps', '1000', '2023-08-02', 'BITS PILANI', '', '', '1596515100', '', 'vikas@pilani.bits-pilani.ac.in', '', '', 'Pilani', 'RAJASTHAN', '', '', 'Rajasthan Network Solutions', '', '', NULL, '2020-11-29 07:00:00.000000'),
(245, 'QHTS', 'A43A08868A74RB707211', '', 'crm_eps', '12', '2023-08-04', 'K.G. KOTHARI HUF', '', '', '9928448888', '', 'pradeep.pandey@kgkmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '950', '1050', 'SKYNET (INDIA)', '', '', NULL, '2020-11-29 07:00:00.000000'),
(246, 'Seqrite Endpoint Security Total', '4B011F5215D289089721', '', 'crm_eps', '250', '2023-08-14', 'Sophia Girls College, Ajmer', '', '', '9530259383', '', 'chaturvedigautam@yahoo.com', '', '', 'Ajmer', 'RAJASTHAN', '552', '1140', 'Binary Info Solutions PVT. LTD.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(247, 'Seqrite Endpoint Security Total', 'R60116716100DD8B2288', '', 'crm_eps', '5', '2023-08-29', 'Dayanand Textile Ind. Pvt. Ltd.', '', '', '', '', 'finance@dayanandtextile.com', '', '', 'BHILWARA', 'RAJASTHAN', '', '', 'CompuSys Bhilwara', '', '', NULL, '2020-11-29 07:00:00.000000'),
(248, 'QH BUSINESS', '0B941C5F2D4101811718', '365', 'crm_eps', '170', '2021-10-18', 'Director, RPA', '', '', '', '', 'dirrpa@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'NCS COMPUTECH PVT. LTD.', 'Lost and Renew', 'taken by Aditya Solutions ', NULL, '2020-11-30 06:11:40.000000'),
(249, 'QHTS', '2F5F61561015B7E100A7', '', 'crm_eps', '5', '2037-01-24', 'Adinath Sona Medicals', '', '', '', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Computer Garage', 'Dont want to renew', 'discontinue product ', '', '2021-01-01 08:50:32.000000'),
(250, 'CTRUP', '0E61C168061950F26AAF', '', 'crm_eps', '5', '', 'Sunita Motor', '', '', '', '', '', '', '', 'Jodhpur', 'RAJASTHAN', '', '', 'Diamond Sales', 'Dont want to renew', 'company closed', NULL, '2020-11-29 07:00:00.000000'),
(251, 'QHTS', 'AD0A02568464F3A06411', '1095', 'crm_eps', '20', '2023-12-18', 'Sunrise', '', '', '1415107015', '', 'info@netinfosystems.info', '', '', 'JAIPUR', 'RAJASTHAN', '1300', '1400', 'Netinfo Systems', 'Renewed', '', NULL, '2020-12-18 12:24:44.000000'),
(252, 'QHTS', 'CC8C83801RA7A0B48540', '', 'crm_eps', '20', '2022-09-12', 'SL NUTRITION', '', '', '9511505676', '', '', '', '', 'NAGAUR', 'RAJASTHAN', '', '1500', 'E-CYBERNETECH', '', '', NULL, '2020-11-29 07:00:00.000000'),
(253, 'QHTS', '09BC6A999DD602381R85', '', 'crm_eps', '35', '2022-11-22', 'Chittorgarh Urban Co-Op Bank Ltd.', '', '', '7300077148', '', 'hocor@cucbl.com', '', '', 'Chittaurgarh', 'RAJASTHAN', '1200', '1300', 'Sagar Technologies', '', '', NULL, '2020-11-29 07:00:00.000000'),
(254, 'QHTS', '32771R8015A2890C8893', '', 'crm_eps', '35', '2022-12-23', 'completion oil tools pvt. ltd.', '', '', '9813484046', '', 'it@completionoiltools.com', '', '', 'BHIWADI', 'RAJASTHAN', '1130', '1180', 'BANSAL IT SOLUTION', '', '', NULL, '2020-11-29 07:00:00.000000'),
(255, 'QHTS', '6EF8C28A332888A190R0', '', 'crm_eps', '10', '2023-01-10', 'pavan putra waferes pvt ltd', '', '', '9001010041', '', 'ashoksinghcharan@gmail.com', '', '', 'Jodhpur', 'RAJASTHAN', '', '1650', 'S.S Electronics', '', '', NULL, '2020-11-29 07:00:00.000000'),
(256, 'QHTS', 'AEA84979R113351D0C00', '', 'crm_eps', '50', '2023-05-26', 'Deora Hyundai Jodhpur', '', '', '9829024536', '', '', '', '', 'Jodhpur', 'RAJASTHAN', '', '1640', 'Binary Info Solutions PVT. LTD./PEETER ', '', '', NULL, '2020-11-29 07:00:00.000000'),
(257, 'QHTS', 'ADA84A80R263383E0C0B', '', 'crm_eps', '150', '2023-06-06', 'Outreach First', '', '', '9828144487', '', 'narendra@outreachfirst.com', '', '', 'JAIPUR', 'RAJASTHAN', '750', '775', 'Lexical System', '', '', NULL, '2020-11-29 07:00:00.000000'),
(258, 'CLOUD', '8A7S82879225C0C503A8', '', 'crm_eps', '125', '2024-01-10', 'Shriram Rayons - (DCM Shriram Industries Ltd)', '', '', '9929590896', '', 'ksgiri@dcmsr.com', '', '', 'KOTA', 'RAJASTHAN', '830', '870', 'Om Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(259, 'CLOUD', '0101838901923F8AY86', '', 'crm_eps', '17', '2021-08-13', 'Chokhi Dhani Resorts', '', '', '', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '550', '600', 'COMPUSYS', '', '', NULL, '2020-11-29 07:00:00.000000'),
(260, 'QH mSuite StaN ', '', '', 'crm_eps', '101', '2021-01-28', 'Truworth Health Technologies Pvt. Ltd.', '', '', '', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '470', '480', '', '', '', NULL, '2020-11-30 06:17:33.000000'),
(261, 'QHTS', '4NE5072F0HF102C34258', '', 'crm_eps', '22', '2023-02-25', 'Khaitan Logistics Pvt Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '500', '525', '3handshake innovation pvt. ltd.', '', '', NULL, '2020-11-29 07:00:00.000000'),
(262, 'QHTS', 'R3018C91A700DA899499', '', 'crm_eps', '13', '2022-11-21', 'Beltecno India Pvt. Ltd.', '', '', '9116009580', '', 'a.verma@beltecnoindia.com', '', '', 'Neemrana', 'RAJASTHAN', '', '1550', 'Tephra Infotech', '', '', NULL, '2020-11-29 07:00:00.000000'),
(263, 'QHTS', 'F102366380007A8C8273', '', 'crm_eps', '', '2021-03-05', 'ST.PAUL', '', '', '', '', '', '', '', 'JODHPUR', 'RAJASTHAN', '625', '950', 'GLOBAL INFINITY', '', '', NULL, '2020-11-29 07:00:00.000000'),
(264, 'QHTS', '28749A6F0A8101832588', '', 'crm_eps', '15', '2023-05-13', 'DURJA JEWELLERS LLP', '', '', '9680799768', '', 'sachin@durja.org', '', '', 'JAIPUR', 'RAJASTHAN', '1300', '1400', 'SMART TECHNO IT SOLUTION', '', '', NULL, '2020-11-29 07:00:00.000000'),
(265, 'QH BUSINESS', '0374B19B0919C3R8DA92', '', 'crm_eps', '5', '2023-10-12', 'Raghav Trading Corporation', '', '', '9829076227', '', 'rtcjpr@yahoo.com', '', '', 'JAIPUR', 'RAJASTHAN', '1300', '1400', 'Data Infotech Computer', '', '', NULL, '2020-11-29 07:00:00.000000'),
(266, 'QH BUSINESS', '1E987B7R0A5101751968', '', 'crm_eps', '12', '2022-12-27', 'Bajrang Wire Products (india) pvt ltd Unit 3', '', '', '9001297679', '', 'bagru@bajranggroup.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '1000', 'NATIONAL COMPUTER', '', '', NULL, '2020-11-29 07:00:00.000000'),
(267, 'QH BUSINESS', 'AB782A87R193790C1A06', '', 'crm_eps', '5', '2023-05-05', 'MP HOVIS', '', '', '9214016501', '', 'mp_foods@yahoo.co.in', '', '', 'ALWAR', 'RAJASTHAN', '', '1150', 'TRIJAL INFOTECH', '', '', NULL, '2020-11-29 07:00:00.000000'),
(268, 'QH BUSINESS', '5D89988D1R67A0B17810', '', 'crm_eps', '25', '2023-08-12', 'KD MOTORS PVT LTD', '', '', '9549542771', '', '', '', '', 'JODHPUR', 'RAJASTHAN', '880', '1650', 'Binary Info Solutions PVT. LTD./PEETER ', '', '', NULL, '2020-11-29 07:00:00.000000'),
(269, 'QHTS', 'E9191R904BA28809BC79', '', 'crm_eps', '5', '2023-10-02', 'Balaji Lab', '', '', '9828293930', '', 'balajidiagnostic@ymail.com', '', '', 'BUNDI', 'RAJASTHAN', '', '1200', 'MOTION COMPUTER', '', '', NULL, '2020-11-29 07:00:00.000000'),
(270, 'QHTS', 'DE5A0879A874F790C114', '', 'crm_eps', '5', '2021-02-07', 'ROHIT', '', '', '9982232786', '', 'shahrukh.lohani@outlook.com', '', '', 'JODHPUR', 'RAJASTHAN', '', '950', 'GLOBAL INFINITY TECHNOLOGY', 'Quoted', 'Prices quoted to Global Infinite', '780+Gst for 1 Yr', '2020-11-29 07:00:00.000000'),
(271, 'QHTS', '8F6F716A9025C78102A5', '', 'crm_eps', '5', '2021-03-01', 'Ramblastek', '', '', '9461212711', '', 'sgc.jdpr@gmail.com', '', '', 'JODHPUR', 'RAJASTHAN', '', '950', 'Shri Ganpati Computers', '', '', NULL, '2020-11-29 07:00:00.000000'),
(272, 'Mobile Device Management Software ', 'B56A08876674R890A112', '', 'crm_eps', '5', '2023-06-03', 'CA Mukesh Soni', '', '', '9799046116', '', 'camukeshsoni.jaipur@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '1400', 'Bhushan System', '', '', NULL, '2020-11-29 07:00:00.000000'),
(273, 'QHTS', '7C251NS045H2880CD883', '', 'crm_eps', '50', '2021-02-05', 'JAIPUR RUGS COMPANY PVT LTD', '', '', '', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '', '1000', 'Binary Info Solutions PVT. LTD.', 'Hold', 'Currently they have no Renewal ', NULL, '2020-11-29 07:00:00.000000'),
(274, 'QHTS', '78E9917A430878B190F1', '365', 'crm_eps', '102', '2021-12-28', 'Fiem Industries', '', '', '9990349938', '', 'hrdtapukara@fiemindustries.com', '', '', 'ALWAR', 'RAJASTHAN', '', '', 'Binary Info Solutions PVT. LTD.', 'Lost and Renew', 'renewed from Delhi', '', '2020-12-28 07:15:25.000000'),
(275, 'QHTS', '8EAFA175A045E89303A8', '', 'crm_eps', '25', '2021-11-02', 'ArcGate', '', '', '9950052003', '', 'support@arcgate.com', '', '', 'UDAIPUR', 'RAJASTHAN', '', '', 'SMART COMPUTER', '', '', NULL, '2020-11-29 07:00:00.000000'),
(276, 'QH BUSINESS', '07B84A7088F6043A1F85', '365', 'crm_eps', '30', '2021-11-20', 'Sarda Biopolymers Pvt. Ltd', '', '', '7208434670', '', 'pankaj@sardagums.com', '', '', 'PALI', 'RAJASTHAN', '', '', 'Binary Info Solutions PVT. LTD.', 'Lost and Renew', 'renewed from Delhi', NULL, '2020-11-29 07:00:00.000000'),
(277, 'QHTS', 'AF371R802AA28B0A9D73', '', 'crm_eps', '15', '2020-10-24', 'STPI JAIPUR', '', '', '9810013986', '', 'jaipur.oic@stpi.in', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Binary Info Solutions PVT. LTD.', 'Quoted', 'delay from ', '650', '2020-11-29 07:00:00.000000'),
(278, 'QH BUSINESS', '65C79F8F0A8101A34BA8', '365', 'crm_eps', '30', '2021-11-19', 'green city surveyor', '', '', '9314165000', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Binary Info Solutions PVT. LTD.', 'Lost and Renew', 'renewed from Delhi', NULL, '2020-11-29 07:00:00.000000'),
(279, 'QH BUSINESS', '04982A7576D602571F89', '', 'crm_eps', '10', '2040-11-25', 'Mahesh Bank Jaipur Branch', '', '', '9849378733', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'Compu Care', 'Dont want to renew', 'Hyderabad account â€“ out of zone Renewal done by AP based dealer, not in our credit.', '650', '2020-11-29 07:00:00.000000'),
(280, 'QHTS', 'A417947AB328987180F0', '', 'crm_eps', '10', '2040-11-25', 'Mahesh Bank Jaipur Branch', '', '', '9849378733', '', '', '', '', 'BHILWARA', 'RAJASTHAN', '', '', 'Compu Care', 'Dont want to renew', 'Hyderabad account â€“ out of zone Renewal done by AP based dealer, not in our credit.', '650', '2020-11-29 07:00:00.000000'),
(281, 'QH BUSINESS', 'AB882D79F1B3350D1A08', '', 'crm_eps', '6', '2020-11-02', 'Dr. Vinay,s Lab', '', '', '9953578794', '', 'dr.vinaylab@gmail.com', '', '', 'ALWAR', 'RAJASTHAN', '', '', 'Binary Info Solutions PVT. LTD.', 'Quoted', 'delay from customer side ', '800', '2020-11-29 07:00:00.000000'),
(282, 'QHTS', 'B53A08876674R4C0B412', '1095', 'crm_eps', '20', '2023-12-28', 'Miyan Bazaz Impex', '', '', '9829200088', '', 'arpit@miyanbazazimpex.com', '', '', 'JAIPUR', 'RAJASTHAN', '', '', 'cyber Shoppe', 'Lost and Renew', 'Renewed by Cyber Shoppe', '', '2020-12-28 07:26:06.000000'),
(285, 'EPS BUSINESS', 'E49C0884D724FEC08214', '1095', 'crm_eps', '10', '2021-03-30', 'SAMIIR WHEATON', '', '', '9829067222', '', 'samiirwheaton@gmail.com', '', '', 'Jaipur', 'RAJASTHAN', '600', '700', 'Compusys', NULL, '', NULL, '2021-01-18 10:22:55.359927'),
(286, 'EPS TOTAL', '81E7C19AA36868B130R0', '1095', 'crm_eps', '45', '2021-01-02', 'Shri Mangalam Auto Pvt Ltd', 'IT Person', 'Shakeel', '9116007205', '7230055910', 'mangalam.sales@marutidealers.com', '', '', 'Nagaur', 'RAJASTHAN', '1000', '1300', 'RK Computer ', NULL, '', NULL, '2021-01-23 09:44:50.768331'),
(287, 'EPS TOTAL', 'F73A0872F754R4103212', '1095', 'crm_eps', '10', '2024-01-08', 'Bomabay Hospital Trust ', '', '', '9820628047', '', 'anuj@wi2fi.in', '', '', 'Jaipur', 'RAJASTHAN', '700', '800', 'Fidelity Networks', NULL, '', NULL, '2021-01-28 07:26:45.026257');

-- --------------------------------------------------------

--
-- Table structure for table `crm_fortinet`
--

CREATE TABLE `crm_fortinet` (
  `id` int(16) NOT NULL,
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
  `quotedprice` varchar(100) DEFAULT NULL,
  `modify_on` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_fortinet`
--

INSERT INTO `crm_fortinet` (`id`, `product_name`, `serialno`, `plantype`, `type`, `users`, `expiry_date`, `company`, `designation`, `person_name`, `mobile`, `landline`, `email`, `address1`, `address2`, `city`, `state`, `in_sell`, `out_sell`, `dealer`, `status`, `remarks`, `quotedprice`, `modify_on`) VALUES
(1, '60E', 'FWF60E4Q16010449', '', 'crm_fortinet', '', '2021-04-12', 'L&T', '', 'sathya PRAKASH', '+91 141-2247777', '', 'sathyaprakash.raga@gmail.com', 'D-236,amarapalli circle, Vaishali nagar', '', 'JAIPUR', 'Rajasthan', '', '', '', '', '', NULL, '2020-11-29 15:02:19.891961'),
(2, '50E', 'FGT50E3U17002750', '', 'crm_fortinet', '', '2023-04-03', 'Sigma Minerals Limited', '', 'RAWAT SINGH', '', '', 'it@sigmaminerals.com', '4, Heavy Industrial Area', '', 'JODHPUR', 'Rajasthan', '', '', 'SD SERVICES', '', '', NULL, '2020-11-29 15:02:19.892166'),
(3, '100E', '', '', 'crm_fortinet', '', '2023-09-05', 'Vaibhavglobal Ltd.', '', 'MAHENDRA RATHORE', '', '', 'mahendra.rathore@vaibhavglobal.com', '', '', 'JAIPUR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', 'Lost and Upgrade', 'lost and upgrade on sophos', NULL, '2020-11-29 15:02:19.892298'),
(4, '60E', 'FGT60ETK19023542', '', 'crm_fortinet', '', '2023-06-25', 'Principal Govt Nursing College (Bikaner)', '', 'Narendra Koushik', '9413615953', '', 'gconspmcagh@gmail.com', 'PBM Hospital Ground ,Nagnecha Scheme', '', 'BIKANER', 'Rajasthan', '51666', '84000', 'Binary Infosolutions Private Limited', '', '', '', '2020-11-30 15:04:44.000000'),
(5, '80C', 'FGT80C3914600857', '365', 'crm_fortinet', '', '2039-12-06', 'ARMY PUBLIC SCHOOL BKN', '', 'SHASHI Sharma', '9829164134', '', 'yogeshbkn1@gmail.com', 'INSIDE ARMY CANTT BIKANER', '', 'BIKANER', 'Rajasthan', '19451', '26000', 'Binary Infosolutions Private Limited', 'Dont want to renew', 'Due to Covid', '20000', '2020-11-30 06:20:05.000000'),
(6, '100E', 'FG100ETK18014692', '', 'crm_fortinet', '', '2025-01-06', 'BIHAR STATE POWER TRANSMISSION COMPANY LIMITED', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '', '', 'E-connect Solutions Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.892670'),
(7, '100E', 'FG100ETK18014397', '', 'crm_fortinet', '', '2025-01-06', 'BIHAR STATE POWER TRANSMISSION COMPANY LIMITED', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '289000', '346000', 'E-connect Solutions Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.892784'),
(8, '100D', 'FG100D3G16800221', '', 'crm_fortinet', '', '2021-04-22', 'Shri Ram Piston Ltd.', '', 'VIVEK JAISWAL', '8875028791', '', 'vivek.jaiswal@shrirampistons.com', 'SP-1/892 & 893, RIICO Industrial Area Pathredi', '', 'ALWAR', 'Rajasthan', '', '', 'F1 Infotech Pvt. Limited', '', '', NULL, '2020-11-29 15:02:19.892903'),
(9, '100D', 'FG100D3G16803842', '', 'crm_fortinet', '', '2021-05-15', 'Cosmo Construction Company', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '', '', '', '', NULL, '2020-11-29 15:02:19.893010'),
(10, '200E', 'FG200E4Q17900198', '', 'crm_fortinet', '', '2020-06-26', 'Sardar Doon-IP & DATA', '', '', '', '', '', '', '', 'JODHPUR', 'Rajasthan', '306000', '494500', 'Binary Infosolutions Private Limited', 'Hold', 'school not opened yet', '', '2020-11-30 15:08:55.000000'),
(11, '60D', 'FGT60D4615093901', '', 'crm_fortinet', '', '2020-06-27', 'Pwans Specilities Pvt. Ltd.', '', 'Praveen Vyas', '91 8058790583', '', 'praveen@pawans.com', 'A-13', '', 'JAIPUR', 'Rajasthan', '16650', '20000', 'SKYNET INDIA JPR', 'Hold', 'pending from customer side .', NULL, '2020-11-29 15:02:19.893234'),
(12, '30E', 'FGT30E5618082488', '', 'crm_fortinet', '', '2043-11-07', 'GCKC INFRA', '', '', '+91 9828321000', '', 'info@gckcinfra.com', '', '', 'JAIPUR', 'Rajasthan', '', '', '', 'Dont want to renew', 'UPGRADE AND GIVEN NEW BOX', NULL, '2020-11-29 15:02:19.893337'),
(13, '90D', 'FGT90D3Z16011954', '365', 'crm_fortinet', '', '2021-02-07', 'ranosys', '', '', '9950629196', '', 'itsupport@ranosys.com', '5-c-7, Duplex Colony', '', 'BIKANER', 'Rajasthan', '', '', '', 'Lost and Renew', 'Renewed by Allience Technologies ', NULL, '2020-11-29 15:02:19.893440'),
(14, '30E', 'FGT30E3U17000829', '', 'crm_fortinet', '', '2040-08-09', 'JKJ AND SONS JEWELLERS', '', 'SUNIL MOSUN', '+91 9829260606', '', 'sunilmosun1@gmail.com', 'DUGGAR BUILDING M.I.ROAD', '', 'JAIPUR', 'Rajasthan', '24150', '35000', 'LD TECHNOLOGIES', 'Dont want to renew', 'currently they are  do not using  device ', NULL, '2020-11-29 15:02:19.893577'),
(15, '70D', 'FGT70D3Z16003971', '', 'crm_fortinet', '', '2020-08-15', 'Govt College Behror', '', '', '9314109649', '', 'govtcollagebehror@gmail.com', 'Near NH 8 Behror', '', 'ALWAR', 'Rajasthan', '', '64500', 'OPG AUTOMATION', 'Hold', 'school not opened yet ', '', '2020-12-03 07:50:45.000000'),
(16, '100D', '', '', 'crm_fortinet', '', '2023-09-05', 'WMW Mercantile Pvt Ltd', '', 'IT Licenses', '1417105100', '', '-', '', '', 'JAIPUR', 'Rajasthan', '', '', '', 'Lost and Upgrade', 'lost and upgrade on sophos', NULL, '2020-11-29 15:02:19.893798'),
(17, '30E', 'FGT30E3U17017787', '', 'crm_fortinet', '', '2040-08-29', 'RICKY MATHUR & ASSOC', '', 'RICKY MATHUR', '', '', 'ricky@rickymathur.com', '33, Dhuleshwar Garden', '', 'JAIPUR', 'Rajasthan', '21926', '36000', 'SALIENT INFOSYS', 'Dont want to renew', 'DUE TO BUDGET ISSUE ', NULL, '2020-11-30 06:21:24.000000'),
(18, '30E', '', '', 'crm_fortinet', '', '2023-09-05', 'electro plaza', '', '', '+91 1414029694', '', 'retail.electroplaza@gmail.com', '', '', 'JAIPUR', 'Rajasthan', '', '', '', 'Lost and Upgrade', 'lost and upgrade on sophos', NULL, '2020-11-29 15:02:19.894026'),
(19, '30E', '', '', 'crm_fortinet', '', '2023-09-05', 'Rockdrill Projects Pvt Ltd', '', 'AMIT ARORA', '+91 1414107404', '', 'rockdrillprojects@gmail.com', 'C 260 Nirman Nagar', '', 'JAIPUR', 'Rajasthan', '', '', '', 'Lost and Upgrade', 'lost and upgrade on sophos', NULL, '2020-11-29 15:02:19.894139'),
(20, '60E', 'FGT60E4Q16096590', '', 'crm_fortinet', '', '2020-09-08', 'Ostwal Phoschem India Ltd', '', 'Pintu Duggar', '1482237104', '', 'pintuaitengg@gmail.com', '5-O-1 RC VYAS COLONY', '', 'BHILWARA', 'Rajasthan', '46500', '51000', 'CS SOLUTIONS', 'Quoted', 'delay from customer side ', '32000', '2020-11-29 15:02:19.894254'),
(21, '30E', 'FGT30E3U17018763', '', 'crm_fortinet', '', '2040-09-11', '', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '21926', '36000', 'SYSTEM & TECHNOLOGY', 'Dont want to renew', 'school not opened yet ', NULL, '2020-11-29 15:02:19.894361'),
(22, '30E', 'FGT30E3U17018036', '', 'crm_fortinet', '', '2020-09-14', 'mahesh oil', '', 'Ramesh Toshniwal', '1482225585', '', 'smop@maheshoilgroup.com', '', '', 'BHILWARA', 'Rajasthan', '21926', '32000', 'BANWARI', 'Quoted', 'delay from customer side ', '13500', '2020-11-29 15:02:19.894470'),
(23, '30E', 'FGT30E3U17018071', '', 'crm_fortinet', '', '2040-09-17', 'TLC Heritag Of India', '', 'Deepika Solanki', '+91 9928798383', '', 'dips@heritageofindia.in', '', '', 'UDAIPUR', 'Rajasthan', '', '', 'ASSURE COMPUTERS', 'Dont want to renew', 'Branch discontinued', NULL, '2020-11-29 15:02:19.894593'),
(24, '30E', 'FGT30E3U17000163', '', 'crm_fortinet', '', '2020-09-18', 'St.Pauls Senior Secondary', '', 'Biju Varghese', '9829076765', '', 'bv07699@gmail.com', 'Bhupalpura', '', 'UDAIPUR', 'Rajasthan', '24150', '41042', 'DIGITECH SYSTEMS', 'Hold', 'school not opened yet ', NULL, '2020-11-30 06:22:07.000000'),
(25, '80E', 'FGT80ETK19022878', '', 'crm_fortinet', '', '2040-09-23', 'Pratap Technocrats Pvt Ltd', '', 'Devendra Singh', '7412089863', '', 'it.support@pratap.co.in', '7th Floor, Evershine Tower, Amrapali Circle, Vaishali Nagar', '', 'JAIPUR', 'Rajasthan', '', '115000', 'Binary Infosolutions Private Limited', 'Dont want to renew', 'upgrade to new box', '', '2020-12-04 12:57:21.000000'),
(26, '50E', 'FGT50E3U17016094', '', 'crm_fortinet', '', '2040-09-24', 'Saifee Sr. Secondary School', '', 'Muslim Ali', '9829120318', '', 'tayyebiyahudaipur@gmail.com', 'Delhi gate ,udaipur', '', 'UDAIPUR', 'Rajasthan', '42200', '49150', 'BABJI COMPUTERS', 'Dont want to renew', 'Customer not required License currently .', NULL, '2020-11-29 15:02:19.894950'),
(27, '30E', 'FGT30E3U17018469', '', 'crm_fortinet', '', '2020-10-12', 'G R INFRAPROJECTS LIMITED', '', '9001996262', '2942487749', '', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', '', 'UDAIPUR', 'Rajasthan', '21926', '30000', 'ASSURE COMPUTERS', 'Quoted', 'Before 10th Dec', '26000', '2020-11-29 15:02:19.895065'),
(28, '30E', 'FGT30E3U17018267', '', 'crm_fortinet', '', '2020-10-12', 'G R INFRAPROJECTS LIMITED', '', '9001996262', '2942487749', '', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', '', 'UDAIPUR', 'Rajasthan', '21926', '30000', 'ASSURE COMPUTERS', 'Quoted', 'Before 10th Dec', '26000', '2020-11-29 15:02:19.895179'),
(29, '30E', 'FGT30E3U17017602', '', 'crm_fortinet', '', '2040-10-15', 'axel networks', '', 'Navdeep Chabra', '9928855300', '', 'accounts@axelnetworks.com', 'c-scheme', '', 'JAIPUR', 'Rajasthan', '21926', '26000', 'Binary Infosolutions Private Limited', 'Dont want to renew', 'DUE TO BUDGET ISSUE ', NULL, '2020-11-29 15:02:19.895295'),
(30, '80C', 'FGT80C3912614574', '', 'crm_fortinet', '', '2020-10-23', '', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '44730', '51438', 'Systems & Technology (Kanpur)', 'Hold', 'intimation sent to partner ', NULL, '2020-11-29 15:02:19.895404'),
(31, '100D', 'FG100D3G16821930', '365', 'crm_fortinet', '', '2021-10-23', 'Metacube Software Pvt Ltd', '', 'Aditya Singh', '8769162058', '', 'aditya.singh@metacube.com', 'sp-6, Phase 4, EPIP, Sitapura', '', 'JAIPUR', 'Rajasthan', '', '', 'Netlogic Solutions', 'Lost and Renew', 'Renewed by other partner', NULL, '2020-11-29 15:02:19.895520'),
(32, '100D', 'FG100D3G16812551', '365', 'crm_fortinet', '', '2021-12-18', 'Metacube Software Pvt Ltd', '', 'Aditya Singh', '8769162058', '', 'aditya.singh@metacube.com', 'sp-6, Phase 4, EPIP, Sitapura', '', 'JAIPUR', 'Rajasthan', '', '', 'Netlogic Solutions', 'Lost and Renew', 'renewed By securesys', NULL, '2020-11-29 15:02:19.895639'),
(33, '30E', 'FGT30E3U17017637', '', 'crm_fortinet', '', '2020-10-26', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '21926', '33500', 'ASSURE COMPUTERS', 'Quoted', 'Before 10th Dec', '26000', '2020-11-29 15:02:19.895747'),
(34, '30E', 'FGT30E3U17017766', '', 'crm_fortinet', '', '2020-10-31', 'Oji India Packaging Pvt Ltd', '', 'Vijay Kumar', '1494674706', '', 'vijay.kumar@ojpack.com', 'Plot No SP4-78, New Industrial Complex, (Majrakath), Neemrana', '', 'ALWAR', 'Rajasthan', '21926', '30000', 'NETGLEM CONSULTING LLP JPR', 'Quoted', 'Due to Covid', '12500', '2020-11-29 15:02:19.895865'),
(35, '100D', 'FG100D3G16821906', '365', 'crm_fortinet', '', '2021-11-04', 'Metacube Software Pvt Ltd', '', 'Aditya singh', '8.77E+09', '', 'aditya.singh@metacube.com', 'sp-6, Phase 4, EPIP, Sitapura', '', 'JAIPUR', 'Rajasthan', '', '', 'Netlogic Solutions', 'Lost and Renew', 'Renewed by other partner', NULL, '2020-11-29 15:02:19.895980'),
(36, '30E', 'FGT30E3U17017772', '1095', 'crm_fortinet', '', '2023-11-30', 'SHRI VISHVAKARMA (EMERY STONE) INDUSTRIES PVT LTD', '', 'Shri Gopal Sharma', '9829072228', '', 'sgs@choyal.com', 'ARJUNPURA KHALSA', '', 'AJMER', 'Rajasthan', '21926', '35500', 'RATNATRAY COMPUTER VISION', '', '', NULL, '2020-11-30 13:15:23.000000'),
(37, '60E', 'FGT60E4Q16096265', '', 'crm_fortinet', '', '2020-11-13', 'PWD Rajasthan', '', 'Dayanaand Choudhary', '0141-5110518', '', 'kulhari.dayanand@yahoo.in', 'Jaipur', '', 'JAIPUR', 'Rajasthan', '46035', '64000', 'SYSTEMATIC SOLUTIONS', 'Quoted', 'delay from customer side ', '22500', '2020-11-29 15:02:19.896211'),
(38, '30E', 'FGT30E3U17018649', '', 'crm_fortinet', '', '2040-11-16', 'Indian Network for Development Exchange Pvt.Ltd.', '', 'Ninad Sharma', '9772240620', '', 'administration@goidex.com', '124,Goverdhan colony,New Sanganer Road Sodala Jaipur', '', 'JAIPUR', 'Rajasthan', '21926', '28500', 'VINAYAKAM INFOSOLUTION', 'Dont want to renew', 'company closed', NULL, '2020-11-29 15:02:19.896330'),
(39, '30D', 'FGT30D3X13007272', '365', 'crm_fortinet', '', '2021-12-04', 'Tokai Imperial Hydraulics India Pvt.Ltd', '', 'Tarun Verma', '14946716000', '', 'tarun.verma@tihtokai.co.in', 'SP-2-93-95,RIICO Majrakath, Japanese Zone, Neemrana', '', 'NEEMRANA', 'Rajasthan', '8265', '13000', 'Binary Infosolutions Private Limited', 'Renewed', '', NULL, '2020-12-04 13:45:19.000000'),
(40, '30E', 'FGT30E3U16029636', '', 'crm_fortinet', '', '2020-11-20', 'Binary INfo Solutions Pvt Ltd', '', 'PINTU DUGGAR', '7665437121', '', 'pintuaitengg@gmail.com', '', '', 'BHILWARA', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', 'Hold', 'delay from customer side ', '32000', '2020-12-25 12:44:49.000000'),
(41, '50E', 'FGT50E3U17015468', '', 'crm_fortinet', '', '2040-11-26', 'SIDDHI VINAYAK Computers', '', 'Naveen Goenka', '9829010675', '', 'n.goenka2005@gmail.com', '6-143,vidhyadhar nagar, jaipur', '', 'JAIPUR', 'Rajasthan', '40000', '60000', 'Binary Infosolutions Private Limited', 'Dont want to renew', 'device not in use ', NULL, '2020-11-29 15:02:19.896693'),
(42, '30E', 'FGT30E3U17018675', '', 'crm_fortinet', '', '2020-11-28', 'Pushkar Fort Hotel', '', 'Chandan', '9928037501', '', 'gm.rrpf@royalorchidhotels.com', 'pushkar ajmer', '', 'Pushkar', 'Rajasthan', '21926', '31000', 'ICON INTEGRATED SERVICE', 'Hold', 'delay from customer side ', NULL, '2020-11-29 15:02:19.896807'),
(43, '90D', 'FGT90D3Z16007353', '', 'crm_fortinet', '', '2023-11-29', 'INDO THAI DEVLOPERS PVT LTD', '', 'Deendayal ji', '9116117104', '', 'indothaiho@gmail.com', '', '', 'JAIPUR', 'Rajasthan', '90250', '117615', 'Binary Infosolutions Private Limited', 'Lost and Upgrade', 'Upgrade to new 80E box ', '110000', '2020-11-29 15:02:19.896928'),
(44, '30E', 'FGT30E3U16021149', '', 'crm_fortinet', '', '2020-04-12', 'HUKAM CONSTRUCTION AND HOTELS PVT LTD', '', 'Gaurav Tyagi', '9953123346', '', 'itlisj@leisureinnhotels.com', 'ITI Circle Jodhpur', '', 'JODHPUR', 'Rajasthan', '8396', '16000', 'SD Services', '', 'Due to Covid', '', '2021-01-19 09:41:32.000000'),
(45, '100D', 'FG100D3G14802835', '', 'crm_fortinet', '', '2021-04-12', 'Truworth BPO', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', 'Hold', 'expiry in APRIL 2021', NULL, '2020-11-29 15:02:19.897156'),
(46, '30E', 'FGT30E3U17027922', '', 'crm_fortinet', '', '2020-12-07', '6340 mech wksp', '', 'DEEPAK SARKAR', '', '', 'deepak.killer.1389@gmail.com', '', '', 'Nasirababd', 'Rajasthan', '21926', '40000', 'ANIL ENTERPRISES', 'Quoted', 'delay due to defence case ', '14800', '2020-12-25 10:44:49.000000'),
(47, '50E', 'FGT50E3U16020790', '365', 'crm_fortinet', '', '2021-12-25', 'srg housing finance ltd', '', 'Vinod Jain', '2942561882', '', 'vinodfandot@gmail.com', 'srg housing finance ltd', '', 'UDAIPUR', 'Rajasthan', '12045', '17500', 'Padmawati Systech', 'Renewed', '', NULL, '2020-12-25 10:51:57.000000'),
(48, '30E', 'FGT30E3U17026967', '', 'crm_fortinet', '', '2040-12-13', '', '', '', '', '', '', '', '', 'Lucknow', 'Uttar Pradesh', '21926', '30000', 'TRIX TECHNOLOGIES', 'Dont want to renew', 'company closed', '12500', '2020-11-29 15:02:19.897486'),
(49, '30E', 'FGT30E3U16006086', '365', 'crm_fortinet', '', '2021-12-18', 'Dangayach Products', '', 'Vishnu Dangayach', '8058790583', '', 'vlbsbassi@yahoo.in', 'Bassi', '', 'JAIPUR', 'Rajasthan', '8396', '12500', 'SKYNET INDIA JPR', 'Renewed', '', NULL, '2020-12-18 12:25:20.000000'),
(50, '80C', 'FGT80C3910613828', '365', 'crm_fortinet', '', '2021-12-18', 'K S MOTORS PVT LTD', '', 'Harish Sharma', '141-4055545', '', 'harish@ksmotors.com', 'M.I. Road', '', 'JAIPUR', 'Rajasthan', '21900', '24500', 'B.B.Professional Marketing P Ltd.', 'Renewed', '', NULL, '2020-12-18 12:26:27.000000'),
(51, '30E', 'FGT30E3U17017785', '', 'crm_fortinet', '', '2040-12-17', 'Sports International', '', 'Saurabh Bairakhi', '9414000570', '', 'sijaipur@gmail.com', 'G-1/96 , V.K.I.Extn Badharna, Jaipur', '', 'JAIPUR', 'Rajasthan', '21926', '35000', 'SHREE KESHAV ENTERPRISES', 'Dont want to renew', 'currently they are  do not using  device ', '', '2020-12-25 11:06:54.000000'),
(52, '30E', 'FGT30E3U17028266', '1095', 'crm_fortinet', '', '2023-12-18', 'PEGMA RESOURCES PVT LTD', '', 'Shoaibh Mansoori', '9214887418', '', 'it@pegma.in', 'C-150, RIICO Hsg Complex, Ajmer Road, Beawar 305901 Rajasthan, India', '', 'BEAWAR', 'Rajasthan', '21926', '38000', 'Binary Infosolutions Private Limited', 'Renewed', '', NULL, '2020-12-18 12:36:41.000000'),
(53, 'FG90D', 'FGT90D3Z14014729', '', 'crm_fortinet', '', '2020-12-23', 'Goyal Protein', '', '', '', '', '', '', '', 'Kota', 'Rajasthan', '27794', '35593', 'Nyati Computer', 'Quoted', 'delay from customer side ', '39500', '2020-11-29 15:02:19.898061'),
(54, '30E', 'FGT30E3U17028224', '', 'crm_fortinet', '', '2020-12-23', 'G R INFRAPROJECTS LIMITED', '', '9001996262', '2942487749', '', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', '', 'UDAIPUR', 'Rajasthan', '21926', '30000', 'ASSURE COMPUTERS', 'Quoted', 'Installation pending ', '26000', '2020-11-29 15:02:19.898175'),
(55, '50E', 'FGT50E3U16022492', '365', 'crm_fortinet', '', '2021-12-26', 'EverData Technologies Pvt. Ltd.', '', 'Akar PeriwalAnuj Asopa', '', '', 'periwalaakar26@yahoo.in', 'Shri Gopla Nagar', '', 'JAIPUR', 'Rajasthan', '', '', 'PJ Network', 'Lost and Renew', 'Renewed by PJ Network', '', '2020-12-25 11:28:04.000000'),
(56, '30E', 'FGT30E3U17027953', '', 'crm_fortinet', '', '2020-12-26', 'G R INFRAPROJECTS LIMITED', '', '9001996262', '2942487749', '', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', '', 'UDAIPUR', 'Rajasthan', '21926', '30000', 'ASSURE COMPUTERS', 'Quoted', 'Installation pending ', '26000', '2020-11-29 15:02:19.898406'),
(57, 'FG240D', 'FG240D4615801302', '365', 'crm_fortinet', '', '2022-01-18', 'Toyoda Gosei Minda India Private Limited', '', 'Shiv Kumar', '9829009984', '', 'shiv.kumar@tgin.co.in', 'Toyoda Gosei Minda India Private Limited, Plot No : SP2,30& 31, Riico Indl area, majrakath, Neemrana', '', 'NEEMRANA', 'Rajasthan', '', '', 'KDDI INDIA PVT. LTD.', 'Lost and Renew', 'renewed from Delhi', NULL, '2020-11-29 15:02:19.898531'),
(58, '30E', 'FGT30E3U17028319', '', 'crm_fortinet', '', '2020-12-27', 'G R INFRAPROJECTS LIMITED', '', '9001996262', '2942487749', '', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', '', 'UDAIPUR', 'Rajasthan', '21926', '30000', 'ASSURE COMPUTERS', 'Quoted', 'Installation pending ', '26000', '2020-11-29 15:02:19.898649'),
(59, '60E', 'FGT60E4Q16097237', '', 'crm_fortinet', '', '2020-12-27', 'SANJO FORGE INDIA PVT LTD', '', 'Manoj Kumar', '9214428216', '', 'manoj.kumar@sanjoindia.in', 'SP2-65,NEW INDUSTRIAL AREA, NEEMRANA', '', 'NEEMRANA', 'Rajasthan', '46035', '57000', 'Kinesis Infotech Bussiness Services Company', 'Quoted', 'delay from customer side ', '26500', '2020-11-29 15:02:19.898765'),
(60, '100E', 'FG100ETK18013234', '365', 'crm_fortinet', '', '2022-01-18', 'M/S My Car Pvt Ltd (Kanpur)', '', '', '9792970510', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '40950', '72500', 'Binary Infosolutions Private Limited', 'Renewed', 'delay from customer side ', '73000', '2021-01-18 06:45:39.000000'),
(61, '30E', 'FGT30E3U17028287', '', 'crm_fortinet', '', '2020-12-28', 'G R INFRAPROJECTS LIMITED', '', '9001996262', '2942487749', '', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', '', 'UDAIPUR', 'Rajasthan', '21926', '30000', 'ASSURE COMPUTERS', 'Quoted', 'Installation pending ', '26000', '2020-11-29 15:02:19.898990'),
(62, '40C', 'FGT40C3912002940', '365', 'crm_fortinet', '', '2022-01-19', 'Krishna Food Products', '', 'Anuj Srivastava', '9919101575', '', 'kfp_dewas@hotmail.com', '124-125,Gram Siya Maxi Road,Dewas (MP)', '', 'MP', '', '8025', '14000', 'Binary Infosolutions Private Limited', 'Lost and Renew', 'Renewed from MP', '12500', '2020-11-29 15:02:19.899112'),
(63, 'FGT80C', 'FGT80C3912615652', '', 'crm_fortinet', '', '2020-12-29', 'The Indo Zinc Ltd Mahi Cement', '', 'Shashi Bhushan', '2962301550', '', 'mukhijasb@indiacements.co.in', 'Village-wazwana, Tehsil-gadhi', '', 'BEAWAR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', 'Quoted', 'delay from customer side ', '28700', '2020-11-29 15:02:19.899230'),
(64, '30E', 'FGT30E3U17026941', '', 'crm_fortinet', '', '2020-12-31', 'G R INFRAPROJECTS LIMITED', '', '9001996262', '2942487749', '', 'it@grinfra.com', 'G R HOUSE HIRAN MAGRIL SEC. 11', '', 'UDAIPUR', 'Rajasthan', '21926', '30000', 'ASSURE COMPUTERS', 'Quoted', 'Installation pending ', '', '2020-11-29 15:02:19.899344'),
(65, '50E', 'FGT50E3U17021255', '365', 'crm_fortinet', '', '2022-01-03', 'RBL', '', '', '917737777255', '', 'it@rajasthanbarytes.com', 'RK Circle', '', 'UDAIPUR', 'Rajasthan', '11277', '16000', 'HINDUSTAN COMPUTER', 'Renewed', 'quoted', '17500', '2020-12-29 09:49:02.000000'),
(66, '50E', 'FGT50E3U17021572', '', 'crm_fortinet', '', '2021-01-07', '', '', '', '', '', '', '', '', 'Kolkata', '', '39600', '41000', 'Computer Exchange Pvt Ltd (Kolkata)', 'Hold', 'Kolkata Case ', NULL, '2020-11-29 15:02:19.899567'),
(67, '30E', 'FGT30E3U17042942', '1095', 'crm_fortinet', '', '2024-01-19', 'Sandeep Motors', '', 'Sandeep Rathi', '9829042401', '', 'accounts@sandeepmotors.com', '', '', 'BHILWARA', 'Rajasthan', '26420', '25000', 'MARS INFOTECH BHL', 'Renewed', 'prices quoted to Mars Infotech Bhilwara ', '13500', '2021-01-19 09:09:46.000000'),
(68, '60E', 'FGT60E4Q16022256', '', 'crm_fortinet', '', '2041-01-12', 'Trancsorp International Ltd', '', '', '9309370269', '', 'niranjan@transcorpint.com', '5th Floor Transcorp Tower Moti Dungri Road', '', 'JAIPUR', 'Rajasthan', '', '', 'Samriddhi Enterprises', 'Dont want to renew', 'Branch closed as per customer ,need decommission', '', '2020-11-29 15:02:19.899787'),
(69, '100E', 'FG100E4Q17011427', '365', 'crm_fortinet', '', '2022-01-28', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '143000', '190000', 'NETGLEM CONSULTING LLP JPR', 'Lost and Renew', 'Renewed by Netgleam Directly from Redington ', '69000+Gst ', '2020-11-29 15:02:19.899904'),
(70, '30E', 'FGT30E3U17042721', '', 'crm_fortinet', '', '2021-01-18', '', '', '', '', '', '', '', '', 'JAISALMER', 'Rajasthan', '21706', '38000', 'CREADENT SOLUTIONS', 'Quoted', 'talk to Creadent by 26th DEC ', '13500', '2020-11-29 15:02:19.900011'),
(71, '30E', 'FGT30E3U17042601', '', 'crm_fortinet', '', '2021-01-21', '', '', '', '', '', '', '', '', 'BHILWARA', 'Rajasthan', '21706', '32000', 'CS SOLUTIONS', 'Quoted', 'quoted to CS Solutions ', '14600', '2020-11-29 15:02:19.900116'),
(72, '90D', 'FGT90D3Z13006234', '365', 'crm_fortinet', '', '2021-01-25', 'BSL Limited', '', 'OP Arya', '9352111281', '', 'oparya@bslsuitings.com', 'POST BOX. NO. 17, 26, INDUSTRIAL AREA, GANDHI NAGAR', '', 'BHILWARA', 'Rajasthan', '', '', '', 'Lost and Renew', 'Renewed by Allience Technologies ', '85000', '2020-11-29 15:02:19.900227'),
(73, '90D', 'FGT90D3Z16018956', '365', 'crm_fortinet', '', '2021-01-25', 'BSL Limited', '', 'OP Arya', '9352111281', '', 'oparya@bslsuitings.com', 'POST BOX. NO. 17, 26, INDUSTRIAL AREA, GANDHI NAGAR', '', 'BHILWARA', 'Rajasthan', '', '', '', 'Lost and Renew', 'Renewed by Allience Technologies ', '', '2020-11-29 15:02:19.900338'),
(74, '90D', 'FGT90D3Z16020354', '', 'crm_fortinet', '', '2021-01-25', 'GOYAL PROTEIN', '', '', '9414183662', '', 'akshay@goyalglobal.com', 'NH-12 Jhalawar Road ,Kasar', '', 'Kota', 'Rajasthan', '', '', 'NYATI COMPUTER', 'Quoted', 'quoted to Nyati Computer', '39500', '2020-11-29 15:02:19.900449'),
(75, '30D', 'FGT30D3X13002170', '365', 'crm_fortinet', '', '2022-01-25', 'Tokai Imperial Hydraulics India Pvt.Ltd', '', '', '14946716000', '', 'tarun.verma@tihtokai.co.in', 'SP-2-93-95,RIICO Majrakath, Japanese Zone, Neemrana', '', 'NEEMRANA', 'Rajasthan', '9500', '13000', 'Binary Infosolutions Private Limited', 'Renewed', '', NULL, '2021-01-20 05:07:36.000000'),
(76, '30E', 'FGT30E3U17042760', '1095', 'crm_fortinet', '', '2024-01-27', 'PEGMA RESOURCES PVT LTD', '', '', '', '', '', '', '', 'BEAWAR', 'Rajasthan', '21706', '38000', 'Binary Infosolutions Private Limited', 'Renewed', '', NULL, '2020-12-18 12:43:29.000000'),
(77, '50E', 'FGT50E3U17016055', '1095', 'crm_fortinet', '', '2024-01-28', 'R S Group', '', 'AMIT DANGI', '919001894003', '', 'amit.dangi@rshitechsecurity.com', '', '', 'JAIPUR', 'Rajasthan', '33000', '46800', 'SIGMA INFOTECH', 'Renewed', 'Quoted to Sigma Infotech', '18200', '2021-01-28 09:14:31.000000'),
(78, '50E', 'FGT50E3U17021309', '', 'crm_fortinet', '', '2021-01-28', 'shera energy', '', 'Sunil dangayach', '919314434130', '', 'seplaccts@gmail.com', '', '', 'JAIPUR', 'Rajasthan', '40000', '52000', 'SMART IT SERVICES', 'Quoted', 'prices quoted ,need arpit visit', '18400', '2020-12-28 07:15:25.000000'),
(79, '200D', 'FG200D4614809949', '', 'crm_fortinet', '', '2021-01-29', 'JK Lakshmi', '', 'K Mittal', '9785455586', '', 'kmittal@lc.jkmail.com', 'JK Puram, Sirohi, Rajasthan, India', '', 'Sirohi', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', 'Quoted', 'Prices quoted with Buyback to Nitin ji ', '', '2020-11-29 15:02:19.901033'),
(80, '30E', 'FGT30E3U17042735', '', 'crm_fortinet', '', '2021-01-30', 'shera energy', '', 'Sunil dangayach', '9314434130', '', 'seplaccts@gmail.com', '', '', 'JAIPUR', 'Rajasthan', '21706', '33500', 'SMART IT SERVICES', 'Quoted', 'prices quoted ,need arpit visit', '14300', '2020-12-27 10:03:36.000000'),
(81, '30E', 'FGT30E3U17042902', '', 'crm_fortinet', '', '2021-01-30', 'shera energy', '', 'Sunil dangayach', '9314434130', '', 'seplaccts@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '21706', '33500', 'SMART IT SERVICES', 'Quoted', 'prices quoted ,need arpit visit', '14300', '2020-12-27 10:03:11.000000'),
(82, '200E', 'FG200E4Q17906846', '365', 'crm_fortinet', '', '2021-02-01', 'Ranosys Technology', '', '', '9950629196', '', 'itsupport@ranosys.com', '5-c-7, Duplex Colony', '5-c-7, Duplex Colony', 'BIKANER', 'Rajasthan', '', '', '', 'Lost and Renew', 'Renwed by Allience Technologies ', '', '2020-12-27 09:07:25.000000'),
(83, '30E', 'FGT30E3U17042977', '', 'crm_fortinet', '', '2021-02-02', 'Ostwal Phoschem India Ltd', '', 'Pintu Ostwal', '7665437121', '', 'pintuaitengg@gmail.com', '5-O-1 RC VYAS COLONY', 'Bhilwara', 'BHILWARA', 'Rajasthan', '21706', '32000', 'CS SOLUTIONS', 'Quoted', 'prices quoted to Pintu', '32000', '2021-01-20 10:49:54.000000'),
(84, '30E', 'FGT30E3U17042844', '365', 'crm_fortinet', '', '2022-02-02', 'Ordnance Factories Institute of Learnning', '', '', '', '', '', 'Armapur Estate ,', 'Kanpur', 'KANPUR', 'Uttar Pradesh', '8820', '14900', 'Ordnance Factories Institute of Learnning', 'Renewed', 'prices quoted to customer', '13500', '2021-01-22 10:56:06.000000'),
(85, '50E', 'FGT50E3U17015844', '', 'crm_fortinet', '', '2021-02-03', 'AppPerfect', '', 'KAMLESH SONI', '919460300891', '', 'ksoni@AppPerfect.com', '', '', 'UDAIPUR', 'Rajasthan', '40000', '55000', 'VISHWAS COMPUTERS', 'Quoted', 'Prices quoted to Vishwas Computer', '18200', '2020-12-27 10:15:59.000000'),
(86, '300D', 'FGT3HD3916805039', '', 'crm_fortinet', '', '2021-02-06', 'Mangalam Cement Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '191208', '215000', 'HRM Technologies Pvt Ltd', 'Quoted', 'Prices quoted by DK ji', '', '2020-11-29 15:02:19.901794'),
(87, '30E', 'FGT30E3U17042614', '', 'crm_fortinet', '', '2041-02-08', 'Lalchand Food Product (P) Ltd.', '', 'Romil Madaan', '9829954441', '', 'lalchand_brs@yahoo.com', 'A-13, Surajpole Anaj Mandi,', '', 'JAIPUR', 'Rajasthan', '21706', '35000', 'KANISHK IT SOLUTIONS', 'Dont want to renew', 'Company Closed as per partner ,customer didnt pick my call .', '', '2020-12-27 09:52:05.000000'),
(88, '50E', 'FGT50E3U17015246', '', 'crm_fortinet', '', '2021-02-09', 'Clarks Inn', '', 'ROHIT YOGI', '8529302179', '', 'it.jaipur@clarksinn.in', '', '', 'JAIPUR', 'Rajasthan', '40000', '53500', 'GLOBAL COMPUTECH', 'Quoted', 'prices quoted to Global Computech ', '17900', '2020-12-27 10:10:08.000000'),
(89, '50E', 'FGT50E3U17015719', '365', 'crm_fortinet', '', '2022-02-09', 'ANANTA MEDICARE', '', 'RAJESH JAIN', '', '911542494109', 'anantadrugs@rediffmail.com', '', '', 'Sri Ganganagar', 'Rajasthan', '12000', '19085', 'SRI GANGANAGAR', 'Renewed', 'Prices quoted to Ajay Gaba ', '19085+Gst ', '2021-01-22 06:49:55.000000'),
(90, '50E', 'FGT50E3U17015810', '', 'crm_fortinet', '', '2021-07-05', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '40000', '49000', 'Binary Infosolutions Private Limited', '', '', '', '2021-01-19 09:54:11.000000'),
(91, '50E', 'FGT50E3U17015248', '', 'crm_fortinet', '', '2021-02-09', 'xyz', '', 'pukkalla lakshmanarao', '9849103504', '', 'laxman9849103504@gmail.com', '', '', 'ALWAR', 'Rajasthan', '40000', '51000', 'OPG AUTOMATION', 'Quoted', 'Prices quoted on mail ,customer number showing out of coverage area .', '19200', '2020-12-27 10:11:56.000000'),
(92, '50E', 'FGT50E3U17015703', '', 'crm_fortinet', '', '2021-02-09', 'Chandrakala Broking Services Pvt Ltd', '', 'SUMATI SURANA', '9079007913', '', 'suranasumati@yahoo.co.in', 'chorariya chowk, new', '', 'BIKANER', 'Rajasthan', '40000', '49500', 'Binary Infosolutions Private Limited', 'Quoted', 'Price Quoted to Ajay Gaba ', '19085+Gst ', '2020-12-27 10:14:29.000000'),
(93, '50E', 'FGT50E3U17016162', '', 'crm_fortinet', '', '2021-02-09', 'KANPUR EDIBLE PVT LTD (Kanpur)', '', '', '', '', '', '', '', 'Kanpur', 'Uttar Pradesh', '40000', '55500', 'Binary Infosolutions Private Limited', 'Quoted', 'prices quoted to Rajneesh', '17900', '2020-11-29 15:02:19.902541'),
(94, '50E', 'FGT50E3U17016153', '', 'crm_fortinet', '', '2021-02-09', '', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '39600', '42000', 'Takyon Networks Pvt Ltd', 'Quoted', 'prices quoted to Takyon ', '18500', '2020-11-29 15:02:19.902651'),
(95, '30E', 'FGT30E3U17018323', '', 'crm_fortinet', '', '2021-02-09', '', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '21926', '38000', 'INNOVATIVE NETWORK SOLUTION', 'Quoted', 'prices quoted to partner', '13500', '2020-11-29 15:02:19.902755'),
(96, '50E', 'FGT50E3U17016169', '', 'crm_fortinet', '', '2021-02-09', '', '', '', '', '', '', '', '', 'CHHATTISGARH', '', '40000', '41000', 'HRM Technologies Pvt Ltd', 'Quoted', '', '', '2020-11-29 15:02:19.902859'),
(97, '50E', 'FGT50E5619048001', '', 'crm_fortinet', '', '2021-02-14', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '48000', '54000', 'VIJAY INFOTECH UDR', 'Quoted', 'Prices Quoted to Vijay Infotech', '17900+Gst ', '2020-11-29 15:02:19.902967'),
(98, '30E', 'FGT30E3U17043820', '', 'crm_fortinet', '', '2021-02-16', 'OLWELL IT SOLUTIONS', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '21706', '31800', 'NETGLEAM ', 'Quoted', 'Prices quoted Netgleam ', '13500+Gst', '2020-12-27 10:07:32.000000'),
(99, 'FG300C', 'FG300C3913602658', '', 'crm_fortinet', '', '2021-02-17', 'College of Engineering & Technology', '', '', '0151-2204677', '', 'dyadav@cet-gov.ac.in', 'Karni Industrial Area, Pugal Road,', '', 'BIKANER', 'Rajasthan', '', '', '', 'Quoted', 'Intimation Sent', '', '2020-11-29 15:02:19.903181'),
(100, '30E', 'FGT30E3U16023652', '', 'crm_fortinet', '', '2021-02-19', 'R-Tech Group', '', 'Amit Sangwan/Ramashankar ji', '7668018481/01493220190', '', 'it.bhiwadi@rtechgroup.co.in', 'Plot 3(A) RIICO IND. AREA, SIRSI ROAD,JAIPUR', '', 'JAIPUR', 'Rajasthan', '', '', 'Ncs Computech Ltd.', '', '', NULL, '2020-11-29 15:02:19.903294'),
(101, '30E', 'FGT30E3U17042849', '', 'crm_fortinet', '', '2021-02-20', '', '', '', '', '', '', '', '', 'JAISALMER', 'Rajasthan', '21706', '38000', 'CREADENT SOLUTIONS', 'Quoted', 'quoted price to creadent', '13500', '2020-11-29 15:02:19.903397'),
(102, '30E', 'FGT30E3U17042829', '', 'crm_fortinet', '', '2021-02-22', 'Ostwal ', '', '', '', '', '', '', '', 'BHILWARA', 'Rajasthan', '21706', '32000', 'CS SOLUTIONS', 'Quoted', 'Prices quoted to Ostwal', '32000', '2021-01-19 11:50:54.000000'),
(103, '50E', 'FGT50E3U17034114', '', 'crm_fortinet', '', '2021-02-27', 'Jayanti Cold Storage', '', 'ABHISHEK JAIN', '919928992880', '', 'info@jayantiworld.com', 'Village Dadar', '', 'ALWAR', 'Rajasthan', '40000', '49500', 'TRIJAL INFOTECH', 'Quoted', 'Prices quoted to Trijal Infotech', '17900+Gst ', '2020-12-27 10:21:28.000000'),
(104, '100D', 'FG100D3G13827484', '', 'crm_fortinet', '', '2021-03-30', 'BMD Pvt. Ltd.', '', 'PADAM JAIN', '9202232540', '', 'padam.jain@lnjb.com', '35, LNJ Nagar, Mordi,', '', 'BANSWARA', 'Rajasthan', '', '', 'Mikroz infoSecurity Pvt. ltd.', '', '', '', '2020-12-27 08:41:27.000000'),
(105, '90D', 'FGT90D3Z13004619', '', 'crm_fortinet', '', '2021-03-30', 'Maverick Share Brokers Ltd.', '', 'DANNY PAUL', '9314433389', '', 'rmantri_jaipur@yahoo.com', '211, Laxmi Complex, M I road', '', 'JAIPUR', 'Rajasthan', '', '', 'Mass Infonet (P) Ltd.', '', 'Sent Intimation ', '', '2021-01-19 12:11:25.000000'),
(106, '90D', 'FGT90D3Z13004641', '', 'crm_fortinet', '', '2021-03-30', 'Maverick Share Brokers Ltd.', '', 'DANNY PAUL', '9314433389', '', 'rmantri_jaipur@yahoo.com', '211, Laxmi Complex, M I road', '', 'JAIPUR', 'Rajasthan', '', '', 'Mass Infonet (P) Ltd.', 'Quoted', 'Sent Intimation ', '', '2021-01-19 12:11:40.000000'),
(107, '60E', 'FGT60E4Q16054367', '', 'crm_fortinet', '', '2021-03-08', '', '', '', '', '', '', '', '', 'Lucknow', 'Uttar Pradesh', '46035', '53000', 'Takyon Networks Pvt Ltd', 'Quoted', 'price quoted to Takyon', '25500', '2020-11-29 15:02:19.904072'),
(108, '100D', 'FG100D3G16821351', '', 'crm_fortinet', '', '2021-03-16', 'Toyoda Gosei Minda India Private Limited', '', 'Shiv Kumar', '9829009984', '', 'shiv.kumar@tgin.co.in', '', '', 'ALWAR', 'Rajasthan', '', '', 'KDDI INDIA PVT. LTD.', '', '', NULL, '2020-11-29 15:02:19.904182'),
(109, '60E', 'FGT60E4Q16055091', '', 'crm_fortinet', '', '2021-03-28', '', '', '', '', '', '', '', '', 'Lucknow', 'Uttar Pradesh', '44500', '55000', 'TRIX TECHNOLOGIES', '', '', NULL, '2020-11-29 15:02:19.904282'),
(110, '60E', 'FGT60E4Q16052184', '', 'crm_fortinet', '', '2021-03-28', 'Albeli Fashion', '', '', '', '', '', '', '', '', '', '46035', '55000', '', '', '', NULL, '2020-11-29 15:02:19.904385'),
(111, '60E', 'FGT60E4Q16052084', '', 'crm_fortinet', '', '2021-03-28', 'PHOEBUS BUSINESS SOLUTIONS PVT LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '46035', '65000', 'TECHNO SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.904493'),
(112, '60E', 'FGT60E4Q16054406', '', 'crm_fortinet', '', '2021-03-28', 'RAJENDRA AGARWAL', '', '', '', '', '', '', '', 'REWARI', '', '46035', '57000', 'Kinesis Infotech Bussiness Services Company', 'Quoted', 'Price Quoted to Kinesis', '26000', '2020-11-29 15:02:19.904607'),
(113, '60E', 'FGT60E4Q16053252', '', 'crm_fortinet', '', '2021-03-28', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '44000', '55000', 'Technowick Solutions Pvt. Ltd. (Bhiwadi)', '', '', NULL, '2020-11-29 15:02:19.904716'),
(114, '60E', 'FGT60E4Q16052352', '', 'crm_fortinet', '', '2021-03-28', '', '', '', '', '', '', '', '', 'AGRA', 'Uttar Pradesh', '46035', '52000', 'VR ENTERPRISES', '', '', NULL, '2020-11-29 15:02:19.904821'),
(115, '60D', 'FGT60D4613049104', '', 'crm_fortinet', '', '2021-03-30', 'Airen Metals Pvt. Ltd', '', 'Mr.Harbajan', '9413345943', '', 'gharbajan@airenmetals.com', 'G-750, Road No. 9F2 V.K.I. Area', '', 'JAIPUR', 'Rajasthan', '20231', '28000', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.904947'),
(116, '100E', 'FG100E4Q17009856', '', 'crm_fortinet', '', '2041-03-31', 'MUFG Bank', '', 'MANISH NIKAM', '9811346050', '', 'manish_nikam@in.mufg.jp', '1st Floor Neemrana Central, CC-12, RIICO Industrial Area, Phase 1 Neemrana, Alwar', '', 'NEEMRANA', 'Rajasthan', '', '', '', 'Dont want to renew', 'Duplicate Entry ', NULL, '2020-11-29 15:02:19.905058'),
(117, '30E', 'FGT30E3U16006144', '', 'crm_fortinet', '', '2040-03-31', 'Shriram General Insurance Ltd', '', 'Kamlesh Sharma', '9828383156', '', 'kamlesh.sharma@shriramgi.com', 'E-8, EPIP, RIICO Industrial Area, Sitapura, Jaipur', '', 'JAIPUR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', 'Dont want to renew', 'Already given Buyback on 06-3-2020', '', '2021-01-19 12:37:17.000000'),
(118, '30E', 'FGT30E3U16013941', '', 'crm_fortinet', '', '2040-03-31', 'Shriram General Insurance Ltd', '', 'Kamlesh Sharma', '9828383156', '', 'kamlesh.sharma@shriramgi.com', 'E-8, EPIP, RIICO Industrial Area, Sitapura, Jaipur', '', 'JAIPUR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', 'Dont want to renew', 'Already given Buyback on 06-3-2020', '', '2021-01-19 12:24:07.000000'),
(119, '30E', 'FGT30E3U16014711', '', 'crm_fortinet', '', '2040-03-31', 'Shriram General Insurance Ltd', '', 'Kamlesh Sharma', '9828383156', '', 'kamlesh.sharma@shriramgi.com', 'E-8, EPIP, RIICO Industrial Area, Sitapura, Jaipur', '', 'JAIPUR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', 'Dont want to renew', 'Already given Buyback on 06-3-2020', '', '2021-01-19 12:21:12.000000'),
(120, '60D', 'FGT60D4615015600', '', 'crm_fortinet', '', '2040-03-31', 'Shriram General Insurance Ltd', '', 'Kamlesh Sharma', '9828383156', '', 'kamlesh.sharma@shriramgi.com', 'E-8, EPIP, RIICO Industrial Area, Sitapura, Jaipur', '', 'JAIPUR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', 'Dont want to renew', 'Already given Buyback on 06-3-2020', '', '2021-01-19 12:34:41.000000'),
(121, '60D', 'FGT60D4615022829', '', 'crm_fortinet', '', '2040-03-31', 'Shriram General Insurance Ltd', '', 'Kamlesh Sharma', '9828383156', '', 'kamlesh.sharma@shriramgi.com', 'E-8, EPIP, RIICO Industrial Area, Sitapura, Jaipur', '', 'JAIPUR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', 'Dont want to renew', 'Already given Buyback on 06-3-2020', '', '2021-01-19 12:31:40.000000'),
(122, '60D', 'FGT60D4615024611', '', 'crm_fortinet', '', '2040-03-31', 'Shriram General Insurance Ltd', '', 'Kamlesh Sharma', '9828383156', '', 'kamlesh.sharma@shriramgi.com', 'E-8, EPIP, RIICO Industrial Area, Sitapura, Jaipur', '', 'JAIPUR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', 'Dont want to renew', 'Already given Buyback on 06-3-2020', '', '2021-01-19 12:35:50.000000'),
(123, '60D', 'FGT60D4615056097', '', 'crm_fortinet', '', '2040-03-31', 'Shriram General Insurance Ltd', '', 'Kamlesh Sharma', '9828383156', '', 'kamlesh.sharma@shriramgi.com', 'E-8, EPIP, RIICO Industrial Area, Sitapura, Jaipur', '', 'JAIPUR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', 'Dont want to renew', 'Already given Buyback on 06-3-2020', '', '2021-01-19 12:33:28.000000'),
(124, '60D', 'FGT60D4Q16099DBY', '', 'crm_fortinet', '', '2040-03-31', 'Shriram General Insurance Ltd', '', 'Kamlesh Sharma', '9828383156', '', 'kamlesh.sharma@shriramgi.com', 'E-8, EPIP, RIICO Industrial Area, Sitapura, Jaipur', '', 'JAIPUR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', 'Dont want to renew', 'Already given Buyback on 06-3-2020', '', '2021-01-19 12:39:21.000000'),
(125, '60E', 'FGT60E4Q16010858', '', 'crm_fortinet', '', '2021-04-17', 'NATURAL SOFTWARES PVT LTD', '', 'MR.VISHAL GOEL', '9829081000', '', 'vishal@nspl.co', 'C-2 Panchsheel Colony Ajmer Road', '', 'JAIPUR', 'Rajasthan', '19575', '23000', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.906110'),
(126, '100E', 'FG100E4Q16004061', '', 'crm_fortinet', '', '2021-04-19', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '158375', '175000', 'Hitachi Systems Micro Clinic Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.906218'),
(127, '90D', 'FGT90D3Z16018490', '', 'crm_fortinet', '', '2021-04-23', 'MI ELECTRICAL STEEL PROCESSING INDIA PVT. LTD.', '', 'SUMIT SHARMA', '7023002219', '', 'sharma.sumit@miespindia.com', 'SP2-1 to SP2-4, NIC(M), Neemrana, Distt. Alwar', '', 'NEEMRANA', 'Rajasthan', '31602', '35000', 'Kinesis Infotech Bussiness Services Company', '', '', NULL, '2020-11-29 15:02:19.906335'),
(128, '100D', 'FG100D3G13824299', '', 'crm_fortinet', '', '2021-04-23', 'JK Lakshmi', '', '', '9785455586', '', 'kmittal@lc.jkmail.com', 'JK Puram, Sirohi, Rajasthan, India', '', 'Sirohi', 'Rajasthan', '67168', '75050', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.906450'),
(129, '60E', 'FGT60E4Q17011740', '', 'crm_fortinet', '', '2021-04-27', 'Verve Logic', '', '', '', '', '', '', '', 'JAIPUR', '', '45000', '63000', 'Informatic Computech Private Limited', '', '', NULL, '2020-11-29 15:02:19.906564'),
(130, '60D', 'FGT60D4615094246', '', 'crm_fortinet', '', '2021-04-27', 'TATA INTERNATIONAL DLT PVT LTD', '', 'UJWAL Patil', '2135627324', '', 'ujwalpatil@tildlt.com', 'RAJSTHAN PLANT PLOT NO. E1 RIICO INDUSTRIAL AREA SHRINAGAR JAIPUR HIGHWAY AJMER', '', 'AJMER', 'Rajasthan', '', '', 'VAS UNIVERSAL IT SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.906685'),
(131, '50E', 'FGT50E3U16040998', '', 'crm_fortinet', '', '2021-05-01', 'Bravia Hotel (A Unit of Satguru International)', '', '', '', '', '', '', '', 'AHMEDABAD', '', '40000', '51000', 'Aariha Enterprisepvt Ltd', '', '', NULL, '2020-11-29 15:02:19.906795'),
(132, '300C', 'FG300C3913605754', '', 'crm_fortinet', '', '2021-05-03', 'Mangalam Cement Ltd', '', '', '', '', '', '', '', 'CHHATTISGARH', '', '145500', '167000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.906897'),
(133, '100E', 'FG100ETK18036176', '', 'crm_fortinet', '', '2021-05-08', 'Allen Career Institute', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '161573', '163500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.907004'),
(134, '90D', 'FGT50E5619048966', '', 'crm_fortinet', '', '2021-05-12', '130000', '', 'Rajesh Tripathi', '9352066111', '', 'rsgsmsgnr@yahoo.co.in', 'Sri Ganganagar', '', 'Sri Ganganagar', 'Rajasthan', '46000', '61500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.907117'),
(135, '100E', 'FG100E4Q17018403', '', 'crm_fortinet', '', '2021-05-14', 'DIGAMBER FINANCE', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '143000', '157000', 'BM INFOTRADE', '', '', NULL, '2020-11-29 15:02:19.907218'),
(136, '200D', 'FL200D3A14001267', '', 'crm_fortinet', '', '2021-05-15', 'Mangalam Cement Ltd', '', '', '', '', '', '', '', 'CHHATTISGARH', '', '21406', '26500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.907323'),
(137, '30E', 'FGT30E3U17043907', '', 'crm_fortinet', '', '2021-05-18', '', '', '', '', '', '', '', '', 'AGRA', 'Uttar Pradesh', '21926', '24000', 'VR ENTERPRISES', '', '', NULL, '2020-11-29 15:02:19.907425'),
(138, '90E', 'FGT90E4Q16004351', '', 'crm_fortinet', '', '2021-05-20', 'Oji India Packaging Pvt Ltd', '', 'Vijay Kumar', '+91 1494674706', '', 'vijay.kumar@ojpack.com', 'Plot No SP4-78, New Industrial Complex, (Majrakath), Neemrana', '', 'NEEMRANA', 'Rajasthan', '', '', 'KDDI INDIA PVT. LTD.', '', '', NULL, '2020-11-29 15:02:19.907543'),
(139, '30E', 'FGT30E3U17042564', '', 'crm_fortinet', '', '2021-05-24', '', '', '', '', '', '', '', '', 'BHIWADI', 'Rajasthan', '21926', '27000', 'VARDHMAN COMPUTER SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.907646'),
(140, '30D', 'FGT30D3X13015591', '', 'crm_fortinet', '', '2021-05-24', 'Mitsui Prime', '', '', '', '', '', '', '', 'NEEMRANA', 'Rajasthan', '9566', '12771', 'NETGLEM CONSULTING LLP JPR', '', '', NULL, '2020-11-29 15:02:19.907753'),
(141, '30E', 'FGT30E3U17043809', '', 'crm_fortinet', '', '2021-05-30', '', '', '', '', '', '', '', '', 'KOLKATA', '', '21926', '28000', 'SARASWATI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.907859'),
(142, '500E', 'FG5H0E5818901418', '', 'crm_fortinet', '', '2021-06-03', 'HEM SECURITIES', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '780000', '900000', 'HEM SECURITIES', '', '', NULL, '2020-11-29 15:02:19.907967'),
(143, '100E', 'FG100E4Q17007685', '', 'crm_fortinet', '', '2021-06-06', 'Dileep Industries Pvt Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '141570', '155000', 'BHAWANI TECHNOLOGIES', '', '', NULL, '2020-11-29 15:02:19.908073'),
(144, '30E', 'FGT30E5618015390', '', 'crm_fortinet', '', '2021-06-08', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.908179'),
(145, '30E', 'FGT30E3U17042975', '', 'crm_fortinet', '', '2021-06-10', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '21926', '27900', 'ETSC COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.908283'),
(146, '30E', 'FGT30E3U17043386', '', 'crm_fortinet', '', '2021-06-21', '', '', '', '', '', '', '', '', 'KOLKATA', '', '21926', '25500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.908391'),
(147, '80C', 'FGT80C3912614051', '', 'crm_fortinet', '', '2021-06-21', 'Apex institute', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '16656', '26000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.908500'),
(148, '30E', 'FGT30E3U17042558', '', 'crm_fortinet', '', '2021-06-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '21706', '34000', 'SYSTEMATIC SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.908612'),
(149, '50E', 'FGT50E5618001830', '', 'crm_fortinet', '', '2021-06-22', 'HSB Agro', '', '', '91 8800729829', '', 'yashkc88@gmail.com', 'SP 67 Shree khatu shyam Ind,, Area', '', 'JAIPUR', 'Rajasthan', '27300', '38000', 'NET INFO SYSTEM', '', '', NULL, '2020-11-29 15:02:19.908721'),
(150, '30E', 'FGT30E3U17043237', '', 'crm_fortinet', '', '2021-06-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '21926', '23000', 'Cynosure Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.908827'),
(151, '30E', 'FGT30E3U17043665', '', 'crm_fortinet', '', '2021-06-22', '', '', '', '', '', '', '', '', 'KOLKATA', '', '21926', '25500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.908930'),
(152, '30E', 'FGT30E3U17043357', '', 'crm_fortinet', '', '2021-06-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '21926', '35000', 'PERFECT TECHNOLOGY', '', '', NULL, '2020-11-29 15:02:19.909034'),
(153, '30E', 'FGT30E3U17042841', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '21926', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.909140'),
(154, '50E', 'FGT50E3U17033377', '', 'crm_fortinet', '', '2021-06-22', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '40000', '47881', 'MUDRA SALES', '', '', NULL, '2020-11-29 15:02:19.909244'),
(155, '30E', 'FGT30E3U17043707', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.909350'),
(156, '30E', 'fGT30E3U17043229', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.909459'),
(157, '30E', 'FGT30E3U17042579', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.909577'),
(158, '30E', 'FGT30E3U17043434', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.909687'),
(159, '30E', 'FGT30E3U17042634', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.909793'),
(160, '30E', 'FGT30E3U17042677', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.909901'),
(161, '30E', 'FGT30E3U17042759', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.910011'),
(162, '30E', 'FGT30E3U17042843', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.910120'),
(163, '30E', 'FGT30E3U17042886', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.910229'),
(164, '30E', 'FGT30E3U17042934', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.910338'),
(165, '80E', 'Fgt80e4q17010382', '', 'crm_fortinet', '', '2021-06-22', 'Mayur School', '', '', '', '', '', '', '', 'AJMER', 'Rajasthan', '72270', '120000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.910446'),
(166, '80E', 'FGT80E4Q17011512', '', 'crm_fortinet', '', '2021-06-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '72270', '84000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.910557'),
(167, '80E', 'FGT80E4Q17009932', '', 'crm_fortinet', '', '2021-06-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '72270', '88000', 'Techno Solutions', '', '', NULL, '2020-11-29 15:02:19.910662'),
(168, '30E', 'FGT30E3U17043690', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.910770'),
(169, '30E', 'FGT30E3U17042968', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.910882');
INSERT INTO `crm_fortinet` (`id`, `product_name`, `serialno`, `plantype`, `type`, `users`, `expiry_date`, `company`, `designation`, `person_name`, `mobile`, `landline`, `email`, `address1`, `address2`, `city`, `state`, `in_sell`, `out_sell`, `dealer`, `status`, `remarks`, `quotedprice`, `modify_on`) VALUES
(170, '30E', 'FGT30E3U17043704', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.910991'),
(171, '30E', 'FGT30E3U17042883', '', 'crm_fortinet', '', '2021-06-22', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.911097'),
(172, '30E', 'Fgt30e5619062983', '', 'crm_fortinet', '', '2021-06-28', 'K D Motors Pvt Ltd', '', '', '', '', '', '', '', 'Pali', 'Rajasthan', '22000', '41000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.911205'),
(173, '30E', 'FGT30E5619063506', '', 'crm_fortinet', '', '2021-06-28', '', '', '', '', '', '', '', '', 'Jodhpur', 'Rajasthan', '22000', '33500', 'Shalu Enterprises', '', '', NULL, '2020-11-29 15:02:19.911310'),
(174, '200E', 'FG200E4Q16900094', '', 'crm_fortinet', '', '2021-06-30', 'Autoneum India Pvt Ltd', '', '', '', '', '', '', '', 'BEHROR', 'Rajasthan', '101000', '114000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.911419'),
(175, '40C', 'FGT40C3912035285', '', 'crm_fortinet', '', '2021-07-01', 'Grand Chanakya Hospitality', '', 'Gaurav Tyagi', '9953123346', '', 'gtyagi@staywellgroup.com', 'Level 4, 401 402 , Vipul Square Sushant Lok 1GURGAON ,HARYANA- 122002', '', 'JAIPUR', 'Rajasthan', '10850', '12750', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.911539'),
(176, '100E', 'FG100ETK19029183', '', 'crm_fortinet', '', '2021-07-01', 'TOKAI RUBBER AUTO PARTS INDIA PVT LTD', '', '', '', '', '', '', '', 'NEEMRANA', 'Rajasthan', '', '114000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.911650'),
(177, '60E', 'FGT60ETK18015675', '', 'crm_fortinet', '', '2021-07-13', 'CONSILIUM SOFTWARE PVT LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '44000', '60000', 'CONSILIUM SOFTWARE PVT LTD', '', '', NULL, '2020-11-29 15:02:19.911758'),
(178, '100D', 'FG100D31G1586946', '', 'crm_fortinet', '', '2021-07-13', 'Allen Career Institute', '', '', '', '', '', '', '', 'INDORE', '', '93852', '81032', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.911866'),
(179, '30E', 'FGT30E3U17010940', '', 'crm_fortinet', '', '2021-07-15', 'TAIYO India Private Limited', '', 'Yasuhiro', '01494 696 890/7230004698', '', 'ojima@k-taiyo.co.jp', 'Plot No. 91 A, Majrakath, New Industrial Compex, Japanese Zone', '', 'NEEMRANA', 'Rajasthan', '', '', 'KDDI INDIA PVT. LTD.', '', '', NULL, '2020-11-29 15:02:19.911983'),
(180, '80E', 'FGT80E4Q17003567', '', 'crm_fortinet', '', '2021-07-17', '', '', '', '', '', '', '', '', 'KOLKATA', '', '72270', '78750', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.912090'),
(181, '60E', 'FGT60ETK18015219', '', 'crm_fortinet', '', '2021-07-23', '', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '44000', '58000', 'SYSTEM & TECHNOLOGY', '', '', NULL, '2020-11-29 15:02:19.912193'),
(182, '200D', 'FG200D4615801999', '', 'crm_fortinet', '', '2021-07-26', 'Allen Career Institute', '', 'Jitendra Gupta', '9829554181', '', 'jitendra.gupta@allen.ac.in', 'SAmachar Jagat', '', 'KOTA', 'Rajasthan', '218592', '207848', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.912311'),
(183, '50E', 'FGT50E3U15001979', '', 'crm_fortinet', '', '2021-07-26', 'QDegrees Services', '', 'Neeraj Sharma', '#ERROR!', '', 'neeraj.sharma@qdegrees.com', 'jaipur', '', 'JAIPUR', 'Rajasthan', '13942', '16000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.912425'),
(184, '50E', 'FGT50E3U17016145', '', 'crm_fortinet', '', '2021-07-27', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '40000', '50000', 'COMPUTER GARAGE', '', '', NULL, '2020-11-29 15:02:19.912535'),
(185, '100D', 'FG100D3G15812753', '', 'crm_fortinet', '', '2021-07-27', 'Allen Career Institute', '', 'Jitendra Gupta', '9829554181', '', 'jitendra.gupta@allen.ac.in', 'SAmachar Jagat', '', 'BANGALORE', '', '93852', '81032', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.912650'),
(186, '40C', 'FGT40C3915001213', '', 'crm_fortinet', '', '2021-07-27', 'Reliance Chemotex', '', 'Deepak Bhatnagar', '#ERROR!', '', 'udaipur@reliancechemotex.com', 'Madri', '', 'UDAIPUR', 'Rajasthan', '', '', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.912762'),
(187, '90D', 'FGT90D3Z14014675', '', 'crm_fortinet', '', '2021-07-28', 'Kothari Medical', '', 'Mr Alok Ji', '9414431194', '', 'kmribkn851@rediffmail.com', '', '', 'BIKANER', 'Rajasthan', '36086', '37000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.912873'),
(188, '60D', 'FGT60D4615093941', '', 'crm_fortinet', '', '2021-07-29', 'CISF Office', '', 'Ashwani Gupta', '9694895005', '', 'rtc-behror@cisf.gov.in', 'CISF mprtc anatpura behror raj.301701', '', 'Behror', 'Rajasthan', '21616', '25000', 'Gupta Computer', '', '', NULL, '2020-11-29 15:02:19.912986'),
(189, '60E', 'FGT60ETK18020589', '', 'crm_fortinet', '', '2021-07-29', 'Allen Career Institute', '', '', '', '', '', '', '', 'VADODARA', '', '44000', '60225', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.913093'),
(190, '200E', 'FG200ETK18901818', '', 'crm_fortinet', '', '2021-07-31', 'Paayas Milk Producer Co.Ltd', '', 'Tara', '9549653489', '', 'tara.sharma@paayasmilk.com', 'Ajmer road', '', 'JAIPUR', 'Rajasthan', '299000', '349900', 'Paayas Milk Producer Co.Ltd', '', '', NULL, '2020-11-29 15:02:19.913206'),
(191, '60E', 'FGT60ETK18021630', '', 'crm_fortinet', '', '2021-08-01', 'Allen Career Institute', '', '', '', '', '', '', '', 'RAJKOT', '', '44000', '60225', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.913309'),
(192, '60E', 'FGT60ETK19026093', '', 'crm_fortinet', '', '2021-08-01', '', '', '', '', '', '', '', '', 'Jodhpur', 'Rajasthan', '56111', '64000', 'CREADENT SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.913414'),
(193, '30E', 'FGT30E3U17042684', '', 'crm_fortinet', '', '2021-08-02', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '23200', '33320', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.913522'),
(194, '50E', 'FGT50E3U17012966', '', 'crm_fortinet', '', '2021-08-03', 'KANPUR EDIBLE', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '13942', '19200', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.913631'),
(195, '60E', 'FGT60ETK18022488', '', 'crm_fortinet', '', '2021-08-05', 'Allen Career Institute', '', '', '', '', '', '', '', 'SURAT', '', '44000', '60225', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.913736'),
(196, '300E', 'FG3H0E5818900968', '', 'crm_fortinet', '', '2021-08-06', 'RESONANCE EDUVENTURES LIMITEED', '', 'Ashwani ji', '9352890592', '', 'ashwani@resonance.ac.in', 'A-46,52, CG Tower, Near City Mall,Jhalawar Road,Kota, Rajasthan -324005', '', 'Kota', 'Rajasthan', '581500', '521352', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.913852'),
(197, '300E', 'FG3H0E5818901124', '', 'crm_fortinet', '', '2021-08-06', 'RESONANCE EDUVENTURES LIMITEED', '', 'Ashwani ji', '9352890592', '', 'ashwani@resonance.ac.in', 'A-46,52, CG Tower, Near City Mall,Jhalawar Road,Kota, Rajasthan -324005', '', 'Kota', 'Rajasthan', '420000', '441146', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.913969'),
(198, '60E', 'FGT60ETK18019568', '', 'crm_fortinet', '', '2021-08-07', 'Allen Career Institute', '', '', '', '', '', '', '', 'RANCHI', '', '44000', '60225', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.914098'),
(199, '100D', 'FG100D3G13827478', '', 'crm_fortinet', '', '2021-08-07', 'Jaipur Metro Rail Corporation Ltd.', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '176600', 'ADITYA SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.914288'),
(200, '60E', 'FGT60ETK18016113', '', 'crm_fortinet', '', '2021-08-08', '', '', '', '', '', '', '', '', 'AJMER', 'Rajasthan', '44000', '48100', 'SECURESYS TECHNOLOGIES', '', '', NULL, '2020-11-29 15:02:19.914431'),
(201, '60E', 'FGT60ETK18021488', '', 'crm_fortinet', '', '2021-08-08', 'Allen Career Institute', '', '', '', '', '', '', '', 'BHILWARA', 'Rajasthan', '44000', '60225', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.914585'),
(202, 'FG1K2D', 'FG1K2D3I14800181', '', 'crm_fortinet', '', '2021-08-08', 'RNB Global University', '', '', '-9252425120', '', 'technical@rnbglobal.edu.in', '', '', 'BIKANER', 'Rajasthan', '', '', 'HP', '', '', NULL, '2020-11-29 15:02:19.914728'),
(203, '200E', 'FG200ETK18901812', '', 'crm_fortinet', '', '2021-08-09', 'Paayas Milk Producer Co.Ltd', '', 'Tara', '9549653489', '', 'tara.sharma@paayasmilk.com', 'Ajmer Road', '', 'JAIPUR', 'Rajasthan', '299000', '349900', 'Paayas Milk Producer Co.Ltd', '', '', NULL, '2020-11-29 15:02:19.914872'),
(204, '200D', 'FG200D4615801691', '', 'crm_fortinet', '', '2021-08-10', 'Allen Career Institute', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '218592', '207848', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.915027'),
(205, '30E', 'FGT30E5618015882', '', 'crm_fortinet', '', '2021-08-12', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.915167'),
(206, '60E', 'FGT60ETK18019570', '', 'crm_fortinet', '', '2021-08-13', 'Allen Career Institute', '', '', '', '', '', '', '', 'MUMBAI', '', '44000', '60225', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.915316'),
(207, '201E', 'FG201ETK18902806', '', 'crm_fortinet', '', '2021-08-16', 'BIRLA INTERNATIONAL SCHOOL', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '386000', '455000', 'Hitachi Systems Micro Clinic Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.915453'),
(208, '60E', 'FGT60ETK18015271', '', 'crm_fortinet', '', '2021-08-18', '', '', '', '', '', '', '', '', 'MUMBAI', '', '44000', '56000', 'N-TECH', '', '', NULL, '2020-11-29 15:02:19.915594'),
(209, '50E', 'FGT50E5618001883', '', 'crm_fortinet', '', '2021-08-21', 'Telso Networks', '', 'Nitanshu Jain', '#ERROR!', '', 'nitanshu@telsonetworks.com', '', '', 'JAIPUR', 'Rajasthan', '', '', 'Telso Networks', '', '', NULL, '2020-11-29 15:02:19.915731'),
(210, '30E', 'FGT30E5618015563', '', 'crm_fortinet', '', '2021-08-22', 'Oriental Power Cables Ltd', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '23200', '27000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.915867'),
(211, '30E', 'FGT30E5618014083', '', 'crm_fortinet', '', '2021-08-27', '', '', '', '', '', '', '', '', 'KOLKATA', '', '23200', '25000', 'TECHNO SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.915999'),
(212, '30E', 'FGT30E5618018624', '', 'crm_fortinet', '', '2021-08-29', '', '', '', '', '', '', '', '', 'KOLKATA', '', '23200', '25000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.916144'),
(213, '60E', 'FGT60ETK18026092', '', 'crm_fortinet', '', '2021-08-29', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.916281'),
(214, '30E', 'FGT30E5618014054', '', 'crm_fortinet', '', '2021-08-30', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.916416'),
(215, '30E', 'FGT30E5618015808', '', 'crm_fortinet', '', '2021-08-30', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.916555'),
(216, '60E', 'FGT60ETK18025981', '', 'crm_fortinet', '', '2021-08-30', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.916694'),
(217, '30E', 'FGT30E5618015987', '', 'crm_fortinet', '', '2021-08-31', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.916830'),
(218, '30E', 'FGT30E5618015594', '', 'crm_fortinet', '', '2021-09-02', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.916965'),
(219, '30E', 'FGT30E5618017593', '', 'crm_fortinet', '', '2021-09-02', '', '', '', '', '', '', '', '', 'KOLKATA', '', '23200', '25500', 'Computer Exchange Pvt Ltd (Kolkata)', '', '', NULL, '2020-11-29 15:02:19.917098'),
(220, '200E', 'FG200E4Q17907620', '', 'crm_fortinet', '', '2021-09-03', 'Genus Power Infrastructures Limited', '', 'Sundar Jangid', '8058296513', '', 'info@genus.in', 'Head Office : SPL-3,RIICO Industrial Area,Sitapura,Tonk Road ,Jaipur', '', 'JAIPUR', 'Rajasthan', '256255', '350000', 'Genus Power Infrastructures Limited', '', '', NULL, '2020-11-29 15:02:19.917244'),
(221, '70D', 'FGT70D3Z16003654', '', 'crm_fortinet', '', '2021-09-03', 'Systematic Solution', '', '', '0141-5104432', '', '', '', '', 'JAIPUR', 'Rajasthan', '27800', '30600', 'SYSTEMATIC SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.917380'),
(222, '30E', 'FGT30E3U17018270', '', 'crm_fortinet', '', '2021-09-04', 'Satnam Motocorp', '', '', '', '', 'mukeshdixit@live.in', 'malviya nagar', '', 'JAIPUR', 'Rajasthan', '10901', '12500', 'SYSTEMATIC SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.917525'),
(223, '300E', 'FG3H0E3917902431', '', 'crm_fortinet', '', '2021-09-04', 'Allen Career Institute', '', 'JITENDRA', '9829554181', '', '', '', '', 'KOTA', 'Rajasthan', '410000', '412155', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.917665'),
(224, '30E', 'FGT30E5618017610', '', 'crm_fortinet', '', '2021-09-05', '', '', '', '', '', '', '', '', 'KOLKATA', '', '23200', '25500', 'Computer Exchange Pvt Ltd (Kolkata)', '', '', NULL, '2020-11-29 15:02:19.917798'),
(225, '100D', 'FG100D3G13827482', '', 'crm_fortinet', '', '2021-09-07', 'Jaipur Metro Rail Corporation Ltd.', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '176600', 'ADITYA SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.917983'),
(226, '60E', 'FGT60ETK18015395', '', 'crm_fortinet', '', '2021-09-08', '', '', '', '', '', '', '', '', 'JODHPUR', 'Rajasthan', '44000', '54500', 'SD Services', '', '', NULL, '2020-11-29 15:02:19.918117'),
(227, '60E', 'FGT60E4Q16096553', '', 'crm_fortinet', '', '2021-09-08', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '46500', '54000', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.918255'),
(228, '60E', 'FGT60ETK18026432', '', 'crm_fortinet', '', '2021-09-08', '', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'RESONANCE EDUVENTURES LIMITEED', '', '', NULL, '2020-11-29 15:02:19.918389'),
(229, '30E', 'FGT30E5618018886', '', 'crm_fortinet', '', '2021-09-10', '', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '23200', '38000', 'SYSTEM & TECHNOLOGY', '', '', NULL, '2020-11-29 15:02:19.918537'),
(230, '30E', 'FGT30E5618017756', '', 'crm_fortinet', '', '2021-09-10', '', '', '', '', '', '', '', '', 'KOLKATA', '', '23200', '25500', 'Computer Exchange Pvt Ltd (Kolkata)', '', '', NULL, '2020-11-29 15:02:19.918681'),
(231, '60E', 'FGT60ETK18026387', '', 'crm_fortinet', '', '2021-09-10', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.918817'),
(232, '30E', 'FGT30E5618014044', '', 'crm_fortinet', '', '2021-09-10', 'KM Transport & Logistics', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '32000', 'Cynosure Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.918952'),
(233, '30E', 'FGT30E5618017639', '', 'crm_fortinet', '', '2021-09-11', '', '', '', '', '', '', '', '', 'KOLKATA', '', '23200', '25500', 'Computer Exchange Pvt Ltd (Kolkata)', '', '', NULL, '2020-11-29 15:02:19.919084'),
(234, '60E', 'FGT60ETK18026350', '', 'crm_fortinet', '', '2021-09-11', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.919219'),
(235, '60E', 'FGT60ETK18025310', '', 'crm_fortinet', '', '2021-09-11', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.919355'),
(236, '60E', 'FGT60ETK18026402', '', 'crm_fortinet', '', '2021-09-12', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.919496'),
(237, '30E', 'FGT30E5618014023', '', 'crm_fortinet', '', '2021-09-13', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '23200', '29500', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.919631'),
(238, '30E', 'FGT30E3U17017924', '', 'crm_fortinet', '', '2021-09-14', 'TLC Heritag Of India', '', 'Deepika Solanki', '9928798383', '', 'dips@heritageofindia.in', '6 Chetak Circle Near Moonlight Drycleaners, First Floor Shrimal Studio,', '', 'UDAIPUR', 'Rajasthan', '10901', '13000', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.919774'),
(239, '60E', 'FGT60ETK18015025', '', 'crm_fortinet', '', '2021-09-14', '', '', '', '', '', '', '', '', 'PALI', 'Rajasthan', '44000', '66000', 'SHANKESHWAR COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.919907'),
(240, '60E', 'FGT60ETK18016085', '', 'crm_fortinet', '', '2021-09-16', '', '', '', '', '', '', '', '', 'INDORE', '', '44000', '56000', 'ADVANCE TECHNOLOGY COMPUTER', '', '', NULL, '2020-11-29 15:02:19.920039'),
(241, '30E', 'FGT30E5618013862', '', 'crm_fortinet', '', '2021-09-17', '', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '23200', '38000', 'SYSTEM & TECHNOLOGY', '', '', NULL, '2020-11-29 15:02:19.920171'),
(242, '30E', 'FGT30E5618013767', '', 'crm_fortinet', '', '2021-09-17', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '23200', '29500', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.920310'),
(243, '60E', 'FGT60ETK18015313', '', 'crm_fortinet', '', '2021-09-17', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '44000', '60000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.920444'),
(244, '30E', 'FGT30E5618017747', '', 'crm_fortinet', '', '2021-09-18', '', '', '', '', '', '', '', '', 'KOLKATA', '', '23200', '25500', 'Computer Exchange Pvt Ltd (Kolkata)', '', '', NULL, '2020-11-29 15:02:19.920589'),
(245, '30E', 'FGT30E5618014171', '', 'crm_fortinet', '', '2021-09-19', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '23200', '29500', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.920722'),
(246, '40C', 'FGT40C3913004220', '', 'crm_fortinet', '', '2021-09-24', 'Autoworld', '', 'Anupam Sankhla', '9829311173', '', 'autoworld.ceo@gmail.com', 'Auto World, Sitapura', '', 'JAIPUR', 'Rajasthan', '10706', '11200', '', '', '', NULL, '2020-11-29 15:02:19.920858'),
(247, '50E', 'FGT50E5619014174', '', 'crm_fortinet', '', '2021-09-24', 'TLC Heritag Of India', '', 'Deepika Solanki', '9928798383', '', 'dips@heritageofindia.in', '6 Chetak Circle Near Moonlight Drycleaners, First Floor Shrimal Studio,', '', 'UDAIPUR', 'Rajasthan', '13942', '17500', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.921002'),
(248, '30E', 'FGT30E5618017398', '', 'crm_fortinet', '', '2021-09-24', '', '', '', '', '', '', '', '', 'KOLKATA', '', '23200', '25500', 'Computer Exchange Pvt Ltd (Kolkata)', '', '', NULL, '2020-11-29 15:02:19.921136'),
(249, '60E', 'FGT60ETK18025753', '', 'crm_fortinet', '', '2021-09-24', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.921271'),
(250, '30E', 'FGT30E5618017662', '', 'crm_fortinet', '', '2021-09-25', '', '', '', '', '', '', '', '', 'KOLKATA', '', '23200', '25500', 'Computer Exchange Pvt Ltd (Kolkata)', '', '', NULL, '2020-11-29 15:02:19.921403'),
(251, '50E', 'FGT50E5618002092', '', 'crm_fortinet', '', '2021-09-25', '', '', '', '', '', '', '', '', 'Lucknow', 'Uttar Pradesh', '40000', '45000', 'Takyon Networks Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.921542'),
(252, '30E', 'FGT30E5618013605', '', 'crm_fortinet', '', '2021-09-26', 'KM Transport & Logistics', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '32000', 'Cynosure Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.921679'),
(253, '300E', 'FG3H0E3917903073', '', 'crm_fortinet', '', '2021-09-27', 'Allen Career Institute', '', 'JITENDRA', '9829554181', '', '', '', '', 'KOTA', 'Rajasthan', '410000', '412155', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.921817'),
(254, '60E', 'FGT60ETK18026066', '', 'crm_fortinet', '', '2021-09-30', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.921953'),
(255, '60E', 'FGT60ETK18026898', '', 'crm_fortinet', '', '2021-10-01', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.922088'),
(256, '80C', 'FGT80C3909635593', '', 'crm_fortinet', '', '2021-10-01', 'Guardian International Pvt Ltd', '', 'Raj Albert', '9.87E+09', '', 'araj@amanresorts.com', 'Swai Madhopur, Sherpur Khilji Pur', '', 'Ranthambore', 'Rajasthan', '', '', 'P JNETWORKS', '', '', NULL, '2020-11-29 15:02:19.922235'),
(257, '60E', 'FGT60ETK18026895', '', 'crm_fortinet', '', '2021-10-02', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.922377'),
(258, '60E', 'FGT60ETK18026360', '', 'crm_fortinet', '', '2021-10-02', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.922521'),
(259, '60E', 'FGT60ETK18025894', '', 'crm_fortinet', '', '2021-10-03', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.922665'),
(260, '60E', 'FGT60ETK18025678', '', 'crm_fortinet', '', '2021-10-03', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.922801'),
(261, '30E', 'FGT30E5618017692', '', 'crm_fortinet', '', '2021-10-03', '', '', '', '', '', '', '', '', 'KOLKATA', '', '23200', '25500', 'Computer Exchange Pvt Ltd (Kolkata)', '', '', NULL, '2020-11-29 15:02:19.922935'),
(262, '30E', 'FGT30E5618017683', '', 'crm_fortinet', '', '2021-10-03', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.923070'),
(263, '30E', 'FGT30E5618008424', '', 'crm_fortinet', '', '2021-10-03', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.923205'),
(264, '60E', 'FGT60ETK18055388', '', 'crm_fortinet', '', '2021-10-03', '', '', '', '', '', '', '', '', 'kota', 'Rajasthan', '49744', '70000', 'Magnifying Solutions', '', '', NULL, '2020-11-29 15:02:19.923337'),
(265, '60E', 'FGT60ETK18025241', '', 'crm_fortinet', '', '2021-10-04', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.923480'),
(266, '60E', 'FGT60ETK18026149', '', 'crm_fortinet', '', '2021-10-05', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.923622'),
(267, '60E', 'FGT60ETK18026580', '', 'crm_fortinet', '', '2021-10-05', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.923758'),
(268, '60E', 'FGT60ETK18003846', '', 'crm_fortinet', '', '2021-10-07', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '44000', '61000', 'BLAZE TECHNOLOGIES', '', '', NULL, '2020-11-29 15:02:19.923889'),
(269, '100E', 'FG100ETK18001576', '', 'crm_fortinet', '', '2021-10-08', '', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '139000', '159420', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.924023'),
(270, '100E', 'FG100ETK18003462', '', 'crm_fortinet', '', '2021-10-09', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '143000', '156000', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.924154'),
(271, '100E', 'FG100ETK18002601', '', 'crm_fortinet', '', '2021-10-10', '', '', '', '', '', '', '', '', 'Lucknow', 'Uttar Pradesh', '139000', '190000', 'S.S SERVICES', '', '', NULL, '2020-11-29 15:02:19.924287'),
(272, '30E', 'FGT30E5618017499', '', 'crm_fortinet', '', '2021-10-10', '', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '23200', '27500', 'Takyon Networks Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.924427'),
(273, '60E', 'FGT60ETK18026288', '', 'crm_fortinet', '', '2021-10-10', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.924573'),
(274, '80E', 'FGT80E4Q17004150', '', 'crm_fortinet', '', '2021-10-11', 'Ummed Bhawan', '', 'ATUL', '9001496700', '', 'finance.jodhpur@ummedhotels.com,it.jodhpur@ummedhotels.com', 'Jodhpur Banar Road,Jodhpur', '', 'Jodhpur', 'Rajasthan', '72000', '90000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.924719'),
(275, '30E', 'Anup Enterprises Pvt Ltd', '', 'crm_fortinet', '', '2021-10-13', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '28000', 'HINDUSTAN COMPUTER', '', '', NULL, '2020-11-29 15:02:19.924854'),
(276, '30E', 'FGT30E5618017846', '', 'crm_fortinet', '', '2021-10-13', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '28000', 'ANUP ENTERPRISES PVT LTD', '', '', NULL, '2020-11-29 15:02:19.924986'),
(277, '60E', 'FGT60ETK18026068', '', 'crm_fortinet', '', '2021-10-15', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.925122'),
(278, '60E', 'FGT60E4Q16096127', '', 'crm_fortinet', '', '2021-10-16', 'Daido India Pvt. Ltd', '', 'Bhim Sen VERMA', '+91 149-4670700', '', 'it@didindia.in', 'SP2-96 Rico New Industrial Complax Majarkath', '', 'NEEMRANA', 'Rajasthan', '46035', '57000', 'Kinesis Infotech Bussiness Services Company', '', '', NULL, '2020-11-29 15:02:19.925267'),
(279, '60E', 'FGT60ETK18026065', '', 'crm_fortinet', '', '2021-10-17', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.925404'),
(280, '30E', 'FGT30E5618042961', '', 'crm_fortinet', '', '2021-10-21', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '37000', 'AT YOUR SERVICES', '', '', NULL, '2020-11-29 15:02:19.925683'),
(281, '30E', 'FGT30E5618014062', '', 'crm_fortinet', '', '2021-10-22', 'Harita Fehrer Limited', '', 'Sankar G', '9788311829', '', 'g.sankar@haritaseating.com', 'Riico Industrial Area, Biwadi-301019', '', 'BHIWADI', 'Rajasthan', '', '', 'Sidhshree Computronics Pvt Ltd.', '', '', NULL, '2020-11-29 15:02:19.925847'),
(282, '200E', 'FG200ETK18908050', '', 'crm_fortinet', '', '2021-10-22', 'G-TEKT INDIA PRIVATE LIMITED', '', 'Mahendra Kauhwaha', '9509952509', '', 'mahendra@g-tip.co.in', 'Tapukara Khushkhera Bhawadi', '', 'BHIWADI', 'Rajasthan', '204574', '186000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.925997'),
(283, '100E', 'FG100ETK18002353', '', 'crm_fortinet', '', '2021-10-23', '', '', '', '', '', '', '', '', 'Lucknow', 'Uttar Pradesh', '139000', '165000', 'SPIN WOLRD', '', '', NULL, '2020-11-29 15:02:19.926132'),
(284, '30E', 'FGT30E5618039456', '', 'crm_fortinet', '', '2021-10-25', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '24000', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.926264'),
(285, '50E', 'FGT50E5618030228', '', 'crm_fortinet', '', '2021-10-26', 'Indiana Palace Jodhpur Unti of- WAVES HOTELS AND ESTATES Pvt. LTD.', '', '', '', '', '', '', '', 'JODHPUR', 'Rajasthan', '40000', '51000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.926420'),
(286, '60E', 'FGT60ETK18003786', '', 'crm_fortinet', '', '2021-10-26', 'GANGANAGAR COMMODITY', '', '', '', '', '', '', '', 'Sri Ganganagar', 'Rajasthan', '44000', '69000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.926569'),
(287, '100D', 'FG100D3G15806984', '', 'crm_fortinet', '', '2021-10-27', 'Allen Career Institute', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '93852', '81032', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.926707'),
(288, '60E', 'FGT60ETK18025371', '', 'crm_fortinet', '', '2021-10-28', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.926844'),
(289, '50E', 'FGT50E5618024461', '', 'crm_fortinet', '', '2021-10-30', '', '', '', '', '', '', '', '', 'Lucknow', 'Uttar Pradesh', '40000', '49000', 'Takyon Networks Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.926978'),
(290, '30E', 'FGT30E5618039550', '', 'crm_fortinet', '', '2021-10-31', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27000', 'B.B.Professional Marketing P Ltd.', '', '', NULL, '2020-11-29 15:02:19.927111'),
(291, '60E', 'FGT60ETK18026767', '', 'crm_fortinet', '', '2021-11-01', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.927246'),
(292, '60E', 'FGT60ETK18026474', '', 'crm_fortinet', '', '2021-11-01', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.927381'),
(293, '60E', 'FGT60ETK18026755', '', 'crm_fortinet', '', '2021-11-01', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.927528'),
(294, '60E', 'FGT60ETK18025905', '', 'crm_fortinet', '', '2021-11-01', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.927666'),
(295, '60E', 'FGT60ETK18026276', '', 'crm_fortinet', '', '2021-11-01', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.927801'),
(296, '60E', 'FGT60ETK18025525', '', 'crm_fortinet', '', '2021-11-01', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.927936'),
(297, '60E', 'FGT60ETK18026322', '', 'crm_fortinet', '', '2021-11-01', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.928072'),
(298, '60E', 'FGT60ETK18025919', '', 'crm_fortinet', '', '2021-11-01', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.928206'),
(299, '60E', 'FGT60ETK18025325', '', 'crm_fortinet', '', '2021-11-01', 'RESONANCE EDUVENTURES LIMITEED', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '37273', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.928341'),
(300, '30E', 'FGT30E5618040061', '', 'crm_fortinet', '', '2021-11-01', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'ANUP ENTERPRISES PVT LTD', '', '', NULL, '2020-11-29 15:02:19.928478'),
(301, '60D', 'FGT60D4615065746', '', 'crm_fortinet', '', '2021-11-02', 'DDG (E) Doordarshan Kendra Jaipur', '', 'AK TAMBIA', '7002847034', '', 'vtrmddkjaipur@gmail.com', '', '', 'JAIPUR', 'Rajasthan', '18675', '25000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.928624'),
(302, '30E', 'FGT30E5618040128', '', 'crm_fortinet', '', '2021-11-02', 'SK FINANCE', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.928758'),
(303, '200D', 'FG200D3914804349', '', 'crm_fortinet', '', '2021-11-03', 'NIRMAL CAR PVT LTD', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.928891'),
(304, '500E', 'FG5H0E5818904655', '', 'crm_fortinet', '', '2021-11-04', 'SK FINANCE', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '719859', '820000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.929024'),
(305, '30E', 'FGT30E5618039735', '', 'crm_fortinet', '', '2021-11-10', '', '', '', '', '', '', '', '', 'Lucknow', 'Uttar Pradesh', '22000', '29000', 'TRIX TECHNOLOGIES', '', '', NULL, '2020-11-29 15:02:19.929162'),
(306, '30E', 'FGT30E5618041687', '', 'crm_fortinet', '', '2021-11-11', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '33500', 'Telso Networks', '', '', NULL, '2020-11-29 15:02:19.929293'),
(307, '30E', 'FGT30E5618039737', '', 'crm_fortinet', '', '2021-11-12', '', '', '', '', '', '', '', '', 'Lucknow', 'Uttar Pradesh', '22000', '33000', 'COMPUTER MANAGEMENT SERVICES', '', '', NULL, '2020-11-29 15:02:19.929424'),
(308, '30E', 'FGT30E5618039548', '', 'crm_fortinet', '', '2021-11-13', 'WONDER HOME FINANCE LTD', '', 'Piyush Jain', '9970835054', '', 'piyush.jain@wonderhfl.com', '620 – 620A, 6th floor, North Block,Word Trade Park, Malviya NagarJLN Marg, Jaipur', '', 'JAIPUR', 'Rajasthan', '22000', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.929590'),
(309, '30E', 'FGT30E3U17024192', '', 'crm_fortinet', '', '2021-11-17', '', '', '', '', '', '', '', '', 'NEEMRANA', 'Rajasthan', '11040', '14500', 'TEPHRA INFOTECH', '', '', NULL, '2020-11-29 15:02:19.929726'),
(310, '30E', 'FGT30E5618039891', '', 'crm_fortinet', '', '2021-11-23', 'SK FINANCE', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.929859'),
(311, '30E', 'FGT30E5618017637', '', 'crm_fortinet', '', '2021-11-25', '', '', '', '', '', '', '', '', 'KOLKATA', '', '23200', '25500', 'Computer Exchange Pvt Ltd (Kolkata)', '', '', NULL, '2020-11-29 15:02:19.929991'),
(312, '30E', 'FGT30E5618040008', '', 'crm_fortinet', '', '2021-11-26', 'SK FINANCE', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.930124'),
(313, '30E', 'FGT30E5618039644', '', 'crm_fortinet', '', '2021-11-26', '', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '22000', '33000', 'ARYANS COMPUTER & PHERIPHERALS', '', '', NULL, '2020-11-29 15:02:19.930256'),
(314, '500E', 'FG5H0E5818904660', '', 'crm_fortinet', '', '2021-11-26', 'SK FINANCE', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '719859', '820000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.930389'),
(315, '80E', 'FGT80ETK18005666', '', 'crm_fortinet', '', '2021-11-26', '', '', '', '', '', '', '', '', 'INDORE', '', '72270', '87500', 'JUNOSYS', '', '', NULL, '2020-11-29 15:02:19.930539'),
(316, '30E', 'FGT30E5618039625', '', 'crm_fortinet', '', '2021-11-27', 'SK FINANCE', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.930681'),
(317, '30E', 'FGT30E3U17028182', '', 'crm_fortinet', '', '2021-12-03', 'Industrial Guar Products Pvt. Ltd.', '', 'Subrahmanyam', '9660991999', '', 'venkat@igp.co.in', 'EPIP Neemrana', '', 'NEEMRANA', 'Rajasthan', '21926', '38000', 'TEPHRA INFOTECH', '', '', NULL, '2020-11-29 15:02:19.930821'),
(318, '50E', 'FGT50E5618024431', '', 'crm_fortinet', '', '2021-12-03', 'SNG GROUP', '', '', '1415157999', '', 'snggroup@outlook.com', 'First Floor, Business Park, Maharishi Circle,Subhash Marg, C-Scheme', '', 'JAIPUR', 'Rajasthan', '44500', '71000', 'Abstract Solution & Consultants', '', '', NULL, '2020-11-29 15:02:19.930962'),
(319, '30E', 'FGT30E3U17023920', '', 'crm_fortinet', '', '2021-12-07', '', '', '', '', '', '', '', '', 'NEEMRANA', 'Rajasthan', '11040', '14500', 'TEPHRA INFOTECH', '', '', NULL, '2020-11-29 15:02:19.931094'),
(320, '30E', 'FGT30E5618039621', '', 'crm_fortinet', '', '2021-12-07', 'SK FINANCE', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.931259'),
(321, '30E', 'FGT30E5618039643', '', 'crm_fortinet', '', '2021-12-07', 'SK FINANCE', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.931396'),
(322, '30E', 'FGT30E5618039909', '', 'crm_fortinet', '', '2021-12-07', 'SK FINANCE', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.931535'),
(323, '30E', 'FGT30E5618040340', '', 'crm_fortinet', '', '2021-12-07', 'SK FINANCE', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.931670'),
(324, '30E', 'FGT30E5618039655', '', 'crm_fortinet', '', '2021-12-09', 'SK FINANCE', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.931802'),
(325, '60E', 'FGT60ETK18003012', '', 'crm_fortinet', '', '2021-12-11', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '49800', '55000', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.931932'),
(326, '80E', 'FGT80ETK18006001', '', 'crm_fortinet', '', '2021-12-13', '', '', '', '', '', '', '', '', 'INDORE', '', '72270', '92000', 'ADVANCE TECHNOLOGY COMPUTER', '', '', NULL, '2020-11-29 15:02:19.932062'),
(327, '60E', 'FGT60ETK18001513', '', 'crm_fortinet', '', '2021-12-16', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '49750', '55000', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.932192'),
(328, '30E', 'FGT30E5618039761', '', 'crm_fortinet', '', '2021-12-17', 'WONDER HOME FINANCE LTD', '', 'Piyush Jain', '9,97,08,35,05,49,11,66,00,000', '', 'piyush.jain@wonderhfl.com', '620 – 620A, 6th floor, North Block,Word Trade Park, Malviya Nagar,JLN Marg, Jaipur', '', 'JAIPUR', 'Rajasthan', '22000', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.932338'),
(329, '50E', 'FGT50E5618024453', '', 'crm_fortinet', '', '2021-12-18', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '44500', '55000', 'B.B.Professional Marketing P Ltd.', '', '', NULL, '2020-11-29 15:02:19.932479'),
(330, '100E', 'FG100ETK18002814', '', 'crm_fortinet', '', '2021-12-19', 'Mikuni India Pvt Ltd', '', '', '01494-246870', '', 'sandeep_agarwal@mikuni.co.in', 'SP-2, 20&21A, New Industrial Complex', '', 'ALWAR', 'Rajasthan', '143000', '230000', 'Rama Tec', '', '', NULL, '2020-11-29 15:02:19.932629'),
(331, '30E', 'Fgt30e5618038737', '', 'crm_fortinet', '', '2021-12-19', 'Shree Balaji Multi Commodity Pvt Ltd.', '', 'Ankit', '8696100003', '', 'admin@sbmcpl.co.in', '33 G Block Sri Ganganagar', '', 'Sri Ganganagar', 'Rajasthan', '22000', '33220', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.932778'),
(332, '60E', 'FGT60ETK18003683', '', 'crm_fortinet', '', '2021-12-20', '', '', '', '', '', '', '', '', 'REWARI', '', '44000', '57000', 'Kinesis Infotech Bussiness Services Company', '', '', NULL, '2020-11-29 15:02:19.932913'),
(333, '60E', 'FGT60ETK18055322', '', 'crm_fortinet', '', '2021-12-24', '', '', '', '', '', '', '', '', 'BHIWADI', 'Rajasthan', '49744', '60000', 'Technowick Solutions Pvt. Ltd. (Bhiwadi)', '', '', NULL, '2020-11-29 15:02:19.933045'),
(334, '60E', 'FGT60ETK18003344', '', 'crm_fortinet', '', '2021-12-28', 'Allen Career Institute', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '44000', '60225', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.933179'),
(335, '30E', 'FGT30E5618040037', '', 'crm_fortinet', '', '2021-12-31', '', '', '', '', '', '', '', '', '', '', '22000', '29500', 'Rajasthan network Solutions', '', '', NULL, '2020-11-29 15:02:19.933309'),
(336, '30E', 'FGT30E5618036080', '', 'crm_fortinet', '', '2022-01-01', '', '', '', '', '', '', '', '', 'BHIWADI', 'Rajasthan', '22000', '27500', 'Technowick Solutions Pvt. Ltd. (Bhiwadi)', '', '', NULL, '2020-11-29 15:02:19.933440'),
(337, '30E', 'Fgt30e5618038287', '', 'crm_fortinet', '', '2022-01-01', '', '', '', '', '', '', '', '', 'Indore', '', '22000', '32500', 'Samyak Computers (Indore)', '', '', NULL, '2020-11-29 15:02:19.933582'),
(338, '60E', 'FGT60ETK18055407', '', 'crm_fortinet', '', '2022-01-01', '', '', '', '', '', '', '', '', 'Lucknow', 'Uttar Pradesh', '49477', '57000', 'Trix Technologies', '', '', NULL, '2020-11-29 15:02:19.933714'),
(339, '50E', 'FGT50E5618024399', '', 'crm_fortinet', '', '2022-01-03', 'THE FERN RESIDENCY HOTEL', '', '', '', '', '', '', '', 'Jodhpur', 'Rajasthan', '44500', '62700', 'Marcomm Signages Pvt Ltd (Jodhpur)', '', '', NULL, '2020-11-29 15:02:19.933848'),
(340, '30E', 'FGT30E5618040303', '', 'crm_fortinet', '', '2022-01-03', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27500', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.933977'),
(341, '30E', 'FGT30E5618038836', '', 'crm_fortinet', '', '2022-01-09', '', '', '', '', '', '', '', '', 'Jodhpur', 'Rajasthan', '22000', '26000', 'Diamond Sales', '', '', NULL, '2020-11-29 15:02:19.934107'),
(342, '30E', 'FGT30e5618040093', '', 'crm_fortinet', '', '2022-01-09', '', '', '', '', '', '', '', '', '', '', '22000', '27500', '', '', '', NULL, '2020-11-29 15:02:19.934235'),
(343, '30E', 'FGT30e5618040243', '', 'crm_fortinet', '', '2022-01-09', '', '', '', '', '', '', '', '', '', '', '22000', '27500', '', '', '', NULL, '2020-11-29 15:02:19.934361'),
(344, '50E', 'FGT50E5618024381', '', 'crm_fortinet', '', '2022-01-10', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '44500', '64000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.934501'),
(345, '30E', 'FGT30E5618040557', '', 'crm_fortinet', '', '2022-01-14', 'SK FINANCE', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.934647'),
(346, '30E', 'FGT30E5618041564', '', 'crm_fortinet', '', '2022-01-15', '', '', '', '', '', '', '', '', '', '', '22000', '27000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.934779'),
(347, '60E', 'FGT60ETK18003562', '', 'crm_fortinet', '', '2022-01-15', '', '', '', '', '', '', '', '', 'Sri Ganganagar', 'Rajasthan', '44000', '70000', 'SINGH ENTERPRISES', '', '', NULL, '2020-11-29 15:02:19.934910'),
(348, '30E', 'FGT30E5618038918', '', 'crm_fortinet', '', '2022-01-17', 'ITG Software', '', '', '', '', '', '', '', '', '', '22000', '29500', 'Rajasthan network Solutions', '', '', NULL, '2020-11-29 15:02:19.935042'),
(349, '30E', 'FGT30E5618039540', '', 'crm_fortinet', '', '2022-01-17', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '27000', 'HINDUSTAN COMPUTER', '', '', NULL, '2020-11-29 15:02:19.935173'),
(350, '90D', 'FGT90D3Z15011187', '', 'crm_fortinet', '', '2022-01-19', 'yachiyo-ind (YACHIYO INDIA MANUFACTURING PRIVATE LIMITED)', '', '', '1493-667777/9828786757 - Mr.Dusyant Tyagi', '', 'dushyant_tyagi@yachiyo-ind.co.in,gaurav_kumar@yachiyo-ind.co.in', 'SPL-1 (C) , TAPUKARA INDUSTRIAL AREA, KHUSHKHERA, DISTRICT Alwar - 301707, Rajasthan, India', '', 'BHIWADI', 'Rajasthan', '', '', 'KDDI INDIA PVT. LTD.', '', '', NULL, '2020-11-29 15:02:19.935323'),
(351, '30E', 'FGT30E5618038670', '', 'crm_fortinet', '', '2022-01-21', 'TARUN DANGAYACH (PARKINN)', '', 'TARUN DANGAYACH', '9001895008', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '39990', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.935466'),
(352, '60E', 'FGT60ETK18099AZE', '', 'crm_fortinet', '', '2022-01-28', 'MANU YANTRALAYA PVT LTD', '', '', '0141-2771412', '', 'accounts@manujaipur.com', 'F-701-702, SITAPURA INDUSTRIAL AREA, JAIPUR', '', 'JAIPUR', 'Rajasthan', '49744', '59000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.935614'),
(353, '60E', 'FGT60ETK18097390', '', 'crm_fortinet', '', '2022-01-29', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '49744', '57000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.935747'),
(354, '60E', 'FGT60ETK18099BS2', '', 'crm_fortinet', '', '2022-01-30', '', '', '', '', '', '', '', '', '', '', '49744', '64000', 'RNS Infotech', '', '', NULL, '2020-11-29 15:02:19.935878'),
(355, '30E', 'Fgt30e5618040057', '', 'crm_fortinet', '', '2022-02-05', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27500', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.936008'),
(356, '30E', 'FGT30E5618039729', '', 'crm_fortinet', '', '2022-02-06', 'BAKSHI LOGISTICS', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '35000', 'AMBE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.936141'),
(357, '30E', 'FGT30E5618039517', '', 'crm_fortinet', '', '2022-02-08', '', '', '', '', '', '', '', '', 'BIKANER', 'Rajasthan', '22000', '31000', 'SYNERGY COMPUTERS BKN', '', '', NULL, '2020-11-29 15:02:19.936273'),
(358, '30E', 'FGT30E5618039538', '', 'crm_fortinet', '', '2022-02-16', 'SHRI RAM GENERAL INSURANCE', '', 'KAMLESH SHARMA', '7073671986', '', 'kamlesh.sharma@shriramgi.com', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.936421'),
(359, '30E', 'FGT30E5618042748', '', 'crm_fortinet', '', '2022-02-17', '', '', '', '', '', '', '', '', 'LUCKNOW', 'Uttar Pradesh', '22000', '27500', 'TRIX TECHNOLOGIES', '', '', NULL, '2020-11-29 15:02:19.936563'),
(360, '80E', 'FGT80ETK18012500', '', 'crm_fortinet', '', '2022-02-21', '', '', '', '', '', '', '', '', '', '', '78000', '87000', 'MUSKAN TRADING COMPANY', '', '', NULL, '2020-11-29 15:02:19.936704'),
(361, '30E', 'FGT30E5618039568', '', 'crm_fortinet', '', '2022-02-21', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '33000', 'NET INFO SYSTEM', '', '', NULL, '2020-11-29 15:02:19.936837'),
(362, '80C', 'FGT80ETK18011371', '', 'crm_fortinet', '', '2022-02-24', 'KM Trans Logistics Pvt Ltd', '', 'Amit Chandwa', '1416622000', '', 'jaipur@kmtrans.in', '55, Jai Nagar, Opp Road No 2, VKI Area', '', 'JAIPUR', 'Rajasthan', '78000', '98000', 'Cynosure Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.936978'),
(363, '30E', 'FGT30E5618039670', '', 'crm_fortinet', '', '2022-02-24', 'G CHANDRA AGARWAL & CO', '', 'ASHISH BANSAL', '9336100380', '', 'ashishbansal@gcac.in', '', '', 'Kanpur', 'Uttar Pradesh', '22000', '41500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.937119'),
(364, '30E', 'FGT30E5618038645', '', 'crm_fortinet', '', '2022-02-24', '', '', '', '', '', '', '', '', 'BIKANER', 'Rajasthan', '22000', '33000', 'A.K COMPUTERS & SYSTEM', '', '', NULL, '2020-11-29 15:02:19.937252'),
(365, '100D', 'FG100D3G16817013', '', 'crm_fortinet', '', '2022-02-25', 'Allen Career Institute', '', 'Jitendra Gupta', '9829554181', '', 'jitendra.gupta@allen.ac.in', 'SAmachar Jagat', '', 'JAIPUR', 'Rajasthan', '', '84273', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.937393'),
(366, '30E', 'FGT30E5618017624', '', 'crm_fortinet', '', '2022-02-26', '', '', '', '', '', '', '', '', 'KOLKATA', '', '23200', '25500', 'Computer Exchange Pvt Ltd (Kolkata)', '', '', NULL, '2020-11-29 15:02:19.937533'),
(367, '30E', 'FGT30E5618039867', '', 'crm_fortinet', '', '2022-02-27', 'SHRI RAM GENERAL INSURANCE', '', 'KAMLESH SHARMA', '7073671986', '', 'kamlesh.sharma@shriramgi.com', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.937675'),
(368, '30E', 'FGT30E5618039633', '', 'crm_fortinet', '', '2022-02-28', 'SHRI RAM GENERAL INSURANCE', '', 'KAMLESH SHARMA', '7073671986', '', 'kamlesh.sharma@shriramgi.com', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.937816'),
(369, '30E', 'FGT30E5618038750', '', 'crm_fortinet', '', '2022-02-28', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '34000', 'CHOICE INFOTECH', '', '', NULL, '2020-11-29 15:02:19.937948');
INSERT INTO `crm_fortinet` (`id`, `product_name`, `serialno`, `plantype`, `type`, `users`, `expiry_date`, `company`, `designation`, `person_name`, `mobile`, `landline`, `email`, `address1`, `address2`, `city`, `state`, `in_sell`, `out_sell`, `dealer`, `status`, `remarks`, `quotedprice`, `modify_on`) VALUES
(370, '30E', 'FGT30E5618040095', '', 'crm_fortinet', '', '2022-03-03', 'SHRI RAM GENERAL INSURANCE', '', 'Kamlesh Sharma', '7073671986', '', 'kamlesh.sharma@shriramgi.com', 'E-8, EPIP, Sitapura Industrial Area,', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.938090'),
(371, '30E', 'FGT30E5618038532', '', 'crm_fortinet', '', '2022-03-05', '', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '22000', '38000', 'EZEE SOLUTION', '', '', NULL, '2020-11-29 15:02:19.938223'),
(372, '30E', 'FGT30E5618039658', '', 'crm_fortinet', '', '2022-03-06', 'SHRI RAM GENERAL INSURANCE', '', 'KAMLESH SHARMA', '7073671986', '', 'kamlesh.sharma@shriramgi.com', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.938363'),
(373, '30E', 'FGT30E5618039698', '', 'crm_fortinet', '', '2022-03-06', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.938513'),
(374, '30E', 'FGT30E5618038707', '', 'crm_fortinet', '', '2022-03-09', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '33000', 'NET INFO SYSTEM', '', '', NULL, '2020-11-29 15:02:19.938660'),
(375, '200E', 'FG200ETK18910002', '', 'crm_fortinet', '', '2022-03-10', 'CEERI', '', '', '', '', '', '', '', 'PILANI', 'Rajasthan', '372500', '525000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.938808'),
(376, '60E', 'FGT60ETK18095347', '', 'crm_fortinet', '', '2022-03-13', '', '', '', '', '', '', '', '', 'Bhilwara', 'Rajasthan', '49744', '70000', 'Excel Computer', '', '', NULL, '2020-11-29 15:02:19.938942'),
(377, '60E', 'FGT60ETK18097492', '', 'crm_fortinet', '', '2022-03-16', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '49744', '57000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.939073'),
(378, '60E', 'FGT60ETK18098672', '', 'crm_fortinet', '', '2022-03-16', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '49744', '57000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.939203'),
(379, '60E', 'FGT60ETK18099BBN', '', 'crm_fortinet', '', '2022-03-16', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '49744', '57000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.939333'),
(380, '30E', 'FGT30E5618040181', '', 'crm_fortinet', '', '2022-03-17', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '32000', 'B.D COMPUTRONICS', '', '', NULL, '2020-11-29 15:02:19.939468'),
(381, '60E', 'FGT60ETK18099858', '', 'crm_fortinet', '', '2022-03-18', '', '', '', '', '', 'Upgarde to 60E', '', '', 'UDAIPUR', 'Rajasthan', '49744', '62000', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.939607'),
(382, '60E', 'FGT60ETK18099BQ5', '', 'crm_fortinet', '', '2022-03-18', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '49744', '57000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.939739'),
(383, '30E', 'FGT30E5618040135', '', 'crm_fortinet', '', '2022-03-18', 'DR.NIPUN MAKKAR', '', '', '9414954445', '', '123@GMAIL.COM', '', '', 'HANUMANGARH', 'Rajasthan', '22000', '37373', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.939876'),
(384, '30E', 'FGT30E5618039707', '', 'crm_fortinet', '', '2022-03-22', 'RATAN TEXTILE', '', '', '0141 4080200', '', 'it@ratantextiles.com', 'F 199 Epip Ind.Area Sitapura', '', 'JAIPUR', 'Rajasthan', '22000', '27000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.940024'),
(385, '30E', 'FGT30E5618041728', '', 'crm_fortinet', '', '2022-03-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27900', 'RNS', '', '', NULL, '2020-11-29 15:02:19.940155'),
(386, '60E', 'FGT60ETK18095877', '', 'crm_fortinet', '', '2022-03-23', 'Pacific Industries', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '49744', '59000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.940289'),
(387, '30E', 'FGT30E5618083477', '', 'crm_fortinet', '', '2022-03-29', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '27500', 'KHANAK INFOSYS', '', '', NULL, '2020-11-29 15:02:19.940420'),
(388, '30E', 'FGT30E5618082897', '', 'crm_fortinet', '', '2022-03-29', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25500', 'HINDUSTAN COMPUTER', '', '', NULL, '2020-11-29 15:02:19.940557'),
(389, '30E', 'FGT30E5618083053', '', 'crm_fortinet', '', '2022-03-29', 'JK Lakshmi', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.940694'),
(390, '60E', 'FGT60ETK18099W4W', '', 'crm_fortinet', '', '2022-03-29', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '51492', '60000', 'Compact Computer', '', '', NULL, '2020-11-29 15:02:19.940830'),
(391, '30E', 'FGT30E5618082741', '', 'crm_fortinet', '', '2022-03-29', '', '', '', '', '', '', '', '', 'AHMEDABAD', '', '22000', '26500', 'RUBIK INFOTECH', '', '', NULL, '2020-11-29 15:02:19.940974'),
(392, '30E', 'FGT30E5618082979', '', 'crm_fortinet', '', '2022-03-29', 'JK Lakshmi', '', '', '', '', '', '', '', 'DELHI', '', '22000', '38000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.941108'),
(393, '30E', 'FGT30E5619063495', '', 'crm_fortinet', '', '2022-03-29', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27000', 'Sanchita Enterprises', '', '', NULL, '2020-11-29 15:02:19.941239'),
(394, '30E', 'FGT30E5618080283', '', 'crm_fortinet', '', '2022-03-29', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '11000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.941370'),
(395, '30E', 'FGT30E5618083488', '', 'crm_fortinet', '', '2022-03-29', '', '', '', '', '', '', '', '', 'Behror', 'Rajasthan', '21500', '21542', 'Pradeep Computers', '', '', NULL, '2020-11-29 15:02:19.941565'),
(396, '30E', 'FGT30E5618083378', '', 'crm_fortinet', '', '2022-03-29', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '30000', 'COMPUTER GARAGE', '', '', NULL, '2020-11-29 15:02:19.941704'),
(397, '30E', 'FGT30E5618082499', '', 'crm_fortinet', '', '2022-03-29', '', '', '', '', '', '', '', '', 'BEHROR', 'Rajasthan', '22000', '30500', 'PRADEEP COMPUTER', '', '', NULL, '2020-11-29 15:02:19.941836'),
(398, '30E', 'FGT30E5618082526', '', 'crm_fortinet', '', '2022-03-29', '', '', '', '', '', '', '', '', 'AJMER', 'Rajasthan', '22000', '30870', 'Ratnatray Computer Vision (Ajmer)', '', '', NULL, '2020-11-29 15:02:19.941969'),
(399, '30E', 'FGT30E5618082479', '', 'crm_fortinet', '', '2022-03-29', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '26000', 'Khanak Infosys', '', '', NULL, '2020-11-29 15:02:19.942101'),
(400, '30E', 'Fgt30e5618082603', '', 'crm_fortinet', '', '2022-03-29', '', '', '', '', '', '', '', '', 'AHMEDABAD', '', '22000', '26500', 'RUBIK INFOTECH', '', '', NULL, '2020-11-29 15:02:19.942231'),
(401, '100E', 'FG100E4Q17009490', '', 'crm_fortinet', '', '2022-03-31', 'vedanta Ltd', '', '', '9116038309', '', 'RjonInstrument.Dcs@cairnindia.com', 'Barmer ,MPT', '', 'BARMER', 'Rajasthan', '', '', 'YOKOGAWA INDIA LIMITED', '', '', NULL, '2020-11-29 15:02:19.942368'),
(402, '100E', 'FG100E4Q17009877', '', 'crm_fortinet', '', '2022-03-31', 'vedanta Ltd', '', '', '9116038309', '', 'RjonInstrument.Dcs@cairnindia.com', 'Barmer ,MPT', '', 'BARMER', 'Rajasthan', '', '', 'YOKOGAWA INDIA LIMITED', '', '', NULL, '2020-11-29 15:02:19.942519'),
(403, '100E', 'FG100E4Q17009910', '', 'crm_fortinet', '', '2022-03-31', 'vedanta Ltd', '', '', '9116038309', '', 'RjonInstrument.Dcs@cairnindia.com', 'Barmer ,MPT', '', 'BARMER', 'Rajasthan', '', '', 'YOKOGAWA INDIA LIMITED', '', '', NULL, '2020-11-29 15:02:19.942660'),
(404, '30E', 'FGT30E5618039839', '', 'crm_fortinet', '', '2022-04-02', 'SHRI RAM GENERAL INSURANCE', '', 'KAMLESH SHARMA', '7073671986', '', 'kamlesh.sharma@shriramgi.com', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.942819'),
(405, '30E', 'FGT30E5618039767', '', 'crm_fortinet', '', '2022-04-06', 'M/s Shriram General Insurance Co. Ltd.', '', 'Kamlesh Sharma', '7073671986', '', 'kamlesh.sharma@shriramgi.com', 'E-8, EPIP, Sitapura Industrial Area,', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.942982'),
(406, '30E', 'FGT30E5618041569', '', 'crm_fortinet', '', '2022-04-09', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27900', 'RNS', '', '', NULL, '2020-11-29 15:02:19.943118'),
(407, '30E', 'FGT30E5618041699', '', 'crm_fortinet', '', '2022-04-09', '', '', '', '', '', '', '', '', 'AJMER', 'Rajasthan', '22000', '30900', 'RATNA TRAY COMPUTER', '', '', NULL, '2020-11-29 15:02:19.943251'),
(408, '60E', 'FGT60ETK18099477', '', 'crm_fortinet', '', '2022-04-09', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '49744', '57000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.943383'),
(409, '30E', 'FGT30E5618039745', '', 'crm_fortinet', '', '2022-04-09', '', '', '', '', '', '', '', '', 'Sri Ganganagar', 'Rajasthan', '22000', '32000', 'SS ENTERPRISES', '', '', NULL, '2020-11-29 15:02:19.943524'),
(410, '100E', 'FG100ETK18027099', '', 'crm_fortinet', '', '2022-04-12', 'RUJ ELECON PRIVATE LIMITED', '', '', '7300306333', '', 'p.officer@ruj-elecon.in', '506,3 Floor AnchorMall AjmerRoad', '', 'JAIPUR', 'Rajasthan', '162573', '220000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.943677'),
(411, '30E', 'FGT30E5618040009', '', 'crm_fortinet', '', '2022-04-16', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '31000', 'A.S INFOWAYS', '', '', NULL, '2020-11-29 15:02:19.943817'),
(412, '200E', 'FG200ETK18904119', '', 'crm_fortinet', '', '2022-04-19', 'SANGAM INDIA LTD', '', 'PURUSHOTAM BASER', '9929097513', '', 'pursangam3@sangamgroup.com', '', '', 'BHILWARA', 'Rajasthan', '335000', '422000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.943957'),
(413, '50E', 'FGT50E5618040810', '', 'crm_fortinet', '', '2022-04-29', '', '', '', '', '', '', '', '', 'Lucknow', 'Uttar Pradesh', '47500', '51000', 'Takyon Networks Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.944090'),
(414, '50E', 'FGT50E5618044391', '', 'crm_fortinet', '', '2022-04-29', 'Rmc switchgears ltd.', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '47500', '53900', 'Sigma Infotech', '', '', NULL, '2020-11-29 15:02:19.944225'),
(415, '30E', 'Fgt30e5618038863', '', 'crm_fortinet', '', '2022-05-01', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '26999', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.944357'),
(416, '30E', 'FGT30E5618039471', '', 'crm_fortinet', '', '2022-05-01', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25500', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.944492'),
(417, '30E', 'FGT30E5618039461', '', 'crm_fortinet', '', '2022-05-03', 'BHILWARA ZILLA DUGADH UTPADAK SS LTD', '', '', '', '', '', '', '', 'BHILWARA', 'Rajasthan', '22000', '53000', 'MARS INFOTECH BHL', '', '', NULL, '2020-11-29 15:02:19.944632'),
(418, '100E', 'FG100ETK18035067', '', 'crm_fortinet', '', '2022-05-06', 'Suam Overseas Private Limited', '', '', '', '', '', '', '', '', '', '161573', '181500', 'MARS INFOTECH BHL', '', '', NULL, '2020-11-29 15:02:19.944766'),
(419, '30E', 'FGT30E5618039502', '', 'crm_fortinet', '', '2022-05-06', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25500', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.944910'),
(420, '60E', 'FGT60ETK18099V06', '', 'crm_fortinet', '', '2022-05-08', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '51462', '59000', 'Sanchita Enterprises', '', '', NULL, '2020-11-29 15:02:19.945060'),
(421, '60E', 'FGT60E4Q16000154', '', 'crm_fortinet', '', '2022-05-11', 'KOIDE INDIA PRIVATE LIMITED', '', 'TOSHIO KONAGAI', '1494-675600', '', 'konagai@koide-net.co.jp', 'KOIDE INDIA PRIVATE LIMITED,SP 2-21(B) NEW INDUSTRIAL COMPLEX (NIC) Japanese Zone,Majra Kath,', '', 'NEEMRANA', 'Rajasthan', '', '', 'KDDI INDIA PVT. LTD.', '', '', NULL, '2020-11-29 15:02:19.945208'),
(422, '100D', 'FG100D3G15807000', '', 'crm_fortinet', '', '2022-05-14', 'Allen Career Institute', '', 'Jitendra Gupta', '9829554181', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '84273', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.945347'),
(423, '30E', 'FGT30E5618039847', '', 'crm_fortinet', '', '2022-05-15', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25500', 'Anjani Infotech', '', '', NULL, '2020-11-29 15:02:19.945481'),
(424, '50E', 'FGT50E5618044030', '', 'crm_fortinet', '', '2022-05-15', '', '', '', '', '', '', '', '', 'Lucknow', 'Uttar Pradesh', '47500', '51000', 'Adept It Solutions', '', '', NULL, '2020-11-29 15:02:19.945620'),
(425, '30E', 'FGT30E5618039486', '', 'crm_fortinet', '', '2022-05-16', '', '', '', '', '', '', '', '', 'JODHPUR', 'Rajasthan', '22000', '33755', 'S.S ELECTRONICS', '', '', NULL, '2020-11-29 15:02:19.945752'),
(426, '100E', 'FG100ETK18036153', '', 'crm_fortinet', '', '2022-05-17', 'Allen Career Institute', '', '', '', '', '', '', '', '', '', '161573', '163500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.945886'),
(427, '50E', 'FGT50E5618044015', '', 'crm_fortinet', '', '2022-05-19', 'Gangori Hospital', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '47500', '62500', 'Yadav Teleservices', '', '', NULL, '2020-11-29 15:02:19.946019'),
(428, '50E', 'FGT50E5618040830', '', 'crm_fortinet', '', '2022-05-21', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '47500', '51000', 'Anjani Infotech', '', '', NULL, '2020-11-29 15:02:19.946150'),
(429, '60E', 'FGT60ETK18099U0J', '', 'crm_fortinet', '', '2022-05-21', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '56111', '64000', 'Anjani Infotech', '', '', NULL, '2020-11-29 15:02:19.946281'),
(430, '30E', 'FGT30E5618039750', '', 'crm_fortinet', '', '2022-05-24', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '29000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.946411'),
(431, '30E', 'FGT30E5618039516', '', 'crm_fortinet', '', '2022-05-24', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25500', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.946556'),
(432, '60E', 'FGT60ETK18003943', '', 'crm_fortinet', '', '2022-05-27', '', '', '', '', '', '', '', '', 'REWARI', '', '44000', '57000', 'Kinesis Infotech Bussiness Services Company', '', '', NULL, '2020-11-29 15:02:19.946692'),
(433, '30E', 'FGT30E5618039833', '', 'crm_fortinet', '', '2022-05-28', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25500', 'Anjani Infotech', '', '', NULL, '2020-11-29 15:02:19.946822'),
(434, '60E', 'FGT60ETK18099WT1', '', 'crm_fortinet', '', '2022-05-28', 'Devgiri Exports', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '51492', '66000', 'B.B.Professional Marketing P Ltd.', '', '', NULL, '2020-11-29 15:02:19.946968'),
(435, '60E', 'FGT60ETK18099W48', '', 'crm_fortinet', '', '2022-05-29', 'Miracle Coroplast P. Ltd.', '', 'Ramesh Mehra', '91 8875002072', '', 'mcppl@hotmail.com', 'E-140, Phase-II, RIICO, Bagru', '', 'JAIPUR', 'Rajasthan', '51492', '65000', 'Chip Soft Computer', '', '', NULL, '2020-11-29 15:02:19.947109'),
(436, '100E', 'FG100ETK18034522', '', 'crm_fortinet', '', '2022-05-29', 'Miracle Coroplast P. Ltd.', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '173572', '182000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.947243'),
(437, '60E', 'FGT60ETK18099WM4', '', 'crm_fortinet', '', '2022-05-31', '', '', '', '', '', '', '', '', 'BHOPAL', '', '51462', '57000', 'Varaz Overseas', '', '', NULL, '2020-11-29 15:02:19.947372'),
(438, '30E', 'Fgt30e5618041800', '', 'crm_fortinet', '', '2022-06-04', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '30000', 'INFOHUB SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.947518'),
(439, '30E', 'Fgt30e5618039620', '', 'crm_fortinet', '', '2022-06-04', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '30000', 'INFOHUB SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.947657'),
(440, '60E', 'FGT60ETK18099VVH', '', 'crm_fortinet', '', '2022-06-05', 'SAMCO MACHINERY INDIA PRIVATE LIMITED', '', '', '', '', '', '', '', 'Palwal', 'HARYANA', '51492', '68000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.947793'),
(441, '100E', 'FG100ETK18008400', '', 'crm_fortinet', '', '2022-06-09', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '173572', '200000', 'INFOHUB SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.947925'),
(442, '30E', 'FGT30E5618039825', '', 'crm_fortinet', '', '2022-06-13', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25500', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.948055'),
(443, '30E', 'FGT30E5619002935', '', 'crm_fortinet', '', '2022-06-13', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23000', '29500', 'JUPITOR COMPUTER', '', '', NULL, '2020-11-29 15:02:19.948184'),
(444, '30E', 'FGT30E5619002938', '', 'crm_fortinet', '', '2022-06-13', '', '', '', '', '', '', '', '', 'Sri Ganganagar', 'Rajasthan', '23000', '29000', 'S.S.E COMPUTECH PRIVATE LIMITED', '', '', NULL, '2020-11-29 15:02:19.948316'),
(445, '100E', 'FG100ETK18036626', '', 'crm_fortinet', '', '2022-06-14', 'Allen Career Institute', '', '', '', '', '', '', '', '', '', '161573', '163000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.948448'),
(446, '60E', 'FGT60ETK18099WY0', '', 'crm_fortinet', '', '2022-06-18', '', '', '', '', '', '', '', '', 'Kanpur', 'Uttar Pradesh', '51492', '62000', 'System & Technology', '', '', NULL, '2020-11-29 15:02:19.948588'),
(447, '80E', 'FGT80ETK18016898', '', 'crm_fortinet', '', '2022-06-18', 'Directorate of Education, Bikaner (Rajasthan)', '', '', '', '', '', '', '', 'BIKANER', 'Rajasthan', '78000', '92000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.948732'),
(448, '100E', 'FG100ETK18026927', '', 'crm_fortinet', '', '2022-06-19', '', '', '', '', '', '', '', '', 'Sri Ganganagar', 'Rajasthan', '161573', '215000', 'SINGH ENTERPRISES', '', '', NULL, '2020-11-29 15:02:19.948866'),
(449, '80E', 'FGT80ETK18017069', '', 'crm_fortinet', '', '2022-06-20', 'Subodh Public School', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '78000', '90000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.949011'),
(450, '100E', 'FG100ETK18003240', '', 'crm_fortinet', '', '2022-06-23', 'Apex Engineering College', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '146000', '162000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.949147'),
(451, '30E', 'Fgt30e5618039845', '', 'crm_fortinet', '', '2022-06-24', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '30000', 'Infohub Solutions', '', '', NULL, '2020-11-29 15:02:19.949278'),
(452, '50E', 'FGT50E5618044191', '', 'crm_fortinet', '', '2022-06-25', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '47500', '51900', 'VIJAY INFOTECH UDR', '', '', NULL, '2020-11-29 15:02:19.949408'),
(453, '30E', 'FGT30E5618039759', '', 'crm_fortinet', '', '2022-06-27', 'Megha Holdings Pvt. Ltd.', '', 'Barala', '#ERROR!', '', 'office@meghahpl.in', 'Dholi Mandi', '', 'Chomu', 'Rajasthan', '22000', '26800', 'Techno Expert', '', '', NULL, '2020-11-29 15:02:19.949555'),
(454, '30E', 'Fgt30e5618040282', '', 'crm_fortinet', '', '2022-07-01', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '29000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.949688'),
(455, '30E', 'Fgt30e5618039496', '', 'crm_fortinet', '', '2022-07-03', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '30000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.949819'),
(456, '30E', 'FGT30E5618041769', '', 'crm_fortinet', '', '2022-07-03', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25000', 'Techno Solutions', '', '', NULL, '2020-11-29 15:02:19.949948'),
(457, '100E', 'FG100ETK18036114', '', 'crm_fortinet', '', '2022-07-06', 'Allen Career Institute', '', '', '', '', '', '', '', '', '', '161573', '163000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.950080'),
(458, '30E', 'FGT30E5618040585', '', 'crm_fortinet', '', '2022-07-13', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '32500', 'ZENCLIENT INDIA LLP', '', '', NULL, '2020-11-29 15:02:19.950211'),
(459, '30E', 'FGT30E5618039484', '', 'crm_fortinet', '', '2022-07-15', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27900', 'RNS', '', '', NULL, '2020-11-29 15:02:19.950340'),
(460, '30E', 'Fgt30e5618039776', '', 'crm_fortinet', '', '2022-07-15', 'RAJESH MOTOR', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '30000', 'Infohub Solutions', '', '', NULL, '2020-11-29 15:02:19.950478'),
(461, '70D', 'FGT70D3Z15000838', '', 'crm_fortinet', '', '2022-07-16', 'QDegrees Services', '', '', '8696911688', '', 'neeraj.sharma@qdegrees.com', 'Jaipur', '', 'JAIPUR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.950621'),
(462, '80E', 'FGT80ETK19000667', '', 'crm_fortinet', '', '2022-06-17', 'Allen Career Institute', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '84250', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.950755'),
(463, '80E', 'FGT80ETK19000492', '', 'crm_fortinet', '', '2022-07-17', 'Allen Career Institute', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '84250', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.950888'),
(464, '30E', 'Fgt30e5618039764', '', 'crm_fortinet', '', '2022-07-18', 'RAJESH MOTOR', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '30000', 'Infohub Solutions', '', '', NULL, '2020-11-29 15:02:19.951019'),
(465, '30E', 'Fgt30e5618039616', '', 'crm_fortinet', '', '2022-07-18', 'RAJESH MOTOR', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '30000', 'Infohub Solutions', '', '', NULL, '2020-11-29 15:02:19.951155'),
(466, '60E', 'FGT60ETK19023224', '', 'crm_fortinet', '', '2022-07-21', 'Dr. Bansi Dhar School', '', '', '', '', 'dbds.principal@dcmsr.com', 'Shriram Nagar (DCM Colony)', '', 'KOTA', 'Rajasthan', '51492', '59000', 'OM COMPUTER', '', '', NULL, '2020-11-29 15:02:19.951292'),
(467, '60D', 'FGT60ETK19025082', '', 'crm_fortinet', '', '2022-07-22', 'Lemon Tree Premier Jaipur', '', 'Rohit Dudi', '#ERROR!', '', 'techm.pjp1@lemontreehotels.com', 'Behind Inox Cinema, Nirwan Marg, Sindhi Colony, Bani Park, Jaipur, Rajasthan 302016', '', 'JAIPUR', 'Rajasthan', '51492', '55000', 'Ncs Computech Ltd.', '', '', NULL, '2020-11-29 15:02:19.951443'),
(468, '100E', 'FG100ETK18035777', '', 'crm_fortinet', '', '2022-07-29', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '161573', '170000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.951603'),
(469, '50E', 'FGT50E5619011127', '', 'crm_fortinet', '', '2022-07-29', '', '', '', '', '', '', '', '', 'Jodhpur', 'Rajasthan', '47500', '57500', 'Suncity Computer(Jodhpur) Shyam', '', '', NULL, '2020-11-29 15:02:19.951739'),
(470, '60E', 'FGT60ETK18099PNG', '', 'crm_fortinet', '', '2022-07-30', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '63500', '75000', 'E-connect Solutions Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.951871'),
(471, '30E', 'FGT30E5618039788', '', 'crm_fortinet', '', '2022-08-02', '', '', '', '', '', '', '', '', 'Jodhpur', 'Rajasthan', '22000', '24500', 'CREADENT SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.952002'),
(472, '80E', 'FGT80ETK19000073', '', 'crm_fortinet', '', '2022-08-05', 'Allen Career Institute', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '84250', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.952135'),
(473, '80E', 'FGT80ETK19000171', '', 'crm_fortinet', '', '2022-08-05', 'Allen Career Institute', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '84250', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.952268'),
(474, '30E', 'FGT30E5618039815', '', 'crm_fortinet', '', '2022-08-06', 'AAVAS FINANCIERS LIMITED', '', 'DEVENDRA', '9116619026', '', 'MANMOHAN.ROHILLA@AAVAS.IN', '', '', 'JAIPUR', 'Rajasthan', '22000', '20000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.952406'),
(475, '30E', 'FGT30E5618041748', '', 'crm_fortinet', '', '2022-08-06', 'AAVAS FINANCIERS LIMITED', '', 'DEVENDRA', '9116619026', '', 'MANMOHAN.ROHILLA@AAVAS.IN', '', '', 'JAIPUR', 'Rajasthan', '22000', '20000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.952550'),
(476, '60E', 'FGT60ETK18099V2T', '', 'crm_fortinet', '', '2022-08-08', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '56111', '61000', 'Varaz Overseas', '', '', NULL, '2020-11-29 15:02:19.952683'),
(477, '80E', 'FGT80ETK18017173', '', 'crm_fortinet', '', '2022-08-08', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '78000', '87000', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.952814'),
(478, '80E', 'FGT80ETK18017492', '', 'crm_fortinet', '', '2022-08-10', '', '', '', '', '', '', '', '', 'Lucknow', 'Uttar Pradesh', '78000', '89500', 'Adept It Solutions', '', '', NULL, '2020-11-29 15:02:19.952945'),
(479, '30E', 'FGT30E5618039563', '', 'crm_fortinet', '', '2022-08-11', 'M/s Shriram General Insurance Co. Ltd.', '', 'Kamlesh Sharma', '7073671986', '', 'kamlesh.sharma@shriramgi.com', 'E-8, EPIP, Sitapura Industrial Area,', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.953097'),
(480, '60E', 'FGT60ETK19023248', '', 'crm_fortinet', '', '2022-08-18', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '56111', '61000', 'Varaz Overseas', '', '', NULL, '2020-11-29 15:02:19.953231'),
(481, '30E', 'Fgt30e5618039769', '', 'crm_fortinet', '', '2022-08-21', 'RAJESH MOTOR', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '30000', 'Infohub Solutions', '', '', NULL, '2020-11-29 15:02:19.953362'),
(482, '40C', 'FGT30E5618041738', '', 'crm_fortinet', '', '2022-08-22', 'Ravi Infrabuild Projects (P) Ltd', '', 'ravi singh Rao', '9001212212', '', 'bharat@resonance.ac.in', '', '', 'UDAIPUR', 'Rajasthan', '22000', '28000', 'Sun Computers (Udaipur)', '', '', NULL, '2020-11-29 15:02:19.953514'),
(483, '60E', 'FGT60ETK19023428', '', 'crm_fortinet', '', '2022-08-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '51492', '57500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.953649'),
(484, '30E', 'FGT30E5618039832', '', 'crm_fortinet', '', '2022-08-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25500', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.953779'),
(485, '30E', 'FGT30E5618040062', '', 'crm_fortinet', '', '2022-08-26', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25500', 'Anjani Infotech', '', '', NULL, '2020-11-29 15:02:19.953909'),
(486, '50E', 'FGT50E5619010305', '', 'crm_fortinet', '', '2022-09-03', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '48000', '55000', 'AKS IT SERVICES(Ghaziabad)', '', '', NULL, '2020-11-29 15:02:19.954040'),
(487, '200E', 'FG200ETK19900149', '', 'crm_fortinet', '', '2022-09-03', '', '', '', '', '', '', '', '', 'KOLKATA', '', '330000', '345000', 'DIAMOND KOLKATA', '', '', NULL, '2020-11-29 15:02:19.954170'),
(488, '30E', 'FGT30E5618041743', '', 'crm_fortinet', '', '2022-09-04', 'FRIEND CARDS', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27800', 'NETCARE SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.954301'),
(489, '100E', 'FG100ETK18036008', '', 'crm_fortinet', '', '2022-09-08', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '161573', '190000', 'Techno Solutions', '', '', NULL, '2020-11-29 15:02:19.954432'),
(490, '50E', 'FGT50E5619010730', '', 'crm_fortinet', '', '2022-09-12', 'SL Nutrition', '', '', '', '', '', '', '', 'Jodhpur', 'Rajasthan', '47500', '55000', 'M/S E-Cybertech Solution(Jodhpur)', '', '', NULL, '2020-11-29 15:02:19.954574'),
(491, '30E', 'FGT30E5618040269', '', 'crm_fortinet', '', '2022-09-13', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25500', 'Anjani Infotech', '', '', NULL, '2020-11-29 15:02:19.954706'),
(492, '30E', 'FGT30E5618080270', '', 'crm_fortinet', '', '2022-09-15', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '30000', 'Vinayaka Infotech(Jhotwara)', '', '', NULL, '2020-11-29 15:02:19.954837'),
(493, '30E', 'FGT30E5618080183', '', 'crm_fortinet', '', '2022-09-16', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '24800', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.954967'),
(494, '30E', 'FGT30E5618082443', '', 'crm_fortinet', '', '2022-09-17', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25800', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.955102'),
(495, '30E', 'FGT30E5618040028', '', 'crm_fortinet', '', '2022-09-18', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '30000', 'Bits & Bites', '', '', NULL, '2020-11-29 15:02:19.955241'),
(496, '30E', 'FGT30E5618041541', '', 'crm_fortinet', '', '2022-09-20', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27900', 'RNS', '', '', NULL, '2020-11-29 15:02:19.955371'),
(497, '30E', 'FGT30E5618039714', '', 'crm_fortinet', '', '2022-09-22', 'M/s Shriram General Insurance Co. Ltd.', '', 'Kamlesh Sharma', '7073671986', '', 'kamlesh.sharma@shriramgi.com', 'E-8, EPIP, Sitapura Industrial Area,', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.955523'),
(498, '30E', 'FGT30E5618041719', '', 'crm_fortinet', '', '2022-09-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26500', 'E-connect Solutions Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.955659'),
(499, '30E', 'FGT30E5618040170', '', 'crm_fortinet', '', '2022-09-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '31000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.955791'),
(500, '60E', 'FGT60ETK19023170', '', 'crm_fortinet', '', '2022-09-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '51492', '57500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.955922'),
(501, '30E', 'FGT30E5618039734', '', 'crm_fortinet', '', '2022-09-22', 'SHRI RAM GENERAL INSURANCE', '', 'KAMLESH SHARMA', '7073671986', '', 'kamlesh.sharma@shriramgi.com', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.956066'),
(502, '30E', 'FGT30E5618082764', '', 'crm_fortinet', '', '2022-09-22', 'VINAYAK JEWELLERS', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26800', 'TECHNO EXPERT', '', '', NULL, '2020-11-29 15:02:19.956199'),
(503, '50E', 'FGT50E5618023935', '', 'crm_fortinet', '', '2022-09-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '40000', '51000', 'Team Computers Private Limited ', '', '', NULL, '2020-11-29 15:02:19.956330'),
(504, '50E', 'FGT50E5619010829', '', 'crm_fortinet', '', '2022-09-25', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '47500', '58500', 'Sigma Infotech', '', '', NULL, '2020-11-29 15:02:19.956460'),
(505, '100E', 'FG100ETK18034428', '', 'crm_fortinet', '', '2022-09-25', 'SIGMA ELECTRIC', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '173572', '188000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.956603'),
(506, '80E', 'FGT80ETK18017557', '', 'crm_fortinet', '', '2022-09-30', 'Sushil Udyog', '', '', '', '', '', '', '', 'Jodhpur', 'Rajasthan', '78000', '85000', 'SS Electrocnis', '', '', NULL, '2020-11-29 15:02:19.956734'),
(507, '70D', 'FGT60ETK19023181', '', 'crm_fortinet', '', '2022-09-30', 'RAJNISH HOSPITAL PVT LTD ', '', 'Rajnish ji', '9829096480', '', 'purchase@rajnishhospital.com', '', '', 'SHAPURA', 'Rajasthan', '51492', '135000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.956873'),
(508, '30E', 'FGT30E5618082465', '', 'crm_fortinet', '', '2022-10-03', 'JK Lakshmi', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.957006'),
(509, '30E', 'FGT30E5618082506', '', 'crm_fortinet', '', '2022-10-03', 'JK Lakshmi', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.957137'),
(510, '30E', 'FGT30E5618082725', '', 'crm_fortinet', '', '2022-10-03', 'JK Lakshmi', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.957277'),
(511, '100E', 'FGT100ETK19005358', '', 'crm_fortinet', '', '2022-09-10', 'HRH Hotels Pvt ltd', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '172573', '190000', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.957411'),
(512, '50E', 'FGT50E5619011059', '', 'crm_fortinet', '', '2022-10-13', 'Hotel Indana Palace (JPR)', '', 'HARSH VARDHAN', '9116107012', '', 'edp.jaipur@indanahotels.com', 'Hotel Indana Palace Jaipur, near kunda Police check post, Jaipur-Delhi', '', 'JAIPUR', 'Rajasthan', '47500', '53000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.957569'),
(513, '30E', 'FGT30E5618082687', '', 'crm_fortinet', '', '2022-10-17', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25800', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.957704'),
(514, '30E', 'FGT30E3U17018112', '', 'crm_fortinet', '', '2022-10-23', 'JAI SHANKAR SEEDS PVT LTD', '', 'Rishabh Gupta', '9772848888', '', 'jsspl947@gmail.com', '75,old dhan mandi', '', 'Sri Ganganagar', 'Rajasthan', '21926', '41400', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.957844'),
(515, '100E', 'FG100ETK19004796', '', 'crm_fortinet', '', '2022-10-29', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '173572', '189000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.957976'),
(516, '30E', 'FGT30E5618078716', '', 'crm_fortinet', '', '2022-10-31', 'JK Lakshmi', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.958109'),
(517, '30E', 'FGT30E5618082770', '', 'crm_fortinet', '', '2022-11-02', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.958240'),
(518, '80E', 'FGT80ETK18016836', '', 'crm_fortinet', '', '2022-11-05', 'Nigam Jewels', '', 'B.R CHOUDHARY', '9672912702', '', 'nigam_jewels@yahoo.in', 'H-45 SEZ 1.ST SITAPURA IND AREA JAIPUR -302022', '', 'JAIPUR', 'Rajasthan', '78000', '102000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.958382'),
(519, '50E', 'FGT50E5619010242', '', 'crm_fortinet', '', '2022-11-05', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '44000', '57000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.958527'),
(520, '50E', 'FGT50E5619010598', '', 'crm_fortinet', '', '2022-11-07', 'JK Lakshmi', '', '', '', '', '', '', '', '', '', '48000', '57000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.958662'),
(521, '50E', 'FGT50E3U16022417', '', 'crm_fortinet', '', '2022-11-11', 'BASANT', '', '', '', '', '', '', '', 'JAISALMER', 'Rajasthan', '36135', '48000', 'CREADENT SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.958801'),
(522, '30E', 'FGT30E5618082608', '', 'crm_fortinet', '', '2022-11-17', 'JK Lakshmi', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.959338'),
(523, '30E', 'FGT30E5618083160', '', 'crm_fortinet', '', '2022-11-18', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28910', 'SKYNET INDIA JPR', '', '', NULL, '2020-11-29 15:02:19.959477'),
(524, '100E', 'FG100ETK19005402', '', 'crm_fortinet', '', '2022-11-20', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '161573', '182000', 'Shri Siddhi Vinayak Computers', '', '', NULL, '2020-11-29 15:02:19.959618'),
(525, '50E', 'FGT50E5618029939', '', 'crm_fortinet', '', '2022-11-22', '', '', '', '', '', '', '', '', 'AHMEDABAD', '', '55000', '64000', 'Alterego Technology Limited', '', '', NULL, '2020-11-29 15:02:19.959751'),
(526, '50E', 'FGT50E3U16022411', '', 'crm_fortinet', '', '2022-11-25', 'Akhil modi', '', 'Akhil Modi', '9314455231', '', 'amodi@akhilmodi.com', '51-52, Vijay Nagar Kartarpura Phatak', '', 'JAIPUR', 'Rajasthan', '36135', '43120', 'B.B.Professional Marketing P Ltd.', '', '', NULL, '2020-11-29 15:02:19.959891'),
(527, '30E', 'FGT30E5618082668', '', 'crm_fortinet', '', '2022-11-26', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '30000', 'NET INFO SYSTEM', '', '', NULL, '2020-11-29 15:02:19.960022'),
(528, '30E', 'FGT30E5618083132', '', 'crm_fortinet', '', '2022-12-04', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.960154'),
(529, '30E', 'FGT30E5618082808', '', 'crm_fortinet', '', '2022-12-08', 'JK Lakshmi', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.960287'),
(530, '30E', 'FGT30E5618082486', '', 'crm_fortinet', '', '2022-12-15', 'JK Lakshmi', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.960420'),
(531, '30E', 'FGT30E5618083112', '', 'crm_fortinet', '', '2022-12-15', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '24800', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.960555'),
(532, '30E', 'FGT30E5618082706', '', 'crm_fortinet', '', '2022-12-15', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.960691'),
(533, '200E', 'FG200ETK19911390', '', 'crm_fortinet', '', '2022-12-16', '', '', '', '', '', '', '', '', 'KOLKATA', '', '330000', '346000', 'ENSONIC COMPUTECH PVT LTD', '', '', NULL, '2020-11-29 15:02:19.960824'),
(534, '30E', 'FGT30E5618083285', '', 'crm_fortinet', '', '2022-12-16', '', '', '', '', '', '', '', '', 'BIKANER', 'Rajasthan', '22000', '31000', 'LIFE LINE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.960963'),
(535, '30E', 'FGT30E5618083009', '', 'crm_fortinet', '', '2022-12-20', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27500', 'SYSTEMATIC SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.961110'),
(536, '80E', 'FGT80ETK19020105', '', 'crm_fortinet', '', '2022-12-27', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '78000', '90000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.961250'),
(537, '30E', 'FGT30E5618083010', '', 'crm_fortinet', '', '2022-12-31', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25500', 'HINDUSTAN COMPUTER', '', '', NULL, '2020-11-29 15:02:19.961404'),
(538, '30E', 'FGT30E5618082749', '', 'crm_fortinet', '', '2023-01-04', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '29000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.961600'),
(539, '30E', 'FGT30E5618083191', '', 'crm_fortinet', '', '2023-01-09', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26000', 'ENSONIC COMPUTECH PVT LTD', '', '', NULL, '2020-11-29 15:02:19.961950'),
(540, '50E', 'FGT50E5619005339', '', 'crm_fortinet', '', '2023-01-20', 'JK Lakshmi', '', 'Mr.Nitin', '9694096805', '', 'nitinkumar@lc.jkmail.com', 'Jaykaypuram ,Dist.SIROHI', '', 'SIROHI', 'Rajasthan', '48000', '69000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.962102'),
(541, '60E', 'FGT60ETK19024013', '', 'crm_fortinet', '', '2023-01-21', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '51666', '62720', 'HINDUSTAN COMPUTER', '', '', NULL, '2020-11-29 15:02:19.962237'),
(542, '30E', 'FGT30E5618082638', '', 'crm_fortinet', '', '2023-01-23', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27500', 'SYSTEMATIC SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.962370'),
(543, '30E', 'FGT30E5618082477', '', 'crm_fortinet', '', '2023-01-24', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.962516'),
(544, '60E', 'FGT60ETK19023618', '', 'crm_fortinet', '', '2023-01-26', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '51492', '57500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.962651'),
(545, '60E', 'FGT60ETK19024924', '', 'crm_fortinet', '', '2023-01-31', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '51666', '63000', 'RNS', '', '', NULL, '2020-11-29 15:02:19.962780'),
(546, '60E', 'FGT60ETK19022767', '', 'crm_fortinet', '', '2023-01-31', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '51666', '63000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.962911'),
(547, '50E', 'FGT50E5619048018', '', 'crm_fortinet', '', '2023-02-09', 'JK Lakshmi', '', 'Mr.Nitin', '9694096805', '', 'nitinkumar@lc.jkmail.com', 'Jaykaypuram ,Dist.SIROHI', '', 'DELHI', '', '48000', '69000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.963049'),
(548, '60E', 'FGT60ETK19024622', '', 'crm_fortinet', '', '2023-02-12', 'JK Lakshmi', '', 'Mr.Nitin Kumar', '9694096805', '', 'nitinkumar@lc.jkmail.com', '4TH FLOOR ,NEHRU HOUSE ,DIST.NEW DELHI', '', 'DELHI', '', '51666', '78500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.963199'),
(549, '50E', 'FGT50E5619046228', '', 'crm_fortinet', '', '2023-02-18', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '48000', '56500', 'NETGLEM CONSULTING LLP JPR', '', '', NULL, '2020-11-29 15:02:19.963331'),
(550, '30E', 'Fgt30e5618082485', '', 'crm_fortinet', '', '2023-02-19', '', '', '', '', '', '', '', '', 'AHMEDABAD', '', '22000', '26500', 'RUBIK INFOTECH', '', '', NULL, '2020-11-29 15:02:19.963476'),
(551, '30E', 'Fgt30e5618083089', '', 'crm_fortinet', '', '2023-02-19', '', '', '', '', '', '', '', '', 'AHMEDABAD', '', '22000', '26500', 'RUBIK INFOTECH', '', '', NULL, '2020-11-29 15:02:19.963614'),
(552, '50E', 'FGT50E5619038612', '', 'crm_fortinet', '', '2023-02-20', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '48000', '56500', 'NETGLEM CONSULTING LLP JPR', '', '', NULL, '2020-11-29 15:02:19.963746'),
(553, '30E', 'Fgt30e5618082508', '', 'crm_fortinet', '', '2023-02-20', '', '', '', '', '', '', '', '', 'AHMEDABAD', '', '22000', '26500', 'RUBIK INFOTECH', '', '', NULL, '2020-11-29 15:02:19.963875'),
(554, '30E', 'Fgt30e5618082447', '', 'crm_fortinet', '', '2023-02-21', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28420', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.964006'),
(555, '30E', 'FGT30E5618083031', '', 'crm_fortinet', '', '2023-02-23', '', '', '', '', '', '', '', '', 'AHMEDABAD', '', '22000', '26500', 'RUBIK INFOTECH', '', '', NULL, '2020-11-29 15:02:19.964136'),
(556, '30E', 'FGT30E5618082898', '', 'crm_fortinet', '', '2023-02-24', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '28420', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.964267'),
(557, '30E', 'FGT30E5618082772', '', 'crm_fortinet', '', '2023-02-25', '', '', '', '', '', '', '', '', 'INDORE', '', '22000', '32500', 'GG ENTERPRISES', '', '', NULL, '2020-11-29 15:02:19.964395'),
(558, '80C', 'FGT80C3910613430', '', 'crm_fortinet', '', '2023-02-26', 'Sigma Minerals Limited', '', 'Rawat Singh', '0291-2740664', '', 'it@sigmaminerals.com', '4, Heavy Industrial Area', '', 'Jodhpur', 'Rajasthan', '', '', '', '', '', NULL, '2020-11-29 15:02:19.964537'),
(559, '60E', 'Fgt60etk19025583', '', 'crm_fortinet', '', '2023-02-27', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '51666', '63000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.964671'),
(560, '30E', 'FGT30E5618082714', '', 'crm_fortinet', '', '2023-02-27', '', '', '', '', '', '', '', '', 'INDORE', '', '22000', '32500', 'GG ENTERPRISES', '', '', NULL, '2020-11-29 15:02:19.964800'),
(561, '100D', 'FG100D3G16830298', '', 'crm_fortinet', '', '2023-02-28', 'Sigma Minerals Limited', '', 'Dharmendra', '8952962428', '', 'it@sigmaminerals.com', '4, Heavy Industrial Area', '', 'Jodhpur', 'Rajasthan', '176730', '251185', '', '', '', NULL, '2020-11-29 15:02:19.964938'),
(562, '30E', 'FGT30E5618081628', '', 'crm_fortinet', '', '2023-02-28', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'GUJRAT', '', '22000', '29000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.965072'),
(563, '60E', 'FGT60ETK19025268', '', 'crm_fortinet', '', '2023-03-02', '', '', '', '', '', '', '', '', '', '', '51492', '60700', 'RELIABLE PERIPHERALS', '', '', NULL, '2020-11-29 15:02:19.965202'),
(564, '30E', 'FGT30E5618081561', '', 'crm_fortinet', '', '2023-03-02', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'UTTARKHAND', '', '22000', '29000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.965335'),
(565, '30E', 'FGT30E5618082482', '', 'crm_fortinet', '', '2023-03-03', 'JK Lakshmi', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '31500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.965476'),
(566, '30E', 'FGT30E5618081494', '', 'crm_fortinet', '', '2023-03-03', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'GUJRAT', '', '22000', '29000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.965622'),
(567, '50E', 'FGT50E5619048863', '', 'crm_fortinet', '', '2023-03-04', 'Wonder Home Finance Ltd (Gujarat)', '', 'Gyandar Ji-', '9970835054', '', 'Gyanendra.pratap@wonderhfl.com', '', '', 'GUJRAT', '', '46000', '50000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.965762'),
(568, '80E', 'FGT80ETK19023406', '', 'crm_fortinet', '', '2023-03-04', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '78000', '96000', 'Team Computers Private Limited ', '', '', NULL, '2020-11-29 15:02:19.965896'),
(569, '30E', 'Fgt30e5618081271', '', 'crm_fortinet', '', '2023-03-04', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '29000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.966025'),
(570, '30E', 'FGT30E5619063465', '', 'crm_fortinet', '', '2023-03-06', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.966157'),
(571, '50E', 'FGT50E5619048113', '', 'crm_fortinet', '', '2023-03-11', '', '', '', '', '', '', '', '', 'Sri Ganganagar', 'Rajasthan', '46000', '52000', 'S.S.E COMPUTECH PRIVATE LIMITED', '', '', NULL, '2020-11-29 15:02:19.966289'),
(572, '30E', 'FGT30E5619063487', '', 'crm_fortinet', '', '2023-03-12', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '26784', 'TECH WORK', '', '', NULL, '2020-11-29 15:02:19.966420'),
(573, '30E', 'FGT30E5619063492', '', 'crm_fortinet', '', '2023-03-13', 'Shriram General Insurance Company Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.966564'),
(574, '30E', 'FGT30E5619063517', '', 'crm_fortinet', '', '2023-03-13', 'Shriram General Insurance Company Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.966702'),
(575, '30E', 'FGT30E5619063409', '', 'crm_fortinet', '', '2023-03-16', 'Shriram General Insurance Company Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.966837'),
(576, '30E', 'FGT30E5619063459', '', 'crm_fortinet', '', '2023-03-16', 'Shriram General Insurance Company Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.966978'),
(577, '30E', 'FGT30E5619063158', '', 'crm_fortinet', '', '2023-03-16', 'Shriram General Insurance Company Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.967114'),
(578, '30E', 'Fgt30e5618081206', '', 'crm_fortinet', '', '2023-03-18', 'Wonder Home Finance Ltd (Gujarat)', '', '', '', '', '', '', '', 'GUJRAT', '', '22000', '29000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.967248'),
(579, '30E', 'FGT30E5619063480', '', 'crm_fortinet', '', '2023-03-18', 'Shriram General Insurance Company Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.967384'),
(580, '60E', 'FGT60ETK19023781', '', 'crm_fortinet', '', '2023-03-19', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '51666', '60000', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.967527'),
(581, '30E', 'Fgt30e5618081189', '', 'crm_fortinet', '', '2023-03-19', 'Wonder Home Finance Ltd (Gujarat)', '', '', '', '', '', '', '', 'GUJRAT', '', '22000', '29000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.967665'),
(582, '30E', 'FGT30E5618080485', '', 'crm_fortinet', '', '2023-03-21', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28900', 'PINKCITY NETWORK SOLUTION', '', '', NULL, '2020-11-29 15:02:19.967797'),
(583, '50E', 'FGT50E5619004481', '', 'crm_fortinet', '', '2023-03-29', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '53000', '64500', 'E-connect Solutions Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.967929');
INSERT INTO `crm_fortinet` (`id`, `product_name`, `serialno`, `plantype`, `type`, `users`, `expiry_date`, `company`, `designation`, `person_name`, `mobile`, `landline`, `email`, `address1`, `address2`, `city`, `state`, `in_sell`, `out_sell`, `dealer`, `status`, `remarks`, `quotedprice`, `modify_on`) VALUES
(584, '50E', 'FGT50E5619048519', '', 'crm_fortinet', '', '2023-04-13', '', '', '', '', '', '', '', '', 'INDORE', '', '44000', '48800', 'VARAZ OVERSEAS', '', '', NULL, '2020-11-29 15:02:19.968058'),
(585, '60E', 'FGT60E4Q16050162', '', 'crm_fortinet', '', '2023-04-24', 'Shiv Jyoti Convent School', '', '', '+91 744-2471026', '', 'schoolshivjyoti@yahoo.com', 'Mahaveer Nagar Ext Sec 1', '', 'KOTA', 'Rajasthan', '52800', '90000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.968199'),
(586, '80E', 'FGT80ETK19023366', '', 'crm_fortinet', '', '2023-05-12', 'KGK CREATIONS INDIA PVT LTD', '', 'MR.VIKAS', '9571726499', '', 'vikash.sharma@kgkmail.com', 'E71 , BASEMENT PORTION ,GEMS & JEWELERY ZONE EPIP ,SITAPURA ,JAIPUR', '', 'JAIPUR', 'Rajasthan', '78000', '90000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.968344'),
(587, '30E', 'FGT30E5618088923', '', 'crm_fortinet', '', '2023-05-15', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23000', '27500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.968508'),
(588, '60E', 'FGT60ETK19024149', '', 'crm_fortinet', '', '2023-05-21', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '51666', '63000', 'NET INFO SYSTEM', '', '', NULL, '2020-11-29 15:02:19.968646'),
(589, '30E', 'FGT30E5619063489', '', 'crm_fortinet', '', '2023-05-25', 'Shriram General Insurance Company Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.968781'),
(590, '60E', 'FGT60ETK19023733', '', 'crm_fortinet', '', '2023-06-01', '', '', '', '', '', '', '', '', 'BHIWADI', 'Rajasthan', '51666', '66000', 'VARDHMAN COMPUTER SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.968922'),
(591, '30E', 'FGT30E5619063488', '', 'crm_fortinet', '', '2023-06-03', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27000', 'ANUP ENTERPRISES PVT LTD', '', '', NULL, '2020-11-29 15:02:19.969054'),
(592, '30E', 'FGT30E5619062863', '', 'crm_fortinet', '', '2023-06-06', '', '', '', '', '', '', '', '', 'BIKANER', 'Rajasthan', '22000', '31000', 'LIFE LINE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.969185'),
(593, '30E', 'FGT30E5619003082', '', 'crm_fortinet', '', '2023-06-09', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23000', '30000', 'RELIABLE PERIPHERALS', '', '', NULL, '2020-11-29 15:02:19.969315'),
(594, '30E', 'FGT30E5619003593', '', 'crm_fortinet', '', '2023-06-11', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23000', '28700', 'CYBER SHOPEE', '', '', NULL, '2020-11-29 15:02:19.969444'),
(595, '30E', 'FGT30E5619002942', '', 'crm_fortinet', '', '2023-06-11', '', '', '', '', '', '', '', '', 'Sri Ganganagar', 'Rajasthan', '23000', '27342', 'S.S.E COMPUTECH PRIVATE LIMITED', '', '', NULL, '2020-11-29 15:02:19.969598'),
(596, '30E', 'FGT30E5618082664', '', 'crm_fortinet', '', '2023-06-11', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23000', '29000', 'BHUSHAN SYSTEM & CONSULTANTS', '', '', NULL, '2020-11-29 15:02:19.969732'),
(597, '30E', 'FGT30E5619003596', '', 'crm_fortinet', '', '2023-06-11', '', '', '', '', '', '', '', '', 'BHILWARA', 'Rajasthan', '23000', '31850', 'MARS INFOTECH BHL', '', '', NULL, '2020-11-29 15:02:19.969863'),
(598, '30E', 'FGT30E5619063208', '', 'crm_fortinet', '', '2023-06-11', 'Shriram General Insurance Company Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.969998'),
(599, '80E', 'FGT80ETK19022147', '', 'crm_fortinet', '', '2023-06-15', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '78000', '86500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.970128'),
(600, '60E', 'FGT60E4Q16010440', '', 'crm_fortinet', '', '2023-06-17', 'Latiyal Handicrafts Pvt. Ltd. (Jodhpur)', '', 'Mr.Ashok', '9001010041', '', 'purchase@latiyalhandicrafts.com', 'SPL-1, Phase-2, Industrial Area, BoranadaJodhpur-342012', '', 'JODHPUR', 'Rajasthan', '51666', '75500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.970273'),
(601, '300E', 'FG3H0E5818904391', '', 'crm_fortinet', '', '2023-06-18', 'BIKAJI FOODS INTERNATIONAL LIMITED', '', 'GAJENDRA SINGH', '9460168321', '', 'gajender.singh@bikajifoods.com', '', '', 'BIKANER', 'Rajasthan', '', '633000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.970415'),
(602, '80E', 'FGT80E4Q17000254', '', 'crm_fortinet', '', '2023-06-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '72000', '110000', 'M/S OLWELL IT SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.970556'),
(603, '100D', 'FG100D3G13827526', '', 'crm_fortinet', '', '2023-06-24', 'Allen Career Institute', '', 'JITENDRA GUPTA', '9829554181', '', 'jitendra.gupta@allen.ac.in', '', '', 'JAIPUR', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.970698'),
(604, '60E', 'FGT60ETK19023542', '', 'crm_fortinet', '', '2023-06-25', 'Principal Govt Nursing College (Bikaner)', '', 'Narendra Koushik', '9413615953', '', 'gconspmcagh@gmail.com', 'PBM Hospital Ground ,Nagnecha Scheme', '', 'BIKANER', 'Rajasthan', '51666', '84000', 'Binary Infosolutions Private Limited', '', '', '', '2020-11-30 15:04:44.000000'),
(605, '60E', 'FGT60ETK19025404', '', 'crm_fortinet', '', '2023-06-25', '', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '51666', '58000', 'SOFTLINK SYSTEMS', '', '', NULL, '2020-11-29 15:02:19.970974'),
(606, '60E', 'FGT60ETK19025218', '', 'crm_fortinet', '', '2023-06-25', '', '', '', '', '', '', '', '', 'BIKANER', 'Rajasthan', '51666', '65000', 'SYNERGY COMPUTERS BKN', '', '', NULL, '2020-11-29 15:02:19.971105'),
(607, '30E', 'FGT30E5619061967', '', 'crm_fortinet', '', '2023-06-30', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.971236'),
(608, '30E', 'FGT30E5619063503', '', 'crm_fortinet', '', '2023-07-01', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.971368'),
(609, '30E', 'FGT30E5619063507', '', 'crm_fortinet', '', '2023-07-03', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.971513'),
(610, '30E', 'FGT30E5619062219', '', 'crm_fortinet', '', '2023-07-04', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.971661'),
(611, '30E', 'FGT30E5619063460', '', 'crm_fortinet', '', '2023-07-04', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.971794'),
(612, '30E', 'FGT30E5618089072', '', 'crm_fortinet', '', '2023-07-04', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.971925'),
(613, '80E', 'FGT80ETK19022893', '', 'crm_fortinet', '', '2023-07-04', '', '', '', '', '', '', '', '', 'JODHPUR', 'Rajasthan', '78000', '95000', 'Elite Group of Suppliers (Jodhpur)', '', '', NULL, '2020-11-29 15:02:19.972058'),
(614, '80E', 'FGT80ETK19023435', '', 'crm_fortinet', '', '2023-07-04', 'kgk infrastructure (I) Pvt. Ltd.', '', 'rajesh Jain', '9799491600', '', '-', '', '', 'JAIPUR', 'Rajasthan', '79000', '86400', 'SKYNET INDIA JPR', '', '', NULL, '2020-11-29 15:02:19.972206'),
(615, '60E', 'FGT80ETK19019327', '', 'crm_fortinet', '', '2023-07-06', '', '', '', '', '', '', '', '', 'INDORE', '', '78000', '92000', 'ADVANCE TECHNOLOGY COMPUTER', '', '', NULL, '2020-11-29 15:02:19.972337'),
(616, '30E', 'FGT30E5619063504', '', 'crm_fortinet', '', '2023-07-06', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.972475'),
(617, '30E', 'FGT30E5619063281', '', 'crm_fortinet', '', '2023-07-06', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.972613'),
(618, '30E', 'FGT30E5619063372', '', 'crm_fortinet', '', '2023-07-07', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.972745'),
(619, '30E', 'FGT30E5619063415', '', 'crm_fortinet', '', '2023-07-07', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.972876'),
(620, '30E', 'FGT30E5619063413', '', 'crm_fortinet', '', '2023-07-07', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.973006'),
(621, '30E', 'FGT30E5619061803', '', 'crm_fortinet', '', '2023-07-08', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.973137'),
(622, '30E', 'FGT30E5619063536', '', 'crm_fortinet', '', '2023-07-08', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.973267'),
(623, '30E', 'FGT30E5619063423', '', 'crm_fortinet', '', '2023-07-08', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.973397'),
(624, '30E', 'FGT30E5619062312', '', 'crm_fortinet', '', '2023-07-08', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.973535'),
(625, '30E', 'FGT30E5619063190', '', 'crm_fortinet', '', '2023-07-08', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.973668'),
(626, '30E', 'FGT30E5619062143', '', 'crm_fortinet', '', '2023-07-09', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.973810'),
(627, '30E', 'FGT30E5619063502', '', 'crm_fortinet', '', '2023-07-10', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.973943'),
(628, '30E', 'FGT30E5619063376', '', 'crm_fortinet', '', '2023-07-10', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.974074'),
(629, '30E', 'FGT30E5619063520', '', 'crm_fortinet', '', '2023-07-10', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.974205'),
(630, '30E', 'FGT30E5619063246', '', 'crm_fortinet', '', '2023-07-10', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.974341'),
(631, '30E', 'FGT30E5619063153', '', 'crm_fortinet', '', '2023-07-10', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.974556'),
(632, '30E', 'FGT30E5619063408', '', 'crm_fortinet', '', '2023-07-11', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.974699'),
(633, '30E', 'FGT30E5619061960', '', 'crm_fortinet', '', '2023-07-11', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.974831'),
(634, '30E', 'FGT30E5619062569', '', 'crm_fortinet', '', '2023-07-11', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.974962'),
(635, '30E', 'FGT30E5619061970', '', 'crm_fortinet', '', '2023-07-11', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.975139'),
(636, '30E', 'FGT30E5619058533', '', 'crm_fortinet', '', '2023-07-13', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.975272'),
(637, '30E', 'FGT30E5619063068', '', 'crm_fortinet', '', '2023-07-13', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.975404'),
(638, '30E', 'FGT30E5619063538', '', 'crm_fortinet', '', '2023-07-14', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.975542'),
(639, '30E', 'FGT30E5619063195', '', 'crm_fortinet', '', '2023-07-15', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.975676'),
(640, '30E', 'FGT30E5619058229', '', 'crm_fortinet', '', '2023-07-16', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.975816'),
(641, '30E', 'FGT30E5619063570', '', 'crm_fortinet', '', '2023-07-16', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.975948'),
(642, '30E', 'FGT30E5619063524', '', 'crm_fortinet', '', '2023-07-17', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.976078'),
(643, '30E', 'FGT30E5619063374', '', 'crm_fortinet', '', '2023-07-17', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.976208'),
(644, '30E', 'FGT30E5619063233', '', 'crm_fortinet', '', '2023-07-18', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.976337'),
(645, '30E', 'FGT30E5619060169', '', 'crm_fortinet', '', '2023-07-18', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.976472'),
(646, '30E', 'FGT30E5619063161', '', 'crm_fortinet', '', '2023-07-18', '', '', '', '', '', '', '', '', 'Jodhpur', 'Rajasthan', '22000', '33000', 'Diamond Sales', '', '', NULL, '2020-11-29 15:02:19.976607'),
(647, '30E', 'FGT30E5619063528', '', 'crm_fortinet', '', '2023-07-25', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.976736'),
(648, '30E', 'FGT30E5619063450', '', 'crm_fortinet', '', '2023-07-25', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.976866'),
(649, '30E', 'FGT30E5619063491', '', 'crm_fortinet', '', '2023-07-25', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.976995'),
(650, '30E', 'FGT30E5619063529', '', 'crm_fortinet', '', '2023-07-25', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.977125'),
(651, '30E', 'FGT30E5619063412', '', 'crm_fortinet', '', '2023-07-25', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.977255'),
(652, '30E', 'FGT30E5619063106', '', 'crm_fortinet', '', '2023-07-25', 'INDRA IVF', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.977385'),
(653, '50E', 'FGT50E3U17000466', '', 'crm_fortinet', '', '2023-07-27', 'KS Ford', '', 'RAJESH KUMAR', '+91 8890207000', '', 'ksford.edp@ksmotors.com', 'KS Cars Pvt Ltd., New Sanganer Road, Sodala', '', 'JAIPUR', 'Rajasthan', '42200', '60000', 'SECURE TECH', '', '', NULL, '2020-11-29 15:02:19.977532'),
(654, '30E', 'FGT30E5619063418', '', 'crm_fortinet', '', '2023-07-28', '', '', '', '', '', '', '', '', 'Kanpur', 'Uttar Pradesh', '22000', '31000', 'S.B Computer', '', '', NULL, '2020-11-29 15:02:19.977682'),
(655, '30E', 'FGT30E5619063276', '', 'crm_fortinet', '', '2023-07-28', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.977913'),
(656, '30E', 'FGT30E3U17000132', '', 'crm_fortinet', '', '2023-07-30', 'BAIRATHI SHOE CO.PVT.LTD.', '', '', '1414010770', '', 'bairathi324@yahoo.in', 'E324,ROAD NO.16,V.K.I.AREA', '', 'JAIPUR', 'Rajasthan', '', '', 'SHREE KESHAV ENTERPRISES', '', '', NULL, '2020-11-29 15:02:19.978070'),
(657, '101E', 'FG101ETK18008149', '', 'crm_fortinet', '', '2023-07-30', '16 IDSR', '', 'Chet Ram', '9058958237', '', 'chetram.rawat92@gmail.com', 'Sadhuwali Cantt.', '', 'Sri Ganganagar', 'Rajasthan', '', '', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.978215'),
(658, '100E', 'FG100ETK19029011', '', 'crm_fortinet', '', '2023-07-31', '', '', '', '', '', '', '', '', '', '', '173572', '187000', 'NETGLEM CONSULTING LLP JPR', '', '', NULL, '2020-11-29 15:02:19.978348'),
(659, '50E', 'FGT50E3U17009993', '', 'crm_fortinet', '', '2040-12-12', 'electro plaza', '', '', '+91 1414029694', '', 'retail.electroplaza@gmail.com', 'b2a,gandhipath corner,', '', 'JAIPUR', 'Rajasthan', '', '', '', '', '', NULL, '2020-11-29 15:02:19.978497'),
(660, '30E', 'FGT30E5619063482', '', 'crm_fortinet', '', '2023-08-03', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '25000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.978633'),
(661, '100E', 'FG1HEFTK19000950', '', 'crm_fortinet', '', '2023-08-05', 'Nagar Nigam', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '206000', '222460', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.978767'),
(662, '60E', 'FGT60ETK19025373', '', 'crm_fortinet', '', '2023-08-10', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '51666', '64000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.978900'),
(663, '30E', 'FGT30E5619063509', '', 'crm_fortinet', '', '2023-08-19', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.979077'),
(664, '80E', 'FGT80ETK19021810', '', 'crm_fortinet', '', '2023-08-19', 'Rajendra and Ursula Joshi Food Industries Pvt Ltd,', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '78000', '91000', 'GL TECHNOVATION', '', '', NULL, '2020-11-29 15:02:19.979216'),
(665, '100E', 'FG100ETK19029049', '', 'crm_fortinet', '', '2023-08-26', 'Derewala Jewellery Industries Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '173572', '188000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.979352'),
(666, '100E', 'FG100E4Q16004097', '', 'crm_fortinet', '', '2023-08-28', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '158375', '190000', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.979493'),
(667, '60E', 'FGT60ETK19025296', '', 'crm_fortinet', '', '2023-08-28', '', '', '', '', '', '', '', '', 'JAISALMER', 'Rajasthan', '51666', '64000', 'CREADENT SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.979630'),
(668, '30E', 'FGT30E3U17017904', '', 'crm_fortinet', '', '2023-08-31', 'Mukesh Traders', '', 'Mukesh Gupta', '7976063831', '', 'rajatg014@gmail.com', 'b-55 kukarkhera', '', 'JAIPUR', 'Rajasthan', '24150', '32000', '', '', '', NULL, '2020-11-29 15:02:19.979767'),
(669, '60E', 'FGT60ETK19025374', '', 'crm_fortinet', '', '2023-08-31', 'Ostwal Phoschem India Ltd (Bhilwara)', '', 'Mr.Pintu', '7665437121', '', 'pintuaitengg@gmail.com', '5-O-1 RC VYAS COLONY Bhilwara Mob No - 7665437121', '', 'BHILWARA', 'Rajasthan', '51666', '77800', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.979925'),
(670, '30E', 'FGT30E5619063496', '', 'crm_fortinet', '', '2023-09-04', '', '', '', '', '', '', '', '', 'Sri Ganganagar', 'Rajasthan', '22000', '28500', 'S.S.E COMPUTECH PRIVATE LIMITED', '', '', NULL, '2020-11-29 15:02:19.980070'),
(671, '50E', 'FGT50E5619012843', '', 'crm_fortinet', '', '2023-09-13', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '47000', '54000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.980209'),
(672, '60E', 'FGT60ETK19022716', '', 'crm_fortinet', '', '2023-09-13', 'Elite Group of Suppliers (Jodhpur)', '', 'Mr.Sandeep', '8078633286', '', 'sandeep.j12345@gmail.com', '25 Tilak Nagar 2nd, Bhadwasiya Jodhpur, Rajasthan-342007', '', 'JODHPUR', 'Rajasthan', '51666', '65000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.980360'),
(673, '30E', 'FGT30E5619063302', '', 'crm_fortinet', '', '2023-09-16', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '29000', 'SHREE GANPATI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.980507'),
(674, '50E', 'FGT50E3U17016166', '', 'crm_fortinet', '', '2023-09-17', 'U and T Tractor', '', '', '', '', '', '', '', 'JODHPUR', 'Rajasthan', '42200', '69500', 'PM COMPUTER', '', '', NULL, '2020-11-29 15:02:19.980649'),
(675, '60F', 'FGT60FTK20024398', '', 'crm_fortinet', '', '2023-09-22', 'Rajya Vidyut Utpadan Nigam Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '52678', '86680', 'Informatic Computech Private Limited', '', '', NULL, '2020-11-29 15:02:19.980790'),
(676, '100E', 'FG100ETK19029088', '', 'crm_fortinet', '', '2023-09-28', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '173572', '182001', 'AXEL NETWORK', '', '', NULL, '2020-11-29 15:02:19.980927'),
(677, '30E', 'Fgt30e5619063532', '', 'crm_fortinet', '', '2023-10-05', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28500', 'Infohub Solutions', '', '', NULL, '2020-11-29 15:02:19.981064'),
(678, '200E', 'FG200ETK19918119', '', 'crm_fortinet', '', '2023-10-15', '', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '350150', '395000', 'SKY ZONE SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.981201'),
(679, '50E', 'FGT50E5619048495', '', 'crm_fortinet', '', '2023-10-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '47000', '55000', 'AT YOUR SERVICES', '', '', NULL, '2020-11-29 15:02:19.981332'),
(680, '80E', 'FGT80ETK19022053', '', 'crm_fortinet', '', '2023-10-22', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '78000', '86000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.981467'),
(681, '80E', 'FGT80ETK19022659', '', 'crm_fortinet', '', '2023-10-25', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '78000', '86000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.981605'),
(682, '40F', 'Fgt40ftk20015330', '', 'crm_fortinet', '', '2023-10-28', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '40120', '58000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.981737'),
(683, '30E', 'FGT30E5619063519', '', 'crm_fortinet', '', '2023-10-29', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.981868'),
(684, '30E', 'FGT30E5619063209', '', 'crm_fortinet', '', '2023-10-29', 'Shriram General Insurance Company Ltd', '', 'kamlesh.sharma@shriramgi.com', '7073671986', '', 'kamlesh.sharma@shriramgi.com', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.982022'),
(685, '60E', 'FGT60ETK19022919', '', 'crm_fortinet', '', '2023-11-02', 'VARUN BEVERAGES LIMITED (Haryana)', '', 'MR.BABLI KAUSHIK', '8433220313', '', 'info@rjcorp.in', 'Tehsil:Nuh, Dist:Mewat HARYANA Pin:-122107', '', 'MEWAT', '', '51666', '62000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.982166'),
(686, '30E', 'FGT30E5618082589', '', 'crm_fortinet', '', '2023-11-07', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25800', 'ANJANI INFOTECH', '', '', NULL, '2020-11-29 15:02:19.982305'),
(687, '30E', 'FGT30E5618082488', '', 'crm_fortinet', '', '2043-11-07', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '25800', 'ANJANI INFOTECH', 'Dont want to renew', 'UPGRADE AND GIVEN NEW BOX', NULL, '2020-11-29 15:02:19.982435'),
(688, '200E', 'FG200E4Q17907732', '', 'crm_fortinet', '', '2023-11-27', 'Oriental Power Cables Ltd', '', 'Raj Kumar Thakur', '9928038880', '', 'rktkota68@gmail.com', 'P.O Cable Nagar ,NH-12,Kota -325003', '', 'Kota', 'Rajasthan', '256255', '360000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.982592'),
(689, '60E', 'FGT60ETK18015548', '', 'crm_fortinet', '', '2023-12-31', '', '', '', '', '', '', '', '', 'AJMER', 'Rajasthan', '44000', '48100', 'SECURESYS TECHNOLOGIES', '', '', NULL, '2020-11-29 15:02:19.982729'),
(690, '60E', 'FGT60ETK18014461', '', 'crm_fortinet', '', '2023-12-31', '', '', '', '', '', '', '', '', 'AJMER', 'Rajasthan', '44000', '48100', 'SECURESYS TECHNOLOGIES', '', '', NULL, '2020-11-29 15:02:19.982860'),
(691, '100E', 'FG100ETK18012210', '', 'crm_fortinet', '', '2024-05-28', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '300000', '386000', 'E-connect Solutions Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.982992'),
(692, '100E', 'FG100ETK18028045', '', 'crm_fortinet', '', '2024-08-02', 'Kenya Electricity Generating Company (Kengen', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '', '', 'E-connect Solutions Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.983127'),
(693, '100E', 'FG100ETK18028206', '', 'crm_fortinet', '', '2024-08-02', 'Kenya Electricity Generating Company (Kengen', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '', '', 'E-connect Solutions Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.983261'),
(694, '80E', 'FGT80ETK19022925', '', 'crm_fortinet', '', '2025-01-24', 'The Director,National Research Centre on Seedspices', '', 'Mr.Bhim Singh', '9314111522', '', 'aao.nrcss@gmail.com', 'Tabiji ,Ajmer-305206', '', 'AJMER', 'Rajasthan', '78000', '141017', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.983404'),
(695, '50E', 'FGT50E5619047970', '', 'crm_fortinet', '', '2026-10-17', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '48000', '65000', 'E-connect Solutions Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.983544'),
(696, '60F', 'FGT60FTK19010151', '', 'crm_fortinet', '', '2021-04-09', 'Fackelmann Inda Kitchenware Pvt Ltd', '', 'Rishipal Singh Rawat', '9917460193', '', 'rishipal.singh@fackelmann.co.in', '315, 3rd Floor, JMD Pacific Square,Sector 15, Gurgaon 122001', '', 'GURGAON', '', '52678', '105000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.983692'),
(697, '60F', 'FGT60FTK19011688', '', 'crm_fortinet', '', '2021-04-09', 'Fackelmann Inda Kitchenware Pvt Ltd', '', 'Rishipal Singh Rawat', '9917460193', '', 'rishipal.singh@fackelmann.co.in', '315, 3rd Floor, JMD Pacific Square,Sector 15, Gurgaon 122001', '', 'GURGAON', '', '52678', '105000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.983837'),
(698, '60E', 'FGT60ETK19099PAX', '', 'crm_fortinet', '', '2021-09-27', '', '', '', '', '', '', '', '', 'DELHI', '', '49000', '52000', 'RADIANT INFO SOLUTIONS PVT LTD', '', '', NULL, '2020-11-29 15:02:19.983969'),
(699, '60E', 'FGT60ETK19099PGP', '', 'crm_fortinet', '', '2021-09-27', '', '', '', '', '', '', '', '', 'DELHI', '', '49000', '52000', 'RADIANT INFO SOLUTIONS PVT LTD', '', '', NULL, '2020-11-29 15:02:19.984108'),
(700, '60E', 'FGT60ETK19025399', '', 'crm_fortinet', '', '2021-09-27', '', '', '', '', '', '', '', '', 'DELHI', '', '49000', '52000', 'RADIANT INFO SOLUTIONS PVT LTD', '', '', NULL, '2020-11-29 15:02:19.984239'),
(701, '60E', 'FGT60ETK19024929', '', 'crm_fortinet', '', '2040-12-24', '', '', '', '', '', '', '', '', 'BHIWADI', 'Rajasthan', '51666', '65000', 'VARDHMAN COMPUTER SOLUTIONS', 'Dont want to renew', 'company closed as per Vardhman Mr.Sunit ji ', '', '2020-11-29 15:02:19.984370'),
(702, '30E', 'FGT30E5618082780', '', 'crm_fortinet', '', '2023-02-10', 'SHRI BALAJI INDUSTRIAL PRODUCTS LIMITED', '', 'KANHAIYA', '9352816864', '', 'kanhaiya@balaji-castings.com', '', '', 'CHHATTISGARH', '', '22000', '34000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.984516'),
(703, '30E', 'FGT30E5619063513', '', 'crm_fortinet', '', '2023-03-07', 'Shriram General Insurance Company Ltd', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.984655'),
(704, '30E', 'FGD30E5619063478', '', 'crm_fortinet', '', '2023-03-31', 'Arts and Craft', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '29000', 'BHUSHAN SYSTEM & CONSULTANTS', '', '', NULL, '2020-11-29 15:02:19.984789'),
(705, '60E', 'FGT60E4Q16052020', '', 'crm_fortinet', '', '2021-03-25', '', '', '', '', '', '', '', '', 'KOLKATA', '', '44500', '53000', 'SNIGDHA INFOTECH', '', '', NULL, '2020-11-29 15:02:19.984919'),
(706, '30E', 'FGT30E3U17027622', '365', 'crm_fortinet', '', '2021-12-04', '', '', '', '', '', '', '', '', 'CHHATTISGARH', '', '21926', '28700', 'HRM Technologies Pvt Ltd', 'Lost and Renew', 'Renewed by HRM', NULL, '2020-11-29 15:02:19.985050'),
(707, '60E', 'FGT60ETK18098581', '', 'crm_fortinet', '', '2022-09-04', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.985246'),
(708, '50E', 'FGT50E5619009527', '', 'crm_fortinet', '', '2040-12-24', '', '', '', '', '', '', '', '', '', '', '30000', '35000', 'Team Computers Private Limited ', 'Dont want to renew', 'Team Computers sold device out of country ', NULL, '2020-11-29 15:02:19.985381'),
(709, '50E', 'FGT50E5619009724', '', 'crm_fortinet', '', '2040-12-24', '', '', '', '', '', '', '', '', '', '', '30000', '35000', 'Team Computers Private Limited ', 'Dont want to renew', 'Team Computers sold device out of country ', NULL, '2020-11-29 15:02:19.985522'),
(710, '50E', 'FGT50E5619009765', '', 'crm_fortinet', '', '2040-12-24', '', '', '', '', '', '', '', '', '', '', '30000', '35000', 'Team Computers Private Limited ', 'Dont want to renew', 'Team Computers sold device out of country ', NULL, '2020-11-29 15:02:19.985662'),
(711, '50E', 'FGT50E5619009786', '', 'crm_fortinet', '', '2040-12-24', '', '', '', '', '', '', '', '', '', '', '30000', '35000', 'Team Computers Private Limited ', 'Dont want to renew', 'Team Computers sold device out of country ', NULL, '2020-11-29 15:02:19.985792'),
(712, '50E', 'FGT50E5619010285', '', 'crm_fortinet', '', '2040-12-24', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '30000', '35000', 'Team Computers Private Limited ', 'Dont want to renew', 'Team Computers sold device out of country ', NULL, '2020-11-29 15:02:19.985924'),
(713, '50E', 'FGT50E5619012053', '', 'crm_fortinet', '', '2040-12-24', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '30000', '35000', 'Team Computers Private Limited ', 'Dont want to renew', 'Team Computers sold device out of country ', NULL, '2020-11-29 15:02:19.986056'),
(714, '50E', 'FGT50E5619010753', '', 'crm_fortinet', '', '2040-12-24', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '30000', '35000', 'Team Computers Private Limited ', 'Dont want to renew', 'Team Computers sold device out of country ', NULL, '2020-11-29 15:02:19.986200'),
(715, '30E', 'FGT30E56180059121', '', 'crm_fortinet', '', '2021-09-29', 'WONDER HOME FINANCE LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '23200', '30000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.986336'),
(716, '100E', 'FGT100ETK19005312', '', 'crm_fortinet', '', '2023-03-20', 'Q3 INFOTECH PVT. LTD', '', 'SURENDRA YADAV', '0124-6656007', '', 'syadav1@q3tech.com', '', '', 'JAIPUR', 'Rajasthan', '161573', '178000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.986488'),
(717, '60E', 'FGT60ETK1902366', '', 'crm_fortinet', '', '2023-01-24', 'Cybernatics', '', '', '', '', '', '', '', 'KOTA', 'Rajasthan', '51492', '65000', 'KAY KAY SOFTECH PVT LTD', '', '', NULL, '2020-11-29 15:02:19.986637'),
(718, '30E', 'FGT30E5619063421', '', 'crm_fortinet', '', '2023-09-30', 'Elite Group of Suppliers (Jodhpur)', '', 'Sandeep', '8078633286', '', 'sandeep.j12345@gmail.com', '', '', 'Jodhpur', 'Rajasthan', '22000', '30300', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.986854'),
(719, '30E', 'FGT30E5619063515', '', 'crm_fortinet', '', '2023-09-11', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27500', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.986989'),
(720, '30E', 'FGT30E619063477', '', 'crm_fortinet', '', '2023-09-11', '', '', '', '', '', '', '', '', 'UDAIPUR', 'Rajasthan', '22000', '30000', 'SYNERGY SYSTEMS UDR', '', '', NULL, '2020-11-29 15:02:19.987122'),
(721, '30E', 'FGT30E5618082888', '', 'crm_fortinet', '', '2023-09-23', '', '', '', '', '', '', '', '', 'BEHROR', 'Rajasthan', '22000', '31000', 'TEPHRA INFOTECH', '', '', NULL, '2020-11-29 15:02:19.987253'),
(722, '30E', 'FGT30E5619061740', '', 'crm_fortinet', '', '2021-06-28', 'Shriram General Insurance Company Ltd', '', 'kamlesh.sharma@shriramgi.com', '7073671986', '', 'kamlesh.sharma@shriramgi.com', '', '', 'JAIPUR', 'Rajasthan', '22000', '28000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.987395'),
(723, '30E', 'FGT30E5618081200', '', 'crm_fortinet', '', '2023-10-28', 'ENSONIC COMPUTECH PVT LTD', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '22000', '27900', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.987537'),
(724, '30E', 'FGT30E5618082569', '', 'crm_fortinet', '', '2023-11-06', '', '', '', '', '', '', '', '', 'KANPUR', 'Uttar Pradesh', '22000', '30000', 'EZEE SOLUTION', '', '', NULL, '2020-11-29 15:02:19.987671'),
(725, '100E', 'FG100ETK19037522', '', 'crm_fortinet', '', '2023-09-11', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '173572', '183000', 'HRM Technologies Pvt Ltd', '', '', NULL, '2020-11-29 15:02:19.987803'),
(726, '200E', 'FG200ETK19515001', '', 'crm_fortinet', '', '2023-05-27', 'DEVGIRI EXPORTS', '', '', '', '', '', '', '', 'PANIPAT', '', '335000', '390000', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.987937'),
(727, '200E', 'FG200ETK19900213', '', 'crm_fortinet', '', '2022-08-22', 'IIGJ', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '198000', '316652', 'ADITYA SOLUTIONS', '', '', NULL, '2020-11-29 15:02:19.988069'),
(728, '30E', 'FGT30E5619043419', '', 'crm_fortinet', '', '2022-12-17', '', '', '', '', '', '', '', '', 'BIKANER', 'Rajasthan', '21000', '23000', 'SYNERGY COMPUTERS BKN', '', '', NULL, '2020-11-29 15:02:19.988209'),
(729, '30E', 'FGT30E5619042079', '', 'crm_fortinet', '', '2022-12-17', '', '', '', '', '', '', '', '', 'BIKANER', 'Rajasthan', '21000', '23000', 'SYNERGY COMPUTERS BKN', '', '', NULL, '2020-11-29 15:02:19.988342'),
(730, '100E', 'FG100ETK18027433', '', 'crm_fortinet', '', '2022-05-09', 'Allen Career Institute', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '163500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.988482'),
(731, '100E', 'FGT100ETK18027532', '', 'crm_fortinet', '', '2022-05-09', 'Allen Career Institute', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '163500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.988621'),
(732, '100E', 'FGT100ETK18027543', '', 'crm_fortinet', '', '2022-05-09', 'Allen Career Institute', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '163500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.988756'),
(733, '100E', 'FGT100ETK18036114', '', 'crm_fortinet', '', '2022-05-09', 'Allen Career Institute', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '163500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.988891'),
(734, '100E', 'FGT100ETK18036626', '', 'crm_fortinet', '', '2022-05-09', 'Allen Career Institute', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '163500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.989025'),
(735, '100E', 'FGT100ETK18036176', '', 'crm_fortinet', '', '2022-05-09', 'Allen Career Institute', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '163500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.989158'),
(736, '100E', 'FGT100ETK18036153', '', 'crm_fortinet', '', '2022-05-09', 'Allen Career Institute', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '163500', 'Binary Infosolutions Private Limited', '', '', NULL, '2020-11-29 15:02:19.989292'),
(737, '100E', 'FG100ETK19000540', '', 'crm_fortinet', '', '2022-08-06', '', '', '', '', '', '', '', '', 'JAIPUR', 'Rajasthan', '', '182000', 'SHRI SIDDHI VINAYAK COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.989429'),
(738, '80E', 'FGT80E4Q17009927', '', 'crm_fortinet', '', '2021-11-24', '', '', '', '', '', '', '', '', 'Indore', '', '72270', '75348', '', '', '', NULL, '2020-11-29 15:02:19.989571'),
(739, 'ANALYZER', 'FAZ-200F ANALYZER', '', 'crm_fortinet', '', '2022-06-25', 'GR INFRA', '', '', '', '', '', '', '', '', '', '', '154160', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.989703'),
(740, '', '24x7 FortiCare Contract (1-110 DEVICES /VIRTUAL )', '', 'crm_fortinet', '', '2022-06-25', 'GR INFRA', '', '', '', '', '', '', '', '', '', '', '254740', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.989836'),
(741, '', 'FMG-VM-BASE  License (Forti-Manager)', '', 'crm_fortinet', '', '2022-06-25', 'GR INFRA', '', '', '', '', '', '', '', '', '', '', '63920', 'ASSURE COMPUTERS', '', '', NULL, '2020-11-29 15:02:19.989966'),
(742, 'FG30E', 'FGT30E5618082488', '1095', 'crm_fortinet', '', '2023-07-11', 'GCKC', 'IT HEAD ', '', '9828321000', '', 'info@gckcinfra.com', '24', '', 'JAIPUR', 'RAJASTHAN', '22000', '27000', 'GAURAV COMPUTERS', 'QUOTED', '', NULL, '2020-12-04 07:27:35.106123'),
(743, '80E', 'FGT80ETK19022878', '1095', 'crm_fortinet', '', '2023-04-12', 'Pratap Technocrats Private Limited', 'IT EXECUTIVE', 'Santosh Kumar', '9828888138', '', 'it.support@pratap.co.in', 'B-21, Shakti BHawan,Shivaji Godra Colony', 'Khatipura Road, Jhotwara,', 'Jaipur', 'Rajasthan', '82500', '115000', 'BINARY INFOSOLUTIONS PVT LTD ', 'QUOTED', '', NULL, '2020-12-04 13:26:23.821308'),
(744, '30E', 'FGT30E3U17034547', '365', 'crm_fortinet', '', '2022-01-29', 'Rational Handloom Company Pvt. Ltd.', 'IT HOD', 'ANIL BHATI', '7230034211', '', 'bhatianil62@gmail.com', '66-67 Heavy Industrial Area, Basni Jodhpur', '', 'JODHPUR', 'RAJASTHAN', '22000', '25000', 'Intensity Global Technologies Pvt. Ltd.DELHI', 'Lost and Renew', 'renewed from Delhi', '', '2020-12-25 12:23:51.000000'),
(745, '100D', 'FG100D5D18802685', '365', 'crm_fortinet', '', '2021-02-18', 'JK Lakshmi', 'HOD IT', 'K MITTAL', '97854555', '02971244419', 'kmittal@lc.jkmail.com', 'JK PURAM', 'SIROHI', 'SIROHI', 'Rajasthan', '0', '0', 'Binary Infosolutions Private Limited', 'Quoted', 'Prices quoted with Buyback to Nitin ji ', '', '2020-12-27 08:45:05.309239'),
(746, '100E', 'FG100E4Q17009856', '365', 'crm_fortinet', '', '2041-03-31', 'MUFG Bank', 'Manager', 'Manish Nikam', '9811346050', '', 'manish_nikam@in.mufg.jp', '1st Floor Neemrana Central, CC-12, RIICO Industrial Area, Phase 1 Neemrana, ', 'Phase 1 Neemrana, ', 'NEEMRANA', 'Rajasthan', '0', '0', 'Binary Infosolutions Private Limited', 'Dont want to renew', 'Duplicate Entry ', NULL, '2020-12-27 08:49:22.070711'),
(747, '101E', 'FG101ETK18000184', '365', 'crm_fortinet', '', '2021-03-29', 'H-One India Pvt Ltd', '', '', '7232079111', '', 'it.tpk@h-oneindia.com', 'Plot-A 46 (A2) Khuskhera industrial area ', 'Tapukara ', 'BHIWADI', 'Rajasthan', '0', '0', 'Binary Infosolutions Private Limited', NULL, 'DELHI ', NULL, '2020-12-27 08:52:18.322856'),
(748, '200D', 'FG200D3914804349', '365', 'crm_fortinet', '', '2021-03-11', 'Orientel Power Cable Ltd.', '', 'Saurabh Vijay', '7665436671', '', 'it.multimetals@gmail.com', 'NH-12, PO- Cabel Nagar', 'KOTA', 'KOTA', 'Rajasthan', '0', '0', 'NCS COMPUTECH', NULL, '', NULL, '2020-12-27 09:04:19.965904'),
(749, '200E', 'FG200E4Q17911489', '365', 'crm_fortinet', '', '2021-02-01', 'Au Small Finance Bank', '', 'mukesh yadav', '9116080239', '', 'mukesh.yadav1@aubank.in', '5th, 6th Floor, Sunny Trade Centre, ', 'New Atish Market', 'JAIPUR', 'Rajasthan', '0', '0', 'Binary Infosolutions Private Limited', NULL, 'i think mumbai', NULL, '2020-12-27 09:10:32.617256'),
(750, '200E', 'FG200E4Q17915180', '365', 'crm_fortinet', '', '2021-03-14', 'QDegrees Services', '', '', '8696911688', '', '', '', '', 'JAIPUR', 'Rajasthan', '0', '0', 'Binary Infosolutions Private Limited', NULL, 'arpit ojha ', NULL, '2020-12-27 09:13:20.747007'),
(751, '', 'FG5H0E3917901705', '365', 'crm_fortinet', '', '2021-03-13', 'G R INFRAPROJECTS LIMITED', '', '', '9001996262', '02942487749', 'it@grinfra.com', '', '', 'UDAIPUR', 'RAJASTHAN', '0', '0', 'ASSURE COMPUTER', NULL, '', NULL, '2020-12-27 09:16:42.432508'),
(752, '', 'FGT30D3X13002170', '365', 'crm_fortinet', '', '2022-01-25', 'Tokai Imperial Hydraulics India Pvt.Ltd', '', 'Tarun Verma', '7665434660', '14946716000', 'tarun.verma@tihtokai.co.in', 'SP-2-93-95,RIICO Majrakath, Japanese Zone, ', 'Neemrana', 'NEEMRANA', 'RAJASTHAN', '9500', '13000', 'Binary Infosolutions Private Limited', 'Renewed', 'DELHI ', NULL, '2021-01-20 05:07:36.000000'),
(753, '30E', 'FGT30E3U17034745', '365', 'crm_fortinet', '', '2022-01-29', 'Rational Handloom Company Pvt. Ltd.', '', 'ANIL BHATI', '7230034211', '', 'bhatianil62@gmail.com', '66-67 Heavy Industrial Area, ', 'Basni', 'JODHPUR', 'RAJASTHAN', '0', '0', 'Binary Infosolutions Private Limited', 'Lost and Renew', 'renewed from Delhi', NULL, '2020-12-27 09:24:16.336825'),
(754, '30E', 'FGT30E3U17034824', '365', 'crm_fortinet', '', '2022-02-02', 'Rational Handloom Company Pvt. Ltd.', '', 'ANIL BHATI', '7230034211', '', 'bhatianil62@gmail.com', '66-67 Heavy Industrial Area, ', 'Basni ', 'JODHPUR', 'RAJASTHAN', '0', '0', 'DELHI INTENSITY', 'Lost and Renew', 'renewed from Delhi', NULL, '2020-12-27 09:26:49.506626'),
(755, '30E', 'FGT30E3U17034915', '365', 'crm_fortinet', '', '2022-02-02', 'Rational Handloom Company Pvt. Ltd.', '', 'ANIL BHATI', '7230034211', '', 'bhatianil62@gmail.com', '66-67 Heavy Industrial Area, ', 'Basni', 'JODHPUR', 'RAJASTHAN', '0', '0', 'Binary Infosolutions Private Limited', 'Lost and Renew', 'renewed from Delhi', NULL, '2020-12-27 09:29:19.868234'),
(756, '30E', 'FGT30E3U17034918', '365', 'crm_fortinet', '', '2022-01-29', 'Rational Handloom Company Pvt. Ltd.', '', 'ANIL BHATI', '7230034211', '', 'bhatianil62@gmail.com', '66-67 Heavy Industrial Area, ', 'Basni', 'JODHPUR', 'RAJASTHAN', '0', '0', 'DELHI INTENSITY', 'Lost and Renew', 'renewed from Delhi', NULL, '2020-12-27 09:30:45.419338'),
(757, '30E', 'FGT30E3U17035314', '365', 'crm_fortinet', '', '2022-02-01', 'Rational Handloom Company Pvt. Ltd.', '', 'ANIL BHATI', '7230034211', '', 'bhatianil62@gmail.com', '66-67 Heavy Industrial Area, ', 'Basni', 'JODHPUR', 'RAJASTHAN', '0', '0', 'DELHI INTENSITY', 'Lost and Renew', 'renewed from Delhi', NULL, '2020-12-27 09:31:59.698133'),
(758, '30E', 'FGT30E3U17035517', '365', 'crm_fortinet', '', '2022-02-01', 'Rational Handloom Company Pvt. Ltd.', '', 'ANIL BHATI', '7230034211', '', 'bhatianil62@gmail.com', '66-67 Heavy Industrial Area, ', 'Basni', 'JODHPUR', 'RAJASTHAN', '0', '0', 'DELHI INTENSITY', 'Lost and Renew', 'renewed from Delhi', '', '2020-12-27 09:35:08.000000'),
(759, '30E', 'FGT30E3U17036021', '365', 'crm_fortinet', '', '2022-01-29', 'Rational Handloom Company Pvt. Ltd.', '', 'ANIL BHATI', '7230034211', '', 'bhatianil62@gmail.com', '66-67 Heavy Industrial Area, ', 'Basni', 'JODHPUR', 'RAJASTHAN', '0', '0', 'DELHI INTENSITY', 'Lost and Renew', 'renewed from Delhi', NULL, '2020-12-27 09:45:36.988725'),
(760, '30E', 'FGT30E3U17036036', '365', 'crm_fortinet', '', '2022-02-02', 'Rational Handloom Company Pvt. Ltd.', '', 'ANIL BHATI', '7230034211', '', 'bhatianil62@gmail.com', '66-67 Heavy Industrial Area, ', 'Basni', 'JODHPUR', 'RAJASTHAN', '0', '0', 'DELHI INTENSITY', 'Lost and Renew', 'renewed from Delhi', NULL, '2020-12-27 09:47:04.625348'),
(761, '30E', 'FGT30E3U17036351', '365', 'crm_fortinet', '', '2022-01-31', 'Rational Handloom Company Pvt. Ltd.', '', 'ANIL BHATI', '7230034211', '', 'bhatianil62@gmail.com', '66-67 Heavy Industrial Area, ', 'Basni', 'JODHPUR', 'RAJASTHAN', '0', '0', 'DELHI INTENSITY', 'Lost and Renew', 'renewed from Delhi', NULL, '2020-12-27 09:48:06.228147'),
(762, '30E', 'FGT30E3U17041903', '365', 'crm_fortinet', '', '2021-01-07', 'OM Computer', '', 'RAJU SEN', '9829037671', '', 'OMCOMPUTERSKOTA@GMAIL.COM', '', '', 'KOTA', 'RAJASTHAN', '0', '0', 'OM COMPUTER KOTA', 'Quoted', 'Delay due to reason of school', '13000', '2020-12-27 09:50:09.487048'),
(763, '30E', 'FGT30E3U17042678', '365', 'crm_fortinet', '', '2021-01-08', 'G R INFRAPROJECTS LIMITED', '', '', '9001996262', '', 'it@grinfra.com', '', '', 'UDAIPUR', 'RAJASTHAN', '0', '0', 'ASSURE COMPUTER', 'Quoted', 'Installation pending ', '26000', '2020-12-27 09:53:45.863932'),
(764, '30E', 'FGT30E3U17043632', '365', 'crm_fortinet', '', '2021-01-19', 'GK Auto pal', '', 'AMIT SHARMA', '0', '', '', '', '', 'JAIPUR', 'RAJASTHAN', '0', '0', 'IMPACT ', '', 'HE WILL TRY TO BUY FROM HRM', '', '2021-01-19 13:06:32.000000'),
(765, '60D', 'FGT60D4613049104', '365', 'crm_fortinet', '', '2021-03-30', 'Airen Metals Pvt. Ltd', '', 'HARBHAJAN SINGH', '9413345943', '', 'gharbajan@airenmetals.com', 'G-750, Road No. 9F2 V.K.I. Area', '', 'JAIPUR', 'RAJASTHAN', '0', '0', 'NCS COMPUTECH', NULL, '', NULL, '2020-12-27 10:28:52.432246'),
(766, '', 'FGT60E4Q16052084', '365', 'crm_fortinet', '', '2021-03-28', 'PHOEBUS BUSINESS SOLUTIONS PVT LTD', '', 'RAJENDRA AGARWAL', '0', '', 'carafcon@gmail.com', '', '', 'JAIPUR', 'RAJASTHAN', '0', '0', 'Binary Infosolutions Private Limited', NULL, '', NULL, '2020-12-27 10:32:01.673654'),
(767, '', 'FGT60E4Q16052184', '365', 'crm_fortinet', '', '2021-03-28', 'Ashimori India Pvt. Ltf.', '', 'Kamlesh Singh', '9251024999', '', 'info@ashimori.co.in', 'SP2-11, New Industrial Area,Majrakath , ', 'Neemrana', 'NEEMRANA', 'RAJASTHAN', '0', '0', 'Binary Infosolutions Private Limited', NULL, '', NULL, '2020-12-27 10:34:05.508647'),
(768, '', 'FGT60E4Q16096553', '365', 'crm_fortinet', '', '2021-03-21', 'mindspace', '', 'kshitij jain', '9829017354', '', 'untangle@bookkeeping.co.in', '247-Manish Mansion', 'RAJA PARK', 'JAIPUR', 'RAJASTHAN', '0', '0', 'hrm', NULL, '', NULL, '2020-12-27 10:37:05.451401'),
(769, '80E', 'FGT80E4Q17004608', '365', 'crm_fortinet', '', '2021-01-01', 'HINDUSTAN TRADECOM PVT. LTD.', '', 'DHANNA YADAV', '09928005971', '911414069600', 'dlyadav@htplonline.com', '402, ROYAL WORLD, ', 'SC ROAD', '', '', '0', '0', 'Binary Infosolutions Private Limited', '', 'SOLD BY PANKAJ ,ASSIGNE ARPIT', '', '2021-01-28 06:48:54.000000'),
(770, '101E', 'FG101ETK18000184', '365', 'crm_fortinet', '', '2021-03-29', 'H-One India Pvt Ltd', '', '', '7232079111', '', 'it.tpk@h-oneindia.com', 'Plot-A 46 (A2) Khuskhera industrial area ', 'Tapukara ', 'BHIWADI', 'RAJASTHAN', '0', '0', 'DELHI ', NULL, '', NULL, '2020-12-27 10:42:59.424141');

-- --------------------------------------------------------

--
-- Table structure for table `crm_login`
--

CREATE TABLE `crm_login` (
  `id` int(200) NOT NULL,
  `usertype` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `createdon` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_login`
--

INSERT INTO `crm_login` (`id`, `usertype`, `email`, `password`, `createdon`) VALUES
(6, 'Support', 'amrita@iteeservices.com', 'amrita@it', '2020-12-25 12:41:44.910'),
(4, 'Support', 'sales@bispl.net.in', 'sales@1986.,*', '2020-11-29 15:31:05.798'),
(3, 'Admin', 'maya@gmail.com', '123', '2020-11-29 09:41:46.892'),
(5, 'Admin', 'dipankar.khandelwal@gmail.com', 'Admin@123', '2020-12-05 11:45:48.969');

-- --------------------------------------------------------

--
-- Table structure for table `crm_serialno_dump`
--

CREATE TABLE `crm_serialno_dump` (
  `id` int(100) NOT NULL,
  `old_serial` varchar(100) DEFAULT NULL,
  `new_serial` varchar(100) DEFAULT NULL,
  `timestampp` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_serialno_dump`
--

INSERT INTO `crm_serialno_dump` (`id`, `old_serial`, `new_serial`, `timestampp`) VALUES
(1, 'FG100E4Q16003658', '', '2020-11-30 07:26:41.448899'),
(2, 'FGT90D3Z16012531', 'FGT60ETK19023542', '2020-11-30 07:28:49.085617'),
(3, 'FGT30E3U17018176', 'FGT30E5618082488', '2020-11-30 10:58:45.257655'),
(4, 'FG100D3G14805421', '', '2020-12-04 07:03:09.693600'),
(5, 'FGT30E3U17018029', '', '2020-12-04 07:19:39.837085'),
(6, 'FGT30E3U17017927', '', '2020-12-04 07:28:18.116124'),
(7, '', '', '2020-12-04 07:31:20.913899'),
(8, '', '', '2020-12-04 07:32:12.426531'),
(9, 'FGT80E4Q17003576', 'FGT80ETK19022878', '2020-12-04 12:56:57.301813'),
(10, '', '', '2020-12-18 12:27:16.082500'),
(11, '2F93244F0C4101811418', '', '2020-12-18 12:37:35.784063'),
(12, '838N11758215C2B001D4', '', '2020-12-18 12:38:16.427536'),
(13, 'FGT90D3Z16007353', '', '2020-12-25 10:48:35.286415');

-- --------------------------------------------------------

--
-- Table structure for table `crm_useraccess`
--

CREATE TABLE `crm_useraccess` (
  `id` int(100) NOT NULL,
  `email` varchar(200) DEFAULT 'NO',
  `crm_eps` varchar(100) NOT NULL DEFAULT 'No',
  `crm_fortinet` varchar(100) NOT NULL DEFAULT 'No',
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
  `createon` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_useraccess`
--

INSERT INTO `crm_useraccess` (`id`, `email`, `crm_eps`, `crm_fortinet`, `insellview`, `inselledit`, `outsellview`, `outselledit`, `product_name_view`, `product_name_edit`, `users_view`, `users_edit`, `remarks_view`, `remarks_edit`, `expiry_date_view`, `expiry_date_edit`, `company_view`, `company_edit`, `contact_person_view`, `contact_person_edit`, `mobile_view`, `mobile_edit`, `email_view`, `email_edit`, `dealer_view`, `dealer_edit`, `quotedprice_view`, `quotedprice_edit`, `renewedit`, `upgradeedit`, `lostandrenewedit`, `lostandupgradeedit`, `dontwanttorenewedit`, `renewalpage`, `dealerpage`, `supportpage`, `createuserpage`, `uploadpage`, `createon`) VALUES
(9, 'dipankar.khandelwal@gmail.com', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '0000-00-00 00:00:00.000000'),
(10, 'sales@bispl.net.in', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', '', NULL),
(11, 'amrita@iteeservices.com', '', 'Yes', '', '', '', '', 'Yes', '', 'Yes', '', 'Yes', '', 'Yes', '', 'Yes', '', 'Yes', '', '', '', '', '', 'Yes', '', '', '', '', '', '', '', '', 'Yes', '', '', '', '', '2020-12-25 12:41:44.910704');

-- --------------------------------------------------------

--
-- Table structure for table `delta`
--

CREATE TABLE `delta` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delta`
--

INSERT INTO `delta` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, 'delta1', 'INX Series, Single Phase, 1 kVA', 'True online double-conversion topology and zero transfer time to battery ensure high reliability.\r\nHigh input power factor corrector (> 0-99) for controlled sine wave AC output.\r\nCold-start capability with temporary battery power when the utility power is out.\r\nAutomatic bypass to transfer the load on mains in case of overload & internal fault.\r\nBattery deep discharge protection.\r\nFlexibility.\r\nExcellent local communications through user friendly LCD display.\r\nIntelligent management software connectivity via RS232, mini slot or USB port.\r\nThree multi-functional buttons for the operation and selection of parameters.\r\nLow Total Cost of Ownership.\r\nProtection against over voltage; charger working even when the input switch is in off position.\r\nECO mode to provide energy cost savings.\r\nWide input voltage range to reduce the chance of using the battery and to extend battery life.\r\nIntelligent battery management sustaining battery life and performance.\r\nFan speed control by load level and room temperature to optimize performance.', './img/delta/Amplon-INX-series-UPS-1-3kVA.jpg', ' The INX series is an online double-conversion UPS providing consistent sine-wave power to your critical equipment. The INX series features an input power factor corrector and best-in-class AC-AC efficiency of up to 90% resulting in greater energy savings. The INX series leads the industry in combining compact size, availability, flexibility and best total cost of ownership.', './img/delta/1-1.png', 'https://www.deltapowersolutions.com/media/download/Leaflet-UPS-INX-1-3kVA-standard-and-extended-6a-models-en-in.pdf'),
(2, 'delta2', 'INX Series, Single Phase, 2 kVA', 'True online double-conversion topology and zero transfer time to battery ensure high reliability. High input power factor corrector (> 0-99) for controlled sine wave AC output. Cold-start capability with temporary battery power when the utility power is out. Automatic bypass to transfer the load on mains in case of overload & internal fault. Battery deep discharge protection. Flexibility. Excellent local communications through user friendly LCD display. Intelligent management software connectivity via RS232, mini slot or USB port. Three multi-functional buttons for the operation and selection of parameters. Low Total Cost of Ownership. Protection against over voltage; charger working even when the input switch is in off position. ECO mode to provide energy cost savings. Wide input voltage range to reduce the chance of using the battery and to extend battery life. Intelligent battery management sustaining battery life and performance. Fan speed control by load level and room temperature to optimize performance.\r\n', './img/delta/Amplon-INX-series-UPS-1-3kVA.jpg', ' The INX series is an online double-conversion UPS providing consistent sine-wave power to your critical equipment. The INX series features an input power factor corrector and best-in-class AC-AC efficiency of up to 90% resulting in greater energy savings. The INX series leads the industry in combining compact size, availability, flexibility and best total cost of ownership.', './img/delta/1-2.png', 'https://www.deltapowersolutions.com/media/download/Leaflet-UPS-INX-1-3kVA-standard-and-extended-6a-models-en-in.pdf'),
(3, 'delta3', 'INX Series, Single Phase, 3 kVA', 'True online double-conversion topology and zero transfer time to battery ensure high reliability. High input power factor corrector (> 0-99) for controlled sine wave AC output. Cold-start capability with temporary battery power when the utility power is out. Automatic bypass to transfer the load on mains in case of overload & internal fault. Battery deep discharge protection. Flexibility. Excellent local communications through user friendly LCD display. Intelligent management software connectivity via RS232, mini slot or USB port. Three multi-functional buttons for the operation and selection of parameters. Low Total Cost of Ownership. Protection against over voltage; charger working even when the input switch is in off position. ECO mode to provide energy cost savings. Wide input voltage range to reduce the chance of using the battery and to extend battery life. Intelligent battery management sustaining battery life and performance. Fan speed control by load level and room temperature to optimize performance.\r\n', './img/delta/Amplon-INX-series-UPS-1-3kVA.jpg', ' The INX series is an online double-conversion UPS providing consistent sine-wave power to your critical equipment. The INX series features an input power factor corrector and best-in-class AC-AC efficiency of up to 90% resulting in greater energy savings. The INX series leads the industry in combining compact size, availability, flexibility and best total cost of ownership.', './img/delta/1-3.png', 'https://www.deltapowersolutions.com/media/download/Leaflet-UPS-INX-1-3kVA-standard-and-extended-6a-models-en-in.pdf'),
(4, 'delta4', 'N Series, Single Phase UPS, 6 kVA', 'The Amplon N series 6-10kVA UPS is a single-phase on-line UPS with pioneering technology that provides output power factor up to unity and AC-AC efficiency to a maximum 95%. Its remarkably compact dimensions reserve more room for critical equipment such as workstations, POSs, ATMs, office appliances, small server rooms, and production equipment. The Amplon N series superior features include a N+X parallel redundancy function and variable fan speed control to guarantee high system availability and best Total Cost of Ownership (TCO).\r\n ', './img/delta/Amplon-N-6-10kVA-UPS-new.jpg', ' The Amplon N series 6-10kVA UPS is a single-phase on-line UPS with pioneering technology that provides output power factor up to unity and AC-AC efficiency to a maximum 95%. Its remarkably compact dimensions reserve more room for critical equipment such as workstations, POSs, ATMs, office appliances, small server rooms, and production equipment. The Amplon N series superior features include a N+X parallel redundancy function and variable fan speed control to guarantee high system availability and best Total Cost of Ownership (TCO).  ', './img/delta/1-4.png', ''),
(5, 'delta5', 'N Series, Single Phase UPS, 10 kVA', 'The Amplon N series 6-10kVA UPS is a single-phase on-line UPS with pioneering technology that provides output power factor up to unity and AC-AC efficiency to a maximum 95%. Its remarkably compact dimensions reserve more room for critical equipment such as workstations, POSs, ATMs, office appliances, small server rooms, and production equipment. The Amplon N series superior features include a N+X parallel redundancy function and variable fan speed control to guarantee high system availability and best Total Cost of Ownership (TCO).\r\n ', './img/delta/Amplon-N-6-10kVA-UPS-new.jpg', ' The Amplon N series 6-10kVA UPS is a single-phase on-line UPS with pioneering technology that provides output power factor up to unity and AC-AC efficiency to a maximum 95%. Its remarkably compact dimensions reserve more room for critical equipment such as workstations, POSs, ATMs, office appliances, small server rooms, and production equipment. The Amplon N series superior features include a N+X parallel redundancy function and variable fan speed control to guarantee high system availability and best Total Cost of Ownership (TCO).  ', './img/delta/1-5.png', ''),
(6, 'delta6', 'RT Series 10 kVA Single Phase UPS, 15/20 kVA Three Phase UPS (new)', 'The Amplon RT Series 5-20kVA is an online double-conversion UPS that provides best-in-class designs in compact 2U size, high power density, system efficiency, and versatile configurations to fulfill customers requirements. Unity output power factor maximizes capacity for more critical loads while outstanding energy savings can be achieved based on the AC-AC efficiency of up to 96.5% and 99% in ECO mode. In addition, RT Series 5-20kVA UPS is the first in the market that offers standard Li-ion external battery cabinets, which deliver better power density and sustainability. Along with the parallel capacity of up to four units, the new series is the ideal small power UPS for mission-critical applications, such as servers, data centers, telecommunications, and manufacturing.', './img/delta/Amplon-RT-series-UPS-5-10kVA-new.jpg', ' The Amplon RT Series 5-20kVA is an online double-conversion UPS that provides best-in-class designs in compact 2U size, high power density, system efficiency, and versatile configurations to fulfill customers requirements. Unity output power factor maximizes capacity for more critical loads while outstanding energy savings can be achieved based on the AC-AC efficiency of up to 96.5% and 99% in ECO mode. In addition, RT Series 5-20kVA UPS is the first in the market that offers standard Li-ion external battery cabinets, which deliver better power density and sustainability. Along with the parallel capacity of up to four units, the new series is the ideal small power UPS for mission-critical applications, such as servers, data centers, telecommunications, and manufacturing.', './img/delta/1-6.png', ''),
(7, 'delta7', 'EH Series, Three Phase In - Single Phase Out, 10 kVA', 'The Ultron EH series is an online double-conversion 3p-1p UPS which provides reliable power protection for IT rooms, SMBs, telecommunications, banking, medical facilities and industry. Supported with DSP based technology, it offers rapid computation capabilities that enhance system stability and provide precise voltage to load. The Ultron EH series offers many superior features including N+X parallel redundancy and a built-in manual bypass switch to guarantee higher availability and reliability for protecting your critical loads.', './img/delta/Ultron-EH-Series-UPS-10-20-kVA', ' The Ultron EH series is an online double-conversion 3p-1p UPS which provides reliable power protection for IT rooms, SMBs, telecommunications, banking, medical facilities and industry. Supported with DSP based technology, it offers rapid computation capabilities that enhance system stability and provide precise voltage to load. The Ultron EH series offers many superior features including N+X parallel redundancy and a built-in manual bypass switch to guarantee higher availability and reliability for protecting your critical loads.', './img/delta/1-7.png', ''),
(8, 'delta8', 'EH Series, Three Phase In - Single Phase Out, 15 kVA', 'The Ultron EH series is an online double-conversion 3p-1p UPS which provides reliable power protection for IT rooms, SMBs, telecommunications, banking, medical facilities and industry. Supported with DSP based technology, it offers rapid computation capabilities that enhance system stability and provide precise voltage to load. The Ultron EH series offers many superior features including N+X parallel redundancy and a built-in manual bypass switch to guarantee higher availability and reliability for protecting your critical loads.\r\n', './img/delta/Ultron-EH-Series-UPS-10-20-kVA\r\n', 'The Ultron EH series is an online double-conversion 3p-1p UPS which provides reliable power protection for IT rooms, SMBs, telecommunications, banking, medical facilities and industry. Supported with DSP based technology, it offers rapid computation capabilities that enhance system stability and provide precise voltage to load. The Ultron EH series offers many superior features including N+X parallel redundancy and a built-in manual bypass switch to guarantee higher availability and reliability for protecting your critical loads.\r\n', './img/delta/1-8.png', ''),
(9, 'delta9', 'EH Series, Three Phase In - Single Phase Out, 20 kVA', 'The Ultron EH series is an online double-conversion 3p-1p UPS which provides reliable power protection for IT rooms, SMBs, telecommunications, banking, medical facilities and industry. Supported with DSP based technology, it offers rapid computation capabilities that enhance system stability and provide precise voltage to load. The Ultron EH series offers many superior features including N+X parallel redundancy and a built-in manual bypass switch to guarantee higher availability and reliability for protecting your critical loads.\r\n', './img/delta/Ultron-EH-Series-UPS-10-20-kVA', ' The Ultron EH series is an online double-conversion 3p-1p UPS which provides reliable power protection for IT rooms, SMBs, telecommunications, banking, medical facilities and industry. Supported with DSP based technology, it offers rapid computation capabilities that enhance system stability and provide precise voltage to load. The Ultron EH series offers many superior features including N+X parallel redundancy and a built-in manual bypass switch to guarantee higher availability and reliability for protecting your critical loads.', './img/delta/1-8.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `fortinet`
--

CREATE TABLE `fortinet` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fortinet`
--

INSERT INTO `fortinet` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, 'FORTIGATE 30E', 'FORTIGATE 30E', 'Threat Protection.\r\n150 Mbps.\r\nSSL Throughput Inspection.\r\n160 Mbps.\r\nNetwork Interfaces.\r\nMultiple GE RJ45 | WiFi Variants', './img/fortinet/FortiGate-30E.png', ' Threat Protection. 150 Mbps. SSL Throughput Inspection. 160 Mbps. Network Interfaces. Multiple GE RJ45 | WiFi Variants', './img/fortinet/FortiGate-30E1-1.png', 'http://bispl.net.in/wp-content/uploads/2017/datasheet/FortiGate-FortiWiFi-30E.pdf'),
(2, 'FORTIGATE 50E', 'FORTIGATE 50E', 'Threat Protection.\r\n160 Mbps.\r\nSSL Throughput Inspection.\r\n185 Mbps.\r\nNetwork Interfaces.\r\nMultiple GE RJ45 | WiFi Variants | Variants with dual radios | .Variants with internal storage', './img/fortinet/FortiGate-50E.png', ' Threat Protection. 160 Mbps. SSL Throughput Inspection. 185 Mbps. Network Interfaces. Multiple GE RJ45 | WiFi Variants | Variants with dual radios | .Variants with internal storage', './img/fortinet/FortiGate-50E.png', ''),
(3, 'FORTIGATE 60E', 'FORTIGATE 60E', 'Threat Protection.\r\n200 Mbps.\r\nSSL Throughput Inspection.\r\n175 Mbps.\r\nNetwork Interfaces.\r\nMultiple GE RJ45 | WiFi variants | Variants with internal storage | Variants with PoE/+ interfaces', './img/fortinet/FortiGate-60E.png', ' Threat Protection. 200 Mbps. SSL Throughput Inspection. 175 Mbps. Network Interfaces. Multiple GE RJ45 | WiFi variants | Variants with internal storage | Variants with PoE/+ interfaces', './img/fortinet/FortiGate-60E1-1.png', 'http://bispl.net.in/wp-content/uploads/2017/datasheet/FortiGate-FortiWiFi-60E-Series.pdf'),
(4, 'FORTIGATE 90E', 'FORTIGATE 90E', 'Threat Protection.\r\n250 Mbps.\r\nSSL Inspection Throughput.\r\n180 Mbps.\r\nNetwork Interfaces.\r\nMultiple GE RJ45 | Varients with internal storage | Variants with PoE/+ interfaces', './img/fortinet/FortiGate-90E.png', ' Threat Protection. 250 Mbps. SSL Inspection Throughput. 180 Mbps. Network Interfaces. Multiple GE RJ45 | Varients with internal storage | Variants with PoE/+ interfaces', './img/fortinet/FortiGate-90E.png', 'http://bispl.net.in/wp-content/uploads/2017/datasheet/FortiGate-90E-Series.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `lg_flat_panel`
--

CREATE TABLE `lg_flat_panel` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lg_flat_panel`
--

INSERT INTO `lg_flat_panel` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, '65TR3BF-B', '65TR3BF-B', 'Brightness(w/Protection Glass) : 350 cd/mÂ².\r\nTouch Type : IR.\r\nMulti Touch Point : Max 20 points / Max 10 writing.\r\nInterface : HDMI (3), RGB / Audio In,RS232C In, RJ45,USB 2-0 (3, Front : 2ea, Bottom side: 1ea Only for software update), USB 3-0 (3), Touch Out(USB2-0,B Type) (2),HDMI (1), Optical Output / Audio Out', 'https://www.lg.com/in/business/images/information-display/bd00057361/gallery/N01_medium01-COPY-1.jpg', ' Brightness(w/Protection Glass) : 350 cd/mÂ². Touch Type : IR. Multi Touch Point : Max 20 points / Max 10 writing. Interface : HDMI (3), RGB / Audio In,RS232C In, RJ45,USB 2-0 (3, Front : 2ea, Bottom side: 1ea Only for software update), USB 3-0 (3), Touch Out(USB2-0,B Type) (2),HDMI (1), Optical Output / Audio Out', './img/lg/ifp/1-1.png', ''),
(2, '75TR3BF-B', '75TR3BF-B', 'Brightness(w/Protection Glass) : 330 cd/mÂ².\r\nTouch Type : IR.\r\nMulti Touch Point : Max 20 points / Max 10 writing.\r\nInterface : HDMI (3), RGB / Audio In,RS232C In, RJ45,USB 2-0 (3, Front : 2ea, Bottom side: 1ea Only for software update), USB 3-0 (3), Touch Out(USB2-0,B Type) (2),HDMI (1), Optical Output / Audio Out', 'https://www.lg.com/in/business/images/information-display/digital-signage/BD00057321/gallery/medium01-COPY-1.jpg', ' Brightness(w/Protection Glass) : 330 cd/mÂ². Touch Type : IR. Multi Touch Point : Max 20 points / Max 10 writing. Interface : HDMI (3), RGB / Audio In,RS232C In, RJ45,USB 2-0 (3, Front : 2ea, Bottom side: 1ea Only for software update), USB 3-0 (3), Touch Out(USB2-0,B Type) (2),HDMI (1), Optical Output / Audio Out', './img/lg/ifp/1-2.png', ''),
(3, '86TR3BF-B', '86TR3BF-B', 'Brightness(w/Protection Glass) : 330 cd/mÂ².\r\nTouch Type : IR.\r\nMulti Touch Point : Max 20 points / Max 10 writing.\r\nInterface : HDMI (3), RGB / Audio In,RS232C In, RJ45,USB 2-0 (3, Front : 2ea, Bottom side: 1ea Only for software update), USB 3-0 (3), Touch Out(USB2-0,B Type) (2),HDMI (1), Optical Output / Audio Out', 'https://www.lg.com/in/business/images/information-display/digital-signage/BD00057341/gallery/medium01-COPY-1.jpg', ' Brightness(w/Protection Glass) : 330 cd/mÂ². Touch Type : IR. Multi Touch Point : Max 20 points / Max 10 writing. Interface : HDMI (3), RGB / Audio In,RS232C In, RJ45,USB 2-0 (3, Front : 2ea, Bottom side: 1ea Only for software update), USB 3-0 (3), Touch Out(USB2-0,B Type) (2),HDMI (1), Optical Output / Audio Out', './img/lg/ifp/1-3.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `lg_tv`
--

CREATE TABLE `lg_tv` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lg_tv`
--

INSERT INTO `lg_tv` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, 'LT340C Series', 'LT340C Series', 'Quick Menu.\r\nHotel Mode.\r\nUSB Cloning.\r\nWOL (Wake on LAN).\r\nSNMP.\r\nCrestron ConnectedÂ® (Network Based Control)', './img/lg/lg1.jpg', ' Quick Menu (3.0), USB Cloning, Wake On LAN, SNMP, Self Diagnostics (USB), HTNG-CEC (1.4), Simplink (HDMI-CEC, 1.4), IR Out, Multi IR Code, Hotel Mode/Installer Menu, Insert Image, Lock mode (Limited), Welcome Video/Screen, One Channel Map, External Speaker Out, RJP Compatibility, USB Auto playback/USB Auto playback+, Auto Off/Sleep Timer, Smart Energy Saving, Crestron Connectedâ“‡ (Network Based Control), Time Scheduler, Cromecast anti cover (optional), Anti-theft System (Kensington Lock, Credenza/Security Screw Hole, Lock Down Plate)', './img/lg/lg1-1.png', 'https://www.lg.com/in/business/download/resources/BT00001569/BT00001569_33530.pdf'),
(2, '43LT340C0TB', '43LT340C Series', 'Quick Menu.\r\nHotel Mode.\r\nUSB Cloning.\r\nWOL (Wake on LAN).\r\nSNMP.\r\nCrestron ConnectedÂ® (Network Based Control)', './img/lg/lg2.jpg\r\n', ' Quick Menu (3.0), USB Cloning, Wake On LAN, SNMP, Self Diagnostics (USB), HTNG-CEC (1.4), Simplink (HDMI-CEC, 1.4), IR Out, Multi IR Code, Hotel Mode/Installer Menu, Insert Image, Lock mode (Limited), Welcome Video/Screen, One Channel Map, External Speaker Out, RJP Compatibility, USB Auto playback/USB Auto playback+, Auto Off/Sleep Timer, Smart Energy Saving, Crestron Connectedâ“‡ (Network Based Control), Time Scheduler, Cromecast anti cover (optional), Anti-theft System (Kensington Lock, Credenza/Security Screw Hole, Lock Down Plate)', './img/lg/lg1-2.png', 'https://www.lg.com/in/business/download/resources/BT00001569/BT00001569_33530.pdf'),
(3, 'UT640S Series', 'UT640S Series', 'Content Management/Group Management.\r\nSuperSign Control.\r\nSNMP.\r\nWake-up On Lan.\r\nCrestron ConnectedÂ® (Network Based Control)', './img/lg/lg3.jpg\r\n', ' Hotel Mode/PDM/Installer Menu, Lock mode (Limited), Welcome Screen (Splash Image), Insert Image, One Channel Map, IP Channel Manager, External Speaker Out (Int/Ext Variable/Fixed, 3.5mm, Stereo, Single ended Type(GND,L+,R+), 2W with 8Î©), RJP (remote jack pack) Compatibility (LG/Teleadapt (RS232C), Teleadapt/Guestlink (HDMI CEC)), Moving Picture Playback (SD/HD/Plus HD), Auto Off/Sleep Timer, Energy Saving Mode, Motion Eye Care', './img/lg/lg31-1.png', 'https://www.lg.com/in/business/download/resources/BT00001569/BT00001569_33890.pdf'),
(4, '55UT761H0TA', 'UT761H Series', 'Pro centric Hotel Management Solution.\r\nEnhanced Image Experience Through LG NanoCell.\r\nUltimate Guest Experience.\r\nâ€¢ Voice Recognition.\r\nâ€¢ Mobile Connection (Over Lay).\r\nâ€¢ SoftAP Advance.\r\nSmart TV by LG Web OS 4-5.\r\n165.1cm (65)139-7c.', './img/lg/lg4.jpg\r\n', ' Hotel Mode, Lock mode (Limited), Welcome Video/Screen, Insert Image, One Channel Map, IP Chanenel Manager, External Speaker Out (Int/Ext Variable/Fixed), Instant ON, External Power Out, V-Lan Tag, RJP (Remote Jack Pack) Compatibility, External Clock Compatibility (LEC-005), Moving Picture Playback (SD/HD/Plus HD), Auto Off/Sleep Timer, Smart Energy Saving, Motion Eye Care, Healthcare Headphone Mode, RTC (Real Time Clock), NTP sync timer, BEACON', './img/lg/lg41-1.png', 'https://www.lg.com/in/business/download/resources/BT00001569/BT00001569_33831.pdf'),
(5, '65UT640S0TA', 'UT640S Series', 'Content Management/Group Management.\r\nSuperSign Control.\r\nSNMP.\r\nWake-up On Lan.\r\nCrestron ConnectedÂ® (Network Based Control)', './img/lg/lg5.jpg\r\n', ' Hotel Mode / PDM / Installer Menu, Lock mode (Limited), Welcome Screen (Splash Image), Insert Image, One Channel Map, IP Channel Manager, External Speaker Out (Int / Ext Variable/Fixed, 3.5mm, Stereo, Single ended Type(GND,L+,R+), 2W with 8Î©), RJP (remote jack pack) Compatibility (LG/Teleadapt (RS232C), Teleadapt/Guestlink (HDMI CEC)), Moving Picture Playback (SD/HD/Plus HD), Auto Off / Sleep Timer, Smart Energy Saving, Motion Eye Care', './img/lg/lg51-1.png', 'https://www.lg.com/in/business/download/resources/CT00001569/Commercial-TV-Catalogue-2020-Low-Res[20200408_022316].pdf'),
(6, '75UU640C', 'UU640C Series', 'Content Management/Group Management.\r\nSuperSign Control.\r\nSNMP.\r\nWake-up On Lan.\r\nCrestron ConnectedÂ® (Network Based Control).\r\n218-44cm (86)190-5cm (75)165.1c', './img/lg/lg6.jpg', ' webOS 4.0, Commercial Smart Home (Launcher Bar), Web Browser, Pre-loaded App (YouTube Only), Soft AP, Wi-Fi (ac), Screen Share (Miracast), DIAL, Bluetooth Audio Playback, LG Sound Sync/bluetooth, Mobile Connection Overlay, Music Player', './img/lg/lg61-6.png', 'https://www.lg.com/in/business/download/resources/BT00001569/BT00001569_33850.PDF'),
(7, '86UU640C', 'UU640C Series', 'Content Management/Group Management.\r\nSuperSign Control.\r\nSNMP.\r\nWake-up On Lan.\r\nCrestron ConnectedÂ® (Network Based Control)', './img/lg/lg7.jpg', ' webOS 4.0, Commercial Smart Home (Launcher Bar), Web Browser, Pre-loaded App (YouTube Only), Soft AP, Wi-Fi (ac), Screen Share (Miracast), DIAL, Bluetooth Audio Playback, LG Sound Sync/bluetooth, Mobile Connection Overlay, Music Player', './img/lg/lg71-1.png', 'https://www.lg.com/in/business/download/resources/BT00001569/BT00001569_33850.PDF'),
(8, '32LV303C', 'Essential Commercial TV with Multiple Use', 'Welcome Screen/Video.\r\nUSB Cloning.\r\nRS-232C.\r\nUSB Auto Playback.\r\nTime Scheduler', './img/lg/lg8.jpg ', ' Hotel Mode, Lock Mode, Welcome Screen/Video, Insert Image (No Signal), One Channel Map, RJP Compatibility, USB Auto playback, Time Scheduler', './img/lg/lg8-1.png', 'https://www.lg.com/in/business/download/resources/BT00001569/BT00001569_4830.pdf'),
(9, '43LT340C0TB', 'LT340C Series', 'Quick Menu.\r\nHotel Mode.\r\nUSB Cloning.\r\nWOL (Wake on LAN).\r\nSNMP.\r\nCrestron ConnectedÂ® (Network Based Control)', './img/lg/lg9.jpg', ' Quick Menu (3.0), USB Cloning, Wake On LAN, SNMP, Self Diagnostics (USB), HTNG-CEC (1.4), Simplink (HDMI-CEC, 1.4), IR Out, Multi IR Code, Hotel Mode/Installer Menu, Insert Image, Lock mode (Limited), Welcome Video/Screen, One Channel Map, External Speaker Out, RJP Compatibility, USB Auto playback/USB Auto playback+, Auto Off/Sleep Timer, Smart Energy Saving, Crestron Connectedâ“‡ (Network Based Control), Time Scheduler, Cromecast anti cover (optional), Anti-theft System (Kensington Lock, Credenza/Security Screw Hole, Lock Down Plate)', './img/lg/lg9-1.png', 'https://www.lg.com/in/business/download/resources/BT00001569/BT00001569_33530.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `localhost_to_server`
--

CREATE TABLE `localhost_to_server` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `localhost_to_server`
--

INSERT INTO `localhost_to_server` (`id`, `name`, `city`) VALUES
(30, 'Rajesh', 'jaipur'),
(29, 'Rajesh', 'jaipur'),
(28, 'Rajesh', 'jaipur'),
(27, 'Rajesh', 'jaipur'),
(26, 'Rajesh', 'jaipur'),
(25, 'Rajesh', 'jaipur'),
(24, 'Rajesh', 'jaipur'),
(23, 'Rajesh', 'jaipur'),
(22, 'Rajesh', 'jaipur'),
(21, 'Rajesh', 'jaipur'),
(20, 'Rajesh', 'jaipur'),
(19, 'Rajesh', 'jaipur');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `email` varchar(3000) NOT NULL,
  `password` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(1, 'rajesh007prajapati@gmail.com', 'admin@123'),
(2, 'dipankar.khandelwal@bispl.net.in', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `molex`
--

CREATE TABLE `molex` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `molex`
--

INSERT INTO `molex` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, 'molex1', 'MIIM FIBER OPTIC PATCH CORD', 'Robust duplex housings protect fibers.\r\nMonitoring contact interfaces with MIIM fiber patch panels.\r\nMIIM patch cords are constructed from two fibers contained in an outer jacket.\r\nStandard jacket material is Low Smoke Zero Halogen (LS0H).\r\nAvailable in singlemode (OS1 & 2) and multimode (OM1, 2, 3 & 4) constructions', './img/molex/molex1.jpg', ' Robust duplex housings protect fibers. Monitoring contact interfaces with MIIM fiber patch panels. MIIM patch cords are constructed from two fibers contained in an outer jacket. Standard jacket material is Low Smoke Zero Halogen (LS0H). Available in singlemode (OS1 & 2) and multimode (OM1, 2, 3 & 4) constructions', './img/molex/1-1.png', ''),
(2, 'molex2', 'MIIM FIBER OPTIC PATCH CORD', 'Robust duplex housings protect fibers.\r\nMonitoring contact interfaces with MIIM fiber patch panels.\r\nMIIM patch cords are constructed from two fibers contained in an outer jacket.\r\nStandard jacket material is Low Smoke Zero Halogen (LS0H).\r\nAvailable in singlemode (OS1 & OS2) and multimode (OM1, OM2, OM3 & OM4) constructions', './img/molex/molex2.jpg', ' Robust duplex housings protect fibers. Monitoring contact interfaces with MIIM fiber patch panels. MIIM patch cords are constructed from two fibers contained in an outer jacket. Standard jacket material is Low Smoke Zero Halogen (LS0H). Available in singlemode (OS1 & OS2) and multimode (OM1, OM2, OM3 & OM4) constructions', './img/molex/1-2.png', ''),
(3, 'molex3', 'MOLEX POWER CAT 6', '4 Pair. LS0H Cable,. Purple,. 305m Box', './img/molex/molex3.png', ' 4 Pair. LS0H Cable,. Purple,. 305m Box', './img/molex/1-3.png', ''),
(4, 'molex4', 'DATAGATE JACK', 'The DataGate jack is designed to\r\nmaintain clean secure connections.\r\nThe RJ-45 jack features a patented\r\nâ€˜spring-loaded shutterâ€™ which protects\r\nit from dust and contaminants as well\r\nas provides tactile feedback â€“t he\r\nspring-loaded shutter pops out an\r\nimproperly seated patch cord â€“ all with\r\nsingle-handed plug-in and removal.\r\nDataGate jacks utilize patented IDC\r\nV-shaped contacts that flex not fatigue\r\nwhen terminated.', './img/molex/molex4.png', ' The DataGate jack is designed to maintain clean secure connections. The RJ-45 jack features a patented â€˜spring-loaded shutterâ€™ which protects it from dust and contaminants as well as provides tactile feedback â€“t he spring-loaded shutter pops out an improperly seated patch cord â€“ all with single-handed plug-in and removal. DataGate jacks utilize patented IDC V-shaped contacts that flex not fatigue when terminated.', './img/molex/1-4.png', 'http://bispl.net.in/wp-content/uploads/2017/datasheet/DataGate-Jack-Category-3-8W-USOC.pdf'),
(5, 'molex5', 'MT RJ CONNECTOR MALE', 'MM Composite Ferrule 2mm Boot Black', './img/molex/molex5.png', ' MM Composite Ferrule 2mm Boot Black', './img/molex/1-5.png', ''),
(6, 'molex6', 'TELECOM OUTLET UNLOADED', '', './img/molex/molex6.png', ' ', './img/molex/1-6.png', ''),
(7, 'molex7', '90 DEGREE BOOT OPTICAL FIBER PATCH CORD', 'SC 90SC 90 DUP Multimode OM3 2M', './img/molex/molex7.png', ' SC 90SC 90 DUP Multimode OM3 2M', './img/molex/1-7.png', ''),
(8, 'molex8', 'ENHANCED CATEGORY 5', '8W Feed Through Adapter Black', './img/molex/molex8.png', ' 8W Feed Through Adapter Black', './img/molex/1-8.png', ''),
(9, 'molex9', 'LC INDUSTRIAL CONNECTOR', 'Phosphor Bronze Alignment Sleeve MM Black', './img/molex/molex9.png', ' Phosphor Bronze Alignment Sleeve MM Black', './img/molex/1-9.png', ''),
(10, 'molex10', 'RING RUN PANEL', '', './img/molex/molex10.png', ' ', './img/molex/1-10.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `ncomputing`
--

CREATE TABLE `ncomputing` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ncomputing`
--

INSERT INTO `ncomputing` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, 'L250', 'L250', '(1) USB 2.0 ports.\r\nVGA monitor port.\r\n1440 x 900 max resolution (16:9).\r\n1280 x 1024 max resolution (4:3).\r\n(2) USB 1-1 for keyboard & mouse.\r\n\r\nRemote USB 2-0.\r\nMicrophone.\r\nHeadphone.\r\nUSB 1-1 for Keyboard.\r\nUSB 1-1 for Mouse.\r\n10/100BASE-T Ethernet.\r\nVGA Monitor.\r\n12V DC In.\r\nPower Switch.', './img/ncomputing/L250.png', '  Remote USB 2-0. Microphone. Headphone. USB 1-1 for Keyboard. USB 1-1 for Mouse. 10/100BASE-T Ethernet. VGA Monitor. 12V DC In. Power Switch.', './img/ncomputing/L2501-1.png', ''),
(2, 'L300', 'L300', '(2) USB 2-0 ports.\r\nVGA monitor port.\r\n1920 x 1080 max resolution (16:9).\r\n1600 x 1200 max resolution (4:3).\r\n(2) USB 1-1 for keyboard & mouse\r\n', './img/ncomputing/L300_1.png', '  (2) Remote USB 2-0. Headphone. Microphone. Keyboard. Mouse. 10/100BASE-T Ethernet. VGA Monitor. 12V DC In. Power Switch', './img/ncomputing/L3001-1.png', ''),
(3, 'mx100', 'MX100S', 'Slash acquisition cost by 65%, maintenance cost by 80% and energy cost by 90% (compared to an all PC solution).\r\nDeliver up to 70% saving in TCO over 5 years.\r\nExtend your desktop refresh periods by a factor of two\r\nOne MX100 kit supports 3-users and costs less than a single PC.\r\nFewer PCs to manage equals lower computing costs per user.\r\nBetter utilization of IT resources.\r\nNComputings lowest cost per seat thin client offering\r\n\r\n\r\n\r\n', './img/ncomputing/MX100-front.png', ' The NComputing MX-series is our latest 3-user thin client kit that changes the game for affordable and green computing. It is a desktop virtualization solution comprising of vSpace Server software and MX-series thin client access devices.  The MX-series rewrites new affordability standards in shared computing by slashing as much as 65% in acquisition cost, 80% in maintenance cost and 90% in energy cost when compared to an all PC-based solution. Made possible by the MX-seriesâ€™ simplicity, high performance, manageability, security and low cost.  The MX-series combines the best features of NComputingâ€™s widely popular M-series and X-series with enhanced multimedia performance, superior graphics and support for the Gigabit network.  The green advantage of MX100 helps organizations pursue their missions, with effective IT solutions, while at the same lessening their environmental impact.', './img/ncomputing/MX1001-1.png', ''),
(4, 'RX300', 'RX300', 'Power in (5-1V micro USB).\r\nHDMI video output.\r\nSpeaker jack (16bit/44kHz/Stereo high quality audio).\r\n10/100 Mbps Ethernet RJ45 port.\r\n4 High-Speed USB 2-0 ports with full USB redirection support (2 required for mouse and keyboard).\r\nKensington security port.\r\nSleep mode button disables display output for power saving mode', './img/ncomputing/RX300.png', ' NComputing has delivered more than 3 million low-cost thin clients worldwide. Our latest, the RX300, is built for productivity using the Raspberry Pi 3 platform.  The RX300 is a cloud-ready thin client designed and optimized specifically for NComputingâ€™s award-winning vSpace Pro desktop virtualizations, NComputing VERDE VDI and Microsoft Remote Desktop Services. RX300 features full-screen, full-motion HD multimedia playback with NComputing vCAST Streaming and support for Microsoft RemoteFX, WiFi connectivity, built-in transparent USB redirection with broad peripheral support, and optional access to Linux Raspbian OS managed by the IT admin.  The RX300 delivers a rich PC-like experience and provides a simple-to-deploy, centrally managed, high-performance virtual desktop, perfect for use in SMB and education.', './img/ncomputing/RX3001-1.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `netrack_floor_mount`
--

CREATE TABLE `netrack_floor_mount` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `netrack_floor_mount`
--

INSERT INTO `netrack_floor_mount` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, 'floor1', 'Floor Mount Racks - FMOD', 'FMOD Series, General Electronics Floor mount Racks for Outdoor Application and Designed to meet IP56 with Fan & IP66 without Fan (Ingress protection) requirement. Racks manufactured out of Galvanized Steel sheet punched, formed, welded and to withstand the Harsh Outdoor condition the racks are specially powder coated dual coat with primer & pure polyester powder.\r\n\r\nRacks are manufactured with highest quality standards under stringent ISO 9001 | ISO 14001 | ISO 27001 | ISO 45001 Manufacturing & Quality management system.\r\n\r\nStandard for Racks will be fully welded frame with integrated side panel and Associated Front & Back Metal Door with 3 Point lock & Key and provision to mount racks on Floor.\r\n\r\nAvailable from 6RU to 27RU Variants with 600 & 800 Width and 600~800 Depth configurations.\r\n\r\nFan mounting provision can be on sides or top with canopy with filter unit to meet IP 56 (Ingress protection) requirements.', './img/netrack/floor mount/floor1.png', ' FMOD Series, General Electronics Floor mount Racks for Outdoor Application and Designed to meet IP56 with Fan & IP66 without Fan (Ingress protection) requirement. Racks manufactured out of Galvanized Steel sheet punched, formed, welded and to withstand the Harsh Outdoor condition the racks are specially powder coated dual coat with primer & pure polyester powder.  Racks are manufactured with highest quality standards under stringent ISO 9001 | ISO 14001 | ISO 27001 | ISO 45001 Manufacturing & Quality management system.  Standard for Racks will be fully welded frame with integrated side panel and Associated Front & Back Metal Door with 3 Point lock & Key and provision to mount racks on Floor.  Available from 6RU to 27RU Variants with 600 & 800 Width and 600~800 Depth configurations.  Fan mounting provision can be on sides or top with canopy with filter unit to meet IP 56 (Ingress protection) requirements.', './img/netrack/floor mount/1-1.png', 'https://www.netrackindia.com/pdf/Outdoor-Cabinet/Floor-Mount-Outdoor-Cabinets-FMOD-600-070520.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `netrack_kvm`
--

CREATE TABLE `netrack_kvm` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `netrack_kvm`
--

INSERT INTO `netrack_kvm` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(2, 'kvm1', 'DKX3 High Performance KVM-over-IP S', 'The DominionÂ® KX III is an enterprise-class KVM-over-IP switch that provides 1, 2, 4 or 8 users with remote BIOS-level control of 8 to 64 servers. It comes with standard features such as DVI/HDMI/DisplayPort digital and analog video, audio, virtual media, smart card/CAC, blade server support, and mobile access. Deploy it alone, or with Raritanâ€™s CommandCenterÂ® Secure Gateway (CC-SG) for centralized access to all KX IIIs; or with the User Station for hassle-free IP KVM access.\r\n\r\nKVM-over-IP access in a self-contained, low-maintenance appliance. Its productive user interface supports two 1080p video sessions at 30 FPS, simultaneous access to eight or more servers, dual monitors, audio and virtual media.', './img/netrack/kvm/kvm1.png', ' The DominionÂ® KX III is an enterprise-class KVM-over-IP switch that provides 1, 2, 4 or 8 users with remote BIOS-level control of 8 to 64 servers. It comes with standard features such as DVI/HDMI/DisplayPort digital and analog video, audio, virtual media, smart card/CAC, blade server support, and mobile access. Deploy it alone, or with Raritanâ€™s CommandCenterÂ® Secure Gateway (CC-SG) for centralized access to all KX IIIs; or with the User Station for hassle-free IP KVM access.  KVM-over-IP access in a self-contained, low-maintenance appliance. Its productive user interface supports two 1080p video sessions at 30 FPS, simultaneous access to eight or more servers, dual monitors, audio and virtual media.', './img/netrack/kvm/kvm1-1.png', 'https://www.netrackindia.com/pdf/kvm-ips.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `netrack_wall_mount`
--

CREATE TABLE `netrack_wall_mount` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `netrack_wall_mount`
--

INSERT INTO `netrack_wall_mount` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, 'wall1', 'Wall Mount Racks - WMOD', 'WMOD Series, Wall mount Racks for Outdoor Application and Design to meet IP56 with Fan & IP66 without Fan (Ingress protection) requirement. Rack are manufactured out of Galvanized Steel sheet punched, Format, welded to withstand the outdoor bad condition the racks are specially powered coated by Duel coat with primer & pure polyester Power.\r\n\r\nRacks are manufactured with highest quality standards under stringent ISO 9001 | ISO 14001 | ISO 27001 | ISO 45001 Manufacturing & Quality management system.\r\n\r\nAvailable from 6RU~15RU Variants, 600 wide and 400~600 Depth with Double louver cover configurations. Fan mounting provision can be on side or bottom with filter unit to meet IP56 (Ingress protection) Requirements.', './img/netrack/wall mount/wall1.png', ' WMOD Series, Wall mount Racks for Outdoor Application and Design to meet IP56 with Fan & IP66 without Fan (Ingress protection) requirement. Rack are manufactured out of Galvanized Steel sheet punched, Format, welded to withstand the outdoor bad condition the racks are specially powered coated by Duel coat with primer & pure polyester Power.  Racks are manufactured with highest quality standards under stringent ISO 9001 | ISO 14001 | ISO 27001 | ISO 45001 Manufacturing & Quality management system.  Available from 6RU~15RU Variants, 600 wide and 400~600 Depth with Double louver cover configurations. Fan mounting provision can be on side or bottom with filter unit to meet IP56 (Ingress protection) Requirements.', './img/netrack/wall mount/1-1.png', 'https://www.netrackindia.com/pdf/Outdoor-Cabinet/Wall-Mount-Racks-WMOD-apr10.pdf'),
(2, 'kvm1', 'DKX3 High Performance KVM-over-IP S', 'The DominionÂ® KX III is an enterprise-class KVM-over-IP switch that provides 1, 2, 4 or 8 users with remote BIOS-level control of 8 to 64 servers. It comes with standard features such as DVI/HDMI/DisplayPort digital and analog video, audio, virtual media, smart card/CAC, blade server support, and mobile access. Deploy it alone, or with Raritanâ€™s CommandCenterÂ® Secure Gateway (CC-SG) for centralized access to all KX IIIs; or with the User Station for hassle-free IP KVM access.\r\n\r\nKVM-over-IP access in a self-contained, low-maintenance appliance. Its productive user interface supports two 1080p video sessions at 30 FPS, simultaneous access to eight or more servers, dual monitors, audio and virtual media.', './img/netrack/kvm/kvm1.png', ' The DominionÂ® KX III is an enterprise-class KVM-over-IP switch that provides 1, 2, 4 or 8 users with remote BIOS-level control of 8 to 64 servers. It comes with standard features such as DVI/HDMI/DisplayPort digital and analog video, audio, virtual media, smart card/CAC, blade server support, and mobile access. Deploy it alone, or with Raritanâ€™s CommandCenterÂ® Secure Gateway (CC-SG) for centralized access to all KX IIIs; or with the User Station for hassle-free IP KVM access.  KVM-over-IP access in a self-contained, low-maintenance appliance. Its productive user interface supports two 1080p video sessions at 30 FPS, simultaneous access to eight or more servers, dual monitors, audio and virtual media.', './img/netrack/kvm/kvm1-1.png', 'https://www.netrackindia.com/pdf/kvm-ips.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `renewalmail`
--

CREATE TABLE `renewalmail` (
  `id` int(100) NOT NULL,
  `mailto` varchar(100) DEFAULT NULL,
  `mailfrom` varchar(100) DEFAULT NULL,
  `mailcc` varchar(100) DEFAULT NULL,
  `mailsubject` varchar(100) DEFAULT NULL,
  `mailmessage` varchar(100) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `renewalmail`
--

INSERT INTO `renewalmail` (`id`, `mailto`, `mailfrom`, `mailcc`, `mailsubject`, `mailmessage`, `created_at`) VALUES
(1, 'dsf@gmail.com', 'sales@bispl.net.in', 'info@bispl.net.in', ' ', '', '2020-11-22 20:11:50.936329'),
(2, 'rajesh007prajapati@gmail.com', 'sales@bispl.net.in', 'info@bispl.net.in', ' Hii', 'Tesing', '2020-11-22 20:13:09.058431'),
(3, 'dsf@gmail.com', 'sales@bispl.net.in', 'info@bispl.net.in', ' new mail', 'hiiiii', '2020-11-23 11:29:07.151007'),
(4, 'dipankar.khandelwal@gmail.com', 'sales@bispl.net.in', 'info@bispl.net.in', ' test', 'test FGT80E4Q17009927', '2020-11-29 12:50:16.169702'),
(5, 'chandrapal0512@gmail.com', 'sales@bispl.net.in', 'rajneesh.srivastava@bispl.net.in,sales@bispl.net.in', ' FG80C Expiry ', 'Dear Sir,\r\n\r\nYour customer FG License have been expired ,please cross check with customer .\r\n\r\nSeria', '2020-12-04 13:37:56.451304'),
(6, 'dlyadav@htplonline.com', 'sales@bispl.net.in', 'sales@bispl.net.in', ' FG/Renewal -HINDUSTAN TRADECOM PVT. LTD.', 'Dear Sir,\r\n\r\nGreetings from Binary Info Solutions Pvt Ltd  !!!\r\n\r\nBIS is the Authorized R Distribute', '2020-12-28 06:59:05.941756');

-- --------------------------------------------------------

--
-- Table structure for table `tallydatainv`
--

CREATE TABLE `tallydatainv` (
  `perticular` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tallydatainv`
--

INSERT INTO `tallydatainv` (`perticular`, `qty`, `rate`, `amount`) VALUES
('12/U 400RACK (COMPUTER RACK)', '15 No', '2324.44', '-34866.59'),
('12U/500 RACK (COMPUTER RACK )', '5 No', '2834.13', '-14170.64'),
('12U/600 RACK (COMPUTER RACK )', '1 No', '3556.11', '-3556.11'),
('15U/400 RACK (FOR COMPUTER RACK)', '4 No', '2528.50', '-10114.00'),
('15U/500 RACK (FOR COMPUTER RACK)', '5 No', '2840.69', '-14203.44'),
('15U/600 RACK (FOR COMPUTER RACK)', '3 No', '3371.00', '-10113.00'),
('22U RACK FRAME /600X1000/STEEL/NRS1/CASTER TYPE 2', '1 No', '9327.24', '-9327.24'),
('22U RACK FRAME /600X600/STEEL/FM/CASTERS TYPE 1', '2 No', '7493.29', '-14986.57'),
('22U RACK FRAME /600X800/STEEL/NRS1/CASTERS TYPE 2', '2 No', '9916.88', '-19833.76'),
('2.4GHZ 13 DBI MIMO OMNI ANTENNA', '1 No', '3000.00', '-3000.00'),
('24 Volt POE Adaptor', '15 No', '500.00', '-7500.00'),
('27U RACK FRAME /600X1000/STEEL/NRS1 CASTER TYPE 2', '1 No', '10339.67', '-10339.67'),
('27U RACK FRAME /600X600/STEEL /FM /CASTERS TYPE 1', '1 No', '8436.61', '-8436.61'),
('27U RACK FRAME /600X800/STEEL/NRS1/CASTERS TYPE 2', '1 No', '8896.92', '-8896.92'),
('32U RACK FRAME /600X1000/STEEL/CASTERS TYPE 2', '2 No', '12438.08', '-24876.15'),
('32U RACK FRAME /600X650/STEEL/NRS1/CASTER TYPE 2', '1 No', '9584.07', '-9584.07'),
('32U RACK FRAME /600X800/STEEL/NRS1/CASTER TYPE 2', '1 No', '11012.38', '-11012.38'),
('42U 600X1000 TOP COVER', '1 No', '2500.00', '-2500.00'),
('42U RACK FRAME /600X1000/STEEL/NRS1 CASTERS TYPE 2', '3 No', '14140.44', '-42421.33'),
('42U RACK FRAME /600X650/STEEL/NRS1/CASTERS TYPE 2', '1 No', '10703.82', '-10703.82'),
('42U RACK FRAME /600X800/STEEL/NRS1 /CASTERS TYPE 2', '2 No', '9250.06', '-18500.12'),
('42U RACK FRAME /800X1000/STEEL /NRS1/CASTERS TYPE 2', '2 No', '15984.08', '-31968.15'),
('48 Volt POE Injector 10/100', '19 No', '502.51', '-9547.63'),
('4IP NET HSG 326', '1 No', '12000.00', '-12000.00'),
('4U/400 RACK (COMPUTER RACK)', '5 No', '1184.47', '-5922.36'),
('4U/400 Rack/WMOD/Metal Door/Outdoor/IP55', '1 No', '4565.00', '-4565.00'),
('6U/400 RACK (COMPUTER RACK)', '15 No', '1492.17', '-22382.51'),
('6U/500 RACK (COMPUTER RACK)', '4 No', '1808.65', '-7234.60'),
('9U/400 RACK (COMPUTER RACK )', '11 No', '1799.56', '-19795.15'),
('9U/500 RACK (COMPUTER RACK)', '3 No', '2023.91', '-6071.72'),
('9U/600 RACK (COMPUTER RACK )', '2 No', '2913.14', '-5826.28'),
('AC600 High Wifi Outdoor Ap', '4 No', '3000.00', '-12000.00'),
('AIR600 CEILIING MOUNT ACCESS POINT', '2 No', '2975.00', '-5950.00'),
('AIR BGN-1122 (300 MBPS ROUTER)', '10 No', '580.76', '-5807.59'),
('AIR BRIDGE 5.8 GHZ', '1 No', '1411.11', '-1411.11'),
('AIR CONNECT2', '4 No', '2050.00', '-8200.00'),
('AIRDRONA 2321 2.4 12DBI CPE', '8 No', '2176.47', '-17411.76'),
('AIR LAKSHYA 2.4 GHZ 300 MBPS AP/CLIENT', '1 No', '2600.00', '-2600.00'),
('AIR M1200 MBPS CEILLING MOUNT', '3 No', '6000.00', '-18000.00'),
('AIR-M600 MBPS CEILLING MOUNT AP', '8 No', '3150.00', '-25200.00'),
('AIR M-750 DUAL BAND ACCESS POINT', '5 No', '3276.63', '-16383.13'),
('Air MO-1200 MBPS Outdoor AP', '6 No', '7236.75', '-43420.51'),
('AIR MO-750 MBPS OUTDOOR AP', '2 No', '4800.00', '-9600.00'),
('Airpro Cat 6 UTP 305 MTR Cable', '7 No', '3600.00', '-25200.00'),
('Air Setu 2.4 G', '3 No', '4587.50', '-13762.50'),
('AIR WAP1100-300MBPS (RJ45+RJ11)', '5 No', '1850.00', '-9250.00'),
('AP-1208-2GE', '20 No', '3000.00', '-60000.00'),
('AP 1208 8+2 UPLINK SWITCH', '11 No', '2650.00', '-29150.00'),
('AP1216 16PORT POE SWITCH', '15 No', '6175.56', '-92633.35'),
('AP1224 24 PORT POE UNMANAGED SWITCH', '6 No', '9925.65', '-59553.91'),
('AP-16PORT REVERSE POE SWITCH', '5 No', '3500.00', '-17500.00'),
('AP 24 PORT LOADED PATCH PANEL', '2 No', '1300.00', '-2600.00'),
('AP 2 PORT SYNWALL PLATE', '100 No', '27.00', '-2700.00'),
('AP CAT 6 10\' PATCH CORD', '50 No', '40.00', '-2000.00'),
('AP CAT 6 1MTR  PATCH CORD', '50 No', '45.00', '-2250.00'),
('AP DATAGATE I/O JACK SHUTTERED', '100 No', '50.00', '-5000.00'),
('AP DATAGATE I/O JACK UNSHUTTERED', '100 No', '40.00', '-4000.00'),
('AP-ES106P (AP 1205) Switch', '21 No', '1424.36', '-29911.54'),
('AP -ES 1424', '1 No', '11800.00', '-11800.00'),
('AP-ESG105P', '2 No', '3000.00', '-6000.00'),
('AP-ESG108P (AP1208)Camera POE Switch', '56 No', '2391.17', '-133905.67'),
('AP ESG 1910P-2GE', '18 No', '4434.03', '-79812.59'),
('AP-GS1008 PORT POE SWITCH', '22 No', '941.66', '-20716.52'),
('AP-GS-1024', '2 No', '3250.00', '-6500.00'),
('AP-GS-1905', '2 No', '2675.46', '-5350.91'),
('AP-GS-1910P 8Port  Fiber Switch', '10 No', '5129.03', '-51290.32'),
('Ap GS1926 24G+2SFP Fibre Ports Switch with 24 Poe', '3 No', '13550.00', '-40650.00'),
('AP -POE 1000G ADAPTOR', '15 No', '620.00', '-9300.00'),
('ASUSTER 4 BAY NAS AS1004T', '2 No', '15782.00', '-31564.00'),
('ATVI 900 Thin Client', '3 No', '2041.64', '-6124.91'),
('Cantilaver Shelf Tray (N)', '13 No', '138.91', '-1805.83'),
('CANTILEVER SHELF /TYPE2/1U', '5 No', '224.87', '-1124.35'),
('Data Projector MS506P SVGA Solely Usable (BenQ)', '1 No', '17847.94', '-17847.94'),
('Ekin 200', '9 No', '2124.88', '-19123.90'),
('EKIN 300E (2GB/32GB) WITH WINDOWS', '2 No', '9500.00', '-19000.00'),
('EKIN/300WE/A', '1 No', '6101.69', '-6101.69'),
('EKIN-IWB7900/EKIN INTERACTIVE WHITE BOARD', '1 No', '17357.93', '-17357.93'),
('ES1108 8PORT 10/100 ETHERNET SWITCH', '31 No', '396.81', '-12301.21'),
('ES1116 16 PORT ETHERNET SWITCH', '2 No', '1100.00', '-2200.00'),
('ES1404 4+1 PORT 24V POE SWITCH', '7 No', '1790.00', '-12530.00'),
('ES1408 24V POE SWICTH', '3 No', '3619.51', '-10858.52'),
('FG100E Three  Year 8x5 Bundle Subscription Applianc', '4 No', '63000.00', '-252000.00'),
('FG100E Three  Year 8x5 LICENSE', '4 No', '103000.00', '-412000.00'),
('FG30E Three  Year 8x5 Bundle Subscription Appliance', '10 No', '9500.00', '-95000.00'),
('FG30E Three  Year 8x5 LICENSE', '10 No', '13500.00', '-135000.00'),
('FG50E Three  Year 8x5 Bundle Subscription Appliance', '4 No', '19000.00', '-76000.00'),
('FG50E Three  Year 8x5  LICENSE', '4 No', '27000.00', '-108000.00'),
('FG60E Three  Year 8x5 Bundle Subscription Appliance', '3 No', '21000.00', '-63000.00'),
('FG60E Three  Year 8x5 LICENSE', '2 No', '32000.00', '-64000.00'),
('Filter Unit/Double Louvered Module /IP55', '1 No', '990.00', '-990.00'),
('GLASS DOOR/600/32U/NRS1 (COMPUTER RACK )', '2 No', '861.88', '-1723.75'),
('GLASS DOOR /600/42U/NRS1 (COMPUTER RACK )', '1 No', '1962.38', '-1962.38'),
('Horz.Cable Organiser/1I/Channel on Front', '46 No', '234.67', '-10794.90'),
('Horz.Cable Organiser /1U/loop', '49 No', '128.26', '-6284.98'),
('HORZ. CABLE ORGANISER/2U/LOOP', '5 No', '162.50', '-812.50'),
('ITE NETWORK CIRCULATION MODULE 90CFM', '22 No', '393.58', '-8658.75'),
('ITE NETWORK CIRCULATION MODULE 90 CFM N', '11 No', '235.00', '-2585.00'),
('ITE/SERVER  RACJ AIR CIRCULATION MODULE /TOWER /180', '8 No', '971.92', '-7775.37'),
('ITE/SERVER RACK AIR CIRCULATION /TOWER /360 CFM', '13 No', '1877.39', '-24406.06'),
('Keyboard Shelf/19\'/Rty/800D (For Computer Rack)', '2 No', '800.00', '-1600.00'),
('LEVELLERS (COMPUTER RACK)', '5 No', '191.75', '-958.75'),
('MEDIA CONVERTOR SF 20KM 1310 GIGA', '10 No', '1400.00', '-14000.00'),
('MEDIA CONVERTOR SF-20KM 1550 GIGA', '10 No', '1400.00', '-14000.00'),
('Media Convertor SMDF 20 KM 100FX', '5 No', '750.00', '-3750.00'),
('Media Convertor SMDF Giga 20KM', '1 No', '1383.34', '-1383.34'),
('Molex Cat 6 Datagate Panel 24 Port (Loaded)  PID-00141\r\n', '1 No', '2500.00', '-2500.00'),
('Mounting Hardware -CR (PACK OF 10) (N)', '-65 No', '33.18', '2156.56'),
('Mounting Hardware -CR (PACK OF 20)', '-13 No', '59.74', '776.68'),
('OLT SFP-PX20', '2 No', '4500.00', '-9000.00'),
('OPTICAL TOUCH BOARD 82 DIAGONAL EKIN IWB 8000', '3 No', '16000.00', '-48000.00'),
('PIGTAIL CABLE', '2 No', '200.00', '-400.00'),
('POWER CORD 15 MTR', '5 No', '280.00', '-1400.00'),
('PROJECTOR MOUNT 2\'FT MS', '9 No', '365.00', '-3285.00'),
('Projector Mount 3\'Feet MS', '23 No', '425.00', '-9775.00'),
('PROJECTOR WALL MOUNT 4FT\' MST', '28 No', '1096.49', '-30701.75'),
('P.S Elegent 8x10 American MW Insta Lock', '3 No', '4600.00', '-13800.00'),
('P.S Lite 4X6 MW Insta Lock', '9 No', '1128.41', '-10155.69'),
('P.S Lite 4x6 MW Tripod', '2 No', '1706.67', '-3413.33'),
('P.S Lite 5x7 MW Insta Lock', '6 No', '1400.00', '-8400.00'),
('P.S Lite 5x7 MW Tripod', '2 No', '2175.00', '-4350.00'),
('P.S Lite 6x8 MW Insta Lock', '8 No', '2158.21', '-17265.64'),
('P.S Lite 6x8 MW Tripod', '2 No', '2666.67', '-5333.33'),
('P.S PRIME 4X6 AMERCAN MW MOTORISED', '3 No', '3200.00', '-9600.00'),
('P.S Prime 5x7 American MW Motorised', '3 No', '3500.00', '-10500.00'),
('P.S Prime 6X8 American MW Motorised', '1 No', '4350.00', '-4350.00'),
('P.S Prime 8 X 10 AMERICAN MW Motorised', '3 No', '6920.00', '-20760.00'),
('RACK GROUND BUS BAR/VERTICAL/19X3/1800', '2 No', '1670.50', '-3341.00'),
('S100/VCLOUD THIN CLIENT', '15 No', '5067.19', '-76007.81'),
('Sdfsdf', '10 No', '50.00', '-500.00'),
('SERVER /IT RACK MOUNT PDU 10 XINDIAN ROUND PIN 5A', '10 No', '927.11', '-9271.14'),
('SERVER/IT RACK PDU 12X INDIAN ROUND PIN 5/15A', '3 No', '1796.56', '-5389.67'),
('SERVER/IT RACK PDU 6X INDIAN ROUND PIN 5/15A', '12 No', '737.00', '-8844.03'),
('SERVER/IT RACK PDU 6X INDIAN ROUND PIN 5A', '20 No', '420.36', '-8407.23'),
('SERVER/IT RACK PDU 6X INDIAN ROUND PIN 5A (N)', '1 No', '250.00', '-250.00'),
('Shelf/1000 (For Computer Rack)', '10 No', '698.92', '-6989.15'),
('Shelf/600 (For Computer Rack)', '9 No', '378.55', '-3406.95'),
('Shelf/800 (For Computer Rack)', '8 No', '496.82', '-3974.54'),
('Shelf/key Board/19\'Rty /1000', '4 No', '659.91', '-2639.65'),
('Shelf/key Board/19\'Rty /650', '2 No', '625.00', '-1250.00'),
('Sliding Shelf/10/1000', '4 No', '975.00', '-3900.00'),
('TL -POE 150 S ADAPTOR', '2 No', '950.00', '-1900.00'),
('UNIVERSAL RACK GROUND KIT TYPE -1', '2 No', '393.24', '-786.48'),
('USB Extender 10 MTR  Male to Female Cable', '1 No', '1800.00', '-1800.00'),
('Vertical Cable Organiser /30U/Loop/Black', '10 No', '212.51', '-2125.07'),
('Verticle Cable Organiser/38U/Loop', '9 No', '234.00', '-2106.00'),
('VGA CABLE 10 MTR', '1 No', '790.00', '-790.00'),
('VGA CABLE 15 MTR', '6 No', '900.00', '-5400.00'),
('XDS100 MBPS CEILLING MOUNT AP 24 VOLT', '-1 No', 'Array', 'Array'),
('XDS 300 MBPS Ceilling Mount', '8 No', '1413.46', '-11307.69'),
('XDS9510  300 Mbps Celling Mount', '2 No', '1918.18', '-3836.36');

-- --------------------------------------------------------

--
-- Table structure for table `testdata`
--

CREATE TABLE `testdata` (
  `id` int(100) NOT NULL,
  `product_id` varchar(5000) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `specification` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(5000) NOT NULL,
  `general_details` varchar(5000) NOT NULL,
  `specification_image` varchar(5000) NOT NULL,
  `download` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testdata`
--

INSERT INTO `testdata` (`id`, `product_id`, `name`, `specification`, `image`, `general_details`, `specification_image`, `download`) VALUES
(1, 'switch1', '6 Ports PoE Switch', 'IEEE 802-3af/at power on up to 4 ports.\r\nSupply power to wireless access points and surveillance cameras over Cat-5 /Cat6 cabling.\r\n6x 10/100 Mbps Ports with AutoUplinkâ„¢.\r\nSupports PoE power up to 15-4W / 30W for each PoE port.\r\nSupports PoE IEEE 802-3af/at compliant PDs.\r\nSupports IEEE 802-3x flow control for Full-duplex Mode and backpressure for Half-duplex Mode.\r\nSupport VLAN Mode and Extend 250meters.\r\nInternal Power Adapter Supply 52V1.25A / 65W.\r\nPort Lightning Protection: General Mode 4KV, Differential Mode 2KV, ESD 8KV.', './img/airpro/poe switch/switch1.png', ' Flexible: Choose to plug in up to five Ethernet or Fast Ethernet devices and mix in up to four IEEE802.3af/at IP-based devices like wireless access points or IP-based network surveillance cameras. Place these IEEE802.3af/at-compliant devices where they belong â€“ high up on walls and ceiling for maximum coverage â€“ or anywhere else you need them. Power and data are carried over standard Cat 5 cabling.  Plug and Play: The standards-based PoE Switch senses and adjusts for network speed and cabling type automatically, for easy integration into your existing 10/100 Ethernet network. For PoE, the switch automatically detects IEEE802.3af/at-compliant devices, and supplies power as needed. Front panel LEDs keep you informed of switch and PoE status.  Quiet and Compact: Engineered for compact convenience, it durable metal case that is easily positioned on your desktop or a wall, using the included mounting hardware. The fan-less design quietly integrates with your small office environment.', './img/airpro/poe switch/1-1.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ES106P.pdf'),
(2, 'switch2', '10 Ports PoE Switch', 'IEEE 802-3af/at power on up to 8 ports.\r\nSupply power to wireless access points and surveillance cameras over Cat-5/6 cabling.\r\n10x 10/100 Mbps Ports with AutoUplink™\r\nSupports PoE power up to 15.4W / 30W for each PoE port.\r\nSupports PoE power up to 150W for all PoE ports.\r\nSupports PoE IEEE 802-3af/at compliant PDs.\r\nSupports IEEE 802-3x flow control for Full-duplex Mode and backpressure for Half-duplex Mode.\r\n1K entry MAC address table of the PoE Switch with auto-learning and auto-aging.\r\nLED indicators for monitoring power.\r\nSupport VLAN Mode and Extend 250meters.\r\nInternal Power Adapter Supply 52V2-88A / 150W.\r\nPort Lightning Protection: General Mode 4KV, Differential Mode 2KV, ESD 15KV.', './img/airpro/poe switch/switch2.png', ' Flexible: Choose to plug in up to 8 Fast Ethernet devices and mix in up to 8 IEEE802.3af/at IP-based devices like wireless access points or IP-based network surveillance cameras. Place these IEEE802.3af/at-compliant devices where they belong â€“ high up on walls and ceiling for maximum coverage â€“ or anywhere else you need them. Power and data are carried over standard Cat 5/6 cabling.  Plug and Play: The standards-based PoE Switch senses and adjusts for network speed and cabling type automatically, for easy integration into your existing 10/100 Ethernet network. For PoE, the switch automatically detects IEEE802.3af/at-compliant devices, and supplies power as needed. Front panel LEDs keep you informed of switch and PoE status.  Quiet and Compact: Engineered for compact convenience, it durable metal case that is easily positioned on your desktop or a wall, using the included mounting hardware. The fan-less design quietly integrates with your small office environment.', './img/airpro/poe switch/1-2.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ES108P.pdf'),
(3, 'switch3', '8 Ports-2GE PoE Switch', 'IEEE 802-3af/at power on up to 8 ports.\r\nSupply power to wireless access points and surveillance cameras over Cat-5 cabling.\r\n8x 10/100 Mbps Ports with AutoUplinkâ„¢ with 2 Uplink 1000M.\r\nSupports PoE power up to 15.4W / 30W for each PoE port.\r\nSupports PoE IEEE 802-3af/at compliant PDs.\r\nSupports IEEE 802-3x flow control for Full-duplex Mode and backpressure for Half-duplex Mode.\r\nSupport VLAN Mode and Extend 250meters.\r\nInternal Power Adapter Supply 52V1.25A / 150W.\r\nPort Lightning Protection: General Mode 4KV, Differential Mode 2KV, ESD 8KV.', './img/airpro/poe switch/switch3.png', ' Flexible: Choose to plug in up to 8 Fast Ethernet devices and mix in up to 8 IEEE802.3af/at IP-based devices like wireless access points or IP-based network surveillance cameras. Place these IEEE802.3af/at-compliant devices where they belong â€“ high up on walls and ceiling for maximum coverage â€“ or anywhere else you need them. Power and data are carried over standard Cat 5 cabling.  Plug and Play: The standards-based PoE Switch senses and adjusts for network speed and cabling type automatically, for easy integration into your existing 10/100 Ethernet network. For PoE, the switch automatically detects IEEE802.3af/at-compliant devices, and supplies power as needed. Front panel LEDs keep you informed of switch and PoE status.  Quiet and Compact: Engineered for compact convenience, it durable metal case that is easily positioned on your desktop or a wall, using the included mounting hardware. The fan-less design quietly integrates with your small office environment.', './img/airpro/poe switch/1-3.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ES108P-2GE.pdf'),
(4, 'switch4', 'AP-ES1216, 19 Ports PoE Switch', 'Support IEEE802-3, IEEE802-3u, IEEE802-3x, IEEE802-3af / at, store and forward.\r\nSupports 16* 10 / 100M POE port and 2*Gigabit RJ45 ports+ 1* Gigabit SFP Fiber port.\r\nCompatible with IEEE802-3at (30W) and IEEE802-3af (15.4w).\r\nEthernet port supports 10 / 100M adaptive and POE functions.\r\nWith DIP switch support 10M transmission rate via cat.6 transmission distance of up to 250 meters.\r\nLED indicators for monitoring power, link, activity and speed.\r\nCompatible with 1U Rack-Mount Chassis Installation.\r\nSupport VLAN Mode and Extend 250meters.\r\nInternal Power Adapter Supply 52V5.76A / 300W.\r\nPort Lightning Protection: General Mode 6KV, Differential Mode 4KV, ESD 15KV.', './img/airpro/poe switch/switch4.png', ' AP-ES1216 19 ports POE Switch, Adapted high-quality high-speed network IC and the most stable POE chip, POE port to meet the IEEE802.3af / at standard, series of POE switches can be 10/100M Ethernet Network provides seamless connection, and POE power supply port can automatically detect IEEE802.3af / IEEE802.3at compliant power supply equipment and its power supply, Only transmit data for non-POE equipment.  POE technology (Power over Ethernet), it refers to some IP-based terminals (such as IP telephones, wireless access AP, network cameras, etc.) while transmitting data signals, but also for the device to provide DC power supply Technology, which receive DC power supply equipment called power receiving equipment.  This series of POE switches, using 16 POE ports + 2 uplink Gigabit Ethernet port+ 1 uplink Gigabit Fiber port, the uplink port is to connect with the network equipment which provide data.', './img/airpro/poe switch/1-4.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ES1216.pdf'),
(5, 'switch5', 'AP-ES1224, 24FE+2Gigabit 48V Ports PoE Switch with 24-Port PoE', '24 100Mbps Ports with 24 PoE,2 Gigabit Ports.\r\nSupports PoE power up to 30W for each port.\r\nSupports PoE IEEE 802-3af/at compliant PDs.\r\nInternal power adapter supply 250W.\r\nLED indicators for LINK/ACT, Power, PoE Status, 100/1000Mbps.\r\n8K entry MAC address table with auto-learning and auto-aging.', './img/airpro/poe switch/switch5.png', ' Air Pro 26-Port 100Mbps Switch with 24-Port PoE provides seamless network connection. It integrates 10/100Mbps Fast Ethernet network capabilities.  How This Product Works The 24 Auto-Negotiation RJ45 ports (port-1 to port-24) of the switch support Power over Ethernet (PoE) function. These PoE ports automatically detect and supply power to IEEE 802.3af/at compliant Powered Devices (PDs). In this position, the electrical power is transmitted along with data in one single cable allowing you to expand your network where there are no power lines or outlets, where you wish to fix devices such as APs, IP Cameras or IP Phones, etc.  Easy To Use It is easy to use as no specific configuration and installation is required. AP1224 comes with outstanding performance and quality, the 26-Port Gigabit Switch with 24-Port PoE is a great selection for expanding your home or office network.', './img/airpro/poe switch/1-5.png', 'https://airpro.in/wp-content/uploads/2017/03/AP1224.pdf'),
(6, 'switch6', 'AP-ES1024P, 27 Ports PoE Switch', 'Supports 24* 10 / 100M POE Ports + 2*Gigabit Ethernet Uplink Ports + 1* Gigabit SFP Uplink Port.\r\nSupport IEEE802-3, IEEE802-3u, IEEE802-3x, IEEE802-3af / at, store and forward.\r\nCompatible with IEEE802-3at (30W) and IEEE802-3af (15.4w).\r\nEthernet port supports 10 / 100M adaptive and POE functions.\r\nWith DIP Switch support 10M transmission rate via cat.6 transmission distance of up to 250 meters.\r\nLED indicators for monitoring power, link, activity and speed.\r\nCompatible with 1U Rack-Mount Chassis Installation.\r\nInternal Power Supply 52V5.76A / 400W.\r\nSupport VLAN Mode and Extend 250mtrs.', './img/airpro/poe switch/switch6.png', ' AirPro AP-ES1024P, 27 Ports POE Switch, Adapted high-quality high-speed network IC and the most stable POE chip, POE Port to meet the IEEE802.3af / at standard, this series of POE Switches can be 10/100M Ethernet Network provides seamless connection, and POE power supply port can automatically detect IEEE802.3af / IEEE802.3at compliant power supply equipment and Power on the devices.  POE technology (Power over Ethernet) , it refers to some IP-based terminals (such as IP telephones, wireless access AP, network cameras, etc.) while transmitting data signals, but also for the device to provide DC power supply Technology, which receive DC power supply equipment called power receiving equipment.  This series of POE Switches, using 24 * POE Ports + 2 * Gigabit Ethernet Uplink Ports + 1* Gigabit SFP  Uplink Port, the Uplink port is to connect with the network equipment which provide data.', './img/airpro/poe switch/1-6.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ES1024P.pdf'),
(7, 'switch7', 'AP-ESG1906P, 6 Ports PoE Giga Switch', 'Supply power to 5 classes Ethernet wireless access point (AP) and network surveillance cameras.\r\nPort 1 to port 4 compatible with IEEE802-3af/at standard power.\r\nSupply (Maximum power of each port is 30W).\r\n4x 10/100 /1000Mbps automatic adjustmentRJ45 ports.\r\nMeets the standards of the IEEE 802-3 /IEEE 802-3u/IEEE 802-3z and IEEE 802-3ab.\r\nFlow Control Type: Full duplex adopts IEEE 802-3x standard, half duplex adopts back pressure standard.\r\nAuto-flip ports (Auto MDI/MDIX).\r\nMaximum PoE Power: 96W.\r\nStore-and-forward architecture, 192K forwarding memory.\r\nAll ports support wire-speed switching, frame size within the range of 64 to 1536 can achieve wire-speed.\r\nAutomatic adjustment, plug and play, no need software and protocol conversion.', './img/airpro/poe switch/switch7.png', ' Flexible: Two High Speed Uplink Ports The built-in 2 Gigabit uplink ports provide fast connection to servers or the backplane of the gigabit speed. The effective connectivity of the four 10/100/1000Mbps ports, allows growing business networks, classrooms and workgroups to obtain benefits from the demand for superior performance and sustain network expansion. This high-performance switch features with non-blocking, wire-speed switching. All RJ45 ports can auto adjust the highest connection speed for a normal working, Auto Uplink â„¢ technology can ensure proper network connection.  Application Situations: â€¢    Million HD surveillance transmission and power supply. â€¢    Wireless AP distribution transmission and power supply. â€¢    VoIP transmission, intelligent home systems. â€¢    City intelligent traffic monitoring system (ITS), safe city, and wireless city. â€¢    Highway surveillance system, electronic road surveillance, snapshot system. â€¢    Large industrial factory & enterprise security surveillance system, network multifunction system.', './img/airpro/poe switch/1-7.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ESG1906P.pdf'),
(8, 'switch8', 'AP-ESG1906P-SF, 6 Ports PoE Giga Switch', 'Port 1 to port 4 compatible with IEEE802-3af/at standard power.\r\nSupply (Maximum power of each port is 15.4W).\r\n4x 10/100 /1000Mbps automatic adjustment RJ45 ports.\r\nMeets the standards of the IEEE 802-3 /IEEE 802-3u/IEEE 802-3z and IEEE 802-3ab.\r\nFlow Control Type: Full duplex adopts IEEE 802-3x standard, half duplex adopts back pressure standard.\r\nAuto-flip ports (Auto MDI/MDIX).\r\nNetwork port has lighting-proof function (AC power port: differential mode +/-2kV, common mode +/-4kV).\r\nMaximum PoE Power: 65W.\r\nStore-and-forward architecture, 192K forwarding memory .\r\nAll ports support wire-speed switching, frame size within the range of 64 to 1536 can achieve wire-speed.\r\nWall-mounted design, easy to install and use.\r\nAutomatic adjustment, plug and play, no need software and protocol conversion.', './img/airpro/poe switch/switch8.png', ' Flexible: Two High Speed Uplink Ports The built-in two Gigabit uplink ports provide fast connection to servers or the backplane of the gigabit speed. The effective connectivity of the four 10/100/1000Mbps ports, allows growing business networks, classrooms and workgroups to obtain benefits from the demand for superior performance and sustain network expansion. This high-performance switch features with non-blocking, wire-speed switching, and 8.8Gbps switching capacity. All RJ45 ports can auto adjust the highest connection speed for a normal working, Auto Uplink â„¢ technology can ensure proper network connection.  Application Situations: â€¢    Million HD surveillance transmission and power supply. â€¢    Wireless AP distribution transmission and power supply. â€¢    VoIP transmission, intelligent home systems. â€¢    City intelligent traffic monitoring system (ITS), safe city, and wireless city. â€¢    Highway surveillance system, electronic road surveillance, snapshot system. â€¢    Large industrial factory & enterprise security surveillance system, network multifunction system.', './img/airpro/poe switch/1-8.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ESG1906P-SF.pdf'),
(9, 'switch9', 'AP-ESG1910P-2GE, 10 Ports Gigabit PoE Switch', 'Desktop metal case, easy to set up.\r\n8*10/100/1000Mbps PoE Ports, 2*10/100/1000Mbps Up-Link Port.\r\n8 Gigabit PoE ports, comply with IEEE802-3af/at PD equipment.\r\nSupport PoE power up to 30W for IEEE802-3at PD equipment, up to 15W for IEEE 802-3af PD equipment.\r\nPort priority: if all PoE PD equipment power consumption become overloaded, a priority will be arranged among the PoE ports, then the system will cut off the power of the lowest-priority port.\r\nWith VLAN button, support port isolation.', './img/airpro/poe switch/switch9.png', ' AP-ESG1910-2GE is an 10 ports Gigabit PoE switch with Gigabit up-link ports and Gigabit PoE ports. Designed with desktop metal case, easy to make the transition to Gigabit Ethernet to wireless AP, IP camera, IP phone and other gigabit IEEE 802.3af/at standard PD equipment.  All 10 ports support auto-negotiation, auto MDI/MDIX and standard IEEE 802.3af/at POE, simply plug and play. With the innovative energy-efficient technology, users can choose the PoE switch according power consumption, making it an eco-friendly solution for home/business networking.', './img/airpro/poe switch/1-9.png', 'https://airpro.in/wp-content/uploads/2020/01/AP-ESG1910-2GE.pdf'),
(10, 'switch10', 'PoE Extender AP-PX411', 'Extender 100base-t Ethernet signal and power.\r\nRate is up to 100base-t, the transmission distance can reach 400 meters.\r\nWithout local power supply, remote device powered by 802.3af/at POE.\r\nShort circuit and overload protection surge protection.', './img/airpro/poe switch/switch10.jpg', ' The Poe extender AP-PX411 extends the Ethernet signal and power through Cat 6, A 100base-t port as powered port can support IEEE802.3af/at. A 100base-t port as pse port can support IEEE802.3af/at. Poe extender can extend 400M distance by using at least 3 units connection.', './img/airpro/poe switch/1-10.png', 'http://airpro.in/wp-content/uploads/2017/03/AP-PX411.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airpro_outdoor_access`
--
ALTER TABLE `airpro_outdoor_access`
  ADD KEY `outdoor` (`id`);

--
-- Indexes for table `airpro_poe_switch`
--
ALTER TABLE `airpro_poe_switch`
  ADD KEY `switch` (`id`);

--
-- Indexes for table `airpro_wlan_aps`
--
ALTER TABLE `airpro_wlan_aps`
  ADD KEY `airpro_index` (`id`);

--
-- Indexes for table `asus`
--
ALTER TABLE `asus`
  ADD KEY `switch` (`id`);

--
-- Indexes for table `benq_flat_panel`
--
ALTER TABLE `benq_flat_panel`
  ADD KEY `switch` (`id`);

--
-- Indexes for table `benq_projector`
--
ALTER TABLE `benq_projector`
  ADD KEY `switch` (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD KEY `i` (`id`);

--
-- Indexes for table `crm_dealer`
--
ALTER TABLE `crm_dealer`
  ADD KEY `i` (`id`);

--
-- Indexes for table `crm_eps`
--
ALTER TABLE `crm_eps`
  ADD KEY `id` (`id`);

--
-- Indexes for table `crm_fortinet`
--
ALTER TABLE `crm_fortinet`
  ADD KEY `id` (`id`);

--
-- Indexes for table `crm_login`
--
ALTER TABLE `crm_login`
  ADD KEY `ii` (`id`);

--
-- Indexes for table `crm_serialno_dump`
--
ALTER TABLE `crm_serialno_dump`
  ADD KEY `i` (`id`);

--
-- Indexes for table `crm_useraccess`
--
ALTER TABLE `crm_useraccess`
  ADD KEY `accessi` (`id`);

--
-- Indexes for table `delta`
--
ALTER TABLE `delta`
  ADD KEY `switch` (`id`);

--
-- Indexes for table `fortinet`
--
ALTER TABLE `fortinet`
  ADD KEY `switch` (`id`);

--
-- Indexes for table `lg_flat_panel`
--
ALTER TABLE `lg_flat_panel`
  ADD KEY `switch` (`id`);

--
-- Indexes for table `lg_tv`
--
ALTER TABLE `lg_tv`
  ADD KEY `switch` (`id`);

--
-- Indexes for table `localhost_to_server`
--
ALTER TABLE `localhost_to_server`
  ADD KEY `dd` (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD KEY `ii` (`id`);

--
-- Indexes for table `molex`
--
ALTER TABLE `molex`
  ADD KEY `switch` (`id`);

--
-- Indexes for table `ncomputing`
--
ALTER TABLE `ncomputing`
  ADD KEY `switch` (`id`);

--
-- Indexes for table `netrack_floor_mount`
--
ALTER TABLE `netrack_floor_mount`
  ADD KEY `outdoor` (`id`);

--
-- Indexes for table `netrack_kvm`
--
ALTER TABLE `netrack_kvm`
  ADD KEY `switch` (`id`);

--
-- Indexes for table `netrack_wall_mount`
--
ALTER TABLE `netrack_wall_mount`
  ADD KEY `outdoor` (`id`);

--
-- Indexes for table `renewalmail`
--
ALTER TABLE `renewalmail`
  ADD KEY `dfsfd` (`id`);

--
-- Indexes for table `testdata`
--
ALTER TABLE `testdata`
  ADD KEY `switch` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airpro_outdoor_access`
--
ALTER TABLE `airpro_outdoor_access`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `airpro_poe_switch`
--
ALTER TABLE `airpro_poe_switch`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `airpro_wlan_aps`
--
ALTER TABLE `airpro_wlan_aps`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `asus`
--
ALTER TABLE `asus`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `benq_flat_panel`
--
ALTER TABLE `benq_flat_panel`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `benq_projector`
--
ALTER TABLE `benq_projector`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `crm_dealer`
--
ALTER TABLE `crm_dealer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_eps`
--
ALTER TABLE `crm_eps`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `crm_fortinet`
--
ALTER TABLE `crm_fortinet`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=771;

--
-- AUTO_INCREMENT for table `crm_login`
--
ALTER TABLE `crm_login`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `crm_serialno_dump`
--
ALTER TABLE `crm_serialno_dump`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `crm_useraccess`
--
ALTER TABLE `crm_useraccess`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `delta`
--
ALTER TABLE `delta`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fortinet`
--
ALTER TABLE `fortinet`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lg_flat_panel`
--
ALTER TABLE `lg_flat_panel`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lg_tv`
--
ALTER TABLE `lg_tv`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `localhost_to_server`
--
ALTER TABLE `localhost_to_server`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `molex`
--
ALTER TABLE `molex`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ncomputing`
--
ALTER TABLE `ncomputing`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `netrack_floor_mount`
--
ALTER TABLE `netrack_floor_mount`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `netrack_kvm`
--
ALTER TABLE `netrack_kvm`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `netrack_wall_mount`
--
ALTER TABLE `netrack_wall_mount`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `renewalmail`
--
ALTER TABLE `renewalmail`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testdata`
--
ALTER TABLE `testdata`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
