-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2023 at 11:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fund_obligations`
--

CREATE TABLE `fund_obligations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Project_Key` varchar(15) DEFAULT NULL,
  `Obligation_Date` date DEFAULT NULL,
  `Fund_Obligated` double DEFAULT NULL,
  `Fund_Obligation_Key` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fund_obligations`
--

INSERT INTO `fund_obligations` (`id`, `Project_Key`, `Obligation_Date`, `Fund_Obligated`, `Fund_Obligation_Key`, `created_at`, `updated_at`) VALUES
(2, 'BAC 1', '2023-08-13', 121212, 'FO_2', '2023-08-17 04:37:38', '2023-08-17 04:37:38'),
(3, 'BAC 1', '2023-08-13', 9090, 'FO_3', '2023-08-17 04:38:15', '2023-08-17 04:38:15'),
(4, 'BAC 2', '2023-08-13', 7878878, 'FO_4', '2023-08-17 04:38:36', '2023-08-17 04:38:36'),
(5, 'BAC 2', '2023-08-13', 6776767, 'FO_5', '2023-08-17 04:56:28', '2023-08-17 04:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_08_08_021721_create_products_table', 1),
(14, '2023_08_14_080816_create_projects_table', 2),
(17, '2023_08_16_064833_create_transactions_table', 3),
(19, '2023_08_16_084814_create_fund_obligations_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0caec14ff3008bf3351847714acdf83d72a220669dff332bba2f3626736bad72f66d69bbda619dfa', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-13 15:58:49', '2023-08-13 15:58:49', '2024-08-13 23:58:49'),
('1877225320c53e8299ce687349333f2a07a3d553fbdfc3a070f04477f05669933fa68bf888a193b1', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-08 15:46:03', '2023-08-08 15:46:03', '2024-08-08 23:46:03'),
('282490f6065df2606d1d2e1f0400852c07e194c6c83be5b6cf34c5c6fff1a9ddac6fa0b0c2b49348', 13, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-08 01:10:08', '2023-08-08 01:10:08', '2024-08-08 09:10:08'),
('37add5f2561a98fd5abdf6ea9f8362724d1cfbeec17f507c6b1104b20524837e10bfb52221df2cb8', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-08 16:07:49', '2023-08-08 16:07:49', '2024-08-09 00:07:49'),
('760acdefec6873ecbae7dfc6ae45ec2346f4d96d0322fe14605336423a182ed87d8b2df07f869198', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-08 01:12:40', '2023-08-08 01:12:40', '2024-08-08 09:12:40'),
('76f807e736a636668d6c896a6a2e080d0645f817a1f4326d00f698ac0a880b72fbab68e01ec464fc', 15, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-08 16:08:28', '2023-08-08 16:08:28', '2024-08-09 00:08:28'),
('8a81376c3f04b482dabb3774d216888292025b2ab1446ee5ad1e4568e4955526f57c2e8683a191ac', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-13 15:55:06', '2023-08-13 15:55:06', '2024-08-13 23:55:06'),
('8e31fd8af544e7b6ff2f1b0bde55dd713ee3644b58e79aaf23ad06a573269b16b77fd26f91b2f2d1', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-13 23:48:00', '2023-08-13 23:48:00', '2024-08-14 07:48:00'),
('9a6aee0f029e33acae4ff447d20faef038b1d5fbc00f5ff8a1dae652327e95fd68de5ecbb165f8a5', 9, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-08 00:48:17', '2023-08-08 00:48:17', '2024-08-08 08:48:17'),
('a27d86872f3aa98019f7553e1d3efefa9c50a984a43a471bf8344831d82ea90ae4fbe1166f7bb85d', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-13 23:23:02', '2023-08-13 23:23:02', '2024-08-14 07:23:02'),
('aa1e3b3171ab2b0f3912f0f00144a4d9f66a959a16453f8eedc9fc8ade73edf1727b12798f875433', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-08 15:45:54', '2023-08-08 15:45:54', '2024-08-08 23:45:54'),
('b7b1f45e1ecb235b7409467c8b37d49f491260f20c381a45c14fba08036701a521748a8d39a96648', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-13 19:05:19', '2023-08-13 19:05:19', '2024-08-14 03:05:19'),
('bcb8f6a7df79b9d7876b38243a444f8a41bc6756d973032ebf76f486bdd0c612ca8342869c2b4090', 12, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-08 01:09:07', '2023-08-08 01:09:07', '2024-08-08 09:09:07'),
('be9e9e28c697f7b21991347dbc243f189fa8b3122f308cfa36a0b36d9cf43f7a595dbe6dd149b83a', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-08 22:21:52', '2023-08-08 22:21:53', '2024-08-09 06:21:52'),
('c04d7d32b38af5c2517c2a33accca32d68539d501c4f03ccb6e1212b8d9acbc9724178ac70a002cc', 10, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-08 01:08:40', '2023-08-08 01:08:40', '2024-08-08 09:08:40'),
('dc4e033cd9033a9ad9ec89335df7e8921518aa2bf49a6905afd586b2ffad09ba06d4b9ba1639947d', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-08 15:45:31', '2023-08-08 15:45:31', '2024-08-08 23:45:31'),
('df986ae97704f276265c4d9d5582a90ee8c1c15447cdc9b978c20d6bc18b09146bce04da4cbe065b', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-08 01:16:20', '2023-08-08 01:16:20', '2024-08-08 09:16:20'),
('f38a828306767e6b15889db719a7f3531ade88e77f6b69071711932e0f87c3aae775980d1f4757f5', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-14 03:33:51', '2023-08-14 03:33:51', '2024-08-14 11:33:51'),
('fa46dc04690a1c672165cce6a20b1c1372209919677586d0d238d8adbfdac9c71de8d7710825a891', 15, 1, 'Laravel8PassportAuth', '[]', 1, '2023-08-08 16:09:07', '2023-08-08 22:22:31', '2024-08-09 00:09:07'),
('fdabf626f7637774f29787a54bc4f957c5f38567656e48552ae70e6c1ba225784db6ce91f983c88b', 14, 1, 'Laravel8PassportAuth', '[]', 0, '2023-08-13 15:38:49', '2023-08-13 15:38:50', '2024-08-13 23:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'qd521pPp21cLvNqWaJfXPwe004FpH5yc9PmXAVTo', NULL, 'http://localhost', 1, 0, 0, '2023-08-08 00:45:45', '2023-08-08 00:45:45'),
(2, NULL, 'Laravel Password Grant Client', 'h5cFV4loTNxtZ82HDDHL5ifEmUndC0BkSJe8W8m6', 'users', 'http://localhost', 0, 1, 0, '2023-08-08 00:45:45', '2023-08-08 00:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-08-08 00:45:45', '2023-08-08 00:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(2, 'edited product 2', 'detail 2', '2023-08-08 14:55:19', '2023-08-08 18:27:33'),
(3, 'product 3', 'detail 3', '2023-08-08 15:19:59', '2023-08-08 15:19:59'),
(4, 'product 3', 'detail 3', '2023-08-08 22:37:33', '2023-08-08 22:37:33'),
(5, 'product 3', 'detail 3', '2023-08-13 15:56:25', '2023-08-13 15:56:25'),
(6, 'product 3', 'detail 3', '2023-08-13 23:48:12', '2023-08-13 23:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `BAC_Value` varchar(15) DEFAULT NULL,
  `Project_Desc` varchar(200) DEFAULT NULL,
  `Project_Allocation` double DEFAULT NULL,
  `Project_Key` varchar(15) DEFAULT NULL,
  `Created_By` varchar(30) DEFAULT NULL,
  `Date_Created` date NOT NULL DEFAULT curdate(),
  `Project_Fund_Obligated` double DEFAULT NULL,
  `Project_Balance` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `BAC_Value`, `Project_Desc`, `Project_Allocation`, `Project_Key`, `Created_By`, `Date_Created`, `Project_Fund_Obligated`, `Project_Balance`, `created_at`, `updated_at`) VALUES
(1, 'BAC_1', 'Edited Description 90', 1234, 'BAC_1', 'Edited Creator', '2023-08-15', 2000, 9000, '2023-08-14 23:43:57', '2023-08-15 00:23:25'),
(2, 'BAC_2', 'project description 2', 1234, 'BAC_2', 'sample creator', '2023-08-15', 1000, 9000, '2023-08-14 23:45:50', '2023-08-14 23:45:50'),
(3, 'BAC_3', 'project description 3', 1234, 'BAC_3', 'sample creator', '2023-08-15', 1000, 9000, '2023-08-15 00:27:16', '2023-08-15 00:27:16'),
(5, 'BAC_4', 'project description 5', 1234, 'BAC_4', 'sample creator', '2023-08-16', 1000, 9000, '2023-08-15 22:00:20', '2023-08-15 22:00:20'),
(6, 'BAC_6', 'project description 5', 1234, 'BAC_6', 'sample creator', '2023-08-16', 1000, 9000, '2023-08-15 22:21:59', '2023-08-15 22:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `sample`
--

CREATE TABLE `sample` (
  `id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sample`
--

INSERT INTO `sample` (`id`, `age`, `name`) VALUES
(1, 1, 'sam1'),
(6, 2, 'sam2');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TTN_Value` varchar(15) DEFAULT NULL,
  `Transaction_Key` varchar(15) DEFAULT NULL,
  `Transaction_Subject` varchar(200) DEFAULT NULL,
  `Transaction_Allocation` double DEFAULT NULL,
  `Created_By` varchar(30) DEFAULT NULL,
  `Date_Created` date NOT NULL DEFAULT curdate(),
  `Project_Key` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `TTN_Value`, `Transaction_Key`, `Transaction_Subject`, `Transaction_Allocation`, `Created_By`, `Date_Created`, `Project_Key`, `created_at`, `updated_at`) VALUES
(1, 'TTN_1', 'TTN_1', 'subject 1', 12342, 'sample creator 1', '2023-08-16', 'BAC_1', '2023-08-16 00:00:54', '2023-08-16 00:00:54'),
(2, 'TTN_2', 'TTN_2', 'subject 2', 12342, 'sample creator 2', '2023-08-16', 'BAC_1', '2023-08-16 00:01:03', '2023-08-16 00:01:03'),
(3, 'TTN_3', 'TTN_3', 'subject 3', 12342, 'sample creator 3', '2023-08-16', 'BAC_1', '2023-08-16 00:01:12', '2023-08-16 00:01:12'),
(4, 'TTN_4', 'TTN_4', 'subject 4', 12342, 'sample creator 4', '2023-08-16', 'BAC_3', '2023-08-16 00:05:25', '2023-08-16 00:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(14, 'admin admin', 'admin@gmail.com', NULL, '$2y$10$davACAIv5bgI3j2EoitQVeLVLd2ZGcxh5Y2Lvl5JsgidcZH07lFQC', NULL, '2023-08-08 01:12:40', '2023-08-08 01:12:40'),
(15, 'admin admin1', 'admin1@gmail.com', NULL, '$2y$10$.BXKrQeygg0FoKkuGHYzTu9BUfCGLTuGotPQpSFCw2bgFAS6JPbYa', NULL, '2023-08-08 16:08:28', '2023-08-08 16:08:28');

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
-- Indexes for table `fund_obligations`
--
ALTER TABLE `fund_obligations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fund_obligations_fund_obligation_key_unique` (`Fund_Obligation_Key`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_bac_value_unique` (`BAC_Value`),
  ADD UNIQUE KEY `projects_project_key_unique` (`Project_Key`);

--
-- Indexes for table `sample`
--
ALTER TABLE `sample`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `age` (`age`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_ttn_value_unique` (`TTN_Value`),
  ADD UNIQUE KEY `transactions_transaction_key_unique` (`Transaction_Key`);

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
-- AUTO_INCREMENT for table `fund_obligations`
--
ALTER TABLE `fund_obligations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sample`
--
ALTER TABLE `sample`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
