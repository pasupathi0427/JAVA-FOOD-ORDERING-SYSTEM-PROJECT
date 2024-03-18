-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 02:09 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_login_register`
--
CREATE DATABASE IF NOT EXISTS `java_login_register` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `java_login_register`;

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `c_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `date_and_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `food_name` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`c_id`, `u_id`, `date_and_time`, `food_name`, `quantity`, `price`, `total`) VALUES
(41, 1, '2020-10-21 03:59:48', 'Paneer Noodles', 2, 89, 178),
(47, 5, '2020-10-23 02:46:18', 'Butter Naan', 4, 35, 140),
(48, 5, '2020-10-23 02:46:50', 'Angoori Jamun', 2, 79, 158);

-- --------------------------------------------------------

--
-- Table structure for table `order_items_list`
--

CREATE TABLE `order_items_list` (
  `ol_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `food_name` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items_list`
--

INSERT INTO `order_items_list` (`ol_id`, `o_id`, `u_id`, `food_name`, `quantity`, `price`, `total`) VALUES
(1, 8, 1, 'Schezwan Veg noodles', 4, 119, 476),
(2, 8, 1, 'Chicken Biriyani', 3, 160, 480),
(3, 9, 1, 'Butter Naan', 3, 35, 105),
(4, 9, 1, 'Mushroom Noodles', 4, 129, 516),
(10, 11, 1, 'Butter Naan', 2, 35, 70),
(11, 11, 1, 'Mushroom Noodles', 2, 129, 258),
(12, 11, 1, 'Chicken kebab Fry', 3, 229, 687),
(13, 11, 1, 'Angoori Jamun', 3, 79, 237),
(14, 11, 1, 'Chicken Golden Delight', 2, 439, 878),
(17, 15, 1, 'Lipton ice tea (250 ml)', 1, 50, 50),
(18, 15, 1, 'Mirinda (500ml)', 1, 50, 50),
(19, 15, 1, '7Up (500ml)', 1, 60, 60),
(20, 15, 1, 'Brownie Fantasy cake', 1, 59, 59),
(21, 16, 1, 'Paneer Noodles', 1, 89, 89),
(22, 16, 1, 'Margherita pizza', 2, 199, 398),
(23, 16, 1, 'Chicken Tikka-Boneless', 3, 129, 387),
(24, 17, 3, 'Angoori Jamun', 2, 79, 158),
(25, 17, 3, 'Butterscotch  cake', 5, 99, 495),
(26, 17, 3, 'Pepsi (500 ml)', 1, 60, 60),
(27, 17, 3, 'Chocolate Brownie cake', 2, 99, 198),
(28, 18, 3, 'Margherita pizza', 1, 199, 199),
(29, 21, 4, 'Paneer Noodles', 1, 89, 89),
(30, 24, 5, 'Veg Pulao', 2, 90, 180),
(31, 24, 5, 'Ghee Rice', 1, 99, 99);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `date_and_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `items` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mod_pay` varchar(150) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`o_id`, `u_id`, `date_and_time`, `items`, `address`, `mod_pay`, `total`) VALUES
(8, 1, '2020-10-19 15:51:55', '2 items', 'No: 12, PCK Nagar, Vellore, Tamil Nadu 632007', 'Pay On Delivery', 956),
(9, 1, '2020-10-19 16:26:44', '2 items', 'No: 17, mgr Nagar, Vellore, Tamil Nadu 632007', 'Credit/Debit Card(xxxx xxxx xxxx 3456)', 621),
(11, 1, '2020-10-20 06:32:45', '5 items', 'No: 12, PCK Nagar, Vellore, Tamil Nadu 632007', 'UPI(un1123@upi)', 2130),
(15, 1, '2020-10-20 07:07:02', '4 items', 'No: 12, PCK Nagar, Vellore, Tamil Nadu 632007', 'Pay On Delivery', 219),
(16, 1, '2020-10-21 03:19:48', '3 items', 'No: 42, KGF Nagar, Vellore, Tamil Nadu 632007', 'UPI(a1b2c3@ybi)', 874),
(17, 3, '2020-10-21 03:25:20', '4 items', 'No.45, New York,\nAmerica.', 'Pay On Delivery', 911),
(18, 3, '2020-10-21 03:40:41', '1 items', 'New York,\r\nAmerica.', 'Pay On Delivery', 199),
(21, 4, '2020-10-21 13:20:59', '1 items', 'No. 13, katpadi, Vellore.', 'UPI(simma@upi)', 89),
(24, 5, '2020-10-23 02:43:44', '2 items', 'No, 15, katpadi, vellore', 'UPI(meeraj441@upi)', 279);

-- --------------------------------------------------------

--
-- Table structure for table `the_app_users`
--

CREATE TABLE `the_app_users` (
  `u_id` int(11) NOT NULL,
  `u_fname` varchar(50) NOT NULL,
  `u_lname` varchar(50) NOT NULL,
  `u_uname` varchar(50) NOT NULL,
  `u_pass` varchar(20) NOT NULL,
  `u_bdate` date DEFAULT NULL,
  `u_address` text NOT NULL,
  `u_phone` varchar(15) NOT NULL,
  `u_mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `the_app_users`
--

INSERT INTO `the_app_users` (`u_id`, `u_fname`, `u_lname`, `u_uname`, `u_pass`, `u_bdate`, `u_address`, `u_phone`, `u_mail`) VALUES
(1, 'fn1', 'ln1', 'un1', 'pass1', '2020-10-02', 'No: 12, PCK Nagar, Vellore, Tamil Nadu 632007', '7123456780', 'efg@gmail.com'),
(3, 'Adam', 'Smith', 'Adam', 'pass1', '1973-05-03', 'New York,\nAmerica.', '9876543210', 'adam.smith@gmail.com'),
(4, 'Simma', 'Vakeeswar', 'simma', 'pass123', '2001-10-07', 'No. 12, katpadi, Vellore.', '9003607783', 'simma@gmail.com'),
(5, 'Meeraj', 'R', 'meeraj', 'pass123', '2020-10-06', 'katpadi, vellore', '8015071366', 'meeraj441@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `order_items_list`
--
ALTER TABLE `order_items_list`
  ADD PRIMARY KEY (`ol_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `the_app_users`
--
ALTER TABLE `the_app_users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `order_items_list`
--
ALTER TABLE `order_items_list`
  MODIFY `ol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `the_app_users`
--
ALTER TABLE `the_app_users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
