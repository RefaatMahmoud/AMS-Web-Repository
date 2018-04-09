-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2018 at 08:50 PM
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
(1, 'Rodolfo Wyman Sr.', 'klocko.chanelle', '$2y$10$RradNBcHY4UyqXHxwFRWresFRmlctw/gE6wEVNyodcHNDLCt0WZLu', 'austyn.oconner@example.net', '+18763835869', 'physics', '2018-04-10 00:06:23', '2018-04-10 00:06:23'),
(2, 'Edna Satterfield', 'joana.gibson', '$2y$10$btmabQInhjE9FEfpQw5qz.7Rn.3cJ479cfFB5k22pyQUQeW2Lol22', 'margarita.beatty@example.com', '(204) 897-2807 x678', 'Medical tools', '2018-04-10 00:06:23', '2018-04-10 00:06:23'),
(3, 'Amanda Rolfson', 'isabella.kunde', '$2y$10$Hmi2XxHOYHpQONaMid30Quo5sLvAjFEUp0O3qfeYhGX.jxegwQDtC', 'poberbrunner@example.com', '382-578-2204', 'Math', '2018-04-10 00:06:23', '2018-04-10 00:06:23'),
(4, 'Maeve Reichert', 'feeney.ezra', '$2y$10$/bbmaxwjSysxuhIS1MY8VeOwcgkTq/E53lryA5WHhQyFGt4RtVfSS', 'jamal.hand@example.com', '+1.840.847.0463', 'Medical tools', '2018-04-10 00:06:23', '2018-04-10 00:06:23'),
(5, 'Miss Marielle Hamill', 'lola.reilly', '$2y$10$DEoTtnBjiyjcjHm.F8W6CextTLS50Dd.zCtPA5X50SQMELZnkHc0C', 'gfeeney@example.net', '989.421.1145 x25570', 'Math', '2018-04-10 00:06:23', '2018-04-10 00:06:23');

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
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2018_03_16_223157_create_student_models_table', 1),
(21, '2018_03_16_234828_create_instructors_table', 1),
(22, '2018_04_09_214403_create_set_questions_by_admins_table', 1);

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
-- Table structure for table `set_questions_by_admins`
--

CREATE TABLE `set_questions_by_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option5` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `set_questions_by_admins`
--

INSERT INTO `set_questions_by_admins` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `option5`, `created_at`, `updated_at`) VALUES
(3, 'Give your feedback about content ?', 'very good', 'good', 'very good', 'very good', 'very good', '2018-04-10 00:06:23', '2018-04-10 00:06:23'),
(4, 'Give your feedback about instructor ?', 'very good', 'Excellent', 'good', 'very good', 'very good', '2018-04-10 00:06:23', '2018-04-10 00:06:23'),
(5, 'Give your feedback about lecture ? ', 'Excellent', 'very good', 'bad', 'good', 'good', '2018-04-10 00:06:23', '2018-04-10 00:06:23'),
(6, 'Whats about this lect', 'good', 'good', 'good', 'good', 'good', '2018-04-10 01:27:10', '2018-04-10 01:27:10'),
(7, 'Whats about this lect', 'good', 'good', 'good', 'good', 'good', '2018-04-10 01:41:35', '2018-04-10 01:41:35');

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
(1, 'Miracle Ziemann', 'cielo02', '$2y$10$C494mxgPZTiScRdnQpXdoeViEF3Bh6QG31Ps8Nf5dL33.3qv4J1NW', 'senger.zander@example.org', '1-956-748-8600 x4085', 'second', '2018-04-10 00:06:22', '2018-04-10 00:06:22'),
(2, 'Cloyd Graham', 'oconnell.nannie', '$2y$10$Wk04tQ0mOoJW.uibl37LDeDl0fSlMMtoBNKyk7yTjSEp.yRY6FqFS', 'neha.rolfson@example.com', '(405) 869-8454', 'second', '2018-04-10 00:06:22', '2018-04-10 00:06:22'),
(3, 'Dock Veum', 'hwaters', '$2y$10$mwPUI8zwcwxn9E5CxUXNKOULK1xl6grSEHFceYMkTNSZZNyocARJW', 'ramon.schmitt@example.org', '(253) 935-5200', 'second', '2018-04-10 00:06:22', '2018-04-10 00:06:22'),
(4, 'Emily Moore II', 'kaycee30', '$2y$10$T2I0S/mv8j2ceHfnuVlE1e2dxDko5Q5fXs9qtWr6ovWxMhyxpWa9y', 'ellsworth97@example.org', '540-670-1811 x40975', 'second', '2018-04-10 00:06:22', '2018-04-10 00:06:22'),
(5, 'Miss Myrtle Leffler Sr.', 'mgoodwin', '$2y$10$1UU09G2XUQBeOu8ROTARFeDhaav4x2i9nxj1G0CKYHHDwd0isjr.G', 'barton.verna@example.org', '(775) 677-2837 x71185', 'first', '2018-04-10 00:06:22', '2018-04-10 00:06:22');

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
(1, 'Lempi Kiehn Jr.', 'crawford.emard', 'jared11@example.net', '$2y$10$TyHc6LrfFZbP8q9fOlLFI.Oxa9MyOoqHm7bTTFX4T2WLw0WYS/0nq', 'c52OaVKGgK', '2018-04-10 00:06:21', '2018-04-10 00:06:21'),
(2, 'Dr. Elvie Jacobs II', 'jolie59', 'gokon@example.com', '$2y$10$3UbuM11UL1/RIjKql8GvaeaIKrEymEN4bAn8Z6q7OJPlxoTxJtCTm', 'JSuCveZaCM', '2018-04-10 00:06:21', '2018-04-10 00:06:21'),
(3, 'Tyson Crist', 'fay.josiane', 'juliana35@example.org', '$2y$10$MMVJvSxH1T0koj3wfWYwsOU6A5LMYkvL3Br6QBa.Wr/0uC3Y3CBY2', 'v8t5sSfOLu', '2018-04-10 00:06:21', '2018-04-10 00:06:21'),
(4, 'Eveline Rath', 'rohan.kristina', 'hroberts@example.org', '$2y$10$PJmggnomFtLUKcBGY2mAcuP7RFrhBrjVxyY3.ASwl.kfw1xXvI5mW', '2R8OoMWOzN', '2018-04-10 00:06:21', '2018-04-10 00:06:21'),
(5, 'Aaliyah Runolfsson V', 'muriel35', 'trey.hintz@example.org', '$2y$10$bSxFhccinwiRj6JV1hLILuqM3LTrUcc0U6jM81Bz4JR264hH7GgV6', 'dgOhBhMXps', '2018-04-10 00:06:21', '2018-04-10 00:06:21');

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
-- Indexes for table `set_questions_by_admins`
--
ALTER TABLE `set_questions_by_admins`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `set_questions_by_admins`
--
ALTER TABLE `set_questions_by_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
