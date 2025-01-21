-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 21, 2025 at 10:55 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lavaui2`
--

-- --------------------------------------------------------

--
-- Table structure for table `appoint`
--

CREATE TABLE `appoint` (
  `appoint_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `appoint`
--

INSERT INTO `appoint` (`appoint_id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address`, `appointment_date`, `appointment_time`, `service_id`, `status`) VALUES
(64, 42, 'Lans Lorence', 'Navarro Hernandez', 'mindconnect@gmail.com', 'ddsadas', 'Ibaba West', '2024-12-17', '10:00:00', 2, 'Cancelled'),
(65, 42, 'Lans Lorence', 'Navarro Hernandez', 'admin@gmail.com', 'ddsadas', 'Ibaba West', '2024-12-15', '09:00:00', 1, 'Cancelled'),
(66, 42, 'dasdsa', 'dasdas', 'dasd@gmail.com', 'ddsadasdasd', 'dasdasdsa', '2024-12-15', '11:00:00', 5, 'Cancelled'),
(67, 42, 'dasd', 'sadsa', 'dsadsad@gmail.com', 'sadasdsadas', 'dasdsadasdsadas', '2024-12-15', '13:00:00', 6, 'Cancelled'),
(68, 46, 'janss', 'martinez', 'janss@gmail.com', '98123123322', 'nacoco', '2024-12-16', '09:00:00', 1, 'Done'),
(69, 34, 'nw', 'ew', 'new@gmail.com', '09123129322', 'malungay', '2024-12-16', '15:00:00', 1, 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `cancelled_appointments`
--

CREATE TABLE `cancelled_appointments` (
  `cancel_id` int NOT NULL,
  `appoint_id` int NOT NULL,
  `user_id` int NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `cancellation_reason` text NOT NULL,
  `cancelled_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cancelled_appointments`
--

INSERT INTO `cancelled_appointments` (`cancel_id`, `appoint_id`, `user_id`, `fname`, `lname`, `email`, `appointment_date`, `appointment_time`, `service_id`, `cancellation_reason`, `cancelled_at`) VALUES
(1, 57, 42, 'Lans Lorence', 'Navarro Hernandez', 'mindconnect@gmail.com', '2024-12-15', '08:00:00', 3, 'Health Issues', '2024-12-15 13:49:59'),
(2, 58, 42, 'Lans Lorence', 'Navarro Hernandez', 'mindconnect@gmail.com', '2024-12-16', '09:00:00', 2, 'Schedule Conflict', '2024-12-15 13:51:04'),
(3, 59, 42, 'rhyan', 'Hernandez', 'mindconnect@gmail.com', '2024-12-17', '08:00:00', 3, 'Transportation Issues', '2024-12-15 13:51:56'),
(4, 60, 42, 'Lans Lorence', 'Navarro Hernandez', 'mindconnect@gmail.com', '2024-12-16', '09:00:00', 3, 'Health Issues', '2024-12-15 14:08:57'),
(5, 63, 42, 'Lans Lorence', 'Navarro Hernandez', 'mindconnect@gmail.com', '2024-12-16', '09:00:00', 1, 'Personal Emergency', '2024-12-15 14:34:56'),
(6, 70, 34, 'alsmdpkasmd', 'asdnasdm', 'g@g.c', '2024-12-17', '14:00:00', 6, 'Schedule Conflict', '2024-12-16 02:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `message` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `contact`, `message`, `created_at`) VALUES
(1, NULL, 'jerome', 'lavalust@gmail.com', '09982863340', 'ang pogi', '2024-11-26 21:20:18'),
(2, NULL, 'jerome', 'jerome@gmail.com', '09123129322', 'qwe', '2024-11-26 21:22:54'),
(3, NULL, 'jerome', 'jerome@gmail.com', '09123129322', 'qwe', '2024-11-26 21:23:39'),
(4, NULL, 'gelo', 'gelo@gmail.com', '1231231', 'asdasd', '2024-11-26 22:51:45'),
(5, NULL, 'jans', 'firedown1231@gmail.com', '09123129322', 'ang pogi ng taga backend', '2024-12-02 09:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `reset_token` varchar(10) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `password_reset`
--

INSERT INTO `password_reset` (`id`, `email`, `reset_token`, `created_on`) VALUES
(1, 'firedown1231@gmail.com', 'oHI0xTsr3a', '2024-12-07 03:44:45'),
(2, 'firedown1231@gmail.com', '2G1qCSQTIo', '2024-12-09 22:40:07'),
(3, 'sachi@gmail.com', '5hwuC1OzvF', '2024-12-09 22:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int NOT NULL,
  `service_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`) VALUES
(1, 'Dental Checkup'),
(2, 'Teeth Cleaning'),
(3, 'Filling'),
(4, 'Root Canal Treatment'),
(5, 'Teeth Whitening'),
(6, 'Orthodontics'),
(7, 'Extraction');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int NOT NULL,
  `user_id` int NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `session_data` varchar(70) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `user_id`, `browser`, `ip`, `session_data`, `created_at`) VALUES
(50, 6, 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '::1', 'd8134337577364c3668c231d671d0f025eeb8f51ab4def7548ea9e0e5714d212', '2024-12-10 01:27:35'),
(58, 34, 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '::1', '4a0f6fca6dd26ec67caa85b7c70540ebc5cb4c4d9a49d895fdd3a8f3a212cb21', '2024-12-10 02:48:40'),
(62, 34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '::1', '331b9ac9cf35c15ef1566623806db84982fd2ea8acef5f84386c3f650c52b174', '2024-12-10 17:09:19'),
(67, 34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '::1', '1ca1f1e23faf61bca18ecf13ce1ae8273b6d4ce84c6c37089c00fe4e2a6334a2', '2024-12-11 11:17:18'),
(76, 34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', '072ec79e24f1f6011e03d1a6a0d68075e2053b9d7ad27de16cf6088782ea4a58', '2024-12-14 09:10:37'),
(78, 34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 'c5c1ba3d8c1fc2f73b1dc25f5753fe05e4828c1f417e807fff2ca340676545d4', '2024-12-14 09:58:37'),
(81, 39, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 'b85a6078b5e511c85263246d7c96be79df8c1005aad937b478c63ef580462ca3', '2024-12-14 13:33:16'),
(82, 34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', '8673808e8e10d6402125e163347c969511f44320d598eaa7b7ee517dea017e75', '2024-12-14 14:29:32'),
(83, 34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', '6db29ade6a634a36c0a786d42609f3537f9b08a0148b7ec34ac7fd1e0e3a25e3', '2024-12-14 14:41:19'),
(84, 34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 'ee24d1ee50b00d4be43084a9218462f0643ab44a546bb050bde6c9d88b4c2b66', '2024-12-14 15:01:15'),
(86, 34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 'd9bd0889d3c67b06ba9ff646f0339f1201960552032ca0651ff669cf0d4ba502', '2024-12-15 19:09:41'),
(88, 34, 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320 Edg/131.0.0.0', '127.0.0.1', '4a19fa1e2f1148279f4a578029d43383de228fcc02497c94d9b7fbd87e480afb', '2024-12-15 19:23:45'),
(89, 34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', '874b9088eaff3cc261258c95af77cceb8ba087f59e5b87549459dcc07fbdea29', '2024-12-15 19:25:53'),
(90, 42, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 'f503f33c6c61d2fc873b219a0aeffd07093e0e29ca5387289c5216340dbbf017', '2024-12-15 20:00:08'),
(91, 42, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 'd7fb8ecc7655503635be6a4b6e204c8fafdb0b5003debaec36a88c3c9e78c3fe', '2024-12-15 20:05:17'),
(93, 34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '::1', 'ef9b9a12f0ab899aec6d5dcef5018ebf3826e23c8f1b3e42adc86f4280345ace', '2024-12-16 00:44:13'),
(96, 50, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '::1', '628cfdfdfe2979ab8ec81e196f1b0fddcde9f16533ea0e2e5cb1cabd7bb05083', '2025-01-21 18:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_token` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `google_oauth_id` varchar(255) DEFAULT NULL,
  `role` enum('user','admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `address` text,
  `street` varchar(100) DEFAULT NULL,
  `barangay` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_token`, `email_verified_at`, `password`, `remember_token`, `google_oauth_id`, `role`, `created_at`, `updated_at`, `first_name`, `last_name`, `address`, `street`, `barangay`, `city`, `zip_code`, `phone_number`) VALUES
(33, 'jeromepogi', 'firedown123@gmail.com', '17672ed0b51619c705e74079105c0679d29754bdae1dff35b2edd5191d42f141b3eacf49070c8a6d13cda70cbf124a7799c1', '2025-01-21 02:49:37', '$2y$04$HbJXVGQ.MKXNmpKsj4ynuebV7gjTt5ADBbXTu8FnNvXJuo8dLkLoq', NULL, NULL, 'user', '2024-12-09 17:56:39', '2025-01-21 10:49:37', 'jerome', 'martinez', NULL, 'malungay', 'nacoco', 'calapan', '5200', '09123129322'),
(34, 'sachi', 'sachi@gmail.com', '75e5c1c48312b54fd394a8bdcfb5a3be41aa3da061c6ebf0528178eb104b71b0475a7cd17dc8ef9c8fde40a7b31f3c4e8812', '2025-01-21 02:49:37', '$2y$04$VlyoPBgBncM3ApMrrNK8ruxSnttd59EQfKjEQ5gBAph8mgfdRlWZW', NULL, NULL, 'admin', '2024-12-09 17:57:43', '2025-01-21 10:49:37', 'sachi', 'leyesa', NULL, 'sa', 'sa', 'sa', '5200', '09123123123'),
(35, 'newnew', 'new@gmail.com', '1a1d89babbb54b0366703be3c32f9f010040c0239b96ea6010079f989fdeacb83ded845af378d6b8ebd5b26188629202caee', '2025-01-21 02:49:37', '$2y$04$lK9Vhb7EyMK2m7t1K3X6Aeg3QIoSr2w3X2N5InS6AZk7nc8o/8SqK', NULL, NULL, 'user', '2024-12-09 17:58:06', '2025-01-21 10:49:37', 'nw', 'ew', NULL, 'malungay', 'nacoco', 'calapan', '5200', '09123129322'),
(36, 'jnsspot', 'jnss@gmail.com', 'cc481598d49b889ab5580ef5eb237bcfbf77c6dbbeb635c8add82069c079f5bd1d69b3b60e0716310e77b97fc5ac54215bbb', '2025-01-21 02:49:37', '$2y$04$YUKW9zRjH3sXjMdQv72XXOqDQM4Dt.I5gd/7R0wlBSc3OH8GRb0CW', NULL, NULL, 'user', '2024-12-10 13:57:20', '2025-01-21 10:49:37', 'janss', 'martinez', NULL, 'nacoco', 'malungay', 'calapan', '5200', '98123123322'),
(37, 'Angelo', 'jelocolocado@gmail.com', '4ee6a566e052fd7a4c0cd35104bd248604b1d1b38b4022133000ce707519e114a42c765f882a5ff82a25d5d9842fb0a9fa12', '2025-01-21 02:49:37', '$2y$04$HJfYCL0w5a0WjQTTr/DksuttcR3dhsn8bf9YlyyM2vj2b9y7l5Yv6', NULL, NULL, 'user', '2024-12-11 03:12:49', '2025-01-21 10:49:37', 'Angelo', 'Barbacena', NULL, 'balingayan', 'nacoco', 'calapan', '5200', '+639982863340'),
(42, 'L4nszxc_09', 'lanslorence@gmail.com', '766d34f6f0c37acf2216488155006b02281cb63bde0c29eb9ce0ba493365bf92cfaf132ca2b1009568c5a2e0eda81f06d49a', '2025-01-21 02:49:37', '$2y$04$XbmV4ZYeak7pGY7i.ZzqX.VxZVhKbvhzwWs6OrMAod3ceCXWtfHlq', NULL, NULL, 'user', '2024-12-15 11:09:03', '2025-01-21 10:49:37', 'Lans Lorence', 'Hernandez', NULL, 'Ibaba West', 'dsa', 'Calapan City', '5200', '09123123123'),
(46, 'happy121', 'firedown1231@gmail.com', 'd934d56323250c102d7a915b311125f9f814b1ea444b0412c648c46d1190c7dfbdce0794b3a2d0c314dc2f3ef3f256c8119a', '2025-01-21 02:49:37', '$2y$04$lR3LXyoy6nkRf4cIzJfw/eA7MSPgzzV4/YY0F8vzoZOiq3hAsuNBO', NULL, NULL, 'user', '2024-12-15 16:42:12', '2025-01-21 10:49:37', 'jem', 'qwe', NULL, 'malungay', 'nacoco', 'calapan', '5200', '09123129322'),
(47, 'hampydampy', 'basic10122@gmail.com', '08a5b297ee4f46e0c656a20e735e58600a788c9a9a9ad27799cc78384da09e344fabeaad4bd9597e9f22fb00a195bd906dd0', '2025-01-21 02:49:37', '$2y$04$lxtaIf4SEQ5SC18nvyzPeOBU.Bi5LV/Ep5vab3Y.gRkNpbtdyfo8q', NULL, NULL, 'user', '2024-12-15 17:06:48', '2025-01-21 10:49:37', 'jem', 'martinez', NULL, 'nacoco', 'nacoco', 'calapan', '5200', '09123129322'),
(48, 'qweqweqwe', 'qwe@gmail.com', '8269ec1bf29fdc4b6376f50b63e3b13a41d58cb048c70badac478c7beb82fb06c2e3305dcf142161ec54e80c5d399868baa1', '2025-01-21 02:49:37', '$2y$04$d6K8/vtjPZnp.mdqvrFY9OS26j8gJbDQz4YkcKEP4EfmYjMPjfOBe', NULL, NULL, 'user', '2024-12-16 03:09:04', '2025-01-21 10:49:37', 'qweqweqwe', 'qweqweqwe', NULL, 'qweqwe', 'qwe', 'qwe', '5200', '12312312312'),
(49, 'jerome', 'janss@gmail.com', '7f37fc50ae70de0f5165019e51360389fa22aaa995c802e7897eb711ed5d8f332dac0156138604f023213dffb1dcb62510ae', '2025-01-21 02:49:37', '$2y$04$V.tXcUDwkrzxSvEDIahBYO/rwF2tMpRjkGrkTo7C42okBeeN9U4C.', NULL, NULL, 'user', '2025-01-21 10:41:49', '2025-01-21 10:49:37', 'janss', 'martinez', NULL, 'nacoco', 'nacoco', 'calapan', '5200', '98123123322'),
(50, 'erome', 'eromemartinez@gmail.com', '3ed4f261c6bbeccade967f757d4ec32e2e4e1c2750907f0f12cbaf278aafa369820f6525cded8422ee0b2d37164b49df5429', '2025-01-21 02:49:37', '$2y$04$/1W8zzR9sawKg4dddU0zJORSj2A/7HoO8leK7qCuLJtnL3vdan8m.', NULL, NULL, 'user', '2025-01-21 10:49:26', '2025-01-21 10:49:37', 'JEROME', 'MARTINEZ', NULL, 'nacoco', 'nacoo', 'nacoco', '5200', '09123129322');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoint`
--
ALTER TABLE `appoint`
  ADD PRIMARY KEY (`appoint_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cancelled_appointments`
--
ALTER TABLE `cancelled_appointments`
  ADD PRIMARY KEY (`cancel_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoint`
--
ALTER TABLE `appoint`
  MODIFY `appoint_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `cancelled_appointments`
--
ALTER TABLE `cancelled_appointments`
  MODIFY `cancel_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appoint`
--
ALTER TABLE `appoint`
  ADD CONSTRAINT `appoint_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`),
  ADD CONSTRAINT `appoint_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cancelled_appointments`
--
ALTER TABLE `cancelled_appointments`
  ADD CONSTRAINT `cancelled_appointments_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
