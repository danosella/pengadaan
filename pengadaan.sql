-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2022 at 08:01 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengadaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_klien`
--

CREATE TABLE `data_klien` (
  `id_klien` int(7) NOT NULL,
  `nama_klien` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_klien`
--

INSERT INTO `data_klien` (`id_klien`, `nama_klien`, `alamat`, `telepon`) VALUES
(1, 'andre', 'gedong', 812);

-- --------------------------------------------------------

--
-- Table structure for table `data_kontak`
--

CREATE TABLE `data_kontak` (
  `id_kontrak` int(7) NOT NULL,
  `tgl_kontrak` date NOT NULL,
  `id_klien` int(7) NOT NULL,
  `nama_proyek` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `nilai_kontrak` float NOT NULL,
  `lama_proyek` varchar(20) NOT NULL,
  `syarat_pembayaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_supplier`
--

CREATE TABLE `data_supplier` (
  `id_supplier` int(7) NOT NULL,
  `nama_supplier` varchar(35) NOT NULL,
  `alamat_supplier` varchar(100) NOT NULL,
  `telepon` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `id_po` int(8) NOT NULL,
  `tgl_po` date NOT NULL,
  `id_ro` int(8) NOT NULL,
  `netto_po` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `request_order`
--

CREATE TABLE `request_order` (
  `id_ro` int(7) NOT NULL,
  `id_kontrak` int(8) NOT NULL,
  `tgl_ro` date NOT NULL,
  `id_supplier` int(8) NOT NULL,
  `netto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` int(100) NOT NULL,
  `role` enum('Admin','Kepala_Gudang','Manajer','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_klien`
--
ALTER TABLE `data_klien`
  ADD PRIMARY KEY (`id_klien`);

--
-- Indexes for table `data_kontak`
--
ALTER TABLE `data_kontak`
  ADD PRIMARY KEY (`id_kontrak`);

--
-- Indexes for table `data_supplier`
--
ALTER TABLE `data_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`id_po`);

--
-- Indexes for table `request_order`
--
ALTER TABLE `request_order`
  ADD PRIMARY KEY (`id_ro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_klien`
--
ALTER TABLE `data_klien`
  MODIFY `id_klien` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_kontak`
--
ALTER TABLE `data_kontak`
  MODIFY `id_kontrak` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_supplier`
--
ALTER TABLE `data_supplier`
  MODIFY `id_supplier` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `id_po` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_order`
--
ALTER TABLE `request_order`
  MODIFY `id_ro` int(7) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
