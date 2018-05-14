-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2018 at 08:09 PM
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
(94, '2018_05_14_172009_create_subjects_table', 4);

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
(1, 6, 'very good', 'bad', 'bad', 'very good', '2018-04-30 00:44:49', '2018-04-30 00:44:49'),
(2, 1, 'good', 'excellent', 'good', 'good', '2018-04-30 00:44:49', '2018-04-30 00:44:49'),
(3, 5, 'very good', 'excellent', 'very good', 'very good', '2018-04-30 00:44:49', '2018-04-30 00:44:49'),
(4, 3, 'excellent', 'good', 'bad', 'good', '2018-04-30 00:44:49', '2018-04-30 00:44:49'),
(5, 8, 'very good', 'excellent', 'good', 'excellent', '2018-04-30 00:44:49', '2018-04-30 00:44:49');

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
(1, 'Neha Yost DVM', 'rutherford.yessenia', '$2y$10$cuKnAmRMjqk.NvjCbkHEu.ejcmR8MY5EERQT2l.nrqwgqPHt/qwWa', 'drake.cartwright@example.com', '1-494-768-7003 x06796', 'second', '2018-04-30 00:44:47', '2018-04-30 00:44:47'),
(2, 'Mrs. Hortense Monahan V', 'ymacejkovic', '$2y$10$i46QWGfAJy4xkNHX9JWkGOvdd5czSHqc8U2oecWKuSScAWCHWppNm', 'cmccullough@example.net', '+1-827-221-4250', 'third', '2018-04-30 00:44:47', '2018-04-30 00:44:47'),
(3, 'Oral Walker', 'glover.sylvia', '$2y$10$87gCdunstKqB.ZhA.HA0jOUtlADt5dmbMdUx3pBKBMv8yUUYZ2wbe', 'denesik.oliver@example.com', '(765) 520-9662 x75980', 'third', '2018-04-30 00:44:47', '2018-04-30 00:44:47'),
(4, 'Janie Satterfield', 'bartholome.swift', '$2y$10$8wtZImuzFMDAyGLqKVRxfOQ4GxOwiJ0MYE9ZewmNhWskLAfBfVmL6', 'forest.schoen@example.com', '859-225-9430 x64892', 'second', '2018-04-30 00:44:47', '2018-04-30 00:44:47'),
(5, 'Frederique Roob', 'ibartell', '$2y$10$otUDQxDPJs1aOZX70PCHDu/JHjbmAL.dfAwjMduE/8I61YuFNECrq', 'fjacobs@example.net', '637.435.9007', 'first', '2018-04-30 00:44:47', '2018-04-30 00:44:47'),
(6, 'Keshawn Bartoletti', 'randy.mosciski', '$2y$10$a4RJVXPnXItUoKHwtfRQCexUVVKbeMPW9C0jhnz.GHebV24cpgNc6', 'chloe35@example.com', '1-792-615-6844 x7101', 'second', '2018-04-30 00:44:47', '2018-04-30 00:44:47'),
(7, 'Kattie Orn', 'noemie.emmerich', '$2y$10$DYjbjNa2CrGNpvGlw2biEeL.2KWl/qL8Lln1pyMJOM3zisw8qOF2i', 'stanton95@example.org', '730-960-4342', 'third', '2018-04-30 00:44:47', '2018-04-30 00:44:47'),
(8, 'Ryann McDermott', 'darien.mante', '$2y$10$H3/mMiHGJnz623nKFgEcueo8Al2JEW6VFpz1t485cnDlROvyR5oNy', 'stuart08@example.org', '1-884-228-2261', 'second', '2018-04-30 00:44:47', '2018-04-30 00:44:47'),
(9, 'Mrs. Ardella Medhurst IV', 'marjorie.runolfsdottir', '$2y$10$dyHmzZmMS1KNNZA1MLLAj.CrHexcPL5V1ss8XKUymCRBD4CvtVPQ.', 'ytillman@example.org', '570.382.9998', 'second', '2018-04-30 00:44:47', '2018-04-30 00:44:47'),
(10, 'Mr. Jordy Larkin', 'cleora67', '$2y$10$C34tqiG5QDGgcvHRPFZdyenNO48qVy9oLHxIrBkzMyDHd1.tL4BDG', 'chelsea.gulgowski@example.org', '1-292-513-5833 x131', 'third', '2018-04-30 00:44:47', '2018-04-30 00:44:47'),
(11, 'Mohamed Zead', 'zead', '$2y$10$9lN4fX2KOUrnJtphbXn7Pe4bXW0ilnMtkzVBp6GmTTR7MthN2b2Yq', 'refo@gmail.com', '01003616844', 'First', '2018-05-11 21:18:36', '2018-05-11 21:18:36');

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
(1, 'dentist', 4.00, 80, 2, '2018-05-15 00:33:02', '2018-05-15 00:33:02'),
(2, 'dentist', 2.00, 100, 1, '2018-05-15 00:33:02', '2018-05-15 00:33:02'),
(3, 'pharmacy', 2.00, 200, 5, '2018-05-15 00:33:02', '2018-05-15 00:33:02'),
(4, 'medical tools', 1.00, 80, 5, '2018-05-15 00:33:02', '2018-05-15 00:33:02'),
(5, 'Surgery', 3.00, 120, 4, '2018-05-15 00:33:02', '2018-05-15 00:33:02');

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
(7, 'nienow.esther', 'palma.mckenzie@example.net', '$2y$10$hnJ/NX5uv/E.2oTmt5WVS.Q915OTjJX/oCe./D/m6yWWx7EP41FJy', '7vzCRgTiUkxOIMgf60rYU5EMH1fwh3lzpC2xFIavpx6o1GXFlcGdnHQbjyTQ', '2018-05-14 02:10:01', '2018-05-14 02:10:01', 5),
(9, 'frankie.upton', 'smith.calista@example.org', '$2y$10$zWjtt7v2bC3J6hnUfOaijuEPhtPNaAn29QaML8.joPDd0IQayv7qy', '8I4UIDXnzHr7ivLnbsQheN2KUQ8C6aYX9Hccs5P4W0wPyACqWpDJFQB6p3YZ', '2018-05-14 02:10:01', '2018-05-14 02:10:01', 5),
(10, 'lurline.reichel', 'rkeebler@example.com', '$2y$10$8.jnVqSdXLxeM2vtAFVLjOlGTp4cJ7534Su9G6hZG/JdlPXQwtwIi', 'KlI7hvDdG7bmFH084Z2BaytBi8jieglZC2qUMiEGTliTOdUwvUujGFofIwRP', '2018-05-14 02:10:01', '2018-05-14 02:10:01', 0),
(11, 'johan80', 'rico.gorczany@example.net', '$2y$10$5/oZHcV.J.g3mVlfyOKaV.0j6.9xIKv.wMnAhnGhl72.7.go08cTi', 'iwvzQV6djmBvk1Bo4UN0m5d3rt6LXDTPFJQRWP8DYb9YL1w5pdLaye4ZFT8Q', '2018-05-14 02:10:01', '2018-05-14 02:10:01', 1),
(13, 'zead', 'zead99@gmail.com', '$2y$10$/SHxyxdT8qBA0MFhiArhHe4V67EZW.raZGY4z17QHWMQOHTI76ASq', 'JXKS4svMTKdlbl55PtXgSH4uucnK9lRZcSiiaiWwlp8DgDMe6Ikz3pWemlU5', '2018-05-14 02:16:35', '2018-05-14 02:16:35', 6);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `questions_by_students`
--
ALTER TABLE `questions_by_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
