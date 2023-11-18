-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 08:54 PM
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
-- Database: `cheffinder`
--

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Speciality` varchar(20) NOT NULL,
  `Availability` varchar(40) NOT NULL,
  `Experience` varchar(30) NOT NULL,
  `Service City` varchar(10) NOT NULL,
  `Expected Payment/head` int(10) NOT NULL,
  `Cooking Type` varchar(20) NOT NULL,
  `Phone No` bigint(10) NOT NULL,
  `Email_ID` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chef`
--

INSERT INTO `chef` (`ID`, `Name`, `Speciality`, `Availability`, `Experience`, `Service City`, `Expected Payment/head`, `Cooking Type`, `Phone No`, `Email_ID`, `Password`) VALUES
(10, 'ddrbh', 'veg', ' Full-Time', 'New', 'Surat', 56886485, 'gujarati', 9856245621, '123@gmail.com', '12345Abcd'),
(5, 'Mina', 'both', ' Part-Time', 'greaterTwo', '', 25636, 'gujarati', 9106363871, 'mina@gmail.com', 'Mina@1234'),
(12, 'Priya', 'veg', ' Full-Time', 'greaterTwo', 'Surat', 25000, 'Gujarati', 9856325698, 'priyasood@gmail.com', 'Priya@1234'),
(7, 'ddrbh', 'veg', ' Full-Time', 'New', '', 56886485, 'gujarati', 9856245621, 'riva@gmail.com', '12345Abcd'),
(6, 'hfghf', 'veg', ' Full-Time', 'New', '', 25332, 'gujarati', 9106363871, 'riva@mail.com', '1234@Abcd');

-- --------------------------------------------------------

--
-- Table structure for table `cheffinder`
--

CREATE TABLE `cheffinder` (
  `ID` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `DOB` date NOT NULL,
  `PhoneNo` bigint(10) NOT NULL,
  `Email_ID` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `location` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cheffinder`
--

INSERT INTO `cheffinder` (`ID`, `Name`, `DOB`, `PhoneNo`, `Email_ID`, `Password`, `location`) VALUES
(7, 'Riva', '2023-05-11', 9106363871, 'dhameliyariva1106@gmail.com', 'Riva@1234', 'Surat'),
(8, 'Tina', '2023-05-04', 9856245621, 'tina@gmail.com', 'Tina@1234', 'Surat'),
(2, 'Tina Datta', '2002-05-26', 9856245656, 'tinadatta@gmail.com', 'Tina@1234', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`Email_ID`,`Password`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `cheffinder`
--
ALTER TABLE `cheffinder`
  ADD PRIMARY KEY (`Email_ID`,`Password`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chef`
--
ALTER TABLE `chef`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cheffinder`
--
ALTER TABLE `cheffinder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
