-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2017 at 07:26 PM
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
-- Table structure for table `amar_sigap`
--

CREATE TABLE IF NOT EXISTS `amar_sigap` (
`ID` int(10) NOT NULL,
  `PELAKSANA` varchar(222) COLLATE latin1_general_ci NOT NULL,
  `TEMPAT` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `HAK` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JUMLAH` varchar(222) COLLATE latin1_general_ci NOT NULL,
  `TAHUN` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `OPERATOR` varchar(222) COLLATE latin1_general_ci NOT NULL,
  `HARI` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BULAN` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MULAI` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SELESAI` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `URUT` varchar(222) COLLATE latin1_general_ci NOT NULL,
  `KEJADIAN` text COLLATE latin1_general_ci NOT NULL,
  `PENUTUP` text COLLATE latin1_general_ci NOT NULL,
  `POKOK` text COLLATE latin1_general_ci NOT NULL,
  `PENDAHULUAN` text COLLATE latin1_general_ci NOT NULL,
  `JAM` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `WI` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `ACARA` text COLLATE latin1_general_ci NOT NULL,
  `MEDIA1` varchar(222) COLLATE latin1_general_ci NOT NULL,
  `MEDIA2` varchar(222) COLLATE latin1_general_ci NOT NULL,
  `MEDIA3` varchar(222) COLLATE latin1_general_ci NOT NULL,
  `SOAL4` text COLLATE latin1_general_ci NOT NULL,
  `SOAL5` text COLLATE latin1_general_ci NOT NULL,
  `SOAL6` text COLLATE latin1_general_ci NOT NULL,
  `SOAL7` text COLLATE latin1_general_ci NOT NULL,
  `SOAL8` text COLLATE latin1_general_ci NOT NULL,
  `SOAL9` text COLLATE latin1_general_ci NOT NULL,
  `SOAL10` text COLLATE latin1_general_ci NOT NULL,
  `KUNCI1` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `KUNCI2` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `KUNCI3` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `KUNCI4` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `KUNCI5` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `KUNCI6` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `KUNCI7` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `KUNCI8` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `KUNCI9` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `KUNCI10` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `JAWAB1` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `JAWAB2` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `JAWAB3` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `JAWAB4` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `JAWAB5` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `JAWAB6` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `JAWAB7` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `JAWAB8` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `JAWAB9` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `JAWAB10` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `PASSWORD` varchar(222) COLLATE latin1_general_ci NOT NULL,
  `JENIS` text COLLATE latin1_general_ci NOT NULL,
  `UNDANGAN` varchar(222) COLLATE latin1_general_ci NOT NULL,
  `LAPORAN` varchar(222) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `amar_sigap`
--

INSERT INTO `amar_sigap` (`ID`, `PELAKSANA`, `TEMPAT`, `HAK`, `JUMLAH`, `TAHUN`, `OPERATOR`, `HARI`, `BULAN`, `MULAI`, `SELESAI`, `URUT`, `KEJADIAN`, `PENUTUP`, `POKOK`, `PENDAHULUAN`, `JAM`, `WI`, `ACARA`, `MEDIA1`, `MEDIA2`, `MEDIA3`, `SOAL4`, `SOAL5`, `SOAL6`, `SOAL7`, `SOAL8`, `SOAL9`, `SOAL10`, `KUNCI1`, `KUNCI2`, `KUNCI3`, `KUNCI4`, `KUNCI5`, `KUNCI6`, `KUNCI7`, `KUNCI8`, `KUNCI9`, `KUNCI10`, `JAWAB1`, `JAWAB2`, `JAWAB3`, `JAWAB4`, `JAWAB5`, `JAWAB6`, `JAWAB7`, `JAWAB8`, `JAWAB9`, `JAWAB10`, `PASSWORD`, `JENIS`, `UNDANGAN`, `LAPORAN`) VALUES
(65, '', '', '', '', '', 'Anwar Dg. Masese, ST', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, 'Bagian Tata Usaha dan Protokol', 'Ruang Rapat Lantai 2 Selatan', '', '30', '2017', 'Sucitya Dwi Novira, S.STP	', '29', '2', '', '', '', '', 'SETUJU', '', '', 'Sehari', 'Sosilisasi Jabatan Tata Naskah Dinas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'RTP', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(67, 'Bagian Kepegawaian', '', '', '', '', 'Ir. Kadarusman, M.Sc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(66, 'Bagian Kepegawaian', '', '', '45', '2017', 'Astri Yani Sari, A.md', '19', '2', '', '', '', '', 'SETUJU', '', '', 'Pagi', 'Sosiala BPJS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, 'TU Protokol', 'Ruang Rapat Lantai 21', '', '30', '2017', 'RTP', '25', '2', '', '', '', '', 'SETUJU', '', '', 'Pagi', 'RARAPATAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(64, 'Bagian Kepegawaian', 'Ruang Rapat Lantai 21', '', '30', '2017', 'Astri Yani Sari, A.md', '19', '2', '', '', '', '', '', '', '', 'Pagi', 'Rarapatan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, 'Bagian Kepegawaian', 'Ruang Rapat Lantai 21', '', '90', '2017', 'Astri Yani Sari, A.md', '28', '2', '', '', '', '', 'SETUJU', '', '', 'Pagi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 'Bagian Persidangan', 'RR Lantai 2 Sayap Utara', '', '30', '2017', 'Astri Yani Sari, A.md', '10', '3', '', '', '', '', '', '', '', 'Siang', 'Rapat Persiapan ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, 'Bagian Hubungan Masyarakat', 'Ruang Rapat Lantai 21', '', '10', '2017', 'Astri Yani Sari, A.md', '10', '3', '', '', '', '', '', '', '', 'Siang', 'Rapat Persiapan ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 'Bagian Kepegawaian', 'RR Lantai 2 Sayap Utara', '', '15', '2017', 'Astri Yani Sari, A.md', '24', '2', '', '', '', '', '', '', '', 'Pagi', 'Sosilisasi Jabatan Fungsional Tertentu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, 'Bagian Tata Usaha dan Protokol', 'Ruang Rapat Lantai 21', '', '30', '2017', 'Sucitya Dwi Novira, S.STP	', '25', '2', '', '', '', '', 'SETUJU', '', '', 'Pagi', 'TAKAH', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 'Bagian Kepegawaian', 'RR Lantai 2 Sayap Utara', '', '30', '2017', 'Ir. Kadarusman, M.Sc', '24', '2', '', '', '', '', '', '', '', 'Siang', 'Sosilisasi Jabatan Fungsional Tertentu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(68, 'Bagian Kepegawaian', '', '', '', '', 'Astri Yani Sari, A.md', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(69, 'Bagian Kepegawaian', 'RR Lantai 2 Sayap Utara', '', '35', '2017', 'Anwar Dg. Masese, ST', '17', '3', '', '', '', '', 'SETUJU', '', '', 'Sehari', 'Rarapatan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(70, 'Bagian Kepegawaian', '', '', '', '', 'Astri Yani Sari, A.md', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amar_sigap`
--
ALTER TABLE `amar_sigap`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amar_sigap`
--
ALTER TABLE `amar_sigap`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
