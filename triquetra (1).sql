-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 08:01 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `triquetra`
--

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
-- Table structure for table `klub`
--

CREATE TABLE `klub` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `klub` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `klub`
--

INSERT INTO `klub` (`id`, `logo`, `klub`, `kota`, `created_at`, `updated_at`) VALUES
(5, 'logo_arema.svg', 'Arema Malang', 'Malang', '2023-03-06 05:10:11', '2023-03-06 20:43:29'),
(6, '', 'Bhayangkara FC', 'Jakarta', '2023-03-06 05:10:36', '2023-03-06 05:10:36'),
(7, '', 'Bali United FC', 'Bali', '2023-03-06 05:10:48', '2023-03-06 05:10:48'),
(8, '', 'Borneo FC', 'Samarinda', '2023-03-06 05:11:07', '2023-03-06 05:11:07'),
(9, '', 'Barito Putera', 'Banjarmasin', '2023-03-06 05:13:27', '2023-03-06 05:13:27'),
(10, '', 'Dewa United', 'Tangerang', '2023-03-06 05:13:54', '2023-03-06 05:13:54'),
(11, '', 'Madura United', 'Madura', '2023-03-06 05:14:31', '2023-03-06 05:14:31'),
(13, '', 'Persebaya', 'Surabaya', '2023-03-06 05:15:46', '2023-03-06 05:15:46'),
(14, '', 'Persib', 'Bandung', '2023-03-06 05:15:56', '2023-03-06 05:29:35'),
(15, '', 'Persija', 'Jakarta', '2023-03-06 05:16:14', '2023-03-06 05:16:14'),
(16, '', 'Persikabo 1973', 'Bogor', '2023-03-06 05:17:28', '2023-03-06 05:17:28'),
(17, '', 'Persita', 'Tangerang', '2023-03-06 05:17:46', '2023-03-06 05:17:46'),
(18, '', 'Persik', 'Kediri', '2023-03-06 05:18:07', '2023-03-06 05:18:07'),
(19, '', 'Persis', 'Solo', '2023-03-06 05:18:38', '2023-03-06 05:18:38'),
(20, '', 'PSIS', 'Semarang', '2023-03-06 05:18:48', '2023-03-06 05:18:48'),
(21, '', 'PSM', 'Makassar', '2023-03-06 05:19:13', '2023-03-06 05:19:13'),
(22, '', 'PSS', 'Sleman', '2023-03-06 05:19:39', '2023-03-06 05:19:39'),
(23, '', 'RANS Nusantara FC', 'Tangerang', '2023-03-06 05:20:33', '2023-03-06 05:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `kompetisi`
--

CREATE TABLE `kompetisi` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kompetisi`
--

INSERT INTO `kompetisi` (`id`, `kode`, `created_at`, `update_at`) VALUES
(1, 'MA', '2023-03-07 06:02:40', '2023-03-07 07:01:26'),
(2, 'ME', '2023-03-07 06:02:40', '2023-03-07 07:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `kompetisi_klub`
--

CREATE TABLE `kompetisi_klub` (
  `id` int(11) NOT NULL,
  `klub_id` int(11) NOT NULL,
  `kompetisi_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kompetisi_klub`
--

INSERT INTO `kompetisi_klub` (`id`, `klub_id`, `kompetisi_id`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 20, '2023-03-07 06:08:32', '2023-03-07 07:06:46'),
(2, 6, 1, 20, '2023-03-07 06:08:32', '2023-03-07 07:06:46');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_03_06_095723_create_klub_table', 1);

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
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `klub_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', 'admin', 'admintriquetra@gmail.com', NULL, '$2y$10$BW.omvBbBpttQeZjgwf1i.TJed3fMTM80MRWDzeJzwDo7/rBnF12O', 'MpOYnY7ntRxDzloATB36enzc82Vv9JCqCBjXz5f1ATz2EsfiLRAj7n3KeQWr', '2023-03-06 18:35:42', '2023-03-06 18:35:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klub`
--
ALTER TABLE `klub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kompetisi`
--
ALTER TABLE `kompetisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kompetisi_klub`
--
ALTER TABLE `kompetisi_klub`
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
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `klub`
--
ALTER TABLE `klub`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `kompetisi`
--
ALTER TABLE `kompetisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kompetisi_klub`
--
ALTER TABLE `kompetisi_klub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
