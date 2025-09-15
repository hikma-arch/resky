-- phpMyAdmin SQL Dump
-- version 5.2.1deb1+deb12u1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 12, 2025 at 01:10 PM
-- Server version: 10.11.14-MariaDB-0+deb12u2
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(6, 9, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Laptops', 'laptops'),
(9, 'Ponsel', 'ponsel'),
(10, 'PC', 'pc'),
(11, 'Elektronik', 'elektronik'),
(12, 'Jasa ', 'jasa ');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_us`
--

CREATE TABLE `contacts_us` (
  `id` int(100) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `phone_number` int(13) NOT NULL,
  `email_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts_us`
--

INSERT INTO `contacts_us` (`id`, `full_name`, `phone_number`, `email_address`) VALUES
(1, 'Pani', 821920708, 'pani@gmail.com'),
(2, 'Parhan', 546125738, 'parhan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(31, 1, 'Lenovo G40-30', 'Mana tau ada yg minat \r\nG40-30 kesing kokoh mulus \r\nMinus keyboard copot,lcd panu batre ngedrop 750K\r\n\r\nWA: ARD Komputer 62 819-9922-2321', 'lenovo-g40-30', 750000, 'lenovo-g40-30.jpeg', '2025-09-09', 1),
(32, 1, 'Macbook air', 'Macbook air 2015 core i5 mines keyboard dan toucpad harga @1.250\r\n\r\nGaleri computer dan electronic ', 'macbook-air', 1250000, 'macbook-air.jpeg', '2025-09-12', 1),
(33, 1, 'Ram M2 128gb', 'M2 128gb\r\nSentinel 100â„…\r\n/pcs = 120k\r\nMin 5 FO P. Jawa\r\nGaransi tes 7 hari setelah diterima\r\n\r\nSyam Ason', 'ram-m2-128gb', 120000, 'ram-m2-128gb.jpeg', '2025-09-02', 4),
(34, 1, 'Ram M2 256gb', 'M2 256gb\r\nSentinel 100â„…\r\n/pcs = 200k\r\nMin 5 FO P. Jawa\r\nGaransi tes 7 hari setelah diterima\r\nsyam Ason', 'ram-m2-256gb', 200000, 'ram-m2-256gb.jpeg', '2025-08-31', 4),
(35, 1, 'Ram Nvme 128gb', 'Nvme 128gb\r\nSentinel 100%\r\nMsh 0 days\r\n/pcs = 140k\r\nMin 3 fo P. Jawa\r\nSyam Ason', 'ram-nvme-128gb', 140000, 'ram-nvme-128gb.jpeg', '2025-09-09', 1),
(36, 1, 'Nvme 512gb', 'Nvme 512gb\r\nSentinel cek foto\r\n/pcs = 350k\r\nMin 5 FO Jawa-sumatera\r\nGaransi tes 7 hari setelah diterima\r\nSyam ason', 'nvme-512gb', 350000, 'nvme-512gb.jpeg', '2025-08-31', 2),
(37, 1, 'Ssd sata 256gb new', 'Ssd sata 256gb new\r\n/pcs = 240k\r\nMin 3 fo P. Jawa\r\nKlaim garansi bisa ke saya\r\nsyam ason', 'ssd-sata-256gb-new', 240000, 'ssd-sata-256gb-new.jpeg', '0000-00-00', 0),
(38, 1, 'Ram laptop ddr3l 8gb new', 'Ram laptop ddr3l 8gb new garansi distributor 1thn /pcs = 100k\r\nMin 5 fo P. Jawa\r\nsyam ason', 'ram-laptop-ddr3l-8gb-new', 100000, 'ram-laptop-ddr3l-8gb-new.jpeg', '2025-09-10', 1),
(40, 1, 'Nvme 1TB', 'Nvme 1TB\r\nSentinel 100%\r\nGen 4\r\n650k free ongkir\r\nJawa-sumatera\r\n\r\nsyam ason', 'nvme-1tb', 650000, 'nvme-1tb.jpeg', '2025-08-31', 8),
(41, 1, 'Lenovo G400 intel 1005M ', 'Lenovo G400 intel 1005M \r\n( Led ada panu + batrai 1 jam )\r\nSpiker ok\r\nKamera ok\r\nDvd ok \r\nKeybord ok \r\nRam 2 ( slot kosong )\r\nHdd 500gb \r\nFisik 90% kokoh 100% \r\nCharger ada\r\n650k\r\n\r\nfjb riyan monza', 'lenovo-g400-intel-1005m', 650000, 'lenovo-g400-intel-1005m.jpeg', '2025-08-31', 3),
(42, 1, 'Hp 820 G3 i5 gen 6 ', 'Hp 820 G3 i5 gen 6 \r\n( Minus toucpad retak + batrai hamil )\r\nRam 8 ( slot kosong )\r\nSsd 256gb ( slot hdd kosong )\r\nSpiker ok \r\nKamera ok \r\nKeybord ok \r\nFisik lecet pakai \r\nMobo normal perawan \r\nCharger ada\r\n1.4k\r\n\r\nfjb rian monza', 'hp-820-g3-i5-gen-6', 1400000, 'hp-820-g3-i5-gen-6.jpeg', '2025-08-31', 3),
(43, 1, 'Kesing E5 411 dan E5 471 take all 300k ', 'Kesing E5 411 dan E5 471 take all 300k \r\nFlexybel nempel \r\nDvd tidak ada\r\n\r\nrian monza', 'kesing-e5-411-dan-e5-471-take-all-300k', 300000, 'kesing-e5-411-dan-e5-471-take-all-300k.jpeg', '2025-08-31', 2),
(44, 1, 'Notebook axio mybook 11', 'Notebook axio mybook 11\r\nCeleron n3020\r\nRAM 2Gb\r\nSSD 128Gb\r\nBaterai normal\r\nKeyboard, suara dll normal\r\nMinus layar ada ws bbrp titik\r\nHarga 850rb fo jabodetabek', 'notebook-axio-mybook-11', 850000, 'notebook-axio-mybook-11.jpeg', '2025-07-22', 1),
(45, 9, 'amazon-fire-7-tablet-alexa-2017-8-gb-black', 'produk baru terlaris', 'amazon-fire-7-tablet-alexa-2017-8-gb-black', 2000000, 'amazon-fire-7-tablet-alexa-2017-8-gb-black.jpg', '2025-09-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(34, 12, '34', '2025-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'jayaputraj49@gmail.com', '$2y$10$5qHjWV.mVPDWhPcYv5ONBuzm72vviuS9cOGZboIIaKZrlpnbT1hLi', 1, 'Jaya', 'P', '', '56767676', '.trashed-1727265794-IMG-20240715-WA0011.jpg', 1, '', '', '2018-05-01'),
(9, 'parhan@gmail.com', '$2y$10$5qHjWV.mVPDWhPcYv5ONBuzm72vviuS9cOGZboIIaKZrlpnbT1hLi', 0, 'parhan', 'zul', 'makassar', '090923231423', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'pani@gmail.com', '$2y$10$5qHjWV.mVPDWhPcYv5ONBuzm72vviuS9cOGZboIIaKZrlpnbT1hLi', 0, 'nur', 'pani', 'makassar', '231231234776', 'female3.jpg', 1, '', '6zvN0cUU$7.Pi1r', '2018-07-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts_us`
--
ALTER TABLE `contacts_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts_us`
--
ALTER TABLE `contacts_us`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
