-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2017 at 12:50 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siam`
--
CREATE DATABASE IF NOT EXISTS `siam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `siam`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(15) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenjang_fakultas` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `prodi` varchar(50) DEFAULT NULL,
  `seleksi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `password`, `nama`, `jenjang_fakultas`, `jurusan`, `prodi`, `seleksi`) VALUES
('155150201111108', 'admin', 'Fadhlan Muhammad', 'S1/Ilmu Komputer', 'Teknik Informatika', 'Teknik Informatika', 'SELEKSI NASIONAL MASUK PERGURUAN TINGGI NEGERI Brawijaya - Malang'),
('155150201111147', 'admin', 'Firman Budi Safrizal', 'S1/Ilmu Komputer', 'Teknik Informatika', 'Teknik Informatika', 'SELEKSI NASIONAL MASUK PERGURUAN TINGGI NEGERI Brawijaya - Malang'),
('155150201111339', 'admin', 'Nurhana Rahmadani', 'S1/Ilmu Komputer', 'Teknik Informatika', 'Teknik Informatika', 'SELEKSI NASIONAL MASUK PERGURUAN TINGGI NEGERI Brawijaya - Malang');

-- --------------------------------------------------------

--
-- Table structure for table `wirausaha`
--

CREATE TABLE `wirausaha` (
  `ID_Usaha` int(11) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `nama_usaha` varchar(50) NOT NULL,
  `bidang_usaha` varchar(50) NOT NULL,
  `jenis_usaha` varchar(50) NOT NULL,
  `mulai_usaha` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wirausaha`
--

INSERT INTO `wirausaha` (`ID_Usaha`, `nim`, `nama_usaha`, `bidang_usaha`, `jenis_usaha`, `mulai_usaha`) VALUES
(6, '155150201111147', 'Jasa Print', 'Jasa', 'Offline', 2015),
(7, '155150201111147', 'Jual Pulsa', 'Telekomunikasi', 'Online', 2014);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `wirausaha`
--
ALTER TABLE `wirausaha`
  ADD PRIMARY KEY (`ID_Usaha`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wirausaha`
--
ALTER TABLE `wirausaha`
  MODIFY `ID_Usaha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
