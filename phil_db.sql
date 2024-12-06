-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2024 at 07:41 AM
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
-- Database: `phil_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `CMID` int(11) DEFAULT NULL,
  `CMNAME` varchar(60) DEFAULT NULL,
  `PROVID` int(11) DEFAULT NULL,
  `SIZE` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CMID`, `CMNAME`, `PROVID`, `SIZE`) VALUES
(307701000, 'Baler', 307700000, 92.55),
(300802000, 'Bagac', 300800000, 231.2),
(301403000, 'Baliwag', 301400000, 45.05),
(304908000, 'Gapan', 304900000, 1000),
(305409000, 'Mabalacat', 305400000, 83.18),
(306902000, 'Bamban', 306900000, 251.98),
(307101000, 'Botolan', 307100000, 735.28);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `provId` int(11) DEFAULT NULL,
  `provName` varchar(60) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `size` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`provId`, `provName`, `region`, `size`) VALUES
(307700000, 'Aurora', 3, 3133.4),
(300800000, 'Bataan', 3, 1372.98),
(301400000, 'Bulacan', 3, 2783.69),
(304900000, 'Nueva Ecijia', 3, 5689.69),
(305400000, 'Pampanga', 3, 2001.22),
(306900000, 'Tarlac', 3, 3046.49),
(307100000, 'Zambales', 3, 3630.35);

-- --------------------------------------------------------

--
-- Table structure for table `tourist_spot`
--

CREATE TABLE `tourist_spot` (
  `TSID` int(11) DEFAULT NULL,
  `TSName` varchar(60) DEFAULT NULL,
  `CMID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourist_spot`
--

INSERT INTO `tourist_spot` (`TSID`, `TSName`, `CMID`, `RegionID`) VALUES
(5235, 'Sabang Beach', 307701000, 3),
(3345, 'Five Fingers Cove', 300802000, 3),
(5678, 'San Rafael River', 301403000, 3),
(1234, 'Gabaldon Falls', 304908000, 3),
(4323, 'Aqua Planet', 305409000, 3),
(6789, 'Mount Damas', 306902000, 3),
(7581, 'Mount Pinatubo', 307101000, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
