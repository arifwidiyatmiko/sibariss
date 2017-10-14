-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 12, 2015 at 02:07 PM
-- Server version: 5.5.29
-- PHP Version: 5.3.10-1ubuntu3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bdkbogor`
--

-- --------------------------------------------------------

--
-- Table structure for table `amar_admin`
--

CREATE TABLE IF NOT EXISTS `amar_admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA` varchar(255) NOT NULL,
  `username` char(30) NOT NULL DEFAULT '',
  `password` char(250) NOT NULL DEFAULT '',
  `hak` char(255) DEFAULT NULL,
  `KODE` varchar(255) DEFAULT NULL,
  `fungsi` varchar(255) NOT NULL,
  `URUT` varchar(255) DEFAULT NULL,
  `WILAYAH1` varchar(222) NOT NULL,
  `WILAYAH2` varchar(222) NOT NULL,
  `WILAYAH3` varchar(222) NOT NULL,
  `WILAYAH4` varchar(222) NOT NULL,
  `WILAYAH5` varchar(222) NOT NULL,
  `WILAYAH6` varchar(222) NOT NULL,
  `WILAYAH7` varchar(222) NOT NULL,
  `WILAYAH8` varchar(222) NOT NULL,
  `WILAYAH9` varchar(222) NOT NULL,
  `WILAYAH10` varchar(222) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED AUTO_INCREMENT=2 ;

--
-- Dumping data for table `amar_admin`
--

INSERT INTO `amar_admin` (`ID`, `NAMA`, `username`, `password`, `hak`, `KODE`, `fungsi`, `URUT`, `WILAYAH1`, `WILAYAH2`, `WILAYAH3`, `WILAYAH4`, `WILAYAH5`, `WILAYAH6`, `WILAYAH7`, `WILAYAH8`, `WILAYAH9`, `WILAYAH10`) VALUES
(1, 'DEPUTI II', 'deputi2', 'sdhj', 'DEPUTI2', NULL, '', NULL, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `amar_aksi`
--

CREATE TABLE IF NOT EXISTS `amar_aksi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ESELON1` varchar(222) NOT NULL,
  `ESELON2` varchar(222) NOT NULL,
  `ESELON3` varchar(222) DEFAULT NULL,
  `KODE` varchar(222) NOT NULL,
  `ESELON4` varchar(222) DEFAULT NULL,
  `NAMA` varchar(255) DEFAULT NULL,
  `ORGANIGRAM` varchar(255) DEFAULT NULL,
  `BAGIAN1` text NOT NULL,
  `BAGIAN2` text NOT NULL,
  `BAGIAN3` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `amar_aksi`
--

INSERT INTO `amar_aksi` (`ID`, `ESELON1`, `ESELON2`, `ESELON3`, `KODE`, `ESELON4`, `NAMA`, `ORGANIGRAM`, `BAGIAN1`, `BAGIAN2`, `BAGIAN3`) VALUES
(1, 'Deputi II', 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', NULL, 'Icon-user.png', NULL, 'Tito Setiawan, MM', 'SESDEP2.png', 'Melaksanakan koordinasi pelaksanaan tugas dan pemberian dukungan administrasi kepada seluruh unsur organisasi di lingkungan Deputi Bidang Sumber Daya Alam dan Jasa.', 'FUNGSI:<BR>\r\nkoordinasi penyusunan rencana, program dan anggaran Deputi;<br>\r\n\r\npengelolaan sistem informasi;<br>\r\n\r\npemberian dukungan administrasi yang meliputi ketatausahaan, kepegawaian, hubungan masyarakat, arsip dan dokumentasi Deputi;<br>\r\n\r\npemberian dukungan penyusunan peraturan perundang-undangan;<br>\r\n\r\npenyusunan data dan laporan;<br>\r\n\r\npelaksanaan fungsi lain yang diberikan oleh Deputi.', ''),
(2, 'Deputi II', 'Asisten Deputi Sumber Daya Hayati', 'Bagian Tata Usaha', 'ANDRI.jpg', NULL, 'Dr. Ir. Andri Wahyono. M.Nat. Res', 'SDH.png', 'Melaksanakan penyiapan koordinasi dan sinkronisasi perumusan, penetapan, dan pelaksanaan serta pengendalian pelaksanaan kebijakan Kementerian/Lembaga yang	terkait dengan isu di bidang sumber daya hayati kemaritiman.', 'FUNGSI:<BR>\r\npenyiapan	koordinasi	dan	sinkronisasi	perumusan,\r\npenetapan,	dan	pelaksanaan	kebijakan	Kementerian/ Lembaga yang terkait dengan isu di bidang pengelolaan sumber daya hayati kemaritiman;<br>\r\n\r\npenyiapan pengendalian pelaksanaan kebijakan Kementerian/ Lembaga yang terkait dengan isu di bidang pengelolaan sumber daya hayati kemaritiman;<br>\r\n\r\npemantauan,	analisis,	evaluasi	dan	pelaporan	tentang masalah dan kegiatan di bidang pengelolaan sumber daya hayati kemaritiman.\r\n', ''),
(14, 'Deputi II', 'Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional', NULL, 'yos.jpg', NULL, 'Ir. Amalyos, MM', 'ASDEP2.png', 'Melaksanakan penyiapan koordinasi dan sinkronisasi perumusan, penetapan, dan pelaksanaan serta pengendalian pelaksanaan kebijakan Kementerian/Lembaga yang	terkait dengan isu di bidang sumber daya mineral, energi dan Nonkonvensional.', 'FUNGSI:<BR>\r\npenyiapan	koordinasi	dan	sinkronisasi	perumusan,\r\npenetapan,	dan	pelaksanaan	kebijakan	Kementerian/ Lembaga yang terkait dengan isu di bidang pengelolaan sumber daya mineral, pengelolaan sumber daya energi dan pengelolaan sumber daya nonkonvensional;<br>\r\n\r\npenyiapan pengendalian pelaksanaan kebijakan Kementerian/ Lembaga yang terkait dengan isu di bidang pengelolaan sumber daya mineral, pengelolaan sumber daya	energy dan pengelolaan sumber daya nonkonvensional;<br>\r\n\r\npemantauan,	analisis,	evaluasi	dan	pelaporan	tentang masalah dan kegiatan di bidang pengelolaan sumber daya mineral, pengelolaan sumber daya energi dan pengelolaan sumber daya nonkonvensional.\r\n', ''),
(21, '', 'Deputi', NULL, '', NULL, NULL, NULL, '', '', ''),
(19, 'Deputi II', 'Asisten Deputi Jasa Kemaritiman', NULL, 'Icon-user.png', NULL, 'Okto Irianto, SIP.MA', 'ASDEP3.png', 'Melaksanakan	penyiapan	koordinasi	dan	sinkronisasi perumusan, penetapan, dan pelaksanaan serta pengendalian pelaksanaan kebijakan	Kementerian/ Lembaga yang	terkait dengan isu di bidang jasa kemaritiman.', 'FUNGSI<br>\r\npenyiapan	koordinasi	dan	sinkronisasi	perumusan,penetapan, dan pelaksanaan kebijakan Kementerian/Lembaga yang terkait dengan isu di bidang jasa kepelabuhan, jasa pariwisata bahari dan pemanfaatan ruang laut;<br>\r\n\r\npenyiapan	pengendalian	pelaksanaan	kebijakan Kementerian/ Lembaga yang terkait dengan isu di bidang Jasa kepelabuhan, jasa pariwisata bahari dan pemanfaatan ruang laut; dan <br>\r\n\r\npemantauan,	analisis,	evaluasi	dan	pelaporan	tentang masalah dan kegiatan di bidang jasa kepelabuhan, jasa pariwisata bahari dan pemanfaatan ruang laut.\r\n', ''),
(20, 'Deputi II', 'Asisten Deputi Lingkungan dan Kebencanaan Maritim', NULL, 'SAHAT.jpg', NULL, 'Dr. Sahat M. Panggabean', 'ASDEP4.png', 'Melaksanakan penyiapan koordinasi dan sinkronisasi perumusan, penetapan, dan pelaksanaan serta pengendalian pelaksanaan kebijakan Kementerian/Lembaga yang	terkait dengan isu di bidang lingkungan dan kebencanaan maritim', 'FUNGSI:<BR>\r\npenyiapan	koordinasi	dan	sinkronisasi	perumusan,\r\npenetapan,	dan	pelaksanaan	kebijakan	Kementerian/ Lembaga yang terkait dengan isu di bidang pengelolaan lingkungan dan kebencanaan maritim; <br>\r\n\r\npenyiapan pengendalian pelaksanaan kebijakan Kementerian/ Lembaga yang terkait dengan isu di bidang pengelolaan lingkungan dan kebencanaan maritim;<br>\r\n\r\npemantauan,	analisis,	evaluasi	dan	pelaporan	tentang masalah dan kegiatan di bidang pengelolaan lingkungan dan kebencanaan maritim.\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `amar_alamat`
--

CREATE TABLE IF NOT EXISTS `amar_alamat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TOPIK` varchar(222) NOT NULL,
  `ARTI` text,
  `SUMBER` varchar(222) DEFAULT NULL,
  `PHOTO1` varchar(222) NOT NULL,
  `PHOTO2` varchar(222) NOT NULL,
  `NAMA` varchar(222) NOT NULL,
  `UNIT` varchar(222) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=96 ;

--
-- Dumping data for table `amar_alamat`
--

INSERT INTO `amar_alamat` (`ID`, `TOPIK`, `ARTI`, `SUMBER`, `PHOTO1`, `PHOTO2`, `NAMA`, `UNIT`) VALUES
(1, 'Dinas Kelautan dan Perikanan Propinsi Nanggroe Aceh Darussalam', 'Jl. Tengku Malam No.7 Kuta Alam Banda Aceh 23121 Kotak Pos 124', 'Telp. (0651) 23181, 22836', 'Fax. (0651) 22951', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(39, 'Dinas Perikanan Kab. Tangerang', 'Jl.Perintis Kemerdekaan No.1,Tangerang', '(0254) 200079 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(5, 'Dinas Kelautan dan Perikanan Propinsi Sumatera Utara', 'Jl. Sei Batugingging No. 6 Medan, Sumatera Utara 25128', 'Telp. (061) 4568819', 'Fax. (061) 4153338', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(6, 'Kelautan dan Perikanan Propinsi Sumatera Barat', 'Jl. Koto Tinggi No. 9/II\r\nPO BOX 42, Padang 25128', 'Telp. (0751) 33288', 'Fax. (0751) 27089', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(7, 'Dinas Kelautan dan Perikanan Propinsi Sumatera Selatan', 'Jl. Pangeran Ratu, Jakabaring\r\nPalembang', 'Telp. (0711) 518757', 'Fax. (0711) 518757', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(8, 'Dinas Kelautan dan Perikanan Propinsi Riau', 'Jl. Patimura No. 6\r\nPO BOX 1052\r\nPekan Baru 28131', 'Telp. (0761) 22921 / (0761) 23191-34685', 'Fax. (0761) 23191', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(9, 'Dinas kelautan dan Perikanan Propinsi Kepulauan Riau', 'Komp. Perkantoran Pemerintah Prov. Kepri Gd. B2 Lt. I & II Pulau Dompak\r\n', '', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(10, 'Dinas Kelautan dan Perikanan Propinsi Bengkulu', 'Jl. Cendana No.61\r\nBengkulu 38228', 'Telp. (0736) 21477, 22176', 'Fax. (0736) 21477', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(11, 'Dinas Kelautan dan Perikanan Propinsi Jambi', 'Jl. MT. Haryono No.9\r\nTelanai Pura, Jambi', 'Telp/Fax. (0741) 65134', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(12, 'Dinas Kelautan dan Perikanan Propinsi Lampung', 'Jl. Drs. Warsito No. 76\r\nBandar Lampung\r\nTeluk Betung 35215', 'Telp. (0721) 481519, 481517', 'Fax. (0721) 480508', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(13, 'Dinas Peternakan Perikanan dan Kelautan Propinsi DKI Jakarta', 'Jl. Gunung Sahari Raya\r\nNo. 11 Lt. 8 Jakarta Pusat', 'Telp. (021) 6007251, 6286625, 6007252, 6007244', 'Fax. (021) 6241617, 6007247', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(14, 'Dinas Perikanan Propinsi Jawa Barat', 'Jl. Wastu Kencana No.17\r\nBandung 40117', 'Telp. (022) 4203471', 'Fax. (022) 4232541', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(15, 'Dinas Kelautan dan Perikanan Propinsi DI Yogyakarta', 'Jl. Sagan No. III/4\r\nYogyakarta', 'Telp. (0274) 512386', 'Fax. (0274) 560386', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(16, 'Dinas Peternakan Perikanan dan Kelautan Propinsi Jawa Tengah', 'Jl. Imam Bonjol 134\r\nSemarang, Jawa Tengah 50132', 'Telp. (024) 3546469, 3546607', 'Fax. (024) 3551289,', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(17, 'Dinas Perikanan Propinsi Jawa Timur', 'Jl. Jend. A. Yani 152B\r\nSurabaya', 'Telp. (031) 8281672, 8292326', 'Fax. (031) 8288148, 8291927', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(18, 'Dinas Kelautan dan Perikanan Propinsi Maluku', 'Jl. DR. Siwabessy No.16\r\nPO BOX 75 Ambon 97117', 'Telp. (0911) 352216, 314558', 'Fax. (0911) 352216', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(19, 'Dinas Kelautan dan Perikanan Propinsi Maluku Utara', 'Jl. Tuna Raya No. 6 Sofifi', 'Telp. (0921) 3123073, 3125963', 'Fax. (0921) 3123073', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(20, 'Dinas Kelautan dan Perikanan Propinsi Sulawesi Utara', 'Jl. Komp. Pertanian Kalasey\r\nPO BOX 1038, Manado 95013', 'Telp. (0431) 838639', 'Fax. (0431) 838640', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(21, 'Dinas Kelautan dan Perikanan Propinsi Sulawesi Tenggara', 'Jl. Balaikota No. 4\r\nKendari 93111', 'Telp. (0401) 3121443', 'Fax. (0401) 3122676', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(22, 'Dinas Kelautan dan Perikanan Propinsi Sulawesi Tengah', 'Jl. Undata no. 7 Palu 94111', 'Telp. (0451) 429379', 'Fax. (0451) 421560', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(23, 'Dinas Kelautan dan Perikanan Propinsi Sulawesi Selatan', 'Jl. Bajimanasa No. 12\r\nUjung Pandang Bautoloe\r\nMakassar 90126', 'Telp. (0411) 854726, 873680', 'Fax. (0411) 858779 HP. 0811412969', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(24, 'Dinas Kelautan dan Perikanan Propinsi Kalimantan Selatan', 'Jl. Jend. Sudirman No. 9\r\nBanjarbaru 70713', 'Telp. (0511) 4772037', 'Fax. (0511) 4772887', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(25, 'Dinas Kelautan dan Perikanan Propinsi Kalimantan Timur', 'Jl. Kesuma Bangsa No. 1\r\nSamarinda 75001', 'Telp. (0541) 743506, 741977, 741699', 'Fax. (0541) 743677', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(26, 'Dinas Kelautan dan Perikanan Propinsi Kalimantan Barat', 'Jl. Sutan Sahrir No. 16\r\nPO BOX 17\r\nPontianak 78116', 'Telp. (0561) 732521', 'Fax. (0561) 766073', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(27, 'Dinas Kelautan dan Perikanan Propinsi Kalimantan Tengah', 'Jl. Brigjen Katamso No. 2\r\nPO BOX 41, Palangkaraya 73112', 'Telp. (0536) 3221294', 'Fax. (0536) 3229663, 3220517', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(28, 'Dinas Kelautan dan Perikanan Propinsi Bali', 'Jl. Pattimura No. 77\r\nDenpasar', 'Telp. (0361) 227926,', 'Fax. (0361) 223562', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(29, 'Dinas Kelautan dan Perikanan Propinsi NTB', 'Jl. Semanggi No. 8\r\nMataram 8125', 'Telp. (0370) 632083', 'Fax. (0370) 625963', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(30, 'Dinas Kelautan dan Perikanan Propinsi NTT', 'Jl. Sangkar Mas Nunbaun Sabu Kupang', 'Telp. (0380) 890119', 'Fax. (0380) 890143', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(31, 'Dinas Kelautan dan Perikanan Propinsi Sulawesi Barat', 'Jl. Cut Nya Dien No. 13\r\nMamuju 91511', 'Telp. (0426) 21953', 'Fax. (0426) 21953', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(32, 'Dinas Kelautan dan Perikanan Propinsi Kep. Bangka Belitung', 'Jl. Komp. Perkantoran Kep. Babel Kec.Bukit Intan Pakalpinang', 'Telp. (0717) 439302, 439303', 'Fax. (0717) 431513', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(33, 'Dinas Kelautan dan Perikanan Propinsi Banten', 'Jln. Jenderal Sudirman Ruko Glodok Blok F 1-5 Kota Serang Baru, Serang-Banten', 'Telp/Fax. (0254) 267024', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(34, 'Dinas Kelautan dan Perikanan Propinsi Gorontalo', 'Jl. M.H. Thamrin No. 170 Kota Gorontalo', 'Telp. (0435) 823123', 'Fax. (0435) 831611', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(35, 'Dinas Kelautan dan Perikanan Propinsi Papua', 'Jl. Sulawesi No.6-8 Dok VII PO BOX 1604, Jaya Pura 99116', 'Telp. (0967) 542154, 542155', 'Fax. (0967) 542156', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(36, 'Dinas Kelautan dan Perikanan Propinsi Papua Barat', 'Jl. Merdeka no. 7B\r\nManokwari', 'Telp/Fax (0986) 213182', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(37, 'Dinas Perikanan Kab. Bekasi', 'Jl.A.yani No.1,Komplek Pemda Bekasi 17141', '(021) 8842232 8842233', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(40, 'Dinas Perikanan Kab. Pandeglang', 'Jl.Raya labuan Km.2 Pandeglang ', '(0253) 21009 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(41, 'Dinas Perikanan Kab.Lebak ', 'Jl.Gunungsari No.33 Rangkasbitung ', '(0252) 21073 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(42, 'Dinas Perikanaan Kab.Bogor', 'Jl.Bersih Nusa Tengah Kec.Cibinong,Bogor ', '(0251) 8755909 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(43, 'Dinas Perikanan Kab. Sukabumi', ' Jl.Raya Ciseureuh No.9 Sukabumi ', '(0266) 225043 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(44, 'Dinas Perikanan Kab.Cianjur', ' Jl. Arief Rahman No.26 Cianjur ', '(0263) 61619 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(45, 'Dinas Perikanan Kab.Bandung ', ' Jl.Raya Soreang Km.17 Bandung', '(022) 5891729 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(46, 'Dinas Perikanan Kodya Bandung ', ' Jl.Pelindung Hewan , Bandung ', '(022) 5202787 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(47, 'Dinas Perikanan Kab.Garut', 'Jl.Baratayudha No.96 Garut ', '(0262) 233644 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(48, 'Dinas Perikanan Kab. Sumedang', 'Jl.Pangeran Kornel No.13 Sumedang ', '(0261) 201010 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(49, 'Dinas Perikanan Kab. Tasikmalaya', ' Jl. Pemuda, Tasikmalaya', '(0265) 336937 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(50, 'Dinas Perikanan Kab. Ciamis', 'Jl. tentara Pelajar No.42 Ciamis ', '(0265) 771033 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(51, 'Dinas Perikanan Kodya Cirebon', 'Jl. Sunan Muria No.2 cirebon ', '(0231) 321783 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(52, 'Dinas Perikanan Kab. Indramayu', ' Jl. Pabean Udik No.1 Indramayu', '(0234) 22767', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(53, 'Dinas Perikanan Kab. Subang', 'Jl. Nata Sukarya No.28 Subang ', '(0264) 411325 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(54, 'Dinas Perikanan Kab. Subang', 'Jl. Nata Sukarya No.28 Subang ', '(0264) 411325', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(55, 'Dinas Perikanan Kab. Karawang ', ' Jl. Ir. suratin No.1 karawang ', '(0267) 406176 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(56, 'Dinas Perikanan Kab. Purwakarta', ' Jl. Surawinata No.30 B Purwakarta ', '(0264) 201038 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(57, 'Dinas Perikanan Kab. Kuningan ', 'Jl. aruji Kartawinata No.10 Kuningan ', '(0232) 81188 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(59, 'Dinas Perikanan Kab. Majalengka', 'Jl. Ibu Tien Suharto No.27 Majalengka ', '(0233) 21545 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(60, 'Dinas Perikanan,Kelautan dan Perternakan Kab. Pidi ', ' Jl.Prof.A.Madjid Ibrahim Sigli ', '(0653) 92184', '(0653) 21230', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(61, 'Dinas Perikanan dan Kelautan Kab. Aceh Utara ', ' Jl.Mayjed.P.Hamzah Bendara Lhokseumawe', '(0645) 42823', '(0645) 45245 ', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(62, 'Dinas Perikanan dan kelautan Kab. Aceh Biruen', 'Jl.Iskandar Muda No.13 aceh Biruen ', '(0644) 323254', '(0644) 21031', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(63, 'Dinas Perikanan dan Kelautan Kab. Aceh Timur', 'Jl.Prof.A.Madjid Ibrahim', '(0641) 21072,21072', '(0641) 20677 ', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(64, 'Dinas Pertanian,Perternakan dan Perikanan Kab. Aceh Tenggara', 'Jl.Blangkegeren KM 4 Kutacane', '(0629) 21346', '(0629) 21517 ', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(65, 'Dinas Perikanan dan Perternakan Kab. Aceh Tengah', ' Jl.Lembang 130 Takengon ', '(0643) 21038', '(0643) 21505', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(66, 'Dinas Perikanan dan Kelautan Kab. Aceh Selatan', 'Jl.T Ali No.216 Tapak Tuan ', '(0656) 21236', '(0656) 21398', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(67, 'Dinas Perikanan dan Kelautan Kab. Aceh Barat', ' Jl.Imam Bonjol No.114 Meulaboh ', '(0655) 21432', '(0655) 21432 ', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(68, 'Dinas Perikanan dan Kelautan Kab. Aceh Singkil', 'Jl.Singkil Medan Aceh Singkil ', '(0658) 21166', '(0658) 21222 ', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(69, 'Dinas Perikanan dan Kelautan Kab. Aceh Besar', ' Jl.T.Bahtiar Panglima Polem,SH.Kota Jatho ', '(0651) 92184', '(0651) 28451 ', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(70, 'Dinas Perikanan dan Kelautan Kota Sabang', ' Jl.KH.Agus Salim Sabang ', '(0652) 21415', '(0652) 21414 ', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(71, 'Dinas Pertanian,Peterakan,Perikanan dan Kelautan', 'Kota Banda aceh Jl.Tgk Dianjong No.148 Banda Aceh', '(0651) 22441', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(72, 'Dinas Perikanan dan Kelautan Kab. Simelu ', 'Jl.Baru', '(0650) 21708 ', '(0650) 21222 ', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(73, 'Dinas Pertanian,Perternakan,Perikanan dan Kelautan Kota Langsa', 'Jl.Ahmad Yani No.114', '', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(74, 'Dinas Pertanian,Perternakan,Perikanan dan Kelautan Kab.Nagan Raya', 'Jl.Merdeka No.10 suka Makmur', '(0655) 41196', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(75, 'Dinas Pertanian Kab.Gayolues', 'Jl.Blangkegeren Pasa Panjang', '', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(76, 'Dinas Pertanian Kab.Calang', 'Jl.Pendidikan No.1', '', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(77, 'Dinas Sumber Daya Kelautan dan Perikanan Kab. Aceh Barat Daya Blank Pidi Aceh Selatan', '', '', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(78, 'Dinas Pertanian Kab. Bekasi', ' Jl.A.yani No.1,Komplek Pemda Bekasi 17141', '(021) 8842232 8842233', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(79, 'Dinas Peternakan dan Perikanan', ' Kab.Bogor Jl.Bersib – Cibinong,Bogor', '(0251) 8755909 	', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(80, 'Dinas Perikanan dan Kelautan Kab. Sukabumi', ' Jl.Raya Ciseureuh No.9 Sukabumi', '(0266) 225043', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(81, 'Dinas Perikanan dan Peternakan Kab.Cianjur', 'Jl. Arief Rahman Hakim No. 26', '(0263) 261619', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(82, 'Dinas Peternakan dan Perikanan Kab.Bandung', 'Jl.Raya Soreang Km.17 Bandung', '(022) 5891729', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(83, 'Dinas Pertanian Kota Bandung', 'Jl. Arjuna 45, Bandung', '(022) 6015102', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(84, 'Dinas Perikanan dan Kelautan Kab.Garut', 'Jl.Baratayudha No.96 Garut', '(0262) 233644', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(85, 'Dinas Pertanian Kab. Sumedang', 'Jl.Pangeran Kornel No.307 (13) Sumedang', '(0261) 201010', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(86, 'Dinas Peternakan, Perikanan dan Kelautan Kab. Tasikmalaya', 'Jl. Jend. Yani No. 128, Tasikmalaya', '(0265) 331606', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(87, 'Dinas Kelautan dan Perikanan Kab. Ciamis', ' Jl. Rumah Sakit 39A, Ciamis', '(0265) 771280', '(0265) 773076', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(88, 'Dinas Pertanian dan Kelautan Kab. Cirebon', 'Jl. Sunan Muria No. 2, Cirebon', '(0231) 321783 ', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(89, 'Dinas Pertanian, Peternakan dan Perikanan Kota Cirebon', ' Jl. Sisingamangaraja No. 27, Cirebon', '(0231) 203600', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(90, 'Dinas Perikanan dan Kelautan Kab. Indramayu', ' Jl. Pabean Udik No.1 Indramayu', '(0234) 272767', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(91, 'Dinas Perikanan dan Kelautan Kab. Subang', 'Jl. A. Nata Sukarya No.28 Subang', '(0264) 411325', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(92, 'Dinas Peternakan Perikanan dan Kelautan Kab. Karawang', 'Jl. Ir. Suratno No.1 Karawang', '(0267) 406176', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(93, 'Dinas Peternakan dan Perikanan Kab. Purwakarta', 'Jl. Suradiraja No.28 Purwakarta', '(0264) 200331, 200221', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(94, 'Dinas Perikanan Kab. Kuningan', 'Jl. Aruji Kartawinata No.10 Kuningan', '(0232) 81188', '', '', 'Ir. Kadarusman, M.Sc', 'ON'),
(95, 'Dinas Perikanan Kab. Majalengka', 'Jl. Ibu Tien Suharto No.27 Majalengka', '(0233) 21545', '', '', 'Ir. Kadarusman, M.Sc', 'ON');

-- --------------------------------------------------------

--
-- Table structure for table `amar_aturan`
--

CREATE TABLE IF NOT EXISTS `amar_aturan` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TOPIK` varchar(222) NOT NULL,
  `ARTI` text,
  `SUMBER` varchar(222) DEFAULT NULL,
  `PHOTO1` varchar(222) NOT NULL,
  `PHOTO2` varchar(222) NOT NULL,
  `NAMA` varchar(222) NOT NULL,
  `UNIT` varchar(222) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `amar_aturan`
