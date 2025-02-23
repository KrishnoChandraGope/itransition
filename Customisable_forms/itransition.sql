-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2025 at 06:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itransition`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'krish', 'krish@gmail.com', 'hlw, how are you?', '2025-02-21 20:18:03'),
(2, 'rahul', 'rahul@gmail.com', 'hi, i am rahul', '2025-02-21 20:26:55'),
(3, 'smith', 'smith@gmail.com', 'hlw, i am smith.', '2025-02-23 11:41:03'),
(4, 'smith', 'shith@gmail.com', 'hlw is am smith', '2025-02-23 16:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `title`, `user_id`) VALUES
(3, 'Exam-1', 2),
(4, 'Exam-2', 2),
(5, 'Exam-3', 2),
(6, 'Exam-4', 1),
(7, 'Exam-5', 1),
(8, 'Exam-6', 1),
(9, 'Exam-7', 6),
(10, 'Exam-15', 9),
(11, 'Software', 7),
(13, 'Alphabet', 7),
(17, 'Alphabet', 1),
(18, 'Exam 10', 9),
(20, 'Exam- 12', 1),
(21, 'Exam-15', 2),
(27, 'Exam 14', 9),
(28, 'Exam 17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `question_text` text NOT NULL,
  `type` enum('text','radio','checkbox') NOT NULL,
  `options` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `form_id`, `question_text`, `type`, `options`) VALUES
(7, 3, 'What is software?', 'text', '[]'),
(8, 3, 'What is database?', 'text', '[]'),
(9, 3, 'What is algorithm?', 'text', '[]'),
(10, 4, 'What is IP ?', 'text', '[]'),
(11, 4, 'What is firewall?', 'text', '[]'),
(12, 4, 'What is TCP?', 'text', '[]'),
(13, 5, 'What is UDP?', 'text', '[]'),
(14, 5, 'What is http?', 'text', '[]'),
(15, 5, 'What is https?', 'text', '[]'),
(16, 6, 'What is SNMP ?', 'text', '[]'),
(17, 6, 'What is DNS?', 'text', '[]'),
(18, 6, 'What is react JS?', 'text', '[]'),
(19, 7, 'What is Javascript?', 'text', '[]'),
(20, 7, 'What is Node js?', 'text', '[]'),
(21, 7, 'What is Angular js?', 'text', '[]'),
(22, 8, 'What is A?', 'text', '[]'),
(23, 8, 'What is B?', 'text', '[]'),
(24, 8, 'What is C?', 'text', '[]'),
(25, 9, 'What is D?', 'text', '[]'),
(26, 9, 'What is E?', 'text', '[]'),
(27, 9, 'What is F', 'text', '[]'),
(28, 9, 'What is G?', 'text', '[]'),
(29, 10, 'What is W?', 'text', '[]'),
(30, 10, 'What is E?', 'text', '[]'),
(31, 10, 'What is R?', 'text', '[]'),
(32, 11, 'What is variable?', 'text', '[]'),
(33, 11, 'What is Operator?', 'text', '[]'),
(34, 11, 'What is statement?', 'text', '[]'),
(36, 13, 'What is A?', 'text', '[]'),
(37, 13, 'What is B?', 'text', '[]'),
(38, 13, 'What is C', 'text', '[]'),
(44, 17, 'what is A?', 'text', '[]'),
(45, 17, 'What is B?', 'radio', '[\"Alphabet\",\"car\"]'),
(46, 17, 'What is R', 'checkbox', '[\"bus\",\"Alphabet\"]'),
(47, 18, 'What is A?', 'text', '[]'),
(48, 18, 'What is B?', 'radio', '[\"Alphabet\",\"Car\",\"bus\"]'),
(49, 18, 'What is G', 'checkbox', '[\"car\",\"latter\"]'),
(53, 20, 'what is A?', 'text', '[]'),
(54, 20, 'What is B?', 'text', '[]'),
(55, 20, 'What is C?', 'text', '[]'),
(56, 21, 'What is P', 'radio', '[\"df jfhds f\",\"afdsf dfsf\",\"dsfs\"]'),
(57, 21, 'what is C', 'text', '[]'),
(63, 27, 'what is A', 'text', '[]'),
(64, 27, 'What is B', 'text', '[]'),
(65, 28, 'What is A?', 'text', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `response_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `form_id`, `question_id`, `response_text`) VALUES
(1, 4, 10, 'Internet Protocol.'),
(2, 4, 11, 'Protect networks.'),
(3, 4, 12, 'Transmission Control Protocol'),
(4, 9, 25, 'latter'),
(5, 9, 26, 'latter'),
(6, 9, 27, 'latter'),
(7, 9, 28, 'also latter'),
(8, 5, 13, 'User Datagrap protocol'),
(9, 5, 14, 'Hypertext transfer protocol'),
(10, 5, 15, 'Hypertext transfer protocol secure'),
(11, 6, 16, 'Simple Network Management Protocol.'),
(12, 6, 17, 'Domain Name Space.'),
(13, 6, 18, 'Java script framework.'),
(14, 5, 13, 'User Datagram Protocol.'),
(15, 5, 14, 'Hyper text transfer protocol.'),
(16, 5, 15, 'Hyper text transfer protocol secure.'),
(17, 10, 29, 'Latter'),
(18, 10, 30, 'Latter'),
(19, 10, 31, 'Latter'),
(20, 13, 36, 'Latter'),
(21, 13, 37, 'Latter'),
(22, 13, 38, 'Latter'),
(23, 13, 36, 'Latter'),
(24, 13, 37, 'Latter'),
(25, 13, 38, 'Latter'),
(26, 17, 44, 'alphabet'),
(27, 17, 45, 'Alphabet'),
(28, 17, 46, 'Alphabet'),
(29, 17, 44, 'alphabet'),
(30, 17, 45, 'Alphabet'),
(31, 17, 46, 'Alphabet'),
(32, 10, 29, 'alhfjds jdfhsdjk'),
(33, 10, 30, 'fjsdkfhsdjk '),
(34, 10, 31, 'fdsfsd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'krish', 'krish@gmail.com', '$2a$10$NPr3lujyi5rKxqGslYyhX.mUiCHtCr1Cz5vesQ6XRXh4HGhN8Fz3K', 'admin'),
(2, 'rahul', 'rahul@gmail.com', '$2a$10$S7feVAis1YAjGzrvJzScze7JwQTLKr5anJwOnCaoKOKGKf.tzdJT.', 'user'),
(3, 'rina', 'rina@gmail.com', '$2a$10$wcaW9prDivZM/.xxLYdd.OSAUoKOozzFG6DGgt3OhcHm4f1cvK0Ca', 'user'),
(4, 'niloy', 'niloy@gmail.com', '$2a$10$exrEC84FkxlRN.TZbcTju.uboWjTllTieb5pqKMiI3UC48LaZuQ5W', 'user'),
(5, 'digonto', 'digonto@gmail.com', '$2a$10$RcanT0lfw3g7YssOJEOEhe8cVBLOmklKssVRj1G6JXZAlW2VJWu7e', 'user'),
(6, 'Raju', 'raju@gmail.com', '$2a$10$XCFuRB7mEg1f3d8T0mDsH.r4vsZmGyFqTfrTslRtzalnnOmDfST7a', 'user'),
(7, 'Mamun', 'mamun@gmail.com', '$2a$10$AFNg/sgq2kITOea1O16RNuJnRjYKXYZ5JoXIPW3KVK0VnUO.GjXqq', 'user'),
(8, 'surjo', 'surjo@gmail.com', '$2a$10$.3Ddlng7kE9CGpbvV3MhneCRcFDTE2EKWq/xcodU4/j7cXhC9iw/a', 'user'),
(9, 'rima', 'rima@gmail.com', '$2a$10$nj3SuMHwx.qXcK5jmraGMeGiAth27xv62tnO17Q1TsCUhcT7gKQrq', 'user'),
(10, 'nila', 'nila@gmail.com', '$2a$10$ya8B1ihbjnDIhPNY5/3TN.GZ9XeymhEiscsUFU2xy1qNAviBo6wAi', 'user'),
(11, 'abc', 'abc@gmail.com', '$2a$10$amsCnxoC.DMfytoXIK5Up.UTJWQPXNC53Kyw7Z7DmXuzM9IaAYc.i', 'user'),
(12, 'ratul', 'ratul@gmail.com', '$2a$10$YnOkLeCe0tLueBeoytjRiue6Ni1lWuKqd4yKRuxB7nztsveqkb/lq', 'user'),
(13, 'binoy', 'binoy@gmail.com', '$2a$10$FANZ.1aF25jx2krx7lrU5.89C43jT52g3yAqJDJE6nvINNDTPs4au', 'user'),
(14, 'Smith', 'smith@gmail.com', '$2a$10$9z9Ailh4WCYnZoigylEQ6.MMd2aBcJCSvcsKovX6/RAGMrRezxPoq', 'user'),
(15, 'Kohli', 'kohli@gmail.com', '$2a$10$.QI6svjLNu1O65GUaUifyOPHoei6.JtJ8E8EeTpCBXMTgZrvpFBCm', 'user'),
(16, 'Rishab', 'rishab@gmail.com', '$2a$10$aSh.n1k7ZlFrnuimdsSh2./k9JwN6IRxut9oH5I9n1DgV0V45Dmwq', 'user'),
(17, 'max', 'max@gmail.com', '$2a$10$qaY0kTsfnRJL9D76BWM0zuTl8EUwNj.rQffczMd/OpiImVLsM10oe', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forms`
--
ALTER TABLE `forms`
  ADD CONSTRAINT `forms_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`);

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`),
  ADD CONSTRAINT `responses_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
