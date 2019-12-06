-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2019 at 02:59 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_administration`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id_card` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joining_date` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`id`, `admin_id`, `first_name`, `last_name`, `picture`, `date_of_birth`, `gender`, `nationality`, `national_id_card`, `contact_no`, `email`, `present_address`, `permanent_address`, `religion`, `joining_date`, `created`, `updated`) VALUES
(1, 1, 'Super', 'Admin', 'img_avatar.png', '1980-11-01', 'm', 'Bangladeshi', '3458743584756436', '01911123456', 'admin@idbsms.com', 'N/A', 'N/A', 'islam', '2017-11-01', '2017-11-12 12:14:35', '2018-02-08 14:27:07'),
(2, 2, 'Farhana', 'Parvin', 'female-no-photo-yet.jpg', '1990-05-18', 'Female', 'Bangladeshi', '34523464564564', '015456467', 'koly.parvin@gmail.com', 'Dhaka', 'Dhaka', 'Islam', '2018-02-05', '2018-02-10 06:26:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `username`, `password`, `position`, `role`, `created`, `updated`) VALUES
(1, 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'superadmin', 'admin', '2017-11-12 00:12:33', '2018-02-03 05:40:10'),
(2, 'farhana', 'a0cb73117b45c213b60e2c80faae2e27167d6daa', 'administrator', 'admin', '2018-01-24 06:07:06', '2018-02-10 00:23:09'),
(3, 'fatema', '7f190175f8ddcfe7bff3efe273d03bc7c61340ba', 'administrator', 'admin', '2018-01-24 06:07:40', '2018-02-03 05:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `startdate` varchar(48) NOT NULL,
  `enddate` varchar(48) NOT NULL,
  `allDay` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `startdate`, `enddate`, `allDay`) VALUES
(1, 'Exam midterm', '2018-02-07T00:00:00+05:30', '2018-02-07T00:00:00+05:30', 'false'),
(2, 'New Event', '2018-01-28T06:00:00+05:30', '2018-01-28T06:00:00+05:30', 'false'),
(3, 'New Event', '2018-02-05T00:00:00+05:30', '2018-02-05T00:00:00+05:30', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numeric_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` int(5) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `class`, `numeric_name`, `session_id`, `shift_id`, `created`, `updated`) VALUES
(1, '1', 'kg-one', 1, 1, '2017-11-16 02:00:46', '2017-11-16 02:44:33'),
(2, '2', 'kg-two', 1, 2, '2017-11-16 02:00:46', '2017-11-16 02:44:42'),
(3, '3', 'kg-three', 1, 2, '2017-11-16 02:02:37', '2018-02-10 06:27:20'),
(4, '6', 'Class Six', 1, 1, '2017-11-16 02:02:37', '2018-02-10 06:30:20'),
(5, '8', 'Class Eight', 1, 2, '2017-11-16 02:03:55', '2018-02-10 06:28:06'),
(6, '4', 'Class Four', 1, 1, '2017-11-16 02:03:55', '2018-02-10 06:28:37'),
(7, '5', 'Class Five', 1, 1, '2017-11-16 02:04:58', '2018-02-10 06:30:01'),
(8, '6', 'Class Six', 1, 2, '2017-11-16 02:04:58', '2018-02-10 06:30:38'),
(9, '8', 'Class Eight', 1, 1, '2017-11-17 12:54:00', '2018-02-10 06:29:31'),
(10, '2', 'Kg-two', 1, 1, '2017-11-17 15:18:46', '2018-02-10 06:39:11'),
(11, '3', 'Class Three', 1, 2, '2017-11-17 15:24:45', '2018-02-10 06:34:51'),
(12, '10', 'Class Ten', 1, 2, '2017-11-17 15:31:06', '2018-02-10 06:31:44'),
(14, '10', 'Class Ten', 1, 2, '2017-11-17 15:42:19', '2018-02-10 06:32:45'),
(15, '10', 'Class Ten', 0, 2, '2017-11-17 15:44:00', '2018-02-10 06:33:07'),
(18, '8', 'Class Eight', 0, 2, '2017-11-17 15:48:05', '2018-02-10 06:32:18'),
(19, '5', 'Class Five', 0, 2, '2017-11-17 16:06:23', '2018-02-10 06:33:41'),
(22, '11', 'eleven', 1, 1, '2017-11-23 10:58:15', '0000-00-00 00:00:00'),
(23, 'Nursery', 'Little Flowers', 1, 1, '2017-11-23 11:01:02', '2018-02-10 06:37:55'),
(24, 'kg-2', 'Little Angels', 1, 2, '2017-11-23 11:02:56', '2018-02-10 06:31:08'),
(25, 'kg-1', 'little angel', 1, 1, '2017-11-23 11:05:00', '0000-00-00 00:00:00'),
(26, 'Play Group', 'little bloomers', 1, 1, '2017-11-23 11:06:08', '2018-02-10 06:34:10'),
(28, 'Class', 'III', 0, 1, '2017-11-23 11:10:58', '2018-02-10 06:39:43'),
(29, '9', 'Class Nine', 0, 1, '2017-11-23 11:13:06', '2018-02-10 06:38:21'),
(33, 'dfgdfg', 'dfghdfg', 2, 2, '2017-11-23 12:36:18', '0000-00-00 00:00:00'),
(34, 'uki7', 'u7ki8', 3, 3, '2017-11-25 09:17:15', '0000-00-00 00:00:00'),
(35, 'ikliuk', 'k,li.', 3, 3, '2017-11-25 09:17:27', '0000-00-00 00:00:00'),
(36, 'l,li.,', 'iuoliuol', 3, 3, '2017-11-25 09:17:35', '0000-00-00 00:00:00'),
(37, 'fggg', 'gfggg', 1, 1, '2017-11-25 09:35:33', '0000-00-00 00:00:00'),
(38, 'ddd', 'edddd', 1, 1, '2017-12-04 09:10:30', '0000-00-00 00:00:00'),
(40, 'play-group', '0.3', 1, 1, '2017-12-04 12:03:17', '0000-00-00 00:00:00'),
(41, 'five', '5', 3, 3, '2017-12-05 12:27:12', '0000-00-00 00:00:00'),
(42, 'classV', '6', 3, 3, '2017-12-05 12:27:28', '0000-00-00 00:00:00'),
(43, 'class6', '7', 3, 3, '2017-12-05 12:27:41', '0000-00-00 00:00:00'),
(44, 'gdxfg', '8', 3, 3, '2017-12-05 12:27:50', '0000-00-00 00:00:00'),
(45, 'Class IX', '9', 3, 3, '2018-01-09 09:19:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `class_schedule`
--

CREATE TABLE `class_schedule` (
  `id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `class_id` int(5) NOT NULL,
  `section_id` int(5) NOT NULL,
  `teacher_id` int(5) NOT NULL,
  `subject_id` int(5) NOT NULL,
  `starting_time` time NOT NULL,
  `ending_time` time NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_section`
--

CREATE TABLE `class_section` (
  `id` int(11) NOT NULL,
  `class_id` int(5) NOT NULL,
  `section_id` int(5) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_section`
--

INSERT INTO `class_section` (`id`, `class_id`, `section_id`, `teacher_id`, `created`, `updated`) VALUES
(1, 9, 3, 0, '0000-00-00 00:00:00', '2018-01-08 13:20:09'),
(2, 14, 2, 1, '0000-00-00 00:00:00', '2018-02-10 07:02:59'),
(3, 3, 3, 0, '2018-01-23 12:53:03', '0000-00-00 00:00:00'),
(4, 4, 1, 1, '2018-02-09 17:34:29', '0000-00-00 00:00:00'),
(5, 9, 4, 2, '2018-02-09 17:35:29', '0000-00-00 00:00:00'),
(6, 9, 2, 1, '2018-02-09 17:35:39', '0000-00-00 00:00:00'),
(7, 4, 4, 1, '2018-02-09 17:36:07', '0000-00-00 00:00:00'),
(8, 41, 3, 2, '2018-02-10 06:13:11', '0000-00-00 00:00:00'),
(9, 2, 3, 1, '2018-02-10 06:13:23', '2018-02-10 07:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `class_sectionwise_subject`
--

CREATE TABLE `class_sectionwise_subject` (
  `id` int(11) NOT NULL,
  `class_id` int(5) NOT NULL,
  `section_id` int(5) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_sectionwise_subject`
--

INSERT INTO `class_sectionwise_subject` (`id`, `class_id`, `section_id`, `subject_id`, `created`, `updated`) VALUES
(1, 2, 1, 2, '2018-01-23 12:59:10', '0000-00-00 00:00:00'),
(2, 4, 1, 1, '2018-01-24 09:43:04', '2018-02-10 07:01:36'),
(5, 9, 3, 3, '2018-01-24 10:11:06', '0000-00-00 00:00:00'),
(6, 9, 3, 1, '2018-01-24 10:11:40', '0000-00-00 00:00:00'),
(7, 9, 3, 2, '2018-01-24 10:11:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `class_teacher`
--

CREATE TABLE `class_teacher` (
  `id` int(11) NOT NULL,
  `class_section_id` int(11) NOT NULL,
  `teacher_id` int(5) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `exam_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` float(4,2) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `exam_name`, `percentage`, `startdate`, `enddate`, `active`, `created`, `updated`) VALUES
(3, 'Test', 2.00, '2017-12-13', '2017-12-20', 0, '2017-12-13 09:10:24', '2018-01-08 12:31:36'),
(4, 'MidTerm', 3.00, '2017-12-18', '2017-12-27', 0, '2017-12-13 09:22:55', '2018-01-08 12:31:27'),
(5, 'yearly', 3.00, '2017-12-04', '2017-12-24', 1, '2017-12-18 12:54:19', '2018-01-08 12:31:16'),
(6, 'Half Yearly', 10.00, '0000-00-00', '2019-01-30', 1, '2017-12-21 12:06:52', '2019-01-08 15:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedule`
--

CREATE TABLE `exam_schedule` (
  `id` int(11) NOT NULL,
  `exam_id` int(5) NOT NULL,
  `class_id` int(5) NOT NULL,
  `section_id` int(5) NOT NULL,
  `subject_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `starting_time` time NOT NULL,
  `ending_time` time NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `gender_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender_id`, `gender_name`) VALUES
(1, '1', 'Male'),
(2, '2', 'Female'),
(3, '3', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `grading_system`
--

CREATE TABLE `grading_system` (
  `id` int(11) NOT NULL,
  `grade` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_point` decimal(4,2) NOT NULL,
  `max_mark` int(3) NOT NULL,
  `min_mark` int(2) NOT NULL,
  `comments` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grading_system`
--

INSERT INTO `grading_system` (`id`, `grade`, `grade_point`, `max_mark`, `min_mark`, `comments`, `created`, `updated`) VALUES
(1, 'A+', '5.00', 0, 80, 'Execellent', '2017-12-24 11:24:50', '2017-12-24 12:42:55'),
(2, 'B', '3.00', 0, 60, 'improvement needed', '2017-12-24 11:24:50', '2017-12-24 12:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `marks_details`
--

CREATE TABLE `marks_details` (
  `id` int(11) NOT NULL,
  `marks_info_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `mcq` decimal(20,0) NOT NULL,
  `descriptive` decimal(20,0) NOT NULL,
  `prac` decimal(20,0) NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks_details`
--

INSERT INTO `marks_details` (`id`, `marks_info_id`, `student_id`, `subject_id`, `mcq`, `descriptive`, `prac`, `comment`, `created`, `updated`) VALUES
(1, 1, 0, 0, '0', '0', '0', '', '2018-01-17 06:32:21', '0000-00-00 00:00:00'),
(2, 2, 0, 0, '0', '0', '0', '', '2018-01-17 06:32:21', '0000-00-00 00:00:00'),
(3, 3, 0, 0, '0', '0', '0', '', '2018-01-17 06:35:04', '0000-00-00 00:00:00'),
(4, 5, 0, 0, '0', '0', '0', '', '2018-01-17 06:40:20', '0000-00-00 00:00:00'),
(5, 6, 1, 1, '20', '45', '10', 'ok', '2018-01-22 04:04:13', '0000-00-00 00:00:00'),
(6, 8, 1, 2, '2', '1', '0', 'fail', '2018-01-23 03:39:43', '0000-00-00 00:00:00'),
(1, 1, 0, 0, '0', '0', '0', '', '2018-01-17 06:32:21', '0000-00-00 00:00:00'),
(2, 2, 0, 0, '0', '0', '0', '', '2018-01-17 06:32:21', '0000-00-00 00:00:00'),
(3, 3, 0, 0, '0', '0', '0', '', '2018-01-17 06:35:04', '0000-00-00 00:00:00'),
(4, 5, 0, 0, '0', '0', '0', '', '2018-01-17 06:40:20', '0000-00-00 00:00:00'),
(5, 6, 1, 1, '20', '45', '10', 'ok', '2018-01-22 04:04:13', '0000-00-00 00:00:00'),
(6, 8, 1, 2, '2', '1', '0', 'fail', '2018-01-23 03:39:43', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `marks_info`
--

CREATE TABLE `marks_info` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `examdate` date NOT NULL,
  `total_marks` decimal(10,0) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks_info`
--

INSERT INTO `marks_info` (`id`, `exam_id`, `class_id`, `section_id`, `examdate`, `total_marks`, `created`, `updated`) VALUES
(1, 1, 5, 1, '0000-00-00', '100', '2018-01-17 12:19:05', '0000-00-00 00:00:00'),
(2, 2, 18, 14, '2018-01-20', '15', '2018-01-17 12:27:05', '0000-00-00 00:00:00'),
(3, 2, 9, 1, '2018-01-13', '15', '2018-01-17 12:33:26', '0000-00-00 00:00:00'),
(4, 2, 9, 1, '2018-01-31', '15', '2018-01-17 12:35:40', '0000-00-00 00:00:00'),
(5, 2, 5, 1, '2018-01-27', '15', '2018-01-17 12:40:20', '0000-00-00 00:00:00'),
(6, 1, 6, 1, '2018-02-28', '120', '2018-01-22 10:04:13', '0000-00-00 00:00:00'),
(7, 1, 6, 1, '2018-01-12', '15', '2018-01-23 09:38:21', '0000-00-00 00:00:00'),
(8, 1, 6, 1, '2018-01-12', '15', '2018-01-23 09:39:43', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `name`, `size`, `type`, `created`, `updated`) VALUES
(1, 'R31_Exam-8_wordpress & codeIgniter.docx', '36548', 'docx', '2018-02-09 19:59:05', '0000-00-00 00:00:00'),
(2, 'Algorithms_and_Flowcharts.pdf', '1423847', 'pdf', '2018-02-09 20:01:36', '0000-00-00 00:00:00'),
(3, 'CSS3 Evidence Questions (2).docx', '263407', 'docx', '2018-02-09 20:34:23', '0000-00-00 00:00:00'),
(4, 'Mid term evidence round 33.docx', '16110', 'docx', '2018-02-09 20:34:54', '0000-00-00 00:00:00'),
(5, 'Microsoft Word Practice Quiz.docx', '33880', 'docx', '2018-02-09 20:46:28', '0000-00-00 00:00:00'),
(6, '9780735658028.pdf', '18207898', 'pdf', '2018-02-09 20:47:43', '0000-00-00 00:00:00'),
(7, 'Excel Note.docx', '15008', 'docx', '2018-02-09 21:02:08', '0000-00-00 00:00:00'),
(8, 'Momo Note.docx', '110311', 'docx', '2018-02-09 21:06:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `our_edit`
--

CREATE TABLE `our_edit` (
  `id` int(11) NOT NULL,
  `sessoin_id` int(11) NOT NULL,
  `session_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_edit`
--

INSERT INTO `our_edit` (`id`, `sessoin_id`, `session_name`, `created`) VALUES
(1, 1, 'Running session', '2019-02-06 01:51:06'),
(2, 0, 'End session', '2019-02-06 01:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `id` int(11) NOT NULL,
  `religion_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`id`, `religion_id`, `religion_name`) VALUES
(1, '1', 'Islam'),
(2, '2', 'Hindu'),
(3, '3', 'Buddhism'),
(4, '4', 'Christianity'),
(5, '5', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `section_table`
--

CREATE TABLE `section_table` (
  `id` int(11) NOT NULL,
  `section_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nick_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_table`
--

INSERT INTO `section_table` (`id`, `section_name`, `nick_name`, `created`, `updated`) VALUES
(1, 'A', 'A', '2018-02-09 14:21:22', '2018-02-10 06:42:18'),
(2, 'A', 'Science', '2017-12-24 09:44:39', '2018-02-10 06:42:32'),
(3, 'A', 'Main', '2018-01-08 13:19:16', '2018-02-10 06:42:43'),
(4, 'B', 'B', '2018-02-09 17:34:59', '2018-02-10 06:42:55'),
(5, 'B', 'ARTS', '2018-02-10 06:43:23', '0000-00-00 00:00:00'),
(6, 'B', 'Second', '2018-02-10 06:43:23', '0000-00-00 00:00:00'),
(7, 'C', 'Commerce', '2018-02-10 06:43:57', '0000-00-00 00:00:00'),
(8, 'C', 'Third', '2018-02-10 06:43:57', '0000-00-00 00:00:00'),
(9, 'Flower', 'Nursery', '2018-02-10 06:44:47', '0000-00-00 00:00:00'),
(10, 'Flower', 'Playgroup', '2018-02-10 06:44:47', '0000-00-00 00:00:00'),
(11, 'C', 'C', '2018-02-10 06:45:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `session_table`
--

CREATE TABLE `session_table` (
  `id` int(11) NOT NULL,
  `sessionname` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session_table`
--

INSERT INTO `session_table` (`id`, `sessionname`, `startdate`, `enddate`, `active`, `created`, `updated`) VALUES
(1, '2017-2018', '2017-01-01', '2017-12-29', 1, '2017-11-16 01:52:32', '2018-02-10 07:00:34'),
(2, '2016-2017', '2016-01-01', '2016-12-29', 1, '2017-11-16 01:51:58', '2019-02-05 17:09:50'),
(4, '2009-2010', '2019-02-04', '2019-02-19', 0, '2017-12-18 09:05:43', '2019-02-05 17:09:39'),
(5, '2010-2011', '2010-01-31', '2010-12-20', 0, '2017-12-18 09:17:20', '2017-12-18 12:11:42'),
(6, '1999-2000', '1999-01-01', '1999-12-28', 0, '2017-12-18 12:12:21', '0000-00-00 00:00:00'),
(7, '2001-2002', '2001-01-07', '2002-01-30', 0, '2017-12-18 12:13:17', '0000-00-00 00:00:00'),
(9, '2016-2017', '2019-01-30', '0000-00-00', 1, '2019-01-12 15:32:42', '0000-00-00 00:00:00'),
(10, '2018-2019', '2019-02-06', '2019-02-28', 1, '2019-02-06 01:41:58', '0000-00-00 00:00:00'),
(14, 'yutuyu22', '2019-02-01', '2019-02-08', 2, '2019-02-06 01:53:48', '0000-00-00 00:00:00'),
(15, 'uyuy', '2019-02-28', '2019-02-08', 2, '2019-02-06 01:54:33', '0000-00-00 00:00:00'),
(16, 'jj', '2019-02-15', '2019-02-14', 1, '2019-02-06 01:55:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`id`, `name`, `start_time`, `end_time`, `created`, `updated`) VALUES
(1, 'Morning', '13:20:00', '06:20:00', '2017-11-16 01:55:15', '2018-02-10 06:59:53'),
(2, 'Day', '15:00:00', '08:00:00', '2017-11-27 09:46:02', '2018-02-10 07:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `studentwise_class_section`
--

CREATE TABLE `studentwise_class_section` (
  `id` int(11) NOT NULL,
  `class_id` int(5) NOT NULL,
  `section_id` int(5) NOT NULL,
  `student_id` int(5) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentwise_class_section`
--

INSERT INTO `studentwise_class_section` (`id`, `class_id`, `section_id`, `student_id`, `active`, `created`, `updated`) VALUES
(1, 6, 1, 1, 1, '2018-01-20 09:30:59', '2018-01-21 08:57:43'),
(2, 3, 2, 2, 1, '2018-01-20 09:30:59', '2018-02-10 06:58:40'),
(3, 4, 1, 3, 1, '2018-02-01 11:36:56', '2018-02-10 06:58:52'),
(4, 6, 1, 4, 1, '2018-02-01 11:36:56', '0000-00-00 00:00:00'),
(5, -1, -1, 5, 1, '2019-01-08 15:41:59', '0000-00-00 00:00:00'),
(6, 37, 1, 6, 1, '2019-01-08 16:20:16', '0000-00-00 00:00:00'),
(7, 2, 3, 8, 1, '2019-02-05 17:19:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attendance_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `student_id`, `attendance_status`, `date`) VALUES
(1, 1, 'yes', '2018-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_occupation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_occupation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `first_name`, `last_name`, `picture`, `date_of_birth`, `gender`, `father_name`, `mother_name`, `f_occupation`, `m_occupation`, `contact_no`, `present_address`, `permanent_address`, `religion`, `nationality`, `language`, `created`, `updated`) VALUES
(1, 'Monoarul', 'Sami', 'boy.png', '1984-11-11', 'Male', 'MR.Tom Cruise', 'MRS. Catherin Rose', 'Service Holder', 'House wife', '452345345', 'Dhaka', 'Sirajgonj', 'Islam', 'Bangladeshi', 'Bangla', '2018-02-01 10:14:34', '2018-02-09 07:30:11'),
(2, 'Anna', 'Maria', 'images.png', '2000-12-12', 'Female', 'Mr.Martin', 'Mrs. Maria', 'Service Holder', 'House Wife', '3452345345', 'Dhaka', 'Australia', '-----', 'Australlia', 'English', '2018-02-01 10:14:34', '2018-02-10 06:49:04'),
(3, 'Afrin', 'Keya', 'images.png', '2008-05-05', 'Female', 'N/A', 'N/A', 'Business Man', 'House Wife', '5687659876', 'Dhaka', 'Dhaka', '------', 'Bangladeshi', 'Bangla', '2018-02-01 11:36:09', '2018-02-10 06:51:24'),
(4, 'Amin', 'Sharif', 'd2c4d62a1986c5d533a6ddd790623124.jpg', '2010-07-07', 'Male', 'Mahmud Islam', 'Mefti Islam', 'Service Holder', 'Service Holder', '3452345456', 'Dhaka', 'Dhaka', '-----', 'Bangladeshi', 'Bangla', '2018-02-01 11:36:09', '2018-02-10 06:54:14'),
(5, 'zahid', 'lis', '1546962119.jpg', '2019-01-04', 'male', 'ad', 'adsd', 'ada', 'dad', '017398987', 'fgadf', 'sdfdasf', 'sdfd', 'adf', 'language', '2019-01-08 15:41:59', '0000-00-00 00:00:00'),
(6, 'wwrfw', 'sdfsfd', '1546964416.jpg', '2019-01-04', 'female', '', 'sadfdsa', 'afdsf', 'dsfdsf', '565525', 'afda', 'asdfsf', 'dsafds', 'afdsf', 'language', '2019-01-08 16:20:16', '0000-00-00 00:00:00'),
(7, 'Solayman', 'Sagor', '302b5-received_2111376092509996.jpeg', '1993-01-17', '1', 'Md.Abdul Kayum', 'Salma Begum', 'Service Holder', 'House Holder', '01400975575', 'Mirpur', 'Mirpur', '1', 'Bangladesh', 'Bangladesh', '2019-02-05 16:52:15', '0000-00-00 00:00:00'),
(8, 'Nur', 'Nur', '1549387190.JPG', '2019-02-05', 'male', 'Abdul', 'Nilu', 'Teacher', 'House', '1674437137', 'Mirpur', 'Sewrapara', 'Islam', 'Dhaka', 'language', '2019-02-05 17:19:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_user`
--

CREATE TABLE `student_user` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `admission_roll` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_user`
--

INSERT INTO `student_user` (`id`, `student_id`, `admission_roll`, `password`, `created`, `updated`) VALUES
(1, 1, '1234', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2018-01-26 10:16:31', '2018-02-08 14:22:21'),
(2, 2, '2017003', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2018-02-02 19:11:58', '2018-02-10 06:56:23'),
(3, 3, '2017004', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2018-02-02 19:13:33', '2018-02-10 06:56:16'),
(4, 4, '2017005', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2018-02-02 19:13:33', '2018-02-10 06:56:31'),
(5, 5, '', 'd033e22ae348aeb5660fc2140aec35850c4da997', '2019-01-08 15:41:59', '0000-00-00 00:00:00'),
(6, 6, '120', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2019-01-08 16:20:16', '0000-00-00 00:00:00'),
(7, 8, '2', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2019-02-05 17:19:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_category` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_name`, `subject_category`, `created`, `updated`) VALUES
(1, 'English', 'General', '2017-12-13 10:20:40', '2017-12-13 10:29:30'),
(2, 'Bangla', 'General', '2018-01-08 12:38:35', '2018-01-08 12:38:48'),
(3, 'General Math', 'General', '2018-01-08 12:39:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `id` int(11) NOT NULL,
  `teacher_id` int(5) NOT NULL,
  `attendance_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id_card` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joining_date` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`id`, `teacher_id`, `first_name`, `last_name`, `picture`, `date_of_birth`, `gender`, `subject`, `nationality`, `national_id_card`, `contact_no`, `email`, `present_address`, `permanent_address`, `religion`, `joining_date`, `created`, `updated`) VALUES
(1, 12, 'fatema', 'Khatun', 'user-310807_960_720.png', '1988-11-27', 'female', 'bangla', 'England', '567567', '657', '45ac@bc.com', 'Dhaka', 'Bhola', '------', '2017-12-28', '2018-02-08 18:45:05', '0000-00-00 00:00:00'),
(2, 123, 'Taylor', 'Roads', 'avatar-2.png', '1982-10-11', 'male', 'english', 'bangladeshi', '346363', '231244', 'ty@gmail.com', 'Sylhet', 'Dhaka', '------', '2017-12-21', '2018-02-08 18:04:04', '0000-00-00 00:00:00'),
(3, 1, 'Zahidul', 'Islam', '05072012144.jpg', '2019-01-02', 'male', 'bangla', 'Banglasehi', '6914127000115', '017536989', 'ad@gmail.com', 'ad', 'ad', 'islam', '2019-01-07', '2019-01-12 15:38:01', '0000-00-00 00:00:00'),
(4, 0, 'mr', 'teachr', '20150930_085320.jpg', '2019-01-30', 'male', 'math', 'Banglasehi', '199469141277001', '254', 'teacher@gmail.com', 'dhaka', 'natore', 'islam', '2019-01-17', '2019-01-12 15:41:30', '0000-00-00 00:00:00'),
(5, 1244519, 'Tanzir', 'Nur', 'received_728228690846639.jpeg', '2019-02-12', 'male', 'english', 'Bangladesh', '1235789', '01674437137', 'tanmzirnur@gmail.com', 'Mirpur', 'Mirpur', 'Islam', '2019-02-05', '2019-02-05 05:10:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_user`
--

CREATE TABLE `teacher_user` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_user`
--

INSERT INTO `teacher_user` (`id`, `teacher_id`, `username`, `password`, `created`, `updated`) VALUES
(1, 1, 'fatema', '7f190175f8ddcfe7bff3efe273d03bc7c61340ba', '2018-01-25 10:17:25', '2018-02-08 18:39:56'),
(2, 2, 'tylor', '724868b1d1b5e5b9ebcb9faf911a0ee648e1250f', '2018-01-25 12:20:39', '2018-02-08 18:40:07'),
(3, 3, 'Zahidul', 'admin', '2019-01-08 15:34:02', '0000-00-00 00:00:00'),
(4, 4, 'teacher', 'teacher', '2019-01-12 15:43:07', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_schedule`
--
ALTER TABLE `class_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_section`
--
ALTER TABLE `class_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_sectionwise_subject`
--
ALTER TABLE `class_sectionwise_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grading_system`
--
ALTER TABLE `grading_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_info`
--
ALTER TABLE `marks_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_edit`
--
ALTER TABLE `our_edit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_table`
--
ALTER TABLE `section_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_table`
--
ALTER TABLE `session_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentwise_class_section`
--
ALTER TABLE `studentwise_class_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_user`
--
ALTER TABLE `student_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admission_roll` (`admission_roll`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_user`
--
ALTER TABLE `teacher_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `class_schedule`
--
ALTER TABLE `class_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_section`
--
ALTER TABLE `class_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `class_sectionwise_subject`
--
ALTER TABLE `class_sectionwise_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `class_teacher`
--
ALTER TABLE `class_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grading_system`
--
ALTER TABLE `grading_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marks_info`
--
ALTER TABLE `marks_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `our_edit`
--
ALTER TABLE `our_edit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `section_table`
--
ALTER TABLE `section_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `session_table`
--
ALTER TABLE `session_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `studentwise_class_section`
--
ALTER TABLE `studentwise_class_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_user`
--
ALTER TABLE `student_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_user`
--
ALTER TABLE `teacher_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher_user`
--
ALTER TABLE `teacher_user`
  ADD CONSTRAINT `teacher_user_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_info` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
