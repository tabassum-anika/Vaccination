-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2018 at 05:30 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaccination`
--

-- --------------------------------------------------------

--
-- Table structure for table `doses`
--

CREATE TABLE `doses` (
  `id` int(11) NOT NULL,
  `Dose_date` datetime DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Vaccine_id` int(11) DEFAULT NULL,
  `duration_1` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doses`
--

INSERT INTO `doses` (`id`, `Dose_date`, `duration`, `User_id`, `Vaccine_id`, `duration_1`) VALUES
(1, '2018-12-12 00:00:00', '16', 6, 9, 30),
(2, '2018-12-22 00:00:00', '30', 2, 17, 15),
(3, '2018-12-07 00:00:00', '45', 7, 15, 45),
(4, '2018-12-23 00:00:00', '60', 4, 3, 60),
(5, '2018-12-25 00:00:00', '15', 3, 4, 30),
(6, '2018-12-27 00:00:00', '15', 5, 6, 120);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `area` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `center_name`, `area`) VALUES
(1, 'Apollo Hospital', ''),
(2, 'Gulshan Clinic Limited', 'Gulshan'),
(3, 'Gulshan Ma o Shishu clinic', 'Gulshan'),
(4, 'LAke View Clinic', 'Gulshan'),
(5, 'Ibn Sina', 'Dhanmondi'),
(6, 'Samorita Hospital', 'Panthapath'),
(7, 'Nova medical centre ', 'Gulshan\r\n'),
(8, 'Medinova', 'Dhanmondi'),
(9, 'Shahid Suhrawardy Hospital ', 'Sher-e-Bangla Nagar'),
(10, 'Dhaka Shishu Hospital', 'Sher-e-Bangla Nagar'),
(11, 'Ad-Din Hospital', 'Maghbazar'),
(12, 'Lab Aid', 'Dhanmondi'),
(13, 'Kurmitola General Hospital', 'Kurmitola'),
(14, 'Dhaka Medical college Hospital', 'Ramna'),
(15, 'Square Hospital', 'Pathapath');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `Comments` varchar(255) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `Comments`, `User_id`) VALUES
(1, 'Good page', 6),
(2, 'Easy to use', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `Phone_number` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `Phone_number`, `email`, `password`) VALUES
(1, 'TITHI IQBAL', '1689158856', NULL, NULL),
(2, 'SHAHRIAR KHAN', '1761876121', NULL, NULL),
(3, 'FABLIHA ISLAM', '1921030412', NULL, NULL),
(4, 'NUSRAT FARZANA', '1611130422', NULL, NULL),
(5, 'SHOURAV AHMED', '1531210908', NULL, NULL),
(6, 'anika', 'anikacese161@gmail.com', '098765432', 'hgffhg'),
(7, 'fanir', 'fanir@gmail.com', '756483949328', 'aaa'),
(8, 'maria', 'maria@gmail.com', '016484734', 'asd'),
(9, 'monty', 'monty@gmail.com', '0178036826', 'abc123'),
(10, 'firestone', 'firestone@gmail.com', '01780713186', 'heyy');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `Vaccine_id` int(11) NOT NULL,
  `vaccine_name` varchar(255) NOT NULL,
  `no_of_doses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaccine`
--

INSERT INTO `vaccine` (`Vaccine_id`, `vaccine_name`, `no_of_doses`) VALUES
(1, 'BCG VACCINE', 1),
(2, 'DPT VACCINE', 1),
(3, 'Hepatitis A', 1),
(4, 'TYPHOID VACCINE', 1),
(5, 'HAEMOPHILUS INFLUENZA ', 2),
(6, 'TETANUS PROTEIN', 2),
(7, 'RABIES VACCINE', 2),
(8, 'PNEUMONIA VACCINE ', 2),
(9, 'Hepatitis B', 3),
(10, 'HUMAN PAPILOMA VIRUS VACCINE', 3),
(11, 'Rabies', 3),
(12, 'Chicken pox', 4),
(13, 'Meningococcal Meningitis', 4),
(14, 'Rota Virus ', 4),
(15, 'Pneumococcal Conjugate Vaccine', 5),
(16, 'Polio', 5),
(17, 'PERTUSIS', 6),
(18, 'Yellow Fever', 6),
(19, 'Hexaxim ((DTaP/IPV/ HIB/Hep B))', 7),
(20, 'Pneumococcal Polysaccharide Conjugate Vaccine', 7);

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_location`
--

CREATE TABLE `vaccine_location` (
  `id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `vaccine_id` int(11) DEFAULT NULL,
  `Vaccine_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaccine_location`
--

INSERT INTO `vaccine_location` (`id`, `location_id`, `vaccine_id`, `Vaccine_date`) VALUES
(1, 1, 1, '2018-12-01'),
(2, 1, 2, '2018-12-01'),
(3, 2, 3, '2018-12-01'),
(4, 3, 4, '2018-12-02'),
(5, 3, 18, '2018-12-02'),
(6, 4, 5, '2018-12-02'),
(7, 4, 14, '2018-12-03'),
(8, 5, 15, '2018-12-03'),
(9, 6, 19, '2018-12-03'),
(10, 7, 10, '2018-12-08'),
(11, 8, 11, '2018-12-08'),
(12, 9, 13, '2018-12-08'),
(13, 9, 16, '2018-12-12'),
(14, 10, 8, '2018-12-23'),
(15, 11, 9, '2018-12-23'),
(16, 12, 20, '2018-12-23'),
(17, 12, 6, '2018-12-26'),
(18, 13, 17, '2018-12-26'),
(19, 14, 12, '2018-12-26'),
(20, 15, 7, '2018-12-28'),
(21, 2, 19, '2018-12-26'),
(22, 1, 5, '2018-12-20'),
(23, 1, 3, '2018-12-26'),
(24, 1, 4, '2018-12-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doses`
--
ALTER TABLE `doses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User_id` (`User_id`),
  ADD KEY `Vaccine_id` (`Vaccine_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`Vaccine_id`);

--
-- Indexes for table `vaccine_location`
--
ALTER TABLE `vaccine_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `vaccine_id` (`vaccine_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doses`
--
ALTER TABLE `doses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `Vaccine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vaccine_location`
--
ALTER TABLE `vaccine_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doses`
--
ALTER TABLE `doses`
  ADD CONSTRAINT `doses_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `doses_ibfk_2` FOREIGN KEY (`Vaccine_id`) REFERENCES `vaccine` (`Vaccine_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `vaccine_location`
--
ALTER TABLE `vaccine_location`
  ADD CONSTRAINT `vaccine_location_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`),
  ADD CONSTRAINT `vaccine_location_ibfk_2` FOREIGN KEY (`vaccine_id`) REFERENCES `vaccine` (`Vaccine_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
