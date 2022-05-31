-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 01:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `on-learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment_name` varchar(128) NOT NULL,
  `comment_image` varchar(128) NOT NULL,
  `comment_content` varchar(500) NOT NULL,
  `comment_time` int(11) NOT NULL,
  `comment_post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment_name`, `comment_image`, `comment_content`, `comment_time`, `comment_post_id`) VALUES
(15, 'Wildan Fahmi Mubarok', 'default.jpg', 'e. eksreksi', 1653542801, 3),
(16, 'M. Jihad Alfaridzi', 'default.jpg', '= 6^2 + 4^8 - 3^32\r\n= 6^2 + 4^4 * 2 - 3^16 x 2\r\n= 6^2 + 4 x 2 x ^2 - 3 x 4 x ^2\r\n= 6^2 + 8^2 - 12^2\r\n= (6 + 8 - 12)^2\r\n= 2^2', 1653543839, 4);

-- --------------------------------------------------------

--
-- Table structure for table `jenjang`
--

CREATE TABLE `jenjang` (
  `id` int(11) NOT NULL,
  `jenjang` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenjang`
--

INSERT INTO `jenjang` (`id`, `jenjang`) VALUES
(1, 'Sekolah Dasar'),
(2, 'Sekolah Menengah Pertama'),
(3, 'Sekolah Menengah Atas');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III'),
(4, 'IV'),
(5, 'V'),
(6, 'VI'),
(7, 'VII'),
(8, 'VIII'),
(9, 'IX'),
(10, 'X'),
(11, 'XI'),
(12, 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `id_jenjang` int(11) NOT NULL,
  `id_pelajaran` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `materi` varchar(128) NOT NULL,
  `file` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `id_jenjang`, `id_pelajaran`, `id_kelas`, `materi`, `file`) VALUES
(1, 1, 1, 1, 'Bilangan Cacah', 'mtk-kls1-b1.pdf'),
(2, 1, 1, 1, 'Pengukuran', 'mtk-kls1-b2.pdf'),
(3, 1, 1, 1, 'Bangun Ruang', 'mtk-kls1-b3.pdf'),
(4, 1, 1, 1, 'Penjumlahan dan Pengurangan', 'mtk-kls1-b4.pdf'),
(5, 1, 1, 1, 'Pengukuran Berat', 'mtk-kls1-b5.pdf'),
(6, 1, 1, 1, 'Bangun Datar', 'mtk-kls1-b6.pdf'),
(8, 1, 3, 1, 'Diri Sendiri', 'bin-kls1-b1.pdf'),
(9, 1, 3, 1, 'Kegiatan', 'bin-kls1-b2.pdf'),
(10, 1, 3, 1, 'Kesehatan', 'bin-kls1-b3.pdf'),
(11, 1, 3, 1, 'Keluarga', 'bin-kls1-b4.pdf'),
(13, 1, 3, 1, 'Berlibur', 'bin-kls1-b6.pdf'),
(14, 1, 3, 1, 'Binatang', 'bin-kls1-b7.pdf'),
(15, 1, 3, 1, 'Peristiwa', 'bin-kls1-b8.pdf'),
(16, 1, 3, 1, 'Kegemaran', 'bin-kls1-b9.pdf'),
(17, 1, 3, 1, 'Budi Pekerti', 'bin-kls1-b10.pdf'),
(18, 1, 2, 1, 'Bagian - Bagian Tubuh', 'ipa-kls1-b1.pdf'),
(19, 1, 2, 1, 'Tubuh Sehat dan Kuat', 'ipa-kls1-b2.pdf'),
(20, 1, 2, 1, 'Membiasakan Hidup Sehat', 'ipa-kls1-b3.pdf'),
(21, 1, 2, 1, 'Memelihara Lingkungan', 'ipa-kls1-b4.pdf'),
(22, 1, 2, 1, 'Lingkungan Sehat dan Lingkungan Tidak Sehat', 'ipa-kls1-b5.pdf'),
(23, 1, 2, 1, 'Merawat Lingkungan Bersih dan Sehat', 'ipa-kls1-b6.pdf'),
(24, 1, 2, 1, 'Benda - Benda disekitar Kita dan Ciri - Cirinya', 'ipa-kls1-b7.pdf'),
(25, 1, 2, 1, 'Perubahan Benda', 'ipa-kls1-b8.pdf'),
(26, 1, 2, 1, 'Kegunaan Benda', 'ipa-kls1-b9.pdf'),
(27, 1, 2, 1, 'Gerak Benda', 'ipa-kls1-b10.pdf'),
(28, 1, 2, 1, 'Gerak Benda dan Penyebabnya', 'ipa-kls1-b11.pdf'),
(37, 1, 2, 1, 'Benda Langit', 'ipa-kls1-b12.pdf'),
(38, 1, 2, 1, 'Keadaan Cuaca', 'ipa-kls1-b13.pdf'),
(39, 1, 2, 1, 'Musim Kemarau dan Musim Penghujan', 'ipa-kls1-b14.pdf'),
(40, 1, 4, 1, 'Greetings', 'eng-kls1-b1.pdf'),
(41, 1, 4, 1, 'Alphabet', 'eng-kls1-b2.pdf'),
(42, 1, 4, 1, 'Numbers', 'eng-kls1-b3.pdf'),
(43, 1, 4, 1, 'Colors', 'eng-kls1-b4.pdf'),
(44, 1, 4, 1, 'Animals', 'eng-kls1-b5.pdf'),
(45, 1, 4, 1, 'Part of Body', 'eng-kls1-b6.pdf'),
(46, 1, 4, 1, 'My Family', 'eng-kls1-b7.pdf'),
(47, 1, 4, 1, 'My House', 'eng-kls1-b8.pdf'),
(48, 1, 1, 1, 'Full Bab Matematika Kelas 1', 'mtk-kls1-full.pdf'),
(49, 1, 1, 2, 'Penjumlahan dan Pengurangan Bilangan Sampai 500', 'mtk-kls2-b1.pdf'),
(50, 1, 1, 2, 'Pengukuran Waktu, Panjang dan Berat', 'mtk-kls2-b2.pdf'),
(51, 1, 1, 2, 'Perkalian dan Pembagian', 'mtk-kls2-b3.pdf'),
(52, 1, 1, 2, 'Unsur - Unsur Bangun Datar Sederhana', 'mtk-kls2-b4.pdf'),
(53, 1, 1, 2, 'Full Bab Matematika Kelas 2', 'mtk-kls2-full.pdf'),
(54, 1, 3, 1, 'Full Bab Bahasa Indonesia Kelas 1', 'bin-kls1-full.pdf'),
(55, 1, 2, 1, 'Full Bab Ilmu Pengetahuan Alam Kelas 1', 'ipa-kls1-full.pdf'),
(56, 1, 4, 1, 'Full Bab Bahasa Inggris Kelas 1', 'eng-kls1-full.pdf'),
(57, 1, 3, 2, 'Tamasya', 'bin-kls2-b1.pdf'),
(58, 1, 3, 2, 'Kegemaran', 'bin-kls2-b2.pdf'),
(59, 1, 3, 2, 'Perpustakaan Sekolah', 'bin-kls2-b3.pdf'),
(60, 1, 3, 2, 'Peristiwa', 'bin-kls2-b4.pdf'),
(61, 1, 3, 2, 'Kehidupan', 'bin-kls2-b5.pdf'),
(62, 1, 3, 2, 'Lingkungan', 'bin-kls2-b6.pdf'),
(63, 1, 3, 2, 'Kenangan Masa Kecilku', 'bin-kls2-b7.pdf'),
(64, 1, 3, 2, 'Budaya', 'bin-kls2-b8.pdf'),
(65, 1, 3, 2, 'Full Bab Bahasa Indonesia Kelas 2', 'bin-kls2-full.pdf'),
(66, 1, 4, 2, 'Feelings', 'eng-kls2-b1.pdf'),
(67, 1, 4, 2, 'My Daily Activity', 'eng-kls2-b2.pdf'),
(68, 1, 4, 2, 'Things In My House', 'eng-kls2-b3.pdf'),
(69, 1, 4, 2, 'Preposition of Place', 'eng-kls2-b4.pdf'),
(70, 1, 4, 2, 'Meet My Family', 'eng-kls2-b5.pdf'),
(71, 1, 4, 2, 'Full Bab Bahasa Inggris Kelas 2', 'eng-kls2-full.pdf'),
(72, 1, 1, 3, 'Bilangan', 'mtk-kls3-b1.pdf'),
(73, 1, 1, 3, 'Pengukuran', 'mtk-kls3-b2.pdf'),
(74, 1, 1, 3, 'Bilangan Pecahan', 'mtk-kls3-b3.pdf'),
(75, 1, 1, 3, 'Bangun Datar', 'mtk-kls3-b4.pdf'),
(76, 1, 1, 3, 'Full Bab Matematika Kelas 3', 'mtk-kls3-full.pdf'),
(77, 1, 3, 3, 'Diri Sendiri', 'bin-kls3-b1.pdf'),
(78, 1, 3, 3, 'Merawat Rumah', 'bin-kls3-b2.pdf'),
(79, 1, 3, 3, 'Keluarga', 'bin-kls3-b3.pdf'),
(80, 1, 3, 3, 'Lingkungan Sekitar', 'bin-kls3-b4.pdf'),
(81, 1, 3, 3, 'Tempat Umum', 'bin-kls3-b5.pdf'),
(82, 1, 3, 3, 'Kesehatan', 'bin-kls3-b6.pdf'),
(83, 1, 3, 3, 'Bermain, Yuk!', 'bin-kls3-b7.pdf'),
(84, 1, 3, 3, 'Sekolah', 'bin-kls3-b8.pdf'),
(85, 1, 3, 3, 'Olahraga', 'bin-kls3-b9.pdf'),
(86, 1, 3, 3, 'Bumi dan Alam Semesta', 'bin-kls3-b10.pdf'),
(87, 1, 3, 3, 'Full Bab Bahasa Indonesia Kelas 3', 'bin-kls3-full.pdf'),
(88, 1, 2, 3, 'Ciri - Ciri dan Kebutuhan Makhluk Hidup', 'ipa-kls3-b1.pdf'),
(89, 1, 2, 3, 'Pergolongan Makhluk Hidup', 'ipa-kls3-b2.pdf'),
(90, 1, 2, 3, 'Perubahan Pada Makhluk Hidup', 'ipa-kls3-b3.pdf'),
(91, 1, 2, 3, 'Kondisi Lingkungan Sekitar Kita', 'ipa-kls3-b4.pdf'),
(92, 1, 2, 3, 'Benda dan Sifatnya', 'ipa-kls3-b5.pdf'),
(93, 1, 2, 3, 'Gerak Benda', 'ipa-kls3-b6.pdf'),
(94, 1, 2, 3, 'Menerapkan Konsep Energi Gerak', 'ipa-kls3-b8.pdf'),
(95, 1, 2, 3, 'Permukaan Bumi', 'ipa-kls3-b9.pdf'),
(96, 1, 2, 3, 'Macam - Macam Energi dan Sumbernya', 'ipa-kls3-b7.pdf'),
(97, 1, 2, 3, 'Keadaan Cuaca', 'ipa-kls3-b10.pdf'),
(98, 1, 2, 3, 'Sumber Daya Alam', 'ipa-kls3-b11.pdf'),
(99, 1, 2, 3, 'Full Bab Ilmu Pengetahuan Alam Kelas 3', 'ipa-kls3-full.pdf'),
(100, 1, 4, 3, 'Chapter 1', 'eng-kls3-b1.pdf'),
(101, 1, 4, 3, 'Chapter 2', 'eng-kls3-b2.pdf'),
(102, 1, 4, 3, 'Chapter 3', 'eng-kls3-b3.pdf'),
(103, 1, 4, 3, 'Chapter 4', 'eng-kls3-b4.pdf'),
(104, 1, 4, 3, 'Chapter 5', 'eng-kls3-b5.pdf'),
(105, 1, 4, 3, 'Chapter 6', 'eng-kls3-b6.pdf'),
(106, 1, 4, 3, 'Chapter 7', 'eng-kls3-b7.pdf'),
(107, 1, 4, 3, 'Full Bab Bahasa Inggris Kelas 3', 'eng-kls3-full.pdf'),
(108, 1, 1, 4, 'Pecahan', 'mtk-kls4-b1.pdf'),
(109, 1, 1, 4, 'KPK dan FPB', 'mtk-kls4-b2.pdf'),
(110, 1, 1, 4, 'Aproksimasi', 'mtk-kls4-b3.pdf'),
(111, 1, 1, 4, 'Bangun Datar', 'mtk-kls4-b4.pdf'),
(112, 1, 1, 4, 'Statistika', 'mtk-kls4-b5.pdf'),
(113, 1, 1, 4, 'Pengukuran Sudut', 'mtk-kls4-b6.pdf'),
(114, 1, 1, 4, 'Full Bab Matematika Kelas 4', 'mtk-kls4-full.pdf'),
(115, 1, 3, 4, 'Kegiatan Bermanfaat', 'bin-kls4-b1.pdf'),
(116, 1, 3, 4, 'Kenyamanan Berkendara', 'bin-kls4-b2.pdf'),
(117, 1, 3, 4, 'Alat Transportasi', 'bin-kls4-b3.pdf'),
(118, 1, 3, 4, 'Olahraga', 'bin-kls4-b4.pdf'),
(119, 1, 3, 4, 'Menjaga Lingkungan', 'bin-kls4-b5.pdf'),
(120, 1, 3, 4, 'Hidup Hemat', 'bin-kls4-b6.pdf'),
(121, 1, 3, 4, 'Kecanggihan Teknologi', 'bin-kls4-b7.pdf'),
(122, 1, 3, 4, 'Bersikap Santun', 'bin-kls4-b8.pdf'),
(123, 1, 3, 4, 'Belajar Pantun', 'bin-kls4-b9.pdf'),
(124, 1, 3, 4, 'Waspada Penyakit', 'bin-kls4-b10.pdf'),
(125, 1, 3, 4, 'Koperasi Sekolah', 'bin-kls4-b11.pdf'),
(126, 1, 3, 4, 'Full Bab Bahasa Indonesia Kelas 4', 'bin-kls4-full.pdf'),
(127, 1, 2, 4, 'Rangka Manusia', 'ipa-kls4-b1.pdf'),
(128, 1, 2, 4, 'Alat Indra Manusia', 'ipa-kls4-b2.pdf'),
(129, 1, 2, 4, 'Bagian Tumbuhan dan Fungsinya', 'ipa-kls4-b3.pdf'),
(130, 1, 2, 4, 'Penggolongan Hewan', 'ipa-kls4-b4.pdf'),
(131, 1, 2, 4, 'Daur Hidup Hewan', 'ipa-kls4-b5.pdf'),
(132, 1, 2, 4, 'Hubungan Antar Makhluk Hidup dan Lingkungan', 'ipa-kls4-b6.pdf'),
(133, 1, 2, 4, 'Sifat dan Perubahan Wujud Benda', 'ipa-kls4-b7.pdf'),
(134, 1, 2, 4, 'Gaya', 'ipa-kls4-b8.pdf'),
(135, 1, 2, 4, 'Berbagai Bentuk Energi dan Penggunaannya', 'ipa-kls4-b9.pdf'),
(136, 1, 2, 4, 'Perubahan Kenampakan Permukaan Bumi dan Benda Langit', 'ipa-kls4-b10.pdf'),
(137, 1, 2, 4, 'Perubahan Lingkungan Fisik dan Pengaruhnya Terhadap Daratan', 'ipa-kls4-b11.pdf'),
(138, 1, 2, 4, 'Hubungan Sumber Daya Alam, Lingkungan, Teknologi dan Masyarakat', 'ipa-kls4-b12.pdf'),
(139, 1, 2, 4, 'Full Bab Ilmu Pengetahuan Alam Kelas 4', 'ipa-kls4-full.pdf'),
(140, 1, 4, 4, 'WH-Question', 'eng-kls4-b1.pdf'),
(141, 1, 4, 4, 'Reading Comprehesion', 'eng-kls4-b2.pdf'),
(142, 1, 4, 4, 'Shape', 'eng-kls4-b3.pdf'),
(143, 1, 4, 4, 'Action', 'eng-kls4-b4.pdf'),
(144, 1, 4, 4, 'Telling Time', 'eng-kls4-b5.pdf'),
(145, 1, 4, 4, 'Asking Personal Information', 'eng-kls4-b6.pdf'),
(146, 1, 4, 4, 'Full Bab Bahasa Inggris Kelas 4', 'eng-kls4-full.pdf'),
(147, 1, 1, 5, 'Operasi Hitung Pecahan', 'mtk-kls5-b1.pdf'),
(148, 1, 1, 5, 'Kecepatan dan Debit', 'mtk-kls5-b2.pdf'),
(149, 1, 1, 5, 'Skala', 'mtk-kls5-b3.pdf'),
(150, 1, 1, 5, 'Bangun Ruang', 'mtk-kls5-b4.pdf'),
(151, 1, 1, 5, 'Pengumpulan dan Penyajian Data', 'mtk-kls5-b5.pdf'),
(152, 1, 1, 5, 'Full Bab Matematika Kelas 5', 'mtk-kls5-full.pdf'),
(153, 1, 2, 5, 'Alat Pernapasan Manusia dan Beberapa Hewan', 'ipa-kls5-b1.pdf'),
(154, 1, 2, 5, 'Hubungan Alat Pencernaan Dengan Makanan Dan Kesehatan', 'ipa-kls5-b2.pdf'),
(155, 1, 2, 5, 'Darah', 'ipa-kls5-b3.pdf'),
(156, 1, 2, 5, 'Tumbuhan Hijau', 'ipa-kls5-b4.pdf'),
(157, 1, 2, 5, 'Penyesuaian Makhluk Hidup Dengan Lingkungannya', 'ipa-kls5-b5.pdf'),
(158, 1, 2, 5, 'Struktur Bahan', 'ipa-kls5-b6.pdf'),
(159, 1, 2, 5, 'Perubahan Sifat Benda', 'ipa-kls5-b7.pdf'),
(160, 1, 2, 5, 'Gaya, Gerak dan Energi', 'ipa-kls5-b8.pdf'),
(161, 1, 2, 5, 'Pesawat Sederhana', 'ipa-kls5-b9.pdf'),
(162, 1, 2, 5, 'Cahaya dan Sifat - Sifatnya', 'ipa-kls5-b10.pdf'),
(163, 1, 2, 5, 'Penerapan Sifat - Sifat Cahaya', 'ipa-kls5-b11.pdf'),
(164, 1, 2, 5, 'Bantuan dan Proses Pembentukan Tanah', 'ipa-kls5-b12.pdf'),
(165, 1, 2, 5, 'Struktur Bumi dan Struktur Matahari', 'ipa-kls5-b13.pdf'),
(166, 1, 2, 5, 'Daur Air dan Peristiwa Alam', 'ipa-kls5-b14.pdf'),
(167, 1, 2, 5, 'Full Bab Ilmu Pengetahuan Alam Kelas 5', 'ipa-kls5-full.pdf'),
(168, 1, 3, 5, 'Hiburan', 'bin-kls5-b1.pdf'),
(169, 1, 3, 5, 'Petualangan', 'bin-kls5-b2.pdf'),
(170, 1, 3, 5, 'Keamanan', 'bin-kls5-b3.pdf'),
(171, 1, 3, 5, 'Perjuangan', 'bin-kls5-b4.pdf'),
(172, 1, 3, 5, 'Sosial', 'bin-kls5-b5.pdf'),
(173, 1, 3, 5, 'Ekonomi', 'bin-kls5-b6.pdf'),
(174, 1, 3, 5, 'Lingkungan Sekitar', 'bin-kls5-b7.pdf'),
(175, 1, 3, 5, 'Kegiatan', 'bin-kls5-b8.pdf'),
(176, 1, 3, 5, 'Full Bab Bahasa Indonesia Kelas 5', 'bin-kls5-full.pdf'),
(177, 1, 4, 5, 'Reading Comprehesion', 'eng-kls5-b1.pdf'),
(178, 1, 4, 5, 'Modals : Must & Must Not', 'eng-kls5-b2.pdf'),
(179, 1, 4, 5, 'Don\'t & Don\'t Be', 'eng-kls5-b3.pdf'),
(180, 1, 4, 5, 'Listening Practice', 'eng-kls5-b4.pdf'),
(181, 1, 4, 5, 'Reading Comprehesion', 'eng-kls5-b5.pdf'),
(182, 1, 4, 5, 'Occupation', 'eng-kls5-b6.pdf'),
(183, 1, 4, 5, 'Full Bab Bahasa Inggris Kelas 5', 'eng-kls5-full.pdf'),
(184, 1, 1, 6, 'Bilangan Bulat', 'mtk-kls6-b1.pdf'),
(185, 1, 1, 6, 'Lingkaran', 'mtk-kls6-b2.pdf'),
(186, 1, 1, 6, 'Bangun Ruang', 'mtk-kls6-b3.pdf'),
(187, 1, 1, 6, 'Statistika', 'mtk-kls6-b4.pdf'),
(188, 1, 1, 6, 'Full Bab Matematika Kelas 6', 'mtk-kls6-full.pdf'),
(189, 1, 2, 6, 'Ciri Khusus Makhluk Hidup', 'ipa-kls6-b1.pdf'),
(190, 1, 2, 6, 'Perkembangbiakan Makhluk Hidup', 'ipa-kls6-b2.pdf'),
(191, 1, 2, 6, 'Manusia dan Keseimbangan Lingkungan', 'ipa-kls6-b3.pdf'),
(192, 1, 2, 6, 'Pelestarian Makhluk Hidup', 'ipa-kls6-b4.pdf'),
(193, 1, 2, 6, 'Konduktor dan Isolator', 'ipa-kls6-b5.pdf'),
(194, 1, 2, 6, 'Perubahan Benda', 'ipa-kls6-b6.pdf'),
(195, 1, 2, 6, 'Pemanfaatan Benda', 'ipa-kls6-b7.pdf'),
(196, 1, 2, 6, 'Penggunaan dan Perpindahan Energi', 'ipa-kls6-b8.pdf'),
(197, 1, 2, 6, 'Energi dan Penghematannya', 'ipa-kls6-b9.pdf'),
(198, 1, 2, 6, 'Tata Surya', 'ipa-kls6-b10.pdf'),
(199, 1, 2, 6, 'Full Bab Ilmu Pengetahuan Alam Kelas 6', 'ipa-kls6-full.pdf'),
(200, 1, 3, 6, 'Informasi', 'bin-kls6-b1.pdf'),
(201, 1, 3, 6, 'Persahabatan', 'bin-kls6-b2.pdf'),
(202, 1, 3, 6, 'Pariwisata', 'bin-kls6-b3.pdf'),
(203, 1, 3, 6, 'Lingkungan', 'bin-kls6-b4.pdf'),
(204, 1, 3, 6, 'Kegiatan', 'bin-kls6-b5.pdf'),
(205, 1, 3, 6, 'Kekeluargaan', 'bin-kls6-b6.pdf'),
(206, 1, 3, 6, 'Pahlawan', 'bin-kls6-b7.pdf'),
(207, 1, 3, 6, 'Peristiwa', 'bin-kls6-b8.pdf'),
(208, 1, 3, 6, 'Ekstrakulikuler', 'bin-kls6-b9.pdf'),
(209, 1, 3, 6, 'Sekitarku', 'bin-kls6-b10.pdf'),
(210, 1, 3, 6, 'Full Bab Bahasa Indonesia Kelas 6', 'bin-kls6-full.pdf'),
(211, 1, 4, 6, 'Numbers', 'eng-kls6-b1.pdf'),
(212, 1, 4, 6, 'Asking Personal Information', 'eng-kls6-b2.pdf'),
(213, 1, 4, 6, 'Reading Comprehesion', 'eng-kls6-b3.pdf'),
(214, 1, 4, 6, 'Reading Comprehesion', 'eng-kls6-b4.pdf'),
(215, 1, 4, 6, 'Reading Comprehesion', 'eng-kls6-b5.pdf'),
(216, 1, 4, 6, 'Full Bab Bahasa Inggris Kelas 6', 'eng-kls6-full.pdf'),
(217, 2, 3, 7, 'Cinta Lingkungan Hidup', 'bin-kls7-b1.pdf'),
(218, 2, 3, 7, 'Pengenalan Budaya Indonesia', 'bin-kls7-b2.pdf'),
(219, 2, 3, 7, 'Remaja dan Pendidikan Karakter', 'bin-kls7-b3.pdf'),
(220, 2, 3, 7, 'Teknologi Tepat Guna', 'bin-kls7-b4.pdf'),
(221, 2, 3, 7, 'Peristiwa Alam', 'bin-kls7-b5.pdf'),
(222, 2, 3, 7, 'Cerita Pendek Indonesia', 'bin-kls7-b6.pdf'),
(223, 2, 3, 7, 'Pengenalan, Pencermatan, dan Pemahanan Berbagai Jenis Teks', 'bin-kls7-b7.pdf'),
(224, 2, 3, 7, 'Full Bab Bahasa Indonesia Kelas 7', 'bin-kls7-full.pdf'),
(225, 2, 3, 7, 'Analisis, Ringkasan dan Revisi Teks', 'bin-kls7-b8.pdf'),
(226, 2, 4, 7, 'Good morning. How are You?', 'eng-kls7-b1.pdf'),
(227, 2, 4, 7, 'This is me!', 'eng-kls7-b2.pdf'),
(228, 2, 4, 7, 'What Time Is It?', 'eng-kls7-b3.pdf'),
(229, 2, 4, 7, 'This is My World', 'eng-kls7-b4.pdf'),
(230, 2, 4, 7, 'It\'s a Beautiful day!', 'eng-kls7-b5.pdf'),
(231, 2, 4, 7, 'We love what we do', 'eng-kls7-b6.pdf'),
(232, 2, 4, 7, 'I\'m Proud of Indonesia!', 'eng-kls7-b7.pdf'),
(233, 2, 4, 7, 'That\'s what friends are supposed to do', 'eng-kls7-b8.pdf'),
(234, 2, 4, 7, 'Full Bab Bahasa Inggris Kelas 7', 'eng-kls7-full.pdf'),
(235, 2, 2, 7, 'Objek IPA dan Pengamatannya', 'ipa-kls7-b1.pdf'),
(236, 2, 2, 7, 'Klasifikasi Makhluk Hidup', 'ipa-kls7-b2.pdf'),
(237, 2, 2, 7, 'Klasifikasi Materi dan Perubahannya', 'ipa-kls7-b3.pdf'),
(238, 2, 2, 7, 'Suhu dan Perubahannya', 'ipa-kls7-b4.pdf'),
(239, 2, 2, 7, 'Kalor dan Perpindahannya', 'ipa-kls7-b5.pdf'),
(240, 2, 2, 7, 'Energi Dalam Sistem Kehidupan', 'ipa-kls7-b6.pdf'),
(241, 2, 2, 7, 'Full Bab Ilmu Pengetahuan Alam Kelas 7', 'ipa-kls7-full.pdf'),
(242, 2, 5, 7, 'Keadaan Alam dan Aktivitas Penduduk Indonesia', 'ips-kls7-b1.pdf'),
(243, 2, 5, 7, 'Keadaan Penduduk Indonesia', 'ips-kls7-b2.pdf'),
(244, 2, 5, 7, 'Potensi dan Pemanfaatan Sumber Daya Alam', 'ips-kls7-b3.pdf'),
(245, 2, 5, 7, 'Dinamika Interaksi Manusia', 'ips-kls7-b4.pdf'),
(246, 2, 5, 7, 'Full Bab Ilmu Pengetahuan Sosial', 'ips-kls7-full.pdf'),
(247, 2, 3, 8, 'Berita Seputar Indonesia', 'bin-kls8-b1.pdf'),
(248, 2, 3, 8, 'Iklan, Sarana Komunikasi', 'bin-kls8-b2.pdf'),
(249, 2, 3, 8, 'Teks Eksposisi dalam Media Massa', 'bin-kls8-b3.pdf'),
(250, 2, 3, 8, 'Indahnya Berpuisi', 'bin-kls8-b4.pdf'),
(251, 2, 3, 8, 'Urutan Cerita Menarik Dalam Eksplanasi', 'bin-kls8-b5.pdf'),
(252, 2, 3, 8, 'Ulasan Karya Kita', 'bin-kls8-b6.pdf'),
(253, 2, 3, 8, 'Berbahasa Persuasif', 'bin-kls8-b7.pdf'),
(254, 2, 3, 8, 'Drama - Drama Kehidupan', 'bin-kls8-b8.pdf'),
(255, 2, 3, 8, 'Kembangkan Kegemaran Membaca', 'bin-kls8-b9.pdf'),
(256, 2, 3, 8, 'Full Bab Bahasa Indonesia Kelas 8', 'bin-kls8-full.pdf'),
(257, 2, 4, 8, 'CHAPTER 1', 'eng-kls8-b1.pdf'),
(258, 2, 4, 8, 'CHAPTER 2', 'eng-kls8-b2.pdf'),
(259, 2, 4, 8, 'CHAPTER 3', 'eng-kls8-b3.pdf'),
(260, 2, 4, 8, 'CHAPTER 4', 'eng-kls8-b4.pdf'),
(261, 2, 4, 8, 'CHAPTER 5', 'eng-kls8-b5.pdf'),
(262, 2, 4, 8, 'CHAPTER 6', 'eng-kls8-b6.pdf'),
(263, 2, 4, 8, 'CHAPTER 7', 'eng-kls8-b7.pdf'),
(264, 2, 4, 8, 'CHAPTER 8', 'eng-kls8-b8.pdf'),
(265, 2, 4, 8, 'CHAPTER 9', 'eng-kls8-b9.pdf'),
(266, 2, 4, 8, 'Full Bab Bahasa Inggris Kelas 8', 'eng-kls8-full.pdf'),
(267, 2, 2, 8, 'Pertumbuhan dan Perkembangan Makhluk Hidup', 'ipa-kls8-b1.pdf'),
(268, 2, 2, 8, 'Berbagai Sistem Organ pada Manusia', 'ipa-kls8-b2.pdf'),
(269, 2, 2, 8, 'Berbagai Sistem dalam Kehidupan Tumbuhan', 'ipa-kls8-b3.pdf'),
(270, 2, 2, 8, 'Partikel Materi', 'ipa-kls8-b4.pdf'),
(271, 2, 2, 8, 'Bahan Kimia dalam Kehidupan', 'ipa-kls8-b5.pdf'),
(272, 2, 2, 8, 'Gaya', 'ipa-kls8-b6.pdf'),
(273, 2, 2, 8, 'Energi dan Usaha', 'ipa-kls8-b6.pdf'),
(274, 2, 2, 8, 'Tekanan', 'ipa-kls8-b7.pdf'),
(275, 2, 2, 8, 'Getaran dan Gelombang', 'ipa-kls8-b9.pdf'),
(276, 2, 2, 8, 'Optika', 'ipa-kls8-b10.pdf'),
(277, 2, 2, 8, 'Full Bab Ilmu Pengetahuan Alam Kelas 8', 'ipa-kls8-full.pdf'),
(278, 2, 5, 8, 'Interaksi Keruangan dalam Kehidupan di Negara - Negara ASEAN', 'ips-kls8-b1.pdf'),
(279, 2, 5, 8, 'Pengaruh Interaksi Sosial Terhadap Kehidupan Sosial dan Kebangsaan', 'ips-kls8-b2.pdf'),
(280, 2, 5, 8, 'Keunggulan dan Keterbatasan Antarruang Pengaruhnya Terhadap Kegiatan Ekonomi, Sosial, Budaya di Indonesia dan ASEAN', 'ips-kls8-b3.pdf'),
(281, 2, 5, 8, 'Perubahan Masyarakat Indonesia Pada Massa Penjajahan dan Tumbuhnya Semangat Kebangsaan', 'ips-kls8-b3.pdf'),
(282, 2, 5, 8, 'Full Bab Ilmu Pengetahuan Sosial Kelas 8', 'ips-kls8-full.pdf'),
(283, 2, 3, 9, 'Melaporkan Percobaan', 'bin-kls9-b1.pdf'),
(284, 2, 3, 9, 'Menyampaikan Pidato Persuasif', 'bin-kls9-b2.pdf'),
(285, 2, 3, 9, 'Menyusun Cerita Pendek', 'bin-kls9-b3.pdf'),
(286, 2, 3, 9, 'Memberi Tanggapan dengan Santun', 'bin-kls9-b4.pdf'),
(287, 2, 3, 9, 'Menyajikan Teks Diskusi', 'bin-kls9-b5.pdf'),
(288, 2, 3, 9, 'Menyusun Cerita Inspiratif', 'bin-kls9-b6.pdf'),
(289, 2, 3, 9, 'Full Bab Bahasa Indonesia Kelas 9', 'bin-kls9-full.pdf'),
(290, 2, 4, 9, 'Congtatulations!', 'eng-kls9-b1.pdf'),
(291, 2, 4, 9, 'Let\'s start our wall magazine!!', 'eng-kls9-b2.pdf'),
(292, 2, 4, 9, 'What should i do that for?', 'eng-kls9-b3.pdf'),
(293, 2, 4, 9, 'Be healthy, be happy', 'eng-kls9-b4.pdf'),
(294, 2, 4, 9, 'This is how you do it', 'eng-kls9-b5.pdf'),
(295, 2, 4, 9, 'Everybody is always in the middle of something.', 'eng-kls9-b6.pdf'),
(296, 2, 4, 9, 'What will be will be.', 'eng-kls9-b7.pdf'),
(297, 2, 4, 9, 'You get what you earn!', 'eng-kls9-b8.pdf'),
(298, 2, 4, 9, 'Sangkuriang', 'eng-kls9-b9.pdf'),
(299, 2, 4, 9, 'They are made in Indonesia', 'eng-kls9-b10.pdf'),
(300, 2, 4, 9, 'What is it?', 'eng-kls9-b11.pdf'),
(301, 2, 4, 9, 'Come and visit us', 'eng-kls9-b12.pdf'),
(302, 2, 4, 9, 'You can always come back home', 'eng-kls9-b13.pdf'),
(303, 2, 4, 9, 'Full Bab Bahasa Inggris Kelas 9', 'eng-kls9-full.pdf'),
(304, 2, 2, 9, 'Sistem Reproduksi Pada Manusia', 'ipa-kls9-b1.pdf'),
(305, 2, 2, 9, 'Reproduksi pada Tumbuhan dan Hewan', 'ipa-kls9-b2.pdf'),
(306, 2, 2, 9, 'Kependudukan dan Lingkungan', 'ipa-kls9-b3.pdf'),
(307, 2, 2, 9, 'Partikel Penyusun Benda Mati dan Makhluk Hidup', 'ipa-kls9-b4.pdf'),
(308, 2, 2, 9, 'Kelistrikan dan Teknologi Listrik di Lingkungan', 'ipa-kls9-b5.pdf'),
(309, 2, 2, 9, 'Full Bab Ilmu Pengetahuan Alam Kelas 9', 'ipa-kls9-full.pdf'),
(310, 2, 5, 9, 'Interaksi Antarnegara Asia dan Negara Lainnya', 'ips-kls9-b1.pdf'),
(311, 2, 5, 9, 'Perubahan Sosial Budaya dan Globalisasi', 'ips-kls9-b2.pdf'),
(312, 2, 5, 9, 'Ketergantungan Antarruang dan Pengaruhnya terhadap Kesejahteraan Masyarakat', 'ips-kls9-b3.pdf'),
(313, 2, 5, 9, 'Indonesia dari Masa Kemerdekaan Hingga Masa Reformasi', 'ips-kls9-b4.pdf'),
(314, 2, 5, 9, 'Full Bab Ilmu Pengetahuan Sosial Kelas 9', 'ips-kls9-full.pdf'),
(315, 3, 7, 10, 'Ruang Lingkup Biologi', 'bio-kls10-b1.pdf'),
(316, 3, 7, 10, 'Virus', 'bio-kls10-b2.pdf'),
(317, 3, 7, 10, 'Bakteri', 'bio-kls10-b3.pdf'),
(318, 3, 7, 10, 'Protista', 'bio-kls10-b4.pdf'),
(319, 3, 7, 10, 'Fungi (Jamur)', 'bio-kls10-b5.pdf'),
(320, 3, 7, 10, 'Keanekaragaman Hayati', 'bio-kls10-b6.pdf'),
(321, 3, 7, 10, 'Dunia Tumbuhan', 'bio-kls10-b7.pdf'),
(322, 3, 7, 10, 'Dunia Hewan', 'bio-kls10-b8.pdf'),
(323, 3, 7, 10, 'Ekosistem', 'bio-kls10-b9.pdf'),
(324, 3, 7, 10, 'Pencemaran Lingkungan', 'bio-kls10-b10.pdf'),
(325, 3, 7, 10, 'Full Bab Biologi Kelas 10', 'bio-kls10-full.pdf'),
(326, 3, 3, 10, 'Menyusun Laporan Hasil Observasi', 'bin-kls10-b1.pdf'),
(327, 3, 3, 10, 'Mengembangkan Pendapat dalam Eksposisi', 'bin-kls10-b2.pdf'),
(328, 3, 3, 10, 'Menyampaikan Ide Melalui Anekdot', 'bin-kls10-b3.pdf'),
(329, 3, 3, 10, 'Melestarikan Nilai Kearifan Lokal Melalui Cerita Rakyat', 'bin-kls10-b4.pdf'),
(330, 3, 3, 10, 'Membuat Kesepakatan Melalui Negosiasi', 'bin-kls10-b5.pdf'),
(331, 3, 3, 10, 'Berdebat Dengan Indah', 'bin-kls10-b6.pdf'),
(332, 3, 3, 10, 'Belajar Dari Biografi', 'bin-kls10-b7.pdf'),
(333, 3, 3, 10, 'Mendalami Puisi', 'bin-kls10-b8.pdf'),
(334, 3, 3, 10, 'Full Bab Bahasa Indonesia Kelas 10', 'bin-kls10-full.pdf'),
(335, 3, 4, 10, 'Talking About Self', 'eng-kls10-b1.pdf'),
(336, 3, 4, 10, 'Complimenting and Showing Care', 'eng-kls10-b2.pdf'),
(337, 3, 4, 10, 'Expressing Intention', 'eng-kls10-b3.pdf'),
(338, 3, 4, 10, 'Congratulating Others', 'eng-kls10-b4.pdf'),
(339, 3, 4, 10, 'Describing People', 'eng-kls10-b5.pdf'),
(340, 3, 4, 10, 'Visiting Ecotourism Destination', 'eng-kls10-b6.pdf'),
(341, 3, 4, 10, 'Visiting Niagara Falls', 'eng-kls10-b7.pdf'),
(342, 3, 4, 10, 'Describing Historical Places', 'eng-kls10-b8.pdf'),
(343, 3, 4, 10, 'Giving Announcement', 'eng-kls10-b9.pdf'),
(344, 3, 4, 10, 'Full Bab Bahasa Inggris Kelas 10', 'eng-kls10-full.pdf'),
(345, 3, 1, 10, 'Persamaan dan Pertidaksamaan Nilai Mutlak Linear Satu Variabel', 'mtk-kls10-b1.pdf'),
(346, 3, 1, 10, 'Sistem Persamaan Linear Tiga Variabel', 'mtk-kls10-b2.pdf'),
(347, 3, 1, 10, 'Fungsi', 'mtk-kls10-b3.pdf'),
(348, 3, 1, 10, 'Trigonometri', 'mtk-kls10-b4.pdf'),
(349, 3, 1, 10, 'Full Bab Matematika Kelas 10', 'mtk-kls10-full.pdf'),
(350, 3, 6, 10, 'Masalah Ekonomi', 'eko-kls10-b1.pdf'),
(351, 3, 6, 10, 'Konsep - konsep Ekonomi', 'eko-kls10-b2.pdf'),
(352, 3, 6, 10, 'Permintaan, Penawaran, dan Harga Keseimbangan', 'eko-kls10-b3.pdf'),
(353, 3, 6, 10, 'Kebijakan Pemerintah dalam Bidang Ekonomi', 'eko-kls10-b4.pdf'),
(354, 3, 6, 10, 'Pendapatan Nasional', 'eko-kls10-b5.pdf'),
(355, 3, 6, 10, 'Konsumsi dan Investasi', 'eko-kls10-b6.pdf'),
(356, 3, 6, 10, 'Uang dan Perbankan', 'eko-kls10-b7.pdf'),
(357, 3, 6, 10, 'Full Bab Ekonomi Kelas 10', 'eko-kls10-full.pdf'),
(358, 3, 6, 11, 'Ketenagakerjaan', 'eko-kls11-b1.pdf'),
(359, 3, 6, 11, 'APBN dan APBD', 'eko-kls11-b2.pdf'),
(360, 3, 6, 11, 'Pasar Modal: Istrumen dan Mekanismenya', 'eko-kls11-b3.pdf'),
(361, 3, 6, 11, 'Perekonomian Terbuka', 'eko-kls11-b4.pdf'),
(362, 3, 6, 11, 'Akuntansi Sebagai Sistem Informasi', 'eko-kls11-b5.pdf'),
(363, 3, 6, 11, 'Struktur Dasar Akuntansi', 'eko-kls11-b6.pdf'),
(364, 3, 6, 11, 'Akuntansi Perusahaan Jasa', 'eko-kls11-b7.pdf'),
(365, 3, 6, 11, 'Laporan Keuangan Pada Perusahaan Jasa', 'eko-kls11-b8.pdf'),
(366, 3, 6, 11, 'Full Bab Ekonomi Kelas 11', 'eko-kls11-full.pdf'),
(367, 3, 6, 12, 'Akuntansi Perusahaan Dagang', 'eko-kls12-b1.pdf'),
(368, 3, 6, 12, 'Laporan Keuangan Perusahaan Dagang', 'eko-kls12-b2.pdf'),
(369, 3, 6, 12, 'Manajemen Badan Usaha dalam Perekonomian Indonesia', 'eko-kls12-b3.pdf'),
(370, 3, 6, 12, 'Koperasi dan Kewirausahaan', 'eko-kls12-b4.pdf'),
(371, 3, 6, 12, 'Full Bab Ekonomi Kelas 12', 'eko-kls12-full.pdf'),
(372, 3, 7, 11, 'Sel', 'bio-kls11-b1.pdf'),
(373, 3, 7, 11, 'Histologi Tumbuhan', 'bio-kls11-b2.pdf'),
(374, 3, 7, 11, 'Histologi Hewan', 'bio-kls11-b3.pdf'),
(375, 3, 7, 11, 'Sistem Gerak Manusia', 'bio-kls11-b4.pdf'),
(376, 3, 7, 11, 'Sistem Peredaran Darah pada Hewan dan Manusia', 'bio-kls11-b5.pdf'),
(377, 3, 7, 11, 'Sistem Pencernaan', 'bio-kls11-b6.pdf'),
(378, 3, 7, 11, 'Sistem Pernapasan', 'bio-kls11-b7.pdf'),
(379, 3, 7, 11, 'Sistem Ereksi', 'bio-kls11-b8.pdf'),
(380, 3, 7, 11, 'Sistem Regulasi', 'bio-kls11-b9.pdf'),
(381, 3, 7, 11, 'Sistem Reproduksi', 'bio-kls11-b10.pdf'),
(382, 3, 7, 11, 'Sistem Kekebalan', 'bio-kls11-b11.pdf'),
(383, 3, 7, 11, 'Full Bab Biologi Kelas 11', 'bio-kls11-full.pdf'),
(384, 3, 3, 11, 'Menyusun Prosedur', 'bin-kls11-b1.pdf'),
(385, 3, 3, 11, 'Mempelajari Teks Eksplanasi', 'bin-kls11-b2.pdf'),
(386, 3, 3, 11, 'Mengelola Informasi dalam Ceramah', 'bin-kls11-b3.pdf'),
(387, 3, 3, 11, 'Meneladani Kehidupan dari Cerita Pendek', 'bin-kls11-b4.pdf'),
(388, 3, 3, 11, 'Mempersiapkan Proposal', 'bin-kls11-b5.pdf'),
(389, 3, 3, 11, 'Merancang Karya Ilmiah', 'bin-kls11-b6.pdf'),
(390, 3, 3, 11, 'Menilai Karya Melalui Resensi', 'bin-kls11-b7.pdf'),
(391, 3, 3, 11, 'Bermain Drama', 'bin-kls11-b8.pdf'),
(392, 3, 3, 11, 'Full Bab Bahasa Indonesia Kelas 11', 'bin-kls11-full.pdf'),
(394, 3, 4, 11, 'Offers and Suggestions', 'eng-kls11-b1.pdf'),
(395, 3, 4, 11, 'Opinions and Thoughts', 'eng-kls11-b2.pdf'),
(396, 3, 4, 11, 'Party Time', 'eng-kls11-b3.pdf'),
(397, 3, 4, 11, 'Natural Disaster-An Exposition', 'eng-kls11-b4.pdf'),
(398, 3, 4, 11, 'Letter Writing', 'eng-kls11-b5.pdf'),
(399, 3, 4, 11, 'Cause and Effect', 'eng-kls11-b6.pdf'),
(400, 3, 4, 11, 'Meaning Through Music', 'eng-kls11-b7.pdf'),
(401, 3, 4, 11, 'Explain This!!', 'eng-kls11-b8.pdf'),
(402, 3, 4, 11, 'Full Bab Bahasa Inggris Kelas 11', 'eng-kls11-full.pdf'),
(403, 3, 1, 11, 'Induksi Matematika', 'mtk-kls11-b1.pdf'),
(404, 3, 1, 11, 'Program Linear', 'mtk-kls11-b2.pdf'),
(405, 3, 1, 11, 'Matriks', 'mtk-kls11-b3.pdf'),
(406, 3, 1, 11, 'Transformasi', 'mtk-kls11-b4.pdf'),
(407, 3, 1, 11, 'Barisan', 'mtk-kls11-b5.pdf'),
(408, 3, 1, 11, 'Limit Fungsi', 'mtk-kls11-b6.pdf'),
(409, 3, 1, 11, 'Turunan', 'mtk-kls11-b7.pdf'),
(410, 3, 1, 11, 'Integral', 'mtk-kls11-b8.pdf'),
(411, 3, 1, 11, 'Full Bab Matematika Kelas 11', 'mtk-kls11-full.pdf'),
(412, 3, 7, 12, 'Pertumbuhan dan Perkembangan', 'bio-kls11-b1.pdf'),
(413, 3, 7, 12, 'Metabolisme', 'bio-kls11-b2.pdf'),
(414, 3, 7, 12, 'Substansi Genetik', 'bio-kls11-b3.pdf'),
(415, 3, 7, 12, 'Pembelahan Sel', 'bio-kls11-b4.pdf'),
(416, 3, 7, 12, 'Hukum Hereditas', 'bio-kls11-b5.pdf'),
(417, 3, 7, 12, 'Mutasi', 'bio-kls11-b6.pdf'),
(418, 3, 7, 12, 'Teori Evolusi', 'bio-kls11-b8.pdf'),
(419, 3, 7, 12, 'Bioteknologi', 'bio-kls11-b9.pdf'),
(420, 3, 7, 12, 'Full Bab Biologi Kelas 12', 'bio-kls11-full.pdf'),
(421, 3, 3, 12, 'Menulis Surat Lamaran Pekerjaan', 'bin-kls12-b1.pdf'),
(422, 3, 3, 12, 'Menikmati Cerita Sejarah', 'bin-kls12-b2.pdf'),
(423, 3, 3, 12, 'Memahami Situasi Terkini Lewat Editorial', 'bin-kls12-b3.pdf'),
(424, 3, 3, 12, 'Menikmati Novel', 'bin-kls12-b4.pdf'),
(425, 3, 3, 12, 'Menyajikan Gagasan Melalui Artikel', 'bin-kls12-b5.pdf'),
(426, 3, 3, 12, 'Menilai Karya Melalui Kritik dan Esai', 'bin-kls12-b6.pdf'),
(427, 3, 3, 12, 'Full Bab Bahasa Indonesia Kelas 12', 'bin-kls12-full.pdf'),
(428, 3, 4, 12, 'May I Help You?', 'eng-kls12-b1.pdf'),
(429, 3, 4, 12, 'Why Don\'t You Visit Seattle?', 'eng-kls12-b2.pdf'),
(430, 3, 4, 12, 'Creating Captions', 'eng-kls12-b3.pdf'),
(431, 3, 4, 12, 'Do You Know How to Apply for a Job?', 'eng-kls12-b4.pdf'),
(432, 3, 4, 12, 'Who was Involved?', 'eng-kls12-b5.pdf'),
(433, 3, 4, 12, 'Online School Registration', 'eng-kls12-b6.pdf'),
(434, 3, 4, 12, 'It\'s Garbage In, Art Works Out', 'eng-kls12-b7.pdf'),
(435, 3, 4, 12, 'How to Make', 'eng-kls12-b8.pdf'),
(436, 3, 4, 12, 'Do It Carefully', 'eng-kls12-b9.pdf'),
(437, 3, 4, 12, 'How to Use Photoshop', 'eng-kls12-b10.pdf'),
(438, 3, 4, 12, 'Let\'s Make a Better World for All', 'eng-kls12-b11.pdf'),
(439, 3, 4, 12, 'Full Bab Bahasa Inggris Kelas 12', 'eng-kls12-full.pdf'),
(440, 3, 1, 12, 'Integral', 'mtk-kls12-b1.pdf'),
(441, 3, 1, 12, 'Program Linear', 'mtk-kls12-b2.pdf'),
(442, 3, 1, 12, 'Matriks', 'mtk-kls12-b3.pdf'),
(443, 3, 1, 12, 'Vektor', 'mtk-kls12-b4.pdf'),
(444, 3, 1, 12, 'Barisan, Deret, dan Notasi Sigma', 'mtk-kls12-b5.pdf'),
(445, 3, 1, 12, 'Transformasi Geometri', 'mtk-kls12-b6.pdf'),
(446, 3, 1, 12, 'Fungsi, Persamaan, dan Pertidaksamaan Eksponen dan Logaritma', 'mtk-kls12-b7.pdf'),
(447, 3, 1, 12, 'Full Bab Matematika Kelas 12', 'mtk-kls12-full.pdf'),
(449, 3, 8, 12, 'Sepak Bola', 'pdf1653909026.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `status` varchar(128) NOT NULL,
  `message` varchar(256) NOT NULL,
  `attach` varchar(128) NOT NULL,
  `date_message` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `contents` longtext NOT NULL,
  `image` varchar(128) NOT NULL,
  `date_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `contents`, `image`, `date_post`) VALUES
