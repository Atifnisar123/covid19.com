-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2021 at 07:45 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `aname` varchar(50) NOT NULL,
  `aemail` varchar(50) NOT NULL,
  `apassword` varchar(50) NOT NULL,
  `aphone` varchar(20) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `aemail`, `apassword`, `aphone`, `address`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', '0300438944', 'Lahore'),
(2, 'New Admin', 'newadmin@gmail.com', 'new', '03002829832', 'Multan');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `aid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `appnum` int(11) NOT NULL,
  `atime` varchar(50) NOT NULL DEFAULT '-------',
  `adate` varchar(50) NOT NULL DEFAULT '-------',
  `problem` varchar(100) NOT NULL,
  `msg` text NOT NULL,
  `astatus` varchar(50) NOT NULL,
  `ardate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`aid`, `pid`, `cid`, `appnum`, `atime`, `adate`, `problem`, `msg`, `astatus`, `ardate`) VALUES
(15, 1, 8, 19440, '10:31', '2021-10-27', 'Body Pain', 'Loropetalum is a beautiful plant for its fall color. I like this variety for its burgundy and deep green leaves. New leaves emerge burgundy, later turning to a nice dark green. In late summer, it blossoms with bright fuchsia flowers.', 'Confirmed', ''),
(18, 7, 8, 26896, '17:12', '2021-09-30', 'Body Pain', 'Loropetalum is a beautiful plant for its fall color. I like this variety for its burgundy and deep green leaves. New leaves emerge burgundy, later turning to a nice dark green. In late summer, it blossoms with bright fuchsia flowers.', 'Done', ''),
(19, 2, 5, 56045, '10:00', '2021-09-29', 'Sore Throat', 'Loropetalum is a beautiful plant for its fall color. I like this variety for its burgundy and deep green leaves. New leaves emerge burgundy, later turning to a nice dark green. In late summer, it blossoms with bright fuchsia flowers.', 'Confirmed', '2021-09-25'),
(20, 5, 2, 41559, '-------', '-------', 'Fever', 'i have high fever since last week', 'Cancelled', '2021-10-13');

-- --------------------------------------------------------

--
-- Table structure for table `centers`
--

CREATE TABLE `centers` (
  `cid` int(11) NOT NULL,
  `cname` varchar(250) NOT NULL,
  `ccontact` varchar(50) NOT NULL,
  `caddress` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `cemail` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `centers`
--

INSERT INTO `centers` (`cid`, `cname`, `ccontact`, `caddress`, `city`, `cemail`) VALUES
(1, 'Jinnah Hospital', '0800568989', 'Mall Road, Al Rahim Colony', 'Lahore', 'jinnahmedical@hotmail.com'),
(2, 'Nishtar Hospital', '0876588738', 'Nishtar Road, Justice Hamid Colony', 'Multan', 'nishtarhospital@gmail.com'),
(4, 'Al Madina Hospital', '8992938000', '2659 Goldberg St Meborm', 'Karachi', 'madinahospital@yahoo.com'),
(5, 'Shaheen Hospital', '08006717299', 'Indus Town, Muree Raod, St#G09', 'Faislabad', 'shaheenhospital@gmail.com'),
(8, 'Al Johar Hospital', '8987320', '2659 Goldberg St, XYZ city, PK', 'Islamabad', 'joharhospital@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `cpid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `cpnum` int(11) NOT NULL,
  `cptitle` varchar(100) NOT NULL,
  `cpdes` text NOT NULL,
  `cpdate` varchar(20) NOT NULL,
  `cpstatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`cpid`, `pid`, `cpnum`, `cptitle`, `cpdes`, `cpdate`, `cpstatus`) VALUES
(1, 2, 55974, 'Suspicious Activity', 'Loropetalum is a beautiful plant for its fall color. I like this variety for its burgundy and deep green leaves. New leaves emerge burgundy, later turning to a nice dark green. In late summer, it blossoms with bright fuchsia flowers. Loropetalum prefers moist a', '22-09-2021', 'Processing'),
(3, 2, 23331, 'Suspicious Activity', 'Loropetalum is a beautiful plant for its fall color. I like this variety for its burgundy and deep green leaves. New leaves emerge burgundy, later turning to a nice dark green. In late summer, it blossoms with bright fuchsia flowers. Loropetalum prefers moist and well-drained soil, enriched with a good quality compost.', '23-09-2021', 'Processing'),
(4, 5, 95688, 'Misconduct', 'i have some issue please resolved it.', '13-10-2021', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fbid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `fbdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fbid`, `pid`, `aid`, `cid`, `feedback`, `fbdate`) VALUES
(5, 7, 18, 8, 'Loropetalum is a beautiful plant for its fall color. I like this variety for its burgundy and deep green leaves. New leaves emerge burgundy, later turning to a nice dark green. In late summer, it blossoms with bright fuchsia flowers.', '2021-09-25');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `patientnum` int(11) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `email`, `contact`, `address`, `patientnum`, `password`) VALUES
(1, 'Naeem Ahmad', 'ali@gmail.com', '03001234567', 'Indus Town, Muree Raod, St#G09, Faislabad', 8900, 'ali123'),
(2, 'Ayesha Khan', 'ayesha@gmail.com', '878349', '2659 Goldberg St Meborm', 5430, 'ayesha'),
(5, 'Test Patient', 'test@gamil.com', '03471702383', 'gulgasht colony', 8473, 'test'),
(7, 'new account', 'newmail@gmail.com', '78632178', 'karachi', 7600, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `uphone` varchar(20) NOT NULL,
  `uaddress` varchar(250) NOT NULL,
  `upassword` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `uname`, `uemail`, `uphone`, `uaddress`, `upassword`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', '03007723878', 'DC Choak, Near MCB bank, Lahore', 'admin', 'admin'),
(2, 'Ali Arshad', 'ali@gmail.com', '03002732877', 'DC Choak, Near MCB bank, Lahore', 'ali', 'patient');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `centers`
--
ALTER TABLE `centers`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`cpid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fbid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `centers`
--
ALTER TABLE `centers`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `cpid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fbid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
