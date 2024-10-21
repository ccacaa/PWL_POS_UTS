-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2024 at 02:18 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwl_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_11_021051_create_m_level_table', 2),
(6, '2024_09_11_021830_create_m_kategori_table', 3),
(7, '2024_09_11_023114_create_m_supplier_table', 4),
(8, '2024_09_11_024333_create_m_user_table', 5),
(9, '2024_09_11_025904_create_m_barang_table', 6),
(10, '2024_09_11_030453_create_t_penjualan_table', 7),
(11, '2024_09_11_031557_create_t_stok_table', 8),
(12, '2024_09_11_031625_create_t_penjualan_detai_table', 8),
(13, '2024_09_11_032902_create_t_penjualan_detail_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `m_barang`
--

CREATE TABLE `m_barang` (
  `barang_id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `barang_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_jual` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_barang`
--

INSERT INTO `m_barang` (`barang_id`, `kategori_id`, `barang_kode`, `barang_nama`, `harga_beli`, `harga_jual`, `created_at`, `updated_at`) VALUES
(1, 2, 'ELC0001KB', 'kabel', 10000, 25000, NULL, NULL),
(2, 2, 'ELC0002OL', 'oven listrik', 550000, 700000, NULL, NULL),
(3, 2, 'ELC0003HP', 'handphone', 5000000, 5500000, NULL, NULL),
(4, 2, 'ELC0004LP', 'laptop', 14000000, 14500000, NULL, NULL),
(5, 2, 'ELC0005MS', 'mouse', 85000, 100000, NULL, NULL),
(6, 1, 'RT0001KR', 'kursi', 75000, 90000, NULL, NULL),
(7, 1, 'RT0002MJ', 'meja', 70000, 85000, NULL, NULL),
(8, 1, 'RT0003TF', 'teflon', 40000, 55000, NULL, NULL),
(9, 1, 'RT0004KM', 'kompor', 150000, 175000, NULL, NULL),
(10, 1, 'RT0005SP', 'sapu', 20000, 35000, NULL, NULL),
(11, 5, 'PKN0001KMJ', 'kemeja', 100000, 150000, NULL, NULL),
(12, 5, 'PKN0002CLN', 'celana', 120000, 135000, NULL, NULL),
(13, 5, 'PKN0003JK', 'jaket', 250000, 270000, NULL, NULL),
(14, 5, 'PKN0004HJ', 'hijab', 25000, 40000, NULL, NULL),
(15, 5, 'PKN0002MKN', 'mukena', 100000, 115000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori`
--

CREATE TABLE `m_kategori` (
  `kategori_id` bigint UNSIGNED NOT NULL,
  `kategori_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_kategori`
--

INSERT INTO `m_kategori` (`kategori_id`, `kategori_kode`, `kategori_nama`, `created_at`, `updated_at`) VALUES
(1, 'RT', 'perabotan rumah tangga', NULL, NULL),
(2, 'ELC', 'elektonik', NULL, NULL),
(3, 'SNC', 'makanan dan minuman', NULL, NULL),
(4, 'ATK', 'alat tulis', NULL, NULL),
(5, 'PKN', 'pakaian', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_level`
--

CREATE TABLE `m_level` (
  `level_id` bigint UNSIGNED NOT NULL,
  `level_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_level`
--

INSERT INTO `m_level` (`level_id`, `level_kode`, `level_nama`, `created_at`, `updated_at`) VALUES
(1, 'ADM', 'Administrator', NULL, NULL),
(2, 'MNG', 'Manager', NULL, NULL),
(3, 'STF', 'Staff/Kasir', NULL, NULL),
(4, 'CST', 'customer', NULL, '2024-10-15 09:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `m_supplier`
--

CREATE TABLE `m_supplier` (
  `supplier_id` bigint UNSIGNED NOT NULL,
  `supplier_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_supplier`
--

INSERT INTO `m_supplier` (`supplier_id`, `supplier_kode`, `supplier_nama`, `supplier_alamat`, `created_at`, `updated_at`) VALUES
(1, 'SUP0001', 'pt elektro makmur', 'madiun', NULL, NULL),
(2, 'SUP0002', 'pt perabot nusantara', 'magelang', NULL, NULL),
(3, 'SUP0003', 'pt garment solo', 'solo', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `user_id` bigint UNSIGNED NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`user_id`, `level_id`, `username`, `nama`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin1', '$2y$12$vW6j0wo0ZwmOHxZeyJitee2mYytKG5iFYq85VGguKXCixJrXStqnS', NULL, '2024-10-15 09:17:57'),
(2, 2, 'manager', 'Manager', '$2y$12$yc5Z.bDI9sOst2W7h2NsCuedwBA2Q5PQLAzpDvmfpP3RNuTwnWYv.', NULL, '2024-10-15 09:18:13'),
(3, 3, 'staff', 'Staff/Kasir', '$2y$12$NzPF4KwompCWCDd2zVm8TOx4Br0d5N0DXtY4EFeuV7NVeoo07gjT.', NULL, '2024-10-15 09:20:07'),
(16, 2, 'manager_dua', 'Manager 2', '$2y$12$yXPYbMOUjUepdg3H8Aq/uex9anXxV9iGcccKqUJm5oK482ubvh/Tu', '2024-09-17 18:45:26', '2024-09-17 18:45:26'),
(17, 2, 'manager22', 'Manager Dua Dua', '$2y$12$lnG2WptbzmaNUfr5olmI6OSdo3CN4/djZHnvQQFTQZlL/tK1BhUWC', '2024-09-17 20:25:56', '2024-09-17 20:25:56'),
(18, 2, 'manager33', 'Manager Tiga Tiga', '$2y$12$gMhdf2srIpqbo/31YaYUAOUW6B5BeYnXk8LHaFSaWP13vuA3QrWSe', '2024-09-17 20:34:21', '2024-09-17 20:34:21'),
(20, 2, 'manager55', 'Manager55', '$2y$12$raNpfXDLmibXZYFYzOIcEeb7lGwUQ3Rc/xZMubSWqroQ9JwQ1oeUy', '2024-09-18 20:58:54', '2024-09-18 20:58:54'),
(21, 2, 'manager12', 'Manager11', '$2y$12$.LJ.lK1BzOp3McnZn0X0TON.m9uBHB6uNl/JeKqePinPlVheXAAZ2', '2024-09-18 21:05:10', '2024-09-18 21:05:10'),
(28, 4, 'cacacust', 'caca', '$2y$12$H9fyld9ikGKe/L7FjUThxO3DGFuSdmDkKRsSRNcYy3Bk5b2wguurq', '2024-10-08 19:48:14', '2024-10-08 19:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan`
--

CREATE TABLE `t_penjualan` (
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `pembeli` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_kode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualan`
--

INSERT INTO `t_penjualan` (`penjualan_id`, `user_id`, `pembeli`, `penjualan_kode`, `penjualan_tanggal`, `created_at`, `updated_at`) VALUES
(1, 2, 'Arnulfo Pouros', 'PNJ1', '2024-09-14 00:00:00', NULL, NULL),
(2, 1, 'Alexandrine Collier', 'PNJ2', '2024-09-14 00:00:00', NULL, NULL),
(3, 1, 'Ms. Orie Kuhlman IV', 'PNJ3', '2024-09-14 00:00:00', NULL, NULL),
(4, 1, 'Otilia Murazik', 'PNJ4', '2024-09-14 00:00:00', NULL, NULL),
(5, 1, 'Isadore Schiller', 'PNJ5', '2024-09-14 00:00:00', NULL, NULL),
(6, 2, 'Alexanne Gaylord', 'PNJ6', '2024-09-14 00:00:00', NULL, NULL),
(7, 2, 'Verla Monahan', 'PNJ7', '2024-09-14 00:00:00', NULL, NULL),
(8, 3, 'Dr. Ellis Farrell I', 'PNJ8', '2024-09-14 00:00:00', NULL, NULL),
(9, 3, 'Tyree Mosciski', 'PNJ9', '2024-09-14 00:00:00', NULL, NULL),
(10, 3, 'Ashlynn Frami', 'PNJ10', '2024-09-14 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan_detail`
--

CREATE TABLE `t_penjualan_detail` (
  `detail_id` bigint UNSIGNED NOT NULL,
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `harga` int NOT NULL,
  `jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualan_detail`
--

INSERT INTO `t_penjualan_detail` (`detail_id`, `penjualan_id`, `barang_id`, `harga`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 25000, 9, NULL, NULL),
(2, 1, 2, 700000, 6, NULL, NULL),
(3, 1, 3, 8000000, 4, NULL, NULL),
(4, 2, 2, 5500000, 5, NULL, NULL),
(5, 2, 4, 14500000, 2, NULL, NULL),
(6, 2, 6, 90000, 4, NULL, NULL),
(7, 3, 2, 700000, 8, NULL, NULL),
(8, 3, 9, 175000, 1, NULL, NULL),
(9, 3, 12, 130000, 9, NULL, NULL),
(10, 4, 2, 700000, 8, NULL, NULL),
(11, 4, 10, 35000, 2, NULL, NULL),
(12, 4, 14, 40000, 1, NULL, NULL),
(13, 5, 4, 40000, 8, NULL, NULL),
(14, 5, 3, 5500000, 4, NULL, NULL),
(15, 5, 10, 35000, 5, NULL, NULL),
(16, 6, 11, 150000, 8, NULL, NULL),
(17, 6, 15, 11500, 6, NULL, NULL),
(18, 6, 13, 270000, 2, NULL, NULL),
(19, 7, 14, 40000, 7, NULL, NULL),
(20, 7, 2, 700000, 4, NULL, NULL),
(21, 7, 9, 175000, 8, NULL, NULL),
(22, 8, 8, 55000, 4, NULL, NULL),
(23, 8, 12, 135000, 8, NULL, NULL),
(24, 8, 6, 90000, 5, NULL, NULL),
(25, 9, 10, 35000, 3, NULL, NULL),
(26, 9, 11, 150000, 8, NULL, NULL),
(27, 9, 15, 115000, 2, NULL, NULL),
(28, 10, 12, 135000, 3, NULL, NULL),
(29, 10, 15, 115000, 9, NULL, NULL),
(30, 10, 2, 700000, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_stok`
--

CREATE TABLE `t_stok` (
  `stok_id` bigint UNSIGNED NOT NULL,
  `supplier_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `stok_tanggal` datetime NOT NULL,
  `stok_jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_stok`
--

INSERT INTO `t_stok` (`stok_id`, `supplier_id`, `barang_id`, `user_id`, `stok_tanggal`, `stok_jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-09-14 00:00:00', 3, NULL, NULL),
(2, 1, 2, 1, '2024-09-14 00:00:00', 3, NULL, NULL),
(3, 1, 3, 1, '2024-09-14 00:00:00', 6, NULL, NULL),
(4, 1, 4, 1, '2024-09-14 00:00:00', 8, NULL, NULL),
(5, 1, 5, 2, '2024-09-14 00:00:00', 4, NULL, NULL),
(6, 1, 6, 2, '2024-09-14 00:00:00', 5, NULL, NULL),
(7, 1, 7, 2, '2024-09-14 00:00:00', 6, NULL, NULL),
(8, 1, 8, 2, '2024-09-14 00:00:00', 7, NULL, NULL),
(9, 1, 9, 2, '2024-09-14 00:00:00', 9, NULL, NULL),
(10, 1, 10, 2, '2024-09-14 00:00:00', 5, NULL, NULL),
(11, 1, 11, 3, '2024-09-14 00:00:00', 4, NULL, NULL),
(12, 1, 12, 3, '2024-09-14 00:00:00', 5, NULL, NULL),
(13, 1, 13, 3, '2024-09-14 00:00:00', 3, NULL, NULL),
(14, 1, 14, 3, '2024-09-14 00:00:00', 4, NULL, NULL),
(15, 1, 15, 3, '2024-09-14 00:00:00', 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD UNIQUE KEY `m_barang_barang_kode_unique` (`barang_kode`),
  ADD KEY `m_barang_kategori_id_index` (`kategori_id`);

--
-- Indexes for table `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD PRIMARY KEY (`kategori_id`),
  ADD UNIQUE KEY `m_kategori_kategori_kode_unique` (`kategori_kode`);

--
-- Indexes for table `m_level`
--
ALTER TABLE `m_level`
  ADD PRIMARY KEY (`level_id`),
  ADD UNIQUE KEY `m_level_level_kode_unique` (`level_kode`);

--
-- Indexes for table `m_supplier`
--
ALTER TABLE `m_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `m_supplier_supplier_kode_unique` (`supplier_kode`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `m_user_username_unique` (`username`),
  ADD KEY `m_user_level_id_index` (`level_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD PRIMARY KEY (`penjualan_id`),
  ADD UNIQUE KEY `t_penjualan_penjualan_kode_unique` (`penjualan_kode`),
  ADD KEY `t_penjualan_user_id_index` (`user_id`);

--
-- Indexes for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `t_penjualan_detail_penjualan_id_index` (`penjualan_id`),
  ADD KEY `t_penjualan_detail_barang_id_index` (`barang_id`);

--
-- Indexes for table `t_stok`
--
ALTER TABLE `t_stok`
  ADD PRIMARY KEY (`stok_id`),
  ADD KEY `t_stok_supplier_id_index` (`supplier_id`),
  ADD KEY `t_stok_barang_id_index` (`barang_id`),
  ADD KEY `t_stok_user_id_index` (`user_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `m_barang`
--
ALTER TABLE `m_barang`
  MODIFY `barang_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `kategori_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `m_level`
--
ALTER TABLE `m_level`
  MODIFY `level_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `m_supplier`
--
ALTER TABLE `m_supplier`
  MODIFY `supplier_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  MODIFY `penjualan_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  MODIFY `detail_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `t_stok`
--
ALTER TABLE `t_stok`
  MODIFY `stok_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD CONSTRAINT `m_barang_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `m_kategori` (`kategori_id`);

--
-- Constraints for table `m_user`
--
ALTER TABLE `m_user`
  ADD CONSTRAINT `m_user_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `m_level` (`level_id`);

--
-- Constraints for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD CONSTRAINT `t_penjualan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);

--
-- Constraints for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD CONSTRAINT `t_penjualan_detail_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_penjualan_detail_penjualan_id_foreign` FOREIGN KEY (`penjualan_id`) REFERENCES `t_penjualan` (`penjualan_id`);

--
-- Constraints for table `t_stok`
--
ALTER TABLE `t_stok`
  ADD CONSTRAINT `t_stok_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_stok_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `m_supplier` (`supplier_id`),
  ADD CONSTRAINT `t_stok_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
