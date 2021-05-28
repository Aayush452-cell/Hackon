-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2021 at 09:00 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `busbooking`
--

CREATE TABLE `busbooking` (
  `s_no` int(255) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` text NOT NULL,
  `destination` text NOT NULL,
  `arrival` text NOT NULL,
  `cost` int(11) NOT NULL,
  `date_of_depr` date NOT NULL,
  `time_of_depr` time NOT NULL,
  `msg` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `available` text NOT NULL DEFAULT '\'\\\'YES\\\'\''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `busbooking`
--

INSERT INTO `busbooking` (`s_no`, `name`, `email`, `website`, `destination`, `arrival`, `cost`, `date_of_depr`, `time_of_depr`, `msg`, `phone_num`, `available`) VALUES
(4, 'Muncipality', 'malemeaayushkumarsingh@gmail.com', 'Helo world.com', 'Haridwar', 'Laksar', 120, '2021-04-11', '18:36:00', 'gcdgfvhbjnmk,l.', '+919065453090', 'YES'),
(5, 'Muncipality', 'malemeaayushkumarsingh@gmail.com', 'Helo world.com', 'Haridwar', 'Laksar', 120, '2021-04-11', '22:32:00', 'Be on time at the station!', '+919065453090', 'NO'),
(6, 'dcbhbhcb', 'malemeaayushkumarsingh@gmail.com', 'Helo world.com', 'gcg ', 'Laksar', 120, '2021-04-29', '19:05:00', 'Hey man', '+919065453090', 'YES'),
(7, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Helo world.com', 'Haridwar', 'Laksar', 120, '2021-04-13', '23:53:00', 'khigufghdfzdcXz', '+919065453090', 'YES'),
(8, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Helo world.com', 'Haridwar', 'Laksar', 120, '2021-04-13', '23:53:00', 'khigufghdfzdcXz', '+919065453090', 'YES'),
(9, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Helo world.com', 'Haridwar', 'Laksar', 120, '2021-04-13', '12:01:00', 'hgfdsxcvbnm', '+919065453090', 'YES'),
(10, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Helo world.com', 'Haridwar', 'Laksar', 120, '2021-04-13', '12:01:00', 'hgfdsxcvbnm', '+919065453090', 'YES'),
(11, 'MyTrip', 'kumarsingh@gmail.com', 'Mytrio.com', 'Delhi', 'Lucknow', 120, '2021-04-21', '17:42:00', 'Available any time!', '+919065453090', 'YES'),
(12, 'Helo', 'malemeaayushkumarsingh@gmail.com', 'Mytrio.com', 'Delhi', 'Laksar', 120, '2021-11-24', '00:16:00', 'rsrdtfgbhjnlkm,;.\'/\r\n', '+919065453090', 'YES'),
(13, 'Heloman', 'dsxfc@gmail.com', 'Mytrio.com', 'Delhi', 'Lucknow', 120, '2021-10-24', '12:23:00', 'wasdfghjnkml,;./\'', '+919065453090', 'YES'),
(14, 'Muncipality', 'malemeaayushkumarsingh@gmail.com', 'Mytrio.com', 'Lucknow', 'Delhi', 120, '2021-10-24', '00:38:00', '', '+919065453090', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `ticketbooking`
--

CREATE TABLE `ticketbooking` (
  `s_no_s` int(255) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `destination` text NOT NULL,
  `arrival` text NOT NULL,
  `no_of_passengers` int(200) NOT NULL,
  `date_of_travel` date NOT NULL,
  `phone_num` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticketbooking`
--

INSERT INTO `ticketbooking` (`s_no_s`, `name`, `email`, `destination`, `arrival`, `no_of_passengers`, `date_of_travel`, `phone_num`) VALUES
(1, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Lucknow', '0', 120, '2021-04-04', '+919065453090'),
(2, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Haridwar', '0', 45, '2021-04-24', '+919065453090'),
(3, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Haridwar', 'Laksar', 45, '2021-04-24', '+919065453090'),
(4, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Haridwar', 'Laksar', 80, '2021-04-15', '+919065453090'),
(5, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Haridwar', 'Laksar', 80, '2021-04-15', '+919065453090'),
(6, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Delhi', 'Lucknow', 120, '2021-04-07', '+919065453090'),
(7, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Delhi', 'Lucknow', 120, '2021-04-07', '+919065453090'),
(8, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Haridwar', 'Laksar', 120, '2021-04-14', '+919065453090'),
(9, 'Nishant', 'Nishant@gmail.com', 'Lucknow', 'Delhi', 83, '2021-04-22', '+919065453090'),
(10, 'AAYUSH kumar singh', 'aayushiiitcse1@gmail.com', 'Haridwar', 'Laksar', 120, '2021-04-16', '2467728787'),
(11, 'Aayush Kumar Singh', 'masum85031@gmail.com', 'Delhi', 'Laksar', 45, '2021-04-04', '+919065453090'),
(12, 'Aayush Kumar Singh', 'masum85031@gmail.com', 'Delhi', 'Laksar', 45, '2021-04-04', '+919065453090'),
(13, 'Aayush Kumar Singh', 'masum85031@gmail.com', 'Delhi', 'Laksar', 45, '2021-04-04', '+919065453090'),
(14, 'Aayush Kumar Singh', 'masum85031@gmail.com', 'Delhi', 'Laksar', 45, '2021-04-04', '+919065453090'),
(15, 'Aayush Kumar Singh', 'masum85031@gmail.com', 'Delhi', 'Laksar', 45, '2021-04-04', '+919065453090'),
(16, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Haridwar', 'Laksar', 120, '2021-04-12', '+919065453090'),
(17, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Haridwar', 'Laksar', 120, '2021-04-12', '+919065453090'),
(18, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Haridwar', 'Laksar', 120, '2021-04-13', '+919065453090'),
(19, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Haridwar', 'Laksar', 120, '2021-04-13', '+919065453090'),
(20, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Haridwar', 'Laksar', 120, '2021-04-05', '+919065453090'),
(21, 'Aayush Kumar Singh', 'malemeaayushkumarsingh@gmail.com', 'Haridwar', 'Laksar', 120, '2021-04-05', '+919065453090'),
(22, 'Nishant', 'masum85031@gmail.com', 'Lucknow', 'Delhi', 120, '2021-04-27', '+919065453090');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `busbooking`
--
ALTER TABLE `busbooking`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `ticketbooking`
--
ALTER TABLE `ticketbooking`
  ADD PRIMARY KEY (`s_no_s`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `busbooking`
--
ALTER TABLE `busbooking`
  MODIFY `s_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ticketbooking`
--
ALTER TABLE `ticketbooking`
  MODIFY `s_no_s` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
