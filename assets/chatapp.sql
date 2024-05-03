-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 07:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `is_read` varchar(3) NOT NULL,
  `msgTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`, `is_read`, `msgTime`) VALUES
(47, 562512809, 1600683898, 'Hello', '0', '2023-05-05 08:31:30'),
(48, 562512809, 1600683898, 'Hii', '0', '2023-05-05 08:32:53'),
(49, 1565814688, 1600683898, 'Hi John', '1', '2023-05-05 09:14:29'),
(50, 562512809, 1600683898, 'Hello', '0', '2023-05-05 09:35:15'),
(51, 562512809, 1600683898, 'Byye', '0', '2023-05-05 09:38:17'),
(52, 1565814688, 1600683898, 'Hello', '1', '2023-05-05 10:52:17'),
(53, 1565814688, 1600683898, 'Bhaii', '1', '2023-05-05 10:52:32'),
(54, 562512809, 1600683898, 'Jato', '0', '2023-05-05 11:44:58'),
(55, 165137824, 1565814688, 'Hiii', '0', '2023-05-05 11:45:55'),
(56, 562512809, 1565814688, 'Bhetu nanter', '0', '2023-05-05 11:46:05'),
(57, 1600683898, 1565814688, 'Bolna', '0', '2023-05-05 11:46:26'),
(58, 562512809, 1600683898, 'Chal', '0', '2023-05-05 11:53:54'),
(59, 562512809, 1600683898, 'Yeu ka', '0', '2023-05-05 12:00:42'),
(60, 562512809, 1600683898, 'Coming', '0', '2023-05-05 12:29:26'),
(61, 1565814688, 1600683898, 'Hi', '1', '2023-05-05 12:44:20'),
(62, 562512809, 1600683898, 'Cahlo', '0', '2023-05-05 12:45:09'),
(63, 165137824, 1600683898, 'hiiii', '0', '2023-05-05 14:53:52'),
(64, 1600683898, 1470774570, 'Hiiiii', '0', '2023-05-05 15:11:03'),
(65, 887249955, 1600683898, 'Hiii', '0', '2023-05-05 16:27:59'),
(66, 887249955, 1600683898, 'Hiii', '0', '2023-05-05 16:28:00'),
(67, 887249955, 1600683898, 'Hiii', '0', '2023-05-05 16:28:00'),
(68, 887249955, 1600683898, 'Hiii', '0', '2023-05-05 16:28:03'),
(69, 887249955, 1600683898, 'Hiii', '0', '2023-05-05 16:28:07'),
(70, 887249955, 1600683898, 'Join room 1001', '0', '2023-05-05 16:29:19'),
(71, 1600683898, 887249955, 'Hi', '0', '2023-05-05 16:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(4, 500478413, 'john', 'doe', 'test1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1658409839admin.png', 'Offline now'),
(7, 1600683898, 'FName', 'LName', 'test@gnome.com', '25d55ad283aa400af464c76d713c07ad', '1682782898l2e3-result-deng.jpg', 'Active now'),
(8, 562512809, 'testF', 'testL', 'test2@genom.com', '22d912d8004b31868870c2c88c047464', '1682868068download.jpg', 'Active now'),
(11, 1565814688, 'John', 'Doe', 'John@gnome.com', '22d912d8004b31868870c2c88c047464', '1682868939IMG_20230404_165413.jpg', 'Offline now'),
(18, 165137824, 'Jane', 'Doe', 'jane@gnome.com', '25d55ad283aa400af464c76d713c07ad', '1683173220Screenshot_2023-03-27-23-41-23-50_1c337646f29875672b5a61192b9010f9.jpg', 'Active now'),
(19, 1470774570, 'F1', 'L1', 'test2@gnome.com', '25d55ad283aa400af464c76d713c07ad', '1683292106l2e3-result-deng.jpg', 'Offline now'),
(20, 887249955, 'John', 'Galande Patil', 'prathameshgalande101@gmail.com', '553f0ebdae75a7d2958c6c93199dfc54', '16833040301681666168303.jpg', 'Active now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
