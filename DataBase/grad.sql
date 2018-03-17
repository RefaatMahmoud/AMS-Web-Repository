-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2018 at 01:55 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grad`
--

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `username`, `password`, `email`, `telephone`, `subjectName`, `created_at`, `updated_at`) VALUES
(1, 'Ara Barton', 'yasmine70', '$2y$10$HNCIWgLvi5hZYGeLd.dD6.PoyYVXnhF9QltnbShr2EBUrLwxUA5FG', 'vharris@example.com', '290.504.5773', 'Medical tools', '2018-03-17 07:55:09', '2018-03-17 07:55:09'),
(2, 'Mrs. Meta Funk', 'everette.heidenreich', '$2y$10$tdZ7OWsinJN6EQ5V/XyA/u.ghK/OHgwgvtmrwM5zy4JG7cKuMlxxu', 'oblanda@example.org', '1-935-295-9603', 'physics', '2018-03-17 07:55:09', '2018-03-17 07:55:09'),
(3, 'Weston O\'Kon', 'cleo06', '$2y$10$s.2F4pcul5rnnRbRXYO4u.OwdzNg0rCMw6s7tGDzMf73xP4TegNAq', 'schoen.kathlyn@example.com', '+1-803-536-4447', 'physics', '2018-03-17 07:55:09', '2018-03-17 07:55:09'),
(4, 'Alia Hickle Sr.', 'ulabadie', '$2y$10$v0c0K0HdMqTmOb5qpPcRfu1kYVbSPcX43U/vLoUE6KIJDpNIX2U.u', 'snader@example.net', '1-212-447-7745', 'physics', '2018-03-17 07:55:09', '2018-03-17 07:55:09'),
(5, 'Tabitha Schneider', 'kschultz', '$2y$10$SdznDwOD95rKWnTt210dvOYvfLSLGIbpV0fJQBjmYI4x41VKAaYp2', 'general02@example.com', '660.465.0750', 'Math', '2018-03-17 07:55:09', '2018-03-17 07:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2018_03_16_223157_create_student_models_table', 1),
(16, '2018_03_16_234828_create_instructors_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_models`
--

CREATE TABLE `student_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_models`
--

INSERT INTO `student_models` (`id`, `name`, `username`, `password`, `email`, `telephone`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Pink VonRueden I', 'ndeckow', '$2y$10$mKAP4PCmeqZOnGKIjFQc2.LItP3XISjHhgPt1iXd10Xmbrs4Aj4ne', 'evan.mitchell@example.net', '802-319-8207 x10554', 'third', '2018-03-17 07:55:08', '2018-03-17 07:55:08'),
(2, 'Sherman Nienow', 'hillard.glover', '$2y$10$bFxCtZRxTejV09uSld7MReOVt5FfxYa9rJY7UJDBFpiu8ew.fpU1K', 'reinhold23@example.com', '+1-539-282-8894', 'third', '2018-03-17 07:55:08', '2018-03-17 07:55:08'),
(3, 'Alfonso Eichmann', 'orn.elyssa', '$2y$10$GM7AjSaTo62U0bgLX0sGseVWbGp9d3wFStu.6.pcWxAwKd7dCUKEq', 'sondricka@example.org', '1-208-635-5992 x34623', 'second', '2018-03-17 07:55:08', '2018-03-17 07:55:08'),
(4, 'Dangelo Klein', 'marquise.crist', '$2y$10$u1Meu1Mw6RpEDytBGXlj1.hEDgxANr4XN8ueIPxL65voJiLq7uOY.', 'epredovic@example.net', '954.424.8118 x74080', 'first', '2018-03-17 07:55:08', '2018-03-17 07:55:08'),
(5, 'Sophia Paucek', 'feeney.taylor', '$2y$10$UE1InjJ24mHyjoVvoZDg3O7nU3otHSgBKC9wU1jPgN7v7IYeDgdca', 'crenner@example.org', '(535) 887-4038 x71491', 'third', '2018-03-17 07:55:08', '2018-03-17 07:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Josue Bernier', 'hwiza', 'goodwin.lempi@example.com', '$2y$10$9lz3TTUdCGqnP4FNeIr6EeuU99ezfTvVLjb80j..flM4cw4Kb/LtG', 'mYupQlbtl2', '2018-03-17 07:55:08', '2018-03-17 07:55:08'),
(2, 'Ophelia Robel', 'parisian.kristoffer', 'glover.anthony@example.org', '$2y$10$Z7KW/lMpTCqRQbUy5My1gOTYjuyoMS3/UV0PJTaygdtMmYruMc1si', 'PNMWkRODTX', '2018-03-17 07:55:08', '2018-03-17 07:55:08'),
(3, 'Harmony Pacocha', 'isaac05', 'kbeatty@example.com', '$2y$10$YhtGGm.lWyRFY1nGrIM5fO7yfwVQX1eOsTX.czmpx9nBvHEh.iQXG', 'DAfBKFtT8a', '2018-03-17 07:55:08', '2018-03-17 07:55:08'),
(4, 'Davion Balistreri Sr.', 'lacey.turcotte', 'nhickle@example.org', '$2y$10$ip6qYg8.DkCSiiOnumvHju52ej1yYMoB980tvqGEeo4qZX1OUABkO', 'Be8jv4qGml', '2018-03-17 07:55:08', '2018-03-17 07:55:08'),
(5, 'Muriel Boyer', 'lang.athena', 'tatum30@example.com', '$2y$10$1maFV37C523UtgdfAYcdXewO20.XD/LSBKgBsq0CJPMl8.NQZu6Ry', '8KOtcIu4ck', '2018-03-17 07:55:08', '2018-03-17 07:55:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructors_username_unique` (`username`);

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
-- Indexes for table `student_models`
--
ALTER TABLE `student_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_models_username_unique` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `student_models`
--
ALTER TABLE `student_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
