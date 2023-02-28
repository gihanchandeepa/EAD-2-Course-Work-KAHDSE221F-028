-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 07:34 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onlineevent`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer1`
--

CREATE TABLE IF NOT EXISTS `customer1` (
  `Cid` int(6) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `Caddress` varchar(255) NOT NULL,
  `cEmail` varchar(255) NOT NULL,
  `pNo` varchar(10) NOT NULL,
  PRIMARY KEY (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer1`
--

INSERT INTO `customer1` (`Cid`, `Cname`, `Caddress`, `cEmail`, `pNo`) VALUES
(2, 'Sadun Perera', 'Kandy', 'ddee', '33'),
(7, 'Sadun Perera', 'Kandy', 'dd', '112');

-- --------------------------------------------------------

--
-- Table structure for table `eventp`
--

CREATE TABLE IF NOT EXISTS `eventp` (
  `Eid` int(6) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Edate` varchar(255) NOT NULL,
  `Etheme` varchar(255) NOT NULL,
  `Eprice` varchar(40) NOT NULL,
  PRIMARY KEY (`Eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventp`
--

INSERT INTO `eventp` (`Eid`, `Name`, `Edate`, `Etheme`, `Eprice`) VALUES
(2, 'Charuka', '2021-04-30', 'weett', '0754871236');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE IF NOT EXISTS `pay` (
  `Pid` int(6) NOT NULL,
  `EIname` varchar(255) NOT NULL,
  `Pmethod` varchar(255) NOT NULL,
  `Pdate` varchar(30) NOT NULL,
  `Pprice` varchar(15) NOT NULL,
  PRIMARY KEY (`Pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`Pid`, `EIname`, `Pmethod`, `Pdate`, `Pprice`) VALUES
(2, 'eee', 'dddeeqqq', '2021-04-30', '122');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
