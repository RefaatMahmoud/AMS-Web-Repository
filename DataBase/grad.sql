-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2018 at 06:01 PM
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
(1, 'Prof. Tanner Torphy PhD', 'bulah15', '$2y$10$LaQYzcacaTvg4zNCSzPKuuOUOnYCJXbPbiC2sEfxligU0eVkflbEW', 'jacobi.declan@example.org', '274-581-6410 x86304', 'Math', '2018-04-19 22:35:41', '2018-04-19 22:35:41'),
(2, 'Ms. Jaclyn Gerhold', 'carol73', '$2y$10$Ck8KOrB2kHn9C1TO1z7WFun28QT0aqS2zfedPbCDoEW4PYFkvyOTq', 'veum.bella@example.org', '(593) 458-4927 x9214', 'physics', '2018-04-19 22:35:41', '2018-04-19 22:35:41'),
(3, 'Duane Kutch', 'moses.weimann', '$2y$10$SRvEhhjy7tw1sadvkj19VeOQ0jsL7C2ZHCYHdgvYUIWHA/vD/VDnW', 'maudie85@example.org', '+1 (389) 633-3743', 'Medical tools', '2018-04-19 22:35:41', '2018-04-19 22:35:41'),
(4, 'Emmitt Lesch III', 'ostamm', '$2y$10$vhOuJxMsr2/FSSY/5On67ei8H7//RT80//DuTyRBtak2fkcvwIf1q', 'hodkiewicz.delia@example.com', '(972) 482-2670', 'Math', '2018-04-19 22:35:42', '2018-04-19 22:35:42'),
(5, 'Prof. Leatha Langosh II', 'kuhlman.cory', '$2y$10$hCYHOV5.XyfiTweHM6WGUeE69lhj2LXqjsDFqlYlWG85AHieeFZ/2', 'raoul55@example.org', '674-500-1627 x75382', 'Medical tools', '2018-04-19 22:35:42', '2018-04-19 22:35:42');

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
(73, '2014_10_12_000000_create_users_table', 1),
(74, '2014_10_12_100000_create_password_resets_table', 1),
(75, '2018_03_16_223157_create_student_models_table', 1),
(76, '2018_03_16_234828_create_instructors_table', 1),
(77, '2018_04_09_214403_create_set_questions_by_admins_table', 1),
(78, '2018_04_10_195920_create_questions_by_students_table', 1),
(79, '2018_04_19_152854_add_role_users_table', 1);

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
-- Table structure for table `questions_by_students`
--

