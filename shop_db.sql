-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2022 at 09:35 PM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `name` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(4, 99, '17', 0, 29, 1, 'cart-img-2.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `number` varchar(12) CHARACTER SET utf8mb4 NOT NULL,
  `message` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `number` varchar(12) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `method` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `address` varchar(500) CHARACTER SET utf8mb4 NOT NULL,
  `total_products` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 10, 'efre', '112151152', 'sds@dggd', 'cash on delivery', 'flat no. grddsfs sdfsf gggg fsfsf india - 799009', ', 0 ( 2 )', 40, '26-Jul-2022', 'pending'),
(3, 99, 'aerte', '24535635', 'fgdgsd@ergdfg', 'cash on delivery', 'flat no. dgdrg gdfgdfg fhgfhgfh syhsh india - 524524', ', 0 ( 1 )', 32, '29-Jul-2022', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `category` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `details` varchar(500) CHARACTER SET utf8mb4 NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(16, 'Pumpkin', 'vegitables', 'Fresh Pumpkin', 32, 'pumpkin.png'),
(17, 'Onion', 'vegitables', 'Fresh Onion', 29, 'cart-img-2.png'),
(18, 'Cucumber', 'vegitables', 'Fresh Cucumber', 15, 'cucumber.png'),
(19, 'Banana', 'fruits', 'Fresh Banana', 45, 'banana.png'),
(20, 'Potato', 'vegitables', 'Fresh Potato', 35, 'product-5.png'),
(21, 'Beef', 'meat', 'Fresh Beef', 400, 'beaf.png'),
(22, 'Apple', 'fruits', 'Fresh Apple', 29, 'apple.png'),
(23, 'Meat', 'meat', 'Fresh Meat', 280, 'cart-img-4.png'),
(24, 'Orange', 'fruits', 'Fresh Orange', 80, 'product-1.png'),
(25, 'Fish', 'fish', 'Fresh Fish', 236, 'cat-4.png'),
(26, 'Sweet Corn', 'vegitables', 'Fresh Sweet corn', 33, 'corn.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `user_type` varchar(20) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'user',
  `image` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(10, 'asa', 'as@s', '457391c9c82bfdcbb4947278c0401e41', 'user', 'IMG_20220713_120311_11zon.jpg'),
(97, 'Admin2', 'admin2@gmail.com', '4ba29b9f9e5732ed33761840f4ba6c53', 'admin', 'deba.jpg'),
(98, 'Admin1', 'admin1@gmail.com', '4122cb13c7a474c1976c9706ae36521d', 'admin', 'tuhin.png.png'),
(99, 'AAA', 'aa@aa', '74b87337454200d4d33f80c4663dc5e5', 'user', 'pic-3.png');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(0, 10, 13, 'wqwsw', 1, 'banana.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
