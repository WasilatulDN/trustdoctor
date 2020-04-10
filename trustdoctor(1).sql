-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2020 at 07:13 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trustdoctor`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `idDokter` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `str` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`idDokter`, `nama`, `str`, `email`, `username`, `password`) VALUES
(1, 'wasilatul', '1234', 'wasil@email.com', 'wasil', '$2y$12$Rk51YU85K2orOVMrcXViQu6qawjHHtKm3k4EcSTv41G5aESWxvnyW');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE `konsultasi` (
  `idKonsultasi` int(11) NOT NULL,
  `idPasien` int(11) DEFAULT NULL,
  `idDokter` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jkel` varchar(50) DEFAULT NULL,
  `usia` varchar(50) DEFAULT NULL,
  `keluhan` varchar(500) DEFAULT NULL,
  `detail` varchar(500) DEFAULT NULL,
  `dijawab` int(11) DEFAULT NULL,
  `jawaban` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`idKonsultasi`, `idPasien`, `idDokter`, `tanggal`, `jkel`, `usia`, `keluhan`, `detail`, `dijawab`, `jawaban`) VALUES
(1, NULL, NULL, '2020-04-10', 'Laki-laki', '21', 'batuk', NULL, 0, NULL),
(2, 1, NULL, '2020-04-10', 'Perempuan', '20', 'sakit', NULL, 0, NULL),
(3, 1, NULL, '2020-04-10', 'Perempuan', '20', 'batuk', 'kering', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `idPasien` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`idPasien`, `nama`, `email`, `username`, `password`) VALUES
(1, 'dewi ningrum', 'dewi@email.com', 'dewi', '$2y$12$YVV6a1dJeTRlNTVXbTRHdeZE2/jXzIBE9axIkQPBLAEIVZ3I5eaLC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`idDokter`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`idKonsultasi`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`idPasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `idDokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `idKonsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `idPasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
