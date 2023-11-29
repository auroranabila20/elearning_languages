-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 02:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Admin Kumar', 'admin@gmail.com', 'admin'),
(2, 'admin aurora', 'admin1@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `course_desc` text NOT NULL,
  `course_author` varchar(255) NOT NULL,
  `course_img` text NOT NULL,
  `course_duration` text NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(8, 'Bahasa Inggris', 'Belajar Bahasa Inggris sudah menjadi keharusan bagi semua orang. Di sini kami menyediakan kursus bahasa Inggris', 'Aurora Nabila Busra', '../image/courseimg/Bahasa Indonesia.png', '30 hari', 65, 80),
(9, 'Bahasa Korea', 'Kursus ini akan membantumu mempelajari bahasa korea secara detail', 'Aurora Nabila Busra', '../image/courseimg/korea.png', '30 hari', 65, 85),
(10, 'Bahasa Jepang', 'Kursus Bahasa Jepang ini akan mengulik tentang katakana, hiragana, dan kanji secara menyeluruh, dan kami akan mengadakan pertemuan setiap hari sabtu', 'Aurora Nabila Busra', '../image/courseimg/IPA.png', '30 hari', 65, 85),
(11, 'Bahasa Thailand', 'Kursus Bahasa Thailand ini akan mengulik lebih dalam mengenai aksorn, nada, vocabulary. Kami juga mengadakan kelas seru membedah Series thailand bersama', 'Aurora Nabila Busra', '../image/courseimg/Matematika (2).png', '30 hari', 65, 85),
(12, 'Bahasa Spanyol', 'Kursus bahasa Spanyol ini akan memfokuskan pelajar agar bisa berbicara. Karena kami tahu, bahasa spanyol sulit di grammarnya', 'Aurora Nabila Busra', '../image/courseimg/Bahasa Inggris.png', '30 hari', 65, 85),
(13, 'Bahasa Italia', 'Bahasa Italia ini sangat unik, dan di kursus ini kami akan mengajar dengan teknik latihan terus menerus.', 'Aurora Nabila Busra', '../image/courseimg/italian.png', '30 hari', 65, 85);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `respmsg` text NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`) VALUES
(3, 'ORDS98956453', 'ant@example.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-12'),
(7, 'ORDS57717951', 'jay@ischool.com', 14, 'TXN_SUCCESS', 'Txn Success', 400, '2019-09-13'),
(8, 'ORDS22968322', 'mario@ischool.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-13'),
(9, 'ORDS78666589', 'ignou@ischool.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-19'),
(10, 'ORDS59885531', 'sonam@gmail.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2020-07-04'),
(11, 'ORDS50116587', 'cap@example.com', 10, 'Success', 'Done', 800, '2029-09-23'),
(12, 'ORDS35559996', 'cap@example.com', 8, 'Success', 'Done', 65, '2029-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(3, 'Setelah Belajar banyak dari GlotQuest saya merasa fasih dalam berbicara bahasa asing.', 171),
(8, 'Saya bersyukur bisa belajar di GlotQuest. Saya selalu meluangkan waktu belajar di sini.', 172),
(9, 'GlotQuest Memiliki banyak metode belajarnya, saya merasa enjoy belajarnya.', 173),
(10, 'Saya ada niatan belajar bahasa asing sebanyak-banyaknya, saya yakin saya akan sukses belajar di GlotQuest.', 174);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text NOT NULL,
  `lesson_desc` text NOT NULL,
  `lesson_link` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(32, 'Materi Bahasa Jepang 1', 'Materi Bahasa Jepang 1', '../lessonvid/japanese1.mp4', 10, 'Bahasa Jepang'),
(33, 'Materi Bahasa Jepang 2', 'Materi Bahasa Jepang 2', '../lessonvid/japanese2.mp4', 10, 'Bahasa Jepang'),
(34, 'Materi Bahasa Jepang 3', 'Materi Bahasa Jepang 3', '../lessonvid/japanese3.mp4', 10, 'Bahasa Jepang'),
(36, 'Materi Bahasa Korea 1', 'Materi Bahasa Korea 1', '../lessonvid/korean1.mp4', 9, 'Bahasa Korea'),
(37, 'Materi Bahasa Korea 2', 'Materi Bahasa Korea 2', '../lessonvid/korean2.mp4', 9, 'Bahasa Korea'),
(38, 'Materi Bahasa Korea 3', 'Materi Bahasa Korea 3', '../lessonvid/korean3.mp4', 9, 'Bahasa Korea'),
(39, 'Materi Bahasa Inggris 1', 'Materi Bahasa Inggris 1', '../lessonvid/english1.mp4', 8, 'Bahasa Inggris'),
(40, 'Materi Bahasa Inggris 2', 'Materi Bahasa Inggris 2', '../lessonvid/english2.mp4', 8, 'Bahasa Inggris '),
(41, 'Materi Bahasa Thailand 1', 'Materi Bahasa Thailand 1', '../lessonvid/thai1.mp4', 11, 'Bahasa Thailand'),
(42, 'Materi Bahasa Thailand 2', 'Materi Bahasa Thailand 2', '../lessonvid/thai2.mp4', 11, 'Bahasa Thailand'),
(43, 'Materi Bahasa Spanyol 1', 'Materi Bahasa Spanyol 2', '../lessonvid/spanish1.mp4', 12, 'Bahasa Spanyol'),
(44, 'Materi Bahasa Spanyol 2', 'Materi Bahasa Spanyol 2', '../lessonvid/spanish2.mp4', 12, 'Bahasa Spanyol'),
(48, 'Materi Bahasa Italia 1', 'Materi Bahasa Italia 1', '../lessonvid/italian1.mp4', 13, 'Bahasa Italia'),
(49, 'Materi Bahasa Italia 2', 'Materi Bahasa Italia 2', '../lessonvid/italian2.mp4', 13, 'Bahasa Italia');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_pass` varchar(255) NOT NULL,
  `stu_occ` varchar(255) NOT NULL,
  `stu_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(171, 'kim nana', 'cap@example.com', '123456', 'student', '../image/stu/1.jpeg'),
(172, 'lee yeo', 'ant@example.com', '123456', 'student', '../image/stu/2.jpeg'),
(173, 'kim didi', 'doc@example.com', '123456', 'student', '../image/stu/3.jpeg'),
(174, 'nanana', 'witch@example.com', '123456', 'student', '../image/stu/4.jpeg'),
(176, 'jojo', 'shaktiman@ischool.com', '123456', 'student', '../image/stu/5.jpeg'),
(178, ' Mario', 'mario@ischool.com', '1234567', 'student', '../image/stu/6.jpeg'),
(182, 'dara', 'sonam@gmail.com', '123456', 'student', '../image/stu/7.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
