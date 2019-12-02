-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 07:44 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jendela`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(10) NOT NULL,
  `judul` text NOT NULL,
  `penulis` text NOT NULL,
  `penerbit` text NOT NULL,
  `gambar` text NOT NULL,
  `harga` int(25) NOT NULL,
  `genre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `penulis`, `penerbit`, `gambar`, `harga`, `genre`) VALUES
('JBR01', 'Judul Buku ini Rahasia', 'Pseudonymous Bosch', 'Elex Media Komputindo', 'JBIR.jpg', 100000, 'misteri'),
('JBR02', 'Judul Buku ini Rahasia', 'Pseudonymous Bosch', 'Elex Media Komputindo', 'JBIR.jpg', 100000, 'misteri'),
('LP01', 'Le Petit Prince', 'Antoine de Saint-Exupéry ', 'Pustaka Jaya', 'LP.jpg', 130000, 'fiksi'),
('LP02', 'Le Petit Prince', 'Antoine de Saint-Exupéry ', 'Pustaka Jaya', 'LP.jpg', 130000, 'fiksi'),
('TA01', 'The Alchemist', 'Paulo Coelho', 'HarperOne', 'TA.jpg', 85000, 'fiksi'),
('TA02', 'The Alchemist', 'Paulo Coelho', 'HarperOne', 'TA.jpg', 85000, 'fiksi');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemlan`
--

CREATE TABLE `pemlan` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemlan`
--

INSERT INTO `pemlan` (`id`, `nama`) VALUES
(45, 'qwqw');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id_user` int(11) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no` int(20) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id_user`, `id`, `name`, `email`, `alamat`, `no`, `tanggal_lahir`, `jenis_kelamin`) VALUES
(1, 0, '', '', '', 0, '0000-00-00', ''),
(2, 1, 'Kevin', 'kevin@kevin.com', 'Jalan itu', 46362624, '2019-11-12', 'Laki-laki'),
(9, 3, 'Ferdi', 'Ferdi@fer.com', 'Jalan itu', 214234134, '2019-12-24', 'Laki-laki'),
(11, 2, 'Dinda', 'dinda@mail', NULL, NULL, NULL, NULL),
(13, 3, 'coba', 'coba@mail', NULL, NULL, NULL, NULL),
(16, 4, 'hehe', 'hehe@mail', NULL, NULL, NULL, NULL),
(17, 6, 'Someone', 'some@mail', 'qwertyuio', 1234567, '2019-12-31', 'Perempuan'),
(18, 6, 'Someone', 'some@mail', NULL, NULL, NULL, NULL),
(19, 7, 'hai', 'hai@mail', 'sdfgh', 23456, '2019-12-13', 'Laki-laki'),
(20, 7, 'hai', 'hai@mail', NULL, NULL, NULL, NULL),
(21, 8, 'Dindaa', 'dindaa@mail', 'qwertyuiop', 12345678, '2019-12-18', 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(20) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no` int(20) NOT NULL,
  `id_buku` varchar(10) NOT NULL,
  `judul` text NOT NULL,
  `penulis` text NOT NULL,
  `penerbit` text NOT NULL,
  `gambar` text NOT NULL,
  `harga` int(25) NOT NULL,
  `genre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id`, `name`, `email`, `alamat`, `no`, `id_buku`, `judul`, `penulis`, `penerbit`, `gambar`, `harga`, `genre`) VALUES
(12, 2, 'Dinda', 'dinda@mail', 'somewhere', 123, 'LP02', 'Le Petit Prince', 'Antoine de Saint-Exupéry', 'Pustaka Jaya', 'LP.jpg', 130000, 'fiksi'),
(13, 2, 'Dinda', 'dinda@mail', 'somehere', 0, 'JBR02', 'Judul Buku ini Rahasia', 'Pseudonymous Bosch', 'Elex Media Komputindo', 'JBIR.jpg', 100000, 'misteri'),
(14, 4, 'hehe', 'hehe@mail', 'qwerty', 1234567, 'JBR02', 'Judul Buku ini Rahasia', 'Pseudonymous Bosch', 'Elex Media Komputindo', 'JBIR.jpg', 100000, 'misteri');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kevin', 'kevin@kevin.com', NULL, '$2y$10$bgXcTjHDohlxxzuT.crkw.HjUj9hk9cOEfKhxYjZbd3lEryMxiFgO', NULL, '2019-11-29 22:36:54', '2019-11-29 22:36:54'),
(2, 'Dinda', 'dinda@mail', NULL, '$2y$10$20WR3NKgoCwrLQAIYBedpOJCW6PggGIUpPm8HZpKyHvXzbI/n/Izq', NULL, '2019-11-30 10:15:12', '2019-11-30 10:15:12'),
(3, 'coba', 'coba@mail', NULL, '$2y$10$IjChr5rV9xR8mOJOaI2L0uvW5qUZH3ifaFMin.FixM5ktbsy3gWm6', NULL, '2019-11-30 13:14:23', '2019-11-30 13:14:23'),
(4, 'hehe', 'hehe@mail', NULL, '$2y$10$fKE65oSr8JJYPoSYonxO3OuYpvsadF4nWsYCn/R9QGRtWauJEItcy', NULL, '2019-11-30 13:43:05', '2019-11-30 13:43:05'),
(6, 'Someone', 'some@mail', NULL, '$2y$10$iRhlRKRKoIaRdNLw9GsTdugWExHDDHD.F0M56DayTVaojVu0J35VW', 'z6VstPqr4dZdDOsyePW8rJmt9j5HyBUqRhQeMFtJWvOFtiPUFAWN2zAaaeo0', '2019-11-30 14:30:12', '2019-11-30 14:30:12'),
(7, 'hai', 'hai@mail', NULL, '$2y$10$kdEwUUAY/rdDcFl24cvcGulMG908AsfJk3w7ACZhNk1q4IL3dyjsi', NULL, '2019-12-01 06:59:56', '2019-12-01 06:59:56'),
(8, 'Dindaa', 'dindaa@mail', NULL, '$2y$10$9RwpazMKzJ51IQSt6H2yveVCHfjDwWSCC37dCNdZg9uWcsLFz0HlO', NULL, '2019-12-01 22:52:30', '2019-12-01 22:52:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pemlan`
--
ALTER TABLE `pemlan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `FK_ID` (`id`),
  ADD KEY `FK_ID_BUKU` (`id_buku`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pemlan`
--
ALTER TABLE `pemlan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `FK_ID` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_ID_BUKU` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
