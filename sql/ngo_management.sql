-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 03:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngo_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id_user` int(11) NOT NULL,
  `id_ngo` varchar(5) NOT NULL,
  `amount` int(11) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`id_user`, `id_ngo`, `amount`, `on_date`) VALUES
(218, 'ngo1', 1000, '2020-05-31 06:06:29'),
(218, 'ngo2', 5656, '2020-05-31 08:54:52'),
(218, 'ngo3', 1442, '2020-05-31 08:55:39'),
(218, 'ngo4', 2500, '2020-05-31 08:56:48'),
(220, 'ngo1', 12000, '2020-05-31 06:06:29'),
(221, 'ngo1', 14000, '2020-05-31 06:06:29'),
(222, 'ngo1', 20000, '2020-05-31 06:06:29'),
(222, 'ngo2', 12345, '2020-05-31 06:06:29'),
(223, 'ngo1', 1300, '2020-05-31 06:09:21'),
(223, 'ngo2', 11111, '2020-05-31 06:17:32'),
(224, 'ngo3', 151, '2020-05-31 07:26:59'),
(226, 'ngo1', 12345, '2020-06-01 08:01:07'),
(227, 'ngo3', 4500, '2020-06-01 12:01:34'),
(228, 'ngo1', 1900, '2020-06-01 13:43:35'),
(230, 'ngo1', 1400, '2020-05-30 19:43:16'),
(232, 'ngo1', 3334, '2020-05-30 19:52:29'),
(233, 'ngo1', 1478, '2020-05-30 20:00:32'),
(234, 'ngo1', 2323, '2020-05-31 20:10:29'),
(236, 'ngo1', 2500, '2020-05-31 10:23:57'),
(238, 'ngo1', 1234, '2020-06-01 13:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `expenditure`
--

CREATE TABLE `expenditure` (
  `id_ngo` varchar(5) NOT NULL,
  `organisation` varchar(100) NOT NULL,
  `expenditure` int(11) NOT NULL,
  `on_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenditure`
--

INSERT INTO `expenditure` (`id_ngo`, `organisation`, `expenditure`, `on_date`) VALUES
('ngo1', 'Bal Vidya Niketan', 1000, '2020-05-31'),
('ngo1', 'Shantikunj', 3000, '2020-05-31'),
('ngo2', 'Shishu Mandir', 2000, '2020-05-31'),
('ngo3', 'Kalash', 2500, '2020-05-31'),
('ngo4', 'Shudhi', 2000, '2020-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE `ngo` (
  `ngo_id` varchar(4) NOT NULL,
  `ngo_name` varchar(100) NOT NULL,
  `ngo_city` varchar(100) NOT NULL,
  `total_amt_received` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`
--

INSERT INTO `ngo` (`ngo_id`, `ngo_name`, `ngo_city`, `total_amt_received`) VALUES
('ngo1', 'Shantineketan', 'Kolkata', 74814),
('ngo2', 'Vidyapeeth', 'Ranchi', 29112),
('ngo3', 'Goonj', 'Delhi', 6093),
('ngo4', 'Pratham', 'Mumbai', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

CREATE TABLE `phonebook` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonebook`
--

INSERT INTO `phonebook` (`id`, `phone_number`) VALUES
(218, '7777777777'),
(220, '2323232323'),
(221, '3434343434'),
(222, '4444444445'),
(223, '2334465571'),
(224, '7878778788'),
(226, '3425265841'),
(227, '7878787878'),
(228, '1234567890'),
(229, '1234567890'),
(230, '0000000000'),
(232, '1010101010'),
(233, '1234567890'),
(234, '1234567890'),
(236, '3344334433'),
(237, '5455445544'),
(238, '5455445544');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id_user` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id_user`, `email`, `address`) VALUES
(218, 'bakoliyarohit00@gmail.com', 'A-317'),
(218, 'pritesh@gmail.com', 'somewhere on earth'),
(220, 'ankit@gmail.com', 'A-215'),
(220, 'ashdu@gmail.com', 'A-111'),
(221, 'rish305@gmail.com', 'A-328'),
(222, 'hemant@gmail.com', 'A-330'),
(223, 'anmol@gamil.com', 'A-327'),
(224, 'ssr@gmail.com', 'A-330'),
(226, 'cnbgh@gamil.com', 'sbdghfghghv'),
(227, 'ajit@gmail.com', 'Raxaul'),
(228, 'bdfgyr@gmail.com', 'A-326'),
(229, 'vishalgautamcsl@gmail.com', 'A-328'),
(230, 'abcdef@gmail.com', 'A-000'),
(232, 'yes@gmail.com', 'Gajjar Bhavan'),
(233, 'yeass2gmail.com', 'A-345'),
(234, 'again@gmail.com', 'A-234'),
(236, 'amrit@gmail.com', 'Bhabha Bhavan'),
(237, 'vabeke3858@provamail.com', 'on mars'),
(238, 'bakoliyarohit00@gmail.com', 'on mars');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `name`, `password`, `type`) VALUES
(218, 'Rohit', '12345', 'donar'),
(220, 'Ankit', '44444', 'donar'),
(221, 'Rishabh', '222777', 'donar'),
(222, 'hemant', '434343', 'Donar'),
(223, 'anmol', '33333', 'Donar'),
(224, 'surya', '222', 'Donar'),
(226, 'fejfhwerugu', '1234', 'Donar'),
(227, 'Ajit', '123456', 'Donar'),
(228, 'fehfuewty', '1234567', 'Donar'),
(229, 'vishalcsl', '12345', 'Donar'),
(230, 'abcdef', '00000', 'Donar'),
(231, 'Ankit', '11111', 'Donar'),
(232, 'iamtired', 'yes', 'Donar'),
(233, 'iamtootired', 'yes', 'Donar'),
(234, 'again', '@@@@@', 'Donar'),
(235, 'Vishal', '123456', 'donar'),
(236, 'Amrit', '12345', 'Donar'),
(237, 'AAAAAA', 'test1234', 'donar'),
(238, 'u18co076', '12345', 'donar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id_user`,`id_ngo`),
  ADD KEY `FR 2` (`id_ngo`);

--
-- Indexes for table `expenditure`
--
ALTER TABLE `expenditure`
  ADD PRIMARY KEY (`id_ngo`,`organisation`);

--
-- Indexes for table `ngo`
--
ALTER TABLE `ngo`
  ADD PRIMARY KEY (`ngo_id`),
  ADD UNIQUE KEY `ngo_id` (`ngo_id`);

--
-- Indexes for table `phonebook`
--
ALTER TABLE `phonebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id_user`,`email`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `FR 2` FOREIGN KEY (`id_ngo`) REFERENCES `ngo` (`ngo_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FR 4` FOREIGN KEY (`id_user`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