--

INSERT INTO `amar_aturan` (`ID`, `TOPIK`, `ARTI`, `SUMBER`, `PHOTO1`, `PHOTO2`, `NAMA`, `UNIT`) VALUES
(2, 'taksonomi_Bloom_revisi', '', '', 'taksonomi_Bloom_revisi.pdf', '', 'Ir. Kadarusman, M.Sc', '');

-- --------------------------------------------------------

--
-- Table structure for table `amar_fgd`
--

CREATE TABLE IF NOT EXISTS `amar_fgd` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `NAMA` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `HAK` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DIKLAT` varchar(222) COLLATE latin1_general_ci NOT NULL,
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
  `MK` varchar(222) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=5 ;

--
-- Dumping data for table `amar_fgd`
--

INSERT INTO `amar_fgd` (`ID`, `NAMA`, `HAK`, `DIKLAT`, `TAHUN`, `OPERATOR`, `HARI`, `BULAN`, `MULAI`, `SELESAI`, `URUT`, `KEJADIAN`, `PENUTUP`, `POKOK`, `PENDAHULUAN`, `JAM`, `WI`, `ACARA`, `MEDIA1`, `MEDIA2`, `MEDIA3`, `SOAL4`, `SOAL5`, `SOAL6`, `SOAL7`, `SOAL8`, `SOAL9`, `SOAL10`, `KUNCI1`, `KUNCI2`, `KUNCI3`, `KUNCI4`, `KUNCI5`, `KUNCI6`, `KUNCI7`, `KUNCI8`, `KUNCI9`, `KUNCI10`, `JAWAB1`, `JAWAB2`, `JAWAB3`, `JAWAB4`, `JAWAB5`, `JAWAB6`, `JAWAB7`, `JAWAB8`, `JAWAB9`, `JAWAB10`, `PASSWORD`, `MK`) VALUES
(1, '', '', 'FGD GARAM', '2015', 'Ir. Kadarusman, M.Sc', '14', '09', '', '', '1', '', '', '', '1.	Merekam (menghimpun) dan mengidentifikasi Peraturan Pemerintah atau Peraturan lainnya yang belum disusun dari berbagai stakeholders kelautan dan perikanan di Indonesia dalam rangka implementasi Undang-Undang Nomor 32 Tahun 2014 tentang Kelautan', '', 'SPT', 'TERBUKA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'Ir. Kadarusman, M.Sc', '', 'FGD GARAM', '2015', 'Ir. Kadarusman, M.Sc', '14', '09', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `amar_journal`
--

CREATE TABLE IF NOT EXISTS `amar_journal` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IUPHHK_HA` varchar(222) NOT NULL,
  `NAMA` varchar(255) DEFAULT NULL,
  `NIP` varchar(255) DEFAULT NULL,
  `HAK` varchar(255) DEFAULT NULL,
  `UNIT` varchar(255) DEFAULT NULL,
  `TAHUN` varchar(255) DEFAULT NULL,
  `BULAN` varchar(255) DEFAULT NULL,
  `PEGAWAI` varchar(255) DEFAULT NULL,
  `TANGGAL` varchar(255) DEFAULT NULL,
  `T1` varchar(255) DEFAULT NULL,
  `T2` varchar(255) DEFAULT NULL,
  `T3` varchar(255) DEFAULT NULL,
  `T4` varchar(255) DEFAULT NULL,
  `T5` varchar(255) DEFAULT NULL,
  `T6` varchar(255) DEFAULT NULL,
  `T7` varchar(255) DEFAULT NULL,
  `T8` varchar(255) DEFAULT NULL,
  `T9` varchar(255) DEFAULT NULL,
  `T10` varchar(255) DEFAULT NULL,
  `T11` varchar(255) DEFAULT NULL,
  `T12` varchar(255) DEFAULT NULL,
  `T13` varchar(255) DEFAULT NULL,
  `T14` varchar(255) DEFAULT NULL,
  `T15` varchar(255) DEFAULT NULL,
  `T16` varchar(255) DEFAULT NULL,
  `T17` varchar(255) DEFAULT NULL,
  `T18` varchar(255) DEFAULT NULL,
  `T19` varchar(255) DEFAULT NULL,
  `T20` varchar(255) DEFAULT NULL,
  `T21` varchar(255) DEFAULT NULL,
  `T22` varchar(255) DEFAULT NULL,
  `T23` varchar(255) DEFAULT NULL,
  `T24` varchar(255) DEFAULT NULL,
  `T25` varchar(255) DEFAULT NULL,
  `T26` varchar(255) DEFAULT NULL,
  `T27` varchar(255) DEFAULT NULL,
  `T28` varchar(255) DEFAULT NULL,
  `T29` varchar(255) DEFAULT NULL,
  `T30` varchar(255) DEFAULT NULL,
  `T31` varchar(255) DEFAULT NULL,
  `IJIN` varchar(255) DEFAULT NULL,
  `SAKIT` varchar(255) DEFAULT NULL,
  `CUTI` varchar(255) DEFAULT NULL,
  `DL` varchar(255) DEFAULT NULL,
  `TB` varchar(255) DEFAULT NULL,
  `TK` varchar(255) DEFAULT NULL,
  `HADIR` varchar(255) DEFAULT NULL,
  `PANGKAT` varchar(255) NOT NULL,
  `JABATAN` varchar(255) NOT NULL,
  `URAIAN` text NOT NULL,
  `JUMLAH` varchar(255) NOT NULL,
  `JENIS` varchar(255) NOT NULL,
  `KETERANGAN` varchar(255) NOT NULL,
  `LAMPIRAN` varchar(255) NOT NULL,
  `KREDIT` varchar(255) NOT NULL,
  `NILAI` varchar(222) NOT NULL,
  `SATUAN` varchar(222) NOT NULL,
  `KODE` varchar(222) NOT NULL,
  `URUT` varchar(222) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=183 ;

