-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2018 at 01:32 AM
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
(1, 'Refaat Aish2', 'refoUpdate', '$2y$10$LIU0ZDJb2vMY6f1Nri.ivOmQdDaKM3Lb7RkPd94XU81NCPiyfsmze', 'refo@gmail.com2', '010036168442', 'Math2', '2018-03-17 07:55:09', '2018-04-10 03:13:49'),
(2, 'Mrs. Meta Funk', 'everette.heidenreich', '$2y$10$tdZ7OWsinJN6EQ5V/XyA/u.ghK/OHgwgvtmrwM5zy4JG7cKuMlxxu', 'oblanda@example.org', '1-935-295-9603', 'physics', '2018-03-17 07:55:09', '2018-03-17 07:55:09'),
(3, 'Weston O\'Kon', 'cleo06', '$2y$10$s.2F4pcul5rnnRbRXYO4u.OwdzNg0rCMw6s7tGDzMf73xP4TegNAq', 'schoen.kathlyn@example.com', '+1-803-536-4447', 'physics', '2018-03-17 07:55:09', '2018-03-17 07:55:09'),
(4, 'Alia Hickle Sr.', 'ulabadie', '$2y$10$v0c0K0HdMqTmOb5qpPcRfu1kYVbSPcX43U/vLoUE6KIJDpNIX2U.u', 'snader@example.net', '1-212-447-7745', 'physics', '2018-03-17 07:55:09', '2018-03-17 07:55:09'),
(5, 'Tabitha Schneider', 'kschultz', '$2y$10$SdznDwOD95rKWnTt210dvOYvfLSLGIbpV0fJQBjmYI4x41VKAaYp2', 'general02@example.com', '660.465.0750', 'Math', '2018-03-17 07:55:09', '2018-03-17 07:55:09'),
(6, 'Cathy Halvorson', 'wendell.shields', '$2y$10$AQ7G3J2at1owpBDYfOKXzuhSes8dC9yWHB9dv7ji30xiia2bEBR46', 'hstoltenberg@example.net', '+1-503-782-7143', 'Medical tools', '2018-04-10 06:25:26', '2018-04-10 06:25:26'),
(7, 'Augustine Dach', 'sjohnson', '$2y$10$8z32Fo268qIK6QanDGo.7OA/5sz1GAM.hctNUnR/r6MQ9ezXHmzSG', 'baylee25@example.org', '1-675-367-8017 x9280', 'Medical tools', '2018-04-10 06:25:26', '2018-04-10 06:25:26'),
(8, 'Henderson Brakus', 'stracke.layne', '$2y$10$M9IpMaTBaQMRHDXH3OXPCOiGODD5dlJR/cgTL0Y77hy5BZd0AsjLO', 'hettie.anderson@example.org', '+18794226275', 'Math', '2018-04-10 06:25:26', '2018-04-10 06:25:26'),
(9, 'Pete Smitham PhD', 'imedhurst', '$2y$10$bS87Nzh7/VESt2vGRAag5.iDNuGlRU2FK3qlUowjrm.alT67YJh3S', 'melyssa35@example.net', '1-416-789-8790', 'physics', '2018-04-10 06:25:26', '2018-04-10 06:25:26'),
(10, 'Dr. Johnnie Yost', 'cleta.fahey', '$2y$10$RmcKxHebCM9W0Z1elGZSJ.ToZQweXnb7cLYosqD.E81uBX1fr9Tki', 'jenkins.lela@example.com', '(551) 871-0128 x7822', 'Medical tools', '2018-04-10 06:25:26', '2018-04-10 06:25:26'),
(11, 'Mckayla Zemlak', 'meaghan.hartmann', '$2y$10$tKi0nuNYLvocDMJdC9Ar3O2mCu1sAV7nzCOMPZenTniRyt/J0.onO', 'geichmann@example.com', '(628) 536-4925 x4132', 'Math', '2018-04-10 06:26:09', '2018-04-10 06:26:09'),
(12, 'Cierra Rempel', 'ena.hoppe', '$2y$10$VmCAc.Qk5zirwtxsNa3sueTWgsO7YYv4CmcrwzPn/EkKf6EeggIdm', 'droob@example.net', '987.764.5958 x9579', 'physics', '2018-04-10 06:26:09', '2018-04-10 06:26:09'),
(13, 'Justyn Johns', 'squitzon', '$2y$10$I4Ske6LQSUcYEXw1SATxdulOQdOTE2A0vOaslWuZdNagq7dvIwJ5i', 'zjacobs@example.net', '1-979-803-0129', 'physics', '2018-04-10 06:26:09', '2018-04-10 06:26:09'),
(14, 'Bulah Mann', 'progahn', '$2y$10$QuJAXImW4z3DaTyszh0VZ.jyL35rKJS07eM7vbzqyM26xMgjz5p4q', 'deondre.dickens@example.com', '659-487-9752', 'physics', '2018-04-10 06:26:09', '2018-04-10 06:26:09'),
(15, 'Miss Rosie Heaney DDS', 'kuphal.bo', '$2y$10$BKD3npbw9ImFNl91GP8POuyNuvpfSXBSaP9IpZr9axhOBSIjTgtiC', 'willms.ava@example.net', '(913) 531-0349', 'Medical tools', '2018-04-10 06:26:09', '2018-04-10 06:26:09'),
(16, 'Laurence McKenzie', 'jamar.kohler', '$2y$10$zobWdg4y.TKr45uMIC5bE.jIHSgq.lTeb5VkhqUhbywqfgWgypAUe', 'earnestine78@example.com', '+1.667.379.8978', 'Medical tools', '2018-04-10 06:28:40', '2018-04-10 06:28:40'),
(17, 'Bernadette Batz', 'mharvey', '$2y$10$59Rl5Z4rgm5fOT//DSBItemU69oW4gMcYoiypEOizbv..TDeancpm', 'ecarroll@example.com', '+13635752237', 'physics', '2018-04-10 06:28:40', '2018-04-10 06:28:40'),
(18, 'Maurine Goodwin', 'pkuhlman', '$2y$10$rpbh4ASeZCF.Al2RGVMfI.lBRXzXGYWfshFOuEAhoR/vsxkc.mK3i', 'garth.hintz@example.org', '1-329-409-2186', 'Math', '2018-04-10 06:28:41', '2018-04-10 06:28:41'),
(19, 'Bryana Krajcik', 'pinkie.kreiger', '$2y$10$obvapZDqUal1COshPU1LOu4U4.7goaAqtGSfIDejmG3Nm.w1aX9S2', 'susana.robel@example.net', '1-593-340-3724', 'Math', '2018-04-10 06:28:41', '2018-04-10 06:28:41'),
(20, 'Dr. Jaylon Stehr', 'troy37', '$2y$10$MQBVj0E4nmvdBI8wzS9XsOjZsqiObO3oQ2V1Ar/vooK0OuzuL.a2C', 'keeley.nikolaus@example.org', '696.628.8023 x3602', 'Medical tools', '2018-04-10 06:28:41', '2018-04-10 06:28:41');

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
(16, '2018_03_16_234828_create_instructors_table', 1),
(17, '2018_04_09_214403_create_set_questions_by_admins_table', 2);

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
(1, 'Give your feedback about instructor ?', 'bad', 'Excellent', 'very good', 'bad', 'bad', '2018-04-10 06:28:41', '2018-04-10 06:28:41'),
(2, 'Give your feedback about content ?', 'good', 'very good', 'bad', 'very good', 'very good', '2018-04-10 06:28:41', '2018-04-10 06:28:41'),
(3, 'Give your feedback about content ?', 'bad', 'very good', 'bad', 'very good', 'bad', '2018-04-10 06:28:41', '2018-04-10 06:28:41'),
(4, 'Give your feedback about lecture ? ', 'bad', 'very good', 'good', 'very good', 'bad', '2018-04-10 06:28:41', '2018-04-10 06:28:41'),
(5, 'Give your feedback about content ?', 'very good', 'bad', 'Excellent', 'Excellent', 'bad', '2018-04-10 06:28:41', '2018-04-10 06:28:41');

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
(1, 'Refaat Aish', 'refaat101', '$2y$10$nns1BDHgkdL60o9DHfVUj.hc1CWoltoeIVqf7dhdf5oy8l8gluXQa', 'refo@gmail.com', '01003616844', 'First', '2018-03-17 07:55:08', '2018-04-10 03:18:41'),
(2, 'Sherman Nienow', 'hillard.glover', '$2y$10$bFxCtZRxTejV09uSld7MReOVt5FfxYa9rJY7UJDBFpiu8ew.fpU1K', 'reinhold23@example.com', '+1-539-282-8894', 'third', '2018-03-17 07:55:08', '2018-03-17 07:55:08'),
(3, 'Alfonso Eichmann', 'orn.elyssa', '$2y$10$GM7AjSaTo62U0bgLX0sGseVWbGp9d3wFStu.6.pcWxAwKd7dCUKEq', 'sondricka@example.org', '1-208-635-5992 x34623', 'second', '2018-03-17 07:55:08', '2018-03-17 07:55:08'),
(4, 'Dangelo Klein', 'marquise.crist', '$2y$10$u1Meu1Mw6RpEDytBGXlj1.hEDgxANr4XN8ueIPxL65voJiLq7uOY.', 'epredovic@example.net', '954.424.8118 x74080', 'first', '2018-03-17 07:55:08', '2018-03-17 07:55:08'),
(5, 'Sophia Paucek', 'feeney.taylor', '$2y$10$UE1InjJ24mHyjoVvoZDg3O7nU3otHSgBKC9wU1jPgN7v7IYeDgdca', 'crenner@example.org', '(535) 887-4038 x71491', 'third', '2018-03-17 07:55:08', '2018-03-17 07:55:08'),
(6, 'Miss Serenity Schmeler', 'diego.zboncak', '$2y$10$MLbK7.RMlZVp9HGjkY/9Xe6haL3sS9QCPjKmdXkZuCmaqkPnvHjMa', 'reilly.linda@example.org', '1-610-542-5944 x3134', 'first', '2018-04-10 06:25:25', '2018-04-10 06:25:25'),
(7, 'Braulio Bechtelar III', 'courtney61', '$2y$10$gadBeH7WlINJg.6zGnCUBujYAumy/VzEPCI8aJtu0RU9ivzWOex9.', 'marilyne05@example.net', '1-753-379-0554 x51320', 'third', '2018-04-10 06:25:25', '2018-04-10 06:25:25'),
(8, 'Gustave Nader', 'vaughn.kreiger', '$2y$10$WSfRGNluoV6LGWzD9blcQu6lzXpJe55fiYx9kwd7vHaPBsEwTsUQe', 'gkerluke@example.com', '(628) 246-9008', 'second', '2018-04-10 06:25:25', '2018-04-10 06:25:25'),
(9, 'Destiney Hane MD', 'zoila.ferry', '$2y$10$i3ERzNRSLDPX8hOiUscJbuR.AZ2AMN/wa2JR0ieIzDQYrtIyf19GC', 'nathen.schimmel@example.org', '1-610-572-4940 x67149', 'third', '2018-04-10 06:25:25', '2018-04-10 06:25:25'),
(10, 'Johnathon McKenzie', 'fae83', '$2y$10$VDbxgJ62cLEgjS9/2C1xVu1vCxqa.Uygzo9FUbc6DWqXTqWbLpC1u', 'betty23@example.org', '+1-796-341-9689', 'second', '2018-04-10 06:25:25', '2018-04-10 06:25:25'),
(11, 'Mohammed Sanford', 'immanuel62', '$2y$10$fLGiTRR3R5//00MdYedOHe550UUjDu2PM09JjE4XePYH7UNkBOMlq', 'jacinthe.renner@example.com', '335-941-1527 x805', 'third', '2018-04-10 06:26:08', '2018-04-10 06:26:08'),
(12, 'Aurelie Miller', 'tommie79', '$2y$10$.0CDvHQ85oEwoWaKz87wN.ou5MfaUNf0LKsFwXhJceAugKaJukYqG', 'rosalia57@example.net', '1-334-237-6210 x914', 'first', '2018-04-10 06:26:08', '2018-04-10 06:26:08'),
(13, 'Kaylie Schroeder', 'welch.owen', '$2y$10$QuN8PY3Y9cn8oNpwUeVgJeHMPBUjJ3bfNmf6OanIPtWhRjTguQK8y', 'rebekah15@example.org', '1-483-757-4299 x0860', 'third', '2018-04-10 06:26:08', '2018-04-10 06:26:08'),
(14, 'Ottilie Schmitt MD', 'pdubuque', '$2y$10$FMtIdPixIsdl4D.y35puFeWkF7NBPSRoa1fodiTZIu8MKMLDeNNTa', 'rylan.gusikowski@example.org', '(390) 374-0973 x96853', 'first', '2018-04-10 06:26:09', '2018-04-10 06:26:09'),
(15, 'Daija Daugherty', 'yabshire', '$2y$10$7UlkCKMbp.pYDXn9kZyeMulRwpBL0AEivhD52QYKIjzD8Jh9hKhFK', 'koepp.brent@example.org', '818-245-3541 x225', 'first', '2018-04-10 06:26:09', '2018-04-10 06:26:09'),
(16, 'Miss Idella Glover Jr.', 'rose86', '$2y$10$KHzrx0up9KlEHO/8aH6Dk.4T4ASzkSu6jR63iwX2dS2DpXNxkjfCq', 'hegmann.sven@example.com', '621.893.1524 x8098', 'second', '2018-04-10 06:28:40', '2018-04-10 06:28:40'),
(17, 'Vicky Cummerata', 'dario.hoppe', '$2y$10$4rpM5CutAsNZndCo8mwJvOHlQwpFT198Of.CBRxmGsPQ9cgpqPhge', 'pbailey@example.net', '1-859-405-9720 x14191', 'second', '2018-04-10 06:28:40', '2018-04-10 06:28:40'),
(18, 'Irwin Rohan III', 'clemens.ankunding', '$2y$10$Ti/BiXwe6g8o8CH0gtjiJeM8z3x4J9mG5kZ7ZnpSreWb8nzR1gbbq', 'sthiel@example.org', '975-265-4010', 'second', '2018-04-10 06:28:40', '2018-04-10 06:28:40'),
(19, 'Ms. Stella Pfeffer', 'ettie.klocko', '$2y$10$mWhLk8wz8c.OBQhbk7D82.QCgmeamd819BLncCkXKEIzc.yYCzibK', 'emmanuelle.murray@example.com', '(429) 601-7552', 'third', '2018-04-10 06:28:40', '2018-04-10 06:28:40'),
(20, 'Lauryn Carroll DDS', 'dwuckert', '$2y$10$4QDu/zlL7A/zBDFRHZe45eGZROtoX5BSylgrmrTFiLYVovaUm8gbC', 'mariane78@example.com', '1-758-605-8631', 'second', '2018-04-10 06:28:40', '2018-04-10 06:28:40');

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
(5, 'Muriel Boyer', 'lang.athena', 'tatum30@example.com', '$2y$10$1maFV37C523UtgdfAYcdXewO20.XD/LSBKgBsq0CJPMl8.NQZu6Ry', '8KOtcIu4ck', '2018-03-17 07:55:08', '2018-03-17 07:55:08'),
(6, 'Velda Ritchie', 'antonetta.durgan', 'everett.treutel@example.com', '$2y$10$7Xf8pwYzzBznHNpfPGHSM.Xf2u6F4cgmTuYn0UyeBpkJPuQTRzcVm', '0N9LI1ToMg', '2018-04-10 06:25:24', '2018-04-10 06:25:24'),
(7, 'Dr. Alyce Lesch Jr.', 'hyatt.carmella', 'april.haley@example.net', '$2y$10$lZ/Mh3kH1r2wtJ3LCKhVVemjIh91Dw5f9q5psQZ60FvZuy2Ier1K2', 'zN97o6i8VF', '2018-04-10 06:25:24', '2018-04-10 06:25:24'),
(8, 'Henderson Terry', 'sterling03', 'botsford.doyle@example.com', '$2y$10$1sz4/BqHf4Z3UxBOGEud9.NgmKy3xIen6svPBLe9giimfmOvMjjVK', 'LpxPIuBaDb', '2018-04-10 06:25:24', '2018-04-10 06:25:24'),
(9, 'Dr. Ada Jast', 'ckiehn', 'sherman.nader@example.net', '$2y$10$gZXmiLcEDG3sWGQztohkSOx2BE8iWFP8rQBqYqv6zCpbcx2KN7w/W', 'UCFxPMms36', '2018-04-10 06:25:24', '2018-04-10 06:25:24'),
(10, 'Kamron Friesen', 'uhermann', 'mleffler@example.net', '$2y$10$GnxUh1uvkusmUaHEn.U1me7hM1Z3KjRYgX0rMFQuCePq903wJBWAm', 'hrrYvIHBPe', '2018-04-10 06:25:24', '2018-04-10 06:25:24'),
(11, 'Aniya Bauch', 'harold.daugherty', 'aankunding@example.com', '$2y$10$.q2SMjX4zg8U0xZ7kc/j/.M0O2HrY6XZKt66.gOWQA2EcwuawFkBS', '3mRZzn8V1B', '2018-04-10 06:26:07', '2018-04-10 06:26:07'),
(12, 'Dawn Gusikowski', 'zkulas', 'hschultz@example.org', '$2y$10$iw5Oho7hGQ9MYriX2Afb7.UaZkB2xGuPLS.Dh0qmpgnATKZs4aM.W', 'Ub4UobnEBJ', '2018-04-10 06:26:07', '2018-04-10 06:26:07'),
(13, 'Prof. Jonathon Wolf V', 'tcollier', 'demarco61@example.org', '$2y$10$r0apD2ZYvYNqJclQbwdif.5nE2HH8xk49zOsPH9SUajp8fkXDn6h6', 'IQMX2RSSCK', '2018-04-10 06:26:07', '2018-04-10 06:26:07'),
(14, 'Devin Okuneva PhD', 'asia35', 'hertha.jacobson@example.org', '$2y$10$Em4jE/YvdsuU45IS92830uM5XdwCp2dCi7hx2kDuAHhjofr4g/woC', 'BHELVCj1YD', '2018-04-10 06:26:08', '2018-04-10 06:26:08'),
(15, 'Arvilla Upton', 'elliott.will', 'cory.satterfield@example.com', '$2y$10$FnnObkbvQBzX3PvGtmfY2eYVrgjopthTUHoP.ApOG3zjUJBfXpKDC', 'y4UCaN8pBn', '2018-04-10 06:26:08', '2018-04-10 06:26:08'),
(16, 'Mittie Thompson', 'kirstin31', 'tatum.lakin@example.com', '$2y$10$IskVd0SQ.peZX/U03BfYuuMPwYFTHTW2uRgPnR/.rQG1DxNUixo72', 'niddo5ZPRR', '2018-04-10 06:28:38', '2018-04-10 06:28:38'),
(17, 'Tess Stark', 'wisoky.stella', 'kuphal.jensen@example.net', '$2y$10$lNc3LvfG2wmyAIQCvnCPPObME5W6sPPNvkIWXG1EpLd5gZcOnhKUC', 'QB0w1ONZR0', '2018-04-10 06:28:39', '2018-04-10 06:28:39'),
(18, 'Kolby Mayert', 'gladys.mills', 'ana.jast@example.org', '$2y$10$E9CxQ.K8IywhffrX9ErEGuv0yP1a33O0CT/NozBbxmraNGVmZt3jq', 'YgH6QXnzKf', '2018-04-10 06:28:39', '2018-04-10 06:28:39'),
(19, 'Chester Farrell', 'dhintz', 'oreilly.berniece@example.org', '$2y$10$f/9RzVzgAJa2wyzIesOaA.Hy9wGcV4w.yBMLzq3A8AOF5D.UF4NWK', 'ivEwaZ1hi7', '2018-04-10 06:28:39', '2018-04-10 06:28:39'),
(20, 'Sabryna Deckow IV', 'hstanton', 'lromaguera@example.net', '$2y$10$1S3IbHdXvpTIzEr5T2JwdOhfGkfnhALkN2HfD/v3amIc6pfUDTxRG', 'tAUtvxt9nh', '2018-04-10 06:28:39', '2018-04-10 06:28:39');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `set_questions_by_admins`
--
ALTER TABLE `set_questions_by_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student_models`
--
ALTER TABLE `student_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
