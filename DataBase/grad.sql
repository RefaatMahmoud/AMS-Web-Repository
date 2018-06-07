-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2018 at 07:45 PM
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
-- Table structure for table `activity_types`
--

CREATE TABLE `activity_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_types`
--

INSERT INTO `activity_types` (`id`, `title`, `flag`, `created_at`, `updated_at`) VALUES
(1, 'meeting', 1, '2018-05-22 07:38:11', '2018-05-22 07:38:11'),
(2, 'section', 1, '2018-05-22 07:38:11', '2018-05-22 07:38:11'),
(3, 'meeting', 1, '2018-05-22 07:38:11', '2018-05-22 07:38:11'),
(4, 'meeting', 1, '2018-05-22 07:38:12', '2018-05-22 07:38:12'),
(5, 'meeting', 0, '2018-05-22 07:38:12', '2018-05-22 07:38:12'),
(6, 'lecture', 0, '2018-05-22 07:38:12', '2018-05-22 07:38:12'),
(7, 'lecture', 1, '2018-05-22 07:38:12', '2018-05-22 07:38:12'),
(8, 'meeting', 1, '2018-05-22 07:38:12', '2018-05-22 07:38:12'),
(9, 'meeting', 1, '2018-05-22 07:38:12', '2018-05-22 07:38:12'),
(10, 'lecture', 0, '2018-05-22 07:38:12', '2018-05-22 07:38:12');

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
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `username`, `password`, `email`, `telephone`, `subjectName`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Arnoldo Shields', 'marge49', '$2y$10$CuOaQYviKJkkc8HxaP36qOZSRWymFmtHgeuPQgkqDnsU3tWsEYeDi', 'wiegand.virgil@example.net', '1-629-403-2497 x707', 'physics', '2', '2018-05-22 07:38:07', '2018-05-22 07:38:07'),
(2, 'Tyler Littel Jr.', 'hyatt.jamil', '$2y$10$8f8/4d9mt7kBgiBNLwSNx.uVLgI2ssY28A/7YbKJ92EHRWp8rNoX6', 'keira.ankunding@example.net', '953-212-9589 x199', 'physics', '1', '2018-05-22 07:38:07', '2018-05-22 07:38:07'),
(3, 'Zula Bradtke PhD', 'gschmeler', '$2y$10$7t2Z.FhKGVa.RnDKP9zi.e5oCwsDCS4ehunlS5EyY1HTrS61esLAu', 'mante.marian@example.com', '435.220.7059 x8647', 'Medical tools', '0', '2018-05-22 07:38:08', '2018-05-22 07:38:08'),
(4, 'Mrs. Mollie Okuneva V', 'dbraun', '$2y$10$XGclPYIQy./k4BUhQHy5e.zZ5IWo2kMyPMk.wY0Tv0tfJa9sSef8W', 'ipacocha@example.com', '(834) 268-2678', 'physics', '1', '2018-05-22 07:38:08', '2018-05-22 07:38:08'),
(5, 'Madyson Swaniawski', 'mgoodwin', '$2y$10$WHlblSjWCSp.Zt4ywZQj.u22lY5402hUCSISfGm1tFVx5hGMk7pW6', 'rogahn.katelynn@example.org', '289-998-9229 x0002', 'physics', '1', '2018-05-22 07:38:08', '2018-05-22 07:38:08'),
(6, 'Ewell Rohan', 'bobby34', '$2y$10$xZgtP89SNsz9Nxk6uUKuDe63ZzgMylDtFuqwak7qj6GpyCHTtdmv2', 'xnader@example.com', '404-317-7679', 'Medical tools', '4', '2018-05-22 07:38:08', '2018-05-22 07:38:08'),
(7, 'Thora Kozey', 'rodrick30', '$2y$10$CAbMPiDy0xfNU0KkbVZinejFxBxBQiWhencw0iaCS.GPuQgMkhPr.', 'jharber@example.net', '(927) 344-8237', 'Medical tools', '0', '2018-05-22 07:38:08', '2018-05-22 07:38:08'),
(8, 'Prof. Blake Schneider Sr.', 'schneider.gordon', '$2y$10$Hr/4skxRc9zPYc9Sh90LXuZLTildflrFU84KvAiuPhbBIFXxPbTsy', 'adrianna47@example.net', '1-517-216-3532 x746', 'physics', '3', '2018-05-22 07:38:08', '2018-05-22 07:38:08'),
(9, 'Kirk Watsica', 'mante.aditya', '$2y$10$JMz9imSWzllIYAT7KiiJ3.GQnDCJzJbBKLtzD86sJyf1Sf4HSat4G', 'aniya.kunze@example.net', '403-924-2817 x5048', 'physics', '3', '2018-05-22 07:38:08', '2018-05-22 07:38:08'),
(10, 'Felicity Krajcik', 'reanna.emard', '$2y$10$W/hRMR/3cdZ9DSTVO/6Sz.znRHDSSrfKqmGC4VdTCiOav214eunua', 'schoen.cecilia@example.net', '828-380-8487 x840', 'physics', '4', '2018-05-22 07:38:08', '2018-05-22 07:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locationName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `locationName`, `created_at`, `updated_at`) VALUES
(1, 'Hall 3', '2018-06-07 23:54:30', '2018-06-07 23:54:30'),
(2, 'Hall 2', '2018-06-07 23:54:30', '2018-06-07 23:54:30'),
(3, 'Hall 3', '2018-06-07 23:54:30', '2018-06-07 23:54:30'),
(4, 'Hall 1', '2018-06-07 23:54:30', '2018-06-07 23:54:30'),
(5, 'Hall 5', '2018-06-07 23:54:30', '2018-06-07 23:54:30'),
(6, 'Hall 7', '2018-06-08 00:41:19', '2018-06-08 00:41:19');

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
(64, '2014_10_12_000000_create_users_table', 1),
(65, '2014_10_12_100000_create_password_resets_table', 1),
(66, '2018_03_16_223157_create_student_models_table', 1),
(67, '2018_03_16_234828_create_instructors_table', 1),
(68, '2018_04_09_214403_create_set_questions_by_admins_table', 1),
(69, '2018_04_10_195920_create_questions_by_students_table', 1),
(70, '2018_05_14_144017_create_schedules_table', 1),
(71, '2018_05_14_172009_create_subjects_table', 1),
(72, '2018_05_20_224642_create_activity_types_table', 1),
(73, '2018_05_21_162456_create_stduents_in_locations_table', 1),
(74, '2018_05_21_221515_create_roles_table', 1),
(75, '2018_06_07_165012_create_locations_table', 2);

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
(1, 4, 'very good', 'excellent', 'good', 'excellent', '2018-05-22 07:38:09', '2018-05-22 07:38:09'),
(2, 8, 'excellent', 'bad', 'good', 'good', '2018-05-22 07:38:09', '2018-05-22 07:38:09'),
(3, 5, 'good', 'good', 'bad', 'very good', '2018-05-22 07:38:09', '2018-05-22 07:38:09'),
(4, 8, 'bad', 'excellent', 'good', 'bad', '2018-05-22 07:38:09', '2018-05-22 07:38:09'),
(5, 3, 'very good', 'excellent', 'very good', 'bad', '2018-05-22 07:38:09', '2018-05-22 07:38:09');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `accessNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `accessNumber`, `title`, `created_at`, `updated_at`) VALUES
(1, '0', 'admin', '2018-05-22 07:38:12', '2018-05-22 07:38:12'),
(2, '1', 'instructor', '2018-05-22 07:38:12', '2018-05-22 07:38:12'),
(3, '2', 'student', '2018-05-22 07:38:12', '2018-05-22 07:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructorName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalMark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startTime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endTime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `day`, `subjectName`, `instructorName`, `totalMark`, `Location`, `startTime`, `endTime`, `type`, `groupNumber`, `created_at`, `updated_at`) VALUES
(1, 'Saturday', 'Surgery', 'Kirk Stracke', '100', 'Hall 5', '2', '5', 'section', '1', '2018-05-22 07:38:10', '2018-05-22 07:38:10'),
(2, 'Sunday', 'medical tools', 'Cassandre Beer', '80', 'Hall 4', '8', '9', 'lecture', '4', '2018-05-22 07:38:10', '2018-05-22 07:38:10'),
(3, 'Monday', 'dentist', 'Mrs. Sabina Miller Jr.', '100', 'Hall 3', '6', '10', 'section', '1', '2018-05-22 07:38:10', '2018-05-22 07:38:10'),
(4, 'Tuesday', 'dentist', 'Keshaun Mohr V', '120', 'Hall 4', '5', '7', 'lecture', '1', '2018-05-22 07:38:10', '2018-05-22 07:38:10'),
(5, 'Wednesday', 'pharmacy', 'Ryder Waelchi', '120', 'Hall 4', '9', '3', 'lecture', '4', '2018-05-22 07:38:10', '2018-05-22 07:38:10'),
(6, 'Thursday', 'dentist', 'Stan Abernathy', '80', 'Hall 4', '11', '12', 'section', '5', '2018-05-22 07:38:10', '2018-05-22 07:38:10'),
(21, 'Sunday', 'dentist', 'Ms. Wendy Schuster III', '200', 'Hall 2', '3', '3', 'lecture', '5', '2018-05-23 03:19:47', '2018-05-23 03:19:47'),
(22, 'Thursday', 'pharmacy', 'Marianna Ullrich', '100', 'Hall 1', '1', '8', 'lecture', '2', '2018-05-23 03:19:47', '2018-05-23 03:19:47'),
(23, 'Wednesday', 'pharmacy', 'Mr. Buster Buckridge', '80', 'Hall 1', '5', '1', 'section', '1', '2018-05-23 03:19:47', '2018-05-23 03:19:47'),
(24, 'Saturday', 'Surgery', 'Elsa Leannon', '80', 'Hall 1', '8', '6', 'section', '2', '2018-05-23 03:19:47', '2018-05-23 03:19:47'),
(25, 'Wednesday', 'dentist', 'Mrs. Elna O\'Kon Jr.', '200', 'Hall 2', '7', '1', 'lecture', '5', '2018-05-23 03:19:47', '2018-05-23 03:19:47');

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
(1, 'Give your feedback about lecture ? ', 'good', 'good', 'very good', 'good', '2018-05-22 07:38:08', '2018-05-22 07:38:08'),
(2, 'Give your feedback about lecture ? ', 'very good', 'very good', 'good', 'good', '2018-05-22 07:38:08', '2018-05-22 07:38:08'),
(3, 'Give your feedback about instructor ?', 'good', 'Excellent', 'good', 'bad', '2018-05-22 07:38:08', '2018-05-22 07:38:08'),
(4, 'Give your feedback about content ?', 'good', 'very good', 'good', 'very good', '2018-05-22 07:38:08', '2018-05-22 07:38:08'),
(5, 'Give your feedback about instructor ?', 'Excellent', 'bad', 'good', 'very good', '2018-05-22 07:38:08', '2018-05-22 07:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `stduents_in_locations`
--

CREATE TABLE `stduents_in_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stduents_in_locations`
--

INSERT INTO `stduents_in_locations` (`id`, `name`, `level`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Eldiasty', '1', 1, '2018-05-22 07:38:09', '2018-05-24 22:57:00'),
(2, 'Dahlia Thompson', '3', 0, '2018-05-22 07:38:09', '2018-05-22 07:38:09'),
(3, 'Miss Evangeline Gulgowski', '3', 0, '2018-05-22 07:38:09', '2018-05-22 07:38:09'),
(4, 'Hipolito Thiel', '4', 1, '2018-05-22 07:38:09', '2018-05-22 07:38:09'),
(5, 'Miss Cora Davis', '4', 0, '2018-05-22 07:38:09', '2018-05-22 07:38:09'),
(6, 'Laurie Hartmann', '2', 1, '2018-05-22 07:38:10', '2018-05-22 07:38:10'),
(7, 'Ferne O\'Kon', '3', 0, '2018-05-22 07:38:10', '2018-05-22 07:38:10'),
(8, 'Mr. Skye Lynch IV', '4', 1, '2018-05-22 07:38:10', '2018-05-22 07:38:10'),
(9, 'Helga Moore', '3', 1, '2018-05-22 07:38:10', '2018-05-22 07:38:10'),
(10, 'Stacy Cartwright', '2', 1, '2018-05-22 07:38:10', '2018-05-22 07:38:10'),
(11, 'zead', '4', 1, '2018-05-24 22:53:45', '2018-05-24 22:53:45');

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
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_models`
--

INSERT INTO `student_models` (`id`, `name`, `username`, `password`, `email`, `telephone`, `role`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Arden Marquardt IV', 'kane.kling', '$2y$10$mJtGrr5aCa9adUo68ZgI4eMkLyYuvv/aYXwWFCDSNOAz2pc3rF6rm', 'giovanny09@example.com', '+1 (850) 616-8158', '0', '4', '2018-05-22 07:38:05', '2018-05-22 07:38:05'),
(2, 'Prof. Timothy Waters', 'xbernier', '$2y$10$elQb8vBnGDhm0hbxFVPFWu.NR2sBfmRmra4RjpexHFIgsie9rgd7m', 'toy.halvorson@example.com', '+1-509-689-7381', '0', '4', '2018-05-22 07:38:05', '2018-05-22 07:38:05'),
(3, 'Emerson Walsh', 'angelo91', '$2y$10$rlbZZy4Et7hn5GRz95bf..y1wpXZr3dU9ReV2HiQhmMMh3mFWGdiK', 'flangosh@example.net', '(609) 926-4553 x21097', '0', '1', '2018-05-22 07:38:06', '2018-05-22 07:38:06'),
(4, 'Kathryne Haley PhD', 'pkunze', '$2y$10$ruvLHZkqj/3Kta1pmcexLO/T0UwO9kveRtQgBGicrwF0xfNytLDOG', 'hkutch@example.org', '+1-709-259-0700', '3', '4', '2018-05-22 07:38:06', '2018-05-22 07:38:06'),
(5, 'Adeline Greenholt', 'delphia46', '$2y$10$bnXkh6FP2mFr4APPPN/vp.J4O7bHhw3klKH05VccdmepSsjZN5brm', 'cristobal73@example.org', '+15899590068', '4', '3', '2018-05-22 07:38:06', '2018-05-22 07:38:06'),
(6, 'Eldred Kohler', 'hiram29', '$2y$10$ee1IHv7tsnoit.qXoN7Dm.JDBDSwzULlJgnz3KQwaDXPj5wAKTKmS', 'meghan48@example.org', '(402) 758-6980 x2813', '2', '3', '2018-05-22 07:38:06', '2018-05-22 07:38:06'),
(7, 'Nils Kris', 'ubatz', '$2y$10$aYUBL.hIwsMwDKKT7/wCWO.sFb2hm.JOfmXjaJgBT0gZQSojTtpr6', 'leonora.kovacek@example.net', '(642) 954-1532', '3', '4', '2018-05-22 07:38:06', '2018-05-22 07:38:06'),
(8, 'Alexandria Dare', 'yroob', '$2y$10$vg6nwJgmO0N/HtqeLorK0.EduamGbSoqPgGflN.Mmuh401R.db7oK', 'funk.myra@example.org', '1-590-421-9252', '4', '5', '2018-05-22 07:38:06', '2018-05-22 07:38:06'),
(9, 'Stewart Herzog', 'welch.randal', '$2y$10$TjYz./Ck.saL.EkBGSQwD.j031CLykE1KmbaKmY6NG5nBg.20nlWi', 'flo06@example.net', '1-435-201-4070 x437', '2', '3', '2018-05-22 07:38:06', '2018-05-22 07:38:06'),
(10, 'Madie Ortiz', 'tamara.kassulke', '$2y$10$xdO.kCvo0x82tXIB4g0jVeK0mFpP5Jx4kmQmfjnwd3OJUi9SJXBx2', 'nina93@example.org', '+1 (625) 278-1396', '4', '1', '2018-05-22 07:38:06', '2018-05-22 07:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `subjectName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalMark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subjectName`, `duration`, `totalMark`, `groupNumber`, `created_at`, `updated_at`) VALUES
(1, 'dentist', '2', '120', '3', '2018-05-22 07:38:10', '2018-05-22 07:38:10'),
(2, 'pharmacy', '2', '200', '3', '2018-05-22 07:38:11', '2018-05-22 07:38:11'),
(3, 'Surgery', '2', '100', '1', '2018-05-22 07:38:11', '2018-05-22 07:38:11'),
(4, 'pharmacy', '2', '80', '5', '2018-05-22 07:38:11', '2018-05-22 07:38:11'),
(5, 'Surgery', '3', '80', '5', '2018-05-22 07:38:11', '2018-05-22 07:38:11'),
(6, 'dentist', '1', '200', '1', '2018-05-22 07:38:11', '2018-05-22 07:38:11'),
(7, 'Surgery', '1', '120', '4', '2018-05-22 07:38:11', '2018-05-22 07:38:11'),
(8, 'Surgery', '4', '100', '4', '2018-05-22 07:38:11', '2018-05-22 07:38:11'),
(9, 'pharmacy', '2', '200', '1', '2018-05-22 07:38:11', '2018-05-22 07:38:11'),
(10, 'medical tools', '1', '120', '1', '2018-05-22 07:38:11', '2018-05-22 07:38:11');

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
(1, 'kelsi.smitham', 'maximillian67@example.org', '$2y$10$GceTQCX6RV5Eou3kCfi.tuV0wCTaV0wkncT4BeTGKmu6tPsHf.tqq', '3', 'KvAzwAcu4siLkfazsBanBdBALD4ywb1alUkKXMSYgYlbg31u4h4uTclcQRjg', '2018-05-22 07:38:03', '2018-05-22 07:38:03'),
(2, 'rbashirian', 'zachariah65@example.com', '$2y$10$ujvnshnum6B8wf.n/JmNxu9xVbJ9lFKciLp/w/H3edxKUJO/kj5xu', '4', 'e2IR73IXT4VIazLo2a5NxjPnMlrz3JtSMpO2hMumewj6JYSIb2fiFAE1PDCE', '2018-05-22 07:38:03', '2018-05-22 07:38:03'),
(3, 'madelyn88', 'murazik.stewart@example.com', '$2y$10$KIOmrlyIDr1Zit028Tce4.kJWV9zprNCRq/GeTIbXM44NmofDNFSy', '4', '3IXNq54ZISONAEg5f5vlgXmf4HKn0jYp0fJeeP96lQuyqEnq5detDexWxZqI', '2018-05-22 07:38:03', '2018-05-22 07:38:03'),
(4, 'layla.grimes', 'otha30@example.com', '$2y$10$VKdI4jIPEvC3Nl/xVZtMqe2KPyYMC7XXPtTTU.qEhKHqUwFMExjL2', '5', '4FashcEkKth4cyMsPptQGQwZ4dUaEMz3Lfj4IbtKvpHt9nfLycAjHlKWBcFw', '2018-05-22 07:38:03', '2018-05-22 07:38:03'),
(5, 'sipes.monte', 'xschumm@example.org', '$2y$10$RsxUjfaO/Ot55ILptRFad.qaCFhBusGvItjU1gc6eXiv0/P1vHHKm', '4', 'EnGfcPeWPmyomvwvh5aEHsp1k7d4t4awVgVNFCnMqK3jKmKRCxadYd0wLAN0', '2018-05-22 07:38:04', '2018-05-22 07:38:04'),
(6, 'alexandra53', 'gina69@example.net', '$2y$10$bDxuU6JPbuJFnHU4g32theBTdETzcbQKvKgioJZGrUfWQBLqbc1X2', '2', 'TW7ylaJgPIJO3By8mRlLj1L6luV1LePzuY2WE7t0Sf3aLwmiRa3axHkUS0Of', '2018-05-22 07:38:04', '2018-05-22 07:38:04'),
(7, 'pebert', 'douglas.reyna@example.com', '$2y$10$kStM6.wFx9ccDj5S8wJ9qO17DJe.3pVnjlXSkZk6ZpOIBpNdHQUmW', '2', '2fw9sITJgJr7PKaDc7yQ5IA4p9pPzCXY4jNgSmATbT6jAQF4OzYcUE4Q6doH', '2018-05-22 07:38:04', '2018-05-22 07:38:04'),
(8, 'tward', 'edwardo.heller@example.net', '$2y$10$mf3T3enBNSvFbK0k3eEFeua6qrENAUIdiwgfUc4DQ6yNt4OMSI5Sy', '4', 'hV9ccz9AME0tUlLjpSKlFFHfGH4b8xPtu6qHlLIsrqF7IP5HaHmR5AiefC90', '2018-05-22 07:38:04', '2018-05-22 07:38:04'),
(9, 'xgaylord', 'crooks.lillie@example.org', '$2y$10$qLM70Pa60/eGGnVTwtROn..Y.c4dWqZrYOK/kHTfZrxV6PVghrf8i', '2', '5URrdBPCMhk1JHXrK6nt8BUd7qXRGIvi9jsnHqLoVIXA2IhuZguOBXRwhqEn', '2018-05-22 07:38:04', '2018-05-22 07:38:04'),
(10, 'alexandra.larson', 'lboyle@example.com', '$2y$10$J8ic4sWvC6sL3dQqqmGqw.d.wu773FRVCFA8bgDHMKMJ2hysMCOmG', '1', 'HnOiAnR3aOcSXsYfB4dwSPxwXYR3bEW4MJbjslAVuGrGMz8mTGKkFl6N1z6m', '2018-05-22 07:38:04', '2018-05-22 07:38:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_types`
--
ALTER TABLE `activity_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructors_username_unique` (`username`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
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
-- Indexes for table `questions_by_students`
--
ALTER TABLE `questions_by_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_by_students_student_id_foreign` (`student_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `stduents_in_locations`
--
ALTER TABLE `stduents_in_locations`
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
-- AUTO_INCREMENT for table `activity_types`
--
ALTER TABLE `activity_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `questions_by_students`
--
ALTER TABLE `questions_by_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `set_questions_by_admins`
--
ALTER TABLE `set_questions_by_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `stduents_in_locations`
--
ALTER TABLE `stduents_in_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `student_models`
--
ALTER TABLE `student_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
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
