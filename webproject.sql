-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2023 at 10:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `phases`
--

CREATE TABLE `phases` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `budget` double NOT NULL,
  `duration` varchar(100) NOT NULL,
  `projectid` double NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phases`
--

INSERT INTO `phases` (`id`, `name`, `description`, `budget`, `duration`, `projectid`, `status`) VALUES
(1, 'house building', 'house will be build', 99999, '2023-05-11-2023-05-30', 1, 'not active'),
(2, 'finalizaion', 'house will be paint', 99999, '2023-05-11-2023-05-30', 1, 'active'),
(182, 'Cutting Plots', 'In this Phase the plots are cut', 100000, '2023-06-06-2023-12-06', 14, 'not active'),
(183, 'Construction', 'In this Phase the Construction is done', 100000, '2024-01-06-2024-07-06', 14, 'not active'),
(184, 'Selling', 'In this Phase the selling is done', 100000, '2024-07-06-2024-12-06', 14, 'active'),
(185, 'construction', 'The construction is done in this phase.', 4999998, '2023-06-08-2023-12-08', 15, 'active'),
(186, 'Finalization', 'The finalization is done in this phase.', 4999998, '2023-12-08-2024-12-08', 15, 'not active'),
(187, 'Construction', 'in this phase cutting is done', 50000, '2023-06-09-2024-08-09', 16, 'not active');

-- --------------------------------------------------------

--
-- Table structure for table `porder`
--

CREATE TABLE `porder` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `porder`
--

INSERT INTO `porder` (`id`, `uid`, `pid`, `status`) VALUES
(1, 9, '1', 'complete'),
(2, 9, '1', 'inprogress'),
(3, 9, '1', 'complete'),
(4, 12, '15', 'inprogress'),
(5, 12, '15', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `pdescription` text NOT NULL,
  `pduration` varchar(100) NOT NULL,
  `pmanager` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `budget` double NOT NULL,
  `material` text NOT NULL,
  `image` text NOT NULL,
  `totalphases` int(11) NOT NULL,
  `completephase` int(11) NOT NULL,
  `plots` int(11) NOT NULL,
  `bookedplots` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `pname`, `pdescription`, `pduration`, `pmanager`, `status`, `location`, `budget`, `material`, `image`, `totalphases`, `completephase`, `plots`, `bookedplots`) VALUES
(1, 'City housing', 'It is a private colony', '2023-05-11-2023-05-31', 'Remal', 'Success', 'City Housing Society, Faisalabad, Punjab, Pakistan', 1000000, 'sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones,sand,cement,paint,bricks,stones', '1686056306235-cityhousing.jpg', 2, 1, 8, 0),
(14, 'Season Colony 2', 'It is The private Colony 2', '2023-06-06-2025-01-06', 'Remal Fatima', 'Success', 'Faisalabad, Punjab, Pakistan', 30000000, 'sand,water,soil,cement,wood,iron,bricks,glass,sand,water,soil,cement,wood,iron,bricks,glass', '1686056339519-seasoncolony.jpeg', 3, 2, 10, 0),
(15, 'Ali housing', 'It is a private colony and in developed process and in progress', '2023-06-08-2024-12-08', 'Ahmad', 'Success', 'Lahore, Punjab, Pakistan', 10000000, 'cement,sand,water,bricks,glass', '1686290332275-1686039606232-back1.png', 2, 1, 17, 2),
(16, 'Mega City ', 'it is a private colony', '2023-06-09-2025-12-09', 'Ahmad', 'Success', 'Multan, Punjab, Pakistan', 2000000, 'sand', '1686290488477-1686040444330-cityhousing.jpg', 1, 0, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `firstname`, `lastname`, `email`, `password`, `phone`, `longitude`, `latitude`, `domain`, `companyname`, `image`) VALUES
(4, 'Remal', 'Fatima', 'arm@gmail.com', '$2b$10$rIRdl.FnaOapLzXKWBOLB.B22907SPLCXfZae.srAjoojpkhzxkqW', '3435995525', '73.13496049999999', '31.45036619999999', 'company', 'ARM tech', ''),
(8, 'Remal', 'Fatima', 'f201103@cfd.nu.edu.pk', '$2b$10$f9aGKL6tu9DVoWjuG09HYOa.hyG0rtGXx/PUR3YWrXTa8krOLfYDq', '3435995525', '72.994035', '31.391756', 'company', 'RMTECH', '1686037490889-IMG_20220318_171255.jpg'),
(10, 'Muhammad', 'Usman', 'f200102@cfd.nu.edu.pk', '$2b$10$Ah3ED20Aj7l97qxxaquliuzYN/iuM0xV4yc0zVWHwtoq..SoXLMme', '3366361539', '73.0973396', '31.4640007', 'user', 'none', '1686068224179-doraemon.png'),
(12, 'Remal', 'Fatima', 'remal.fastian@gmail.com', '$2b$10$pijlmADDXf159xmvt7vC8uSqz/ZnAx6ItvGgPO6XtRBL6GUwq2y1y', '3435995525', '72.994035', '31.391756', 'user', 'none', '1686243606009-Remal.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phases`
--
ALTER TABLE `phases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `porder`
--
ALTER TABLE `porder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phases`
--
ALTER TABLE `phases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `porder`
--
ALTER TABLE `porder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
