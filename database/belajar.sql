-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 07:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nm_lengkap` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nm_lengkap`, `username`, `password`) VALUES
(1, 'Bragi Arya', 'admin-bragi', '123');

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_les` int(11) NOT NULL,
  `kode_alternatif` varchar(250) NOT NULL,
  `nm_les` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_les`, `kode_alternatif`, `nm_les`) VALUES
(1, 'A1', 'Laskar Pelangi (andrea Hirata)'),
(2, 'A2', 'Ayat-ayat Cinta (Habiburrahman El Shirazy)'),
(3, 'A3', 'Dunia Shopie (Jostein Gander)'),
(6, 'A4', 'Senja Dan Pelangi (Alffy Rev & Linka Angelia)'),
(7, 'A5', 'Dikta Dan Hukum (Dia An Farah)'),
(8, 'A6', 'Matahari (Tere Liye)'),
(9, 'A7', 'Cantik Itu Luka (Eka Kurniawan)'),
(10, 'A8', 'Maaf Tuhan Aku Hampir Menyerah (Alfialghazi)'),
(11, 'A9', 'PeremPuan Dititik Nol (Nawal El-Saadawi)'),
(12, 'A10', 'Pulang (Tere Liye)'),
(13, 'A11', 'Surat Kecil Untuk Tuhan (Agnes Davonar)'),
(14, 'A12', 'Laut Bercerita (Chudori)'),
(15, 'A15', 'Mariposa (Hidayatul Fajriyah)'),
(16, 'A16', 'Angkasa (Tresia)'),
(17, 'A17', 'True Stalker (Sirhayani)'),
(18, 'A18', 'Cinta Brontosaurus (Raditya Dika)'),
(19, 'A19', 'Bidadari Bermata Bening (Habiburrahman El Shirazy)'),
(20, 'A20', 'Critical Eleven (Ika Natassa)'),
(21, 'A21', 'Ayah (Andrea Hirata)'),
(22, 'A22', 'Silent Heart (Rudiyant)'),
(23, 'A23', 'Daun Yang Jatuh Tidak Pernah Membenci Angin (Tere Liye)'),
(24, 'A24', 'Bumi Manusia (Pramoedya Ananta Toer)'),
(25, 'A25', 'Hujan Bulan Juni (Sapardi Djoko Damono)'),
(26, 'A26', 'Bumi (Tere Liye )'),
(27, 'A27', 'Pelukis Bisu (Alex michaelides)'),
(28, 'A28', 'Cara Bahagia Tampa Kepala (Triskaedekaman)'),
(29, 'A29', 'Kata (rintik Sendu)'),
(30, 'A30', 'Rembulan Tenggelam Diwajahmu (Tere Liye)'),
(31, 'A13', 'Self Injurlove (Salwa Lia)'),
(32, 'A14', 'Gadis Kretek (Ratih Kumala)');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kode_kriteria` varchar(250) NOT NULL,
  `nm_kriteria` varchar(250) NOT NULL,
  `bobot` int(11) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode_kriteria`, `nm_kriteria`, `bobot`, `status`) VALUES
(1, 'C1', 'Harga', 5, 'COST'),
(2, 'C2', 'Penulis', 4, 'BENEFIT'),
(3, 'C3', 'Cover', 3, 'BENEFIT'),
(4, 'C4', 'Alur Cerita', 5, 'BENEFIT'),
(5, 'C5', 'Gaya Bahasa', 4, 'BENEFIT'),
(6, 'C6', 'Ketebalan Buku', 2, 'COST');

-- --------------------------------------------------------

--
-- Table structure for table `pembobotan`
--

