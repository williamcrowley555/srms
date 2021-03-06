-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 03, 2020 lúc 11:36 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `srms`
--
CREATE DATABASE IF NOT EXISTS `srms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `srms`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  `TeacherId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `UserName`, `Password`, `updationDate`, `TeacherId`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(5) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `TeacherId` int(11) NOT NULL,
  `FacultyId` int(11) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `TeacherId`, `FacultyId`, `CreationDate`, `UpdationDate`) VALUES
(9, 'First', 1, 'DCT', 1, 1, '2020-11-30 13:59:40', NULL),
(10, 'Second', 2, 'DCT', 2, 1, '2020-11-30 13:59:40', NULL),
(11, 'Third', 3, 'DCT', 3, 1, '2020-11-30 14:00:18', NULL),
(12, 'Fourth', 4, 'DCT', 4, 1, '2020-11-30 14:01:01', NULL),
(13, 'Fifth', 5, 'DCT', 5, 1, '2020-11-30 14:01:01', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblfaculty`
--

CREATE TABLE `tblfaculty` (
  `FacultyId` int(11) NOT NULL,
  `FacultyName` varchar(100) NOT NULL,
  `TeacherId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblfaculty`
--

INSERT INTO `tblfaculty` (`FacultyId`, `FacultyName`, `TeacherId`) VALUES
(1, 'Information Technology', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(3) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(68, 1, 7, 75, '2020-12-03 10:20:06', NULL),
(69, 1, 9, 80, '2020-12-03 10:20:06', NULL),
(70, 1, 2, 80, '2020-12-03 10:20:06', NULL),
(71, 1, 4, 80, '2020-12-03 10:20:06', NULL),
(72, 1, 10, 80, '2020-12-03 10:20:06', NULL),
(73, 1, 5, 88, '2020-12-03 10:20:06', NULL),
(74, 1, 5, 80, '2020-12-03 10:20:06', NULL),
(75, 1, 8, 80, '2020-12-03 10:20:06', NULL),
(76, 1, 11, 92, '2020-12-03 10:20:06', NULL),
(77, 1, 1, 80, '2020-12-03 10:20:06', NULL),
(78, 3, 7, 60, '2020-12-03 10:20:31', NULL),
(79, 3, 9, 60, '2020-12-03 10:20:31', NULL),
(80, 3, 2, 60, '2020-12-03 10:20:31', NULL),
(81, 3, 4, 60, '2020-12-03 10:20:31', NULL),
(82, 3, 10, 60, '2020-12-03 10:20:31', NULL),
(83, 3, 5, 60, '2020-12-03 10:20:31', NULL),
(84, 3, 5, 60, '2020-12-03 10:20:31', NULL),
(85, 3, 8, 60, '2020-12-03 10:20:31', NULL),
(86, 3, 11, 60, '2020-12-03 10:20:31', NULL),
(87, 3, 1, 60, '2020-12-03 10:20:31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Student A', '46456', 'info@studenta.com', 'Female', '1999-03-05', 9, '2020-11-30 04:30:57', '2020-11-30 04:31:22', 1),
(2, 'Student B', '10861', 'studentb@gmail.co', 'Male', '1998-02-02', 9, '2020-11-30 04:31:10', '2020-11-30 04:31:36', 0),
(3, 'Student C', '2626', 'studentc@gmail.com', 'Male', '2001-08-06', 10, '2020-11-30 04:33:02', '2020-11-30 04:33:15', 1),
(4, 'Student D', '990', 'studentd@gmail.com', 'Male', '2001-02-03', 10, '2020-11-30 04:33:40', '2020-11-30 04:34:24', 1),
(5, 'Student E', '122', 'studente01@gmail.com', 'Male', '2002-02-03', 10, '2020-11-30 04:34:43', '2020-11-30 04:34:58', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `FacultyId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `FacultyId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(29, 1, 1, 1, '2020-11-30 14:06:08', '2020-12-03 08:18:14'),
(31, 1, 2, 1, '2020-11-30 14:07:13', NULL),
(33, 1, 4, 1, '2020-11-30 14:07:13', NULL),
(35, 1, 5, 1, '2020-11-30 14:08:18', NULL),
(36, 1, 5, 1, '2020-11-30 14:08:18', NULL),
(38, 1, 6, 1, '2020-11-30 14:08:18', NULL),
(40, 1, 7, 1, '2020-11-30 14:08:18', NULL),
(46, 1, 8, 1, '2020-11-30 15:10:16', NULL),
(47, 1, 9, 1, '2020-11-30 15:10:16', NULL),
(48, 1, 10, 1, '2020-11-30 15:10:16', NULL),
(49, 1, 11, 0, '2020-11-30 15:10:16', '2020-12-03 08:21:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Philosophy of Marxism and Leninism', 'POMAL01', '2020-11-28 09:23:57', '2020-11-28 09:46:54'),
(2, 'English1', 'ENG01', '2020-11-28 09:24:25', '2020-11-28 10:12:22'),
(4, 'English2', 'ENG02', '2020-11-28 09:26:28', '0000-00-00 00:00:00'),
(5, 'Introduction to laws', 'ITL01', '2020-11-28 09:36:23', '0000-00-00 00:00:00'),
(6, 'Physical Education', 'PE01', '2020-11-28 18:43:29', '2020-11-28 18:44:10'),
(7, 'Analytics', 'ANLT01', '2020-11-28 18:52:41', '2020-11-28 18:52:59'),
(8, 'Introduction to Programming', 'ITP01', '2020-11-30 01:43:29', '2020-11-30 01:44:06'),
(9, 'Data Structures and Algorithms', 'DSA01', '2020-11-30 13:38:42', NULL),
(10, 'Fundamental Database', 'FD01', '2020-11-30 13:39:21', NULL),
(11, 'Java Programming', 'JP01', '2020-11-30 13:40:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblteachers`
--

CREATE TABLE `tblteachers` (
  `TeacherId` int(11) NOT NULL,
  `TeacherName` varchar(100) NOT NULL,
  `TeacherPhoneNumber` varchar(100) NOT NULL,
  `TeacherEmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblteachers`
--

INSERT INTO `tblteachers` (`TeacherId`, `TeacherName`, `TeacherPhoneNumber`, `TeacherEmail`) VALUES
(1, 'Teacher A', '0936520617', 'teachera123@gmail.com'),
(2, 'Teacher B', '0923258582', 'teachera123@gmail.com'),
(3, 'Teacher C', '0368750668', 'teacherc321@gmail.com'),
(4, 'Teacher D', '0813095295', 'teacherd159@gmail.com'),
(5, 'Teacher E', '0814050151', 'teachere229@gmail.com'),
(6, 'Teacher F', '0389610342', 'teacherf489@gmail.com'),
(7, 'Teacher G', '0936904706', 'teacherg741@gmail.com'),
(8, 'Teacher H', '0936548040', 'teacherh897@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_admin` (`TeacherId`);

--
-- Chỉ mục cho bảng `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_classes` (`TeacherId`),
  ADD KEY `fk2_classes` (`FacultyId`);

--
-- Chỉ mục cho bảng `tblfaculty`
--
ALTER TABLE `tblfaculty`
  ADD PRIMARY KEY (`FacultyId`),
  ADD KEY `fk1_faculty` (`TeacherId`);

--
-- Chỉ mục cho bảng `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk2_result` (`StudentId`);

--
-- Chỉ mục cho bảng `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`),
  ADD KEY `fk1_students` (`ClassId`);

--
-- Chỉ mục cho bảng `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_subjectcombination` (`FacultyId`),
  ADD KEY `fk2_subjectcombination` (`SubjectId`);

--
-- Chỉ mục cho bảng `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblteachers`
--
ALTER TABLE `tblteachers`
  ADD PRIMARY KEY (`TeacherId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tblfaculty`
--
ALTER TABLE `tblfaculty`
  MODIFY `FacultyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tblteachers`
--
ALTER TABLE `tblteachers`
  MODIFY `TeacherId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `fk1_admin` FOREIGN KEY (`TeacherId`) REFERENCES `tblteachers` (`TeacherId`);

--
-- Các ràng buộc cho bảng `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD CONSTRAINT `fk1_classes` FOREIGN KEY (`TeacherId`) REFERENCES `tblteachers` (`TeacherId`),
  ADD CONSTRAINT `fk2_classes` FOREIGN KEY (`FacultyId`) REFERENCES `tblfaculty` (`FacultyId`);

--
-- Các ràng buộc cho bảng `tblfaculty`
--
ALTER TABLE `tblfaculty`
  ADD CONSTRAINT `fk1_faculty` FOREIGN KEY (`TeacherId`) REFERENCES `tblteachers` (`TeacherId`);

--
-- Các ràng buộc cho bảng `tblresult`
--
ALTER TABLE `tblresult`
  ADD CONSTRAINT `fk2_result` FOREIGN KEY (`StudentId`) REFERENCES `tblstudents` (`StudentId`);

--
-- Các ràng buộc cho bảng `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD CONSTRAINT `fk1_students` FOREIGN KEY (`ClassId`) REFERENCES `tblclasses` (`id`);

--
-- Các ràng buộc cho bảng `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD CONSTRAINT `fk1_subjectcombination` FOREIGN KEY (`FacultyId`) REFERENCES `tblfaculty` (`FacultyId`),
  ADD CONSTRAINT `fk2_subjectcombination` FOREIGN KEY (`SubjectId`) REFERENCES `tblsubjects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
