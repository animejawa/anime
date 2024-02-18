-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 05:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_golongan`
--

CREATE TABLE `table_golongan` (
  `id_gol` int(11) NOT NULL,
  `nama_golongan` varchar(110) NOT NULL,
  `gaji` varchar(100) NOT NULL,
  `jumlah_golongan` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_golongan`
--

INSERT INTO `table_golongan` (`id_gol`, `nama_golongan`, `gaji`, `jumlah_golongan`) VALUES
(2, 'III', '2', 3),
(1, 'IV', '10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_jabatan`
--

CREATE TABLE `table_jabatan` (
  `id_jab` int(50) NOT NULL,
  `nama_jabatan` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_jabatan`
--

INSERT INTO `table_jabatan` (`id_jab`, `nama_jabatan`) VALUES
(1, 'kadis'),
(2, 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `table_karyawan`
--

CREATE TABLE `table_karyawan` (
  `id` int(200) NOT NULL,
  `nik` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_lahir` varchar(200) NOT NULL,
  `golongan` varchar(110) NOT NULL,
  `jabatan` varchar(110) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_karyawan`
--

INSERT INTO `table_karyawan` (`id`, `nik`, `nama`, `tgl_lahir`, `golongan`, `jabatan`, `jenis_kelamin`) VALUES
(1, 21, 'farel', '17m', 'IV', 'kadis', 'laki'),
(2, 32, 'awd', 'f2', 'IV', 'staff', 'awf'),
(1, 21, 'farel', '17m', 'IV', 'kadis', 'laki'),
(222, 121, 'ad', '17j', 'III', 'staff', 'd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_golongan`
--
ALTER TABLE `table_golongan`
  ADD PRIMARY KEY (`nama_golongan`);

--
-- Indexes for table `table_jabatan`
--
ALTER TABLE `table_jabatan`
  ADD PRIMARY KEY (`nama_jabatan`);

--
-- Indexes for table `table_karyawan`
--
ALTER TABLE `table_karyawan`
  ADD KEY `golongan` (`golongan`),
  ADD KEY `jabatan` (`jabatan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_karyawan`
--
ALTER TABLE `table_karyawan`
  ADD CONSTRAINT `table_karyawan_ibfk_1` FOREIGN KEY (`golongan`) REFERENCES `table_golongan` (`nama_golongan`),
  ADD CONSTRAINT `table_karyawan_ibfk_2` FOREIGN KEY (`jabatan`) REFERENCES `table_jabatan` (`nama_jabatan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