CREATE TABLE `pembobotan` (
  `id_nilai` int(11) NOT NULL,
  `id_les` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembobotan`
--

INSERT INTO `pembobotan` (`id_nilai`, `id_les`, `id_kriteria`, `nilai`) VALUES
(1, 1, 1, '2'),
(2, 1, 2, '5'),
(3, 1, 3, '5'),
(4, 1, 4, '5'),
(5, 1, 5, '3'),
(6, 1, 6, '3'),
(7, 2, 1, '2'),
(8, 2, 2, '4'),
(9, 2, 3, '3'),
(10, 2, 4, '5'),
(11, 2, 5, '5'),
(12, 2, 6, '3'),
(13, 3, 1, '4'),
(14, 3, 2, '3'),
(15, 3, 3, '5'),
(16, 3, 4, '5'),
(17, 3, 5, '1'),
(18, 3, 6, '4'),
(19, 6, 1, '2'),
(20, 6, 2, '3'),
(21, 6, 3, '3'),
(22, 6, 4, '4'),
(23, 6, 5, '5'),
(24, 6, 6, '1'),
(25, 7, 1, '2'),
(26, 7, 2, '2'),
(27, 7, 3, '5'),
(28, 7, 4, '4'),
(29, 7, 5, '3'),
(30, 7, 6, '2'),
(31, 8, 1, '2'),
(32, 8, 2, '5'),
(33, 8, 3, '3'),
(34, 8, 4, '5'),
(35, 8, 5, '3'),
(36, 8, 6, '2'),
(37, 9, 1, '3'),
(38, 9, 2, '4'),
(39, 9, 3, '5'),
(40, 9, 4, '4'),
(41, 9, 5, '3'),
(42, 9, 6, '3'),
(43, 10, 1, '2'),
(44, 10, 2, '2'),
(45, 10, 3, '1'),
(46, 10, 4, '3'),
(47, 10, 5, '5'),
(48, 10, 6, '1'),
(49, 11, 1, '2'),
(50, 11, 2, '5'),
(51, 11, 3, '3'),
(52, 11, 4, '4'),
(53, 11, 5, '3'),
(54, 11, 6, '1'),
(55, 12, 1, '2'),
(56, 12, 2, '4'),
(57, 12, 3, '3'),
(58, 12, 4, '4'),
(59, 12, 5, '3'),
(60, 12, 6, '3'),
(61, 13, 1, '2'),
(62, 13, 2, '3'),
(63, 13, 3, '3'),
(64, 13, 4, '4'),
(65, 13, 5, '5'),
(66, 13, 6, '1'),
(67, 14, 1, '3'),
(68, 14, 2, '4'),
(69, 14, 3, '5'),
(70, 14, 4, '4'),
(71, 14, 5, '3'),
(72, 14, 6, '2'),
(73, 15, 1, '2'),
(74, 15, 2, '3'),
(75, 15, 3, '3'),
(76, 15, 4, '3'),
(77, 15, 5, '5'),
(78, 15, 6, '3'),
(79, 16, 1, '2'),
(80, 16, 2, '2'),
(81, 16, 3, '5'),
(82, 16, 4, '4'),
(83, 16, 5, '5'),
(84, 16, 6, '2'),
(85, 17, 1, '2'),
(86, 17, 2, '3'),
(87, 17, 3, '3'),
(88, 17, 4, '4'),
(89, 17, 5, '5'),
(90, 17, 6, '3'),
(91, 18, 1, '2'),
(92, 18, 2, '5'),
(93, 18, 3, '1'),
(94, 18, 4, '3'),
(95, 18, 5, '5'),
(96, 18, 6, '1'),
(97, 19, 1, '2'),
(98, 19, 2, '4'),
(99, 19, 3, '3'),
(100, 19, 4, '4'),
(101, 19, 5, '3'),
(102, 19, 6, '2'),
(103, 20, 1, '2'),
(104, 20, 2, '4'),
(105, 20, 3, '5'),
(106, 20, 4, '5'),
(107, 20, 5, '3'),
(108, 20, 6, '2'),
(109, 21, 1, '2'),
(110, 21, 2, '5'),
(111, 21, 3, '5'),
(112, 21, 4, '4'),
(113, 21, 5, '3'),
(114, 21, 6, '4'),
(115, 22, 1, '1'),
(116, 22, 2, '3'),
(117, 22, 3, '3'),
(118, 22, 4, '4'),
(119, 22, 5, '3'),
(120, 22, 6, '2'),
(121, 23, 1, '2'),
(122, 23, 2, '4'),
(123, 23, 3, '1'),
(124, 23, 4, '5'),
(125, 23, 5, '3'),
(126, 23, 6, '2'),
(127, 24, 1, '3'),
(128, 24, 2, '5'),
(129, 24, 3, '3'),
(130, 24, 4, '5'),
(131, 24, 5, '3'),
(132, 24, 6, '3'),
(133, 25, 1, '2'),
(134, 25, 2, '5'),
(135, 25, 3, '1'),
(136, 25, 4, '4'),
(137, 25, 5, '5'),
(138, 25, 6, '1'),
(139, 26, 1, '3'),
(140, 26, 2, '4'),
(141, 26, 3, '3'),
(142, 26, 4, '4'),
(143, 26, 5, '3'),
(144, 26, 6, '3'),
(145, 27, 1, '2'),
(146, 27, 2, '4'),
(147, 27, 3, '3'),
(148, 27, 4, '5'),
(149, 27, 5, '3'),
(150, 27, 6, '2'),
(151, 28, 1, '2'),
(152, 28, 2, '2'),
(153, 28, 3, '3'),
(154, 28, 4, '5'),
(155, 28, 5, '5'),
(156, 28, 6, '2'),
(157, 29, 1, '2'),
(158, 29, 2, '3'),
(159, 29, 3, '3'),
(160, 29, 4, '5'),
(161, 29, 5, '5'),
(162, 29, 6, '2'),
(163, 30, 1, '2'),
(164, 30, 2, '4'),
(165, 30, 3, '5'),
(166, 30, 4, '4'),
(167, 30, 5, '3'),
(168, 30, 6, '3'),
(169, 31, 1, '3'),
(170, 31, 2, '2'),
(171, 31, 3, '1'),
(172, 31, 4, '3'),
(173, 31, 5, '3'),
(174, 31, 6, '3'),
(175, 32, 1, '2'),
(176, 32, 2, '4'),
(177, 32, 3, '3'),
(178, 32, 4, '5'),
(179, 32, 5, '3'),
(180, 32, 6, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_les`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `pembobotan`
--
ALTER TABLE `pembobotan`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `LES` (`id_les`),
  ADD KEY `KRITERIA` (`id_kriteria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_les` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pembobotan`
--
ALTER TABLE `pembobotan`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembobotan`
--
ALTER TABLE `pembobotan`
  ADD CONSTRAINT `KRITERIA` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`),
  ADD CONSTRAINT `LES` FOREIGN KEY (`id_les`) REFERENCES `alternatif` (`id_les`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
