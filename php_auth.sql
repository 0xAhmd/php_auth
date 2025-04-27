-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2025 at 11:28 AM
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
-- Database: `php_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(3, 'ahmedhesham200987@gmail.com', '$2y$10$Qef89nfiBXKSFC0imJRKVevdbms.NKOKuMOUwAFnrcwJ1xQSNIk3C'),
(4, 'ahmed@gmail.com', '1234'),
(5, 'ahmzdapk@gmail.com', '$2y$10$r9xfghcohCFM.3WKBnMoWei8348Z.pFeK24wPItuSqjIA3jTSvMGS'),
(6, 'special@gmail.com', '$2y$10$7IppxDayhTQz2YHtr.DxvuGJjDdHsAQchArIZaIuqnCaE.chxRtjq'),
(7, 'gojo@sensi.com', '$2y$10$NNyp8Nt7nW4lbsn2tgj2oeRnsNdGBBaCTnrJnsOut8YnIZlZlO4B.'),
(8, 'ahmedhesham200@gmail.com', '$2y$10$IhLdURH74RoyOS1TTmyVM.kasEKP5v47d1ZGPzyniPKZ3xnCkSlc.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
