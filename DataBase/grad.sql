-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2018 at 12:59 AM
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
(1, 'Blair Ullrich', 'zelma.waters', '$2y$10$d7NEeUE90sVUwYYYtGjOAur2Qzp4.nE1VOa1YczJNFbOkT1xFVb0i', 'amalia.shanahan@example.net', '1-987-612-1517 x9544', 'Math', '2018-04-11 05:55:46', '2018-04-11 05:55:46'),
(2, 'Mrs. Cassandra Dibbert I', 'oleuschke', '$2y$10$1a8wYGv9C19FFXkBc7WV4OHLjL142Q8BPVt3KOpjddIiy8kcvi4Dm', 'wilfred.rosenbaum@example.org', '1-235-546-5076', 'physics', '2018-04-11 05:55:46', '2018-04-11 05:55:46'),
(3, 'Sydni Gutkowski', 'donnie.langworth', '$2y$10$QvylVIFyoTwtACbq.6Pl.u/amqDi960KrKqOysPpjx4aDkLBJuSbS', 'kunze.trenton@example.net', '357.710.5883', 'Math', '2018-04-11 05:55:46', '2018-04-11 05:55:46'),
(4, 'Arturo Schmidt', 'oma.shanahan', '$2y$10$WeyJEM755jHnB/wp0sbpsutBzhf4pr671tR8C0UtBYCmfZXsFyFD.', 'donny53@example.org', '+1.981.315.5976', 'Medical tools', '2018-04-11 05:55:46', '2018-04-11 05:55:46'),
(5, 'Ottilie Deckow', 'claudie.strosin', '$2y$10$eqc9x33wMHwdZQix/AlDO.AY2hdaxqUvip80dRiUCLJL46YBu1czK', 'emely08@example.com', '250-844-9154 x536', 'Math', '2018-04-11 05:55:46', '2018-04-11 05:55:46');

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
(60, '2014_10_12_000000_create_users_table', 1),
(61, '2014_10_12_100000_create_password_resets_table', 1),
(62, '2018_03_16_223157_create_student_models_table', 1),
(63, '2018_03_16_234828_create_instructors_table', 1),
(64, '2018_04_09_214403_create_set_questions_by_admins_table', 1),
(65, '2018_04_10_195920_create_questions_by_students_table', 1);

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
(1, 2, 'very good', 'excellent', 'excellent', 'very good', '2018-04-11 05:55:47', '2018-04-11 05:55:47'),
(2, 3, 'excellent', 'very good', 'bad', 'bad', '2018-04-11 05:55:47', '2018-04-11 05:55:47'),
(3, 5, 'excellent', 'excellent', 'excellent', 'very good', '2018-04-11 05:55:48', '2018-04-11 05:55:48'),
(4, 5, 'bad', 'very good', 'bad', 'excellent', '2018-04-11 05:55:48', '2018-04-11 05:55:48'),
(5, 4, 'very good', 'good', 'very good', 'bad', '2018-04-11 05:55:48', '2018-04-11 05:55:48');

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
(1, 'Give your feedback about lecture ? ', 'bad', 'Excellent', 'bad', 'Excellent', '2018-04-11 05:55:46', '2018-04-11 05:55:46'),
(2, 'Give your feedback about instructor ?', 'Excellent', 'bad', 'good', 'bad', '2018-04-11 05:55:47', '2018-04-11 05:55:47'),
(3, 'Give your feedback about content ?', 'good', 'Excellent', 'very good', 'very good', '2018-04-11 05:55:47', '2018-04-11 05:55:47'),
(4, 'Give your feedback about lecture ? ', 'bad', 'bad', 'Excellent', 'bad', '2018-04-11 05:55:47', '2018-04-11 05:55:47'),
(5, 'Give your feedback about lecture ? ', 'Excellent', 'good', 'very good', 'bad', '2018-04-11 05:55:47', '2018-04-11 05:55:47');

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
(1, 'Dianna Jaskolski MD', 'anderson.blick', '$2y$10$5FhowT2zrYefvnINAn3NZOhZzyJzeko4Y7ZSHOLJrU2PqDbS5hZqa', 'koepp.afton@example.com', '760-460-2988', 'second', '2018-04-11 05:55:45', '2018-04-11 05:55:45'),
(2, 'Claudie Glover', 'devan.hoppe', '$2y$10$PWMPbFQe2crC7hPTL3/Ahe1cY3taWzo/xWJwQktTgD7YeX8qDlGQW', 'meagan.carter@example.com', '+1-571-951-0945', 'second', '2018-04-11 05:55:45', '2018-04-11 05:55:45'),
(3, 'Dayna Veum', 'kassandra.walsh', '$2y$10$x9Dh/DUfoXnwCYQ3hvM8peedmQ63kx0KzTdjdDv8koDx.r/tbX6fW', 'fcrooks@example.com', '240-985-9628', 'first', '2018-04-11 05:55:45', '2018-04-11 05:55:45'),
(4, 'Emelie Shanahan I', 'funk.isaiah', '$2y$10$ammp5MwbJUDV8BRlctda3uY7iDsLizWp7kU0WciFPYUG/xaeKD2Am', 'aniyah.dach@example.net', '281-721-8490 x7141', 'first', '2018-04-11 05:55:45', '2018-04-11 05:55:45'),
(5, 'Clark Dicki', 'clark.luettgen', '$2y$10$zjesMFwrI/AKar5cRQAyZOS7mAEbEQwS0JwVQHSPsg/tUbhnSH2eS', 'gail.herman@example.org', '(618) 308-1058 x030', 'third', '2018-04-11 05:55:45', '2018-04-11 05:55:45');

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
(1, 'Beaulah Wehner', 'patrick.bradtke', 'sandy.kuhlman@example.net', '$2y$10$WLctcSu0iiS4Ix00RR1oNO6mR8/abCV/9UyvQD90nUfrFqsPtQRM2', 'X3K2A5YO1i', '2018-04-11 05:55:43', '2018-04-11 05:55:43'),
(2, 'Dr. Briana Weber', 'wgoyette', 'gleichner.kieran@example.net', '$2y$10$wFAG7r34htav1FHQByYRMuwVOa9XL7MFdCCsc1C6f6chMmH8yJuxq', 'ySjMJELJhO', '2018-04-11 05:55:44', '2018-04-11 05:55:44'),
(3, 'Dr. Sonya Rice', 'cierra.legros', 'jerde.claudia@example.org', '$2y$10$3CaDdVhhZ20tc.1OnFT1UuciViqNWrL/7wJ0c4k6EPDqlL385FGcK', 'neanMpdUE9', '2018-04-11 05:55:44', '2018-04-11 05:55:44'),
(4, 'Oral Schamberger', 'fabiola.gutmann', 'bailee18@example.net', '$2y$10$yxce/ueSYBrYMxJ79MB.tetLtk7bjFqiNOtkbrhJasVc.5l3SYPf2', 'YhByz8hRea', '2018-04-11 05:55:44', '2018-04-11 05:55:44'),
(5, 'Arlie Wyman', 'gpollich', 'rfisher@example.org', '$2y$10$WrmSQIujW5caq5HqgowVtOgypHRKDi7C/z5ppNIpeWqDg2ggwQ.ai', 'wFBLwi9mQc', '2018-04-11 05:55:44', '2018-04-11 05:55:44');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
