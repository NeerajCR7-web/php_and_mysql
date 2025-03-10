-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql306.infinityfree.com
-- Generation Time: Mar 09, 2025 at 05:11 PM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_37424785_myhome`
--

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `coach_name` varchar(255) NOT NULL,
  `stadium` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `anthem` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `coach_name`, `stadium`, `code`, `logo`, `anthem`) VALUES
(1, 'Portugal', 'Roberto Martinez', 'Estadio Nacional', 'POR', 'portugal.png', 'MkSQ6_XhvjQ'),
(2, 'Argentina', 'Lionel Scaloni', 'Estadio Monumental', 'ARG', 'argentina.png', 'yqBC3l7i7dk'),
(3, 'France', 'Didier Deschamps', 'Stade de France', 'FRA', 'france.png', 'u7j--YMXZtA'),
(4, 'Brazil', 'Dorival Junior', 'Maracana Stadium', 'BRA', 'brazil.png', 'SyyOahYXhUQ'),
(5, 'Croatia', 'Zlatko Dalic', 'Poljud Stadium', 'CRO', 'croatia.png', 'tjqgLZ7fZY4'),
(6, 'Spain', 'Luis de la Fuente', 'Bernabeu', 'ESP', 'spain.png', 'Ue4p3CoNjv0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
