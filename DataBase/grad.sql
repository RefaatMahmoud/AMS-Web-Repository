-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 12:07 AM
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
(1, 'Malvina Schumm', 'alexie89', '$2y$10$OCgurqfaIvcuPO/zslntzeNcivlQCg5VgTCFy97RZo3PPBLxNCZou', 'earl81@example.net', '(965) 644-0740', 'physics', '2018-04-30 00:44:48', '2018-04-30 00:44:48'),
(2, 'Joe Stamm', 'brakus.price', '$2y$10$Yspx6RyH49QRsHxfhRZuiOn6nSvFf1IpUyXJder1J6W1wjC92yEJO', 'zora12@example.net', '254-638-1102', 'Medical tools', '2018-04-30 00:44:48', '2018-04-30 00:44:48'),
(3, 'Ms. Lavonne Marvin', 'larson.mollie', '$2y$10$egYq3UmIYNOizlg/ZePpe.lRhb3pDnZK8VXBmmW2X4m.Q8Uht59qa', 'rebeka.greenholt@example.org', '1-510-500-1754', 'physics', '2018-04-30 00:44:48', '2018-04-30 00:44:48'),
(4, 'Mr. Michale Morar V', 'ramona.keebler', '$2y$10$9l/pCVgw3EAuadtGLxg9U.YknHkTBXpyxpi3xhZFPrQ//EeI5rJIq', 'hkuvalis@example.com', '(281) 810-8687', 'Math', '2018-04-30 00:44:48', '2018-04-30 00:44:48'),
(5, 'Domenic Braun', 'kokuneva', '$2y$10$e4B4SoR.v5guFlpsOaTAK.kshSipC9vnz8dYSYo2JMfqLXeNPOO6i', 'reynolds.theresia@example.org', '+1.886.733.4153', 'Medical tools', '2018-04-30 00:44:48', '2018-04-30 00:44:48'),
(6, 'Mohamed Zead', 'zead', '$2y$10$ta.4YiwO3H2YRqzczYBeBOg.xy8TGm3qxwTqeKeq6E4pIdca6W3CK', 'refo@gmail.com', '01003616844', 'Math', '2018-05-11 21:43:09', '2018-05-11 21:43:09');

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
(80, '2014_10_12_000000_create_users_table', 1),
(81, '2014_10_12_100000_create_password_resets_table', 1),
(82, '2018_03_16_223157_create_student_models_table', 1),
(83, '2018_03_16_234828_create_instructors_table', 1),
(84, '2018_04_09_214403_create_set_questions_by_admins_table', 1),
(85, '2018_04_10_195920_create_questions_by_students_table', 1),
(86, '2018_04_19_152854_add_role_users_table', 1),
(87, '2018_04_24_224128_create_student_logins_table', 1),
(88, '2018_05_13_120523_create_students_in__locations_table', 2),
(92, '2018_05_14_144017_create_schedules_table', 3),
(101, '2018_05_14_172009_create_subjects_table', 4),
(102, '2018_05_15_214431_add_groub_number_studentsmodel', 5);

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

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructorName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupNumber` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `day`, `subjectName`, `instructorName`, `Location`, `startTime`, `endTime`, `type`, `groupNumber`, `created_at`, `updated_at`) VALUES
(6, 'Wednesday', 'pharmacy', 'Hulda Hahn', 'Hall 1', 3, 11, 'lecture', 1, '2018-05-14 23:36:07', '2018-05-14 23:36:07'),
(7, 'Tuesday', 'medical tools', 'Annalise Kautzer', 'Hall 1', 7, 9, 'lecture', 3, '2018-05-14 23:36:07', '2018-05-14 23:36:07'),
(8, 'Wednesday', 'dentist', 'Alexander McGlynn', 'Hall 5', 6, 12, 'lecture', 2, '2018-05-14 23:36:07', '2018-05-14 23:36:07'),
(9, 'Thursday', 'Surgery', 'Dina Walker', 'Hall 2', 6, 2, 'lecture', 2, '2018-05-14 23:36:07', '2018-05-14 23:36:07'),
(10, 'Thursday', 'dentist', 'William McDermott', 'Hall 4', 3, 11, 'section', 4, '2018-05-14 23:36:07', '2018-05-14 23:36:07'),
(11, 'Monday', 'Medical', 'Refaat Aish', 'Hall 3', 2, 5, 'lecture', 2, '2018-05-14 23:53:17', '2018-05-14 23:53:17');

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
(1, 'Give your feedback about instructor ?', 'Excellent', 'Excellent', 'good', 'Excellent', '2018-04-30 00:44:48', '2018-04-30 00:44:48'),
(2, 'Give your feedback about content ?', 'Excellent', 'Excellent', 'bad', 'very good', '2018-04-30 00:44:48', '2018-04-30 00:44:48'),
(3, 'Give your feedback about lecture ? ', 'very good', 'Excellent', 'bad', 'bad', '2018-04-30 00:44:48', '2018-04-30 00:44:48'),
(4, 'Give your feedback about content ?', 'bad', 'Excellent', 'very good', 'good', '2018-04-30 00:44:48', '2018-04-30 00:44:48'),
(5, 'Give your feedback about instructor ?', 'very good', 'very good', 'bad', 'very good', '2018-04-30 00:44:48', '2018-04-30 00:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `students_in__locations`
--

CREATE TABLE `students_in__locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students_in__locations`
--

INSERT INTO `students_in__locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ulises Fadel PhD', '2018-05-13 19:41:10', '2018-05-13 19:41:10'),
(2, 'Bridget Gerlach', '2018-05-13 19:41:10', '2018-05-13 19:41:10'),
(3, 'Ursula Krajcik', '2018-05-13 19:41:10', '2018-05-13 19:41:10'),
(4, 'Elenor Collins', '2018-05-13 19:41:11', '2018-05-13 19:41:11'),
(5, 'Elouise Collier', '2018-05-13 19:41:11', '2018-05-13 19:41:11'),
(6, 'zead', '2018-05-13 19:41:30', '2018-05-13 19:41:30');

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
(22, 'Miss Hannah Douglas', 'vesta.turcotte', '$2y$10$40ZV2T.vfeyoKUIY0Qz46e28Igp/V44kv7EQGGXUUdwjKyjrI4f6W', 'astracke@example.net', '+14275556150', '1', '2018-05-16 05:04:05', '2018-05-16 05:04:05'),
(23, 'Stephan Jacobs', 'tkessler', '$2y$10$oFrzCD6fiC5CSZk6ybKnUutfMjLx1Rq89POGHApOLv2yZQ1dYGHVy', 'mariah.thiel@example.org', '1-479-449-6156', '3', '2018-05-16 05:04:05', '2018-05-16 05:04:05'),
(24, 'Connor Klocko V', 'gibson.breana', '$2y$10$PX7SGrfhSL2gxpQ5p5N9p..0j8YTB.7yCY/eu0skOL0SEO5Z7k.8q', 'balistreri.morris@example.com', '+1-414-409-2860', '2', '2018-05-16 05:04:05', '2018-05-16 05:04:05'),
(25, 'Axel Hilpert IV', 'enrico72', '$2y$10$GQdRAsuBFUCH1Gv9W1XjDOG3Qbpe1Vxqbg73H4V8g7x5QLvRztXjS', 'alia.lakin@example.org', '+1 (975) 271-4443', '2', '2018-05-16 05:04:05', '2018-05-16 05:04:05'),
(26, 'Lloyd Wilderman', 'murazik.bennie', '$2y$10$0KYvITlOu5iomM5b/2TKAuDBS6fUPiSFf3cBh1aGDHn4A6k/xFD5a', 'patricia.hintz@example.com', '1-923-690-4725 x162', '3', '2018-05-16 05:04:06', '2018-05-16 05:04:06'),
(27, 'Dr. Sigrid Hammes', 'ullrich.alva', '$2y$10$HWK6SQ8VSPGLRPqhgWg5S.gUW7tzsdDiKQvvNdm2/oPk2/6oEOR.y', 'vzulauf@example.com', '457-476-6254', '1', '2018-05-16 05:04:06', '2018-05-16 05:04:06'),
(28, 'Dr. Vergie Larson PhD', 'xchamplin', '$2y$10$l8zxzdshxTm5R4SV4X3Kz.F2jJ0d.xQUPAdSj2lFk/fieHE31ep8W', 'iabernathy@example.org', '(961) 636-2158 x464', '4', '2018-05-16 05:04:06', '2018-05-16 05:04:06'),
(29, 'Shawna Koepp', 'matteo90', '$2y$10$zjmOpJSrtRuJtxbwoINVze.0eRIQWh57swzc9SIOcYL0akaNFMGpW', 'rowe.conner@example.org', '397.985.3018', '4', '2018-05-16 05:04:06', '2018-05-16 05:04:06'),
(30, 'Jillian Nikolaus', 'leannon.kenneth', '$2y$10$d3dM9WB2..2PFIa88x6fOeInWZfRJBHrKsv6Ry1eUtNnghICh16ni', 'vladimir.vonrueden@example.com', '(378) 679-3076 x34423', '2', '2018-05-16 05:04:06', '2018-05-16 05:04:06'),
(31, 'Ms. Maegan Buckridge III', 'reinger.ken', '$2y$10$U3BzdUgG3ROyVDh8hajWTeUYcTSbVhE3YibEAlVcpLDhxo.yeguZm', 'ruben12@example.net', '(619) 948-0124 x32461', '2', '2018-05-16 05:04:06', '2018-05-16 05:04:06'),
(32, 'Mohamed Zead', 'zead', '$2y$10$PO8E2KbnhIb3HFlM4dKtVe4ooHAAF98JZBMiHKiB3R2BuK1nHr1qy', 'zead99@gmail.com', '01003616844', '4', '2018-05-16 05:07:11', '2018-05-16 05:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `subjectName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` double(8,2) NOT NULL,
  `totalMark` int(11) NOT NULL,
  `groupNumber` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subjectName`, `duration`, `totalMark`, `groupNumber`, `created_at`, `updated_at`) VALUES
(1, 'Surgery', 2.00, 120, 4, '2018-05-15 17:04:49', '2018-05-15 17:04:49'),
(2, 'Surgery', 3.00, 80, 2, '2018-05-15 17:04:49', '2018-05-15 17:04:49'),
(3, 'dentist', 4.00, 120, 3, '2018-05-15 17:04:49', '2018-05-15 17:04:49'),
(4, 'medical tools', 3.00, 200, 5, '2018-05-15 17:04:49', '2018-05-15 17:04:49'),
(5, 'Surgery', 1.00, 120, 4, '2018-05-15 17:04:49', '2018-05-15 17:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'delia61', 'charles.murazik@example.com', '$2y$10$aI26SZBsYLowLXfKxOETFOOZWXl78iH.LG.YtM2hhjEecDY4Qg.tC', '1', 'ze0GWJQtNSdRCRCUcDpalV3PRaMklQwVOLMnKCGUTpMeduTc0jSsseeoGy5e', '2018-05-15 17:04:48', '2018-05-15 17:04:48'),
(2, 'kamren.braun', 'savanna90@example.org', '$2y$10$GOQkar4dHoi44jr/8spIDuCgSez8JJjZSiTywIPWDXnAbenBJh5B.', '2', 'cjWvX9NPDQtnoXHsuCLx9sf55wVe7CKwod81vfgJ9Hgp438UHg8oREZ2yu0p', '2018-05-15 17:06:30', '2018-05-15 17:06:30'),
(3, 'robel.gerardo', 'mfisher@example.net', '$2y$10$1v1wDSE.PVSlShwqn94X1euwc.5EobkKbn3exCz2Wy55wdVoXLV5e', '5', 'h1qSMzKqwhZea6AfriYSdO4vtceBWSecOlpxwmA9rh7KtzNVjazFJJsUiZ5v', '2018-05-15 17:06:30', '2018-05-15 17:06:30'),
(4, 'ucummings', 'ruthe.cummerata@example.org', '$2y$10$QrOT4QgQ0k77l8kKpKwfD.ZGkh/CSa7EnaS.7USCofIcJLjvUhnHG', '4', 'RsqTq3hNuXJtCA9gLvV9DptWkJWrKeEghAs64J5MceGPdOyRmvS42SkqbElv', '2018-05-15 17:06:30', '2018-05-15 17:06:30'),
(5, 'daisy.quitzon', 'wade.legros@example.com', '$2y$10$1zPy37meuN0zOOIt1qzHZu3uY5WxSf1TdmhwPtV45.dVDl5e1F7Oq', '1', 'prP3HPixCm5d8EGcYQfcL3N21T9lN3tKOCTHMqnTiVHGDLhaGqobxPdxQ2Hs', '2018-05-15 17:06:30', '2018-05-15 17:06:30'),
(6, 'zead', 'zead99@gmail.com', '$2y$10$YsqzokHbIPu1n2.jwpwuT.jYjlA0oJL0YTNQisFgc7G1w.7K5Ad5q', '4', '7Ww1PwiXCTl99Gx3yZDQP4XZnsBRzDHA36pddzQobQWr3PQgrr3yUVyThNWH', '2018-05-15 17:06:57', '2018-05-15 17:06:57'),
(7, 'refo', 'refo101@gmail.com', '$2y$10$mniHaVjq1UUHBdM/pA17GufmG31zyZdtC18Eo.0xAHAgw5qn573Rm', '4', 'twHVjnxVesI8z1TzcVkf6ryYyZRF4m7sEeg5KWCrgxBEGVkbkv48Z7gt9bgZ', '2018-05-15 17:07:20', '2018-05-15 17:07:20');

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
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_questions_by_admins`
--
ALTER TABLE `set_questions_by_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_in__locations`
--
ALTER TABLE `students_in__locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_models`
--
ALTER TABLE `student_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_models_username_unique` (`username`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `questions_by_students`
--
ALTER TABLE `questions_by_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `set_questions_by_admins`
--
ALTER TABLE `set_questions_by_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `students_in__locations`
--
ALTER TABLE `students_in__locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `student_models`
--
ALTER TABLE `student_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
