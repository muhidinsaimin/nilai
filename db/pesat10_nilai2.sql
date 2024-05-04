-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 04, 2024 at 07:12 AM
-- Server version: 10.6.16-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesat10_nilai2`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `kapasitas` int(10) UNSIGNED DEFAULT NULL,
  `terisi` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`, `kapasitas`, `terisi`) VALUES
(1, 'X Unggulan 01', 32, 31),
(2, 'X Unggulan 02', 32, 30),
(3, 'X IPS 01', 32, 31),
(5, 'X IPS 02', 32, 32),
(7, 'X IPS 03', 32, 31);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nis` varchar(25) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jk` enum('L','P') NOT NULL DEFAULT 'L',
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `kelas_id` int(10) UNSIGNED DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama`, `jk`, `tempat_lahir`, `tanggal_lahir`, `kelas_id`, `foto`) VALUES
(1, '425435', 'Muhidin', 'L', 'Bogor', '2024-02-01', 1, 'muhidin.jpg'),
(2, '45645645', 'Humam', 'L', 'Bandung', '2024-02-05', 2, NULL),
(3, '3432432', 'Kevin', 'L', 'Depok', '2005-04-27', 5, NULL),
(4, '432453223', 'Muhammad Syah G', 'L', 'Bekasi', '2024-04-18', 2, NULL),
(5, '645645', 'Jessica', 'P', 'Bandung', '2024-04-23', 1, '_'),
(6, '545243243', 'Nabilah', 'P', 'Bogor', '2024-04-09', 2, '623834141_'),
(7, '45425235', 'Aqeeyla', 'P', 'Bogor', '2024-04-17', 3, '1838325447_1.jpg'),
(8, '43434132', 'Muhammad', 'L', 'Depok', '2024-01-01', 1, '122736603_6_9.jpg'),
(9, '121233', 'asal', 'L', 'denpasar', '2007-12-01', 2, NULL),
(10, '1234343', 'asala aja deh', 'P', 'Bengkulu', '2007-01-31', 2, '113412728_bisik-bisik.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
