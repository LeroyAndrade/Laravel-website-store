-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 01:15 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelprojectone`
--

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) UNSIGNED NOT NULL,
  `title` varchar(21) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(4,2) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `imageBig` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `image`, `imageBig`) VALUES
(1, 'Coca Cola Vanille', 'Coca-cola vanilla heeft de lekkere smaak van Coca-Cola maar dan met een vleugje vanille. Het 250ml blik is een handige verpakking voor onderweg.', '2.69', 'colaVanille-small.jpg', 'colaVanille-large.jpg'),
(2, 'Lays Ham & Kaas', 'Voor de hartige trek: lekker luchtige maiszoutjes met ham-kaassmaak. De snack voor tussendoor. Met een brosse bite, bereid met zonnebloemolie.\r\nBevat ca. 6 porties', '0.99', 'hamkaas-small.jpg', 'hamkaas-large.jpg'),
(3, 'Red Bull Energy drink', 'Red bull energy drink wordt wereldwijd gewaardeerd door topsporters.      Stimuleert lichaam en geest     Het suikergehalte van een blikje is gelijk aan frisdrank: 11g/100ml     Het cafeinegehalte van een blikje is gelijk aan een kop koffie: 32mg/100ml     Een 4-pack bevat 4 blikjes van 250ml', '5.99', 'redbull4pack-small.jpg', 'redbull4pack-large.jpg'),
(4, 'Red Bull Energy drink', 'De summer edition met de verfrissende, zomerse smaak van cactusvrucht. Red Bull energy drink wordt wereldwijd gewaardeerd door topsporters. Stimuleert lichaam en geest. Bevat cafeine, taurine, vitamine b, suiker en water.', '1.55', 'redbullCactus-small.jpg', 'redbullCactus-large.jpg'),
(5, 'Reign Orange dreamsic', 'Reign orange dreamsicle - de ideale zero sugar performance energy drink met een combinatie van sinaasappel- en creamy vanille smaak en de perfecte balans van bcaas, natuurlijke caffeine en l-arginine. De ideale zero sugar performance energy drink. Met sinaasappel- en creamy vanille smaak     Bevat de perfecte balans van bcaas, natuurlijke caffeine en l-arginine.', '1.49', 'reign-small.jpg', 'reign-large.jpg'),
(6, 'Werther\'s Original', 'Werther\'s Original klassieke roomsnoepjes. Ongelofelijk verleidelijk: een zoete en zacht smeltende caramelspecialiteit.      Bereid volgens speciaal recept met echte boter, verse room en veel liefde en zorg', '1.45', 'wertners-small.jpg', 'wertners-large.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