(2, 'Hari Guru 2021, Nadiem Cerita Perjuangan dan Semangat Guru di Tengah Pandemi', '<b>AsPeIn</b> - Hari Guru Nasional diperingati setiap tanggal 25 November. Peringatan Hari Guru Nasional 2021 berlangsung dengan tema Bergerak dengan Hati Pulihkan Pendidikan.<br><br>Saat memimpin upacara peringatan Hari Guru Nasional (HGN) tahun 2021, Menteri Pendidikan, Kebudayaan, Riset, dan Teknologi (Mendikbud Ristek), Nadiem Anwar Makarim menyebut bahwa pandemi ternyata tak merendamkan semangat para guru.<br><br>Meski tahun lalu merupakan tahun yang penuh dengan ujian sehingga berpotensi membuat banyak guru yang terdemotiavsi, namun menurutnya, ada fenomena yang tidak terkira<br><br>Meski guru harus mempelajari teknologi baru, guru harus mengunjungi rumah siswa yang keterbatasan akses teknologi, guru harus memotivasi siswa yang mulai kehilangan disiplin sejak bersekolah dari rumah selama pandemi, namun guru tetap menjalankan perannya.<br><br>Nadiem bercerita, saat ia melakukan kunjungan kerja dan menginap di rumah guru di Lombok Tengah, Yogyakarta serta di pesantren Jawa timur, ia tidak mendengar kata putus asa dari para guru tersebut.<br><br>\"Saya mendengar terobosan - terobosan yang mereka inginkan di sekolah mereka, dan disitulah saya baru menyadari bahwa pandemi ini tidak memadamkan semangat para guru, tapi justru menyalakan obor perubahan,\" tuturnya.\r\n<br><br><b>Merdeka Belajar demi kehidupan dan masa depan guru lebih baik</b><br><br>Lebih lanjut disampaikan Nadiem, guru se-Indonesia menginginkan kesempatan adil untuk mencapai kesejahteraan yang manusiawi, akses terhadap teknologi dan pelatihan relevan yang praktis, kurikulum sederhana yang bisa mengakomodasi kemampuan dan bakat setiap murid, serta menginginkan pemimpin sekolah yang berpihak kepada murid, bukan birokrasi.<br><br>\"Guru se-Indonesia ingin kemerdekaan untuk berinovasi tanpa dijajah oleh keseragaman,\" tegas Nadiem. <br><br>Sejalan dengan itu, lanjut dia, program Merdeka Belajar yang sejak pertama kali dicetuskan Kemendikbudristek, saat ini telah berubah menjadi sebuah pergerakan.<br><br>Ditegaskan, gerakan Merdeka Belajar hidup dalam setiap insan guru yang punya keberanian untuk melangkah ke depan menuju satu tujuan utama, yaitu mencerdaskan kehidupan bangsa.<br><br>\"Gerakan ini makin kuat karena ujian yang kita hadapi bersama. Contohnya, penyederhanaan kurikulum sebagai salah satu kebijakan Merdeka Belajar berhasil melahirkan ribuan inovasi pembelajaran,\" katanya.<br><br>Nadiem mengucapkan terima kasih kepada semua guru se-Indonesia atas pengorbanan dan ketangguhannya.<br><br>\"Saya tidak akan menyerah untuk memperjuangkan Merdeka Belajar demi kehidupan masa depan guru se-Indonesia yang lebih baik. Terima kasih, Merdeka Belajar ini sekarang milik anda,\" ujarnya penuh semangat.<br><br>Hari Guru Nasional 2021 diperingati dengan mengusung tema \"Bergerak dengan Hati Pulihkan Pendidikan\".<br><br>Tahun ini, HGN masih menggunakan logo yang sama seperti tahun lalu, yaitu memuat simbol berbentuk hati dan ilustrasi berwarna warni menggambarkan semangat belajar yang tetap menyala di tengah kondisi pandemi saat ini.<br><br>Dengan elemen desain yang terdiri dari figur bapak guru, ibu guru, siswa, dan siswi yang digambarkan memakai masker, logo tersebut menunjukkan kesan dinamis dan ceria para guru dan siswa dalam menjalankan Pembelajaran Jarak Jauh (PJJ).<br><br>Pemanfaatan tekonlogi digambarkan dengan simbol - simbol wi-fi, laptop, telepon selular, serta aplikasi telekonferensi, memiliki relevansi kuat dengan kondisi aktual saat ini sebagai alat penunjang kegiatan belajar mengajar.<br><br>Sementara itu, bentuk hati menggambarkan seluruh komponen pendidikan mulai dari guru, murid, hingga orang tua, yang bersinergi menciptakan semangat belajar yang merdeka dan penuh cinta guna memberikan hasil yang terbaik untuk dunia pendidikan di Indonesia.<br><br>Upacara HGN tahun ini juga ditayangkan secara langsung di kana Youtube KEMENDIKBUD RI. Sebanyak 3.000 orang para guru, kepala sekolah, pengawas, dan tenaga pendidikan dari berbagai wilayah di Indonesia juga mengikuti upaca HGN secara virtual melalui zoom. Mereka memakai pakaian adat dari daerah masing - masing.', 'news1637840528.jpg', 1637840528),
(3, 'Semangat Sumpah Pemuda, SMP Labschool Jakarta Deklarasi Ikrar Antiperundungan', '<b>AsPeIn</b> - Mengusung semangat Sumpah Pemuda, SMP Labschool Jakarta melakukan deklarasi ikrar antiperundungan. Deklarasi ini merupakan bagian dari peringatan Hari Sumpah Pemuda yang dilaksanakan SMP Labschool Jakarta secara hybird.<br><br>Secara luring apel upacara bendera peringatan Sumpah Pemuda dilaksanakan di sekolah dan diikuti perwakilan siswa, guru, orangtua dan karyawan dengan menerapkan protokol kesehatan ketat, sedangkan siswa lainnya mengikuti secara daring melalui platform Zoom.<br><br>\"Mari kita jadikan momentum peringatan Hari Sumpah Pemuda untuk mempererat persatuan dalam bangkit bersama melawan pandemi, serta mewujudkan cita - cita bangsa Indonesia,\" pesan Siti Mujanah, Wakil Kepala Sekolah Bidang Kesiswaan, kepada seluruh peserta.<br><br>Terkait deklarasi program antiperundungan SMP Labschool Jakarta, kegiatan ini merupakan bagian dari Program Roots Indonesia yang dinaungi Pusat Penguatan Karakter, Kemendikbud Ristek.<br><br>SMP Labschool Jakarta, sebagai sekolah penggerak turut serta dalam program tersebut dengan memilih 30 Agen Perubahan untuk melaksanakan program yang mengarah pada kegiatan antiperundungan.<br><br>Ke-30 Agen Perubahan terpilih juga telah mengikuti pelatihan selama 10 pertemuan sekaligus menyelenggarakan deklarasi bertepatan dengan peringatan Hari Sumpah Pemuda.<br><br>Ayu Novianti, selaku ketua POMG SMP Labschool Jakarta, berharap agar melalui kegiatan ini siswa-siswi dapat tumbuh menjadi pemuda-pemudi tangguh serta dapat berkreativitas tinggi.<br><br>Dukungan senada juga datang dari Kepala SMP Labschool Jakarta, Asdi Wiharto, yang dalam sambutannya menyampaikan, \"hal ini membuktikan bahwa dengan berbagai peran yang kita jalani, jika bersama dan bertekad yang kuat kita dapat melalui tantangan apapun yang ada di depan.\"<br><br>Dalam kesempatan sama, Asdi Wiharto juga mengungkapkan, rangkaian kegiatan ini merupakan hasil sinergi yang apik antara siswa, guru, serta orangtua.<br><br>Laboratorium UNJ, Khaerudin menyampaikan rangkaian kegiatan peringatan Hari Sumpah Pemuda merupakan perwujudan dari moto Labschool, yaitu Iman, Ilmu, dan Amal.<br><br>Selain deklarasi ikrar antiperundungan, peringatan Hari Sumpah Pemuda di SMP Labschool Jakarta juga diisi dengan Labs Wicara, yang terinspirasi dari program TED Talk.<br><br>Tahun ini merupakan penyelenggaraan yang ke-5 sejak dimulai tahun 2017. Dalam kegiatan Labs Wicara tahun ini menampilkan 10 orang penyaji yang telah diseleksi dari karya tulis ilmiah yang telah dibuat oleh siswa kelas 8 SMP Labschool Jakarta.<br><br>Topik yang dibawakan cukup beragam, mulai dari perkembangan teknologi, dampak perubahan lingkungan alam dan sosial, hingga tema - tema populer seperti K-POP, Tiktok, dan lainnya.<br><br>Setelah pelaksanaan upacara, diumumkan pula para pemenang lomba keterampilan agama dan Bulan Bahasa.<br><br>Dalam perlombaan tersebut, diadakan beberapa perlombaan diantaranya: lomba kaligrafi, lomba dai, lomba islamic story telling, lomba debat, lomba membaca puisi, lomba menulis, dan juga cerpen.<br><br>Perlombaan diikuti oleh setiap perwakilan kelas, yang telah dipilih dan mempersiapkan dirinya dengan baik. Pengumuman pemenang lomba ini sekaligus menjadi wujud apresiasi atas bakat dan prestasi siswa yang telah ditunjukkan dalam perlombaan.<br><br>Nova, perwakilan orangtua yang hadir, pada akhir acara menyampaikan, \"kegiatan di SMP Labschool Jakarta hari ini patut dicontoh, dengan semangat antiperundungan bahwa setiap anak berhak mendapat kebebasan baik dalam pendidikan dan bersosial.\"<br><br>\"Anak - anak harus bebas dari perilaku agresif dari teman sekitarnya, serta harus merasa aman dan nyaman di manapun ia ditempatkan,\" pungkas Nova.', 'news1637566887.jpeg', 1637135609),
(4, 'Jadwal Terbaru Seleksi PPPK Guru Tahap 2 Dibuka 1 November', '<b>AsPeIn</b> - Setelah mengalami kemunduran, Kementerian Pendidikan, Kebudayaan, Riset dan Teknologi (Kemendikbud Ristek) merilis jadwal terbaru Seleksi Aparatur Sipil Negara Pegawai Pemerintah dengan Perjanjian Kerja (ASN PPPK) Tahap 2, Kamis (28/10/2021).<br><br>Sekretaris Direktorat Jenderal Guru dan Tenaga Pendidikan, Nunuk Suryani sebelumnya mengatakan pengumuman hasil sanggah 1 dan pelaksanaan Seleksi PPPK Guru Tahap 2 mengalami kemunduran.<br><br>\"Bapak Ibu guru yth, pengumuman hasil sanggah 1 dan pengumuman dan pemilihan formasi II mengalami kemunduran. Revisi jadwal akan segera di sampaikan di portal resmi <a href=\"https://gurupppk.kemdikbud.go.id/\">gurupppk.kemendikbud.go.id. </a>terima kasih,\" tulisnya di laman Instagram pribadi.<br><br>Terkait dengan jadwal terbaru, Kemendikbud Ristek merilis Surat Pengumuman Nomor 6184/B/GT.01.00/2021 Tentang Jadwal Pelaksanaan Seleksi Kompetensi Guru ASN-PPPK Tahun 2021.<br><br>\"Berkenaan dengan pelaksanaan Seleksi Guru PPPK Tahun 2021 pada Pengumuman Nomor: 5663/B/GT.01.00/2021 sebagai berikut,\" isi surat tersebut.<br><br><b>Jadwal Seleksi PPPK Guru Tahap 2 Tahun 2021</b><br>\r\n<ul>\r\n<li>Pengumuman hasil sanggah I: 29 Oktober 2021</li>\r\n<li>Pengumuman dan Pemilihan Formasi II: 1-4 November 2021</li>\r\n<li>Pengumuman daftar peserta, waktu dan tempat seleksi PPPK Guru II: 8 November 2021</li>\r\n<li>Cetak kartu peserta seleksi PPPK Guru II: 8-9 November 2021</li>\r\n<li>Pelaksanaan Seleksi Kompetensi Guru II: 10-13 November 2021</li>\r\n<li>Masa sanggah II (masa pengajuan sanggah): 19-21 November 2021</li>\r\n<li>Jawab sanggah II (tanggapan sanggah): 21-27 November 2021</li>\r\n</ul>\r\n<br>Pelamar agar selalu memantau perkembangan informasi pada laman <a href=\"https://gurupppk.kemdikbud.go.id/\">https://gurupppk.kemdikbud.go.id/</a>', 'news1637566984.jpg', 1637135875),
(5, 'Benarkah Peringkat Anak di Kelas Cerminkan Kecerdasannya?', '<b>AsPeIn</b> - Pemeringkatan siswa di kelas berdasarkan nilai mata pelajaran masih banyak digunakan sebagai metode untuk mengukur pencapaian belajar anak.<br>Sering kali, nilai atau peringkat yang rendah membuat orangtua khawatir anak tak secerdas teman - temannya atau bahkan risau dengan masa depan anak.<br>Akan tetapi, benarkah nilai dan peringkat anak di sekolah yang menetukan kecerdasan anak? Merangkum laman BPK Penabur, berikut ulasannya:<br><br><b>1. Nilai tidak selalu cerminkan kemampuan anak di kelas</b><br><br>Anak bisa jadi memahami materi pelajaran yang diajarkan guru selama kelas berlangsung, hanya saja ia masih tidak dapat menerjemahkannya ke dalam jawaban soal ujian.<br>Keadaan mental dan emosional anak adalah faktor yang kuat. Secara biologis, emosi anak memiliki kecenderungan untuk mengambil alih situasi tertentu, seperti pada saat ujian.<br> Jika anak menjadi stres atau cemas misalnya, otaknya akan melakukan ribuan hal selain menyelesaikan ujian yang rumit.<br>Jadi, jangan heran jika anak berkinerja buruk dalam ujian, hal ini bisa disebabkan karena ia yang terlalu stres untuk fokus.<br><br><b>2. Nilai tidak menggambarkan pemahaman anak</b><br><br>Jika anak belajar untuk menghafal materi untuk ujian, maka anak bisa berhasil untuk mengikuti ujian itu. Namun, menghafal pelajaran bukan berarti anak telah memahami materinya.<br>Beberapa ujian yang didasarkan pada teori hafalan, membuat seorang anak hanya menumpahkan teori tanpa banyak konteks atau kebutuhan untuk pemecahan masalah yang lebih dalam.Tentunya, pendekatan ini tidak akurat untuk mengukur kemampuan anak, terlebih dalam jangka panjang.<br>Oleh karena itu, nilai tidak cukup efektif dalam mengukur pemahaman anak. Karena anak perlu terlibat dan tertantang untuk memecahkan masalah dengan cara baru atau cara yang lebih nyata.<br><br><b>3. Nilai tidak selalu dapat mengukur kekuatan anak</b><br><br>Sebagai manusia, anak dan siapapun lebih dari sekedar angka halaman. Masing - masing anak memiliki keragaman yang luar biasa dari bakat yang berbeda. Kemampuan yang biasanya diukur dengan nilai hanya mencakup rentang tertentu.<br>Kecerdasan pada nilai atau peringkat akademik anak hanyalah salah satu dari banyak variabel yang akan mempengaruhi nilainya.Peringkat tidak dapat menilai suatu yang dinamis (dapat berubah - ubah), seperti kecerdasan manusia.<br><br>Tidak ada nilai yang bisa memberikan gambaran yang tepat tentang perpaduan unik dari kemampuan, bakat etos kerja, kreativitas, keterampilan, kepemimpinan, serta bagaimana sifat - sifat itu saling mempengaruhi kehidupannya.<br>Mengandalkan nilai dan peringkat untuk menentukan kecerdasan anak dapat membuatnya kehilangan peluang besar. Misalnya, anak dengan latar belakang pendidikan yang lemah, tidak sengaja menemukan bakatnya yang besar di bidang musik.<br>Namun, karena pemahaman orang tua yang kurang tepat, meminta anak untuk meninggalkan hobinya di bidang musik untuk serius belajar akademis. Hal ini bisa membuat anak kehilangan peluang besar menjadi musisi, produser, pemain orkestra, dan lain - lain.<br><br><b>4. Ada berbagai jenis kecerdasan</b><br><br>Seorang fisikawan, ahli sejarah, dan seniman, memiliki kecerdasan masing - masing dalam dirinya. Jika diukur berdasarkan keahlian orang tua, mungkin anak akan terlihat biasa - biasa saja. Dengan cara yang sama, siapapun tidak dapat secara efektif memperhitungkan keseimbangan kekuatan dan kelemahan anak.<br>Nilai mampu mengenali kecerdasan unik yang dimiliki seorang anak.<br><br><b>5. Kecerdasan masih bisa berubah</b><br><br>Banyak yang mengatakan bahwa kecerdasan tidak akan pernah berubah, karena kapasitas manusia sebagian besar akan tetap sama sepanjang hidupnya. Namun, banyak ahli yang percaya bahwa kemungkinan itu bisa berubah seiring waktu.<br>Bahkan ada sebuah gagasan yang dikenal sebagai Teori Kecerdasan Inkremental yang menyatakan bahwa kecerdasan sebenarnya dapat dikembangkan dan ditingkatkan melalui pelatihan<br><br>Anak yang menerima teori ini lebih cenderung menerima tantangan, gigih, dan belajar dari kesalahan masa lalu dibandingkan dengan anak yang percaya bahwa kecerdasan itu statis dan tidak berubah.<br>Dengan melatih pikiran anak dari waktu ke waktu, orangtua dapat meningkatkan kecerdasan anak.', 'news1637567007.jpg', 1637135925),
(6, 'Jadi Kader Bela Negara, Mischka dan Devon Ajak Generasi Muda Berpola Pikir Positif', '<b>AsPeIn</b> - Bela negara dapat dilakukan orang muda melalui berbagai cara, termasuk dengan tekun belajar dan meraih prestasi. Pesan ini disampaikan Mischka Aoki dan Devon Kei Enzo yang diangkat menjadi Kader Bela Negara oleh Kemenhan pada Hari Sumpah Pemuda 2021.<br><br>Direktur Jenderal Potensi Pertahanan Kemenhan Mayjen TNI Dadang Hendrayudha memberikan penghargaan Pin Bela Negara dan pengakuan sebagai Kader Bela Negara kepada Mischka Aoki (12 tahun) dan Devon Kei Enzo (11 tahun).<br><br>Penyerahan penghargaan diberikan dalam acara \"Muda Berkarya di Era 4.0\" yang digelar Ditjen Potensi Pertahanan Kemenhan dalam rangka memperingati Hari Sumpah Pemuda, 28 Oktober 2021. Penghargaan Pin Bela Negara Kemenhan ini sebelumnya juga pernah diberikan kepada Duta Bela Negara Agnez Mo dan Atta Halilintar.<br><br>Mischka Aoki dan Devon Kei Enzo dinilai merupakan <i>role model</i> pelajar berprestasi yang membawa nama besar Indonesia di kancah Internasional. Mayjen TNI Dadang Hendrayudha dan Direktur Bela Negara Brigjen TNI Jubei Levianto menyampaikan predikat Kader Bela Negara diberikan khusus kepada Mischka dan Devon atas prestasi, motivasi, dan inspirasi yang telah mereka berikan kepada Indonesia dan generasi muda.<br><br>Hanya di dalam tahun 2021 saja, Mischka dan Devon telah berhasil meraih 36 mendali olimpiade matematika dan sains tingkat internasional dan mengharumkan nama Indonesia. Bulan Oktober 2021 ini, mereka kembali menambah 2 Mendali Emas dari Olimpiade Matematika tingkat internasional SEAMO (Southeast Asian Mathematical Olympiad).<br><br>Selain prestasi bidang sains dan matematika, mereka juga membanggakan Indonesia dengan keberhasilan di ajang Internasional \"Sustainabillity Challenge: Climate Action\". Seperti yang disampaikan pada acara tersebut, Mischka sangat senang bisa memenangkan Juara 1 diajang internasional ini, di mana video karyanya ditampilkan langsung di acara Konferensi PBB Perubahan Iklim COP26, di Glasgow, Skotlandia minggu depan.<br><br><b>Pola pikir positif dan kerja keras</b><br><br>Dalam acara peringatan Sumpah Pemuda ini, Devon menyampaikan, \"bela negara bukan hanya untuk orang dewasa saja, banyak sekali yang bisa dilakukan oleh generasi muda Indonesia untuk membela negara.\"<br>\"Salah satunya adalah belajar dengan rajin, karena suatu saat nanti kita bisa menggunakan kepintaran kita demi kemajuan negara kita di masa depan,\" ujar Devon.<br><br>\"Generasi muda memegang peranan yang sangat penting untuk kemajuan suatu negara nantinya, jadi sangat penting untuk generasi muda Indonesia memiliki pola pikir yang positif,\" tambah Mischka.<br>\"Karena dengan memiliki pola pikir yang positif, itu akan membawa dampak yang positif terhadap seluruh masyarakat dan juga kemajuan negara di masa yang akan datang,\" tegas Mischka lagi.<br><br>Dalam kesempatan tersebut, Mischka mengajak orang Indonesia untuk memiliki mimpi setinggi - tingginya, tidak pantang menyerah, serta tidak takut mencoba.<br>\"Selalu lakukan yang terbaik yang dapat kamu lakukan dan selalu lakukan lebih dari yang diharapkan dan diminta. Kesuksesan tidak datang begitu saja, perlu kerja keras untuk mendapatkannya,\" tambah Devon.<br>\"Luar biasa. Ini bukti nyata bahwa (Presiden) Soekarno adalah seorang visioner. Beliau tahu Indonesia adalah negara dengan sumber daya manusia dan sumber daya alam yang luar biasa,\" ujar Mayjen TNI Dadang Hendrayudha.<br><br>Ia mengajak orang muda Indonesia dapat meneladani semangat dan perjuangan Devon dan Mischka yang membuktikan anak Indonesia mampu unjuk prestasi di kawasan Amerika, China, Australia, hingga Asia.<br>\"Segala sesuatu tidak bisa diraih dengan leha - leha. Semua harus diraih dengan kerja keras. Kalau kita memiliki cita - cita, harus punya komitmen, kita harus punya perjuangan yang keras untuk mencapai cita - cita,\" pesan Mayjen TNI Dadang Hendrayudha.', 'news1637567092.jpg', 1637567092),
(7, 'Orangtua Harus Beri Restu Anak Jalani PTM Terbatas', '<b>AsPeIn</b> - PT Pahami Cipta Edukasi (Pahamify) bersama Juru Bicara Pemerintah untuk Penanganan Covid-19, Reisa Broto Asmoro berbagi informasi kepada orangtua agar lebih siap dan sigap menyambut Pembelajaran Tatap Muka (PTM) terbatas.<br>Menurut COO Pahamify Mohammad Akhsan, kesehatan pada masa saat ini menjadi keutamaan bagi semua pihak, khususnya bagi mereka yang menjalankan PTM terbatas.<br><br>Meski pandemi Covid-19 masih menjadi momok yang menakutkan, tapi tidak bisa dipungkiri pemerintah sudah merestui pemberian izin PTM terbatas kepada semua sekolah maupun perguruan tinggi.<br>\"Dengan diberikannya izin melakukan PTM terbatas, maka orangtua harus mempersiapkan anak - anak secara optimal, pastikan adanya proteksi maksimal bagi anak saat PTM terbatas,\" kata dia dalam keterangan resminya, Selasa (26/10/2021).<br><br>Reisa menyatakan, kondisi penanganan Covid-19 yang mulai terkendali, membuat aktivitas PTM terbatas harus dijalankan di beberapa daerah yang statusnya di wilayah Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) level 1 dan 2.<br>Dengan kondisi yang makin membaik, kata dia, seharusnya orangtua berani mengirimkan anaknya ke sekolah untuk menjalani PTM terbatas. Kecuali, sebut dia, daerah yang berada di PPKM level 3 dan 4.<br>Mungkin orangtua harus lebih waspada memberikan restu anaknya untuk menjalankan PTM terbatas.<br><br>\"Kalau PPKM level 2 kemudian jadi satu, itu resiko rendah. Tentu tak logis, kalau tidak mau sama sekali jalani PTM terbatas,\" ucap Reisa.<br>Reisa menyebut, PTM terbatas harus dilaksanakan dengan syarat dan ketentuan berlaku. Hal yang utama adalah guru dan tenaga pendidik harus sudah memperoleh vaksinasi Covid-19. Selain itu, sekolah juga harus merepkan disiplin protokol kesehatan yang ketat, mulai dari menjaga jarak, menyiapkan tempat cuci tangan, menyemprotkan disinfektan secara berkala, dan lainnya.<br><br>\"Setiap sekolah juga harus tetap memfasilitasi metode pembelajaran jarak jauh (PJJ), agar anak dapat memilih, apakah ingin PTM terbatas atau PJJ,\" tegas dia. Bukan hanya sekolah, sambung dia, anak - anak juga harus diberikan pengertian menjaga diri untuk terhindar dari Covid-19 saat menjalani PTM terbatas. \"Karena, itu merupakan kewajiban yang harus terus dilakukan oleh anak - anak atau siswa yang pergi sekolah menjalani PTM terbatas,\" ungkapnya.<br><br>Dia menambahkan, orangtua diharapkan bisa memastikan anak selalu mengikuti protokol kesehatan yang ketat.<br>\"Kesehatan anak perlu dijaga saat PTM terbatas, lewat makanan dan minuman yang bergizi,\" pungkas dia.', 'news1637567218.jpg', 1637567218),
(8, 'Tantangan dan Seni Mendidik Generasi Z', '<b>AsPeIn</b> - Generasi Z saat ini memenuhi ruang kelas baik itu di SMA maupun perkuliahan. Bahkan generasi z senior saat ini sudah mulai masuk dunia professional sebagai pekerja professional, pengusaha, pekerja seni, dan berbagai pilihan karir menarik masa kini.<br><br>Generasi kelahiran 1996-2010 ini menjadi digital native yang membuat mereka memiliki karakteristik yang unik. Menurut data BPS 2020, generasi Z berjumlah 75,5 juta atau 27.94 persen dari total jumlah 272 Juta penduduk Indonesia.<br> Belum lagi, milenial yang berusia paling muda 26 tahun hingga 38 tahun ditahun 2021, berjumlah 70 juta (25.87 persen). Terakhir dari kelompok usia produktif adalah post gen Z berjumlah 29.4 juta yang saat ini mulai masuk ke bangku SMP dan SMA ditahun 2021.<br><br>Total generasi produktif Indonesia sejumlah kurang lebih 175 juta jiwa. Angka yang sangat besar dan menjanjikan untuk membuat Indonesia naik kelas dimasa depan. Generasi Z merupakan generasi paling beruntung saat ini, mereka adalah penghuni asli dari dunia digital. Dibesarkan di lingkungan yang serba digital membuat orientasi, gaya hidup, dan gaya belajar mereka berbeda. Khususnya gaya belajar, pendidik harus menyesuaikan dengan karakteristik generasi Z.<br><br>Bahkan sebagian besar kelompok guru dan dosen dari Generasi Z saat ini berasal dari generasi millennial. Muda ketemu muda. Cepat ketemu cepat. Mereka mobile, cepat belajar dan merupakan generasi yang paling well educated karena peran digitalisasi informasi saat ini. Merekapun merupakan generasi yang terbuka dan tentunya kritis terhadap apapun yang ada disekitar.<br><br>Generasi Z sangat terhubung dengan berbagai informasi platform saat ini. Mereka memiliki koneksi yang luas karena mampu berkomunikasi dengan siapapun dan berinteraksi dengan siapapun sesuai dengan keinginannya.<br>Kondisi ini menjadi pekerjaan rumah bagi para pendidik untuk mengetahui bagaiman pendekatan yang tepat agar generasi Z memiliki semangat untuk belajar dan menggali pengetahuan.<br>Generasi ini memang berbeda dari yang lain sehingga perlu ada treatment khusus. Tetapi, selama kita mengetahui karakter dan gaya belajar mereka, setiap pendidik pasti memiliki jalan keluarnya masing - masing.', 'news1637569747.jpg', 1637569747);

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id` int(11) NOT NULL,
  `pelajaran` varchar(128) NOT NULL,
  `kd_mapel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`id`, `pelajaran`, `kd_mapel`) VALUES
