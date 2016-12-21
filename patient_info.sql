-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2016 at 08:51 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dataphi`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient_info`
--

CREATE TABLE `patient_info` (
  `PATIENT_ID` int(11) NOT NULL COMMENT 'Primary key of the table',
  `PATIENT_FIRST_NAME` varchar(30) NOT NULL COMMENT 'Column to store the first name of the patient',
  `PATIENT_LAST_NAME` varchar(30) DEFAULT '' COMMENT 'Column to store the last name of the patient. Nullable as some patients might not have last name',
  `AGE` int(11) NOT NULL COMMENT 'Age of the patient',
  `DOB` date NOT NULL COMMENT 'Date of Birth of the patient',
  `GENDER` varchar(1) NOT NULL COMMENT 'Gender of the Patient',
  `PHONE_NUMBER` int(20) NOT NULL COMMENT 'Phone number to store international numbers as well',
  `COMMENTS` text NOT NULL,
  `CREATE_TMSTMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Audit column row row created date',
  `UPDATE_TMSTMP` timestamp NULL DEFAULT NULL COMMENT 'Audit column row row updated date'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Table to store the Patient details';

--
-- Dumping data for table `patient_info`
--

INSERT INTO `patient_info` (`PATIENT_ID`, `PATIENT_FIRST_NAME`, `PATIENT_LAST_NAME`, `AGE`, `DOB`, `GENDER`, `PHONE_NUMBER`, `COMMENTS`, `CREATE_TMSTMP`, `UPDATE_TMSTMP`) VALUES
(1, 'Prateek', 'Agarawal', 26, '2016-11-08', 'M', 1261234564, 'ghfjksdkf', '2016-11-27 20:23:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient_info`
--
ALTER TABLE `patient_info`
  ADD PRIMARY KEY (`PATIENT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient_info`
--
ALTER TABLE `patient_info`
  MODIFY `PATIENT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key of the table', AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
