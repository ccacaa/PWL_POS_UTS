-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 23, 2024 at 07:51 AM
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
(13, '2024_09_11_032902_create_t_penjualan_detail_table', 9),
(14, '2024_10_22_080933_add_profile_picture_to_m_user_table', 10),
(15, '2024_10_22_123524_add_avatar_to_m_user_table', 11);

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
(1, 1, 'BD01', 'Tepung Terigu', 10000, 15000, NULL, '2024-10-22 19:43:14'),
(2, 1, 'BD02', 'Gula Pasir', 8000, 12000, NULL, NULL),
(3, 1, 'BD03', 'Telur', 2000, 3500, NULL, NULL),
(4, 2, 'BP01', 'Baking Powder', 15000, 25000, NULL, NULL),
(5, 2, 'BP02', 'Soda Kue', 10000, 15000, NULL, NULL),
(6, 2, 'BP03', 'Ragi', 12000, 18000, NULL, NULL),
(7, 3, 'BC01', 'Susu Cair', 12000, 18000, NULL, NULL),
(8, 3, 'BC02', 'Minyak Sayur', 10000, 15000, NULL, NULL),
(9, 3, 'BC03', 'Air', 1000, 2000, NULL, NULL),
(10, 4, 'BT01', 'Cokelat Bubuk', 30000, 45000, NULL, NULL),
(11, 4, 'BT02', 'Kacang Kenari', 40000, 60000, NULL, NULL),
(12, 4, 'BT03', 'Vanili', 20000, 30000, NULL, NULL),
(13, 5, 'BHI01', 'Sprinkles', 15000, 25000, NULL, NULL),
(14, 5, 'BHI02', 'Krim Kue', 20000, 30000, NULL, NULL),
(15, 5, 'BHI03', 'Buah Segar', 25000, 40000, NULL, NULL),
(16, 6, 'PM01', 'Mangkuk Adonan', 5000, 10000, NULL, NULL),
(17, 6, 'PM02', 'Spatula', 3000, 5000, NULL, NULL),
(18, 6, 'PM03', 'Timbangan Dapur', 50000, 80000, NULL, NULL),
(19, 7, 'PMG01', 'Loyang Kue', 20000, 30000, NULL, NULL),
(20, 7, 'PMG02', 'Oven', 1000000, 1500000, NULL, NULL),
(21, 7, 'RP03', 'Rak Pendingin', 150000, 250000, NULL, NULL),
(22, 8, 'AP01', 'Mixer', 500000, 750000, NULL, NULL),
(23, 8, 'AP02', 'Whisk', 15000, 25000, NULL, NULL),
(24, 8, 'AP03', 'Sendok Kayu', 5000, 10000, NULL, NULL);

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
(1, 'KBD', 'Bahan Dasar', NULL, '2024-10-22 06:57:03'),
(2, 'KBP', 'Bahan Pengembang', NULL, '2024-10-22 06:59:22'),
(3, 'KBC', 'Bahan Cair', NULL, '2024-10-22 06:59:37'),
(4, 'KBT', 'Bahan Tambahan', NULL, '2024-10-22 06:59:48'),
(5, 'BHI', 'Bahan Penghias', NULL, '2024-10-22 07:00:11'),
(6, 'KPM', 'Peralatan Memasak', NULL, '2024-10-22 07:00:35'),
(7, 'PMG', 'Peralatan Pemanggangan', NULL, '2024-10-22 07:01:09'),
(8, 'KAP', 'Alat Pengaduk', NULL, '2024-10-22 07:01:29');

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
(3, 'STF', 'Staff/Kasir', NULL, NULL);

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
(1, 'SUP01', 'PT Bogasari Flour Mills', 'Jakarta Utara', NULL, '2024-10-22 06:45:46'),
(2, 'SUP02', 'PT Sugar Group Companies', 'Provinsi Lampung', NULL, '2024-10-22 06:46:52'),
(3, 'SUP03', 'PT Upfield Manufacturing Indonesia', 'Cikarang Jawa Barat', NULL, '2024-10-22 06:49:27');

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
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`user_id`, `level_id`, `username`, `nama`, `password`, `avatar`, `created_at`, `updated_at`, `profile_picture`) VALUES
(1, 1, 'admin', 'admin', '$2y$12$vvoEuj66BGW7HQoETM8RQ.RFYKqj03U4tbNi3dTKf4KqdTcpemJ96', 'Pi5gb7IIBp9NHdxqdPNgbSwmguflilYBKTmDQeSs.png', NULL, '2024-10-22 12:45:19', 'profile_pictures/mZf7UK2uvGPywdYvo8K7LUhfgSGbzKuzMEWN2p6R.png'),
(2, 2, 'manager', 'Manager', '$2y$12$kJNi/sGO8WYvvRs8AZD2q.Tuf/KszDF/D3xNCySTXPtJVaDeMFmJG', NULL, NULL, '2024-10-22 05:14:23', NULL),
(3, 3, 'staff', 'Staff/Kasir', '$2y$12$MiQqudwbKFeCPIuKuVy5oe8hDG7dhS5DMOZWcLyBPTLeYdaTDWMfS', NULL, NULL, '2024-10-22 05:14:35', NULL),
(32, 1, 'adminca', 'caca', '$2y$12$Ufo/eaF1/uc/9OtNwM/1t.CcgPUnj04txXxQvcFsLHnWFAyVoSbku', 'VIyMetTocYtZA32ZOFCLtVkgznDD4E9QyEcl1gNS.jpg', '2024-10-22 16:55:31', '2024-10-22 17:13:58', NULL);

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
(1, 1, 'Budi Santoso', 'PNJ001', '2024-10-01 00:00:00', NULL, NULL),
(2, 2, 'Siti Aminah', 'PNJ002', '2024-10-02 00:00:00', NULL, NULL),
(3, 1, 'Andi Wijaya', 'PNJ003', '2024-10-03 00:00:00', NULL, NULL),
(4, 3, 'Dewi Lestari', 'PNJ004', '2024-10-04 00:00:00', NULL, NULL),
(5, 2, 'Faisal Rahman', 'PNJ005', '2024-10-05 00:00:00', NULL, NULL),
(6, 1, 'Rina Jaya', 'PNJ006', '2024-10-06 00:00:00', NULL, NULL),
(7, 3, 'Tina Fitri', 'PNJ007', '2024-10-07 00:00:00', NULL, NULL),
(8, 2, 'Iwan Setiawan', 'PNJ008', '2024-10-08 00:00:00', NULL, NULL),
(9, 1, 'Lina Malika', 'PNJ009', '2024-10-09 00:00:00', NULL, NULL),
(10, 3, 'Hendra Saputra', 'PNJ010', '2024-10-10 00:00:00', NULL, NULL);

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
(1, 1, 1, 10000, 2, NULL, NULL),
(2, 1, 2, 12000, 1, NULL, NULL),
(3, 2, 3, 3500, 6, NULL, NULL),
(4, 2, 4, 25000, 3, NULL, NULL),
(5, 3, 5, 15000, 4, NULL, NULL),
(6, 3, 6, 18000, 2, NULL, NULL),
(7, 4, 7, 18000, 1, NULL, NULL),
(8, 4, 8, 15000, 3, NULL, NULL),
(9, 5, 9, 2000, 10, NULL, NULL),
(10, 6, 10, 45000, 2, NULL, NULL),
(11, 6, 11, 60000, 1, NULL, NULL),
(12, 7, 12, 30000, 5, NULL, NULL),
(13, 8, 13, 25000, 4, NULL, NULL),
(14, 9, 14, 30000, 2, NULL, NULL),
(15, 10, 15, 40000, 1, NULL, NULL);

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
(1, 1, 1, 1, '2024-10-01 00:00:00', 100, NULL, NULL),
(2, 1, 2, 2, '2024-10-05 00:00:00', 150, NULL, NULL),
(3, 1, 3, 1, '2024-10-10 00:00:00', 200, NULL, NULL),
(4, 1, 4, 2, '2024-10-15 00:00:00', 75, NULL, NULL),
(5, 1, 5, 3, '2024-10-20 00:00:00', 60, NULL, NULL),
(6, 1, 6, 1, '2024-10-21 00:00:00', 90, NULL, NULL),
(7, 1, 7, 2, '2024-10-22 00:00:00', 120, NULL, NULL),
(8, 1, 8, 1, '2024-10-23 00:00:00', 150, NULL, NULL),
(10, 2, 10, 1, '2024-10-01 00:00:00', 90, NULL, '2024-10-22 12:29:46'),
(11, 2, 11, 2, '2024-10-05 00:00:00', 30, NULL, NULL),
(12, 2, 12, 1, '2024-10-10 00:00:00', 40, NULL, NULL),
(13, 2, 13, 2, '2024-10-15 00:00:00', 80, NULL, NULL),
(14, 2, 14, 3, '2024-10-20 00:00:00', 60, NULL, NULL),
(15, 2, 15, 1, '2024-10-21 00:00:00', 100, NULL, NULL),
(16, 2, 16, 2, '2024-10-22 00:00:00', 70, NULL, NULL),
(17, 2, 17, 1, '2024-10-23 00:00:00', 40, NULL, NULL),
(18, 3, 18, 3, '2024-10-24 00:00:00', 50, NULL, NULL),
(19, 3, 19, 1, '2024-10-01 00:00:00', 30, NULL, NULL),
(20, 3, 20, 2, '2024-10-05 00:00:00', 10, NULL, NULL),
(21, 3, 21, 1, '2024-10-10 00:00:00', 5, NULL, NULL),
(22, 3, 22, 2, '2024-10-15 00:00:00', 20, NULL, NULL),
(23, 3, 23, 3, '2024-10-20 00:00:00', 60, NULL, NULL),
(24, 3, 24, 1, '2024-10-21 00:00:00', 80, NULL, NULL),
(25, 1, 1, 1, '2024-10-12 02:30:00', 10, '2024-10-22 12:30:28', '2024-10-22 12:30:28');

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `m_barang`
--
ALTER TABLE `m_barang`
  MODIFY `barang_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `kategori_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `m_level`
--
ALTER TABLE `m_level`
  MODIFY `level_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `m_supplier`
--
ALTER TABLE `m_supplier`
  MODIFY `supplier_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  MODIFY `penjualan_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  MODIFY `detail_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `t_stok`
--
ALTER TABLE `t_stok`
  MODIFY `stok_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