(1, 'Matematika', 'MTK'),
(2, 'Ilmu Pengetahuan Alam', 'IPA'),
(3, 'Bahasa Indonesia', 'BIN'),
(4, 'Bahasa Inggris', 'ENG'),
(5, 'Ilmu Pengetahuan Sosial', 'IPS'),
(6, 'Ekonomi', 'EKO'),
(7, 'Biologi', 'BIO'),
(8, 'Olah Raga', 'ORG');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `post` varchar(500) NOT NULL,
  `date_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `name`, `image`, `post`, `date_post`) VALUES
(3, 'Farrel Arya', 'default.jpg', 'Tubulus malpighi pada serangga berfungsi sebagai alat Tubulus malpighi pada serangga berfungsi sebagai alat ...<br>\r\na.indera<br>\r\nb.peredaran darah<br>\r\nc.pernafasan<br>\r\nd.pencernaan<br>\r\ne.ekskresi', 1653542651),
(4, 'Wildan Fahmi Mubarok', 'default.jpg', 'Hasil dari 6^2 +4^8 - 3^32 adalah ...\r\n<br>\r\nA. 2^2<br>\r\nB. 3^2<br>\r\nC. 5^2<br>\r\nD. 7^2', 1653543593),
(5, 'M. Jihad Alfaridzi', 'default.jpg', 'Hasil dari ^1350 ÷ ^3 adalah….\r\n<br>\r\nA. 5^2<br>\r\nB. 5^3<br>\r\nC. 15^2<br>\r\nD. 15^3', 1653544392);

-- --------------------------------------------------------

--
-- Table structure for table `role_id`
--

CREATE TABLE `role_id` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_id`
--

