-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 03:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instant`
--

-- --------------------------------------------------------

--
-- Table structure for table `academy_year`
--

CREATE TABLE `academy_year` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academy_year`
--

INSERT INTO `academy_year` (`id`, `title`) VALUES
(1, 'level 1'),
(2, 'level 2'),
(3, 'level 3'),
(4, 'level 4'),
(5, 'a graduate'),
(6, 'not a graduate');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `image`, `role_id`) VALUES
(6, 'ahmed', 'ahmedelfran343@gmail.com', '123', '1665702754p.jpg', 45);

-- --------------------------------------------------------

--
-- Stand-in structure for view `adminrole`
-- (See below for the actual view)
--
CREATE TABLE `adminrole` (
`adID` int(11)
,`adname` varchar(300)
,`ademail` varchar(300)
,`adpass` varchar(300)
,`adimage` varchar(300)
,`roldec` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `student_accept` int(11) NOT NULL,
  `content` varchar(300) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `material_id`, `student_accept`, `content`, `create_time`) VALUES
(4, 6, 1, 'dw', '2022-10-08 04:10:53'),
(5, 6, 1, 'pola', '2022-10-08 04:10:53'),
(6, 6, 1, 'dcdf ', '2022-10-08 04:10:53'),
(7, 6, 1, 'final', '2022-10-08 04:10:53'),
(8, 6, 1, 'n iovw jpeqwvj ', '2022-10-08 04:11:35'),
(9, 7, 1, 'sdf wv', '2022-10-08 04:14:37'),
(10, 7, 1, 'html', '2022-10-08 04:30:14'),
(11, 6, 1, 'essam', '2022-10-08 18:38:16'),
(12, 7, 1, 'aya', '2022-10-08 18:41:39'),
(13, 6, 5, 'dany', '2022-10-09 21:07:45'),
(14, 7, 6, 'efr', '2022-10-13 17:47:06'),
(15, 6, 6, 'skjhfujshdnvkdvf', '2022-10-13 20:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `description` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `track_id`, `description`) VALUES
(1, 5, 'python , math'),
(2, 4, 'html'),
(3, 7, 'php'),
(4, 6, 'bootstrap'),
(5, 4, 'html'),
(6, 5, 'phython'),
(7, 7, 'php');

-- --------------------------------------------------------

--
-- Table structure for table `diplomas`
--

CREATE TABLE `diplomas` (
  `id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `start_time` date NOT NULL,
  `period` varchar(200) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `dip_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diplomas`
--

INSERT INTO `diplomas` (`id`, `track_id`, `content_id`, `price`, `start_time`, `period`, `is_available`, `dip_image`) VALUES
(11, 5, 1, 4200, '2022-10-08', '3month', 1, '../images/1665063321296102424_588526645975169_5033760906593108912_n.png'),
(12, 4, 2, 4520, '2022-10-26', '6month', 1, '../images/1665083881298767224_598780244949809_6979028458533964955_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `diploma_with_instractor`
--

CREATE TABLE `diploma_with_instractor` (
  `id` int(11) NOT NULL,
  `diploma_id` int(11) NOT NULL,
  `instractor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diploma_with_instractor`
--

INSERT INTO `diploma_with_instractor` (`id`, `diploma_id`, `instractor_id`) VALUES
(1, 11, 6),
(2, 12, 8);

-- --------------------------------------------------------

--
-- Table structure for table `diploma_with_student`
--

CREATE TABLE `diploma_with_student` (
  `id` int(11) NOT NULL,
  `diploma_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'wait'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diploma_with_student`
--

INSERT INTO `diploma_with_student` (`id`, `diploma_id`, `student_id`, `status`) VALUES
(39, 12, 1, 'accepted'),
(40, 12, 5, 'accepted'),
(42, 11, 6, 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `diploma_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `days` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `diploma_id`, `status`, `days`) VALUES
(9, 11, 'offline', 'sunday-thu from 6pm to 9pm'),
(10, 11, 'online', 'sat-mod from 6pm to 10pm'),
(11, 12, 'offline', 'sunday-thu from 6pm to 9pm'),
(12, 12, 'offline', 'friday 9am to 5pm');

-- --------------------------------------------------------

--
-- Table structure for table `instractor`
--

CREATE TABLE `instractor` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `image` varchar(300) NOT NULL,
  `track_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instractor`
--

INSERT INTO `instractor` (`id`, `name`, `email`, `password`, `phone`, `address`, `image`, `track_id`) VALUES
(6, 'doaa', 'doaa@gmail.com', '123', '01022828477', 'fayoum', '', 4),
(7, 'Merna Nabil', 'aida_salah@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '012', 'cairo', '1664911616andrew.jpg', 4),
(8, 'pola', 'polan8103@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '01204016075', 'cairo', '1665065049andrew.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `massages`
--

CREATE TABLE `massages` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `send_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `massages`
--

INSERT INTO `massages` (`id`, `email`, `subject`, `content`, `is_read`, `send_at`) VALUES
(1, 'aya@gmail.com ', 'welcom', '                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia quae officiis neque ea esse perferendis reprehenderit. Obcaecati ea veniam nobis? Aliquam necessitatibus optio natus rem recusandae autem adipisci et fugiat.\n', 1, '2022-10-03'),
(2, 'doaa@gmail.com ', 'hello', '                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia quae officiis neque ea esse perferendis reprehenderit. Obcaecati ea veniam nobis? Aliquam necessitatibus optio natus rem recusandae autem adipisci et fugiat.\n', 1, '2022-10-03'),
(3, 'user1@gmail.com', 'user1', '                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia quae officiis neque ea esse perferendis reprehenderit. Obcaecati ea veniam nobis? Aliquam necessitatibus optio natus rem recusandae autem adipisci et fugiat.', 1, '2022-10-04'),
(4, 'user2@gmail.com', 'user2', '                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia quae officiis neque ea esse perferendis reprehenderit. Obcaecati ea veniam nobis? Aliquam necessitatibus optio natus rem recusandae autem adipisci et fugiat.', 1, '2022-10-04');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `instractor_id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `content` varchar(500) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `instractor_id`, `title`, `group_id`, `created_at`, `content`, `link`) VALUES
(6, 7, 'dip 1', 12, '2022-10-17', 'saf', 'https://github.com/'),
(7, 7, 'session2', 12, '2022-10-22', 'saaf ', 'https://github.com/');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `description`) VALUES
(45, 'all'),
(46, 'semi'),
(47, 'sub');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(300) NOT NULL,
  `age` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` varchar(300) NOT NULL,
  `years_id` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `email`, `password`, `age`, `phone`, `address`, `image`, `years_id`, `gender`) VALUES
(1, 'pola', 'nabil', 'ppola7622@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 25, '01204016075', 'cairo', '1664987163andrew.jpg', 1, 'man'),
(2, 'andrew', 'bassem', 'andrew@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 24, '01204016075', 'cairo', '1665066341andrew.jpg', 1, 'man'),
(3, 'aida', 'salah', 'aida_salah@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 21, '01204016075', 'cairo', '1665071998andrew.jpg', 3, 'female'),
(4, 'mina', 'nma', 'marco@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 25, '01204016075', 'cairo', '1665087475pic_7.jpg', 1, 'man'),
(5, 'dany', 'ramy', 'dany@gmail', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 15, '01204016075', 'cairo', '1665349597pola_nabil.jpg', 1, 'man'),
(6, 'ahmed', 'Elfran', 'ahmedelfran343@gmail.com', '17ba0791499db908433b80f37c5fbc89b870084b', 25, '11', 'banha', '1665590404p.jpg', 5, 'man');

-- --------------------------------------------------------

--
-- Table structure for table `student_all_accepted`
--

CREATE TABLE `student_all_accepted` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_all_accepted`
--

INSERT INTO `student_all_accepted` (`id`, `student_id`, `group_id`) VALUES
(24, 1, 12),
(25, 5, 12),
(27, 6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(300) NOT NULL,
  `group_id` int(11) NOT NULL,
  `deadline` date NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `content`, `group_id`, `deadline`, `created_at`) VALUES
(8, ' Assignment 1', 'create card', 10, '2022-10-07', '2022-10-06'),
(9, 'task1', 'pola', 11, '2022-10-13', '2022-10-06'),
(10, 'dk', 'ckc', 11, '2022-10-20', '2022-10-07'),
(11, 'task2', 'pola', 11, '2022-10-13', '2022-10-07'),
(12, 'task2', 'create card', 9, '2022-10-20', '2022-10-07'),
(13, 'task2', 'pola', 10, '2022-10-11', '2022-10-07'),
(14, 'pp', 'create card', 9, '2022-10-18', '2022-10-08'),
(15, 'task78', 'create card', 12, '2022-10-22', '2022-10-08'),
(16, 'task sigma stare', 'create website sigma stare', 12, '2022-10-25', '2022-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `task_rate`
--

CREATE TABLE `task_rate` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment` varchar(255) NOT NULL DEFAULT 'null',
  `rate` varchar(10) NOT NULL DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_rate`
--

INSERT INTO `task_rate` (`id`, `task_id`, `student_id`, `assignment`, `rate`) VALUES
(26, 15, 1, 'https://github.com/', 'A+'),
(27, 15, 5, 'https://github.com/', 'C'),
(28, 16, 1, 'https://github.com/pola2411/sigma_star', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`id`, `title`) VALUES
(4, 'web'),
(5, 'ai'),
(6, 'front'),
(7, 'back');

-- --------------------------------------------------------

--
-- Structure for view `adminrole`
--
DROP TABLE IF EXISTS `adminrole`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `adminrole`  AS SELECT `admin`.`id` AS `adID`, `admin`.`name` AS `adname`, `admin`.`email` AS `ademail`, `admin`.`password` AS `adpass`, `admin`.`image` AS `adimage`, `role`.`description` AS `roldec` FROM (`admin` join `role` on(`admin`.`role_id` = `role`.`id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academy_year`
--
ALTER TABLE `academy_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`material_id`),
  ADD KEY `student_accept` (`student_accept`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `track_id` (`track_id`);

--
-- Indexes for table `diplomas`
--
ALTER TABLE `diplomas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `track_id` (`track_id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `diploma_with_instractor`
--
ALTER TABLE `diploma_with_instractor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diploma_id` (`diploma_id`),
  ADD KEY `instractor_id` (`instractor_id`);

--
-- Indexes for table `diploma_with_student`
--
ALTER TABLE `diploma_with_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diploma_id` (`diploma_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diploma_id` (`diploma_id`);

--
-- Indexes for table `instractor`
--
ALTER TABLE `instractor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `track_id` (`track_id`);

--
-- Indexes for table `massages`
--
ALTER TABLE `massages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `years_id` (`years_id`);

--
-- Indexes for table `student_all_accepted`
--
ALTER TABLE `student_all_accepted`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `task_rate`
--
ALTER TABLE `task_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academy_year`
--
ALTER TABLE `academy_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `diplomas`
--
ALTER TABLE `diplomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `diploma_with_instractor`
--
ALTER TABLE `diploma_with_instractor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `diploma_with_student`
--
ALTER TABLE `diploma_with_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `instractor`
--
ALTER TABLE `instractor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `massages`
--
ALTER TABLE `massages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_all_accepted`
--
ALTER TABLE `student_all_accepted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `task_rate`
--
ALTER TABLE `task_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_ibfk_1` FOREIGN KEY (`track_id`) REFERENCES `track` (`id`);

--
-- Constraints for table `diplomas`
--
ALTER TABLE `diplomas`
  ADD CONSTRAINT `diplomas_ibfk_1` FOREIGN KEY (`track_id`) REFERENCES `track` (`id`),
  ADD CONSTRAINT `diplomas_ibfk_2` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`);

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`diploma_id`) REFERENCES `diplomas` (`id`);

--
-- Constraints for table `instractor`
--
ALTER TABLE `instractor`
  ADD CONSTRAINT `instractor_ibfk_1` FOREIGN KEY (`track_id`) REFERENCES `track` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`years_id`) REFERENCES `academy_year` (`id`);

--
-- Constraints for table `student_all_accepted`
--
ALTER TABLE `student_all_accepted`
  ADD CONSTRAINT `student_all_accepted_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `student_all_accepted_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