CREATE TABLE `questions_by_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `answer1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions_by_students`
--

INSERT INTO `questions_by_students` (`id`, `student_id`, `answer1`, `answer2`, `answer3`, `answer4`, `created_at`, `updated_at`) VALUES
(1, 4, 'very good', 'bad', 'good', 'good', '2018-04-19 22:35:42', '2018-04-19 22:35:42'),
(2, 5, 'excellent', 'good', 'excellent', 'bad', '2018-04-19 22:35:42', '2018-04-19 22:35:42'),
(3, 1, 'very good', 'good', 'good', 'excellent', '2018-04-19 22:35:42', '2018-04-19 22:35:42'),
(4, 3, 'excellent', 'good', 'excellent', 'good', '2018-04-19 22:35:42', '2018-04-19 22:35:42'),
(5, 4, 'very good', 'bad', 'very good', 'very good', '2018-04-19 22:35:42', '2018-04-19 22:35:42');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `set_questions_by_admins`
--

INSERT INTO `set_questions_by_admins` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `created_at`, `updated_at`) VALUES
(1, 'Give your feedback about lecture ? ', 'bad', 'very good', 'very good', 'very good', '2018-04-19 22:35:42', '2018-04-19 22:35:42'),
(2, 'Give your feedback about instructor ?', 'good', 'good', 'Excellent', 'very good', '2018-04-19 22:35:42', '2018-04-19 22:35:42'),
(3, 'Give your feedback about lecture ? ', 'bad', 'good', 'very good', 'Excellent', '2018-04-19 22:35:42', '2018-04-19 22:35:42'),
(4, 'Give your feedback about content ?', 'good', 'good', 'good', 'very good', '2018-04-19 22:35:42', '2018-04-19 22:35:42'),
(5, 'Give your feedback about content ?', 'bad', 'Excellent', 'Excellent', 'bad', '2018-04-19 22:35:42', '2018-04-19 22:35:42');

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
(1, 'Helene Koch', 'ronaldo42', '$2y$10$CWiXxs1cntTH/SamoD.7vOcQM7xganp93Snet2uIHhxuQNOUmiKqi', 'iherzog@example.com', '+1.326.313.2872', 'first', '2018-04-19 22:35:41', '2018-04-19 22:35:41'),
(2, 'Fred Kub', 'ihessel', '$2y$10$sB2k2Q9jollcUT2.mO1rBeudx/j/VFW4ZZFgRydlxGdEbK/5U2S8y', 'mlarson@example.net', '+19155349611', 'third', '2018-04-19 22:35:41', '2018-04-19 22:35:41'),
(3, 'Gloria Runolfsson', 'ohara.myriam', '$2y$10$MADhKy60HJzBQDoatRUUaOpMr40mcTvjBB6kdeJiRD3ZINuXQmxFC', 'jasmin.schmidt@example.net', '1-978-205-4095', 'second', '2018-04-19 22:35:41', '2018-04-19 22:35:41'),
(4, 'Lillie Ebert Jr.', 'walsh.alejandra', '$2y$10$KRvRuqpdpIGH4q/nNZH13e0/CBdiTcXkUOv0YkBZFPYivHn122jOu', 'wehner.eugenia@example.net', '(957) 856-0403 x9971', 'second', '2018-04-19 22:35:41', '2018-04-19 22:35:41'),
(5, 'Dean Wehner Sr.', 'fbeier', '$2y$10$st4ArmCqjYU19I8HyeRGCOhK7v8egKSpCejd6dPAxPx7KGHsLI5Mi', 'monique.lesch@example.net', '+13797176294', 'first', '2018-04-19 22:35:41', '2018-04-19 22:35:41'),
(6, 'Refaat Aish', 'refaat101', '$2y$10$WAZXUAHpkThvcvteqG9EB.IMKFrDWTsZF5thCvyDtDM5WpltlF3oK', 'refo@gmail.com', '01003616844', 'First', '2018-04-19 22:47:17', '2018-04-19 22:47:17'),
(10, 'Refaat Aish', 'refaat10112', '$2y$10$Ksz0BLWIx8z93PeFHT4MJe1a3I6DaI6y7S.GlfAmd6ypmiHwjop9.', 'refo@gmail.com', '01003616844', 'First', '2018-04-19 22:52:05', '2018-04-19 22:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Refo22', 'refo@gmail.com', '$2y$10$sBgi1uHCorFIxHbeQpiVweqK0fopd3cM4V8wu7Gql/78V30e3Hpyi', 'zRVdVvkvl8', '2018-04-19 22:35:40', '2018-04-19 22:55:09', 0),
(2, 'ortiz.liliane', 'schmidt.anabelle@example.net', '$2y$10$iAFqmF..9QnxOdIT6BT/luiyr1vX4ELG2oZkFj2i6gJD/o4x17jV.', 'wuTTViGJIm', '2018-04-19 22:35:40', '2018-04-19 22:35:40', 0),
(3, 'rice.courtney', 'teresa.tromp@example.net', '$2y$10$eEeSVbW8ZJDp8WrRKgN3LuuSB7LjO9C2DsRCUlerdsxTcrcwD8bJ6', 'BMSgLPNayt', '2018-04-19 22:35:40', '2018-04-19 22:35:40', 4),
(4, 'fschmidt', 'demetrius.hauck@example.net', '$2y$10$2lRo1ctR1bsiQK9YmKiLruxJm7/b1B/EcF9CaO7Sz/prF43yOanYq', 'mjTK76KdyB', '2018-04-19 22:35:40', '2018-04-19 22:35:40', 3),
(6, 'ads', 'AbdoAllah99@gmail.com', '$2y$10$lVYVWCCRvb3LeVUo7qgzAuzTWGwrGpqf8XYTEL64pXzn4YalL4ka6', NULL, '2018-04-19 22:38:47', '2018-04-19 22:38:47', 1),
(7, 'adsaaqqa', 'AbdoAllah99@gmail.com', '$2y$10$5msJ3mShmdRXjgHdTeCI8uh78LjVJiul4b8HIsDav0d3hRSoN8NiS', NULL, '2018-04-19 22:50:10', '2018-04-19 22:50:10', 6),
(11, 'asd', 'AbdoAllah99@gmail.com', '$2y$10$ehwab.wc/ph7Qs0Iz6UIOOFEDGufa/F1DWeIMKeMB2jX2Dt4Y4Vmi', NULL, '2018-04-19 22:54:59', '2018-04-19 22:54:59', 6);

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
-- Indexes for table `questions_by_students`
--
ALTER TABLE `questions_by_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_by_students_student_id_foreign` (`student_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `questions_by_students`
--
ALTER TABLE `questions_by_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `set_questions_by_admins`
--
ALTER TABLE `set_questions_by_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student_models`
--
ALTER TABLE `student_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions_by_students`
--
ALTER TABLE `questions_by_students`
  ADD CONSTRAINT `questions_by_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `student_models` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
