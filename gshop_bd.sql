-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 09:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gshop_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(5, 'adminmk', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(8, 'Hriodoy', '43814346e21444aaf4f70841bf7ed5ae93f55a9d');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(28, 1, 19, 'Espresso Con Panna', 20, 8, 'espresso-con-panna-1659544996.webp'),
(29, 1, 14, 'Red Eye', 20, 1, 'red-eye-1659544996.webp'),
(30, 2, 22, 'ASUS Vivobook 15 X512', 120000, 1, '4_laptop_hp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(2) DEFAULT NULL,
  `sex` varchar(15) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `age`, `sex`, `phone`, `email`, `address`, `password`) VALUES
(1, 'employee', 22, 'male', 1521509030, 'mk@gmial.com', 'badda, Dhaka 1212', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(4, 'mithun', 25, 'male', 1521509031, '6884887987@gmial.com', 'dhaka', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(8, 'Hriodoy', 0, NULL, NULL, NULL, NULL, '43814346e21444aaf4f70841bf7ed5ae93f55a9d');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'mithun', 'dfvvfdgf@gmaidsd.com', '845595', 'good'),
(2, 0, 'mxn vhxbcv', 'mk@gmial.com', '684684684', 'hcjhscbasjcabs'),
(3, 1, 'asif', 'mk@gmail.com', '89898', 'good site'),
(4, 0, 'Sifat', 'sifat@gmail.com', '0172390320', 'Hi! Kazi Sifat Al Makud');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(11, 3, 'kazi Sifat Al Maksud', '0172390320', 'sifat@gmail.com', 'bkash', '31, chitra, Bonnosrree, Dhaka, Dhaka City, C-Block, Bangladesh - 1212', 'ASUS Vivobook 15 X512 (120000 x 1) - ', 120000, '2023-09-17', 'pending'),
(14, 3, 'kazi Sifat Al Maksud', '0172390320', 'sifat@gmail.com', 'bkash', '31, chitra, Bonnosrree, Dhaka, Dhaka City, C-Block, Bangladesh - 1212', 'Apple Watch Series 7 45mm Green Sports Band (20447 x 1) - ASUS Vivobook 15 X512 (120000 x 1) - ', 140447, '2023-09-18', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `popularity` int(8) DEFAULT NULL,
  `disprice` int(10) DEFAULT NULL,
  `desc` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`, `popularity`, `disprice`, `desc`) VALUES
(21, 'Hp Victus 16-d0445TX intel i7 11th Gen Laptop Price in BD 2022', 'Laptop', 150000, '2_laptop_hp.jpg', 2, 130000, 'Key Features\r\nProcessor: Intel Core i7-11800H (24M Cache, 2.30 GHz up to 4.60 GHz)\r\nRAM: 16GB DDR4, Storage: 512GB SSD\r\nGraphics: RTX 3050 4GB GDDR6\r\nFeatures: Backlit keyboard, 144Hz 7ms display'),
(22, 'ASUS Vivobook 15 X512', 'Laptop', 120000, '4_laptop_hp.jpg', 1, 110000, 'Key Features\r\nMPN: BQ846T\r\nModel: VivoBook 15 M515DA\r\nAMD Ryzen 5 3500U Processor (2.10 GHz up to 3.70 GHz, 4M Cache)\r\n8GB DDR4 RAM\r\n512GB NVMe PCIe G3 SSD\r\n15.6\" FHD (1920x1080) Display'),
(23, 'Fire-Boltt Invincible AMOLED Display Bluetooth Calling Smart Watch', 'Watchs', 9500, '11_Smart_Watch.jpg', 3, 9000, 'Key Features\r\nMPN: BSW020\r\nModel: Invincible\r\n1.39\" Full Touch AMOLED Display with 454*454 Pixels Resolution\r\nSpO2 Monitoring & Heart Rate Tracking\r\n8GB Memory Storage\r\nIP67 Water Resistant'),
(24, 'Apple Watch Series 7 45mm Green Sports Band', 'Watchs', 20447, '17_Smart_Watch.jpg', 4, 10000, 'Key Features\r\nModel: Apple Watch Series 7\r\nAlways-On Retina LTPO OLED display, 1,000 nits\r\nS7 SiP with 64-bit dual-core processor\r\nSwimproof & Dust resistant (IP6X)\r\nBlood Oxygen app & ECG app'),
(25, 'Sony WF-1000XM4 Wireless Noise Cancelling Headphones in Silver', 'Headphone', 20000, '43_EARBUDS_sony.jpg', 6, 1000, NULL),
(26, 'Sony ZX110NC Noise Cancelling Headphones', 'Headphone', 9500, '46_headphone_sony.jpg', 8, 2000, NULL),
(27, 'AMD Ryzen 5 5600G ASUS TUF B450M-PRO II 16GB RAM 500GB SSD BUDGET PC', 'Desktop', 38500, '27_Desktop.jpg', 5, 35000, '\r\nAMD Ryzen 5 5600G ASUS TUF B450M-PRO II 16GB RAM 500GB SSD BUDGET PC'),
(28, 'Mi AIoT Router AX3600 - Black', 'Routers', 2000, '51_Router_MI.jpg', 6, 1000, NULL),
(29, 'D LINK DGS 1016A 16 Port Gigabit Switch', 'Routers', 3000, '59_Switch _D-Link.jpg', 3, 130000, NULL),
(31, 'Fantech K613 (With Out Num Pad) Fighter TKL || Gaming Keyboard Black', 'Other', 1100, '61_Keyboard _Fantech.jpg', 2, 1000, NULL),
(32, 'Redragon K509 DYAUS 7 Colors Backlit Gaming Keyboard', 'Other', 1500, '62_Keyboard _Redragon.jpg', 1, 1000, NULL),
(33, 'XTRFY MZ1 RGB WIRELESS ULTRA-LIGHT GAMING MOUSE', 'Other', 900, '65_Mouse _Xtrfy.jpg', 1, 500, NULL),
(36, 'BRAND NEW Microsoft Xbox Series 1TB X Video Game Console', 'Gaming', 9500, '70_XBOX _MS.jpg', 1, 300, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `User_name` varchar(20) NOT NULL,
  `rating` int(2) NOT NULL,
  `review` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(3, 'kazi Sifat Al Maksud', 'sifat@gmail.com', '0172390320', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '31, chitra, Bonnosrree, Dhaka, Dhaka City, C-Block, Bangladesh - 1212');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
