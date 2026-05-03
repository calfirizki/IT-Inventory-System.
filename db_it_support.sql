-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2026 at 05:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_it_support`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventaris`
--

CREATE TABLE `inventaris` (
  `id` int(11) NOT NULL,
  `kode_aset` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori` enum('Laptop','Network','Peripheral','Server') DEFAULT 'Laptop',
  `serial_number` varchar(50) DEFAULT NULL,
  `status` enum('Baik','Rusak','Perbaikan','Hilang') DEFAULT 'Baik',
  `lokasi` varchar(50) DEFAULT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventaris`
--

INSERT INTO `inventaris` (`id`, `kode_aset`, `nama_barang`, `kategori`, `serial_number`, `status`, `lokasi`, `tgl_input`) VALUES
(1, 'RT-UNIKOM-01', 'Cisco Router 2911', 'Network', 'SN-2911-AQSHAL', 'Baik', 'Server Room Lt.1', '2026-05-03 15:01:30'),
(2, 'RT-UNIKOM-02', 'Cisco Switch 2960', 'Network', 'SN-2912-AQSHAL', 'Baik', 'Server Room Lt.1', '2026-05-03 15:03:31'),
(3, 'RT-UNIKOM-03', 'Cisco PC Admin', 'Peripheral', 'SN-2913-AQSHAL', 'Baik', 'Server Room Lt.1', '2026-05-03 15:04:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_aset` (`kode_aset`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventaris`
--
ALTER TABLE `inventaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
