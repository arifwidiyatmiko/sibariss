-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2017 at 07:37 PM
-- Server version: 10.1.16-MariaDB-1~jessie
-- PHP Version: 5.6.24-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jimat_maritim`
--

-- --------------------------------------------------------

--
-- Table structure for table `amar_photo_sigap`
--

CREATE TABLE IF NOT EXISTS `amar_photo_sigap` (
`ID` int(11) NOT NULL,
  `TOPIK` varchar(222) NOT NULL,
  `ARTI` text,
  `SUMBER` varchar(222) DEFAULT NULL,
  `PHOTO1` varchar(222) NOT NULL,
  `PHOTO2` varchar(222) NOT NULL,
  `NAMA` varchar(222) NOT NULL,
  `UNIT` varchar(222) NOT NULL,
  `PHOTO3` varchar(222) NOT NULL,
  `PHOTO4` varchar(222) NOT NULL,
  `PHOTO5` varchar(222) NOT NULL,
  `PHOTO6` varchar(222) NOT NULL,
  `HAK` varchar(222) NOT NULL,
  `FASILITAS` text NOT NULL,
  `SATUAN` varchar(222) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amar_photo_sigap`
--

INSERT INTO `amar_photo_sigap` (`ID`, `TOPIK`, `ARTI`, `SUMBER`, `PHOTO1`, `PHOTO2`, `NAMA`, `UNIT`, `PHOTO3`, `PHOTO4`, `PHOTO5`, `PHOTO6`, `HAK`, `FASILITAS`, `SATUAN`) VALUES
(1, 'Ruang Rapat Lantai 21', NULL, '', '12.Menko-Maritim-dan-Sumber-Daya.jpg', '', '', '40', '', '', '', '', 'deputi4', 'LCD Projector <br>\r\nSound System <br>\r\nMikrophone Meja <br>\r\nLCD TV 50 Inch <br>\r\nFree wifi <br>\r\nBooth Snack dan Makan<br>\r\nPengaturan Meja: Fix Round Table<br>\r\nRuang VIP', 'Orang'),
(2, 'RR Lantai 2 Sayap Utara', NULL, '', 'ijin1.jpg', 'ijin2.jpg', '', '40', '', '', '', '', 'deputi4', 'LCD Projector <br>\r\nSound System <br>\r\nMikrophone Meja <br>\r\nLCD TV 50 Inch <br>\r\nFree wifi <br>\r\nBooth Snack dan Makan<br>\r\nPengaturan Meja: Fix Round Table<br>\r\nRuang VIP', 'Orang'),
(3, 'RR LANTAI 6', NULL, '', 'finland2.jpg', 'all.gif', '', '20', '', '', '', '', 'deputi4', 'LCD Projector <br>\r\nSound System <br>\r\nPengaturan Meja: Fix Round Table', 'Orang'),
(4, 'RR LANTAI 5', NULL, '', 'ijin6.jpg', '20160221030334.jpg', '', '20', '', '', '', '', 'deputi4', 'LCD Projector <br>\r\nSound System <br>\r\nPengaturan Meja: Fix Round Table', 'Orang'),
(5, 'Ruang Rapat Lantai 2 Selatan', NULL, '', 'finland2.jpg', 'finland.jpg', '', '100', '', '', '', '', 'deputi4', 'LCD Projector <br>\r\nSound System <br>\r\nMikrophone Meja <br>\r\nLCD TV 50 Inch <br>\r\nFree wifi <br>\r\nBooth Snack dan Makan<br>\r\nPengaturan Meja: Flexible Round Table<br>\r\nRuang VIP', 'Orang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amar_photo_sigap`
--
ALTER TABLE `amar_photo_sigap`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amar_photo_sigap`
--
ALTER TABLE `amar_photo_sigap`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
