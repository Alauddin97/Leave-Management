-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 05:19 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `office`
--

-- --------------------------------------------------------

--
-- Table structure for table `anotification`
--

CREATE TABLE IF NOT EXISTS `anotification` (
  `UserName` varchar(50) NOT NULL,
  `Message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `Ename` varchar(50) NOT NULL,
  `Eusername` varchar(50) NOT NULL,
  `Epassword` varchar(50) NOT NULL,
  `Eemail` varchar(50) NOT NULL,
  `Edept` varchar(50) NOT NULL,
  `Ephoto` varchar(200) NOT NULL,
  `TotalLeave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Ename`, `Eusername`, `Epassword`, `Eemail`, `Edept`, `Ephoto`, `TotalLeave`) VALUES
('Firuz', 'firuz', '123456', 'firuz@gmail.com', 'Development', 'EmpPhoto/firuz.jpg', 30),
('Rajib', 'rajib', '123456', 'rajib@gmail.com', 'Designer', 'EmpPhoto/1469892_10201419270696145_189386958_n.jpg', 24),
('Ramzan', 'ramzan', '123456', 'ramzan@gmail.com', 'Development', 'EmpPhoto/my-passport-photo(2).jpg', 30);

-- --------------------------------------------------------

--
-- Table structure for table `enotification`
--

CREATE TABLE IF NOT EXISTS `enotification` (
  `UserName` varchar(50) NOT NULL,
  `Message` varchar(50) NOT NULL,
  `Receive` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leaverequest`
--

CREATE TABLE IF NOT EXISTS `leaverequest` (
  `UserName` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `LeaveCause` varchar(250) NOT NULL,
  `LeaveType` varchar(50) NOT NULL,
  `NoOfDays` int(11) NOT NULL,
  `StartDate` varchar(50) NOT NULL,
  `EndDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leavestatus`
--

CREATE TABLE IF NOT EXISTS `leavestatus` (
  `UserName` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Seen` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('user', 'pass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
 ADD PRIMARY KEY (`Eusername`), ADD UNIQUE KEY `Eemail` (`Eemail`);

--
-- Indexes for table `leaverequest`
--
ALTER TABLE `leaverequest`
 ADD PRIMARY KEY (`UserName`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
