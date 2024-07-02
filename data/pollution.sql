-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2024 at 12:19 AM
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
-- Database: `mydb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `constituency`
--

CREATE TABLE `constituency` (
  `Constituency_ID` int(11) NOT NULL,
  `Constituency_Name` varchar(300) DEFAULT NULL,
  `MP_Name` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reading`
--

CREATE TABLE `reading` (
  `reading_ID` int(11) NOT NULL,
  `Date_Time` text DEFAULT NULL,
  `Station_ID` int(11) NOT NULL,
  `NOx` double DEFAULT NULL,
  `NO2` double DEFAULT NULL,
  `NO` double DEFAULT NULL,
  `PM10` double DEFAULT NULL,
  `O3` double DEFAULT NULL,
  `Temperature` double DEFAULT NULL,
  `ObjectId` double DEFAULT NULL,
  `ObjectId2` bigint(20) DEFAULT NULL,
  `NVPM10` double DEFAULT NULL,
  `VPM10` double DEFAULT NULL,
  `NVPM2_5` double DEFAULT NULL,
  `PM2_5` double DEFAULT NULL,
  `VPM2_5` double DEFAULT NULL,
  `CO` double DEFAULT NULL,
  `RH` double DEFAULT NULL,
  `Pressure` double DEFAULT NULL,
  `SO2` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schema`
--

CREATE TABLE `schema` (
  `Schema_ID` int(11) NOT NULL,
  `Measure` varchar(50) DEFAULT NULL,
  `Deccription` varchar(200) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `Station_ID` int(11) NOT NULL,
  `Constituency_ID` int(11) NOT NULL,
  `Station_Name` varchar(50) DEFAULT NULL,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `constituency`
--
ALTER TABLE `constituency`
  ADD PRIMARY KEY (`Constituency_ID`);

--
-- Indexes for table `reading`
--
ALTER TABLE `reading`
  ADD PRIMARY KEY (`reading_ID`),
  ADD KEY `Station_ID` (`Station_ID`);

--
-- Indexes for table `schema`
--
ALTER TABLE `schema`
  ADD PRIMARY KEY (`Schema_ID`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`Station_ID`),
  ADD KEY `Constituency_ID` (`Constituency_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reading`
--
ALTER TABLE `reading`
  MODIFY `reading_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reading`
--
ALTER TABLE `reading`
  ADD CONSTRAINT `reading_ibfk_1` FOREIGN KEY (`Station_ID`) REFERENCES `station` (`Station_ID`);

--
-- Constraints for table `station`
--
ALTER TABLE `station`
  ADD CONSTRAINT `station_ibfk_1` FOREIGN KEY (`Constituency_ID`) REFERENCES `constituency` (`Constituency_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
