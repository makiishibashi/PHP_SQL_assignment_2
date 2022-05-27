-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 01:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_sql_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `household_jobs`
--

CREATE TABLE `household_jobs` (
  `id` int(11) NOT NULL,
  `timezone` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `category` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `classify` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `process` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `household_jobs`
--

INSERT INTO `household_jobs` (`id`, `timezone`, `category`, `classify`, `process`, `created_at`, `updated_at`) VALUES
(2, '夜', '夜ごはん', '準備', '調理する', '2022-05-24 20:35:25', '2022-05-24 20:35:25'),
(3, '夜', '夜ごはん', '片付け', '調理器具洗う', '2022-05-24 20:39:55', '2022-05-24 20:39:55'),
(4, '夜', '夜ごはん', '片付け', 'テーブルを拭く', '2022-05-26 14:46:00', '2022-05-26 14:46:00'),
(5, '夜', '夜ごはん', '片付け', 'お皿を片付ける', '2022-05-26 15:05:25', '2022-05-26 15:05:25'),
(6, '夜', '夜ごはん', '片付け', 'お皿を洗う', '2022-05-26 15:07:52', '2022-05-26 15:07:52'),
(7, '夜', 'お風呂', '準備', '浴槽を洗う', '2022-05-26 15:08:55', '2022-05-26 15:08:55'),
(8, '夜', 'お風呂', '準備', 'お風呂の蓋を洗う', '2022-05-26 15:09:18', '2022-05-26 15:09:18'),
(9, '夜', 'お風呂', '準備', 'シャワーで汚れと洗剤を洗い流す', '2022-05-26 15:12:33', '2022-05-26 15:12:33'),
(10, '夜', 'お風呂', '準備', '自動お湯はりのスイッチ入れる', '2022-05-26 15:14:13', '2022-05-26 15:14:13'),
(11, '夜', 'お風呂', '準備', 'お風呂の蓋を閉める', '2022-05-26 15:14:33', '2022-05-26 15:14:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `household_jobs`
--
ALTER TABLE `household_jobs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `household_jobs`
--
ALTER TABLE `household_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
