-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2018 at 12:50 AM
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
(1, 'lecture', 1, '2018-05-22 05:48:27', '2018-05-22 05:48:27'),
(2, 'lecture', 0, '2018-05-22 05:48:27', '2018-05-22 05:48:27'),
(3, 'section', 0, '2018-05-22 05:48:28', '2018-05-22 05:48:28'),
(4, 'meeting', 0, '2018-05-22 05:48:28', '2018-05-22 05:48:28'),
(5, 'lecture', 0, '2018-05-22 05:48:28', '2018-05-22 05:48:28'),
(6, 'lecture', 0, '2018-05-22 05:48:28', '2018-05-22 05:48:28'),
(7, 'meeting', 0, '2018-05-22 05:48:28', '2018-05-22 05:48:28'),
(8, 'meeting', 1, '2018-05-22 05:48:28', '2018-05-22 05:48:28'),
(9, 'lecture', 0, '2018-05-22 05:48:28', '2018-05-22 05:48:28'),
(10, 'section', 0, '2018-05-22 05:48:28', '2018-05-22 05:48:28');

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
(1, 'Quincy Weber', 'brandi.graham', '$2y$10$awfft/EJxW.pAO5KIYIxhusK5.pbdSWd/H42dXyq5pn8Xnwgvy8RC', 'lnicolas@example.net', '942-492-4903 x51312', 'physics', '0', '2018-05-22 05:48:24', '2018-05-22 05:48:24'),
(2, 'Pearl Rice IV', 'corene01', '$2y$10$B6WozKIKV984LD/4crym9.4id43Ca0geI9It.UjXTI3c7Vf7pkMj2', 'damien.graham@example.net', '1-794-258-7841 x3476', 'Medical tools', '5', '2018-05-22 05:48:24', '2018-05-22 05:48:24'),
(3, 'Drew Doyle', 'jerde.imogene', '$2y$10$42Y2ikSyjYFLdEfVueZYRuyUVrRqFFFCjsvzAqLexwsdfwSYb5lV6', 'hadley.kohler@example.net', '416.234.5738', 'physics', '2', '2018-05-22 05:48:24', '2018-05-22 05:48:24'),
(4, 'Dr. Jarod Miller PhD', 'monahan.kody', '$2y$10$Wkmixh3ARkSf353GELNvWOPORqJVmD6cv8XO8KjdXoQpF8MAiSugK', 'maymie.kozey@example.com', '(849) 495-9949', 'Medical tools', '3', '2018-05-22 05:48:24', '2018-05-22 05:48:24'),
(5, 'Graciela Williamson', 'ozella21', '$2y$10$FQbzEuvsItRaXQxlUprF5OAafLla1mbbv0yhXK/qEQQ4op/Hw0pEC', 'merlin61@example.com', '876-309-2303 x354', 'physics', '0', '2018-05-22 05:48:24', '2018-05-22 05:48:24'),
(6, 'Prof. Marley Ward', 'jared.cartwright', '$2y$10$sVglNx.3CRfPGtQE2Iyl4OcHCOug1e5e6sVMSXEMVtzedqUpiwlDC', 'loraine88@example.net', '+1-629-925-0726', 'physics', '4', '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(7, 'Albert Strosin', 'stephon.towne', '$2y$10$W0im/XOQK0GOM5amttm3LuImMPhnp.fBFumAfXQQ5QvADtBcv5sbO', 'sylvan.gutmann@example.org', '+1-254-215-4755', 'physics', '2', '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(8, 'Edythe Volkman PhD', 'reichel.arielle', '$2y$10$5ySlR9Ce0XyStcANTQZjl.fhz4Wr3P.5YCqvqdYyRTO1187/p8x/e', 'marcelle.kerluke@example.net', '+1-458-420-8539', 'Medical tools', '3', '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(9, 'Maximus Runolfsdottir', 'jedediah45', '$2y$10$cPkxSU06FuX0H4rYWgK3Aeh3yuzKT2CYLT37cuMvteYC.yQ4Xn4XC', 'hudson.considine@example.org', '+16633054082', 'Math', '0', '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(10, 'Christa Schinner', 'raynor.lindsey', '$2y$10$TR8ONUnRUCB0HczJ0IRj9O/p0C5qCo7V.Q1.IJLqTmIkNmo4KN9mi', 'fthiel@example.com', '(212) 703-8714 x694', 'physics', '2', '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(11, 'Mohamed Zead', 'zead', '$2y$10$wkisHXqMFl85jy3YkCQ3wucv7cRuXugFdX1PY.3ykY45Kdfg3wKL.', 'zead99@gmail.com', '01003616844', 'Math', '1', '2018-05-22 05:48:50', '2018-05-22 05:48:50');

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
(53, '2014_10_12_000000_create_users_table', 1),
(54, '2014_10_12_100000_create_password_resets_table', 1),
(55, '2018_03_16_223157_create_student_models_table', 1),
(56, '2018_03_16_234828_create_instructors_table', 1),
(57, '2018_04_09_214403_create_set_questions_by_admins_table', 1),
(58, '2018_04_10_195920_create_questions_by_students_table', 1),
(59, '2018_05_14_144017_create_schedules_table', 1),
(60, '2018_05_14_172009_create_subjects_table', 1),
(61, '2018_05_20_224642_create_activity_types_table', 1),
(62, '2018_05_21_162456_create_stduents_in_locations_table', 1),
(63, '2018_05_21_221515_create_roles_table', 1);

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
(1, 3, 'very good', 'very good', 'bad', 'very good', '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(2, 8, 'very good', 'excellent', 'bad', 'good', '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(3, 5, 'very good', 'excellent', 'excellent', 'bad', '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(4, 5, 'good', 'very good', 'excellent', 'good', '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(5, 7, 'very good', 'very good', 'good', 'excellent', '2018-05-22 05:48:25', '2018-05-22 05:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `accessNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `accessNumber`, `created_at`, `updated_at`) VALUES
(1, '0', '2018-05-22 05:48:28', '2018-05-22 05:48:28'),
(2, '1', '2018-05-22 05:48:28', '2018-05-22 05:48:28'),
(3, '2', '2018-05-22 05:48:28', '2018-05-22 05:48:28'),
(4, '3', '2018-05-22 05:48:28', '2018-05-22 05:48:28'),
(5, '4', '2018-05-22 05:48:28', '2018-05-22 05:48:28'),
(6, '5', '2018-05-22 05:48:28', '2018-05-22 05:48:28'),
(7, '6', '2018-05-22 05:48:29', '2018-05-22 05:48:29'),
(8, '7', '2018-05-22 05:48:29', '2018-05-22 05:48:29'),
(9, '8', '2018-05-22 05:48:29', '2018-05-22 05:48:29'),
(10, '9', '2018-05-22 05:48:29', '2018-05-22 05:48:29');

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
(1, 'Friday', 'medical tools', 'Dr. Lizeth Abbott', '200', 'Hall 3', '10', '11', 'section', '4', '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(2, 'Saturday', 'dentist', 'Rodrick Mann', '120', 'Hall 1', '2', '10', 'lecture', '3', '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(3, 'Wednesday', 'dentist', 'Lulu Abernathy', '120', 'Hall 2', '3', '2', 'section', '4', '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(4, 'Saturday', 'Surgery', 'Quentin Harvey', '100', 'Hall 1', '3', '12', 'section', '2', '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(5, 'Friday', 'dentist', 'Marguerite Kunde', '120', 'Hall 5', '9', '8', 'lecture', '2', '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(6, 'Thursday', 'medical tools', 'Dakota Kohler', '80', 'Hall 5', '6', '4', 'section', '5', '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(7, 'Friday', 'pharmacy', 'Dr. Emily Rippin PhD', '80', 'Hall 5', '2', '5', 'section', '1', '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(8, 'Thursday', 'dentist', 'Estel Glover', '100', 'Hall 3', '2', '7', 'section', '3', '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(9, 'Sunday', 'pharmacy', 'Rosemary Davis', '120', 'Hall 3', '7', '4', 'section', '4', '2018-05-22 05:48:27', '2018-05-22 05:48:27'),
(10, 'Sunday', 'medical tools', 'Dorothea Rosenbaum', '120', 'Hall 5', '9', '7', 'lecture', '4', '2018-05-22 05:48:27', '2018-05-22 05:48:27');

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
(1, 'Give your feedback about lecture ? ', 'good', 'bad', 'bad', 'good', '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(2, 'Give your feedback about lecture ? ', 'very good', 'good', 'Excellent', 'good', '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(3, 'Give your feedback about instructor ?', 'Excellent', 'very good', 'good', 'bad', '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(4, 'Give your feedback about lecture ? ', 'very good', 'good', 'very good', 'Excellent', '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(5, 'Give your feedback about lecture ? ', 'Excellent', 'Excellent', 'Excellent', 'very good', '2018-05-22 05:48:25', '2018-05-22 05:48:25');

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
(1, 'Ludie Crona', '4', 0, '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(2, 'Anna Ernser', '4', 1, '2018-05-22 05:48:25', '2018-05-22 05:48:25'),
(3, 'Earline Medhurst', '2', 0, '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(4, 'Reed Dickinson', '2', 0, '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(5, 'Dr. Trevor Herzog IV', '3', 0, '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(6, 'Miss Veda Bergstrom I', '4', 1, '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(7, 'Leone Towne', '4', 0, '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(8, 'Marianna Cremin PhD', '2', 1, '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(9, 'Kody Hudson', '3', 1, '2018-05-22 05:48:26', '2018-05-22 05:48:26'),
(10, 'Hulda Walsh V', '5', 1, '2018-05-22 05:48:26', '2018-05-22 05:48:26');

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
(1, 'Elias Walsh', 'domenica13', '$2y$10$Dt.cHPXmgcWmFffe2PdB5O7JjSHTwdH/8Flk0Xq1SO3wqJih1qP4O', 'hskiles@example.org', '(320) 477-7306 x8368', '3', '2', '2018-05-22 05:48:23', '2018-05-22 05:48:23'),
(2, 'Dr. Laverna Adams', 'rreilly', '$2y$10$WN.Xdl0SqnxuNfsPrshXgudJFUN3W1qVBvSZW1SJPUOdeJz2xbv1K', 'collins.katheryn@example.net', '+1.873.588.6015', '2', '1', '2018-05-22 05:48:23', '2018-05-22 05:48:23'),
(3, 'Eloy Turner', 'erica30', '$2y$10$wVQZGbEmaQLFFnIczZWuIerj1qXkCtZIRFM3hqvURbxOp47mrkZR2', 'dave41@example.net', '(423) 614-1619', '1', '1', '2018-05-22 05:48:23', '2018-05-22 05:48:23'),
(4, 'Helene Lind', 'jonatan.gulgowski', '$2y$10$tHoHg8mlMvmhSOjUlHWzDOQeYj.qIBlT5Kk0Dgk3HsllZFuBc9JRC', 'june.kris@example.net', '(458) 730-0393', '3', '3', '2018-05-22 05:48:23', '2018-05-22 05:48:23'),
(5, 'Heath Ullrich I', 'kosinski', '$2y$10$nuPVYzvYNyEbLaYOkNx1mOBuU6LbK3x06jlRGsABtHKrBSayA6/HO', 'grant75@example.org', '486.379.6612 x67337', '2', '3', '2018-05-22 05:48:23', '2018-05-22 05:48:23'),
(6, 'Fidel Tromp', 'ldamore', '$2y$10$.fjHzIBLkqNgW992Madjg.Zle.YlZYl984/9KG.e7W7IWuKh9.Idy', 'jjacobs@example.com', '(924) 503-9924 x541', '5', '4', '2018-05-22 05:48:23', '2018-05-22 05:48:23'),
(7, 'Dolores Hirthe', 'quinton.haley', '$2y$10$zMT3qyh0yYhXFRXUoCSH8.S.0p9RDc9lZ2bPQB1M1VhYQaR4nyhqm', 'lindgren.cale@example.org', '(719) 473-7605', '1', '1', '2018-05-22 05:48:23', '2018-05-22 05:48:23'),
(8, 'Brook Walsh', 'boyle.samir', '$2y$10$nSq6GbBB00rd6wPl.gAKXuCUf2HviERZRA9jT2eodO8ooXRCxChr.', 'hegmann.sedrick@example.com', '340.935.8973', '5', '4', '2018-05-22 05:48:23', '2018-05-22 05:48:23'),
(9, 'Eino Rohan', 'idell78', '$2y$10$nLPW5iAH1Z6avUEqRQ5Pi.6UYtjVXRoaDR.BNaNsbE7PmN6O7N2ie', 'scottie.goodwin@example.org', '1-609-699-7602 x752', '1', '5', '2018-05-22 05:48:23', '2018-05-22 05:48:23'),
(10, 'Prof. Yasmeen Brakus', 'kiehn.rene', '$2y$10$GsJHpcnweSZDJkpenr7WzuYF.oTmulwux8yR8LWub665fKCn4UzHy', 'erich.harris@example.net', '319-518-7698 x8754', '0', '2', '2018-05-22 05:48:23', '2018-05-22 05:48:23'),
(11, 'Mohamed zead', 'zead', '$2y$10$qd6.TWoctULegPRO5vZ1r.bFYWe6oGjShTM8uhsn5BIUGVMYNCLs6', 'zead99@gmail.com', '01003616844', '2', 'First', '2018-05-22 05:48:43', '2018-05-22 05:48:43');

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
(1, 'dentist', '2', '80', '1', '2018-05-22 05:48:27', '2018-05-22 05:48:27'),
(2, 'dentist', '2', '120', '3', '2018-05-22 05:48:27', '2018-05-22 05:48:27'),
(3, 'Surgery', '4', '120', '1', '2018-05-22 05:48:27', '2018-05-22 05:48:27'),
(4, 'dentist', '3', '100', '3', '2018-05-22 05:48:27', '2018-05-22 05:48:27'),
(5, 'medical tools', '2', '80', '5', '2018-05-22 05:48:27', '2018-05-22 05:48:27'),
(6, 'dentist', '4', '100', '1', '2018-05-22 05:48:27', '2018-05-22 05:48:27'),
(7, 'Surgery', '3', '120', '2', '2018-05-22 05:48:27', '2018-05-22 05:48:27'),
(8, 'medical tools', '1', '80', '3', '2018-05-22 05:48:27', '2018-05-22 05:48:27'),
(9, 'medical tools', '4', '200', '4', '2018-05-22 05:48:27', '2018-05-22 05:48:27'),
(10, 'pharmacy', '2', '200', '3', '2018-05-22 05:48:27', '2018-05-22 05:48:27');

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
(1, 'theodora48', 'rickie62@example.org', '$2y$10$.Mj2xV3pQ/J.D3uxz8mhzOtrk6WzZm70/gO1nJtJWazD1iZnXxGk.', '5', 'gXvyxCtulVxeA0suBQ9QbGp5mYSXIa5pevUs5bfMrlAiWePN0TpNOcz05Nal', '2018-05-22 05:48:21', '2018-05-22 05:48:21'),
(2, 'schmeler.lonie', 'jayson86@example.com', '$2y$10$dCxoeHUkpsDGkPgiBTIkAuHV2tNMCTwG7m0h12F5LrDyuedeIsrjC', '3', 'O2pzlCTWS0CJydsJgxWNXqpOeMDp3alyr1kGtbV1o7dvJzHm5BokLfLAcRZb', '2018-05-22 05:48:21', '2018-05-22 05:48:21'),
(3, 'pascale.bednar', 'lebsack.raheem@example.org', '$2y$10$EG9hfFq4bfal4r9fZjpa3O4SJDT9HTURFfBiATIrKCbcEVqJz05eu', '1', 'ReAG9Omcurscish4WxyQDQxx0VQGbp6sqoKw9mCvPVVXVJopvHyIHZm9kuLG', '2018-05-22 05:48:21', '2018-05-22 05:48:21'),
(4, 'vkemmer', 'telly16@example.com', '$2y$10$nCVDss3aA1XNGsenq0S.iODrrzO2ETVhV6M./Yx3.rOIhqXZxYs5.', '5', 'hFFGUeAa4ggakmCBnu2xP7prEE2ZUmXBGDHYduXzCfh6t4gO7X6wV52hmDeV', '2018-05-22 05:48:21', '2018-05-22 05:48:21'),
(5, 'romaguera.elisa', 'ajerde@example.net', '$2y$10$vVUkV2HSIFAoKRt2/TIZt.dE2ebxTUB0fMkkWYBmymrVTrHsOfb0e', '2', 'kxL4apT0NB8yv6syKCd8Tg8XXrbfJZ5wYmAQyaI2d4hiJwFRpgNXR479dr99', '2018-05-22 05:48:21', '2018-05-22 05:48:21'),
(6, 'zthompson', 'tgaylord@example.com', '$2y$10$h/J1CfkAx1cqz95MPTz9sugrNtwxKqUL4PwzT8HF0aKVM.tXS4yk6', '4', '4w1OfkAuqbmPATIGv2rgllhKojwMO7ruTqk992asO6OVD68gBLlEx2AeA2vm', '2018-05-22 05:48:21', '2018-05-22 05:48:21'),
(7, 'berniece.bechtelar', 'roberta.rowe@example.net', '$2y$10$FetG8NIAnhnOLcMmHgyagunpoTqlQ0SJ/Lte355L3RRRKINfLSw4i', '1', 'tSadRbtfXb2yNY7YoChDZfwvZTAIdLdPPESUKfyr7E4InSht2nfcw6Vllhpd', '2018-05-22 05:48:21', '2018-05-22 05:48:21'),
(8, 'davis.emmanuelle', 'sydnie.aufderhar@example.net', '$2y$10$yxUendA9gijrcIIUpZIrwOggTtB7wSoPnnMXI1pZX7gjuN0z1QGBS', '2', 'wR6LQeTkBtoxkMoNFoAYXyOl5jrdSKlxhdDR14GKjY2KDFPEoBITmPwihcQa', '2018-05-22 05:48:22', '2018-05-22 05:48:22'),
(9, 'kozey.gerhard', 'brionna.oberbrunner@example.org', '$2y$10$rYd/mp4s5q3xRLYdDeZraOmp.3mbgDXrhs2LVKZKWkq0tLM0Abvgi', '4', 'J9nfag9xAN7HHmkRBaVZgczi3cXuCXDD0JBgo0rGpDlnO4cHRbFPDBjGgcWD', '2018-05-22 05:48:22', '2018-05-22 05:48:22'),
(10, 'felton58', 'veum.kaya@example.com', '$2y$10$lB5r7q1Oyfc..cnjhy.uduQ.Cw74jrSHcyynPGMdTepUtcFTyWxp2', '5', 'F5BZhZ7RTf88Okz3q4N7Voo3ETtRpHxg2a8CxZOgrkJbJnRl4Rp0Qa5HTuXd', '2018-05-22 05:48:22', '2018-05-22 05:48:22'),
(11, 'zead', 'zead99@gmail.com', '$2y$10$iX6X2wRkVzIcZ2xstdP79.Lg99uil3DF2ugt0EEScRmYMiUaADQ0a', '2', NULL, '2018-05-22 05:48:36', '2018-05-22 05:48:36');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `questions_by_students`
--
ALTER TABLE `questions_by_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `set_questions_by_admins`
--
ALTER TABLE `set_questions_by_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `stduents_in_locations`
--
ALTER TABLE `stduents_in_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `student_models`
--
ALTER TABLE `student_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
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
