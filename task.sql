-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 05:59 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(5) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `age` int(3) NOT NULL,
  `blood_group` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `first_name`, `last_name`, `age`, `blood_group`) VALUES
(67, 'kashif', 'khan', 22, 'b+'),
(68, 'saud', 'khan', 19, 'b+'),
(69, 'ahsan', 'fareed', 32, 'o+'),
(70, 'hamza', 'aslam', 17, 'a-'),
(71, 'wasim', 'khan', 29, 'b-'),
(72, 'shahnoor', 'arshad', 23, 'ab+'),
(73, 'raheel', 'riaz', 22, 'a+'),
(74, 'raja', 'ahsan', 24, 'o-'),
(75, 'saifullah', 'babar', 36, 'b-'),
(76, 'ubaidullah', 'ahmed', 17, 'ab-'),
(77, 'aashir', 'khan', 26, 'b+'),
(78, 'adeel', 'khan', 25, 'a+'),
(79, 'abdullah', 'zeb', 40, 'b+'),
(80, 'shabih', 'hassan', 34, 'b+'),
(81, 'hamid', 'azmat', 41, 'a-'),
(82, 'fasseh', 'rehman', 27, 'b-'),
(83, 'sonia', 'akhtar', 31, 'ab+'),
(84, 'rubab', 'wafa', 30, 'a+'),
(85, 'samra', 'sabeen', 22, 'a+'),
(86, 'mailk', 'shahzeb', 25, 'a-'),
(87, 'ali', 'khan', 45, 'o-'),
(88, 'zia', 'rehman', 67, 'ab-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
