-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2015 at 01:13 PM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OuseLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `railway`
--

-- --------------------------------------------------------


--
-- Table structure for table `canc`
--

CREATE TABLE IF NOT EXISTS `employee`
(
  `eid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `ename` varchar(50) NOT NULL,
  `estat` varchar(50) NOT NULL,
  `edesig` varchar(50) NOT NULL,
  `edoj` date NOT NULL,
  `esal` int(11) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `employee` ("eid","ename","estat","edesig","edoj","esal") VALUES 
(1,'parth','Temporary','IRPS','2022-05-07','50000'),
(2,'anand','Permanent','IRTS','2022-05-10','45000'),
(3,'nihar','Temporary','IRAS','2022-05-12','70000');
-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trainno` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `arrival_time` time NOT NULL,
  `departure_time` time NOT NULL DEFAULT '00:00:00',
  `distance` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trainno` (`trainno`),
  KEY `sname` (`sname`),
  KEY `id` (`id`),
  KEY `distance` (`distance`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `trainno`, `sname`, `arrival_time`, `departure_time`, `distance`) VALUES
(1, 12, 'Chandigarh', '01:00:12', '01:00:00', 0),
(2, 12, 'Jaipur', '03:45:15', '03:50:00', 100),
(3, 12, 'Kolkata', '05:00:00', '05:15:00', 300),
(4, 12, 'Lucknow', '11:50:10', '12:00:00', 450),
(5, 12, 'Delhi', '16:30:00', '16:30:00', 600),
(6, 13, 'Jammu Kashmir', '22:00:00', '22:00:00', 0),
(7, 13, 'Delhi', '04:00:00', '04:05:00', 700),
(8, 13, 'Rajasthan', '07:30:50', '07:33:00', 900),
(9, 13, 'Allahbad', '09:00:00', '09:10:00', 1700),
(10, 13, 'Patna', '11:45:00', '11:47:00', 2500),
(11, 13, 'Madhya Pradesh', '13:00:00', '13:00:00', 3600),
(12, 14, 'Jammu Kashmir', '01:00:12', '01:00:12', 0),
(13, 14, 'Madras', '22:00:00', '22:00:00', 2500),
(14, 15, 'Delhi', '16:00:00', '16:00:00', 0),
(15, 15, 'Jaipur', '22:45:00', '22:45:00', 800),
(16, 16, 'Jaipur', '03:30:00', '03:30:00', 0),
(17, 16, 'Delhi', '09:30:00', '09:30:00', 800),
(18, 17, 'Delhi', '00:00:14', '00:00:14', 0),
(19, 17, 'Jaipur', '16:00:00', '16:10:00', 500),
(20, 17, 'Chandigarh', '20:30:00', '20:30:00', 1200),
(21, 18, 'Chandigarh', '08:05:00', '08:05:00', 0),
(22, 18, 'Jaipur', '10:15:00', '10:20:00', 700),
(23, 18, 'Delhi', '14:00:00', '14:00:00', 1200),
(24, 6, 'Jaipur', '03:30:00', '03:30:00', 0),
(25, 6, 'Allahbad', '08:00:00', '08:15:00', 200),
(26, 6, 'Lucknow', '15:15:00', '15:15:00', 700),
(27, 19, 'Lucknow', '13:30:00', '13:30:00', 0),
(28, 19, 'Allahbad', '20:00:00', '20:10:00', 300),
(29, 19, 'Jaipur', '05:15:00', '05:15:00', 700),
(30, 20, 'Delhi', '10:04:00', '10:04:00', 0),
(31, 20, 'Jaipur', '16:00:00', '16:00:00', 800),
(32, 21, 'Jaipur', '20:00:00', '20:00:00', 0),
(33, 21, 'Delhi', '10:00:00', '10:00:00', 800),
(34, 22, 'Delhi', '16:35:00', '16:35:00', 0),
(35, 22, 'Rajasthan', '20:00:00', '20:10:00', 1100),
(36, 22, 'Madhya Pradesh', '03:30:00', '03:33:00', 1500),
(37, 22, 'Mumbai', '09:00:00', '09:00:00', 2300),
(38, 23, 'Mumbai', '01:00:00', '01:00:00', 0),
(39, 23, 'Madhya Pradesh', '05:30:00', '05:40:00', 1500),
(40, 23, 'Rajasthan', '15:45:00', '15:50:00', 2000),
(41, 23, 'Delhi', '20:30:00', '20:30:00', 2300);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE IF NOT EXISTS `train` (
  `trainno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Train_no',
  `tname` varchar(50) NOT NULL COMMENT 'Train_name',
  `sp` varchar(50) NOT NULL COMMENT 'Starting_Point',
  `st` time NOT NULL COMMENT 'Arrival_Time',
  `dp` varchar(50) NOT NULL COMMENT 'Destination_Point',
  `dt` time NOT NULL,
  `dd` varchar(10) DEFAULT NULL COMMENT 'Day',
  `distance` int(11) NOT NULL COMMENT 'Distance',
  PRIMARY KEY (`trainno`),
  KEY `sp` (`sp`),
  KEY `dp` (`dp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`trainno`, `tname`, `sp`, `st`, `dp`, `dt`, `dd`, `distance`) VALUES
(6, 'Ashram Express', 'Jaipur', '10:00:00', 'Lucknow', '21:30:00', 'Day 1', 700),
(12, 'Shatabdi Express', 'Chandigarh', '01:00:12', 'Delhi', '16:30:00', 'Day 1', 600),
(13, 'Harijan Express', 'Jammu Kashmir', '22:00:00', 'Madhya Pradesh', '13:00:00', 'Day2', 3600),
(14, 'Jammu Mail Express', 'Jammu Kashmir', '01:00:12', 'Madras', '22:00:00', 'Day 1', 2500),
(15, 'Delhi Jaipur Double Decker', 'Delhi', '16:00:00', 'Jaipur', '22:45:00', 'Day 1', 800),
(16, 'Jaipur Delhi Double Decker', 'Jaipur', '03:30:00', 'Delhi', '09:30:00', 'Day 1', 800),
(17, 'Delhi Chandigarh Shatabdi', 'Delhi', '00:00:14', 'Chandigarh', '20:30:00', 'Day 1', 1200),
(18, 'Chandigarh Delhi Shatabdi', 'Chandigarh', '08:05:00', 'Delhi', '14:00:00', 'Day 2', 1200),
(19, 'Ashram Express', 'Lucknow', '13:30:00', 'Jaipur', '05:15:00', 'Day 2', 700),
(20, 'Frontier Express', 'Delhi', '10:04:00', 'Jaipur', '16:00:00', 'Day 1', 800),
(21, 'Frontier Express', 'Jaipur', '20:00:00', 'Delhi', '10:00:00', 'Day 2', 800),
(22, 'Rajdhani Express', 'Delhi', '16:35:00', 'Mumbai', '09:00:00', 'Day 2 ', 2300),
(23, 'Rajdhani Express', 'Mumbai', '01:00:00', 'Delhi', '20:30:00', 'Day 1', 2300);

--
-- Triggers `train`
--
DROP TRIGGER IF EXISTS `before_insert_on_train`;
DELIMITER //
CREATE TRIGGER `before_insert_on_train` BEFORE INSERT ON `train`
 FOR EACH ROW begin
if (new.dt<new.st AND new.dd='Day 1') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Improper Timings';
end if;
if (new.dp=new.sp) then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Same Starting & Destination Points not allowed';
end if;
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `before_update_on_train`;
DELIMITER //
CREATE TRIGGER `before_update_on_train` BEFORE UPDATE ON `train`
 FOR EACH ROW begin
if (new.dt<new.st AND new.dd='Day 1') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Improper Timings';
end if;
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  UNIQUE `UNIQUEMN` (`mobileno`),
  UNIQUE `UNIQUEEI` (`emailid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `emailid`, `password`, `mobileno`, `dob`) VALUES
(4, 'garvitjain@gmail.com', 'garvit', '9312201852', '1994-01-01'),
(5, 'deepakgoel@hotmail.com', 'deepak', '9312201853', '1994-02-22'),
(6, 'akhilkumar@yahoo.co.in', 'akhil', '9872231234', '1994-03-04'),
(7, 'ayushjain@outlook.com', 'ayush', '9810150525', '1995-01-03'),
(8, 'aakashbharadwaj@yahoo.com', 'aakash', '9013452635', '1993-12-30'),
(10, 'abhinavsingh@gmail.com', 'abhinav', '9876675567', '1991-01-01'),
(12, 'amanmalik@hotmail.com', 'aman', '9878876654', '1997-09-08'),
(19, 'dhruvgosian@gmail.com', 'dhruv', '9807890453', '1965-04-01'),
(20, 'chiragbansal@nsitonline.com', 'chirag', '9123456787', '1960-06-02'),
(21, 'iib2020044@iiita.ac.in', 'jugal', '7425095264', '2002-08-20');

--
-- Triggers `user`
--
DROP TRIGGER IF EXISTS `before_insert_on_user`;
DELIMITER //
CREATE TRIGGER `before_insert_on_user` BEFORE INSERT ON `user`
 FOR EACH ROW begin
if (year(curdate())-year(new.dob))<18 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
end if;
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `before_update_on_user`;
DELIMITER //
CREATE TRIGGER `before_update_on_user` BEFORE UPDATE ON `user`
 FOR EACH ROW begin
if (year(curdate())-year(new.dob))<18 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
end if;
end
//
DELIMITER ;