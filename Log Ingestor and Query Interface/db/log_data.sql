-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 19, 2023 at 06:43 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `log_data`
--

CREATE TABLE `log_data` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `message` text,
  `resourceId` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `traceId` varchar(255) DEFAULT NULL,
  `spanId` varchar(255) DEFAULT NULL,
  `commit` varchar(255) DEFAULT NULL,
  `parentResourceId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_data`
--

INSERT INTO `log_data` (`id`, `level`, `message`, `resourceId`, `timestamp`, `traceId`, `spanId`, `commit`, `parentResourceId`) VALUES
(267, 'error', 'Failed to connect to DB', 'server-1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '5e5342f', 'server-0987'),
(268, 'db error', 'Failed to connect to DB', 'server-1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '5e5342f', 'server-0987'),
(269, 'db error', 'Failed to connect to DB', '12', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '5e5342f', 'server-0987'),
(270, 'db error', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '5e5342f', 'server-0987'),
(271, 'exception', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '5e5342f', 'server-0987'),
(272, 'exception', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '1', 'server-0987'),
(273, 'exception', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '2', 'server-0987'),
(274, 'exception', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '12', 'server-0987'),
(275, 'exception', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '12', 'server-0987'),
(276, 'exception', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '12', 'server-0987'),
(277, 'exception', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '12', 'server-0987'),
(278, 'exception', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '12', 'server-0987'),
(279, 'exception', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '12', 'server-0987'),
(280, 'exception', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '12', 'server-0987'),
(281, 'exception', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '12', 'server-0987'),
(282, 'exception', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '12', 'server-0987'),
(283, 'exception', 'Failed to connect to DB', '1234', '2023-09-15 08:00:00', 'abc-xyz-123', 'span-456', '12', 'server-0987'),
(284, 'null data', 'no data found', 'data-123', '2023-09-15 08:00:00', 'abc-234', 'span-656', '87', 'server-034'),
(285, 'null data', 'no data found', 'data-123', '2023-09-15 08:00:00', 'abc-234', 'span-656', '87', 'server-034');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log_data`
--
ALTER TABLE `log_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log_data`
--
ALTER TABLE `log_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
