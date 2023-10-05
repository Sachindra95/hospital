-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 09:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '30-10-2022 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, 500, '2022-11-10', '12:45 PM', '2022-11-06 12:21:48', 1, 0, '2022-11-06 12:23:35'),
(2, 'ENT', 1, 2, 500, '2022-11-17', '7:00 PM', '2022-11-06 13:16:18', 1, 1, NULL),
(3, 'ENT', 1, 1, 500, '2023-03-24', '1:00 AM', '2023-03-25 19:29:42', 0, 1, '2023-03-27 09:49:14'),
(4, 'General Surgery', 0, 1, 0, '2023-03-29', '3:30 PM', '2023-03-27 09:49:39', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'ENT', 'Sachindra Vishwakarma', 'Flat No. 402 Alaknanda Apartment Gomti Nagar Ext Lucknow', '500', 7068698095, 'sachin@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-10-30 18:16:52', '2023-03-27 10:44:27'),
(2, 'Endocrinologists', 'Gaurav singh', 'X 1212 ABC Apartment Gomti Nagar Lucknow', '800', 1231231230, 'gaurav@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-04 01:06:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(94, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:08:55', '25-03-2023 11:48:53 PM', 1),
(95, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:19:36', '25-03-2023 11:50:09 PM', 1),
(96, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:20:42', '25-03-2023 11:50:49 PM', 1),
(97, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:22:33', '25-03-2023 11:56:38 PM', 1),
(98, NULL, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:26:53', NULL, 0),
(99, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:26:57', '25-03-2023 11:57:07 PM', 1),
(100, NULL, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:27:16', NULL, 0),
(101, NULL, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:29:57', NULL, 0),
(102, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:30:05', '26-03-2023 12:00:16 AM', 1),
(103, NULL, 'sachin@test.comuh', 0x3a3a3100000000000000000000000000, '2023-03-25 18:30:24', NULL, 0),
(104, NULL, 'sachin@test.comui', 0x3a3a3100000000000000000000000000, '2023-03-25 18:30:47', NULL, 0),
(105, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:35:04', '26-03-2023 12:05:13 AM', 1),
(106, NULL, 'sachin@test.comhygu', 0x3a3a3100000000000000000000000000, '2023-03-25 18:35:19', NULL, 0),
(107, NULL, 'sachin@test.comjhyjficy', 0x3a3a3100000000000000000000000000, '2023-03-25 18:35:29', NULL, 0),
(108, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:38:01', NULL, 1),
(109, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:39:51', '26-03-2023 12:09:58 AM', 1),
(110, NULL, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 07:10:33', NULL, 0),
(111, NULL, 'nikh', 0x3a3a3100000000000000000000000000, '2023-03-27 07:11:20', NULL, 0),
(112, NULL, 'nikhpphipi', 0x3a3a3100000000000000000000000000, '2023-03-27 07:11:27', NULL, 0),
(113, NULL, 'sachindra@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 10:00:58', NULL, 0),
(114, NULL, 'sachindra@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 10:01:44', NULL, 0),
(115, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 10:02:28', '27-03-2023 03:34:18 PM', 1),
(116, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 10:23:10', '27-03-2023 04:10:02 PM', 1),
(117, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 10:42:49', '27-03-2023 04:17:57 PM', 1),
(118, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 10:49:30', '27-03-2023 05:20:16 PM', 1),
(119, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 11:50:19', '27-03-2023 05:20:22 PM', 1),
(120, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 17:46:04', '27-03-2023 11:16:48 PM', 1),
(121, NULL, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-04 05:41:30', NULL, 0),
(122, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-04-04 05:41:35', NULL, 1),
(123, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-04-04 05:52:33', '04-04-2023 11:31:52 AM', 1),
(124, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-04-04 07:30:45', '04-04-2023 01:01:15 PM', 1),
(125, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-04-04 07:32:03', '04-04-2023 01:02:08 PM', 1),
(126, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-04-04 07:32:26', '04-04-2023 01:02:31 PM', 1),
(127, 1, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-04-04 07:33:11', '04-04-2023 01:03:16 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2022-10-30 18:09:46', NULL),
(2, 'Internal Medicine', '2022-10-30 18:09:57', NULL),
(3, 'Obstetrics and Gynecology', '2022-10-30 18:10:18', NULL),
(4, 'Dermatology', '2022-10-30 18:10:28', NULL),
(5, 'Pediatrics', '2022-10-30 18:10:37', NULL),
(6, 'Radiology', '2022-10-30 18:10:46', NULL),
(7, 'General Surgery', '2022-10-30 18:10:56', NULL),
(8, 'Ophthalmology', '2022-10-30 18:11:03', NULL),
(9, 'Anesthesia', '2022-10-30 18:11:15', NULL),
(10, 'Pathology', '2022-10-30 18:11:22', NULL),
(11, 'ENT', '2022-10-30 18:11:30', NULL),
(12, 'Dental Care', '2022-10-30 18:11:39', NULL),
(13, 'Dermatologists', '2022-10-30 18:12:02', NULL),
(14, 'Endocrinologists', '2022-10-30 18:12:10', NULL),
(15, 'Neurologists', '2022-10-30 18:12:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Anuj kumar', 'anujk30@test.com', 1425362514, 'This is for testing purposes.   This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.', '2022-10-30 16:52:03', NULL, NULL, NULL),
(2, 'Anuj kumar', 'ak@gmail.com', 1111122233, 'This is for testing', '2022-11-06 13:13:41', 'Contact the patient', '2022-11-06 13:13:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '80/120', '120', '85', '98', 'Test', '2022-11-06 13:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(2, 'contactus', 'Contact Details', 'B-204/110, South city,Telibagh, Lucknow-226002,India', 'info@gmail.com', 8888444400, '2022-12-20 07:24:07', '9 am To 8 Pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Amit Kumar', 1231231230, 'amitk@gmail.com', 'Male', 'New Lucknow india', 35, 'NA', '2022-11-06 13:18:31', '2023-03-25 18:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, NULL, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-21 13:16:46', NULL, 0),
(28, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-21 13:17:31', NULL, 1),
(29, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-21 13:23:19', NULL, 1),
(30, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-21 13:23:55', NULL, 1),
(31, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-21 13:30:16', NULL, 1),
(32, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-21 17:35:34', NULL, 1),
(33, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-21 17:36:39', NULL, 1),
(34, NULL, 'hguyh', 0x3a3a3100000000000000000000000000, '2023-03-22 07:35:31', NULL, 0),
(35, NULL, 'hgghujh', 0x3a3a3100000000000000000000000000, '2023-03-22 07:35:53', NULL, 0),
(36, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-22 07:51:05', NULL, 1),
(37, NULL, 'gergr', 0x3a3a3100000000000000000000000000, '2023-03-25 18:02:34', NULL, 0),
(38, NULL, '', 0x3a3a3100000000000000000000000000, '2023-03-25 18:02:36', NULL, 0),
(39, NULL, '', 0x3a3a3100000000000000000000000000, '2023-03-25 18:02:36', NULL, 0),
(40, NULL, '', 0x3a3a3100000000000000000000000000, '2023-03-25 18:02:38', NULL, 0),
(41, NULL, '', 0x3a3a3100000000000000000000000000, '2023-03-25 18:02:42', NULL, 0),
(42, NULL, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:48:06', NULL, 0),
(43, NULL, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:48:31', NULL, 0),
(44, NULL, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:49:19', NULL, 0),
(45, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 18:49:30', NULL, 1),
(46, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 19:37:38', '26-03-2023 01:07:42 AM', 1),
(47, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 19:38:47', '26-03-2023 01:08:51 AM', 1),
(48, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 19:40:30', '26-03-2023 01:10:35 AM', 1),
(49, NULL, 'anuj@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 19:40:45', NULL, 0),
(50, 2, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-25 19:41:17', '26-03-2023 01:11:44 AM', 1),
(51, NULL, 'nikhil@test.co', 0x3a3a3100000000000000000000000000, '2023-03-25 19:41:53', NULL, 0),
(52, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-25 19:41:55', '26-03-2023 01:11:58 AM', 1),
(53, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 06:19:48', NULL, 1),
(54, NULL, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 09:48:34', NULL, 0),
(55, 1, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 09:48:53', NULL, 1),
(56, NULL, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 10:06:24', NULL, 0),
(57, NULL, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 10:21:10', NULL, 0),
(58, NULL, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 10:22:46', NULL, 0),
(59, NULL, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 10:22:46', NULL, 0),
(60, NULL, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 10:22:47', NULL, 0),
(61, NULL, '', 0x3a3a3100000000000000000000000000, '2023-03-27 10:22:48', NULL, 0),
(62, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-03-27 17:24:02', NULL, 0),
(63, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-03-27 17:24:12', NULL, 0),
(64, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-03-27 17:24:15', NULL, 0),
(65, NULL, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 17:47:19', NULL, 0),
(66, NULL, 'nikhil@test.com', 0x3a3a3100000000000000000000000000, '2023-03-27 17:47:35', NULL, 0),
(67, NULL, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-27 17:48:19', NULL, 0),
(68, 2, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-27 17:48:30', '27-03-2023 11:31:19 PM', 1),
(69, NULL, 'sachin@test.com', 0x3a3a3100000000000000000000000000, '2023-04-04 05:42:09', NULL, 0),
(70, 2, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-04 05:42:13', '04-04-2023 11:12:27 AM', 1),
(71, 2, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-04 05:43:18', '04-04-2023 11:13:22 AM', 1),
(72, 6, 'testind@mail.com', 0x3a3a3100000000000000000000000000, '2023-04-04 05:50:15', '04-04-2023 11:22:08 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Nikhil Singh', 'A 123 ABC Apartment Varansi 222145', 'Varanshi', 'male', 'nikhil@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-06 12:13:56', '2023-03-27 09:50:26'),
(2, 'Amit Verma', 'Lucknow india', 'Lucknow', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-06 13:15:32', '2023-03-06 18:30:00'),
(6, 'test ind', 'test ind', 'test ind', 'female', 'testind@mail.com', 'ceb6c970658f31504a901b89dcd3e461', '2023-04-04 05:50:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
