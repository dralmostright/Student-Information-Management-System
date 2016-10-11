-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2013 at 06:23 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `schoolims`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(5) NOT NULL AUTO_INCREMENT,
  `class` varchar(20) NOT NULL,
  `class_sec` varchar(10) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class`, `class_sec`) VALUES
(1, 'Nursery', '0'),
(2, 'K.G', '0'),
(3, 'One', '0'),
(4, 'Two', '0'),
(5, 'Three', '0');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `mrk_id` int(5) NOT NULL AUTO_INCREMENT,
  `std_id` int(5) NOT NULL,
  `sub_id` int(5) NOT NULL,
  `mrk_obt` int(10) NOT NULL DEFAULT '40',
  PRIMARY KEY (`mrk_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`mrk_id`, `std_id`, `sub_id`, `mrk_obt`) VALUES
(5, 3, 2, 90),
(6, 3, 3, 50),
(7, 3, 4, 90),
(8, 3, 5, 90),
(9, 3, 6, 50),
(10, 3, 7, 90),
(11, 3, 8, 90),
(12, 3, 9, 90),
(15, 2, 10, 99),
(16, 2, 11, 99),
(17, 10, 12, 89);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `section_id` int(5) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(20) NOT NULL,
  `class_id` int(5) NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `std_id` int(5) NOT NULL AUTO_INCREMENT,
  `std_roll` int(5) NOT NULL,
  `std_name` varchar(50) NOT NULL,
  `std_lname` varchar(25) NOT NULL,
  `class_id` varchar(20) NOT NULL,
  `std_parentName` varchar(25) NOT NULL,
  `std_parentPhone` varchar(15) NOT NULL,
  `std_Address` varchar(15) NOT NULL,
  `std_Dob` varchar(15) NOT NULL,
  `std_homePh` varchar(15) NOT NULL,
  `std_Sex` varchar(10) NOT NULL,
  PRIMARY KEY (`std_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_id`, `std_roll`, `std_name`, `std_lname`, `class_id`, `std_parentName`, `std_parentPhone`, `std_Address`, `std_Dob`, `std_homePh`, `std_Sex`) VALUES
(1, 1, 'Rejish', 'Ghimre', 'Nursery', 'Abc', '0909090909', 'Jhor', '2050-10-12', '9090909090', 'Male'),
(2, 2, 'Suman', 'Adhikari', 'Nursery', 'Rajan', '1111111', 'Jhor', '9999-00-00', '0000-000-000', 'Male'),
(3, 3, 'Suman', 'Adhikari', 'K.G', 'Rajan', '1111111', 'Jhor', '9999-00-00', '0000-000-000', 'Male'),
(4, 4, 'Ram dai', 'fsafsdf', 'K.G', 'dfsafa', '43523523', 'fadsfsdfassdf', '435235425', '3425235', 'Male'),
(5, 5, 'dfasdfasdf', 'sdfsafsaf', 'Nursery', 'sdfaf', 'sdfafsf', 'sdfsfdsf', 'ewrqr', 'qwerr', 'Female'),
(6, 10, 'Kale ', 'Adhikari', 'One', 'Gore PD cerma', '123456789', 'Jhor', '2050-2-25', '9876543210', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `sub_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(50) NOT NULL,
  `class_id` varchar(25) NOT NULL,
  `sub_publication` varchar(50) NOT NULL,
  `sub_edition` varchar(20) NOT NULL,
  `sub_authors` varchar(100) NOT NULL,
  `sub_teach` varchar(25) NOT NULL,
  `sub_fm` int(5) NOT NULL DEFAULT '100',
  `sub_pm` int(5) NOT NULL DEFAULT '40',
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `sub_name`, `class_id`, `sub_publication`, `sub_edition`, `sub_authors`, `sub_teach`, `sub_fm`, `sub_pm`) VALUES
(2, 'Software Engineering', 'K.G', 'JPT', '2nd', 'None', 'Suman dai Adhikari', 100, 40),
(3, 'Java Progarmming', 'K.G', 'None', 'fdsfs', 'No Authors', 'Suman dai Adhikari', 100, 40),
(4, 'Database Progarmming', 'K.G', 'None', 'fdsfs', 'No Authors', 'Suman dai Adhikari', 100, 40),
(5, 'PL/SQL Progarmming', 'K.G', 'None', 'fdsfs', 'No Authors', 'Suman dai Adhikari', 100, 40),
(6, 'C++ Progarmming', 'K.G', 'None', 'fdsfs', 'No Authors', 'Suman dai Adhikari', 100, 40),
(7, 'ASP.NET  Progarmming', 'K.G', 'None', 'fdsfs', 'No Authors', 'Suman dai Adhikari', 100, 40),
(8, 'PHP  Progarmming', 'K.G', 'None', 'fdsfs', 'No Authors', 'Suman dai Adhikari', 100, 40),
(9, 'Socail', 'K.G', 'dsfasfsasdafs', 'sdfsafsafaf', 'afdasdfsfsfsdf', 'Suman dai Adhikari', 100, 40),
(10, 'Atr', 'Nursery', 'Ekta', '3rd', 'No needed', 'Suman dai Adhikari', 100, 40),
(11, 'Science Exp', 'Nursery', 'Ekta', '3rd', 'No needed', 'Suman dai Adhikari', 100, 40),
(12, 'Gaming', 'One', 'Pearson', '2nd', 'Dietel and Dietel', 'Delli Pd.  Cerma', 100, 40);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `teh_id` int(5) NOT NULL AUTO_INCREMENT,
  `teh_name` varchar(50) NOT NULL,
  `teh_lname` varchar(20) NOT NULL,
  `teh_enroll` varchar(20) NOT NULL,
  `teh_level` varchar(25) NOT NULL,
  `teh_sex` varchar(15) NOT NULL,
  PRIMARY KEY (`teh_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teh_id`, `teh_name`, `teh_lname`, `teh_enroll`, `teh_level`, `teh_sex`) VALUES
(2, 'Suman dai', 'Adhikari', '2010', 'Secondary', 'Male'),
(3, 'Delli Pd.', ' Cerma', '2070-12-30', 'Secondary', 'Male'),
(4, 'Hemanta ', 'G.C', '2068-12-30', 'Secondary', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(5) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `upass` varchar(50) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `upass`) VALUES
(1, 'suman', 'test');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
