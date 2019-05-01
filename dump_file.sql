-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 01, 2019 at 11:10 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `tamaka29_tamangKandidato`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate_prof_tb`
--

CREATE TABLE `candidate_prof_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `party_id` int(11) NOT NULL,
  `education` varchar(500) NOT NULL,
  `prof_background` text NOT NULL,
  `achievements` text NOT NULL,
  `govt_relatives` text NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidate_prof_tb`
--

INSERT INTO `candidate_prof_tb` (`id`, `name`, `party_id`, `education`, `prof_background`, `achievements`, `govt_relatives`, `image`) VALUES
(1, 'Freddie Aguilar', 1, 'Undergrad, BSEE De Guzman Institute', 'Professional singer', 'May likha ng awit na “Anak”', '', 'https://tamaka.org/wp-content/uploads/2019/05/071416-kafreddie.png'),
(2, 'Gary Alejano', 2, 'Master of Management, UP Open University, PMA Class of 1995', 'Rep. Magdalo Party Capt. Phil Marines', '2nd most productive in 17th Congress Dist. Conduct Star, Gold Cross Medal', '', 'https://tamaka.org/wp-content/uploads/2019/05/gary-alejano.png'),
(3, 'Raffy Alunan', 3, 'MPA, Harvard Kennedy School MPA Ateneo de Manila', 'DILG Sec. under Pres. Fidel Ramos', 'Eminent Fellow, Dev’t Academy of the Philippines', 'Former Cabinet member Rafael Alunan Sr. (grandfather)', 'https://tamaka.org/wp-content/uploads/2019/05/Rafael-Talunan.png'),
(4, 'Sonny Angara', 13, 'Master of Laws, Harvard Law School, UP College of Law', 'Senator Former Rep of Aurora, Quezon', 'Nagpasa ng batas sa labor, PWDs, OFWs, “Father” ng TRAIN law TOYM 2010', 'Former Sen. Edgardo Angara (father); Others: Aurora Rep & Former Gov.; Vice Gov.; Baler Mayor & Vice-Mayor', 'https://tamaka.org/wp-content/uploads/2019/05/sonny_angara.png'),
(5, 'Bam Aquino', 2, 'ADMU Law School BSME Ateneo Mla Summa cum Laude', 'Senator Former Chair/CEO Nat’l Youth Comm', 'Nagpasa ng 35 batas: Free College, PWDs, Anti-Hazing; JCI Ten Outstanding Young Persons of the World 2012', 'Pres Cory Aquino & Benigno Aquino III. (aunt & cousin); Others: Former Senators; Tarlac Reps', 'https://tamaka.org/wp-content/uploads/2019/05/SenatorBamAquino.png'),
(6, 'Nancy Binay', 14, 'AB Tourism UP Diliman', 'Senator Former Personal Asst. VP Jejomar Binay', 'Nagpasa ng batas sa sugar industry, PWDs, premature marriage', 'Former VP Jejomar Binay (father); Former Makati Mayors Elenita, Junjun (mother, brother) Mayor Abby Binay (sister)', 'https://tamaka.org/wp-content/uploads/2019/05/nancy-binay.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate_prof_tb`
--
ALTER TABLE `candidate_prof_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party_id` (`party_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate_prof_tb`
--
ALTER TABLE `candidate_prof_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidate_prof_tb`
--
ALTER TABLE `candidate_prof_tb`
  ADD CONSTRAINT `candidate_prof_tb_ibfk_1` FOREIGN KEY (`party_id`) REFERENCES `party_tb` (`id`);
