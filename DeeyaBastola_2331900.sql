-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 07:40 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prototype2`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `id` int(6) UNSIGNED NOT NULL,
  `temperature` float DEFAULT NULL,
  `humidity` float DEFAULT NULL,
  `pressure` float DEFAULT NULL,
  `wind_speed` float DEFAULT NULL,
  `weather_description` varchar(50) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`id`, `temperature`, `humidity`, `pressure`, `wind_speed`, `weather_description`, `date`) VALUES
(1, 13.24, 90, 1014, 4.98, 'clear sky ', '2023-05-01 16:51:27'),
(2, 13.12, 81, 1012, 3.85, 'overcasts sky', '2023-05-02 14:51:54'),
(3, 10.11, 90, 1010, 2.85, 'mist ', '2023-05-02 18:15:00'),
(5, 11.24, 84, 1014, 2.68, 'overcasts sky ', '2023-05-04 13:52:24'),
(6, 14.55, 87, 1011, 4.2, 'clear sky ', '2023-05-05 16:52:27'),
(24, 14.47, 80, 1015, 4.98, 'overcast clouds', '2023-05-05 17:23:55'),
(25, 14.47, 80, 1015, 4.98, 'overcast clouds', '2023-05-05 17:27:02'),
(26, 14.47, 80, 1015, 4.98, 'overcast clouds', '2023-05-05 17:27:05'),
(27, 14.47, 80, 1015, 4.98, 'overcast clouds', '2023-05-05 17:27:16'),
(28, 14.47, 80, 1015, 4.98, 'overcast clouds', '2023-05-05 17:27:21'),
(29, 14.47, 80, 1015, 4.98, 'overcast clouds', '2023-05-05 17:27:22'),
(30, 14.47, 80, 1015, 4.98, 'overcast clouds', '2023-05-05 17:29:01'),
(31, 14.47, 80, 1015, 4.98, 'overcast clouds', '2023-05-05 17:30:26'),
(32, 14.47, 80, 1015, 4.98, 'overcast clouds', '2023-05-05 17:30:35'),
(33, 14.47, 80, 1015, 4.98, 'overcast clouds', '2023-05-05 17:33:33'),
(34, 13.19, 90, 1015, 5.08, 'overcast clouds', '2023-05-05 17:34:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `weather`
--
ALTER TABLE `weather`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
