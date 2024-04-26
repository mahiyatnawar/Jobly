-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 06:53 PM
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
-- Database: `project311`
--

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `email` varchar(100) NOT NULL,
  `industry` varchar(100) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`email`, `industry`, `location`) VALUES
('activision@gaming.com', NULL, NULL),
('aspire@realestate.com', NULL, NULL),
('concorde@realestate.com', NULL, NULL),
('evercare@health.com', NULL, NULL),
('neotech@tech.com', NULL, NULL),
('riot@gaming.com', NULL, NULL),
('solana@tech.com', 'Technology', 'Texas'),
('square@health.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `employer_email` varchar(100) NOT NULL,
  `salary` int(11) NOT NULL,
  `skill` varchar(100) NOT NULL,
  `vacancy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `name` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`name`, `email`, `pass`, `type`) VALUES
('Activision', 'activision@gaming.com', 'activision', 'organization'),
('Alvi', 'alvi@nsu.com', 'qwerty', 'talent'),
('Aspire', 'aspire@realestate.com', 'aspire', 'organization'),
('Concorde', 'concorde@realestate.com', 'concorde', 'organization'),
('Evercare', 'evercare@health.com', 'evercare', 'organization'),
('Neotech', 'neotech@tech.com', 'neotech', 'organization'),
('Riot', 'riot@gaming.com', 'riot', 'organization'),
('Solana', 'solana@tech.com', 'solana', 'organization'),
('Square', 'square@health.com', 'square', 'organization');

-- --------------------------------------------------------

--
-- Table structure for table `talent`
--

CREATE TABLE `talent` (
  `email` varchar(100) NOT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `employer_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `talent`
--

INSERT INTO `talent` (`email`, `skill`, `salary`, `employer_email`) VALUES
('alvi@nsu.com', 'Frontend Developer', 30000, 'solana@tech.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`employer_email`,`skill`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `talent`
--
ALTER TABLE `talent`
  ADD PRIMARY KEY (`email`),
  ADD KEY `employer_email` (`employer_email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employers`
--
ALTER TABLE `employers`
  ADD CONSTRAINT `employers_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`employer_email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `talent`
--
ALTER TABLE `talent`
  ADD CONSTRAINT `talent_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `talent_ibfk_2` FOREIGN KEY (`employer_email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
