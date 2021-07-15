-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2021 at 11:17 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'fatima@gmail.com', 'phpstore');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'nike', '2020-10-29 01:24:54', '2020-10-29 01:24:54'),
(2, 'adidas', '2020-10-30 16:49:05', '2020-10-30 16:49:05'),
(3, 'fjallraven', '2021-06-12 16:26:35', '2021-06-12 16:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'arsalanmughal41@yahoo.com', 'Is it visible in DATABASE?', '2020-10-27 06:01:59', '2020-10-27 06:01:59'),
(2, 'arsalanmughal400@gmail.com', '', '2020-11-12 21:34:01', '2020-11-12 21:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'arsalanmughal324@gmail.com', 'customer', '2020-11-12 21:43:13', '2020-11-12 21:43:13'),
(2, 'arsalanmughal400@gmail.com', 'buy', '2020-11-12 21:44:24', '2020-11-12 21:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `total` int(11) NOT NULL,
  `pay_method` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `phone`, `total`, `pay_method`, `created_at`, `updated_at`) VALUES
(3, 1, 'flat 13-b, gulshan terrace, Mu', '03332975389', 15002, '', '2020-11-14 22:50:18', '2020-11-14 22:50:18'),
(4, 1, 'Sanarota', '03332975389', 15002, '', '2020-11-14 22:57:55', '2020-11-14 22:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 5, 9, 1, '2020-11-14 23:03:39', '2020-11-14 23:03:39'),
(2, 6, 9, 1, '2020-11-14 23:11:07', '2020-11-14 23:11:07'),
(3, 8, 9, 1, '2020-11-19 07:10:05', '2020-11-19 07:10:05'),
(4, 9, 9, 1, '2020-11-19 07:10:14', '2020-11-19 07:10:14'),
(5, 10, 9, 1, '2020-11-19 07:12:15', '2020-11-19 07:12:15'),
(6, 11, 9, 1, '2020-11-19 07:12:51', '2020-11-19 07:12:51'),
(7, 12, 9, 1, '2020-11-19 07:13:15', '2020-11-19 07:13:15'),
(8, 13, 9, 1, '2020-11-19 07:17:39', '2020-11-19 07:17:39'),
(9, 14, 9, 1, '2020-11-19 07:17:51', '2020-11-19 07:17:51'),
(10, 15, 9, 1, '2020-11-19 07:19:04', '2020-11-19 07:19:04'),
(11, 16, 9, 1, '2020-11-19 07:19:10', '2020-11-19 07:19:10'),
(12, 17, 9, 1, '2020-11-19 07:19:25', '2020-11-19 07:19:25'),
(13, 18, 9, 1, '2020-11-19 07:19:36', '2020-11-19 07:19:36'),
(14, 19, 9, 1, '2020-11-19 07:21:22', '2020-11-19 07:21:22'),
(15, 20, 9, 1, '2020-11-19 07:21:32', '2020-11-19 07:21:32'),
(16, 4, 13, 1, '2020-11-19 08:12:43', '2020-11-19 08:12:43'),
(17, 4, 13, 1, '2020-11-19 08:12:50', '2020-11-19 08:12:50'),
(18, 4, 13, 1, '2020-11-19 08:13:09', '2020-11-19 08:13:09'),
(19, 4, 13, 1, '2020-11-19 08:13:38', '2020-11-19 08:13:38'),
(20, 21, 13, 1, '2020-11-19 08:15:32', '2020-11-19 08:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(30) NOT NULL,
  `description` mediumtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `picture`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(6, 'kanken', 89, 'uploads/fj5.png', 'Tüm ana bölmeyi açan fermuarlı, dayanıklı Vinylon\'dan klasik Kånken Sırt Çantası. Çıkarılabilir koltuk minderi, küçük ön cep, basit omuz askıları ve üst tutamaklar', 1, '2020-10-30 16:48:24', '2020-10-30 16:48:24'),
(9, 'addidas', 6, 'uploads/pngaaa.com-173444.png', '', 2, '2020-11-05 22:34:08', '2020-11-05 22:34:08'),
(13, 'nike', 85, 'uploads/nike4.png', 'Swoosh logosu, ön yazı baskısı, arka yazı baskısı, ayırıcı bölme, fermuarlı iki yan cep, üstten fermuarlı, üstten tek sap, ayarlanabilir omuz askıları. Malzemeler Dış: %100 Kumaş Marka Kimliği: DH3069 Görünüm Stili Uzunluk 1,86m, Beden İşletim Sistemi Görünüm Modeli: Nike \'Zoom Pegasus 36 Trail\' spor ayakkabı, Off-White logolu beyzbol şapkası.', 1, '2020-11-05 23:20:51', '2020-11-05 23:20:51'),
(16, 'kanken', 99, 'uploads/fj1.png', 'Tüm ana bölmeyi açan fermuarlı, dayanıklı Vinylon\'dan klasik Kånken Sırt Çantası. Çıkarılabilir koltuk minderi, küçük ön cep, basit omuz askıları ve üst tutamaklar', 3, '2020-11-07 19:59:49', '2020-11-07 19:59:49'),
(18, 'nike', 560, 'uploads/nike3.png', 'Swoosh logosu, ön yazı baskısı, arka yazı baskısı, ayırıcı bölme, fermuarlı iki yan cep, üstten fermuarlı, üstten tek sap, ayarlanabilir omuz askıları. Malzemeler Dış: %100 Kumaş Marka Kimliği: DH3069 Görünüm Stili Uzunluk 1,86m, Beden İşletim Sistemi Görünüm Modeli: Nike \'Zoom Pegasus 36 Trail\' spor ayakkabı, Off-White logolu beyzbol şapkası.', 1, '2021-06-12 17:04:28', '2021-06-12 17:04:28'),
(20, 'addidas', 100, 'uploads/adidas2.png', '3 şeritli metalik parlak kaplamalı, 3 şeritli logolu, Trefoil logolu, ön geniş cepli, üstten fermuarlı, üstten tek saplı, ayarlanabilir omuz askılı adidas Sırt Çantası. Pozitif Farkındalık: adidas Group, eko-markalara etik açıdan değer veren Good On You Vakfı\'ndan 5 üzerinden 4 puan almaktadır. Ürünlerinin çoğunda çevre dostu malzemeler kullanan marka, pamuğunun %100\'ünü sürdürülebilir kaynaklardan sağlıyor ve 2024 yılına kadar tamamen geri dönüştürülmüş polyester kullanmayı taahhüt ediyor. Marka aynı zamanda iyi iş gücü sağlamak için tedarik zincirinin çoğu aşamasını takip ediyor ve değerlendiriyor. standartlar uygulanır ve marka tüm tedarikçileri ile Karbon emisyonlarını ve su israfını azaltmayı taahhüt eder. Malzemeler Astar: %100 polyester Dış: %100 Polietilen Marka Kimliği: GN2138 Görünüm Model uzunluğu 1,77 m, boyut OS Kilidi Model: Kapalı -Beyaz Dikdörtgen çerçeveli güneş gözlüğü.', 2, '2021-06-12 17:15:37', '2021-06-12 17:15:37'),
(21, 'kanken', 89, 'uploads/fj3.png', 'Tüm ana bölmeyi açan fermuarlı, dayanıklı Vinylon\'dan klasik Kånken Sırt Çantası. Çıkarılabilir koltuk minderi, küçük ön cep, basit omuz askıları ve üst tutamaklar', 1, '2021-06-12 17:23:13', '2021-06-12 17:23:13'),
(22, 'nike', 99, 'uploads/nike2.png', 'Swoosh logosu, ön yazı baskısı, arka yazı baskısı, ayırıcı bölme, fermuarlı iki yan cep, üstten fermuarlı, üstten tek sap, ayarlanabilir omuz askıları. Malzemeler Dış: %100 Kumaş Marka Kimliği: DH3069 Görünüm Stili Uzunluk 1,86m, Beden İşletim Sistemi Görünüm Modeli: Nike \'Zoom Pegasus 36 Trail\' spor ayakkabı, Off-White logolu beyzbol şapkası.', 1, '2021-06-12 18:08:16', '2021-06-12 18:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwdResetId` int(11) NOT NULL,
  `pwdResetEmail` text NOT NULL,
  `pwdResetSelector` text NOT NULL,
  `pwdResetToken` longtext NOT NULL,
  `pwdResetExpires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwdResetId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwdResetId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
