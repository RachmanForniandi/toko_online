-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2016 at 04:37 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` tinyint(1) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `user_id` int(10) NOT NULL,
  `status` enum('paid','confirmed','unpaid','canceled','expired') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `date`, `due_date`, `user_id`, `status`) VALUES
(9, '2016-08-17 13:27:25', '2016-08-18 13:27:25', 2, 'confirmed'),
(10, '2016-08-21 15:04:18', '2016-08-22 15:04:18', 3, 'confirmed'),
(11, '2016-08-27 09:16:52', '2016-08-28 09:16:52', 2, 'confirmed'),
(12, '2016-08-27 09:19:22', '2016-08-28 09:19:22', 2, 'confirmed'),
(13, '2016-09-17 10:15:46', '2016-09-18 10:15:46', 3, 'unpaid'),
(14, '2016-09-17 10:17:15', '2016-09-18 10:17:15', 3, 'unpaid'),
(15, '2016-09-17 10:17:52', '2016-09-18 10:17:52', 3, 'confirmed'),
(16, '2016-09-17 10:22:13', '2016-09-18 10:22:13', 3, 'confirmed'),
(17, '2016-10-01 11:51:50', '2016-10-02 11:51:51', 2, 'confirmed'),
(18, '2016-10-01 12:42:20', '2016-10-02 12:42:20', 2, 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `invoice_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `qty` int(3) NOT NULL,
  `price` int(9) NOT NULL,
  `options` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `product_id`, `product_name`, `qty`, `price`, `options`) VALUES
(1, 1, 1, 'Baju', 1, 79000, ''),
(2, 1, 2, 'Sandal Casual', 1, 35000, ''),
(3, 1, 3, 'Topi', 1, 80000, ''),
(4, 2, 3, 'Topi', 1, 80000, ''),
(5, 2, 5, 'Dasi', 1, 77500, ''),
(6, 2, 4, 'Sepatu', 1, 240000, ''),
(7, 3, 1, 'Baju', 1, 79000, ''),
(8, 3, 2, 'Sandal Casual', 1, 35000, ''),
(9, 3, 3, 'Topi', 1, 80000, ''),
(10, 4, 1, 'Baju', 1, 79000, ''),
(11, 4, 2, 'Sandal Casual', 1, 35000, ''),
(12, 5, 1, 'Baju', 1, 79000, ''),
(13, 5, 2, 'Sandal Casual', 1, 35000, ''),
(14, 5, 3, 'Topi', 1, 80000, ''),
(15, 6, 2, 'Sandal Casual', 1, 35000, ''),
(16, 6, 3, 'Topi', 1, 80000, ''),
(17, 6, 4, 'Sepatu', 1, 240000, ''),
(18, 7, 1, 'Baju', 1, 79000, ''),
(19, 7, 2, 'Sandal Casual', 1, 35000, ''),
(20, 7, 4, 'Sepatu', 1, 240000, ''),
(21, 8, 3, 'Topi', 1, 80000, ''),
(22, 8, 4, 'Sepatu', 1, 240000, ''),
(23, 9, 2, 'Sandal Casual', 1, 35000, ''),
(24, 9, 5, 'Dasi', 1, 77500, ''),
(25, 9, 1, 'Baju', 1, 79000, ''),
(26, 10, 4, 'Sepatu', 1, 240000, ''),
(27, 11, 1, 'Baju', 1, 79000, ''),
(28, 11, 2, 'Sandal Casual', 1, 35000, ''),
(29, 11, 3, 'Topi', 1, 80000, ''),
(30, 12, 1, 'Baju', 1, 79000, ''),
(31, 12, 2, 'Sandal Casual', 1, 35000, ''),
(32, 12, 3, 'Topi', 1, 80000, ''),
(33, 12, 4, 'Sepatu', 1, 240000, ''),
(34, 13, 4, 'Sepatu', 1, 240000, ''),
(35, 15, 3, 'Topi', 1, 80000, ''),
(36, 16, 2, 'Sandal Casual', 1, 35000, ''),
(37, 17, 4, 'Sepatu', 1, 240000, ''),
(38, 17, 3, 'Topi', 1, 80000, ''),
(39, 18, 1, 'Baju', 1, 79000, ''),
(40, 18, 2, 'Sandal Casual', 1, 35000, '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` int(9) NOT NULL,
  `stock` int(3) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image`) VALUES
(1, 'Baju', 'Baju Kemeja', 79000, 5, 'Kemeja-Pria-Denny-Boy-Warna-Hitam1.jpg'),
(2, 'Sandal Casual', 'Sandal Jepit Casual', 35000, 10, '(KGrHqUOKowE35J9RPR!BOCrn(7stw~~0_35.JPG'),
(3, 'Topi', 'Topi Casual', 80000, 12, 'model-topi-0311.jpg'),
(4, 'Sepatu', 'Sepatu Kets', 240000, 1, 'Sepatu_Kets_Soga1.jpg'),
(5, 'Dasi', 'Dasi Formal', 77500, 1, 'dasi_merah_strip1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `toko_sessions`
--

CREATE TABLE `toko_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko_sessions`
--

INSERT INTO `toko_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('ec2c9c0211ceb37ffd55e2ebbdf75db4', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0', 1475320160, 'a:3:{s:9:"user_data";s:0:"";s:8:"username";s:3:"bob";s:5:"group";s:1:"2";}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group`) VALUES
(1, 'admin', 'admin', 1),
(2, 'bob', '123', 2),
(3, 'putri', '456', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toko_sessions`
--
ALTER TABLE `toko_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
