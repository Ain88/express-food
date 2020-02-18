-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 13, 2020 at 10:59 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `bikers`
--

CREATE TABLE `bikers` (
  `id` int(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `bike_number` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `phone_number` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bikers`
--

INSERT INTO `bikers` (`id`, `first_name`, `last_name`, `bike_number`, `status`, `phone_number`) VALUES
(1, 'Mario', 'Speedwagon', '4321', 'available', 6135550156),
(2, 'Petey', 'Cruiser', '3214', 'available', 6135550129),
(3, 'Anna', 'Sthesia', '2143', 'available', 6135550182),
(4, 'Paul', 'Molive', '5678', 'available', 6135550158),
(5, 'Anna', 'Mull', '6785', 'available', 6135550128),
(6, 'Gail', 'Forcewind', '7856', 'available', 6135550188);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(50) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `address`) VALUES
(1, 'Paige', 'Turner', 'odlyzko@gmail.com', 7514418073, '240 David Rd , Bowen Island, BC, V0N 1G1'),
(2, 'Bob', 'Frapples', 'treeves@me.com', 2687521014, '619 Commonwealth Cres Kitchener ON N2E 4J9'),
(3, 'Walter', 'Melon', 'makarow@aol.com', 2397756959, '191 Nonquon Rd 1015 Oshawa ON L1G 3S3');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `allergens` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `name`, `type`, `allergens`, `price`, `date`) VALUES
(1, 'Cheeseburger', 'main', 'meat', 20, '2020-02-12'),
(2, 'Reuben sandwich', 'main', 'meat', 15, '2020-02-13'),
(3, 'Philly cheese steak', 'main', 'meat, dairy', 18, '2020-02-14'),
(4, 'Chicago-style pizza', 'main', 'dairy', 22, '2020-02-15'),
(5, 'Po\' boy', 'main', 'seafood', 20, '2020-02-16'),
(6, 'BLT', 'main', 'meat', 15, '2020-02-17'),
(7, 'Barbecue ribs', 'main', 'pork', 23, '2020-02-18'),
(8, 'Lobster rolls', 'main', 'lobster, seafood', 18, '2020-02-12'),
(9, 'New Mexican flat enchiladas', 'main', 'dairy, tree nuts', 20, '2020-02-13'),
(10, 'Fried chicken and waffles', 'main', 'chicken, dairy', 17, '2020-02-14'),
(11, 'Peanut butter sandwich', 'main', 'peanut', 13, '2020-02-15'),
(12, 'Macaroni and cheese', 'main', 'dairy', 12, '2020-02-16'),
(13, 'California roll combo', 'main', 'seafood', 15, '2020-02-17'),
(14, 'Jambalaya and cornbread', '16', 'tree nuts', 18, '2020-02-18'),
(15, 'Apple pie', 'dessert', 'wheat, eggs', 8, '2020-02-12'),
(16, 'Huckleberry pie', 'dessert', 'wheat, eggs', 8, '2020-02-13'),
(17, 'S\'more', 'dessert', 'wheat, eggs', 10, '2020-02-14'),
(18, 'Red velvet cake', 'dessert', 'wheat, eggs, dairy', 7, '2020-02-15'),
(19, 'Rice Krispie treat', 'dessert', 'dairy', 5, '2020-02-16'),
(20, 'Moon Pie', 'dessert', 'wheat', 4, '2020-02-17'),
(21, 'Gingerbread', 'dessert', 'wheat', 5, '2020-02-18'),
(22, 'Fried banana', 'dessert', 'wheat', 6, '2020-02-12'),
(23, 'Cinnamon rolls', 'dessert', 'dairy', 10, '2020-02-13'),
(24, 'Peanut butter cookies', 'dessert', 'peanut', 7, '2020-02-14'),
(25, 'Angel food cake', 'dessert', 'wheat, eggs', 10, '2020-02-15'),
(26, 'Banana split', 'dessert', 'wheat', 12, '2020-02-16'),
(27, 'Green tea ice cream', 'dessert', 'dairy', 8, '2020-02-17'),
(28, 'Taro bubble tea', 'dessert', 'dairy', 6, '2020-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `client_id` int(50) NOT NULL,
  `biker_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `order_time`, `status`, `client_id`, `biker_id`) VALUES
(1, '2020-02-12', '17:47:39.000000', 'complete', 2, 5),
(2, '2020-02-13', '12:43:02.000000', 'complete', 2, 6),
(3, '2020-02-14', '12:48:56.000000', 'complete', 1, 2),
(4, '2020-02-15', '11:49:29.000000', 'complete', 2, 4),
(5, '2020-02-16', '14:50:14.000000', 'complete', 2, 3),
(6, '2020-02-17', '15:50:41.000000', 'complete', 3, 1),
(7, '2020-02-18', '17:51:04.000000', 'complete', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `order_quantities`
--

CREATE TABLE `order_quantities` (
  `order_id` int(50) NOT NULL,
  `dish_id` int(50) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_quantities`
--

INSERT INTO `order_quantities` (`order_id`, `dish_id`, `quantity`) VALUES
(1, 1, 3),
(1, 8, 2),
(1, 15, 1),
(1, 22, 1),
(2, 2, 4),
(2, 9, 3),
(2, 16, 1),
(2, 23, 3),
(3, 3, 2),
(3, 10, 2),
(3, 17, 2),
(3, 24, 2),
(4, 4, 1),
(4, 11, 2),
(4, 18, 3),
(4, 25, 1),
(5, 5, 1),
(5, 12, 2),
(5, 19, 5),
(5, 26, 2),
(6, 6, 3),
(6, 13, 2),
(6, 20, 4),
(6, 27, 3),
(7, 7, 2),
(7, 14, 5),
(7, 21, 2),
(7, 28, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bikers`
--
ALTER TABLE `bikers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bike_number` (`bike_number`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `biker_id` (`biker_id`);

--
-- Indexes for table `order_quantities`
--
ALTER TABLE `order_quantities`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `dish_id` (`dish_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bikers`
--
ALTER TABLE `bikers`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`biker_id`) REFERENCES `bikers` (`id`);

--
-- Constraints for table `order_quantities`
--
ALTER TABLE `order_quantities`
  ADD CONSTRAINT `order_quantities_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_quantities_ibfk_2` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
