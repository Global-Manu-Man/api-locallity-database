-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 06:03 PM
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
CREATE DATABASE locallity;
use locallity;

CREATE USER 'mysqluser'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
GRANT ALL PRIVILEGES ON locallity.* TO 'mysqluser'@'%';
FLUSH PRIVILEGES;
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
('LOCALITY100', '10% discount', '2023-10-10', '2023-06-02 14:45:11'),
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
(4, '0e4ee132-8', 'https://locallity.s3.us-west-1.amazonaws.com/1685804962458.jpg'),
(5, '0e4ee132-8', 'https://locallity.s3.us-west-1.amazonaws.com/1685804962465.jpg'),
(6, '0e4ee132-8', 'https://locallity.s3.us-west-1.amazonaws.com/1685804962436.jpg'),
(7, '759a18d2-3', 'https://locallity.s3.us-west-1.amazonaws.com/1685805222131.jpg'),
(8, '759a18d2-3', 'https://locallity.s3.us-west-1.amazonaws.com/1685805222126.jpg'),
(9, '759a18d2-3', 'https://locallity.s3.us-west-1.amazonaws.com/1685805222135.jpg'),
(10, '2a5853f8-8', 'https://locallity.s3.us-west-1.amazonaws.com/1685805324005.jpg'),
(11, '2a5853f8-8', 'https://locallity.s3.us-west-1.amazonaws.com/1685805323983.jpg'),
(12, '2a5853f8-8', 'https://locallity.s3.us-west-1.amazonaws.com/1685805324011.jpg'),
(13, '61017dcc-9', 'https://locallity.s3.us-west-1.amazonaws.com/1685805346803.jpg'),
(14, '61017dcc-9', 'https://locallity.s3.us-west-1.amazonaws.com/1685805346791.jpg'),
(15, '61017dcc-9', 'https://locallity.s3.us-west-1.amazonaws.com/1685805346812.jpg'),
(16, 'dd0fb4e8-3', 'https://locallity.s3.us-west-1.amazonaws.com/1685805421160.jpg'),
(17, 'dd0fb4e8-3', 'https://locallity.s3.us-west-1.amazonaws.com/1685805421166.jpg'),
(18, 'dd0fb4e8-3', 'https://locallity.s3.us-west-1.amazonaws.com/1685805421135.jpg');

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
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `delivery` tinyint(1) DEFAULT NULL,
  `shipping` tinyint(1) DEFAULT NULL,
  `bill` tinyint(1) DEFAULT NULL,
  `antiquity` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `physical_store` tinyint(1) DEFAULT NULL,
  `online_store` tinyint(1) DEFAULT NULL,
  `url_google` varchar(100) DEFAULT NULL,
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
  `language` varchar(50) DEFAULT NULL,
  `social_networks` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `negocio`
--

INSERT INTO `negocio` (`business_id`, `schedule`, `name`, `price`, `manager`, `description`, `address_1`, `address_2`, `address_3`, `city`, `state`, `country`, `postal_code`, `latitude`, `longitude`, `delivery`, `shipping`, `bill`, `antiquity`, `email`, `physical_store`, `online_store`, `url_google`, `cell_phone_number`, `business_days`, `category`, `subcategory`, `discount_code`, `publication_likes`, `questions`, `policies_terms`, `accepts_credit_cards`, `is_owner_verified`, `language`, `social_networks`, `status`, `created_at`, `start_date`, `end_date`) VALUES
('0e4ee132-8', '6:00 AM-6:00 AM', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '4100', '37.774900', '-122.419400', 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 100, 5, 'policies and terms', 1, 1, 'Español', 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '0000-00-00 00:00:00', '2023-05-26', '2023-06-30'),
('2a5853f8-8', '6:00 AM-6:00 AM', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '4100', '37.774900', '-122.419400', 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 100, 5, 'policies and terms', 1, 1, 'Español', 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '0000-00-00 00:00:00', '2023-05-26', '2023-06-30'),
('60c996b9-c', '6:00 AM-6:00 AM', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '4100', '37.774900', '-122.419400', 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 100, 5, 'policies and terms', 1, 1, 'Español', 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '0000-00-00 00:00:00', '2023-05-26', '2023-06-30'),
('61017dcc-9', '6:00 AM-6:00 AM', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '4100', '37.774900', '-122.419400', 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 100, 5, 'policies and terms', 1, 1, 'Español', 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '0000-00-00 00:00:00', '2023-05-26', '2023-06-30'),
('759a18d2-3', '6:00 AM-6:00 AM', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '4100', '37.774900', '-122.419400', 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 100, 5, 'policies and terms', 1, 1, 'Español', 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '0000-00-00 00:00:00', '2023-05-26', '2023-06-30'),
('7dce2442-f', '6:00 AM-6:00 AM', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '4100', '37.774900', '-122.419400', 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 100, 5, 'policies and terms', 1, 1, 'Español', 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '0000-00-00 00:00:00', '2023-05-26', '2023-06-30'),
('ce11ae24-1', '6:00 AM-6:00 AM', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '4100', '37.774900', '-122.419400', 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 100, 5, 'policies and terms', 1, 1, 'Español', 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '0000-00-00 00:00:00', '2023-05-26', '2023-06-30'),
('dd0fb4e8-3', '6:00 AM-6:00 AM', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '4100', '37.774900', '-122.419400', 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 100, 5, 'policies and terms', 1, 1, 'Español', 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '0000-00-00 00:00:00', '2023-05-26', '2023-06-30'),
('e6a8863f-0', '6:00 AM-6:00 AM', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '4100', '37.774900', '-122.419400', 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 100, 5, 'policies and terms', 1, 1, 'Español', 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '0000-00-00 00:00:00', '2023-05-26', '2023-06-30');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`images_id`) REFERENCES `negocio` (`business_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
