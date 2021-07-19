-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 03:07 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `san_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Soumyajeet Sarkar', 'Ayush Poddar', 480, '2021-02-13 18:07:13'),
(2, 'Sandeep Singh', 'Anirban Bid', 640, '2021-02-14 20:44:53'),
(7, 'Sandeep Singh', 'Aadarsh', 455, '2021-02-15 07:34:22'),
(8, 'Sandeep Singh', 'Anirban Bid', 700, '2021-07-09 16:46:51'),
(9, 'Sandeep Singh', 'Ayush Poddar', 255, '2021-07-09 17:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Sandeep Singh', 'sandeepsingh@gmail.com', 100000),
(2, 'Ayush Poddar', 'ayushpoddar@gmail.com', 100000),
(3, 'Soumyajeet Sarkar', 'soumyajeetsarkar@gmail.com', 100000),
(4, 'Anirban Bid', 'anirbanbid@gmail.com', 100000),
(5, 'Mani Mohanta', 'manimohanta@gmail.com', 100000),
(6, 'Aadarsh', 'aadarsh@gmail.com', 100000),
(7, 'Saumyajit Sarkar', 'saumyajit@gmail.com', 100000),
(8, 'Arghyadev Sarkar', 'arghyadev@gmail.com', 100000),
(9, 'Dilkhush Jha', 'Dilkhush@gmail.com', 100000),
(10, 'Abhishek Mohanta', 'abhishekmohanta@gmail.com', 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
