-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2020 at 02:58 AM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '00000');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(20) NOT NULL,
  `problem_name` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `sample_input` varchar(255) NOT NULL,
  `sample_output` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `problem_name`, `description`, `sample_input`, `sample_output`) VALUES
(3, 'lets see', 'not easy', 'ok', 'ok'),
(4, 'Go home ', 'Stay home or get killed\r\n', 'House ', 'Stay');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(20) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_name`, `department`) VALUES
(1, 'Computer science', 'cse299', 'CSE'),
(2, 'Computer science', 'cse499', 'CSE'),
(3, 'Computer science', 'cse311', 'CSE'),
(4, 'Electrical ', 'eee452', 'EEE'),
(5, 'Computer science', 'cse231', 'CSE'),
(6, 'Electrical ', 'eee111', 'EEE'),
(7, 'Computer science', 'cse327', 'CSE'),
(8, 'Electrical ', 'eee141', 'EEE'),
(9, 'Project', 'CSE327', 'CSE'),
(10, 'Wwe', 'Wrestling 101', 'LAW'),
(11, 'Project', 'CSE331', 'CSE'),
(12, 'Java', 'CSE215', 'CSE'),
(13, 'Database', 'CSE311', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(20) NOT NULL,
  `student_id` int(15) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `university` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `address` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `fullname`, `email`, `gender`, `phone_number`, `university`, `image`, `address`, `password`) VALUES
(10, 1510449, 'Tauhid rahman', 'Tauhidrahman40@gmail', 'Male', 1823660911, 'nsu', 'The-Witcher-3-Wild-Hunt-HD-Wallpapers-19 (1).jpg', 'Uk manchester', '$2y$10$wt9rYQDX9kKGcOimV5Fj2OHVnIMUI0zpFfnNkIEpNDSz8GL3usX/e'),
(11, 223333, 'Admin', 'Raws@gmail.com', 'Female', 1823660912, 'nsu', 'The_Witcher_3_Wild_Hunt_Wolves_Head_Black_572570_1366x768.jpg', 'USA california', '$2y$10$QCId2UwHea4e2c08wgdn1uzWgwdqtV0qqZdrRA2KQSKtmWw9/A0EC');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(20) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `gender` text NOT NULL,
  `phone_number` int(11) NOT NULL,
  `address` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `fullname`, `email`, `gender`, `phone_number`, `address`, `image`, `password`) VALUES
(36, 'Tauhid rahman', 'Tauhidrahman40@gmail', 'Male', 1823660911, '41/1 dhaka', 'The_Witcher_3_Wild_Hunt_Wolves_Head_Black_572570_1366x768.jpg', '$2y$10$3YzgyGnS2mxK4AfAQ4n3tu73Hg7TJfIjOpcyZ/A4dJrXuFidieG4K'),
(37, 'Mma1', 'Titanicsank@gmail.co', 'Male', 1823660923, 'Uk manchester', '1.PNG', '$2y$10$Az9dQkvoYXL4vnNIbZ.Gbu2zH4gPt4mUKSaWH9Gyk/1AIxTaLvGTq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
