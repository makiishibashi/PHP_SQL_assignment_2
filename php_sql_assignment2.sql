-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 01:25 PM
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
-- Database: `php_sql_assignment2`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_user_table`
--

CREATE TABLE `login_user_table` (
  `id` int(12) NOT NULL,
  `u_name` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `u_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `u_pw` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `life_flg` int(1) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `login_user_table`
--

INSERT INTO `login_user_table` (`id`, `u_name`, `u_id`, `u_pw`, `life_flg`, `indate`) VALUES
(1, 'いしばし', 'ishibashi', 'test', 0, '2022-05-25 16:45:41'),
(2, 'なかむら', 'nakamura', 'test', 0, '2022-05-25 16:45:41'),
(3, 'なかの', 'nakano', 'test', 0, '2022-05-25 16:45:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_user_table`
--
ALTER TABLE `login_user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_user_table`
--
ALTER TABLE `login_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
