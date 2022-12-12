-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2022 at 04:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bittel_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty_acc`
--

CREATE TABLE `faculty_acc` (
  `FacultyID` int(11) NOT NULL,
  `FFName` varchar(200) NOT NULL,
  `FLname` varchar(200) NOT NULL,
  `FGender` varchar(22) NOT NULL,
  `FUname` varchar(100) NOT NULL,
  `FPass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_acc`
--

INSERT INTO `faculty_acc` (`FacultyID`, `FFName`, `FLname`, `FGender`, `FUname`, `FPass`) VALUES
(1, 'Juan', 'DelaCruz', 'Male', 'juand', '123'),
(3, 'Jennie', 'Kim', 'Female', 'jenniek', '321');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GradeID` int(11) NOT NULL,
  `SemID` int(11) NOT NULL,
  `SubjectID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `Grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GradeID`, `SemID`, `SubjectID`, `StudentID`, `Grade`) VALUES
(3, 1, 1, 3, 85),
(4, 1, 1, 4, 87),
(8, 1, 1, 1, 99),
(10, 2, 1, 3, 99),
(11, 2, 1, 1, 87),
(12, 1, 2, 1, 79),
(13, 2, 1, 4, 87),
(14, 3, 1, 1, 97),
(15, 3, 1, 3, 89),
(16, 3, 1, 4, 99),
(17, 2, 2, 1, 98),
(18, 1, 2, 3, 78),
(19, 2, 2, 3, 81),
(20, 1, 2, 4, 99),
(21, 2, 2, 4, 89),
(22, 3, 2, 1, 88),
(23, 3, 2, 3, 95),
(24, 3, 2, 4, 95),
(25, 1, 2, 5, 88),
(26, 2, 2, 5, 78),
(27, 3, 2, 5, 89),
(28, 1, 1, 5, 88),
(29, 2, 1, 5, 87),
(30, 3, 1, 5, 86);

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `SemID` int(11) NOT NULL,
  `Semester` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`SemID`, `Semester`) VALUES
(1, 'First Semester'),
(2, 'Second Semester'),
(3, 'Third Semester'),
(4, 'Fourth Semester');

-- --------------------------------------------------------

--
-- Table structure for table `student_acc`
--

CREATE TABLE `student_acc` (
  `StudentID` int(11) NOT NULL,
  `SFname` varchar(200) NOT NULL,
  `SLname` varchar(200) NOT NULL,
  `SAge` int(10) NOT NULL,
  `SGender` varchar(10) NOT NULL,
  `SUname` varchar(100) NOT NULL,
  `SPass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_acc`
--

INSERT INTO `student_acc` (`StudentID`, `SFname`, `SLname`, `SAge`, `SGender`, `SUname`, `SPass`) VALUES
(1, 'Pia', 'Morcozo', 21, 'Female', 'piamrcz', '12345'),
(3, 'Taylor', 'Swift', 23, 'Female', 'taylor', '123'),
(4, 'Chopper', 'Santos', 21, 'Male', 'chop', '123'),
(5, 'Nami', 'Wanpis', 20, 'Female', 'nami', '555');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SubjectID` int(11) NOT NULL,
  `Subject` varchar(200) NOT NULL,
  `FacultyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SubjectID`, `Subject`, `FacultyID`) VALUES
(1, 'Filipino', 1),
(2, 'Analytics Application', 3),
(3, 'C++', 0),
(4, 'Python', 0),
(5, 'PHP', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty_acc`
--
ALTER TABLE `faculty_acc`
  ADD PRIMARY KEY (`FacultyID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GradeID`),
  ADD KEY `SemID` (`SemID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `SubjectID` (`SubjectID`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`SemID`);

--
-- Indexes for table `student_acc`
--
ALTER TABLE `student_acc`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SubjectID`),
  ADD KEY `FacultyID` (`FacultyID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty_acc`
--
ALTER TABLE `faculty_acc`
  MODIFY `FacultyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GradeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `SemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_acc`
--
ALTER TABLE `student_acc`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `SubjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
