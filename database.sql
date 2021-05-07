-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2019 at 09:48 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iikol`
--

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`user_id`, `subject_id`, `grade`) VALUES
(1, 1, 9),
(1, 3, 8),
(1, 5, 7),
(1, 7, 6),
(1, 9, 10),
(1, 11, 9),
(1, 13, 8),
(1, 15, 7),
(1, 17, 6),
(1, 19, 9),
(1, 21, 8),
(1, 23, 7),
(2, 2, 9),
(2, 4, 8),
(2, 6, 7),
(2, 8, 6),
(2, 10, 10),
(2, 12, 9),
(2, 14, 8),
(2, 16, 7),
(2, 18, 6),
(2, 20, 9),
(2, 22, 8),
(2, 24, 7),
(3, 3, 9),
(3, 4, 8),
(3, 7, 7),
(3, 8, 6),
(3, 11, 10),
(3, 12, 9),
(3, 15, 8),
(3, 16, 7),
(3, 19, 6),
(3, 20, 9),
(3, 23, 8),
(3, 24, 7);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `ID` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`ID`, `name`, `year`) VALUES
(1, 'Osnovi elektrotehnike - 1', 1),
(2, 'Osnovi računarske tehnike', 1),
(3, 'Uvod u programiranje', 1),
(4, 'Fizički osnovi elektronike', 1),
(5, 'Matematika - 1', 1),
(6, 'Matematika - 2', 1),
(7, 'Programski jezici', 2),
(8, 'Objektno orijentisano programiranje', 2),
(9, 'Teorija električnih kola - 1', 2),
(10, 'Numerička matematika', 2),
(11, 'Elektronika - 1', 2),
(12, 'Elektronika - 2', 2),
(13, 'Algoritmi i strukture podataka', 3),
(14, 'Arhitektura i organizacija računara', 3),
(15, 'Specifikacija i modelovanje softvera', 3),
(16, 'Tehnike i metode programiranja', 3),
(17, 'Digitalna elektronika', 3),
(18, 'Operativni sistemi', 3),
(19, 'Internet tehnologije i programiranje', 4),
(20, 'Projektovanje informacionih sistema', 4),
(21, 'Mikroprocesorski sistemi', 4),
(22, 'Računarske mreže', 4),
(23, 'Računarska grafika', 4),
(24, 'Projektovanje softvera', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `stud_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `firstname`, `lastname`, `username`, `password`, `email`, `stud_id`) VALUES
(1, 'Marko', 'Markovic', 'mmarkovic', 'c3552d88acaa2e2bb70291175f7e0328', 'mmarkovic@gmail.com', '1234'),
(2, 'Janko', 'Jankovic', 'jjankovic', '71b1cdc4512814b72dec7b64762027b8', 'jjankovic@yahoo.com', '2345'),
(3, 'Petar', 'Petrovic', 'ppetrovic', '4d0493472af3e3552a873bdda47b87a4', 'ppetrovic@live.com', '3456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `stud_id` (`stud_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