--
-- Dumping data for table `amar_journal`
--

INSERT INTO `amar_journal` (`ID`, `IUPHHK_HA`, `NAMA`, `NIP`, `HAK`, `UNIT`, `TAHUN`, `BULAN`, `PEGAWAI`, `TANGGAL`, `T1`, `T2`, `T3`, `T4`, `T5`, `T6`, `T7`, `T8`, `T9`, `T10`, `T11`, `T12`, `T13`, `T14`, `T15`, `T16`, `T17`, `T18`, `T19`, `T20`, `T21`, `T22`, `T23`, `T24`, `T25`, `T26`, `T27`, `T28`, `T29`, `T30`, `T31`, `IJIN`, `SAKIT`, `CUTI`, `DL`, `TB`, `TK`, `HADIR`, `PANGKAT`, `JABATAN`, `URAIAN`, `JUMLAH`, `JENIS`, `KETERANGAN`, `LAMPIRAN`, `KREDIT`, `NILAI`, `SATUAN`, `KODE`, `URUT`) VALUES
(3, '', 'AMAN ABADI', '', '', '', '2015', 'JUL', NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '', 'AMAN ABADI', '', '', '', '2015', 'JUL', NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'KKK', '', 'SALAM', 'SSERT', '', '', '', '', '', ''),
(4, '', 'AMAN ABADI', '', '', '', '2015', 'JUL', NULL, '24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'dd', '', 'SALAM', 'www', '', '', '', '', '', ''),
(5, 'SIMPEL ', 'AMAN ABADI', 'MIP', '', NULL, '2015', 'JUL', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'SIMPEL ', '1', 'SIMPEL ', 'SIMPEL', '', '', '', '', '', ''),
(6, 'SIMPEL ', 'AMAN ABADI', 'MIP', '', NULL, '2015', 'JUL', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'SIMPEL ', '1', 'SIMPEL ', 'SIMPEL', '', '', '', '', '', ''),
(70, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(8, 'SIMPEL ', 'AMAN ABADI', 'MIP', '', NULL, '2015', 'JUL', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'SIMPEL ', '1', 'SIMPEL ', 'SIMPEL', '', '', '', '', '', ''),
(9, 'NOTULENSI RAPAT', 'AMAN ABADI', '', '', NULL, '2015', 'JUL', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'SIMPEL ', '1', 'NOTULENSI RAPAT', 'SIMPEL', '', '', '', '', '', ''),
(10, 'NOTULENSI RAPAT', 'AMAN ABADI', '', '', NULL, '2015', 'JUL', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'SIMPEL ', '1', 'NOTULENSI RAPAT', 'SIMPEL', '', '', '', '', '', ''),
(11, 'SIMPEL ', '', '', '', NULL, '2015', 'JUL', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'SIMPEL ', '1', 'SIMPEL ', 'SIMPEL', '', '', '', '', '', ''),
(12, 'SIMPEL ', 'AMAN ABADI', 'MIP', '', NULL, '2015', 'JUL', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'SIMPEL ', '1', 'SIMPEL ', 'SIMPEL', '', '', '', '', '', ''),
(13, 'SIMPEL ', 'AMAN ABADI', 'MIP', '', NULL, '2015', 'JUL', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'SIMPEL ', '1', 'SIMPEL ', 'SIMPEL', '', '', '', '', '', ''),
(14, 'SIMPEL ', 'AMAN ABADI', 'MIP', '', NULL, '2015', 'JUL', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'SIMPEL ', '1', 'SIMPEL ', 'SIMPEL', '', '', '', '', '', ''),
(15, 'PIALA', 'AMAN ABADI', 'MIP', '', NULL, '2015', 'JUL', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PIALA', '', '', 'PIALA ', '1', 'PIALA ', 'SIMPEL', '', '', '', '', '', ''),
(16, 'NOTULENSI RAPAT', 'AMAN ABADI', '', '', NULL, '2015', 'JUL', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ANALISIS KEUANGAN', '', '', 'Notulensi Rapat ANALISIS KEUANGAN', '1', 'NOTULENSI RAPAT', 'ANALISIS KEUANGAN ', '', '', '', '', '', ''),
(17, 'NOTULENSI RAPAT', 'AMAN ABADI', '', '', NULL, '2015', 'JUL', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EVALUASI KEGIATAN', '', '', 'Notulensi Rapat EVALUASI KEGIATAN', '1', 'NOTULENSI RAPAT', 'EVALUASI KEGIATAN ', '', '', '', '', '', ''),
(18, 'RISALAH KEGIATAN', 'AMAN ABADI', '', '', NULL, '2015', 'JUL', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PENYUSUNAN NASKAH EVALUASI DIKLAT', '', '', 'Risalah Kegiatan PENYUSUNAN NASKAH EVALUASI DIKLAT', '1', 'RISALAH KEGIATAN', 'PENYUSUNAN NASKAH EVALUASI DIKLAT ', '', '', '', '', '', ''),
(19, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(20, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(21, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(22, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(23, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Pancawarna', '', '', 'Adminstrasi Jasa Lingkungan Bukit Pancawarna', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(24, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Pancawarna', '', '', 'Adminstrasi Jasa Lingkungan Bukit Pancawarna', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(25, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Pancawarna', '', '', 'Adminstrasi Jasa Lingkungan Bukit Pancawarna', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(26, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Pancawarna', '', '', 'Adminstrasi Jasa Lingkungan Bukit Pancawarna', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(27, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Pancawarna', '', '', 'Adminstrasi Jasa Lingkungan Bukit Pancawarna', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(28, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Jojo Dog', '', '', 'Adminstrasi Jasa Lingkungan Bukit Jojo Dog', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(29, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Jojo Dog', '', '', 'Adminstrasi Jasa Lingkungan Bukit Jojo Dog', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(30, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Jojo Dog', '', '', 'Adminstrasi Jasa Lingkungan Bukit Jojo Dog', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(31, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Jojo Dog', '', '', 'Adminstrasi Jasa Lingkungan Bukit Jojo Dog', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(32, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(33, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(34, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(35, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(36, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(37, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Pancawarna', '', '', 'Adminstrasi Jasa Lingkungan Bukit Pancawarna', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(38, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Pancawarna', '', '', 'Adminstrasi Jasa Lingkungan Bukit Pancawarna', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(39, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Jojo Dog', '', '', 'Adminstrasi Jasa Lingkungan Bukit Jojo Dog', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(40, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Jojo Dog', '', '', 'Adminstrasi Jasa Lingkungan Bukit Jojo Dog', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(41, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Pancawarna', '', '', 'Adminstrasi Jasa Lingkungan Bukit Pancawarna', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(42, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Pancawarna', '', '', 'Adminstrasi Jasa Lingkungan Bukit Pancawarna', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(43, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bukit Pancawarna', '', '', 'Adminstrasi Jasa Lingkungan Bukit Pancawarna', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(44, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(45, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(46, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(47, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(48, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(49, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(50, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Danau Suoh', '', '', 'Adminstrasi Jasa Lingkungan Danau Suoh', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(51, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(52, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(53, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Danau Suoh', '', '', 'Adminstrasi Jasa Lingkungan Danau Suoh', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(54, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(55, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(56, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'JUL', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(57, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Danau Suoh', '', '', 'Adminstrasi Jasa Lingkungan Danau Suoh', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(58, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'JUL', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(59, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'JUL', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(60, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'JUL', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(61, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'JUL', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 17 KALI WARU', '', '', 'Adminstrasi Resort Based Management RESORT 17 KALI WARU', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(62, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'JUL', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 17 KALI WARU', '', '', 'Adminstrasi Resort Based Management RESORT 17 KALI WARU', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(63, 'PIALA', '', '', '', NULL, '2015', 'JUL', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PIALA', '', '', 'PIALA ', '1', 'PIALA ', 'SIMPEL', '', '', '', '', '', ''),
(64, 'PIALA', 'HAGNYO WANDONO', '', '', NULL, '2015', 'JUL', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PIALA', '', '', 'PIALA ', '1', 'PIALA ', 'SIMPEL', '', '', '', '', '', ''),
(65, '', 'HAGNYO WANDONO', '', '', '', '2015', 'JAN', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', ''),
(66, 'Adminstrasi Jasa Lingkungan', 'SURATMAN', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'XXXXX', '', '', 'Adminstrasi Jasa Lingkungan XXXXX', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(67, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Danau Suoh', '', '', 'Adminstrasi Jasa Lingkungan Danau Suoh', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(68, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'JUL', NULL, '31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T31', NULL, NULL, NULL, NULL, NULL, NULL, 'Danau Suoh', '', '', 'Adminstrasi Jasa Lingkungan Danau Suoh', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(69, '', 'AMAN ABADI', '', '', '', '2015', 'AGS', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', ''),
(71, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(72, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(73, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(74, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(75, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(76, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(77, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(78, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(79, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(80, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALIKA', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALIKA', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(81, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(82, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(83, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(84, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(85, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(86, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(87, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(88, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(89, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(90, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(91, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(92, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT GUNUNG SUOH', '', '', 'Adminstrasi Resort Based Management RESORT GUNUNG SUOH', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(93, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(94, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(95, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESORT 1 MANDALAWANGI', '', '', 'Adminstrasi Resort Based Management RESORT 1 MANDALAWANGI', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(96, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEMONIA', '', '', 'Adminstrasi Resort Based Management LEMONIA', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(97, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEMONIA', '', '', 'Adminstrasi Resort Based Management LEMONIA', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(98, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEMONIA', '', '', 'Adminstrasi Resort Based Management LEMONIA', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(99, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEMONIA', '', '', 'Adminstrasi Resort Based Management LEMONIA', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(100, 'Adminstrasi Resort Based Management', '', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEMONIA', '', '', 'Adminstrasi Resort Based Management LEMONIA', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(101, 'Adminstrasi Resort Based Management', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEMONIA', '', '', 'Adminstrasi Resort Based Management LEMONIA', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(102, 'Adminstrasi Resort Based Management', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEMONIA', '', '', 'Adminstrasi Resort Based Management LEMONIA', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(103, 'Adminstrasi Resort Based Management', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEMONIA', '', '', 'Adminstrasi Resort Based Management LEMONIA', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(104, 'Adminstrasi Resort Based Management', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEMONIA', '', '', 'Adminstrasi Resort Based Management LEMONIA', '1', 'Adminstrasi Resort Based Management', 'Adminstrasi Resort Based Management', '', '', '', '', '', ''),
(105, 'Adminstrasi Koleksi Peraturan', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P.55/Menhut-II/2014 Tentang Izin Usaha Industri Hasil Hutan', '', '', 'Adminstrasi Koleksi Peraturan P.55/Menhut-II/2014 Tentang Izin Usaha Industri Hasil Hutan', '1', 'Adminstrasi Koleksi Peraturan', 'Adminstrasi Koleksi Peraturan', '', '', '', '', '', ''),
(106, 'Adminstrasi Koleksi Peraturan', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P.55/Menhut-II/2014 Tentang Izin Usaha Industri Hasil Hutan', '', '', 'Adminstrasi Koleksi Peraturan P.55/Menhut-II/2014 Tentang Izin Usaha Industri Hasil Hutan', '1', 'Adminstrasi Koleksi Peraturan', 'Adminstrasi Koleksi Peraturan', '', '', '', '', '', ''),
(107, 'Adminstrasi Koleksi Peraturan', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Peraturan baru', '', '', 'Adminstrasi Koleksi Peraturan Peraturan baru', '1', 'Adminstrasi Koleksi Peraturan', 'Adminstrasi Koleksi Peraturan', '', '', '', '', '', '');
INSERT INTO `amar_journal` (`ID`, `IUPHHK_HA`, `NAMA`, `NIP`, `HAK`, `UNIT`, `TAHUN`, `BULAN`, `PEGAWAI`, `TANGGAL`, `T1`, `T2`, `T3`, `T4`, `T5`, `T6`, `T7`, `T8`, `T9`, `T10`, `T11`, `T12`, `T13`, `T14`, `T15`, `T16`, `T17`, `T18`, `T19`, `T20`, `T21`, `T22`, `T23`, `T24`, `T25`, `T26`, `T27`, `T28`, `T29`, `T30`, `T31`, `IJIN`, `SAKIT`, `CUTI`, `DL`, `TB`, `TK`, `HADIR`, `PANGKAT`, `JABATAN`, `URAIAN`, `JUMLAH`, `JENIS`, `KETERANGAN`, `LAMPIRAN`, `KREDIT`, `NILAI`, `SATUAN`, `KODE`, `URUT`) VALUES
(108, 'Adminstrasi Koleksi Peraturan', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kkk', '', '', 'Adminstrasi Koleksi Peraturan kkk', '1', 'Adminstrasi Koleksi Peraturan', 'Adminstrasi Koleksi Peraturan', '', '', '', '', '', ''),
(109, 'Adminstrasi Koleksi Peraturan', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Peraturan baru', '', '', 'Adminstrasi Koleksi Peraturan Peraturan baru', '1', 'Adminstrasi Koleksi Peraturan', 'Adminstrasi Koleksi Peraturan', '', '', '', '', '', ''),
(110, 'Adminstrasi Koleksi Peraturan', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Peraturan baru', '', '', 'Adminstrasi Koleksi Peraturan Peraturan baru', '1', 'Adminstrasi Koleksi Peraturan', 'Adminstrasi Koleksi Peraturan', '', '', '', '', '', ''),
(111, 'Adminstrasi Gallery Photo', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Gallery Photo', '1', 'Adminstrasi Gallery Photo', 'Adminstrasi Gallery Photo', '', '', '', '', '', ''),
(112, 'Adminstrasi Gallery Photo', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Gallery Photo', '1', 'Adminstrasi Gallery Photo', 'Adminstrasi Gallery Photo', '', '', '', '', '', ''),
(113, 'Adminstrasi Koleksi Peraturan', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Koleksi Peraturan ', '1', 'Adminstrasi Koleksi Peraturan', 'Adminstrasi Koleksi Peraturan', '', '', '', '', '', ''),
(114, 'Adminstrasi Koleksi Peraturan', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Koleksi Peraturan ', '1', 'Adminstrasi Koleksi Peraturan', 'Adminstrasi Koleksi Peraturan', '', '', '', '', '', ''),
(115, 'Adminstrasi Gallery Photo', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Gallery Photo', '1', 'Adminstrasi Gallery Photo', 'Adminstrasi Gallery Photo', '', '', '', '', '', ''),
(116, 'Adminstrasi Pemandu Wisata', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HAMBA SAHAYA', '', '', 'Adminstrasi Pemandu Wisata', '1', 'Adminstrasi Pemandu Wisata', 'Adminstrasi Pemandu Wisata', '', '', '', '', '', ''),
(117, 'Adminstrasi Pemandu Wisata', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TEKNIK CATUR', '', '', 'Adminstrasi Pemandu Wisata', '1', 'Adminstrasi Pemandu Wisata', 'Adminstrasi Pemandu Wisata', '', '', '', '', '', ''),
(118, 'Adminstrasi Pemandu Wisata', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MAMAN SURAMAN', '', '', 'Adminstrasi Pemandu Wisata', '1', 'Adminstrasi Pemandu Wisata', 'Adminstrasi Pemandu Wisata', '', '', '', '', '', ''),
(119, 'Adminstrasi Pemandu Wisata', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MAMAN SURAMAN', '', '', 'Adminstrasi Pemandu Wisata', '1', 'Adminstrasi Pemandu Wisata', 'Adminstrasi Pemandu Wisata', '', '', '', '', '', ''),
(120, 'Adminstrasi Pemandu Wisata', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MAMAN SURAMAN', '', '', 'Adminstrasi Pemandu Wisata', '1', 'Adminstrasi Pemandu Wisata', 'Adminstrasi Pemandu Wisata', '', '', '', '', '', ''),
(121, 'Adminstrasi Pemandu Wisata', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MAMAN SURAMAN', '', '', 'Adminstrasi Pemandu Wisata', '1', 'Adminstrasi Pemandu Wisata', 'Adminstrasi Pemandu Wisata', '', '', '', '', '', ''),
(122, 'Adminstrasi Pemandu Wisata', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MAMAN SURAMAN', '', '', 'Adminstrasi Pemandu Wisata', '1', 'Adminstrasi Pemandu Wisata', 'Adminstrasi Pemandu Wisata', '', '', '', '', '', ''),
(123, 'Adminstrasi Pemandu Wisata', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MAMAN SURAMAN', '', '', 'Adminstrasi Pemandu Wisata', '1', 'Adminstrasi Pemandu Wisata', 'Adminstrasi Pemandu Wisata', '', '', '', '', '', ''),
(124, 'Adminstrasi Pemandu Wisata', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MAMAN SURAMAN', '', '', 'Adminstrasi Pemandu Wisata', '1', 'Adminstrasi Pemandu Wisata', 'Adminstrasi Pemandu Wisata', '', '', '', '', '', ''),
(125, 'Adminstrasi Pemandu Wisata', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MAMAN SURAMAN', '', '', 'Adminstrasi Pemandu Wisata', '1', 'Adminstrasi Pemandu Wisata', 'Adminstrasi Pemandu Wisata', '', '', '', '', '', ''),
(126, 'Adminstrasi Pemandu Wisata', 'HAGNYO WANDONO', '', '', NULL, '2015', 'AGS', NULL, '1', 'T1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CATUR MARGA', '', '', 'Adminstrasi Pemandu Wisata', '1', 'Adminstrasi Pemandu Wisata', 'Adminstrasi Pemandu Wisata', '', '', '', '', '', ''),
(127, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'AGS', NULL, '2', NULL, 'T2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(128, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'AGS', NULL, '2', NULL, 'T2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(129, 'Adminstrasi Jasa Lingkungan', '', '', '', NULL, '2015', 'AGS', NULL, '2', NULL, 'T2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Adminstrasi Jasa Lingkungan ', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(130, 'Adminstrasi Jasa Lingkungan', 'HAGNYO WANDONO', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'AGS', NULL, '2', NULL, 'T2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEMONIA', '', '', 'Adminstrasi Jasa Lingkungan LEMONIA', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(131, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'AGS', NULL, '2', NULL, 'T2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Danau Suoh', '', '', 'Adminstrasi Jasa Lingkungan Danau Suoh', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(132, 'RISALAH KEGIATAN', 'AMAN ABADI', '', '', NULL, '2015', 'AGS', NULL, '2', NULL, 'T2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PENYUSUNAN NASKAH EVALUASI DIKLAT', '', '', 'Risalah Kegiatan PENYUSUNAN NASKAH EVALUASI DIKLAT', '1', 'RISALAH KEGIATAN', 'PENYUSUNAN NASKAH EVALUASI DIKLAT 08.00 - 12.00', '', '', '', '', '', ''),
(133, 'NOTULENSI RAPAT', 'AMAN ABADI', '', '', NULL, '2015', 'AGS', NULL, '2', NULL, 'T2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EVALUASI KEGIATAN', '', '', 'Notulensi Rapat EVALUASI KEGIATAN', '1', 'NOTULENSI RAPAT', 'EVALUASI KEGIATAN ', '', '', '', '', '', ''),
(134, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'AGS', NULL, '5', NULL, NULL, NULL, NULL, 'T5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Danau Suoh', '', '', 'Adminstrasi Jasa Lingkungan Danau Suoh', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(135, 'Adminstrasi Jasa Lingkungan', 'AMAN ABADI', '', 'Balai Besar Taman Nasional Bukit Barisan Selatan', NULL, '2015', 'AGS', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Danau Suoh', '', '', 'Adminstrasi Jasa Lingkungan Danau Suoh', '1', 'Adminstrasi Jasa Lingkungan', 'Database Jasa Lingkungan', '', '', '', '', '', ''),
(142, '', 'TITTO', '', '', 'MENYAMAR', '2015', 'AGS', NULL, '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MENYAMAR', '', '', 'Menegur', '1', 'Pemantauan SIM PEPUTI II', '1', '', '', '', '', '', ''),
(144, '', 'TITTO', '', '', 'MENYAMAR', '2015', 'AGS', NULL, '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MENYAMAR', '', '', 'SALAMAN', '', 'Pemantauan SIM PEPUTI II', '', '', '', '', '', '', ''),
(145, '', 'TITTO', '', '', 'MELAKSANAKAN', '2015', 'AGS', NULL, '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MELAKSANAKAN', '', '', 'KALEM', '5', 'Pembinaan pegawai', '5', '', '', '', '', '', ''),
(146, '', 'Ir. Kadarusman, M.Sc', '', '', 'menyusun jadwal konsultasi kemaritiman', '2015', 'AGS', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'menyusun jadwal konsultasi kemaritiman', '', '', 'Pengembangan Pruduk Laut', '2', 'Jadwal Konsultasi', '2', '', '', '', '', '', ''),
(147, '', 'Ir. Kadarusman, M.Sc', '', '', 'melaksanakan konsultasi kemaritiman', '2015', 'AGS', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'melaksanakan konsultasi kemaritiman', '', '', 'FGD Pengembangan Produk di Bali', '1', 'Kegiatan Konsultasi Kemaritiman', '1', '', '', '', '', '', ''),
(148, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', 'menyusun jadwal konsultasi kemaritiman', '2015', 'SEP', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'menyusun jadwal konsultasi kemaritiman', '', '', 'PENGEMBANGAN PRODUK SUMBER DAYA HAYATI KEMARITIMAN', '1', 'DINAS PERIKANAN DAN KELAUTAN PROV. JAWA TIMUR', '1', '', '', '', '', '', ''),
(149, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(150, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(151, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(152, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(153, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM JAM', '', '', '', '', '', ''),
(154, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM JAM', '', '', '', '', '', ''),
(155, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM JAM', '', '', '', '', '', ''),
(156, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM JAM', '', '', '', '', '', ''),
(157, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM JAM', '', '', '', '', '', ''),
(158, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(159, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM JAM', '', '', '', '', '', ''),
(160, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(161, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(162, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(163, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM JAM', '', '', '', '', '', ''),
(164, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(165, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM JAM', '', '', '', '', '', ''),
(166, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(167, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM JAM', '', '', '', '', '', ''),
(168, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(169, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(170, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(171, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(172, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(173, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISALAH KEGIATAN', '', '', 'Risalah Kegiatan FGD GARAM', '1', 'FGD GARAM', 'FGD GARAM ', '', '', '', '', '', ''),
(174, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mencatat Surat Masuk', '', '', 'SIMPEL RAPAT', '1', 'SIMPEL RAPAT', 'SIMPEL', '', '', '', '', '', ''),
(175, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mencatat Surat Masuk', '', '', 'SIMPEL RAPAT', '1', 'SIMPEL RAPAT', 'SIMPEL', '', '', '', '', '', ''),
(176, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mencatat Surat Masuk', '', '', 'SIMPEL RAPAT', '1', 'SIMPEL RAPAT', 'SIMPEL', '', '', '', '', '', ''),
(177, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mencatat Surat Masuk', '', '', 'SIMPEL RAPAT', '1', 'SIMPEL RAPAT', 'SIMPEL', '', '', '', '', '', ''),
(178, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mencatat Surat Masuk', '', '', 'SIMPEL Rapat persiapan Pameran Ikan Laga', '1', 'SIMPEL Rapat persiapan Pameran Ikan Laga', 'SIMPEL', '', '', '', '', '', ''),
(179, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mencatat Surat Masuk', '', '', 'SIMPEL Rapat persiapan Pameran Ikan Laga', '1', 'SIMPEL Rapat persiapan Pameran Ikan Laga', 'SIMPEL', '', '', '', '', '', ''),
(180, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mencatat Surat Masuk', '', '', 'SIMPEL Rapat persiapan Pameran Ikan Laga', '1', 'SIMPEL Rapat persiapan Pameran Ikan Laga', 'SIMPEL', '', '', '', '', '', ''),
(181, '', 'Ir. Kadarusman, M.Sc', '196005091986031007', '', NULL, '2015', 'SEP', NULL, '16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mencatat Surat Masuk', '', '', 'SIMPEL Rapat persiapan Pameran Ikan Laga', '1', 'SIMPEL Rapat persiapan Pameran Ikan Laga', 'SIMPEL', '', '', '', '', '', ''),
(182, '', 'Hilal Maulana Firdaus', '', '', NULL, '2015', 'SEP', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mencatat Surat Masuk', '', '', 'SIMPEL Ijin mendampingi DEPUTI SDA dan Jasa di Manado', '1', 'SIMPEL Ijin mendampingi DEPUTI SDA dan Jasa di Manado', 'SIMPEL', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `amar_kamus`
--

CREATE TABLE IF NOT EXISTS `amar_kamus` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TOPIK` varchar(222) NOT NULL,
  `ARTI` text,
  `SUMBER` varchar(222) DEFAULT NULL,
  `PHOTO1` varchar(222) NOT NULL,
  `PHOTO2` varchar(222) NOT NULL,
  `NAMA` varchar(222) NOT NULL,
  `UNIT` varchar(222) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `amar_kamus`
--

INSERT INTO `amar_kamus` (`ID`, `TOPIK`, `ARTI`, `SUMBER`, `PHOTO1`, `PHOTO2`, `NAMA`, `UNIT`) VALUES
(4, 'Perahu', 'Perkembangan teknologi telah membawa perubahan besar terhadap tatanan dan cara hidup manusia. Setiap jenis pekerjaan dituntut untuk dapat dikerjakan dengan cara yang cepat dan tepat dan solusi terbaik adalah penggunaan Teknologi Informasi', 'data', 'IMG_20150911_222602.jpg', 'IMG_20150911_222732.jpg', 'Ir. Kadarusman, M.Sc', ''),
(5, 'KAPAL', 'Perkembangan teknologi telah membawa perubahan besar terhadap tatanan dan cara hidup manusia. Setiap jenis pekerjaan dituntut untuk dapat dikerjakan dengan cara yang cepat dan tepat dan solusi terbaik adalah penggunaan Teknologi Informasi', 'data', '', '', 'Ir. Kadarusman, M.Sc', '');

-- --------------------------------------------------------

--
-- Table structure for table `amar_muka`
--

CREATE TABLE IF NOT EXISTS `amar_muka` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KODE` varchar(222) NOT NULL,
  `KUNCI` text,
  `BUKA` text,
  `BAGIAN1` text NOT NULL,
  `BAGIAN2` text NOT NULL,
  `NAMA` varchar(222) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `amar_muka`
--

INSERT INTO `amar_muka` (`ID`, `KODE`, `KUNCI`, `BUKA`, `BAGIAN1`, `BAGIAN2`, `NAMA`) VALUES
(1, 'Agung Kuswandono.jpg', 'Website ini dibangun sebagai sarana publikasi untuk memberikan Informasi dan gambaran tentang penyajian data dan informasi terkait bidang Sumber Daya Alam dan Jasa Kemaritiman yang menjadi tugas pokok dan fungsi kami. Selain itu website ini juga digunakan sebagai sarana kerja yang bersifat intranet.', 'Selamat datang di Web-base Deputi Bidang Koordinasi Sumber Daya Alam dan Jasa, Kementerian Koordinator Bidang Kemaritiman dan Sumberdaya.', '', '', 'Agung Kuswandono<br>Deputi Bidang Koordinasi SDAJ');

-- --------------------------------------------------------

--
-- Table structure for table `amar_photo`
--

CREATE TABLE IF NOT EXISTS `amar_photo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TOPIK` varchar(222) NOT NULL,
  `ARTI` text,
  `SUMBER` varchar(222) DEFAULT NULL,
  `PHOTO1` varchar(222) NOT NULL,
  `PHOTO2` varchar(222) NOT NULL,
  `NAMA` varchar(222) NOT NULL,
  `UNIT` varchar(222) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `amar_photo`
--

INSERT INTO `amar_photo` (`ID`, `TOPIK`, `ARTI`, `SUMBER`, `PHOTO1`, `PHOTO2`, `NAMA`, `UNIT`) VALUES
(1, 'Kunjungan Kerja Asdep Sdumber Daya Hayati Ke Jawa Timur', '', '', 'photo_2015-09-05_16-53-48.jpg', '20150905025750.jpg', 'Ir. Kadarusman, M.Sc', ''),
(2, '', NULL, NULL, '', '', 'Rahmat Nur Samudra, ST, MMT', '');

-- --------------------------------------------------------

--
-- Table structure for table `amar_rumpun`
--

CREATE TABLE IF NOT EXISTS `amar_rumpun` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HAK` varchar(255) DEFAULT NULL,
  `NAMA` varchar(255) DEFAULT NULL,
  `INSTANSI` varchar(255) DEFAULT NULL,
  `JABATAN` varchar(255) NOT NULL,
  `NIP` varchar(255) NOT NULL,
  `KODE` varchar(255) NOT NULL,
  `URUT` varchar(255) NOT NULL,
  `TAHUN` varchar(222) NOT NULL,
  `RUMPUN` text NOT NULL,
  `BUKTI` varchar(222) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `amar_rumpun`
--

INSERT INTO `amar_rumpun` (`ID`, `HAK`, `NAMA`, `INSTANSI`, `JABATAN`, `NIP`, `KODE`, `URUT`, `TAHUN`, `RUMPUN`, `BUKTI`) VALUES
(1, 'BPPHP WIL. III PEKANBARU', 'Yeri Dwisyawal Aulia, S.Hut', 'BPPHP WIL. III PEKANBARU', 'PENELAAH DATA PEMANTAUAN EVALUASI HUTAN PRODUKSI', '198705302010121005', 'TUPOK', '', '2015', 'Menyusun dan menyampaikan daftar CAPEG yang telah memenuhi syarat untuk mengikuti latihan prajabatan', 'Dibuktikan'),
(2, 'BPPHP WIL. III PEKANBARU', 'Yeri Dwisyawal Aulia, S.Hut', 'BPPHP WIL. III PEKANBARU', 'PENELAAH DATA PEMANTAUAN EVALUASI HUTAN PRODUKSI', '198705302010121005', 'TUPOK', '', '2015', 'Mengusulkan dan memproses usul-usul jabatan, baik struktural maupun fungsional', 'Dibuktikan'),
(4, 'BPPHP WIL. XVII JAYAPURA', 'Yeri Dwisyawal Aulia, S.Hut', 'BPPHP WIL. III PEKANBARU', 'PENELAAH DATA PEMANTAUAN EVALUASI HUTAN PRODUKSI', '198705302010121005', 'TUPOK', '', '2015', 'Melaksanakan tugas yang diberikan didelegasikan dan atau dimandatkan kepada Kepala Sub Bagian Kepegawaian', 'Tidak Perlu'),
(6, '', '', '', '', '', 'TUPOK', '2', '2015', '', ''),
(7, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', 'TITTO', 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', 'Sekretaris Deputi Bidang Sumber Daya Alam dan Jasa', '', 'TUPOK', '', '2015', 'MENYAMAR', 'Dibuktikan'),
(8, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', 'TITTO', 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', 'Sekretaris Deputi Bidang Sumber Daya Alam dan Jasa', '', 'TUPOK', '', '2015', 'MELAKSANAKAN', 'Dibuktikan'),
(12, 'DEPUTI II', 'Ir. Kadarusman, M.Sc', 'DEPUTI II', '', '', 'TUPOK', '', '2015', 'menyusun jadwal konsultasi kemaritiman', 'Dibuktikan'),
(13, 'DEPUTI II', 'Ir. Kadarusman, M.Sc', 'DEPUTI II', '', '', 'TUPOK', '', '2015', 'melaksanakan konsultasi kemaritiman', 'Dibuktikan'),
(14, '', 'Rainy Shabrina Fadhly', 'Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional', '', '', 'TUPOK', '1', '2015', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `amar_sdm`
--

CREATE TABLE IF NOT EXISTS `amar_sdm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ESELON1` varchar(6) DEFAULT NULL,
  `ESELON2` varchar(222) NOT NULL,
  `ESELON3` varchar(222) NOT NULL,
  `ESELON4` varchar(222) NOT NULL,
  `STAFF` varchar(222) NOT NULL,
  `FUNGSIONAL` varchar(222) NOT NULL,
  `NAMA` varchar(222) DEFAULT NULL,
  `KPH` varchar(222) NOT NULL,
  `ALAM` varchar(222) NOT NULL,
  `RE` varchar(222) NOT NULL,
  `HTR` varchar(222) NOT NULL,
  `HD` varchar(222) NOT NULL,
  `HHBK` varchar(222) NOT NULL,
  `TANAMAN` varchar(222) NOT NULL,
  `GANIS` varchar(222) NOT NULL,
  `WASGANIS` varchar(222) NOT NULL,
  `Tempat_Lahir` varchar(222) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `Pendidikan` varchar(222) DEFAULT NULL,
  `Pangkat` varchar(222) DEFAULT NULL,
  `Jabatan` varchar(222) DEFAULT NULL,
  `Pejabat` varchar(222) DEFAULT NULL,
  `KPTS` varchar(222) DEFAULT NULL,
  `Tertanggal` varchar(222) DEFAULT NULL,
  `Angka_Kredit` varchar(255) DEFAULT NULL,
  `ANGKA_BARU` varchar(255) DEFAULT NULL,
  `Tempat_Tugas` varchar(255) DEFAULT NULL,
  `NIP` varchar(222) DEFAULT NULL,
  `TMT` varchar(222) DEFAULT NULL,
  `Tanggal_Lahir` varchar(16) DEFAULT NULL,
  `TMTPANGKAT` varchar(255) DEFAULT NULL,
  `ATASAN` varchar(222) DEFAULT NULL,
  `TMTJAB` varchar(255) DEFAULT NULL,
  `INSTANSI` varchar(222) DEFAULT NULL,
  `KABUPATEN` varchar(222) DEFAULT NULL,
  `PROVINSI` varchar(222) DEFAULT NULL,
  `Lokasi` varchar(255) DEFAULT NULL,
  `ALAMAT` varchar(222) DEFAULT NULL,
  `PHOTO` varchar(222) DEFAULT NULL,
  `Golongan` varchar(5) DEFAULT NULL,
  `Lembaga` varchar(222) DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL,
  `STAF` varchar(255) DEFAULT NULL,
  `DIKLAT1` varchar(222) DEFAULT NULL,
  `DIKLAT2` varchar(222) DEFAULT NULL,
  `DIKLAT3` varchar(222) DEFAULT NULL,
  `DIKLAT4` varchar(222) DEFAULT NULL,
  `DIKLAT5` varchar(222) DEFAULT NULL,
  `DIKLAT6` varchar(222) DEFAULT NULL,
  `DIKLAT7` varchar(222) DEFAULT NULL,
  `DIKLAT8` varchar(222) DEFAULT NULL,
  `DIKLAT9` varchar(222) DEFAULT NULL,
  `DIKLAT10` varchar(222) DEFAULT NULL,
  `TAHUN1` varchar(11) DEFAULT NULL,
  `TAHUN2` varchar(9) DEFAULT NULL,
  `TAHUN3` varchar(11) DEFAULT NULL,
  `TAHUN4` varchar(4) DEFAULT NULL,
  `TAHUN5` varchar(4) DEFAULT NULL,
  `TAHUN6` varchar(9) DEFAULT NULL,
  `TAHUN7` varchar(4) DEFAULT NULL,
  `TAHUN8` varchar(11) DEFAULT NULL,
  `TAHUN9` varchar(4) DEFAULT NULL,
  `TAHUN10` varchar(5) DEFAULT NULL,
  `ESELON` varchar(25) DEFAULT NULL,
  `USER` varchar(222) DEFAULT NULL,
  `URUT` mediumint(7) DEFAULT NULL,
  `PROF1` varchar(222) DEFAULT NULL,
  `PROF2` varchar(222) DEFAULT NULL,
  `PROF3` varchar(222) DEFAULT NULL,
  `PROF4` varchar(222) DEFAULT NULL,
  `PROF5` varchar(222) DEFAULT NULL,
  `PROF6` varchar(222) DEFAULT NULL,
  `PROF7` varchar(222) DEFAULT NULL,
  `PROF8` varchar(222) DEFAULT NULL,
  `PROF9` varchar(222) DEFAULT NULL,
  `PROF10` varchar(222) DEFAULT NULL,
  `FAKULTAS` varchar(222) DEFAULT NULL,
  `JURUSAN` varchar(222) DEFAULT NULL,
  `MASUK` varchar(4) DEFAULT NULL,
  `LOKASI_UNIV` varchar(222) DEFAULT NULL,
  `KELUAR` varchar(4) DEFAULT NULL,
  `UNIVERSITAS` varchar(222) DEFAULT NULL,
  `EMAIL` varchar(222) DEFAULT NULL,
  `HP` varchar(222) DEFAULT NULL,
  `SK` varchar(222) DEFAULT NULL,
  `JOB` varchar(255) DEFAULT NULL,
  `KARIS` varchar(255) DEFAULT NULL,
  `KARPEG` varchar(255) DEFAULT NULL,
  `KP4` varchar(255) DEFAULT NULL,
  `TASPEN` varchar(255) DEFAULT NULL,
  `ASKES` varchar(255) DEFAULT NULL,
  `DP32` varchar(255) DEFAULT NULL,
  `DP31` varchar(255) DEFAULT NULL,
  `IJASAH` varchar(255) DEFAULT NULL,
  `C_DIKLAT_1` varchar(255) DEFAULT NULL,
  `C_DIKLAT_2` varchar(255) DEFAULT NULL,
  `C_DIKLAT_3` varchar(255) DEFAULT NULL,
  `C_DIKLAT_4` varchar(255) DEFAULT NULL,
  `C_DIKLAT_5` varchar(255) DEFAULT NULL,
  `C_DIKLAT_6` varchar(255) DEFAULT NULL,
  `C_DIKLAT_7` varchar(255) DEFAULT NULL,
  `C_DIKLAT_8` varchar(255) DEFAULT NULL,
  `C_DIKLAT_9` varchar(255) DEFAULT NULL,
  `C_DIKLAT_10` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(222) DEFAULT NULL,
  `SMKK` varchar(222) DEFAULT NULL,
  `STATUS` varchar(222) DEFAULT NULL,
  `MA1` varchar(222) DEFAULT NULL,
  `MA2` varchar(222) DEFAULT NULL,
  `MA3` varchar(222) DEFAULT NULL,
  `MA4` varchar(222) DEFAULT NULL,
  `MA5` varchar(222) DEFAULT NULL,
  `AGAMA` varchar(222) DEFAULT NULL,
  `MULAI_BULAN` varchar(2) DEFAULT NULL,
  `MULAI_TAHUN` varchar(4) DEFAULT NULL,
  `KELAS` varchar(42) DEFAULT NULL,
  `LEVEL` varchar(2) DEFAULT NULL,
  `SEBUTAN` varchar(4) DEFAULT NULL,
  `LEVEL1` varchar(2) DEFAULT NULL,
  `LEVEL2` varchar(2) DEFAULT NULL,
  `LEVEL3` varchar(2) DEFAULT NULL,
  `LEVEL4` varchar(2) DEFAULT NULL,
  `LEVEL5` varchar(2) DEFAULT NULL,
  `LEVEL6` varchar(2) DEFAULT NULL,
  `SEBUTAN1` varchar(4) DEFAULT NULL,
  `SEBUTAN2` varchar(5) DEFAULT NULL,
  `SEBUTAN3` varchar(4) DEFAULT NULL,
  `SEBUTAN4` varchar(4) DEFAULT NULL,
  `SEBUTAN5` varchar(5) DEFAULT NULL,
  `SEBUTAN6` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `amar_sdm`
--

INSERT INTO `amar_sdm` (`ID`, `ESELON1`, `ESELON2`, `ESELON3`, `ESELON4`, `STAFF`, `FUNGSIONAL`, `NAMA`, `KPH`, `ALAM`, `RE`, `HTR`, `HD`, `HHBK`, `TANAMAN`, `GANIS`, `WASGANIS`, `Tempat_Lahir`, `Gender`, `Pendidikan`, `Pangkat`, `Jabatan`, `Pejabat`, `KPTS`, `Tertanggal`, `Angka_Kredit`, `ANGKA_BARU`, `Tempat_Tugas`, `NIP`, `TMT`, `Tanggal_Lahir`, `TMTPANGKAT`, `ATASAN`, `TMTJAB`, `INSTANSI`, `KABUPATEN`, `PROVINSI`, `Lokasi`, `ALAMAT`, `PHOTO`, `Golongan`, `Lembaga`, `Keterangan`, `STAF`, `DIKLAT1`, `DIKLAT2`, `DIKLAT3`, `DIKLAT4`, `DIKLAT5`, `DIKLAT6`, `DIKLAT7`, `DIKLAT8`, `DIKLAT9`, `DIKLAT10`, `TAHUN1`, `TAHUN2`, `TAHUN3`, `TAHUN4`, `TAHUN5`, `TAHUN6`, `TAHUN7`, `TAHUN8`, `TAHUN9`, `TAHUN10`, `ESELON`, `USER`, `URUT`, `PROF1`, `PROF2`, `PROF3`, `PROF4`, `PROF5`, `PROF6`, `PROF7`, `PROF8`, `PROF9`, `PROF10`, `FAKULTAS`, `JURUSAN`, `MASUK`, `LOKASI_UNIV`, `KELUAR`, `UNIVERSITAS`, `EMAIL`, `HP`, `SK`, `JOB`, `KARIS`, `KARPEG`, `KP4`, `TASPEN`, `ASKES`, `DP32`, `DP31`, `IJASAH`, `C_DIKLAT_1`, `C_DIKLAT_2`, `C_DIKLAT_3`, `C_DIKLAT_4`, `C_DIKLAT_5`, `C_DIKLAT_6`, `C_DIKLAT_7`, `C_DIKLAT_8`, `C_DIKLAT_9`, `C_DIKLAT_10`, `PASSWORD`, `SMKK`, `STATUS`, `MA1`, `MA2`, `MA3`, `MA4`, `MA5`, `AGAMA`, `MULAI_BULAN`, `MULAI_TAHUN`, `KELAS`, `LEVEL`, `SEBUTAN`, `LEVEL1`, `LEVEL2`, `LEVEL3`, `LEVEL4`, `LEVEL5`, `LEVEL6`, `SEBUTAN1`, `SEBUTAN2`, `SEBUTAN3`, `SEBUTAN4`, `SEBUTAN5`, `SEBUTAN6`) VALUES
(36, NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', '', '', '', '', 'Dr. Muh. Rasman Manafi, SP. M.Si', '', '', '', '', '', '', '', '', '', '', '', 'S3', 'Pembina Muda', 'Kepala Bagian Program', '', '', '', '', NULL, NULL, '', '', '', NULL, NULL, NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', NULL, '', NULL, 'IV/a', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Eselon III', NULL, 1300900, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, 'Asisten Deputi Jasa Kemaritiman', '', '', '', '', 'MOLLY', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Asisten Deputi Jasa Kemaritiman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eselon III', NULL, 55000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', '', '', '', '', 'Endang Pujiastuti', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 'Kepala Sub Bagian Tata Usaha', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eselon IV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', '', '', '', '', 'Andi Barli, SE. MM', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 'Kepala Sub Bagian Data dan Laporan', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', NULL, NULL, NULL, NULL, 'ANDI_PH.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eselon IV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, 'Asisten Deputi Sumber Daya Hayati', '', '', '', '', 'Dr. Ir. Andri Wahyono. M.Nat. Res', '', '', '', '', '', '', '', '', '', '', 'L', 'S3', 'Pembina Utama Tk. I', 'Asisten Deputi', '', '', '', '', NULL, NULL, '', '', '', NULL, NULL, NULL, 'Asisten Deputi Sumber Daya Hayati', NULL, 'Asisten Deputi Sumber Daya Hayati', NULL, '', 'ANDRI.jpg', 'IV/c', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Eselon II', NULL, 1500900, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, 'Asisten Deputi Sumber Daya Hayati', '', '', '', '', 'Dr. Ir. Gladys Peuru, M.Si', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'DEPUTI II', NULL, NULL, NULL, NULL, 'IMG_2365.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eselon III', NULL, 55000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1212', NULL, 'Dr. Ir. Andri Wahyono. M.Nat. Res', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, NULL, 'Asisten Deputi Sumber Daya Hayati', '', '', '', 'Penjenjangan MADYA', 'Ir. Kadarusman, M.Sc', '', '', '', '', '', '', '', '', '', '', '', 'S2', 'Pembina', '', '', '', '', '', NULL, NULL, '', '', '', NULL, NULL, NULL, 'DEPUTI II', NULL, 'Asisten Deputi Sumber Daya Hayati', NULL, '', 'kadarusman.jpg', 'IV/b', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Eselon III', NULL, 55000, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'kadarrusman@gmail.com', '08129963908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'regia', NULL, 'Dr. Ir. Andri Wahyono. M.Nat. Res', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, 'Asisten Deputi Sumber Daya Hayati', '', '', '', '', 'Sugeng Harmono, S.Hut., M.Si', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'DEPUTI II', NULL, NULL, NULL, NULL, 'SUGENG.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eselon III', NULL, 55000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '170845', NULL, 'Dr. Ir. Andri Wahyono. M.Nat. Res', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, 'Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional', '', '', '', '', 'Ir. Drs. Hamka, M.Si', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 'Kepala Bidang Pengelolaan Sumber Daya Mineral', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional', NULL, NULL, NULL, NULL, 'HAMKA.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eselon III', NULL, 55000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, 'Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional', '', '', '', '', 'Ir. Amalyos, MM', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 'Asisten Deputi', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eselon II', NULL, 60000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 'Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional', 'Bagian Tata Usaha', 'Subbagian Program dan Anggaran', 'PELAKSANA', '', 'Ir. Najamuddin, MT', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 'Kepala Bidang Pengelolaan Sumber Daya Energi', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eselon III', NULL, 55000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', '', '', '', 'Polisi Kehutanan', 'Permonojati Yudo Prawiro, M.S.E.,Ak.,CA', '', '', '', '', '', '', '', '', '', '', '', 'S2', 'Penata Tk. I', 'Kepala Bagian Ketatausahaan dan Laporan', '', '', '', '', NULL, NULL, '', '', '', NULL, '', NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', NULL, '', '', 'III/d', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Eselon IV', NULL, 1200800, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, 'Asisten Deputi Jasa Kemaritiman', '', '', '', '', 'Okto Irianto, SIP.MA', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 'Asisten Deputi', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Asisten Deputi Jasa Kemaritiman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eselon II', NULL, 60000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, 'Asisten Deputi Jasa Kemaritiman', '', '', '', '', 'Rahmat Nur Samudra, ST, MMT', '', '', '', '', '', '', '', '', '', 'Jailolo', 'L', 'S2', 'Pembina Muda', 'Kabid Jasa Kepelabuhanan', '', '', '', '', NULL, NULL, '19680914 199803 1 001', '01/03/1989', '14/09/1968', NULL, NULL, NULL, 'Asisten Deputi Jasa Kemaritiman', NULL, 'Asisten Deputi Jasa Kemaritiman', NULL, '', NULL, 'IV/a', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Eselon III', NULL, 1300800, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'samudraocean15@gmail.com', '0822 9339 6127', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lautan', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', '', '', '', '', 'TITO SETIAWAN, MM', '', '', '', '', '', '', '', '', '', '', '', '', 'Pembina Utama Tk. I', 'Sekretaris Deputi', '', '', '', '', NULL, NULL, '', '', '', NULL, NULL, NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', NULL, '', NULL, 'IV/c', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Eselon II', NULL, 1500000, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, 'Asisten Deputi Lingkungan dan Kebencanaan Maritim', '', '', '', '', 'Dr. Sahat M. Panggabean', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 'Asisten Deputi', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Asisten Deputi Lingkungan dan Kebencanaan Maritim', NULL, NULL, NULL, NULL, 'SAHAT.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eselon II', NULL, 60000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, 'Asisten Deputi Lingkungan dan Kebencanaan Maritim', '', '', '', '', 'Kus Prisetiahadi, Ph.D', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 'Kepala Bidang Perlindungan Lingkungan Laut', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Asisten Deputi Lingkungan dan Kebencanaan Maritim', NULL, NULL, NULL, NULL, 'Kus Prisetiahadi.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eselon III', NULL, 55000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, 'Asisten Deputi Lingkungan dan Kebencanaan Maritim', '', '', '', '', 'Dr. Nurul Istiqomah, S.Pi, M.Si', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'DEPUTI II', NULL, NULL, NULL, NULL, '8.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eselon III', NULL, 55000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1111', NULL, 'Dr. Sahat M. Panggabean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Deputi', '', '', '', '', '', 'Agung Kuswandono', '', '', '', '', '', '', '', '', '', '', '', 'S3', 'Pembina Utama', 'Deputi', '', '', '', '', NULL, NULL, '', '', '', NULL, NULL, NULL, '', NULL, '', NULL, '', 'Agung Kuswandono.jpg', 'IV/e', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Eselon I', 'wandono', 1705900, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deputi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', '', '', '', '', 'Okita Maulana', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'STAFF', NULL, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', '', '', '', '', 'Estu Rohmanulloh S.E', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Staf Bagian Program Deputi Sumber Daya Manusia dan Jasa', '', '', '', '', NULL, NULL, '', '18/09/2015', '18/04/1990', NULL, NULL, NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', NULL, 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', NULL, '', NULL, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', NULL, 10000, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'esturohmanulloh18@gmail.co', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23desember2009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, 'Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional', '', '', '', '', 'Rainy Shabrina Fadhly', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'STAFF', NULL, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, 'Asisten Deputi Sumber Daya Hayati', '', '', '', '', 'Hilal Maulana Firdaus', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 'Pengumpul dan Pengolah Data Sumber Daya Hayati', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Asisten Deputi Sumber Daya Hayati', NULL, NULL, NULL, NULL, '10.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'STAFF', NULL, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'maestro1133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, 'Asisten Deputi Lingkungan dan Kebencanaan Maritim', '', '', '', '', 'Natrika Febryanti', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'DEPUTI II', NULL, NULL, NULL, NULL, '2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'STAFF', NULL, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KKADE', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, 'Asisten Deputi Jasa Kemaritiman', '', '', '', '', 'Dian Oktaviani', '', '', '', '', '', '', '', '', '', '', '', 'SLTA', '', '', '', '', '', '', NULL, NULL, '', '', '12/10/1997', NULL, NULL, NULL, 'Asisten Deputi Jasa Kemaritiman', NULL, 'Asisten Deputi Jasa Kemaritiman', NULL, '', NULL, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', NULL, 10300, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'o.dian91@yahoo.co.id', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'anyun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `amar_urjab`
--

CREATE TABLE IF NOT EXISTS `amar_urjab` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HAK` varchar(255) DEFAULT NULL,
  `NAMA` varchar(255) DEFAULT NULL,
  `INSTANSI` varchar(255) DEFAULT NULL,
  `JABATAN` varchar(255) NOT NULL,
  `NIP` varchar(255) NOT NULL,
  `KREDIT` varchar(255) NOT NULL,
  `ESELON2` varchar(255) NOT NULL,
  `ESELON3` varchar(250) NOT NULL,
  `ESELON4` varchar(250) NOT NULL,
  `ATASAN` varchar(255) DEFAULT NULL,
  `KODE` varchar(255) NOT NULL,
  `ORGANISASI` varchar(255) NOT NULL,
  `MISI` text NOT NULL,
  `PDF` varchar(255) NOT NULL DEFAULT '',
  `HASIL` text NOT NULL,
  `BAHAN` text NOT NULL,
  `PERLENGKAPAN` text NOT NULL,
  `T_JAWAB` text NOT NULL,
  `WEWENANG` text NOT NULL,
  `BAWAHAN` text NOT NULL,
  `NAMA_JABATAN` text NOT NULL,
  `UNIT` text NOT NULL,
  `DALAM` text NOT NULL,
  `LINGKUNGAN` text NOT NULL,
  `RESIKO` text NOT NULL,
  `PENDIDIKAN` varchar(255) NOT NULL,
  `PENJENJANGAN` varchar(255) NOT NULL,
  `TEKNIS` varchar(255) NOT NULL,
  `PENGALAMAN` varchar(255) NOT NULL,
  `BAKAT` varchar(255) NOT NULL,
  `KHUSUS` varchar(255) NOT NULL,
  `KELAMIN` varchar(255) NOT NULL,
  `UMUR` varchar(255) NOT NULL,
  `KESEHATAN` varchar(255) NOT NULL,
  `PANGKAT` varchar(255) NOT NULL,
  `INFORMASI` varchar(255) DEFAULT NULL,
  `RINCI_01` text,
  `HURUF` varchar(255) DEFAULT NULL,
  `RINCI_03` text,
  `RINCI_04` text,
  `RINCI_05` text,
  `RINCI_06` text,
  `RINCI_07` text,
  `RINCI_08` text,
  `RINCI_09` text,
  `RINCI_10` text,
  `RINCI_11` text,
  `RINCI_12` text,
  `RINCI_13` text,
  `RINCI_14` text,
  `RINCI_15` text,
  `RINCI_16` text,
  `RINCI_17` text,
  `RINCI_18` text,
  `RINCI_19` text,
  `RINCI_20` text,
  `HASIL_01` text,
  `HASIL_02` text,
  `HASIL_03` text,
  `HASIL_04` text,
  `HASIL_05` text,
  `HASIL_06` text,
  `HASIL_07` text,
  `HASIL_08` text,
  `HASIL_09` text,
  `HASIL_10` text,
  `HASIL_11` text,
  `HASIL_12` text,
  `HASIL_13` text,
  `HASIL_14` text,
  `HASIL_15` text,
  `HASIL_16` text,
  `HASIL_17` text,
  `HASIL_18` text,
  `HASIL_19` text,
  `HASIL_20` text,
  `BAHAN_01` text,
  `BAHAN_02` text,
  `BAHAN_03` text,
  `BAHAN_04` text,
  `BAHAN_05` text,
  `BAHAN_06` text,
  `BAHAN_07` text,
  `BAHAN_08` text,
  `BAHAN_09` text,
  `BAHAN_10` text,
  `BAHAN_11` text,
  `BAHAN_12` text,
  `BAHAN_13` text,
  `BAHAN_14` text,
  `BAHAN_15` text,
  `BAHAN_16` text,
  `BAHAN_17` text,
  `BAHAN_18` text,
  `BAHAN_19` text,
  `BAHAN_20` text,
  `PERLENGKAPAN_01` text,
  `PERLENGKAPAN_02` text,
  `PERLENGKAPAN_03` text,
  `PERLENGKAPAN_04` text,
  `PERLENGKAPAN_05` text,
  `PERLENGKAPAN_06` text,
  `PERLENGKAPAN_07` text,
  `PERLENGKAPAN_08` text,
  `PERLENGKAPAN_09` text,
  `PERLENGKAPAN_10` text,
  `JAWAB_01` text,
  `JAWAB_02` text,
  `JAWAB_03` text,
  `JAWAB_04` text,
  `JAWAB_05` text,
  `JAWAB_06` text,
  `JAWAB_07` text,
  `JAWAB_08` text,
  `JAWAB_09` text,
  `JAWAB_10` text,
  `WEWENANG_01` text,
  `WEWENANG_02` text,
  `WEWENANG_03` text,
  `WEWENANG_04` text,
  `WEWENANG_05` text,
  `WEWENANG_06` text,
  `WEWENANG_07` text,
  `WEWENANG_08` text,
  `WEWENANG_09` text,
  `WEWENANG_10` text,
  `WEWENANG_11` text,
  `WEWENANG_12` text,
  `WEWENANG_13` text,
  `WEWENANG_14` text,
  `WEWENANG_15` text,
  `WEWENANG_16` text,
  `WEWENANG_17` text,
  `WEWENANG_18` text,
  `WEWENANG_19` text,
  `WEWENANG_20` text,
  `BAWAHAN_01` text,
  `BAWAHAN_02` text,
  `BAWAHAN_03` text,
  `BAWAHAN_04` text,
  `BAWAHAN_05` text,
  `BAWAHAN_06` text,
  `BAWAHAN_07` text,
  `BAWAHAN_08` text,
  `BAWAHAN_09` text,
  `BAWAHAN_10` text,
  `TEORI` varchar(255) NOT NULL,
  `PRAKTEK` varchar(255) NOT NULL,
  `RUMPUN` varchar(255) NOT NULL,
  `SUMBER` varchar(255) NOT NULL,
  `KELOMPOK` varchar(255) NOT NULL,
  `TAHUN` varchar(255) NOT NULL,
  `URUT` varchar(255) NOT NULL,
  `PINDAHAN` varchar(255) NOT NULL,
  `ALIAS` varchar(255) NOT NULL,
  `NILAI` varchar(255) NOT NULL,
  `SATUAN` varchar(255) NOT NULL,
  `SEBUTAN` varchar(255) NOT NULL,
  `LEVEL` varchar(255) NOT NULL,
  `FIX` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `amar_urjab`
--

INSERT INTO `amar_urjab` (`ID`, `HAK`, `NAMA`, `INSTANSI`, `JABATAN`, `NIP`, `KREDIT`, `ESELON2`, `ESELON3`, `ESELON4`, `ATASAN`, `KODE`, `ORGANISASI`, `MISI`, `PDF`, `HASIL`, `BAHAN`, `PERLENGKAPAN`, `T_JAWAB`, `WEWENANG`, `BAWAHAN`, `NAMA_JABATAN`, `UNIT`, `DALAM`, `LINGKUNGAN`, `RESIKO`, `PENDIDIKAN`, `PENJENJANGAN`, `TEKNIS`, `PENGALAMAN`, `BAKAT`, `KHUSUS`, `KELAMIN`, `UMUR`, `KESEHATAN`, `PANGKAT`, `INFORMASI`, `RINCI_01`, `HURUF`, `RINCI_03`, `RINCI_04`, `RINCI_05`, `RINCI_06`, `RINCI_07`, `RINCI_08`, `RINCI_09`, `RINCI_10`, `RINCI_11`, `RINCI_12`, `RINCI_13`, `RINCI_14`, `RINCI_15`, `RINCI_16`, `RINCI_17`, `RINCI_18`, `RINCI_19`, `RINCI_20`, `HASIL_01`, `HASIL_02`, `HASIL_03`, `HASIL_04`, `HASIL_05`, `HASIL_06`, `HASIL_07`, `HASIL_08`, `HASIL_09`, `HASIL_10`, `HASIL_11`, `HASIL_12`, `HASIL_13`, `HASIL_14`, `HASIL_15`, `HASIL_16`, `HASIL_17`, `HASIL_18`, `HASIL_19`, `HASIL_20`, `BAHAN_01`, `BAHAN_02`, `BAHAN_03`, `BAHAN_04`, `BAHAN_05`, `BAHAN_06`, `BAHAN_07`, `BAHAN_08`, `BAHAN_09`, `BAHAN_10`, `BAHAN_11`, `BAHAN_12`, `BAHAN_13`, `BAHAN_14`, `BAHAN_15`, `BAHAN_16`, `BAHAN_17`, `BAHAN_18`, `BAHAN_19`, `BAHAN_20`, `PERLENGKAPAN_01`, `PERLENGKAPAN_02`, `PERLENGKAPAN_03`, `PERLENGKAPAN_04`, `PERLENGKAPAN_05`, `PERLENGKAPAN_06`, `PERLENGKAPAN_07`, `PERLENGKAPAN_08`, `PERLENGKAPAN_09`, `PERLENGKAPAN_10`, `JAWAB_01`, `JAWAB_02`, `JAWAB_03`, `JAWAB_04`, `JAWAB_05`, `JAWAB_06`, `JAWAB_07`, `JAWAB_08`, `JAWAB_09`, `JAWAB_10`, `WEWENANG_01`, `WEWENANG_02`, `WEWENANG_03`, `WEWENANG_04`, `WEWENANG_05`, `WEWENANG_06`, `WEWENANG_07`, `WEWENANG_08`, `WEWENANG_09`, `WEWENANG_10`, `WEWENANG_11`, `WEWENANG_12`, `WEWENANG_13`, `WEWENANG_14`, `WEWENANG_15`, `WEWENANG_16`, `WEWENANG_17`, `WEWENANG_18`, `WEWENANG_19`, `WEWENANG_20`, `BAWAHAN_01`, `BAWAHAN_02`, `BAWAHAN_03`, `BAWAHAN_04`, `BAWAHAN_05`, `BAWAHAN_06`, `BAWAHAN_07`, `BAWAHAN_08`, `BAWAHAN_09`, `BAWAHAN_10`, `TEORI`, `PRAKTEK`, `RUMPUN`, `SUMBER`, `KELOMPOK`, `TAHUN`, `URUT`, `PINDAHAN`, `ALIAS`, `NILAI`, `SATUAN`, `SEBUTAN`, `LEVEL`, `FIX`) VALUES
(1, '', 'AMANkan Saja', '', 'Penata', 'NIP-0987654321', '', '', '', '', NULL, 'TUPOK1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'Menyusun daftar hutang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2015', '1', '', '', '', '', '', '', ''),
(7, '', 'AMANkan Saja', '', 'Penata', 'NIP-0987654321', '', '', '', '', NULL, 'TUPOK2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'Merapihkan data hutang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2015', '2', '', '', '', '', '', '', ''),
(8, '', 'RONI RONIAN', 'Sekretariat Direktorat Jenderal', 'Penata', 'NIP-0987654321', '', '', '', '', NULL, 'TUPOK1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'goreng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2015', '1', '', '', '', '', '', '', ''),
(9, '', 'Kadarusman', 'Direktorat Kesatuan Pengelolaan Hutan Produksi', 'Asesor SDM', '', '', '', '', '', NULL, 'TUPOK1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'makan aja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2015', '1', '', '', '', '', '', '', ''),
(10, '', 'ASEP GORBACHEP', '', '', '', '', '', '', '', NULL, 'TUPOK1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'MENGHIMPUN DATA HUTANG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2015', '1', '', '', '', '', '', '', ''),
(11, '', 'ASEP GORBACHEP', '', '', '', '', '', '', '', NULL, 'TUPOK2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'MENGOREK-NGOREK MENGHIMPUN DATA HUTANG MENGHIMPUN DATA HUTANG MENGHIMPUN DATA HUTANG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2015', '2', '', '', '', '', '', '', ''),
(12, '', 'ADE SURYANI', 'Direktorat Kesatuan Pengelolaan Hutan Produksi', 'PENGATUR DATA', 'NO', '', '', '', '', NULL, 'TUPOK1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'MENCATAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2015', '1', '', '', '', '', '', '', ''),
(13, '', 'ADE SURYANI', 'Direktorat Kesatuan Pengelolaan Hutan Produksi', 'PENGATUR DATA', 'NO', '', '', '', '', NULL, 'TUPOK2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'MENDATA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2015', '2', '', '', '', '', '', '', ''),
(14, '', 'AMAN ABADI', 'Balai Besar Taman Nasional Bukit Barisan Selatan', 'PENGATUR DATA', 'MIP', '', '', '', '', NULL, 'TUPOK1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'SALAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2015', '1', '', '', '', '', '', '', ''),
(16, '', 'AMAN ABADI', 'Balai Besar Taman Nasional Bukit Barisan Selatan', 'PENGATUR DATA', 'MIP', '', '', '', '', NULL, 'TUPOK2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'TERIMA KASIH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2015', '2', '', '', '', '', '', '', ''),
(17, '', 'HAGNYO WANDONO', 'Balai Besar Taman Nasional Bukit Barisan Selatan', 'PEH Ahli Madya', '', '', '', '', '', NULL, 'TUPOK1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'Analisa Potensi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2015', '1', '', '', '', '', '', '', ''),
(18, '', 'HAGNYO WANDONO', 'Balai Besar Taman Nasional Bukit Barisan Selatan', 'PEH Ahli Madya', '', '', '', '', '', NULL, 'TUPOK2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'Sosialisasi Peraturan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2015', '2', '', '', '', '', '', '', ''),
(39, '', 'TITTO', 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', 'Sekretaris Deputi Bidang Sumber Daya Alam dan Jasa', '', '', '', '', '', NULL, 'TUPOK1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12', 'Pemantauan SIM PEPUTI II', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'MENYAMAR', '', '', '2015', '1', '', '', '', 'Bulan', '', '', ''),
(42, '', 'TITTO', 'Sekretariat Deputi Bidang Sumber Daya Alam dan Jasa', 'Sekretaris Deputi Bidang Sumber Daya Alam dan Jasa', '', '', '', '', '', NULL, 'TUPOK1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12', 'Pembinaan pegawai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'MELAKSANAKAN', '', '', '2015', '1', '', '', '', 'Bulan', '', '', ''),
(43, '', 'TITTO', 'DEPUTI II', 'Sekretaris Deputi Bidang Sumber Daya Alam dan Jasa', '', '', '', '', '', NULL, 'TUPOK2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '100', 'MENGKOPILASI DATA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'MELAKSANAKAN', '', '', '2015', '2', '', '', '', 'Dokumen', '', '', ''),
(44, '', 'Ir. Kadarusman, M.Sc', 'DEPUTI II', '', '', '', '', '', '', NULL, 'TUPOK1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', 'Jadwal Konsultasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'menyusun jadwal konsultasi kemaritiman', '', '', '2015', '1', '', '', '', 'Kegiatan', '', '', ''),
(45, '', 'Ir. Kadarusman, M.Sc', 'DEPUTI II', '', '', '', '', '', '', NULL, 'TUPOK1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', 'Kegiatan Konsultasi Kemaritiman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'melaksanakan konsultasi kemaritiman', '', '', '2015', '1', '', '', '', 'Kegiatan', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