INSERT INTO `role_id` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `alamat`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(2, 'admin', 'Jakarta', 'admin@gmail.com', 'default.jpg', '$2y$10$0RdUOvJv6nvNXVzyvj8CIumc36tucNzuYHzLydDK4.VqlbG3dS2V2', 1, 1, 1635680420),
(16, 'Wildan Fahmi Mubarok', 'Jakarta Timur', 'wfahmi03@gmail.com', 'default.jpg', '$2y$10$ibE0pcLIle2N41YUNdWCkOqp95eeJjHuhu4UBOzXrXbnUNzG2pZPC', 2, 1, 1653387804),
(17, 'Farrel Arya', 'Pulo Gadung', 'aryafarrel598@gmail.com', 'default.jpg', '$2y$10$SoaD7EjmSjtm2Rxo5KMTj.kNfNo6DuR4lejG5MZnoOFG06FwSw6Aa', 2, 1, 1653542548),
(18, 'M. Jihad Alfaridzi', 'Jatinegara Kaum', 'wildanfm6@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1653543481),
(19, 'Aji Sutioso', 'Pemalang', 'ajisutioso@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(20, 'Ivon', 'Bandung', 'ivon@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(21, 'Indah', 'Tegal', 'indah@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(22, 'Saraswati', 'Jakarta Barat', 'saraswati@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(23, 'Mugni', 'Riau', 'mugni@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(24, 'Pauzul', 'Pekanbaru', 'pauzul@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(25, 'Agus Fitriadi', 'Bali', 'agusfitriadi@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(26, 'Iman', 'Jambi', 'iman@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(27, 'Siska', 'Depok', 'siska@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(28, 'Jessica', 'Jakarta', 'jessica88@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(29, 'Ramadhan', 'Bukit Tinggi', 'ramadhan@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(30, 'Sulis', 'Pemalang', 'sulis@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(31, 'Ageng', 'Pemalang', 'ageng@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(32, 'Wandi', 'Jogja', 'wandi@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420),
(33, 'Winarto', 'Bogor', 'winarto@gmail.com', 'default.jpg', '$2y$10$LNnHI22GfPdK3VzJzt.DiOa8RBMKh.IfrDk5kUr2V1w1/APD6k40q', 2, 1, 1635680420);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 5),
(5, 1, 4),
(6, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(4, 'Materi'),
(5, 'Menu');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'Home', 'user', 'fas fa-fw fa-home', 1),
(3, 2, 'News', 'user/news', 'fas fa-fw fa-newspaper', 1),
(8, 5, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(9, 5, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(10, 2, 'Critique & Suggestions', 'user/critique', 'fas fa-fw fa-reply-all', 1),
(12, 4, 'SD', 'user/sd', 'fas fa-fw fa-archive', 1),
(13, 4, 'SMP', 'user/smp', 'fas fa-fw fa-archive', 1),
(14, 4, 'SMA', 'user/sma', 'fas fa-fw fa-archive', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_id`
--
ALTER TABLE `role_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `jenjang`
--
ALTER TABLE `jenjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_id`
--
ALTER TABLE `role_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
