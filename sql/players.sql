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
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `player_face` varchar(255) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `jersey_number` int(11) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `player_name`, `player_face`, `team_id`, `position`, `jersey_number`, `nationality`) VALUES
(1, 'Cristiano Ronaldo', 'ronaldo.png', 1, 'Centre Forward', 7, 'Portuguese'),
(2, 'Pepe', 'pepe.png', 1, 'Centre Back', 19, 'Portuguese'),
(3, 'Lionel Messi', 'mess.png', 2, 'Right Winger', 10, 'Argentina'),
(6, 'Diego Maradona', 'mara.png', 2, 'Midfielder', 11, 'Argentina'),
(4, 'Kylian MBappe', 'mb.png', 3, 'Forward', 9, 'French'),
(5, 'Vinicius Junior', 'vinicius.png', 4, 'Forward', 7, 'Brazilian'),
(7, 'Luka Modric', 'modric.png', 5, 'Midfielder', 10, 'Croatian'),
(9, 'Sergio Ramos', 'ram.png', 6, 'Defender', 4, 'Spanish'),
(8, 'Marcelo', 'marcelo.png', 4, 'Left Back', 12, 'Brazilian');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `team_id` (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
