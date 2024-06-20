-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2022 at 07:35 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_packing-management-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Van', 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(2, 'Taxi', 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(3, 'Bus', 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(4, 'Hatchback', 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(5, 'Sedan', 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(6, 'SUV', 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(7, 'MPV', 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(8, 'Micro', 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `phone`, `email`, `company`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Ebba Champlin II', '9383 Towne Unions\nArnoldport, AR 70792-6994', '844.894.6491', 'trevor04@kuphal.org', 'Lemke-Rogahn', NULL, '2022-07-06 06:35:05', '2022-07-06 06:35:05'),
(2, 'Treva Prosacco', '75012 Nader Ville Apt. 807\nDelphaport, CT 12439-7343', '(855) 817-0951', 'davis.brain@yahoo.com', 'Goldner Ltd', NULL, '2022-07-06 06:35:05', '2022-07-06 06:35:05'),
(3, 'Mr. Alvis Weber DDS', '2343 Will Highway Apt. 090\nGibsonmouth, MO 42325', '855.767.1248', 'imiller@gmail.com', 'Harber-Reinger', NULL, '2022-07-06 06:35:05', '2022-07-06 06:35:05'),
(4, 'Prof. Tracey Hahn', '2201 Gerlach Underpass Suite 976\nNorth Lila, TN 93561', '(866) 866-9100', 'marcella.hane@gmail.com', 'Labadie, Stiedemann and Beer', NULL, '2022-07-06 06:35:05', '2022-07-06 06:35:05'),
(5, 'Dario Carter', '496 Abdul Station Suite 155\nEast Orpha, MN 67957-4849', '855.799.5408', 'jedediah.daniel@greenfelder.net', 'Cummerata and Sons', NULL, '2022-07-06 06:35:05', '2022-07-06 06:35:05'),
(6, 'Cruz Lubowitz', '45267 Stiedemann Manor\nEast Breanamouth, KS 32556', '1-866-216-2093', 'cicero03@cassin.com', 'Feest LLC', NULL, '2022-07-06 06:35:05', '2022-07-06 06:35:05'),
(7, 'Alysa Kessler', '539 Maudie Harbor Apt. 028\nKautzerland, LA 35366', '800-650-6397', 'laurine92@hotmail.com', 'Considine, Bernhard and Langosh', NULL, '2022-07-06 06:35:05', '2022-07-06 06:35:05'),
(8, 'Arvid Nikolaus DDS', '40386 Hermann Hollow\nGreenfelderberg, LA 33309-4062', '855.527.4656', 'noemi26@gmail.com', 'Volkman Inc', NULL, '2022-07-06 06:35:05', '2022-07-06 06:35:05'),
(9, 'Tanya Miller Jr.', '646 Hessel Parkway\nMorissettebury, NY 32433-7381', '877.363.2115', 'kellie54@hotmail.com', 'Sauer-Marquardt', NULL, '2022-07-06 06:35:05', '2022-07-06 06:35:05'),
(10, 'Alayna Krajcik', '8132 Alberto Mews\nKubton, NH 56172', '855-272-6652', 'poconner@lindgren.org', 'Walsh-Marks', NULL, '2022-07-06 06:35:05', '2022-07-06 06:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_02_172922_create_customers_table', 1),
(6, '2021_12_02_173032_create_categories_table', 1),
(7, '2021_12_02_173111_create_vehicles_table', 1),
(8, '2021_12_03_160312_create_vehicle_ins_table', 1),
(9, '2021_12_03_160524_create_vehicle_outs_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@test.com', NULL, '$2y$10$QptXO2ZN5yI9n0nI2Bnc9OMIDvA/62Rhz.bYh2QBhCyNdpYqQzzC2', '120911650724827_avatar.png', NULL, '2022-07-05 21:00:00', '2022-07-05 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plat_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `duration` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `packing_charge` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `name`, `plat_number`, `registration_number`, `status`, `duration`, `packing_charge`, `category_id`, `customer_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Mitsubishi', 'Kerkuk - 502838', '68611657100105', 0, 2, 1000, 1, 3, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(2, 'Porsche', 'Halabja - 583918', '102211657100105', 0, 1, 1000, 5, 8, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(3, 'Suzuki', 'Halabja - 395329', '294271657100105', 1, 4, 1000, 6, 6, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(4, 'Citroën', 'Halabja - 297171', '137751657100105', 1, 3, 1000, 4, 2, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(5, 'Mini', 'Erbil - 80382', '321331657100105', 2, 2, 1000, 7, 2, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(6, 'Volvo', 'Erbil - 454768', '126141657100105', 2, 3, 1000, 8, 2, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(7, 'Tesla', 'Halabja - 814159', '288141657100105', 2, 2, 1000, 2, 10, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(8, 'Peugeot', 'Kerkuk - 827867', '33061657100105', 2, 1, 1000, 5, 10, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(9, 'Bentley', 'Kerkuk - 367083', '268021657100105', 0, 2, 1000, 5, 6, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(10, 'Infiniti', 'Halabja - 146917', '315491657100105', 1, 3, 1000, 1, 4, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(11, 'Daewoo', 'Duhok - 49321', '21901657100105', 1, 1, 1000, 3, 9, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(12, 'Rover', 'Erbil - 527925', '128081657100105', 2, 2, 1000, 2, 9, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(13, 'Nissan', 'Halabja - 26827', '294161657100105', 2, 1, 1000, 2, 3, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(14, 'Mazda', 'Erbil - 153531', '282581657100105', 2, 1, 1000, 5, 1, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(15, 'Nissan', 'Silemani - 318586', '284841657100105', 1, 2, 1000, 2, 6, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(16, 'Alfa Romeo', 'Silemani - 457395', '264231657100106', 1, 2, 1000, 4, 9, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(17, 'Landwind', 'Erbil - 294545', '162351657100106', 2, 3, 1000, 1, 3, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(18, 'Jeep', 'Duhok - 142166', '246791657100106', 1, 4, 1000, 3, 9, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(19, 'Volkswagen', 'Halabja - 109214', '9021657100106', 2, 1, 1000, 7, 1, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(20, 'Daihatsu', 'Kerkuk - 43048', '319941657100106', 1, 4, 1000, 6, 5, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(21, 'Seat', 'Erbil - 684370', '174511657100106', 2, 2, 1000, 7, 6, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(22, 'DS', 'Silemani - 301963', '176281657100106', 0, 4, 1000, 7, 10, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(23, 'McLaren', 'Erbil - 811753', '92331657100106', 0, 3, 1000, 1, 8, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(24, 'Peugeot', 'Erbil - 844620', '322491657100106', 2, 3, 1000, 5, 10, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(25, 'Landwind', 'Erbil - 470467', '104981657100106', 2, 4, 1000, 4, 8, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(26, 'BMW', 'Erbil - 813198', '284331657100106', 0, 2, 1000, 7, 5, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(27, 'Suzuki', 'Kerkuk - 671356', '193261657100106', 0, 4, 1000, 8, 7, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(28, 'Mitsubishi', 'Kerkuk - 855173', '277441657100106', 0, 3, 1000, 4, 5, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(29, 'Cadillac', 'Erbil - 14497', '17181657100106', 0, 2, 1000, 7, 10, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(30, 'Bugatti', 'Erbil - 71864', '194371657100106', 1, 2, 1000, 4, 9, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_ins`
--

CREATE TABLE `vehicle_ins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parking_area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parking_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_ins`
--

INSERT INTO `vehicle_ins` (`id`, `vehicle_id`, `parking_area`, `parking_number`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 29, 'Blok D', '22296', 1, 1, '2022-07-05 21:00:00', '2022-07-06 06:35:06'),
(2, 26, 'Blok C', '19438', 0, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(3, 16, 'Blok D', '19740', 1, 1, '2022-07-05 21:00:00', '2022-07-06 06:35:06'),
(4, 22, 'Blok D', '2432', 0, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(5, 3, 'Blok A', '27558', 0, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(6, 2, 'Blok B', '17090', 1, 1, '2022-07-05 21:00:00', '2022-07-06 06:35:06'),
(7, 17, 'Blok B', '32821', 0, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(8, 14, 'Blok D', '28043', 1, 1, '2022-07-05 21:00:00', '2022-07-06 06:35:06'),
(9, 6, 'Blok B', '24131', 1, 1, '2022-07-05 21:00:00', '2022-07-06 06:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_outs`
--

CREATE TABLE `vehicle_outs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicleIn_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_outs`
--

INSERT INTO `vehicle_outs` (`id`, `vehicleIn_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(2, 8, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(3, 9, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(4, 3, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00'),
(5, 6, 1, '2022-07-05 21:00:00', '2022-07-05 21:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_foreign` (`created_by`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_created_by_foreign` (`created_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicles_category_id_foreign` (`category_id`),
  ADD KEY `vehicles_customer_id_foreign` (`customer_id`),
  ADD KEY `vehicles_created_by_foreign` (`created_by`);

--
-- Indexes for table `vehicle_ins`
--
ALTER TABLE `vehicle_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_ins_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `vehicle_ins_created_by_foreign` (`created_by`);

--
-- Indexes for table `vehicle_outs`
--
ALTER TABLE `vehicle_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_outs_vehiclein_id_foreign` (`vehicleIn_id`),
  ADD KEY `vehicle_outs_created_by_foreign` (`created_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `vehicle_ins`
--
ALTER TABLE `vehicle_ins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicle_outs`
--
ALTER TABLE `vehicle_outs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicles_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicles_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicle_ins`
--
ALTER TABLE `vehicle_ins`
  ADD CONSTRAINT `vehicle_ins_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicle_ins_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicle_outs`
--
ALTER TABLE `vehicle_outs`
  ADD CONSTRAINT `vehicle_outs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicle_outs_vehiclein_id_foreign` FOREIGN KEY (`vehicleIn_id`) REFERENCES `vehicle_ins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
