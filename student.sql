-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2014 at 02:39 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_for_department`
--

CREATE TABLE IF NOT EXISTS `course_for_department` (
  `CDId` int(11) NOT NULL AUTO_INCREMENT,
  `CourseId` int(11) NOT NULL,
  `DepartmentId` int(11) NOT NULL,
  PRIMARY KEY (`CDId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_for_student`
--

CREATE TABLE IF NOT EXISTS `course_for_student` (
  `CSId` int(11) NOT NULL AUTO_INCREMENT,
  `Studentid` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  PRIMARY KEY (`CSId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_info`
--

CREATE TABLE IF NOT EXISTS `course_info` (
  `CourseId` int(11) NOT NULL AUTO_INCREMENT,
  `coursename` text,
  `courseNumber` text,
  PRIMARY KEY (`CourseId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `DepartmentId` int(11) NOT NULL AUTO_INCREMENT,
  `DepartmentName` text NOT NULL,
  PRIMARY KEY (`DepartmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentid` int(11) DEFAULT NULL,
  `name` text,
  `email` text,
  `phone` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
