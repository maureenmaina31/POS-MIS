-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 06:15 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `pos_shop_dets_table`
--

CREATE TABLE `pos_shop_dets_table` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(200) NOT NULL,
  `store_location` varchar(100) NOT NULL,
  `store_dbname` varchar(100) NOT NULL,
  `store_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pos_shop_dets_table`
--

INSERT INTO `pos_shop_dets_table` (`store_id`, `store_name`, `store_location`, `store_dbname`, `store_active`) VALUES
(110110, 'Maureen and Son`s Retail shop', 'Thika', 'mauhstores', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pos_users_tbl`
--

CREATE TABLE `pos_users_tbl` (
  `user_id` int(11) NOT NULL,
  `national_id` varchar(30) NOT NULL,
  `auth` int(10) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_store_id` int(11) NOT NULL,
  `user_activated` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pos_users_tbl`
--

INSERT INTO `pos_users_tbl` (`user_id`, `national_id`, `auth`, `user_fullname`, `user_name`, `user_password`, `user_store_id`, `user_activated`) VALUES
(4, '786876', 12, 'SILAS WANGWE', 'silas', '@TsP$OrTpTs$pRoqPrG?', 110110, 1),
(5, '37363728', 10, 'HILLARY', 'hilla', '@TsP$OrTpTs$pRoq', 110110, 1),
(6, '37451245', 10, 'JOSEPH WASHIRA', 'jose', '@TsP$OrTpTs$pRoq', 110110, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pos_shop_dets_table`
--
ALTER TABLE `pos_shop_dets_table`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `pos_users_tbl`
--
ALTER TABLE `pos_users_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pos_users_tbl`
--
ALTER TABLE `pos_users_tbl`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
