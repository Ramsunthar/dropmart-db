-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 10, 2019 at 06:29 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dropmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`) VALUES
(1, 'admin1@sliit.lk', '123'),
(2, 'admin2@sliit.lk', '456');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `address`, `image`) VALUES
(1, 'withu', 'withu@sliit.lk', '123', 'wellawatta', 'img/img1.jpg'),
(2, 'ram', 'ram@sliit.lk', '456', 'wellawatta', 'img/img2.jpg'),
(3, 'guga', 'guga@sliit.lk', '789', 'wellawatte', '');

-- --------------------------------------------------------

--
-- Table structure for table `orderDetails`
--

CREATE TABLE `orderDetails` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderDetails`
--

INSERT INTO `orderDetails` (`id`, `orderId`, `product`, `qty`) VALUES
(1, 1, 1, 32),
(2, 1, 2, 311),
(3, 1, 3, 123);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderNo` int(11) DEFAULT NULL,
  `customer` int(11) NOT NULL,
  `deliveryAddress` varchar(150) NOT NULL,
  `telephoneNo` varchar(10) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `partner` int(11) DEFAULT NULL,
  `deliveryStatus` tinyint(1) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderNo`, `customer`, `deliveryAddress`, `telephoneNo`, `email`, `partner`, `deliveryStatus`, `created`, `modified`) VALUES
(1, NULL, 1, 'xxxx', '123', NULL, 1, 0, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `partnerName` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `partnerName`, `address`, `username`, `password`) VALUES
(1, 'TomX', 'tom street', 'tomY', '$2a$10$YnZsIEUslOhLMeXflhOBEuUTqFtv0r9qcqpMhgIFyY/6aoOvR7OXy');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `price` float NOT NULL,
  `category` varchar(30) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `category`, `image`) VALUES
(1, 'P1', 100, 'grocery', 'https://via.placeholder.com/300x200.png?text=Product+1'),
(2, 'P2', 200, 'grocery', 'https://via.placeholder.com/300x200.png?text=Product+2'),
(3, 'P3', 300, 'fruits', 'https://via.placeholder.com/300x200.png?text=Product+3'),
(4, 'P4', 400, 'vegetables', 'https://via.placeholder.com/300x200.png?text=Product+4'),
(5, 'P5', 500, 'fish', 'https://via.placeholder.com/300x200.png?text=Product+5'),
(6, 'P6', 600, 'meat', 'https://via.placeholder.com/300x200.png?text=Product+6'),
(7, 'P7', 700, 'fruits', 'https://via.placeholder.com/300x200.png?text=Product+7'),
(8, 'P8', 800, 'beverages', 'https://via.placeholder.com/300x200.png?text=Product+8'),
(9, 'P9', 900, 'grocery', 'https://via.placeholder.com/300x200.png?text=Product+9'),
(10, 'P10', 1000, 'grocery', 'https://via.placeholder.com/300x200.png?text=Product+10');

-- --------------------------------------------------------

--
-- Table structure for table `weeklyDeals`
--

CREATE TABLE `weeklyDeals` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weeklyDeals`
--

INSERT INTO `weeklyDeals` (`id`, `product`, `percentage`) VALUES
(101, 1, 10),
(102, 2, 25),
(103, 6, 15),
(104, 7, 25),
(105, 3, 5),
(106, 4, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orderDetails`
--
ALTER TABLE `orderDetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderId` (`orderId`),
  ADD KEY `product` (`product`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer` (`customer`),
  ADD KEY `partner` (`partner`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weeklyDeals`
--
ALTER TABLE `weeklyDeals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product` (`product`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orderDetails`
--
ALTER TABLE `orderDetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `weeklyDeals`
--
ALTER TABLE `weeklyDeals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `weeklyDeals`
--
ALTER TABLE `weeklyDeals`
  ADD CONSTRAINT `weeklydeals_ibfk_1` FOREIGN KEY (`product`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
