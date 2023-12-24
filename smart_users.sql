-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2023 at 12:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'Kanrabit', 'kani123', 'kani@gmail.com'),
(2, 'selam', 'sel0987', 'selam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attendant`
--

CREATE TABLE `attendant` (
  `id_attendant` int(200) NOT NULL,
  `Fname` varchar(200) NOT NULL,
  `Lname` varchar(200) NOT NULL,
  `mobile_no` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendant`
--

INSERT INTO `attendant` (`id_attendant`, `Fname`, `Lname`, `mobile_no`, `location`, `username`, `password`) VALUES
(1, 'Tewdros', 'Samuel', '0954...', 'Central', 'tedro', '12045'),
(7, 'marga', 'dhuguma', '09845045', 'Tononoka', 'marga', '$2y$10$.1dzAHa9YevUe7pr/7z4E.RICA8x6.rbIqp3fycvXCyrglwoN/FTa'),
(8, 'marga', 'dhuguma', '09080', 'Tononoka', 'mar', '$2y$10$knuGc307ABUmYzZvZbI6DOTFQL0oezuezSp4wpU7MvTLY8Y399H7S'),
(9, 'itoiyoiyyy', 'yeyrt', '09824555', 'Tudor', 'yyy', '$2y$10$uz1teMGvNXcOxknKfsE/I.dOHFoc6i2wdr6KekzWu2e0972VqcyUy'),
(13, 'marga', 'caalaa', '09824555', 'Central', 'kanchala', '$2y$10$eFYkPpUqq0o6zSUe21eu6e1f.bgZp2zuZR3q1tlhToJTAhRet2Mf6');

-- --------------------------------------------------------

--
-- Table structure for table `parkings`
--

CREATE TABLE `parkings` (
  `id` int(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `street` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slot` int(200) NOT NULL,
  `remaining_slots` varchar(50) NOT NULL,
  `attendant` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parkings`
--

INSERT INTO `parkings` (`id`, `location`, `street`, `name`, `slot`, `remaining_slots`, `attendant`, `date`, `price`) VALUES
(5, 'Jimma', 'Central', 'Central', 54, '151', 'maerga', '2023-12-23 19:41:07', '500'),
(7, 'Jimma', 'awetu', ' awetu', 20, '10', 'tedro', '2023-12-23 19:40:44', '500'),
(13, 'Jimma', 'Dagitu', 'Dagitu', 23, '4', 'marga', '2023-12-23 19:42:41', '400');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(255) NOT NULL,
  `parking_id` int(25) NOT NULL,
  `slots` varchar(25) NOT NULL,
  `hours` int(25) NOT NULL,
  `cost` int(25) NOT NULL,
  `customer` varchar(25) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `parking_id`, `slots`, `hours`, `cost`, `customer`, `time`, `status`) VALUES
(7, 1, '2', 2, 800, 'king@gmail.com', '2017-06-17 18:42:38', 'Completed'),
(8, 5, '4', 2, 4000, 'test@gmail.com', '2017-06-17 19:29:58', 'requested'),
(9, 1, '1', 1, 200, 'king@gmail.com', '2017-06-18 19:14:44', 'Completed'),
(10, 1, '', 23, 4600, 'king@gmail.com', '2017-06-19 16:04:27', 'Completed'),
(11, 5, '1', 6, 1200, 'john@gmail.com', '2017-06-23 05:35:59', 'Completed'),
(12, 1, '1', 4, 800, 'king@gmail.com', '2017-07-21 12:19:29', 'requested'),
(13, 5, '1', 2, 1000, 'dan@gmail.com', '2017-10-31 14:45:59', 'requested'),
(14, 5, '1', 1, 500, 'kanrab65@gmail.com', '2023-12-12 10:05:28', 'requested'),
(15, 10, '1', 1, 500, 'tol@gmail.com', '2023-12-17 23:38:11', 'requested'),
(16, 6, '1', 0, 50, 'kum@gmail.com', '2023-12-17 23:47:28', 'requested');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_confirm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `password_confirm`) VALUES
(1, 'john', 'john@gmail.com', 'john1234', 'john1234'),
(2, 'king', 'king@gmail.com', 'king1234', 'king1234'),
(3, 'john', 'kuku@gmail.com', '123456789', '123456789'),
(4, 'rapho', 'rapho@gmail.com', '123456789', '123456789'),
(5, 'patty', 'patty@gmail.com', 'king12345', 'king12345'),
(7, 'Dan', 'dan@gmail.com', '$2y$10$OWWnE8vrh0EKvnbBhjgVYu5oV21m36Exi9l8y7wfwZ3VRkuolmNFu', '$2y$10$LIE8WLMnBogS625KGhqqZOszGdxmtCLyIR1bNTI2hg13VMrabZaoa'),
(8, 'king', 'test@gmail.com', '$2y$10$WZUiLaha1ZLII0KE0ev55uFW3ECjX3WhVjydS37r5PqLkrscyU2k.', '$2y$10$ro2qv7h841xx9go4L9lq/uQXSkj8nQ1DT89RF/NroJ15VtHT2b3uu'),
(9, 'kanrabbi', 'kanrab65@gmail.com', '$2y$10$.qyu7.Yi6DFslrjrQ1022eEm7xz8QWJEamwUCUjXb.GaSnGPJOfVa', '$2y$10$jYl6sII5O73FNtS7rYvUS.by6ItihOswv.seUKbxwefW6fT5UwWRO'),
(10, 'tolasa', 'tol@gmail.com', '$2y$10$vVvwKDOSRH1HxsIYyVBM6udYL0E/YAERrws.uUvKQUY9JLvWKX6dO', '$2y$10$HFrNbV3lSgXybkwMura5ge3WQu4u0R6cuG0vVk1Cch3ICQq1tbsQ6'),
(11, 'kuma', 'kum@gmail.com', '$2y$10$KT9wZ3X6DosvKJjXvX0Fg.bXj3UOnBa73kNsd2GlIklr0ItXren2C', '$2y$10$50NPK1sCOq7n61JqRPZXCerCM6vo./eZuygSWDq0Fwm8p7o97m4mC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendant`
--
ALTER TABLE `attendant`
  ADD PRIMARY KEY (`id_attendant`);

--
-- Indexes for table `parkings`
--
ALTER TABLE `parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendant`
--
ALTER TABLE `attendant`
  MODIFY `id_attendant` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `parkings`
--
ALTER TABLE `parkings`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
