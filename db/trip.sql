-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2024 at 08:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `id` int(255) NOT NULL,
  `name` text NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `other` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`id`, `name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES
(1, 'Abhishek', 23, 'male', 'abhi@gmail.com', '9999999999', 'hello sir how are you', '2024-10-20 23:17:10'),
(2, 'Abhishek Kumar Ranjan', 23, 'm', 'abhishekkumarranjan965@gmail.com', '0993411233', 'fhghfhhfhfh', '2024-10-20 23:46:06'),
(3, 'Abhishek sharma', 2311, 'm', 'raviranjanbishwakarma@gmail.com', '0993411233', 'fghb wertgrg', '2024-10-20 23:54:24'),
(4, 'Abhishek sharma', 2311, 'm', 'raviranjanbishwakarma@gmail.com', '0993411233', 'fghb wertgrg', '2024-10-20 23:57:50'),
(5, 'Abhishek sharma', 2311, 'm', 'raviranjanbishwakarma@gmail.com', '0993411233', 'fghb wertgrg', '2024-10-20 23:58:12'),
(6, 'muratri', 25, 'm', 'abc@gmail.com', '1234567890', 'sfsffssfs', '2024-10-20 23:58:58'),
(7, 'muratri', 25, 'm', 'abc@gmail.com', '1234567890', 'sfsffssfs', '2024-10-20 23:59:17'),
(8, 'Rupesh Ranjan Sharma', 23, 'm', 'sanjudeviinfo@gmail.com', '0620518313', 'asddd', '2024-10-21 00:00:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
