-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2021 at 11:01 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hseattendancesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'Admin', 'Liam', 'admin@mail.com', 'D00F5D5217896FB7FD601412CB890830');
-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `Id` int(10) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `hseId` varchar(10) NOT NULL,
  `hseArmId` varchar(10) NOT NULL,
  `sessionHseId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTimeTaken` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`Id`, `phoneNumber`, `hseId`, `hseArmId`, `sessionHseId`, `status`, `dateTimeTaken`) VALUES
(162, 'ASDFLKJ', '1', '2', '1', '1', '2020-11-01'),
(163, 'HSKSDD', '1', '2', '1', '1', '2020-11-01'),
(164, 'JSLDKJ', '1', '2', '1', '1', '2020-11-01'),
(172, 'HSKDS9EE', '1', '4', '1', '1', '2020-11-01'),
(171, 'JKADA', '1', '4', '1', '0', '2020-11-01'),
(170, 'JSFSKDJ', '1', '4', '1', '1', '2020-11-01'),
(173, 'ASDFLKJ', '1', '2', '1', '1', '2020-11-19'),
(174, 'HSKSDD', '1', '2', '1', '1', '2020-11-19'),
(175, 'JSLDKJ', '1', '2', '1', '1', '2020-11-19'),
(176, 'JSFSKDJ', '1', '4', '1', '0', '2021-07-15'),
(177, 'JKADA', '1', '4', '1', '0', '2021-07-15'),
(178, 'HSKDS9EE', '1', '4', '1', '0', '2021-07-15'),
(179, 'ASDFLKJ', '1', '2', '1', '0', '2021-09-27'),
(180, 'HSKSDD', '1', '2', '1', '1', '2021-09-27'),
(181, 'JSLDKJ', '1', '2', '1', '1', '2021-09-27'),
(182, 'ASDFLKJ', '1', '2', '1', '0', '2021-10-06'),
(183, 'HSKSDD', '1', '2', '1', '0', '2021-10-06'),
(184, 'JSLDKJ', '1', '2', '1', '1', '2021-10-06'),
(185, 'ASDFLKJ', '1', '2', '1', '0', '2021-10-07'),
(186, 'HSKSDD', '1', '2', '1', '0', '2021-10-07'),
(187, 'JSLDKJ', '1', '2', '1', '0', '2021-10-07'),
(188, 'AMS110', '4', '6', '1', '0', '2021-10-07'),
(189, 'AMS133', '4', '6', '1', '0', '2021-10-07'),
(190, 'AMS135', '4', '6', '1', '0', '2021-10-07'),
(191, 'AMS144', '4', '6', '1', '0', '2021-10-07'),
(192, 'AMS148', '4', '6', '1', '0', '2021-10-07'),
(193, 'AMS151', '4', '6', '1', '0', '2021-10-07'),
(194, 'AMS159', '4', '6', '1', '0', '2021-10-07'),
(195, 'AMS161', '4', '6', '1', '0', '2021-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `tblhse`
--

CREATE TABLE `tblhse` (
  `Id` int(10) NOT NULL,
  `hseFellowshipName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhse`
--

INSERT INTO `tblhse` (`Id`, `hseFellowshipName`) VALUES
(1, 'Seven'),
(3, 'Eight'),
(4, 'Nine');

-- --------------------------------------------------------

--
-- Table structure for table `tblhsearms`
--

CREATE TABLE `tblhsearms` (
  `Id` int(10) NOT NULL,
  `hseId` varchar(10) NOT NULL,
  `hseArmName` varchar(255) NOT NULL,
  `isAssigned` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhsearms`
--

INSERT INTO `tblhsearms` (`Id`, `hseId`, `hseArmName`, `isAssigned`) VALUES
(2, '1', 'S1', '1'),
(4, '1', 'S2', '1'),
(5, '3', 'E1', '1'),
(6, '4', 'N1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblhsefellowshipleaders`
--

CREATE TABLE `tblhsefellowshipleaders` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `hseId` varchar(10) NOT NULL,
  `hseArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhsefellowshipleaders`
--

INSERT INTO `tblhsefellowshipleaders` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `hseId`, `hseArmId`, `dateCreated`) VALUES
(1, 'Will', 'Williams', 'teacher@mail.com', '32250170a0dca92d53ec9624f336ca24', '09089898999', '1', '2', '2020-10-31'),
(4, 'Demola', 'Ade', 'Kumolu@gmail.com', '32250170a0dca92d53ec9624f336ca24', '09672002882', '1', '4', '2020-11-01'),
(5, 'Ryan', 'McQuie', 'ryan@mail.com', '32250170a0dca92d53ec9624f336ca24', '7014560000', '3', '5', '2021-10-07'),
(6, 'John', 'Greenwood', 'jwood@mail.com', '32250170a0dca92d53ec9624f336ca24', '0100000030', '4', '6', '2021-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `tblsessionmonth`
--

CREATE TABLE `tblsessionmonth` (
  `Id` int(10) NOT NULL,
  `sessionName` varchar(50) NOT NULL,
  `monthId` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsessionmonth`
--

INSERT INTO `tblsessionmonth` (`Id`, `sessionName`, `monthId`, `isActive`, `dateCreated`) VALUES
(1, '2019/2020', '1', '1', '2020-10-31'),
(3, '2019/2020', '2', '0', '2020-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `tblmembers`
--

CREATE TABLE `tblmembers` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hseId` varchar(10) NOT NULL,
  `hseArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmembers`
--

INSERT INTO `tblmembers` (`Id`, `firstName`, `lastName`, `otherName`, `phoneNumber`, `password`, `hseId`, `hseArmId`, `dateCreated`) VALUES
(1, 'Thomas', 'Griswold', 'none', 'AMS005', '12345', '1', '2', '2020-10-31'),
(3, 'Samuel', 'Rosella', 'none', 'AMS007', '12345', '1', '2', '2020-10-31'),
(4, 'Milagros', 'Lawson', 'none', 'AMS011', '12345', '1', '2', '2020-10-31'),
(5, 'Luis', 'Ayo', 'none', 'AMS012', '12345', '1', '4', '2020-10-31'),
(6, 'Sandra', 'Salgado', 'none', 'AMS015', '12345', '1', '4', '2020-10-31'),
(7, 'Smith', 'Mack', 'Mack', 'AMS017', '12345', '1', '4', '2020-10-31'),
(8, 'Juliana', 'Debiie', 'none', 'AMS019', '12345', '3', '5', '2020-10-31'),
(9, 'Richard', 'Grimmer', 'none', 'AMS021', '12345', '3', '5', '2020-10-31'),
(10, 'Jon', 'Boller', 'none', 'AMS110', '12345', '4', '6', '2021-10-07'),
(11, 'Aida', 'Hawley', 'none', 'AMS133', '12345', '4', '6', '2021-10-07'),
(12, 'Miguel', 'Bush', 'none', 'AMS135', '12345', '4', '6', '2021-10-07'),
(13, 'Sergio', 'Hammons', 'none', 'AMS144', '12345', '4', '6', '2021-10-07'),
(14, 'Lyn', 'Rogers', 'none', 'AMS148', '12345', '4', '6', '2021-10-07'),
(15, 'James', 'Dominick', 'none', 'AMS151', '12345', '4', '6', '2021-10-07'),
(16, 'Ethel', 'Quin', 'none', 'AMS159', '12345', '4', '6', '2021-10-07'),
(17, 'Roland', 'Estrada', 'none', 'AMS161', '12345', '4', '6', '2021-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `tblweek`
--

CREATE TABLE `tblweek` (
  `Id` int(10) NOT NULL,
  `weekName` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblweek`
--

INSERT INTO `tblweek` (`Id`, `weekName`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblhse`
--
ALTER TABLE `tblhse`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblhsearms`
--
ALTER TABLE `tblhsearms`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblhsefellowshipleaders`
--
ALTER TABLE `tblhsefellowshipleaders`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsessionmonth`
--
ALTER TABLE `tblsessionmonth`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblmembers`
--
ALTER TABLE `tblmembers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblweek`
--
ALTER TABLE `tblweek`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `tblhse`
--
ALTER TABLE `tblhse`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblhsearms`
--
ALTER TABLE `tblhsearms`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblhsefellowshipleaders`
--
ALTER TABLE `tblhsefellowshipleaders`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblsessionmonth`
--
ALTER TABLE `tblsessionmonth`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblmembers`
--
ALTER TABLE `tblmembers`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tblweek`
--
ALTER TABLE `tblweek`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
