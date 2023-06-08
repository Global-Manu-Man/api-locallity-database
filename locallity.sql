-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 06:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `locallity`
--

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `discount_code` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_validity` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`discount_code`, `description`, `date_validity`, `created_at`) VALUES
('LOCALITY1', '10% discount', '0000-00-00', '2023-06-02 14:22:55'),
('LOCALITY3', '10% discount', '0000-00-00', '2023-06-02 14:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `images_id` varchar(10) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `images_id`, `image_url`) VALUES
(30, '03e186f4-d', 'https://locallity.s3.us-west-1.amazonaws.com/1686240674293.jpg'),
(31, '03e186f4-d', 'https://locallity.s3.us-west-1.amazonaws.com/1686240674332.jpg'),
(32, '03e186f4-d', 'https://locallity.s3.us-west-1.amazonaws.com/1686240674329.jpg'),
(33, '03e186f4-d', 'https://locallity.s3.us-west-1.amazonaws.com/1686240674324.jpg'),
(34, '09acd8e5-5', 'https://locallity.s3.us-west-1.amazonaws.com/1686240736858.jpg'),
(35, '09acd8e5-5', 'https://locallity.s3.us-west-1.amazonaws.com/1686240736826.jpg'),
(36, '09acd8e5-5', 'https://locallity.s3.us-west-1.amazonaws.com/1686240736852.jpg'),
(37, '09acd8e5-5', 'https://locallity.s3.us-west-1.amazonaws.com/1686240736855.jpg'),
(38, '4a29b557-c', 'https://locallity.s3.us-west-1.amazonaws.com/1686240754744.jpg'),
(39, '4a29b557-c', 'https://locallity.s3.us-west-1.amazonaws.com/1686240754709.jpg'),
(40, '4a29b557-c', 'https://locallity.s3.us-west-1.amazonaws.com/1686240754740.jpg'),
(41, '4a29b557-c', 'https://locallity.s3.us-west-1.amazonaws.com/1686240754736.jpg'),
(42, '01fa7bfb-9', 'https://locallity.s3.us-west-1.amazonaws.com/1686240911727.jpg'),
(43, '01fa7bfb-9', 'https://locallity.s3.us-west-1.amazonaws.com/1686240911767.jpg'),
(44, '01fa7bfb-9', 'https://locallity.s3.us-west-1.amazonaws.com/1686240911772.jpg'),
(45, '01fa7bfb-9', 'https://locallity.s3.us-west-1.amazonaws.com/1686240911760.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(11) NOT NULL,
  `logo_id` varchar(10) NOT NULL,
  `logo_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `logo_id`, `logo_url`) VALUES
(8, '03e186f4-d', 'https://locallity-logos.s3.us-west-1.amazonaws.com/1686240674337.png'),
(9, '09acd8e5-5', 'https://locallity-logos.s3.us-west-1.amazonaws.com/1686240736861.png'),
(10, '4a29b557-c', 'https://locallity-logos.s3.us-west-1.amazonaws.com/1686240754747.png'),
(11, '01fa7bfb-9', 'https://locallity-logos.s3.us-west-1.amazonaws.com/1686240911775.png');

-- --------------------------------------------------------

--
-- Table structure for table `negocio`
--

CREATE TABLE `negocio` (
  `business_id` varchar(11) NOT NULL,
  `schedule` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `manager` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `address_1` varchar(100) DEFAULT NULL,
  `address_2` varchar(100) DEFAULT NULL,
  `address_3` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `delivery` tinyint(1) DEFAULT NULL,
  `shipping` tinyint(1) DEFAULT NULL,
  `bill` tinyint(1) DEFAULT NULL,
  `antiquity` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `physical_store` tinyint(1) DEFAULT NULL,
  `online_store` tinyint(1) DEFAULT NULL,
  `url_google` varchar(100) DEFAULT NULL,
  `business_age` varchar(50) NOT NULL,
  `municipality` varchar(50) NOT NULL,
  `cell_phone_number` varchar(20) DEFAULT NULL,
  `business_days` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `subcategory` varchar(100) DEFAULT NULL,
  `discount_code` varchar(20) DEFAULT NULL,
  `publication_likes` int(11) DEFAULT NULL,
  `questions` int(11) DEFAULT NULL,
  `policies_terms` text DEFAULT NULL,
  `accepts_credit_cards` tinyint(1) DEFAULT NULL,
  `is_owner_verified` tinyint(1) DEFAULT NULL,
  `social_networks` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `negocio`
--

INSERT INTO `negocio` (`business_id`, `schedule`, `name`, `price`, `manager`, `description`, `address_1`, `address_2`, `address_3`, `city`, `state`, `country`, `postal_code`, `delivery`, `shipping`, `bill`, `antiquity`, `email`, `physical_store`, `online_store`, `url_google`, `business_age`, `municipality`, `cell_phone_number`, `business_days`, `category`, `subcategory`, `discount_code`, `publication_likes`, `questions`, `policies_terms`, `accepts_credit_cards`, `is_owner_verified`, `social_networks`, `status`, `created_at`, `start_date`, `end_date`) VALUES
('01fa7bfb-9', '6:00 AM-6:00 AM', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '1-5', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 100, 5, 'policies and terms', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-06-08 16:15:11', '2023-05-26', '2023-06-30'),
('03e186f4-d', '6:00 AM-6:00 AM', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '1-5', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 100, 5, 'policies and terms', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-06-08 16:11:14', '2023-05-26', '2023-06-30'),
('09acd8e5-5', '6:00 AM-6:00 AM', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '1-5', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 100, 5, 'policies and terms', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-06-08 16:12:16', '2023-05-26', '2023-06-30'),
('4a29b557-c', '6:00 AM-6:00 AM', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '1-5', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 100, 5, 'policies and terms', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-06-08 16:12:34', '2023-05-26', '2023-06-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discount_code`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_id` (`images_id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logo_id` (`logo_id`);

--
-- Indexes for table `negocio`
--
ALTER TABLE `negocio`
  ADD PRIMARY KEY (`business_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`images_id`) REFERENCES `negocio` (`business_id`);

--
-- Constraints for table `logos`
--
ALTER TABLE `logos`
  ADD CONSTRAINT `logos_ibfk_1` FOREIGN KEY (`logo_id`) REFERENCES `negocio` (`business_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
