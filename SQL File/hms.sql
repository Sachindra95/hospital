-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2023 at 11:46 AM
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
(2, 'ENT', 1, 2, 500, '2022-11-17', '7:00 PM', '2022-11-06 13:16:18', 1, 1, NULL);

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
(1, 'ENT', 'Sachindra Vishwakarma', 'A 123 XYZ Apartment Gomti Nagar Ext Lucknow', '500', 142536250, 'sachin@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-10-30 18:16:52', '2023-01-10 06:21:27'),
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
(21, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 11:59:40', '06-11-2022 05:35:18 PM', 1),
(22, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:06:37', '06-11-2022 05:36:40 PM', 1),
(23, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:08:56', '06-11-2022 05:42:53 PM', 1),
(24, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:23:18', '06-11-2022 05:53:40 PM', 1),
(25, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:16:53', '06-11-2022 06:47:07 PM', 1),
(26, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:17:33', '06-11-2022 06:50:28 PM', 1),
(27, NULL, '', 0x3a3a3100000000000000000000000000, '2022-12-23 06:31:21', NULL, 0),
(28, NULL, '', 0x3a3a3100000000000000000000000000, '2022-12-23 06:31:23', NULL, 0),
(29, NULL, '', 0x3a3a3100000000000000000000000000, '2022-12-23 06:31:24', NULL, 0),
(30, NULL, '', 0x3a3a3100000000000000000000000000, '2022-12-23 06:31:24', NULL, 0),
(31, NULL, '', 0x3a3a3100000000000000000000000000, '2022-12-23 06:31:25', NULL, 0),
(32, NULL, '', 0x3a3a3100000000000000000000000000, '2022-12-23 06:31:26', NULL, 0),
(33, NULL, '', 0x3a3a3100000000000000000000000000, '2022-12-23 06:31:27', NULL, 0),
(34, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-01-05 06:51:32', NULL, 0),
(35, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-05 06:51:33', NULL, 0),
(36, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-01-06 06:01:17', NULL, 0),
(37, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-01-06 06:01:28', NULL, 1),
(38, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-06 06:25:21', NULL, 0),
(39, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-06 06:25:22', NULL, 0),
(40, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-06 06:25:23', NULL, 0),
(41, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-06 06:25:25', NULL, 0),
(42, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-06 07:43:53', NULL, 0),
(43, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-06 07:43:54', NULL, 0),
(44, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-06 07:43:55', NULL, 0),
(45, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-06 07:43:56', NULL, 0),
(46, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-06 07:43:57', NULL, 0),
(47, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-01-09 05:19:37', '09-01-2023 10:52:37 AM', 1),
(48, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-01-09 05:23:05', NULL, 0),
(49, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-01-09 05:23:18', '09-01-2023 10:53:21 AM', 1),
(50, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-01-09 05:27:41', '09-01-2023 10:57:44 AM', 1),
(51, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 05:28:47', NULL, 0),
(52, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 05:28:47', NULL, 0),
(53, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 05:28:48', NULL, 0),
(54, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 05:28:49', NULL, 0),
(55, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 05:28:50', NULL, 0),
(56, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 05:28:50', NULL, 0),
(57, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 05:28:50', NULL, 0),
(58, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 05:33:11', NULL, 0),
(59, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 05:33:12', NULL, 0),
(60, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 05:33:12', NULL, 0),
(61, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 05:33:13', NULL, 0),
(62, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 05:33:14', NULL, 0),
(63, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 05:33:14', NULL, 0),
(64, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-01-09 05:33:22', NULL, 1),
(65, NULL, 'thsrt', 0x3a3a3100000000000000000000000000, '2023-01-09 11:00:47', NULL, 0),
(66, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-01-10 06:15:13', '10-01-2023 11:53:23 AM', 1),
(67, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 07:36:03', NULL, 0),
(68, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 07:36:05', NULL, 0),
(69, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 07:36:06', NULL, 0),
(70, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 07:36:07', NULL, 0),
(71, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 07:36:07', NULL, 0),
(72, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 07:36:07', NULL, 0),
(73, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 07:36:08', NULL, 0),
(74, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 07:36:08', NULL, 0),
(75, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 07:36:09', NULL, 0),
(76, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 07:36:09', NULL, 0);

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
(15, 'Neurologists', '2022-10-30 18:12:30', NULL),
(18, '', '2023-01-06 08:23:18', NULL);

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
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost effective manner, with the goal of reducing the time and resources currently required for such tasks.</font></li><li style=\"text-align: left;\"><font color=\"#000000\">A significant part of the operation of any hospital involves the acquisition, management and timely retrieval of great volumes of information. This information typically involves; patient personal information and medical history, staff information, room and ward scheduling, staff scheduling, operating theater scheduling and various facilities waiting lists. All of this information must be managed in an efficient and cost wise fashion so that an institution\'s resources may be effectively utilized HMS will automate the management of the hospital making it more efficient and error free. It aims at standardizing data, consolidating data ensuring data integrity and reducing inconsistencies.&nbsp;</font></li></ul>', NULL, NULL, '2022-12-20 07:21:52', NULL),
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
(1, 1, 'Amit Kumar', 1231231230, 'amitk@gmail.com', 'male', 'New Delhi india', 35, 'NA', '2022-11-06 13:18:31', NULL);

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
(1, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:14:11', NULL, 1),
(2, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:21:20', '06-11-2022 05:53:00 PM', 1),
(3, NULL, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:43', NULL, 0),
(4, 2, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:58', '06-11-2022 06:50:46 PM', 1),
(5, NULL, '', 0x3a3a3100000000000000000000000000, '2022-12-26 08:49:06', NULL, 0),
(6, NULL, '', 0x3a3a3100000000000000000000000000, '2022-12-26 08:49:08', NULL, 0),
(7, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-01-05 06:31:00', NULL, 0),
(8, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-01-05 06:31:25', NULL, 0),
(9, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-01-05 06:32:16', NULL, 0),
(10, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-06 09:57:27', NULL, 0),
(11, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-06 09:57:33', NULL, 0),
(12, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-06 09:57:34', NULL, 0),
(13, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-06 09:57:35', NULL, 0),
(14, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-01-09 06:54:32', NULL, 0),
(15, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 09:39:17', NULL, 0),
(16, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 09:39:19', NULL, 0),
(17, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-09 09:39:21', NULL, 0),
(18, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-01-09 11:00:23', NULL, 0),
(19, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 10:22:54', NULL, 0),
(20, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 10:22:55', NULL, 0),
(21, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 10:22:56', NULL, 0),
(22, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 10:22:57', NULL, 0),
(23, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 10:22:58', NULL, 0),
(24, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 10:22:59', NULL, 0),
(25, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 10:22:59', NULL, 0),
(26, NULL, '', 0x3a3a3100000000000000000000000000, '2023-01-10 10:22:59', NULL, 0);

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
(1, 'Nikhil Singh', 'A 123 ABC Apartment BSB 222145', 'Varanshi', 'male', 'nikhil@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-06 12:13:56', NULL),
(2, 'Amit Verma', 'Lucknow india', 'Lucknow', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-06 13:15:32', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
