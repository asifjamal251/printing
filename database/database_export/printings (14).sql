-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 09, 2024 at 09:47 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `printings`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE IF NOT EXISTS `activity_log` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_name` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subject_type` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `event` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `batch_uuid` char(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `avatar` varchar(255) DEFAULT NULL,
  `cover_photo` varchar(255) DEFAULT 'assets/images/profile-bg.jpg',
  `gender` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `google2fa_secret` varchar(255) DEFAULT NULL,
  `google2fa_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `name`, `email`, `mobile`, `password`, `remember_token`, `status`, `avatar`, `cover_photo`, `gender`, `date_of_birth`, `google2fa_secret`, `google2fa_enabled`, `latitude`, `longitude`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'AR', 'admin@artechnology.in', '8109763160', '$2y$10$HkdFs35.H07KzyY3BmmxJ.E1jCV9NFczzyvki1lHGGHqTqQ5N70VS', 'KQwYLppsGODZh241LiHYWQTeSzk5ev1UD3psCYaHRHrUycGuTXSfTFchbCAS', 1, 'storage/admin/1700733287.png', 'storage/admin/1703261606.jpg', 'male', '2022-01-20', NULL, 0, NULL, NULL, '2022-06-25 15:33:05', '2024-06-03 11:25:21', NULL),
(6, 2, 'Asif Jamal', 'asif@gmail.com', '8109763160', '$2y$12$8ENfcz3SbVJucvirwclJSe1/54yDuY5/TMic18EflNHNZ5PScgYxK', NULL, 1, NULL, 'assets/images/profile-bg.jpg', 'male', '1994-11-25', 'eyJpdiI6Ik5pcjR0WFdZUm9oUG4rbFRRQ1BGRVE9PSIsInZhbHVlIjoiL2dITTlaL3UySCt6aFhwaEJveDc4Zlg2RGtSak9XdTBETVJ6QVBobVFCWT0iLCJtYWMiOiJhZTkwZjk5ZjE3Nzk5MzQ0OTFiY2I1MTBjNDk4ZjUxNWI4ZTI5NzRkZTg3NWRkYzdjNmYwMmExMjEwZmIzYjkzIiwidGFnIjoiIn0=', 1, '30.6850551', '76.7245967', '2024-06-03 11:30:20', '2024-06-05 08:43:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

DROP TABLE IF EXISTS `billings`;
CREATE TABLE IF NOT EXISTS `billings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(255) NOT NULL,
  `client_id` int NOT NULL,
  `status_id` int NOT NULL DEFAULT '2',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billing_items`
--

DROP TABLE IF EXISTS `billing_items`;
CREATE TABLE IF NOT EXISTS `billing_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `billing_id` bigint NOT NULL,
  `purchase_order_id` bigint DEFAULT NULL,
  `purchase_order_item_id` bigint DEFAULT NULL,
  `carton_name` varchar(255) NOT NULL,
  `ready_quantity` varchar(255) NOT NULL,
  `ready_box` varchar(255) DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cartons`
--

DROP TABLE IF EXISTS `cartons`;
CREATE TABLE IF NOT EXISTS `cartons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` double DEFAULT NULL,
  `carton_name` varchar(1024) DEFAULT NULL,
  `carton_size` varchar(1024) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `coating_type_id` double DEFAULT NULL,
  `other_coating_type_id` varchar(1024) DEFAULT NULL,
  `embossing_leafing` double DEFAULT NULL,
  `paper_type_id` double DEFAULT NULL,
  `gsm` double DEFAULT NULL,
  `art_work` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `carton_prices`
--

DROP TABLE IF EXISTS `carton_prices`;
CREATE TABLE IF NOT EXISTS `carton_prices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `carton_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chemical_coatings`
--

DROP TABLE IF EXISTS `chemical_coatings`;
CREATE TABLE IF NOT EXISTS `chemical_coatings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `job_card_id` bigint NOT NULL,
  `coated_sheets` int DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `leafing` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(1024) DEFAULT NULL,
  `last_name` varchar(1024) DEFAULT NULL,
  `full_name` varchar(1024) DEFAULT NULL,
  `company_name` varchar(1024) DEFAULT NULL,
  `email` varchar(1024) DEFAULT NULL,
  `mobile` varchar(1024) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `city` varchar(1024) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `pincode` varchar(1024) DEFAULT NULL,
  `gst` varchar(1024) DEFAULT NULL,
  `media_id` int DEFAULT NULL,
  `color` varchar(1024) DEFAULT NULL,
  `name_init` varchar(1024) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coas`
--

DROP TABLE IF EXISTS `coas`;
CREATE TABLE IF NOT EXISTS `coas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `billing_item_id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `batch` varchar(255) DEFAULT NULL,
  `manufacturing_date` date DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coating_types`
--

DROP TABLE IF EXISTS `coating_types`;
CREATE TABLE IF NOT EXISTS `coating_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coating_types`
--

INSERT INTO `coating_types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Gloss Lamination', '2023-12-01 08:59:38', '2023-12-01 08:59:38'),
(2, 'Matt Lamination', '2023-12-01 08:59:38', '2023-12-01 08:59:38'),
(3, 'Full UV', '2023-12-01 08:59:38', '2023-12-01 08:59:38'),
(4, 'Aqueous Varnish', '2023-12-01 08:59:38', '2023-12-01 08:59:38'),
(5, 'Drip off', '2023-12-01 08:59:38', '2023-12-01 08:59:38'),
(6, 'Drip off + UV', '2023-12-01 08:59:38', '2023-12-01 08:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `coa_items`
--

DROP TABLE IF EXISTS `coa_items`;
CREATE TABLE IF NOT EXISTS `coa_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coa_id` int NOT NULL,
  `parameter` varchar(255) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cuttings`
--

DROP TABLE IF EXISTS `cuttings`;
CREATE TABLE IF NOT EXISTS `cuttings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `job_card_id` int NOT NULL,
  `cutting_sheets` int DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `metalic_status` tinyint(1) NOT NULL DEFAULT '0',
  `timer` int NOT NULL DEFAULT '0' COMMENT '0=none\r\n1=start\r\n2=pause\r\n3stop',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `designings`
--

DROP TABLE IF EXISTS `designings`;
CREATE TABLE IF NOT EXISTS `designings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_card_id` int NOT NULL,
  `sheet_size` varchar(255) DEFAULT NULL,
  `required_sheet` int DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `set_no` varchar(255) DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '2',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dye_breakings`
--

DROP TABLE IF EXISTS `dye_breakings`;
CREATE TABLE IF NOT EXISTS `dye_breakings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `job_card_id` bigint NOT NULL,
  `purchase_order_id` bigint DEFAULT NULL,
  `purchase_order_item_id` bigint DEFAULT NULL,
  `ready_quantity` int DEFAULT '0',
  `ready_box` varchar(255) DEFAULT NULL,
  `quantity_in_box` int DEFAULT NULL,
  `no_of_box` int DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dye_cuttings`
--

DROP TABLE IF EXISTS `dye_cuttings`;
CREATE TABLE IF NOT EXISTS `dye_cuttings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `job_card_id` bigint NOT NULL,
  `dye_counter` int DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dye_details`
--

DROP TABLE IF EXISTS `dye_details`;
CREATE TABLE IF NOT EXISTS `dye_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dye_no` varchar(1024) DEFAULT NULL,
  `length` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `dye_lock` varchar(1024) DEFAULT NULL,
  `ups` double DEFAULT NULL,
  `sheet_size` varchar(1024) DEFAULT NULL,
  `automatic` double DEFAULT NULL,
  `carton_size` varchar(1024) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=470 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dye_details`
--

INSERT INTO `dye_details` (`id`, `dye_no`, `length`, `width`, `height`, `dye_lock`, `ups`, `sheet_size`, `automatic`, `carton_size`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2', 42, 12, 62, 'BSO', 12, '18.5X11.5', 0, '42X12X62', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(2, '3', 134, 46, 66, 'LBTO', 4, '15x20.5', 0, '134X46X66', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(3, '4', 216, 66, 66, 'LBTO', 2, '11.5X23', 0, '216X66X66', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(4, '5', 40, 14, 85, 'BSO', 12, '13.7X18.3', 0, '40X14X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(5, '6', 150, 44, 90, 'LBTO', 4, '24X15.7', 0, '150X44X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(6, '7', 52, 52, 74, 'BSO', 2, '20.7X12', 0, '52X52X74', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(7, '8', 82, 12, 100, 'BSO', 8, '15.5X20.2', 0, '82X12X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(8, '86', 40, 32, 72, 'BSO', 4, '20.2X18.5', 0, '40X32X72', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(9, '90', 50, 45, 112, 'BSO', 6, '25X18', 0, '50X45X112', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(10, '122', 56, 36, 100, 'LBTO', 8, '23.5X15.5', 0, '56X36X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(11, '123', 62, 65, 220, 'BSO', 2, '20.8X15', 0, '62X65X220', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(12, '125', 60, 35, 100, 'BSO', 8, '25X15.7', 0, '60X35X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(13, '126', 35, 35, 87, 'BSO', 12, '23X17.8', 0, '35X35X87', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(14, '127', 76, 32, 72, 'LBSO', 6, '17.8X18.7', 0, '76X32X72', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(15, '140', 123, 38, 53, 'LBTO', 4, '13.2X17', 0, '123X38X53', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(16, '155', 160, 48, 103, 'LBSO', 3, '20.5X17', 0, '160X48X103', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(17, '161', 115, 74, 68, 'LBSO', 2, '13.2X15.7', 0, '115X74X68', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(18, '165', 130, 74, 120, 'LBSO', 2, '17.2X16.5', 0, '130X74X120', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(19, '166', 70, 70, 50, 'LBSO', 4, '11.5X22.3', 0, '70X70X50', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(20, '168', 160, 55, 60, 'LBSO', 4, '22.3X17.5', 0, '160X55X60', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(21, '179', 55, 35, 84, 'BSO', 9, '17.5X23', 0, '55X35X84', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(22, '181', 41, 41, 100, 'LBTO', 8, '13.7X24.5', 0, '41X41X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(23, '182', 30, 26, 75, 'BSO', 16, '19X19', 0, '30X26X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(24, '182', 59, 42, 99, 'BSO', 6, '25X14', 0, '59X42X99', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(25, '189', 155, 55, 90, 'LBTO', 2, '17X13', 0, '155X55X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(26, '193', 110, 53, 116, 'LBSO', 2, '15X13.2', 0, '110X53X116', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(27, '199', 140, 70, 116, 'LBTO', 3, '17.5X26.5', 0, '140X70X116', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(28, '212', 146, 73, 150, 'LBSO', 2, '19.5X17.8', 0, '146X73X150', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(29, '216', 43, 11, 101, 'BSO', 16, '18.5X20', 0, '43X11X101', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(30, '218', 185, 120, 80, 'LBTO', 2, '18X24.6', 0, '185X120X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(31, '229', 130, 70, 77, 'LBTO', 4, '16.5X26', 0, '130X70X77', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(32, '230', 145, 10, 85, 'BSO', 6, '16.10X20.82', 0, '145X10X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(33, '235', 60, 10, 78, 'BSO', 18, '17.5X24', 0, '60X10X78', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(34, '236', 65, 12, 95, 'BSO', 12, '19X19.2', 0, '65X12X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(35, '238', 138, 100, 70, 'LBTO', 2, '15.31X19.66', 0, '138X100X70', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(36, '241', 58, 58, 160, 'LBTO', 4, '18X19.5', 0, '58X58X160', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(37, '242', 85, 10, 45, 'BSO', 16, '18.5X17.5', 0, '85X10X45', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(38, '244', 130, 100, 104, 'LBSO', 2, '17.2X18.5', 0, '130X100X104', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(39, '245', 97, 12, 101, 'BSO', 10, '18.4X25.5', 0, '97X12X101', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(40, '251', 44, 25, 85, 'BSO', 15, '18X25', 0, '44X25X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(41, '257', 84, 46, 107, 'LBTO', 4, '13.85X21.77', 0, '84X46X107', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(42, '258', 45, 26, 85, 'BSO', 15, '18X25', 0, '45X26X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(43, '259', 128, 78, 75, 'LBSO', 3, '22.8X17.2', 0, '128X78X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(44, '260', 200, 54, 95, 'BSO', 2, '20.5X13.5', 0, '200X54X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(45, '261', 132, 75, 82, 'LBSO', 3, '26X17.4', 0, '132X75X82', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(46, '264', 58, 32, 98, 'BSO', 8, '15X25', 0, '58X32X98', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(47, '268', 78, 66, 74, 'LBTO', 4, '25.2X17.3', 0, '78X66X74', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(48, '269', 44, 32, 85, 'LBTO', 12, '22.55X19.66', 0, '44X32X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(49, '272', 40, 25, 92, 'BSO', 12, '22.3X17  ', 0, '40X25X92', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(50, '273', 60, 18, 80, 'BSO', 9, '14X19.3', 0, '60X18X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(51, '274', 132, 27, 82, 'BSO', 6, '22.20X18.46', 0, '132X27X82', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(52, '275', 80, 35, 100, 'BSO', 8, '25X19', 0, '80X35X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(53, '277', 60, 35, 100, 'BSO', 9, '24X19', 0, '60X35X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(54, '281', 119, 78, 150, 'LBSO', 2, '20X16.3', 0, '119X78X150', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(55, '282', 27.5, 27.5, 72, 'BSO', 16, '18.5X18.7', 0, '27.5X27.5X72', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(56, '284', 65, 40, 120, 'LBTO', 6, '22X17.5', 0, '65X40X120', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(57, '286', 32, 27, 72, 'BSO', 16, '19.17X20.31', 0, '32X27X72', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(58, '288', 115, 77, 138, 'LBSO', 2, '17.5X15.8', 0, '115X77X138', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(59, '289', 139, 114, 78, 'LBSO', 2, '20.5X17', 0, '139X114X78', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(60, '290', 51, 31, 91, 'BSO', 9, '20.7X17.5', 0, '51X31X91', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(61, '291', 199, 55, 100, 'LBTO', 2, '20.5X14', 0, '199X55X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(62, '296', 89, 40, 110, 'BSO', 4, '14.5X21.3', 0, '89X40X110', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(63, '308', 90, 38, 124, 'BSO', 4, '21X16', 0, '90X38X124', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(64, '309', 70, 32, 92, 'BSO', 9, '26X18', 0, '70X32X92', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(65, '310', 65, 65, 284, 'BSO', 6, '18X26', 0, '65X65X284', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(66, '315', 60, 68, 185, 'LBTO', 2, '10.5X21.2', 0, '60X68X185', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(67, '316', 70, 62, 154, 'BSO', 2, '21X11', 0, '70X62X154', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(68, '317', 43, 43, 109, 'LBTO', 6, '22X13.7', 0, '43X43X109', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(69, '318', 185, 75, 1250, 'LBSO', 2, '21X17', 0, '185X75X1250', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(70, '319', 36, 36, 90, 'LBTO', 12, '22.5X18.5', 0, '36X36X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(71, '319', 95, 41, 49, 'BSO', 6, '24.5X13.5', 0, '95X41X49', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(72, '321', 102, 55, 60, 'LBSO', 6, '17.81X26.37', 0, '102X55X60', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(73, '333', 74, 30, 94, 'BSO', 8, '23X17', 0, '74X30X94', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(74, '337', 130, 115, 120, 'LBSO', 1, '19.8X12.8', 0, '130X115X120', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(75, '339', 59, 38, 88, 'BSO', 9, '24X18', 0, '59X38X88', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(76, '349', 50, 30, 90, 'BSO', 12, '26X16.5', 0, '50X30X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(77, '356', 39, 39, 100, 'LBTO', 8, '25X14 ', 0, '39X39X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(78, '357', 58, 58, 142, 'LBTO', 4, '19X17.3', 0, '58X58X142', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(79, '358', 60, 60, 158, 'LBTO', 4, '19X20', 0, '60X60X158', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(80, '359', 34, 34, 65, 'BSO', 12, '17.2X19.2', 0, '34X34X65', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(81, '360', 50, 25, 125, 'BSO', 9, '19X20', 0, '50X25X125', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(82, '361', 130, 104, 105, 'LBSO', 2, '19x20', 0, '130X104X105', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(83, '362', 57, 32, 88, 'LBTO', 9, '22X16.5', 0, '57X32X88', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(84, '363', 102, 46, 100, 'LBTO', 4, '12X23', 0, '102X46X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(85, '364', 94, 45, 115, 'LBTO', 3, '11.5X22.5', 0, '94X45X115', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(86, '365', 120, 58, 150, 'LBTO', 2, '14.5X18', 0, '120X58X150', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(87, '366', 80, 64, 140, 'BSO', 2, '12X20', 0, '80X64X140', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(88, '367', 72, 10, 122, 'BSO', 6, '18X13.7', 0, '72X10X122', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(89, '368', 114, 75, 125, 'LBTO', 2, '15.3X17.5', 0, '114X75X125', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(90, '369', 44, 44, 144, 'LBTO', 6, '13.6X22', 0, '44X44X144', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(91, '370', 52, 38, 117, 'BSO', 6, '15X21.5', 0, '52X38X117', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(92, '371', 140, 70, 115, 'LBSO', 3, '26X17', 0, '140X70X115', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(93, '372', 80, 35, 100, 'BSO', 8, '19X25', 0, '80X35X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(94, '373', 70, 30, 96, 'BSO', 8, '16.5X22.5', 0, '70X30X96', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(95, '374', 45, 45, 94, 'LBTO', 8, '15X24', 0, '45X45X94', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(96, '375', 105, 15, 185, 'BSO', 4, '17.5X19.5', 0, '105X15X185', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(97, '376', 185, 122, 75, 'LBSO', 2, '25X17.5', 0, '185X122X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(98, '377', 60, 35, 100, 'BSO', 9, '24X19', 0, '60X35X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(99, '378', 74, 40, 103, 'BSO', 6, '18.7X20', 0, '74X40X103', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(100, '379', 47, 47, 114, 'LBTO', 6, '16X22', 0, '47X47X114', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(101, '380', 40, 12, 80, 'BSO', 15, '21X13.5', 0, '40X12X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(102, '381', 140, 82, 82, 'LBTO', 3, '18X24', 0, '140X82X82', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(103, '382', 85, 45, 105, 'BSO', 4, '15.5X21.6', 0, '85X45X105', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(104, '383', 52, 26, 89, 'BSO', 12, '26X16.3', 0, '52X26X89', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(105, '384', 90, 15, 90, 'BSO', 8, '17.5X19 ', 0, '90X15X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(106, '385', 47, 47, 114, 'LBTO', 6, '23.5X13.7', 0, '47X47X114', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(107, '386', 40, 40, 100, 'LBTO', 8, '13.8X25', 0, '40X40X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(108, '387', 43, 43, 108, 'LBTO', 8, '14.5X25', 0, '43X43X108', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(109, '388', 165, 53, 149, 'LBTO', 2, '18X18 ', 0, '165X53X149', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(110, '389', 41, 35, 90, 'BSO', 8, '12X21.3', 0, '41X35X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(111, '390', 49, 29, 67, 'BSO', 16, '26X18.7', 0, '49X29X67', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(112, '391', 50, 25, 60, 'BSO', 15, '19X20', 0, '50X25X60', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(113, '392', 50, 52, 85, 'BSO', 12, '25X15.5', 0, '50X52X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(114, '393', 60, 35, 65, 'BSO', 10, '23.5X16', 0, '60X35X65', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(115, '394', 60, 35, 85, 'LBTO', 9, '16.7X23.5', 0, '60X35X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(116, '395', 50, 25, 80, 'BSO', 12, '25X15 ', 0, '50X25X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(117, '395', 77, 24, 245, 'BSO', 4, '16.5X25', 0, '77X24X245', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(118, '396', 112, 46, 114, 'BSO', 4, '26X15.7', 0, '112X46X114', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(119, '397', 124, 70, 73, 'LBTO', 4, '16.2X25.5', 0, '124X70X73', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(120, '398', 58, 58, 158, 'LBTO', 4, '20X18.5', 0, '58X58X158', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(121, '399', 46, 16, 97, 'BSO', 15, '16X25.5', 0, '46X16X97', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(122, '400', 46, 12, 98, 'BSO', 15, '14.5X24.5', 0, '46X12X98', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(123, '401', 64, 64, 155, 'LBTO', 4, '21X19', 0, '64X64X155', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(124, '402', 49, 49, 124, 'LBTO', 6, '25X15', 0, '49X49X124', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(125, '403', 172, 86, 102, 'LBTO', 2, '21.5X17.5', 0, '172X86X102', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(126, '404', 57, 57, 140, 'LBTO', 4, '19X16.7', 0, '57X57X140', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(127, '405', 55, 25, 115, 'BSO', 9, '20X19', 0, '55X25X115', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(128, '406', 44, 12, 102, 'BSO', 15, '14.5X25', 0, '44X12X102', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(129, '407', 133, 95, 105, 'LBSO', 2, '18X19', 0, '133X95X105', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(130, '408', 215, 108, 124, 'LBSO', 2, '19X25', 0, '215X108X124', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(131, '409', 55, 25, 115, 'BSO', 9, '20X19', 0, '55X25X115', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(132, '410', 46, 20, 120, 'BSO', 12, '16.5X25', 0, '46X20X120', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(133, '411', 36, 36, 70, 'BSO', 12, '24X15.7', 0, '36X36X70', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(134, '412', 45, 10, 75, 'BSO', 20, '15.5X23.5', 0, '45X10X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(135, '413', 55, 10, 70, 'BSO', 20, '18.5X22', 0, '55X10X70', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(136, '414', 115, 95, 80, 'LBSO', 3, '25X17', 0, '115X95X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(137, '415', 118, 118, 75, 'LBSO', 2, '17X19', 0, '118X118X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(138, '416', 70, 40, 100, 'BSO', 6, '20.5X18 ', 0, '70X40X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(139, '419', 53, 14, 81, 'BSO', 15, '22.5X17.4', 0, '53X14X81', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(140, '421', 172, 95, 78, 'LBSO', 2, '15.5X22', 0, '172X95X78', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(141, '425', 110, 47, 110, 'LBTO', 4, '24X14 ', 0, '110X47X110', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(142, '427', 185, 75, 120, 'LBSO', 2, '21X17.3', 0, '185X75X120', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(143, '431', 46, 26, 60, 'BSO', 18, '18X24.5', 0, '46X26X60', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(144, '432', 160, 83, 85, 'LBSO', 2, '15X19.8', 0, '160X83X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(145, '434', 80, 45, 100, 'BSO', 4, '15X20.5', 0, '80X45X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(146, '435', 75, 12, 130, 'BSO', 9, '19X21.5', 0, '75X12X130', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(147, '437', 135, 132, 79, 'LBSO', 2, '18.6X21.5', 0, '135X132X79', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(148, '438', 55, 33, 74, 'LBTO', 10, '14.5X24.5', 0, '55X33X74', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(149, '439', 130, 74, 74, 'LBSO', 4, '26X17', 0, '130X74X74', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(150, '440', 114, 56, 82, 'LBSO', 4, '24.6X13.6', 0, '114X56X82', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(151, '441', 37, 10, 52, 'BSO', 30, '15X24', 0, '37X10X52', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(152, '442', 50, 14, 110, 'BSO', 12, '16.3X22.2', 0, '50X14X110', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(153, '443', 148, 55, 115, 'LBTO', 3, '24X16.5', 0, '148X55X115', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(154, '444', 55, 55, 114, 'LBTO', 4, '17.2X18.7', 0, '55X55X114', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(155, '445', 130, 78, 135, 'LBSO', 2, '18.5X17', 0, '130X78X135', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(156, '446', 71, 60, 42, 'LBSO', 6, '16X21.5', 0, '71X60X42', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(157, '447', 38, 60, 55, 'LBTO', 12, '18X25', 0, '38X60X55', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(158, '448', 125, 65, 68, 'LBSO', 4, '15.5X24', 0, '125X65X68', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(159, '450', 55, 35, 85, 'BSO', 8, '15X22.5', 0, '55X35X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(160, '451', 60, 15, 70, 'BSO', 15, '18.5X19.8', 0, '60X15X70', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(161, '452', 165, 73, 63, 'LBTO', 2, '13X20', 0, '165X73X63', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(162, '453', 55, 45, 85, 'BSO', 9, '25X19', 0, '55X45X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(163, '454', 36, 36, 60, 'BSO', 15, '24X18', 0, '36X36X60', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(164, '456', 37, 37, 80, 'BSO', 12, '25X17 ', 0, '37X37X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(165, '457', 70, 40, 70, 'BSO', 10, '26X18', 0, '70X40X70', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(166, '458', 57, 32.5, 65, 'BSO', 12, '18.5X22.6', 0, '57X32.5X65', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(167, '459', 40, 28, 60, 'BSO', 12, '11.5X25', 0, '40X28X60', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(168, '460', 42, 42, 185, 'BSO', 4, '14X21.3', 0, '42X42X185', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(169, '460', 37, 37, 90, 'LBTO', 9, '17.5X18.5', 0, '37X37X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(170, '461', 45, 45, 135, 'LBTO', 6, '23X15.7', 0, '45X45X135', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(171, '462', 25, 22, 118, 'BSO', 12, '13X25', 0, '25X22X118', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(172, '463', 50, 20, 134, 'BSO', 8, '14.5X25', 0, '50X20X134', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(173, '464', 55, 25, 80, 'BSO', 10, '13.5X24.5', 0, '55X25X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(174, '466', 48, 20, 105, 'BSO', 12, '17.2X22.5', 0, '48X20X105', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(175, '467', 135, 80, 58, 'LBSO', 3, '17.5X20.5', 0, '135X80X58', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(176, '469', 72, 37, 112, 'BSO', 4, '14.8X17.8', 0, '72X37X112', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(177, '470', 58, 58, 160, 'LBTO', 4, '19.5X18.5', 0, '58X58X160', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(178, '471', 67, 27, 110, 'BSO', 8, '15.7X25', 0, '67X27X110', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(179, '472', 61, 61, 156, 'LBTO', 4, '20.5X18', 0, '61X61X156', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(180, '473', 52, 30, 69, 'BSO', 10, '23X13.5', 0, '52X30X69', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(181, '474', 135, 75, 135, 'LBTO', 2, '18.5X17', 0, '135X75X135', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(182, '475', 35, 23, 130, 'BSO', 6, '23.5X15.7', 0, '35X23X130', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(183, '476', 60, 35, 85, 'LBTO', 8, '21.5X15.7', 0, '60X35X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(184, '477', 68, 32, 82, 'BSO', 9, '24X16.5', 0, '68X32X82', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(185, '478', 88, 10, 145, 'BSO', 6, '13.6X24.7', 0, '88X10X145', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(186, '478', 90, 10, 145, 'BSO', 6, '25X13.7', 0, '90X10X145', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(187, '479', 150, 110, 95, 'LBTO', 2, '21X18', 0, '150X110X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(188, '480', 52, 30, 68, 'LBTO', 9, '14.5X20.6', 0, '52X30X68', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(189, '481', 65, 30, 115, 'BSO', 8, '26X15.6', 0, '65X30X115', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(190, '483', 50, 29, 80, 'BSO', 10, '25X13.5', 0, '50X29X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(191, '484', 70, 70, 50, 'LBTO', 6, '23X18', 0, '70X70X50', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(192, '485', 122, 75, 72, 'LBSO', 4, '16X26', 0, '122X75X72', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(193, '486', 60, 55, 120, 'LBTO', 6, '19X24', 0, '60X55X120', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(194, '486', 185, 63, 110, 'LBSO', 2, '15.5X20', 0, '185X63X110', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(195, '487', 70, 40, 188, 'LBTO', 4, '18.5X19.3', 0, '70X40X188', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(196, '488', 36, 36, 130, 'BSO', 6, '12.5X23', 0, '36X36X130', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(197, '490', 75, 40, 95, 'LBTO', 8, '19X25', 0, '75X40X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(198, '491', 44, 26, 85, 'BSO', 15, '25.5X17.5', 0, '44X26X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(199, '492', 55, 15, 75, 'BSO', 18, '24.5X18', 0, '55X15X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(200, '493', 165, 118, 83, 'LBSO', 2, '23X17.5', 0, '165X118X83', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(201, '494', 77, 16, 112, 'BSO', 9, '23X17.5', 0, '77X16X112', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(202, '495', 88, 160, 115, 'LBSO', 2, '18X20', 0, '88X160X115', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(203, '496', 72, 17, 114, 'BSO', 9, '18X22', 0, '72X17X114', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(204, '498', 200, 84, 90, 'LBSO', 2, '20X12.8', 0, '200X84X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(205, '498', 57, 57, 190, 'LBTO', 4, '19X21', 0, '57X57X190', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(206, '498', 200, 48, 94, 'LBSO', 2, '20X13.5', 0, '200X48X94', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(207, '499', 40, 40, 95, 'LBTO', 9, '19X20', 0, '40X40X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(208, '500', 76, 56, 66, 'LBTO', 6, '22X18', 0, '76X56X66', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(209, '500', 89, 10, 70, 'BSO', 12, '18X20', 0, '89X10X70', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(210, '501', 57, 10, 80, 'BSO', 12, '12.5X22.5', 0, '57X10X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(211, '502', 45, 30, 63, 'BSO', 12, '13.7X25', 0, '45X30X63', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(212, '503', 67, 32, 70, 'BSO', 9, '25X15', 0, '67X32X70', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(213, '504', 215, 80, 125, 'LBSO', 2, '18X24', 0, '215X80X125', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(214, '505', 76, 20, 122, 'BSO', 8, '25.5X16', 0, '76X20X122', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(215, '507', 45, 27, 85, 'BSO', 12, '24X16', 0, '45X27X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(216, '508', 75, 40, 97, 'BSO', 8, '19X25', 0, '75X40X97', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(217, '509', 70, 55, 68, 'LBSO', 6, '18X20.5', 0, '70X55X68', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(218, '511', 68, 10, 125, 'BSO', 9, '19X20', 0, '68X10X125', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(219, '512', 115, 73, 130, 'LBSO', 2, '15.3X18', 0, '115X73X130', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(220, '513', 65, 35, 90, 'BSO', 6, '24.6X12.7', 0, '65X35X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(221, '514', 75, 22, 250, 'BSO', 3, '12.7X24.5', 0, '75X22X250', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(222, '516', 285, 65, NULL, 'BSO', 4, '23.5X12.5', 0, '285X65X', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(223, '518', 55, 55, 132, 'LBTO', 6, '23X15.5', 0, '55X55X132', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(224, '519', 35, 35, 85, 'LBTO', 12, '17.5X21.3', 0, '35X35X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(225, '520', 130, 115, 73, 'LBTO', 2, '17X20', 0, '130X115X73', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(226, '521', 155, 54, 132, 'LBTO', 3, '23X17', 0, '155X54X132', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(227, '522', 50, 14, 128, 'BSO', 12, '16X25  ', 0, '50X14X128', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(228, '523', 158, 66, 56, 'LBTO', 3, '18X18.5', 0, '158X66X56', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(229, '523', 154, 80, 123, 'LBTO', 2, '17.8X19', 0, '154X80X123', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(230, '525', 45, 30, 63, 'BSO', 16, '18X25', 0, '45X30X63', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(231, '525', 45, 30, 63, 'BSO', 16, '25X18', 0, '45X30X63', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(232, '526', 82, 40, 95, 'BSO', 6, '19X20', 0, '82X40X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(233, '527', 150, 110, 115, 'LBTO', 2, '19X21', 0, '150X110X115', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(234, '528', 55, 15, 105, 'BSO', 12, '18X22', 0, '55X15X105', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(235, '529', 165, 58, 109, 'LBTO', 3, '18X24', 0, '165X58X109', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(236, '530', 120, 50, 112, 'LBTO', 3, '22.5X14.5', 0, '120X50X112', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(237, '531', 94, 50, 112, 'LBTO', 4, '14X23.5', 0, '94X50X112', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(238, '532', 163, 75, 135, 'LBSO', 2, '18.5X19.3', 0, '163X75X135', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(239, '533', 79, 39, 95, 'BSO', 6, '19.6X19', 0, '79X39X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(240, '534', 123, 80, 80, 'LBTO', 3, '23X16.5', 0, '123X80X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(241, '535', 70, 56, 76, 'LBSO', 6, '19X21', 0, '70X56X76', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(242, '536', 55, 30, 75, 'BSO', 10, '14X24.5', 0, '55X30X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(243, '537', 53, 28, 90, 'LBTO', 9, '20X16.5', 0, '53X28X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(244, '538', 180, 42, 85, 'LBTO', 4, '18X23.5', 0, '180X42X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(245, '539', 192, 80, 130, 'LBTO', 2, '22X17.8', 0, '192X80X130', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(246, '540', 125, 52, 114, 'LBTO', 3, '23X14.6', 0, '125X52X114', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(247, '541', 170, 78, 140, 'LBTO', 2, '19X20', 0, '170X78X140', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(248, '542', 39, 39, 99, 'LBTO', 9, '19X20', 0, '39X39X99', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(249, '543', 46.5, 46.5, 113, 'LBTO', 6, '14X23.3', 0, '46.5X46.5X113', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(250, '543', 46.5, 46.5, 113, 'LBTO', 6, '23.3X13.7', 0, '46.5X46.5X113', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(251, '543', 46.5, 46.5, 113, 'LBTO', 6, '23.4X12.6', 0, '46.5X46.5X113', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(252, '544', 70, 35, 96, 'BSO', 8, '17.5X24.5', 0, '70X35X96', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(253, '545', 48, 27, 70, 'BSO', 12, '19X19', 0, '48X27X70', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(254, '546', 43, 43, 55, 'LBTO', 12, '21.5X18', 0, '43X43X55', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(255, '547', 69, 32, 91, 'BSO', 6, '25X12.7', 0, '69X32X91', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(256, '548', 155, 123, 80, 'LBTO', 2, '17.5X22.3', 0, '155X123X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(257, '549', 50, 20, 110, 'BSO', 9, '18X18.5', 0, '50X20X110', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(258, '550', 145, 90, 95, 'LBTO', 2, '17X19', 0, '145X90X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(259, '551', 145, 60, 45, 'LBTO', 4, '16.5X20 ', 0, '145X60X45', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(260, '552', 54, 30, 77, 'BSO', 10, '25X14.4', 0, '54X30X77', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(261, '553', 58, 58, 199, 'LBTO', 4, '19X21.8', 0, '58X58X199', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(262, '554', 81, 12, 130, 'BSO', 8, '15.5X25 ', 0, '81X12X130', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(263, '554', 81, 12, 130, 'LBSO', 2, '25X15.5', 0, '81X12X130', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(264, '555', 135, 135, 86, 'LBTO', 2, '19X22', 0, '135X135X86', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(265, '556', 150, 90, 94, 'LBTO', 2, '20X17', 0, '150X90X94', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(266, '558', 85, 42, 115, 'BSO', 4, '13X21', 0, '85X42X115', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(267, '559', 140, 150, 104, 'LBTO', 1, '23.5X14.5', 0, '140X150X104', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(268, '561', 25, 27, 100, 'BSO', 8, '12.7X18', 0, '25X27X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(269, '562', 60, 35, 86, 'LBTO', 9, '24X17.5', 0, '60X35X86', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(270, '563', 75, 78, 127, 'BSO', 2, '12.6X21', 0, '75X78X127', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(271, '564', 185, 85, 122, 'LBSO', 2, '18X22', 0, '185X85X122', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(272, '565', 158, 78, 101, 'LBSO', 3, '19X25', 0, '158X78X101', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(273, '566', 65, 75, 88, 'BSO', 4, '18X23', 0, '65X75X88', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(274, '567', 130, 62, 88, 'LBTO', 3, '22X15.7', 0, '130X62X88', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(275, '568', 80, 73, 137, 'BSO', 2, '21X12.5', 0, '80X73X137', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(276, '569', 93, 12, 150, 'BSO', 6, '13.7X21.5', 0, '93X12X150', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(277, '570', 130, 97, 155, 'LBTO', 2, '18.5X21.5', 0, '130X97X155', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(278, '572', 41, 16, 90, 'BSO', 15, '14.7X24', 0, '41X16X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(279, '573', 150, 54, 93, 'LBTO', 4, '26X17', 0, '150X54X93', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(280, '574', 65, 37, 120, 'LBTO', 6, '21.5X17', 0, '65X37X120', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(281, '575', 136, 70, 77, 'LBTO', 4, '26X17', 0, '136X70X77', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(282, '576', 52, 48, 114, 'LBTO', 6, '17.5X21.5', 0, '52X48X114', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(283, '576', 75, 40, 97, 'BSO', 8, '18.8X25', 0, '75X40X97', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(284, '577', 91, 19, 140, 'BSO', 6, '18X23', 0, '91X19X140', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(285, '578', 85, 22, 125, 'BSO', 6, '20X18', 0, '85X22X125', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(286, '579', 41, 41, 104, 'BSO', 6, '20.5X13.1', 0, '41X41X104', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(287, '580', 133, 40, 76, 'LBTO', 4, '13.7X20.7', 0, '133X40X76', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(288, '581', 174, 68, 68, 'LBTO', 2, '12.7X19.5', 0, '174X68X68', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(289, '582', 52, 30, 68, 'BSO', 12, '20.5X18.5', 0, '52X30X68', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(290, '582', 52, 30, 68, 'BSO', 12, '20.5X19', 0, '52X30X68', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(291, '583', 92, 14, 158, 'BSO', 6, '17.5X23', 0, '92X14X158', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(292, '584', 150, 96, 162, 'LBTO', 1, '19.5X13.3', 0, '150X96X162', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(293, '586', 49, 27, 65, 'BSO', 18, '26X19', 0, '49X27X65', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(294, '587', 49, 27, 75, 'BSO', 12, '19X20', 0, '49X27X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(295, '588', 67, 30, 99, 'BSO', 9, '18X25', 0, '67X30X99', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(296, '590', 50, 30, 100, 'BSO', 9, '19X20', 0, '50X30X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(297, '591', 80, 12, 145, 'BSO', 6, '15.2X20.7', 0, '80X12X145', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(298, '592', 150, 130, 85, 'LBTO', 2, '18.5X22.5', 0, '150X130X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(299, '592', 39, 39, 99, 'LBTO', 9, '19X19.5', 0, '39X39X99', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(300, '593', 130, 65, 120, 'LBTO', 3, '15.8X25.5', 0, '130X65X120', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(301, '594', 149, 74, 74, 'LBTO', 3, '18X22', 0, '149X74X74', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(302, '595', 69, 14, 69, 'BSO', 12, '15.7X20.8', 0, '69X14X69', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(303, '597', 50, 58, 118, 'BSO', 6, '18X25', 0, '50X58X118', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(304, '598', 130, 80, 112, 'LBTO', 3, '22.5X15.5', 0, '130X80X112', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(305, '600', 125, 30, 68, 'BSO', 6, '15X25', 0, '125X30X68', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(306, '601', 61, 61, 180, 'LBTO', 4, '20X16.5', 0, '61X61X180', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(307, '602', 140, 160, 186, 'LBTO', 1, '24.5X18.5', 0, '140X160X186', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(308, '602', 70, 65, 219, 'BSO', 2, '22.1X14.7', 0, '70X65X219', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(309, '603', 170, 78, 140, 'LBTO', 2, '20X19', 0, '170X78X140', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(310, '604', 55, 35, 75, 'BSO', 8, '21X14.8', 0, '55X35X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(311, '608', 150, 62, 93, 'LBTO', 3, '22X17.3', 0, '150X62X93', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(312, '610', 35, 12, 60, 'BSO', 15, '17.3X12', 0, '35X12X60', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(313, '611', 60, 18, 104, 'BSO', 12, '26X17', 0, '60X18X104', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(314, '612', 74, 22, 127, 'BSO', 6, '15.5X20.5', 0, '74X22X127', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(315, '613', 64, 54, 194, 'BSO', 2, '12.5X19.5', 0, '64X54X194', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(316, '614', 91, 49, 151, 'BSO', 4, '26X16.3', 0, '91X49X151', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(317, '618', 145, 20, 90, 'BSO', 6, '18X22', 0, '145X20X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(318, '620', 52, 30, 85, 'BSO', 10, '26X13.8', 0, '52X30X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(319, '621', 54, 37, 114, 'BSO', 6, '15X21', 0, '54X37X114', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(320, '621', 54, 37, 115, 'BSO', 6, '15X20.8', 0, '54X37X115', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(321, '622', 55, 30, 75, 'LBTO', 10, '14X24', 0, '55X30X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(322, '623', 62, 50, 155, 'BSO', 4, '19.8X18.3', 0, '62X50X155', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(323, '624', 92, 10, 156, 'BSO', 6, '14.5X25.3', 0, '92X10X156', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(324, '625', 158, 116, 95, 'LBTO', 2, '18X22', 0, '158X116X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(325, '626', 78, 12, 130, 'BSO', 8, '25X16', 0, '78X12X130', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(326, '627', 130, 82, 135, 'LBTO', 2, '18X19', 0, '130X82X135', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(327, '629', 70, 50, 112, 'LBTO', 4, '14X19.5', 0, '70X50X112', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(328, '630', 55, 19, 127, 'BSO', 9, '18.5X20', 0, '55X19X127', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(329, '631', 86, 20, 140, 'BSO', 6, '17.5X21.5', 0, '86X20X140', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(330, '632', 145, 110, 90, 'LBTO', 2, '21X18', 0, '145X110X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(331, '633', 56, 15, 128, 'BSO', 12, '25X17.5', 0, '56X15X128', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(332, '635', 50, 50, 120, 'LBTO', 6, '14.5X25', 0, '50X50X120', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(333, '637', 56, 37, 80, 'PLAIN CTN', 6, '19X20', 0, '56X37X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(334, '638', 40, 35, 75, 'LBTO', 12, '19.5X18.7', 0, '40X35X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(335, '639', 56, 55, 128, 'BSO', 6, '26X18.2', 0, '56X55X128', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(336, '640', 78, 65, 137, 'BSO', 2, '11.7X20', 0, '78X65X137', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(337, '641', 48, 17, 113, 'BSO', 6, '12.5X18', 0, '48X17X113', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(338, '642', 88, 28, 144, 'BSO', 6, '23X19', 0, '88X28X144', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(339, '643', 57, 12, 106, 'BSO', 12, '16X23', 0, '57X12X106', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(340, '644', 130, 62, 110, 'LBTO', 3, '25X15.7', 0, '130X62X110', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(341, '645', 185, 115, 90, 'LBTO', 2, '18X24.2', 0, '185X115X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(342, '646', 184, 37, 90, 'LBTO', 4, '22.5X17.8', 0, '184X37X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(343, '647', 167, 122, 58, 'LBTO', 2, '23.3X16', 0, '167X122X58', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(344, '648', 92, 14, 157, 'BSO', 6, '23X17.5', 0, '92X14X157', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(345, '648', 92, 14, 157, 'BSO', 6, '18X22.5', 0, '92X14X157', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(346, '649', 150, 96, 162, 'LBTO', 1, '13X20', 0, '150X96X162', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(347, '650', 82, 14, 83, 'BSO', 9, '23.5X13.7', 0, '82X14X83', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(348, '651', 73, 69, 255, 'BSO', 2, '23X17', 0, '73X69X255', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(349, '652', 70, 67, 155, 'BSO', 2, '22.5X11.5', 0, '70X67X155', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(350, '655', 49, 12, 95, 'BSO', 15, '24X15.5', 0, '49X12X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(351, '657', 35, 100, 105, 'LBTO', 2, '18X19 ', 0, '35X100X105', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(352, '659', 62, 35, 70, 'BSO', 10, '16X25  ', 0, '62X35X70', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(353, '660', 60, 40, 85, 'BSO', 9, '18X25', 0, '60X40X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(354, '663', 85, 17, 85, 'BSO', 9, '14.5X24.5', 0, '85X17X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(355, '664', 50, 20, 85, 'BSO', 12, '15X25', 0, '50X20X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(356, '665', 35, 35, 96, 'LBTO', 12, '17.5X23', 0, '35X35X96', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(357, '666', 55, 12, 90, 'BSO', 10, '11.5X23', 0, '55X12X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(358, '667', 130, 60, 95, 'LBTO', 2, '13.75X15.75', 0, '130X60X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(359, '670', 50, 20, 100, 'BSO', 12, '22X17.5', 0, '50X20X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(360, '671', 60, 20, 100, 'BSO', 8, '13.7X21.8', 0, '60X20X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(361, '673', 56, 56, 140, 'LBTO', 6, '18.5X26', 0, '56X56X140', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(362, '673', 85, 30, 77, 'BSO', 8, '18.6X20', 0, '85X30X77', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(363, '674', 29, 29, 40, 'BSO', 15, '18X23', 0, '29X29X40', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(364, '675', 58, 38, 86, 'BSO', 9, '24X18', 0, '58X38X86', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(365, '676', 48, 42, 145, 'LBTO', 6, '25X15', 0, '48X42X145', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(366, '678', 67, 30, 100, 'LBTO', 9, '24X18', 0, '67X30X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(367, '679', 44, 30, 63, 'BSO', 18, '26X18.6', 0, '44X30X63', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(368, '680', 39, 39, 95, 'LBTO', 9, '19X20', 0, '39X39X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(369, '681', 40, 12, 59, 'BSO', 20, '22X13.5', 0, '40X12X59', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(370, '682', 80, 32, 94, 'BSO', 8, '23X18.5', 0, '80X32X94', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(371, '683', 75, 47, 107, 'BSO', 4, '20X15.5', 0, '75X47X107', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(372, '684', 75, 18, 126, 'BSO', 6, '15.5X20', 0, '75X18X126', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(373, '685', 90, 10, 144, 'BSO', 6, '14X25', 0, '90X10X144', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(374, '687', 58, 12, 75, 'BSO', 18, '17.6X24', 0, '58X12X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(375, '688', 52, 48, 113, 'LBTO', 4, '14.5X16.5', 0, '52X48X113', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(376, '689', 46.5, 46.5, 113, 'LBTO', 6, '23.3X13.7', 0, '46.5X46.5X113', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(377, '690', 60, 35, 100, 'BSO', 8, '24.5X15.5', 0, '60X35X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(378, '691', 64, 38, 89, 'BSO', 9, '25.5X18', 0, '64X38X89', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(379, '692', 82, 74, 75, 'LBTO', 4, '26X12.8', 0, '82X74X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(380, '693', 59, 54, 140, 'LBTO', 4, '17X18.5', 0, '59X54X140', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(381, '694', 54, 15, 65, 'BSO', 20, '23X19', 0, '54X15X65', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(382, '695', 80, 15, 100, 'BSO', 8, '16X21. ', 0, '80X15X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(383, '696', 85, 15, 90, 'BSO', 9, '25X14.5', 0, '85X15X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(384, '697', 45, 50, 108, 'BSO', 4, '16X15.8', 0, '45X50X108', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(385, '698', 70, 42, 98, 'BSO', 8, '26X18.5', 0, '70X42X98', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(386, '699', 56, 15, 120, 'BSO', 12, '18X23.5', 0, '56X15X120', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(387, '699', 55, 35, 84, 'BSO', 9, '22X17', 0, '55X35X84', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(388, '700', 165, 59, 124, 'LBTO', 2, '16X18', 0, '165X59X124', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(389, '701', 28, 22, 114, 'BSO', 9, '12.8X18.5', 0, '28X22X114', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(390, '703', 77, 12, 129, 'BSO', 9, '22X19', 0, '77X12X129', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(391, '704', 65, 15, 90, 'BSO', 6, '13.5X15', 0, '65X15X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(392, '705', 160, 68, 93, 'LBTO', 2, '19X14', 0, '160X68X93', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(393, '706', 91, 45, 152, 'BSO', 4, '18.5X22', 0, '91X45X152', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(394, '707', 65, 15, 99, 'BSO', 9, '20X15.5', 0, '65X15X99', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(395, '708', 75, 15, 119, 'BSO', 9, '18X22.5', 0, '75X15X119', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(396, '709', 165, 78, 123, 'LBTO', 2, '17.5X19.5', 0, '165X78X123', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(397, '710', 165, 68, 103, 'LBTO', 3, '18.8X24', 0, '165X68X103', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(398, '711', 65, 15, 85, 'BSO', 12, '18.5X20', 0, '65X15X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(399, '712', 55, 15, 105, 'BSO', 8, '21.5X12', 0, '55X15X105', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(400, '713', 55, 15, 70, 'BSO', 9, '12.5X18', 0, '55X15X70', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(401, '714', 82, 86, 82, 'LBTO', 3, '24X14.5', 0, '82X86X82', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(402, '715', 51, 30, 68, 'BSO', 12, '20X19', 0, '51X30X68', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(403, '716', 63, 41, 85, 'LBTO', 6, '11.5X26', 0, '63X41X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(404, '717', 65, 25, 100, 'BSO', 9, '22X17.5', 0, '65X25X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(405, '719', 84, 80, 76, 'LBTO', 3, '14X22', 0, '84X80X76', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(406, '720', 40, 40, 75, 'BSO', 8, '13.5X22', 0, '40X40X75', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(407, '721', 80, 15, 125, 'BSO', 9, '23.5X19', 0, '80X15X125', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(408, '722', 89, 15, 100, 'BSO', 10, '17X26', 0, '89X15X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(409, '723', 125, 83, 128, 'LBTO', 2, '20X18.2', 0, '125X83X128', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(410, '724', 165, 94, 104, 'LBTO', 2, '18X21', 0, '165X94X104', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(411, '725', 39, 32, 66, 'BSO', 8, '12X19', 0, '39X32X66', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(412, '726', 75, 42, 106, 'BSO', 4, '19X15', 0, '75X42X106', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(413, '727', 75, 61, 85, 'LBTO', 4, '26X11.5', 0, '75X61X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(414, '728', 56, 50, 115, 'BSO', 6, '17.5X23.3', 0, '56X50X115', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(415, '729', 30, 30, 150, 'BSO', 10, '17X25', 0, '30X30X150', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(416, '730', 69, 15, 160, 'BSO', 6, '21X16', 0, '69X15X160', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(417, '731', 164, 73, 162, 'LBTO', 2, '19X20', 0, '164X73X162', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(418, '732', 50, 30, 69, 'BSO', 10, '13.5X23', 0, '50X30X69', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(419, '733', 165, 83, 103, 'LBTO', 2, '16.5X20', 0, '165X83X103', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(420, '734', 134, 115, 84, 'LBTO', 2, '17.5X20', 0, '134X115X84', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(421, '735', 80, 21, 128, 'BSO', 8, '16.5X26', 0, '80X21X128', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(422, '737', 54, 15, 80, 'BSO', 8, '12X18', 0, '54X15X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(423, '738', 165, 58, 83, 'LBTO', 2, '12.5X18', 0, '165X58X83', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(424, '739', 165, 134, 77, 'LBTO', 2, '18X28', 0, '165X134X77', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(425, '740', 114, 50, 90, 'LBTO', 4, '25X13', 0, '114X50X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(426, '741', 54, 54, 129, 'LBTO', 6, '17.5X24.7', 0, '54X54X129', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(427, '742', 165, 58, 88, 'LBTO', 2, '13X18', 0, '165X58X88', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(428, '743', 54, 15, 85, 'BSO', 8, '11.5X18', 0, '54X15X85', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(429, '744', 30, 22, 127, 'BSO', 10, '22X14', 0, '30X22X127', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(430, '745', 55, 37, 89, 'BSO', 9, '18X23', 0, '55X37X89', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(431, '746', 73, 15, 133, 'BSO', 6, '14X22', 0, '73X15X133', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(432, '747', 165, 76, 136, 'LBTO', 2, '19X20', 0, '165X76X136', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(433, '748', 70, 68, 55, 'LBTO', 6, '18X23 ', 0, '70X68X55', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(434, '749', 35.5, 35.5, 90, 'BSO', 12, '19X22', 0, '35.5X35.5X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(435, '750', 100, 15, 150, 'BSO', 6, '19X22', 0, '100X15X150', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(436, '752', 60, 25, 105, 'BSO', 9, '18X22', 0, '60X25X105', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL);
INSERT INTO `dye_details` (`id`, `dye_no`, `length`, `width`, `height`, `dye_lock`, `ups`, `sheet_size`, `automatic`, `carton_size`, `created_at`, `updated_at`, `deleted_at`) VALUES
(437, '753', 95, 20, 145, 'BSO', 6, '22X19', 0, '95X20X145', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(438, '754', 67, 20, 110, 'BSO', 9, '17.7x21.5', 0, '67X20X110', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(439, '755', 32, 30, 158, 'BSO', 4, '11X17.5', 0, '32X30X158', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(440, '756', 165, 88, 93, 'LBTO', 2, '20.5X16.5', 0, '165X88X93', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(441, '757', 165, 68, 73, 'LBTO', 2, '20X12.7', 0, '165X68X73', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(442, '758', 65, 15, 70, 'BSO', 9, '20X12.5', 0, '65X15X70', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(443, '759', 40, 40, 90, 'LBTO', 9, '20X18.5', 0, '40X40X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(444, '761', 39, 33, 72, 'BSO', 4, '12X11', 0, '39X33X72', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(445, '762', 165, 68, 88, 'LBTO', 3, '22.5X19', 0, '165X68X88', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(446, '763', 55, 35, 88, 'LBTO', 6, '11X22.3', 0, '55X35X88', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(447, '764', 22, 17, 95, 'BSO', 12, '13.8X15.7', 0, '22X17X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(448, '765', 88, 12, 142, 'BSO', 6, '16.5X20.5', 0, '88X12X142', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(449, '766', 103, 57, 102, 'LBTO', 3, '13X22', 0, '103X57X102', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(450, '767', 55, 15, 95, 'BSO', 10, '25X12.7', 0, '55X15X95', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(451, '768', 55, 15, 70, 'BSO', 9, '12.3X18', 0, '55X15X70', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(452, '769', 165, 57, 70, 'LBTO', 2, '11.5X18', 0, '165X57X70', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(453, '770', 58, 35, 117, 'LBTO', 6, '15.7X20.7', 0, '58X35X117', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(454, '772', 165, 98, 168, 'LBTO', 1, '22X14', 0, '165X98X168', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(455, '772', 165, 83, 153, 'LBTO', 1, '21.7X13.5', 0, '165X83X153', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(456, '773', 27, 27, 45, 'BSO', 9, '11.5X14', 0, '27X27X45', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(457, '774', 104, 43, 104, 'LBTO', 3, '12X21 ', 0, '104X43X104', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(458, '775', 170, 65, 92, 'LBTO', 3, '23X19', 0, '170X65X92', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(459, '776', 49, 41, 144, 'BSO', 6, '25X15', 0, '49X41X144', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(460, '777', 55, 15, 90, 'BSO', 8, '19X11.8', 0, '55X15X90', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(461, '778', 155, 95, 60, 'LBTO', 2, '20.3X13.5', 0, '155X95X60', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(462, '779', 72, 36, 52, 'LBTO', 10, '21X18', 0, '72X36X52', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(463, '164A', 53, 38, 116, 'BSO', 6, '21.5X15.3', 0, '53X38X116', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(464, '181A', 41, 41, 100, 'LBTO', 8, '14X24.5', 0, '41X41X100', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(465, '208A', 72, 17, 115, 'BSO', 8, '14.5X23.5', 0, '72X17X115', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(466, '273A', 60, 18, 80, 'BSO', 16, '18.3X26', 0, '60X18X80', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(467, '478A', 90, 10, 144, 'BSO', 6, '20.5X16.5', 0, '90X10X144', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(468, '5A', 65, 20, 105, 'BSO', 9, '21.2X17.3', 0, '65X20X105', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(469, '6A', 50, 20, 105, 'BSO', 12, '23X17.6', 0, '50X20X105', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `embossings`
--

DROP TABLE IF EXISTS `embossings`;
CREATE TABLE IF NOT EXISTS `embossings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `job_card_id` bigint NOT NULL,
  `embossing_counter` int DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
CREATE TABLE IF NOT EXISTS `issues` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `issue_type` int DEFAULT NULL COMMENT '1=auto\r\n0= manual',
  `issue_no` varchar(255) NOT NULL,
  `issue_at` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issue_items`
--

DROP TABLE IF EXISTS `issue_items`;
CREATE TABLE IF NOT EXISTS `issue_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_card_id` bigint DEFAULT NULL,
  `issue_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `unit` varchar(200) NOT NULL,
  `issue_for` int DEFAULT NULL,
  `oprator_name` varchar(255) DEFAULT NULL,
  `issue_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=manual\r\n0= auto or jobcard created',
  `remarks` text,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_cards`
--

DROP TABLE IF EXISTS `job_cards`;
CREATE TABLE IF NOT EXISTS `job_cards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `planning_by` int NOT NULL,
  `job_card_no` varchar(255) DEFAULT NULL,
  `mix` tinyint(1) DEFAULT '0' COMMENT '1= separate\r\n0= mix',
  `product_id` int DEFAULT NULL,
  `sheet_size` varchar(255) DEFAULT NULL,
  `required_sheet` int DEFAULT NULL,
  `wastage_sheet` int DEFAULT NULL,
  `total_sheet` int DEFAULT NULL,
  `paper_divide` int DEFAULT NULL,
  `dye_details_id` int DEFAULT NULL,
  `dye_details` varchar(255) DEFAULT NULL,
  `dye_machine` varchar(255) DEFAULT NULL COMMENT 'auto or manual',
  `warehouse_type` int DEFAULT NULL,
  `warehouse_paper` text,
  `warehouse_sheet` int DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `set_no` varchar(255) DEFAULT NULL,
  `coating_machine` varchar(255) DEFAULT NULL,
  `other_coating_machine` varchar(255) DEFAULT NULL,
  `coating_window_cutting` varchar(255) DEFAULT NULL,
  `embossing_leafing` varchar(255) DEFAULT NULL,
  `roll_used` varchar(255) DEFAULT NULL,
  `cutting_sheets` int DEFAULT NULL,
  `printed_sheets` int DEFAULT NULL,
  `coated_sheets` int DEFAULT NULL,
  `laminated_sheets` int DEFAULT NULL,
  `spot_uv_sheets` int DEFAULT NULL,
  `dye_counter` int DEFAULT NULL,
  `leafing_counter` int DEFAULT NULL,
  `embossing_counter` int DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '99',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_card_histories`
--

DROP TABLE IF EXISTS `job_card_histories`;
CREATE TABLE IF NOT EXISTS `job_card_histories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_card_id` bigint NOT NULL,
  `machine` varchar(255) NOT NULL,
  `job_card_in` datetime DEFAULT NULL,
  `job_card_out` datetime DEFAULT NULL,
  `counter` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_card_items`
--

DROP TABLE IF EXISTS `job_card_items`;
CREATE TABLE IF NOT EXISTS `job_card_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_card_id` int DEFAULT NULL,
  `planning_id` int DEFAULT NULL,
  `purchase_order_id` int DEFAULT NULL,
  `purchase_order_item_id` int DEFAULT NULL,
  `ups` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `ready_quantity` int DEFAULT NULL,
  `ready_box` varchar(255) DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `warehouse_stock_type` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_card_medias`
--

DROP TABLE IF EXISTS `job_card_medias`;
CREATE TABLE IF NOT EXISTS `job_card_medias` (
  `job_card_id` int NOT NULL,
  `media_id` int NOT NULL,
  KEY `job_card_medias_job_card_id_foreign` (`job_card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_card_papers`
--

DROP TABLE IF EXISTS `job_card_papers`;
CREATE TABLE IF NOT EXISTS `job_card_papers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_card_id` bigint NOT NULL,
  `product_id` int DEFAULT NULL,
  `sheet_size` varchar(255) DEFAULT NULL,
  `required_sheet` int DEFAULT NULL,
  `wastage_sheet` int DEFAULT NULL,
  `total_sheet` int DEFAULT NULL,
  `paper_divide` int DEFAULT NULL,
  `subtotal_sheet` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_card_timers`
--

DROP TABLE IF EXISTS `job_card_timers`;
CREATE TABLE IF NOT EXISTS `job_card_timers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_card_id` bigint NOT NULL,
  `machine` varchar(255) DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `paus_at` timestamp NULL DEFAULT NULL,
  `resume_at` timestamp NULL DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `paused_time` int NOT NULL DEFAULT '0',
  `worked_time` int NOT NULL DEFAULT '0',
  `total_time` int NOT NULL DEFAULT '0',
  `status` int DEFAULT '0' COMMENT '1=working,2=stop,3=pause',
  `remarks` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_card_users`
--

DROP TABLE IF EXISTS `job_card_users`;
CREATE TABLE IF NOT EXISTS `job_card_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_card_id` bigint NOT NULL,
  `module_id` int DEFAULT NULL,
  `module_user_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laminations`
--

DROP TABLE IF EXISTS `laminations`;
CREATE TABLE IF NOT EXISTS `laminations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `job_card_id` bigint NOT NULL,
  `laminated_sheets` int DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leafings`
--

DROP TABLE IF EXISTS `leafings`;
CREATE TABLE IF NOT EXISTS `leafings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `job_card_id` bigint NOT NULL,
  `leafing_counter` int DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
CREATE TABLE IF NOT EXISTS `logins` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `authenticatable_type` varchar(191) NOT NULL,
  `authenticatable_id` bigint UNSIGNED NOT NULL,
  `user_agent` varchar(191) DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `device_type` varchar(191) DEFAULT NULL,
  `device` varchar(191) DEFAULT NULL,
  `platform` varchar(191) DEFAULT NULL,
  `browser` varchar(191) DEFAULT NULL,
  `location` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `session_id` varchar(191) DEFAULT NULL,
  `remember_token` varchar(191) DEFAULT NULL,
  `personal_access_token_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_activity_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `address` text,
  `expires_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logins_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`),
  KEY `logins_personal_access_token_id_foreign` (`personal_access_token_id`)
) ;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `authenticatable_type`, `authenticatable_id`, `user_agent`, `ip_address`, `device_type`, `device`, `platform`, `browser`, `location`, `session_id`, `remember_token`, `personal_access_token_id`, `created_at`, `updated_at`, `last_activity_at`, `latitude`, `longitude`, `address`, `expires_at`, `deleted_at`) VALUES
(1, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', NULL, 'Windows', 'Chrome', 'false', 'LBNFEISZvhAAB6sLPhLRWSgPxX3xVrozzEF875uB', '3CuM01ukY4AER6j8uZtRnaPkmvOTceXzUwa7oiCt7z3q57MIYeGMFxJTyi3u', NULL, '2024-06-09 03:42:54', '2024-06-09 04:09:37', '2024-06-09 04:09:37', NULL, NULL, NULL, '2025-07-14 03:42:54', '2024-06-09 04:09:37'),
(2, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', NULL, 'Windows', 'Chrome', 'false', NULL, 'nWrCoDmJvJ3N8UDx0ANkjEBfcaHD1lVRMOX2OkacoEcJPCAhgQphzXb1gJ3v', NULL, '2024-06-09 04:15:37', '2024-06-09 05:51:43', '2024-06-09 05:47:42', NULL, NULL, NULL, '2025-07-14 04:15:37', NULL),
(3, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '192.168.1.8', 'desktop', NULL, 'Windows', 'Chrome', 'false', '3xd5xfhym654RcWR3S7rJD4h0Mof8xTr6sXIcyzY', 'CymoKXdDeHQrfMwwbVBYZZ2aFRUk0NmQrxtOBz0Nyw4rM9SHqvJZbCatOnwz', NULL, '2024-06-09 04:57:48', '2024-06-09 05:34:08', '2024-06-09 05:34:08', NULL, NULL, NULL, '2025-07-14 04:57:48', NULL),
(4, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', NULL, 'Windows', 'Chrome', 'false', 'IKzkNK7sbe7bQzeaxxDfhrC0vuCGPDs3aMEufJAZ', NULL, NULL, '2024-06-09 05:51:47', '2024-06-09 05:54:50', '2024-06-09 05:54:50', NULL, NULL, NULL, '2025-07-14 05:51:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

DROP TABLE IF EXISTS `machines`;
CREATE TABLE IF NOT EXISTS `machines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `machine_machine_types`
--

DROP TABLE IF EXISTS `machine_machine_types`;
CREATE TABLE IF NOT EXISTS `machine_machine_types` (
  `machine_id` int NOT NULL,
  `machine_type_id` int NOT NULL,
  KEY `machine_machine_types_machine_id_foreign` (`machine_id`),
  KEY `machine_machine_types_machine_type_id_foreign` (`machine_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `machine_types`
--

DROP TABLE IF EXISTS `machine_types`;
CREATE TABLE IF NOT EXISTS `machine_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `material_inwards`
--

DROP TABLE IF EXISTS `material_inwards`;
CREATE TABLE IF NOT EXISTS `material_inwards` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `receipt_no` varchar(255) NOT NULL,
  `vendor_id` int NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `bill_date` date NOT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `total_gst` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `material_order_no` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `material_inward_items`
--

DROP TABLE IF EXISTS `material_inward_items`;
CREATE TABLE IF NOT EXISTS `material_inward_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `material_inward_id` bigint NOT NULL,
  `category_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `weight_per_piece` decimal(10,2) DEFAULT NULL,
  `total_weight` decimal(10,2) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `rate_on` decimal(10,2) DEFAULT NULL,
  `sheet_per_packet` decimal(10,2) DEFAULT '0.00',
  `item_per_packet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_item` decimal(10,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(10,2) DEFAULT NULL,
  `gst` decimal(10,2) DEFAULT NULL,
  `gst_amount` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `material_orders`
--

DROP TABLE IF EXISTS `material_orders`;
CREATE TABLE IF NOT EXISTS `material_orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `order_no` varchar(255) NOT NULL,
  `bill_no` varchar(255) DEFAULT NULL,
  `vendor_id` int NOT NULL,
  `mo_date` date NOT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `total_gst` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `remarks` text,
  `status_id` int NOT NULL DEFAULT '1',
  `completed_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `material_order_items`
--

DROP TABLE IF EXISTS `material_order_items`;
CREATE TABLE IF NOT EXISTS `material_order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `material_order_id` bigint NOT NULL,
  `category_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `weight_per_piece` decimal(10,2) DEFAULT NULL,
  `total_weight` decimal(10,2) DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `rate_on` decimal(10,2) DEFAULT NULL,
  `sheet_per_packet` decimal(10,2) DEFAULT '0.00',
  `item_per_packet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_item` decimal(10,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(10,2) DEFAULT NULL,
  `gst` decimal(10,2) DEFAULT NULL,
  `gst_amount` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `receive_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

DROP TABLE IF EXISTS `medias`;
CREATE TABLE IF NOT EXISTS `medias` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`slug`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`slug`, `name`, `icon`, `parent`, `ordering`, `status`) VALUES
('accounts', 'Accounts', NULL, NULL, 7, 1),
('activity_log', 'Activity Log', NULL, NULL, 1, 1),
('add_details', 'Add Details', 'bx bx-layer-plus', NULL, 3, 1),
('admin', 'Admin', 'mdi mdi-account-lock', 'others', 2, 1),
('billing', 'Billing', NULL, 'accounts', 0, 1),
('bread', 'Bread', 'ft-target', 'setting', 2, 1),
('carton', 'Carton', NULL, NULL, 0, 1),
('category', 'Category', NULL, 'add_details', 3, 1),
('chemical_coating', 'Chemical Coating', NULL, 'production', 2, 1),
('client', 'Client', NULL, 'add_details', 2, 1),
('cutting', 'Cutting', NULL, 'production', 0, 1),
('dashboard', 'Dashboard', 'bx bx-home-circle', NULL, 2, 1),
('designing', 'Designing', NULL, 'pre_press', 2, 1),
('dye_breaking', 'Dye Breaking', NULL, 'production', 8, 1),
('dye_cutting', 'Dye Cutting', NULL, 'production', 7, 1),
('dye_details', 'Dye Details', NULL, 'store', 4, 1),
('embossing', 'Embossing', NULL, 'production', 4, 1),
('issue', 'Issue', NULL, 'store', 3, 1),
('job_card', 'Job Card', NULL, 'pre_press', 3, 1),
('lamination', 'Lamination', NULL, 'production', 3, 1),
('leafing', 'Leafing', NULL, 'production', 5, 1),
('material_inward', 'Material Inward', NULL, 'store', 2, 1),
('material_order', 'Material Order', NULL, 'store', 1, 1),
('media', 'Media', NULL, 'others', 1, 1),
('menu', 'Menu', NULL, 'setting', 1, 1),
('module_user', 'Module User', NULL, 'others', 3, 1),
('others', 'Others', 'mdi mdi-memory', NULL, 8, 1),
('paper_warehouse', 'Paper Warehouse', NULL, 'store', 5, 1),
('pasting', 'Pasting', NULL, 'production', 9, 1),
('planning', 'Planning', NULL, 'pre_press', 1, 1),
('pre_press', 'Pre Press', NULL, NULL, 5, 1),
('printing', 'Printing', NULL, 'production', 1, 1),
('product', 'Product', NULL, 'store', 0, 1),
('production', 'Production', 'mdi mdi-pound', NULL, 6, 1),
('product_type', 'Product Type', NULL, 'add_details', 0, 1),
('purchase_order', 'Purchase Order', NULL, 'pre_press', 0, 1),
('requisition', 'Requisition', NULL, 'add_details', 5, 1),
('role', 'Role', NULL, 'setting', 0, 1),
('setting', 'Setting', 'mdi mdi-tools', NULL, 9, 1),
('site_setting', 'Site Setting', 'bx bx-cog', 'others', 4, 1),
('spot_uv', 'Spot Uv', NULL, 'production', 6, 1),
('store', 'Store', 'mdi mdi-store-plus-outline', NULL, 4, 1),
('transaction', 'Transaction', NULL, 'others', 0, 1),
('unit', 'Unit', NULL, 'add_details', 4, 1),
('vendor', 'Vendor', NULL, 'add_details', 1, 1),
('warehouse', 'Warehouse', NULL, 'production', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_06_02_234745_add_google_2fa_columns', 1),
(3, '2024_06_03_001953_add_two_factor_fields_to_admins_table', 1),
(4, '2024_02_10_000001_create_logins_table', 2),
(5, '2024_02_10_000002_add_foreign_key_constraint_in_logins_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cutting', '2024-02-22 10:23:41', '2024-02-22 10:23:41'),
(2, 'Chemical Coating', '2024-02-22 10:23:41', '2024-02-22 10:23:41'),
(3, 'Lamination', '2024-02-22 10:23:41', '2024-02-22 10:23:41'),
(4, 'Embossing', '2024-02-22 10:23:41', '2024-02-22 10:23:41'),
(5, 'Leafing', '2024-02-22 10:23:41', '2024-02-22 10:23:41'),
(6, 'Spot Uv', '2024-02-22 10:23:41', '2024-02-22 10:23:41'),
(7, 'Dye Cutting', '2024-02-22 10:23:41', '2024-02-22 10:23:41'),
(8, 'Pasting', '2024-02-22 10:23:41', '2024-02-22 10:23:41'),
(9, 'Dye Breaking', '2024-02-22 10:23:41', '2024-02-22 10:23:41'),
(10, 'Printing', '2024-02-22 10:23:41', '2024-02-22 10:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `module_users`
--

DROP TABLE IF EXISTS `module_users`;
CREATE TABLE IF NOT EXISTS `module_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `module_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `other_coating_types`
--

DROP TABLE IF EXISTS `other_coating_types`;
CREATE TABLE IF NOT EXISTS `other_coating_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_coating_types`
--

INSERT INTO `other_coating_types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(4, 'Spot UV', '2023-12-01 08:59:38', '2023-12-01 08:59:38'),
(2, 'Metallic', '2023-12-01 08:59:38', '2023-12-01 08:59:38'),
(3, 'Both', '2023-12-01 08:59:38', '2023-12-01 08:59:38'),
(1, 'None', '2023-12-01 08:59:38', '2023-12-01 08:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `paper_qualities`
--

DROP TABLE IF EXISTS `paper_qualities`;
CREATE TABLE IF NOT EXISTS `paper_qualities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quality` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paper_warehouses`
--

DROP TABLE IF EXISTS `paper_warehouses`;
CREATE TABLE IF NOT EXISTS `paper_warehouses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paper_stock` text,
  `sheets` int DEFAULT NULL,
  `remarks` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pastings`
--

DROP TABLE IF EXISTS `pastings`;
CREATE TABLE IF NOT EXISTS `pastings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `job_card_id` bigint NOT NULL,
  `purchase_order_id` bigint DEFAULT NULL,
  `purchase_order_item_id` bigint DEFAULT NULL,
  `ready_quantity` int DEFAULT '0',
  `dye_breaking_quantity` int NOT NULL DEFAULT '0',
  `ready_box` varchar(255) DEFAULT NULL,
  `quantity_in_box` int DEFAULT NULL,
  `no_of_box` int DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu_slug` varchar(200) DEFAULT NULL,
  `permission_key` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`permission_key`)
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `menu_slug`, `permission_key`) VALUES
(1, 'role', 'browse_role'),
(2, 'role', 'read_role'),
(3, 'role', 'add_role'),
(4, 'role', 'edit_role'),
(5, 'role', 'delete_role'),
(6, 'menu', 'browse_menu'),
(7, 'menu', 'read_menu'),
(8, 'menu', 'add_menu'),
(9, 'menu', 'edit_menu'),
(10, 'menu', 'delete_menu'),
(11, 'setting', 'browse_setting'),
(12, 'dashboard', 'browse_dashboard'),
(13, 'bread', 'browse_bread'),
(14, 'bread', 'read_bread'),
(15, 'bread', 'add_bread'),
(16, 'bread', 'edit_bread'),
(17, 'bread', 'delete_bread'),
(18, 'site_setting', 'browse_site_setting'),
(19, 'site_setting', 'read_site_setting'),
(20, 'site_setting', 'add_site_setting'),
(21, 'site_setting', 'edit_site_setting'),
(22, 'site_setting', 'delete_site_setting'),
(23, 'site_setting', 'logo_site_setting'),
(24, 'admin', 'browse_admin'),
(25, 'admin', 'read_admin'),
(26, 'admin', 'add_admin'),
(27, 'admin', 'edit_admin'),
(28, 'admin', 'delete_admin'),
(29, 'admin', 'change_email'),
(30, 'admin', 'change_password'),
(31, 'admin', 'change_status'),
(77, 'media', 'browse_media'),
(78, 'media', 'read_media'),
(79, 'media', 'add_media'),
(80, 'media', 'edit_media'),
(81, 'media', 'delete_media'),
(82, 'client', 'browse_client'),
(83, 'client', 'read_client'),
(84, 'client', 'add_client'),
(85, 'client', 'edit_client'),
(86, 'dye_details', 'browse_dye_details'),
(87, 'dye_details', 'read_dye_details'),
(88, 'dye_details', 'add_dye_details'),
(89, 'dye_details', 'edit_dye_details'),
(90, 'dye_details', 'delete_dye_details'),
(91, 'paper_inward', 'browse_paper_inward'),
(92, 'paper_inward', 'read_paper_inward'),
(93, 'paper_inward', 'add_paper_inward'),
(94, 'paper_inward', 'edit_paper_inward'),
(95, 'paper_inward', 'delete_paper_inward'),
(96, 'vendor', 'browse_vendor'),
(97, 'vendor', 'read_vendor'),
(98, 'vendor', 'add_vendor'),
(99, 'vendor', 'edit_vendor'),
(101, 'category', 'browse_category'),
(102, 'category', 'read_category'),
(103, 'category', 'add_category'),
(104, 'category', 'edit_category'),
(105, 'category', 'delete_category'),
(106, 'unit', 'browse_unit'),
(107, 'unit', 'read_unit'),
(108, 'unit', 'add_unit'),
(109, 'unit', 'edit_unit'),
(111, 'product', 'browse_product'),
(112, 'product', 'read_product'),
(113, 'product', 'add_product'),
(114, 'product', 'edit_product'),
(115, 'product', 'delete_product'),
(116, 'material_inward', 'browse_material_inward'),
(117, 'material_inward', 'read_material_inward'),
(118, 'material_inward', 'add_material_inward'),
(119, 'material_inward', 'edit_material_inward'),
(121, 'purchase_order', 'browse_purchase_order'),
(122, 'purchase_order', 'read_purchase_order'),
(123, 'purchase_order', 'add_purchase_order'),
(124, 'purchase_order', 'edit_purchase_order'),
(125, 'purchase_order', 'delete_purchase_order'),
(126, 'planning', 'browse_planning'),
(127, 'planning', 'read_planning'),
(128, 'planning', 'add_planning'),
(129, 'planning', 'edit_planning'),
(130, 'planning', 'delete_planning'),
(131, 'designing', 'browse_designing'),
(132, 'designing', 'read_designing'),
(133, 'designing', 'add_designing'),
(134, 'designing', 'edit_designing'),
(135, 'designing', 'delete_designing'),
(136, 'job_card', 'browse_job_card'),
(137, 'job_card', 'read_job_card'),
(138, 'job_card', 'add_job_card'),
(139, 'job_card', 'edit_job_card'),
(140, 'job_card', 'delete_job_card'),
(146, 'purchase_order', 'designer_purchase_order'),
(147, 'purchase_order', 'rate_purchase_order'),
(148, 'purchase_order', 'quantity_purchase_order'),
(154, 'cutting', 'browse_cutting'),
(155, 'cutting', 'read_cutting'),
(156, 'cutting', 'add_cutting'),
(157, 'cutting', 'edit_cutting'),
(158, 'cutting', 'delete_cutting'),
(159, 'job_card', 'change_status_job_card'),
(160, 'transaction', 'browse_transaction'),
(161, 'transaction', 'read_transaction'),
(162, 'transaction', 'add_transaction'),
(163, 'transaction', 'edit_transaction'),
(164, 'transaction', 'delete_transaction'),
(165, 'printing', 'browse_printing'),
(166, 'printing', 'read_printing'),
(167, 'printing', 'add_printing'),
(168, 'printing', 'edit_printing'),
(169, 'printing', 'delete_printing'),
(170, 'die_cutting', 'browse_die_cutting'),
(171, 'die_cutting', 'read_die_cutting'),
(172, 'die_cutting', 'add_die_cutting'),
(173, 'die_cutting', 'edit_die_cutting'),
(174, 'die_cutting', 'delete_die_cutting'),
(180, 'chemical_coating', 'browse_chemical_coating'),
(181, 'chemical_coating', 'read_chemical_coating'),
(182, 'chemical_coating', 'add_chemical_coating'),
(183, 'chemical_coating', 'edit_chemical_coating'),
(184, 'chemical_coating', 'delete_chemical_coating'),
(185, 'embossing', 'browse_embossing'),
(186, 'embossing', 'read_embossing'),
(187, 'embossing', 'add_embossing'),
(188, 'embossing', 'edit_embossing'),
(189, 'embossing', 'delete_embossing'),
(190, 'lamination', 'browse_lamination'),
(191, 'lamination', 'read_lamination'),
(192, 'lamination', 'add_lamination'),
(193, 'lamination', 'edit_lamination'),
(194, 'lamination', 'delete_lamination'),
(195, 'leafing', 'browse_leafing'),
(196, 'leafing', 'read_leafing'),
(197, 'leafing', 'add_leafing'),
(198, 'leafing', 'edit_leafing'),
(199, 'leafing', 'delete_leafing'),
(200, 'pasting', 'browse_pasting'),
(201, 'pasting', 'read_pasting'),
(202, 'pasting', 'add_pasting'),
(203, 'pasting', 'edit_pasting'),
(204, 'pasting', 'delete_pasting'),
(211, 'cutting', 'change_status_cutting'),
(217, 'product', 'ledger_product'),
(218, 'printing', 'change_status_printing'),
(224, 'production', 'browse_production'),
(226, 'spot_uv', 'browse_spot_uv'),
(227, 'spot_uv', 'read_spot_uv'),
(228, 'spot_uv', 'add_spot_uv'),
(229, 'spot_uv', 'edit_spot_uv'),
(230, 'spot_uv', 'delete_spot_uv'),
(231, 'chemical_coating', 'change_status_chemical_coating'),
(237, 'dye_cutting', 'browse_dye_cutting'),
(238, 'dye_cutting', 'read_dye_cutting'),
(239, 'dye_cutting', 'add_dye_cutting'),
(240, 'dye_cutting', 'edit_dye_cutting'),
(241, 'dye_cutting', 'delete_dye_cutting'),
(242, 'dye_cutting', 'change_status_dye_cutting'),
(248, 'leafing', 'change_status_leafing'),
(254, 'embossing', 'change_status_embossing'),
(260, 'spot_uv', 'change_status_spot_uv'),
(266, 'lamination', 'change_status_lamination'),
(267, 'billing', 'browse_billing'),
(268, 'billing', 'read_billing'),
(269, 'billing', 'add_billing'),
(270, 'billing', 'edit_billing'),
(271, 'billing', 'delete_billing'),
(279, 'printing', 'user_printing'),
(286, 'issue', 'browse_issue'),
(287, 'issue', 'read_issue'),
(288, 'issue', 'add_issue'),
(289, 'issue', 'edit_issue'),
(290, 'issue', 'delete_issue'),
(291, 'requisition', 'browse_requisition'),
(292, 'requisition', 'read_requisition'),
(293, 'requisition', 'add_requisition'),
(294, 'requisition', 'edit_requisition'),
(295, 'requisition', 'delete_requisition'),
(303, 'job_card', 'user_job_card'),
(312, 'chemical_coating', 'user_chemical_coating'),
(319, 'dye_cutting', 'user_dye_cutting'),
(326, 'pasting', 'user_pasting'),
(341, 'pasting', 'change_status_pasting'),
(348, 'warehouse', 'browse_warehouse'),
(349, 'warehouse', 'read_warehouse'),
(350, 'warehouse', 'add_warehouse'),
(351, 'warehouse', 'edit_warehouse'),
(352, 'warehouse', 'delete_warehouse'),
(355, 'billing', 'change_status_billing'),
(366, 'paper_warehouse', 'browse_paper_warehouse'),
(367, 'paper_warehouse', 'read_paper_warehouse'),
(368, 'paper_warehouse', 'add_paper_warehouse'),
(369, 'paper_warehouse', 'edit_paper_warehouse'),
(370, 'paper_warehouse', 'delete_paper_warehouse'),
(371, 'module_user', 'browse_module_user'),
(372, 'module_user', 'read_module_user'),
(373, 'module_user', 'add_module_user'),
(374, 'module_user', 'edit_module_user'),
(375, 'module_user', 'delete_module_user'),
(376, 'activity_log', 'browse_activity_log'),
(377, 'activity_log', 'read_activity_log'),
(378, 'activity_log', 'add_activity_log'),
(379, 'activity_log', 'edit_activity_log'),
(380, 'activity_log', 'delete_activity_log'),
(381, 'product_type', 'browse_product_type'),
(382, 'product_type', 'read_product_type'),
(383, 'product_type', 'add_product_type'),
(384, 'product_type', 'edit_product_type'),
(385, 'product_type', 'delete_product_type'),
(386, 'material_order', 'browse_material_order'),
(387, 'material_order', 'read_material_order'),
(389, 'material_order', 'edit_material_order'),
(390, 'material_order', 'delete_material_order'),
(391, 'carton', 'browse_carton'),
(392, 'carton', 'read_carton'),
(393, 'carton', 'add_carton'),
(394, 'carton', 'edit_carton'),
(395, 'carton', 'delete_carton'),
(396, 'dye_breaking', 'browse_dye_breaking'),
(397, 'dye_breaking', 'read_dye_breaking'),
(398, 'dye_breaking', 'add_dye_breaking'),
(399, 'dye_breaking', 'edit_dye_breaking'),
(400, 'dye_breaking', 'delete_dye_breaking'),
(401, 'dye_breaking', 'change_status_dye_breaking'),
(403, 'material_order', 'check_material_order'),
(408, 'material_order', 'add_material_order'),
(409, 'material_order', 'change_status_material_order');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plannings`
--

DROP TABLE IF EXISTS `plannings`;
CREATE TABLE IF NOT EXISTS `plannings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `designer` int NOT NULL,
  `purchase_order_id` int NOT NULL,
  `purchase_order_item_id` int NOT NULL,
  `dye_detail_id` int DEFAULT NULL,
  `old_dye_detail_id` int DEFAULT NULL,
  `old_jobcard_id` int DEFAULT NULL,
  `ups` int DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '2',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `printings`
--

DROP TABLE IF EXISTS `printings`;
CREATE TABLE IF NOT EXISTS `printings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_card_id` bigint NOT NULL,
  `printed_sheet` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_type_id` int DEFAULT NULL,
  `paper_type` int DEFAULT NULL COMMENT '1=white\r\n2=Yellow',
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(1024) DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `packet_weight` decimal(10,4) DEFAULT NULL,
  `item_per_packet` decimal(10,4) DEFAULT NULL,
  `weight_per_piece` decimal(10,4) DEFAULT NULL,
  `length` decimal(10,4) DEFAULT NULL,
  `width` decimal(10,4) DEFAULT NULL,
  `gsm` int DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `in_hand_quantity` int DEFAULT NULL,
  `type` tinyint NOT NULL DEFAULT '0' COMMENT '1=paper 0=other	',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
CREATE TABLE IF NOT EXISTS `product_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `start_series` int DEFAULT NULL,
  `only_paper` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `start_series` (`start_series`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `type`, `start_series`, `only_paper`, `created_at`, `updated_at`) VALUES
(1, 'Endura', NULL, 0, '2024-06-09 10:28:19', '2024-06-09 10:28:19'),
(2, 'Ultima', NULL, 0, '2024-06-09 10:28:28', '2024-06-09 10:28:28'),
(3, 'Platina', NULL, 0, '2024-06-09 10:28:34', '2024-06-09 10:28:34'),
(4, 'Omega Plus', NULL, 0, '2024-06-09 10:28:41', '2024-06-09 10:28:41'),
(5, 'Omega Star', NULL, 0, '2024-06-09 10:28:48', '2024-06-09 10:28:48'),
(6, 'Prima Plus', NULL, 0, '2024-06-09 10:28:54', '2024-06-09 10:28:54'),
(7, 'Prima Fold', NULL, 0, '2024-06-09 10:29:01', '2024-06-09 10:29:01'),
(8, 'Cyber XL', NULL, 0, '2024-06-09 10:29:13', '2024-06-09 10:29:13'),
(9, 'Carte Lumina', NULL, 0, '2024-06-09 10:29:24', '2024-06-09 10:29:24'),
(10, 'Saphire', NULL, 0, '2024-06-09 10:29:41', '2024-06-09 10:29:41'),
(11, 'Opti Fold', NULL, 0, '2024-06-09 10:30:00', '2024-06-09 10:30:00'),
(12, 'Opti White', NULL, 0, '2024-06-09 10:30:06', '2024-06-09 10:30:06'),
(13, 'Grey Back', NULL, 0, '2024-06-09 10:30:13', '2024-06-09 10:30:13'),
(14, 'White Back', NULL, 0, '2024-06-09 10:30:20', '2024-06-09 10:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

DROP TABLE IF EXISTS `purchase_orders`;
CREATE TABLE IF NOT EXISTS `purchase_orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `po_no` varchar(255) NOT NULL,
  `po_date` date DEFAULT NULL,
  `made_by` int NOT NULL,
  `designer` int DEFAULT NULL,
  `po_remarks` text,
  `status_id` int NOT NULL DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

DROP TABLE IF EXISTS `purchase_order_items`;
CREATE TABLE IF NOT EXISTS `purchase_order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `purchase_order_id` bigint NOT NULL,
  `product_id` int DEFAULT NULL,
  `dye_details_id` int DEFAULT NULL,
  `carton_name` varchar(255) DEFAULT NULL,
  `carton_size` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `gst` decimal(10,2) NOT NULL DEFAULT '18.00',
  `coating_type_id` int NOT NULL,
  `other_coating_type_id` int DEFAULT NULL,
  `embossing_leafing` int NOT NULL DEFAULT '0' COMMENT 'none=0\r\nembossing=1\r\nleafing=2\r\nboth=3',
  `paper_type_id` int NOT NULL,
  `art_work` varchar(255) DEFAULT NULL,
  `gsm` int DEFAULT NULL,
  `remarks` text,
  `delivery_date` date DEFAULT NULL,
  `bill_no` varchar(255) DEFAULT NULL,
  `lock_status` tinyint(1) NOT NULL DEFAULT '0',
  `quantity_status` int NOT NULL DEFAULT '0',
  `rate_status` int NOT NULL DEFAULT '0',
  `back_print` tinyint(1) NOT NULL DEFAULT '0',
  `status_id` int NOT NULL DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requisitions`
--

DROP TABLE IF EXISTS `requisitions`;
CREATE TABLE IF NOT EXISTS `requisitions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'root', 'Super Admin', '2019-03-28 06:21:03', '2019-03-28 06:21:03'),
(2, 'Admin', 'Admin', '2019-08-08 16:03:49', '2019-08-08 16:03:49'),
(3, 'Plant Head', 'Plant Head', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(4, 'Designer', 'Designer', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(5, 'Cutting', 'Cutting', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(6, 'Printing', 'Printing', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(7, 'Coating', 'Coating', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(8, 'Lamination', 'Lamination', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(9, 'Embossing', 'Embossing', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(10, 'Leafing', 'Leafing', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(11, 'Spot UV', 'Spot UV', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(12, 'Dye Cutting', 'Dye Cutting', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(13, 'Pasting', 'Pasting', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(14, 'Billing', 'Billing', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(16, 'PO', NULL, '2024-04-13 13:21:43', '2024-04-13 13:21:43'),
(17, 'Dye Breaking', NULL, '2024-05-24 18:19:55', '2024-05-24 18:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE IF NOT EXISTS `role_permissions` (
  `role_id` int NOT NULL,
  `permission_key` varchar(255) NOT NULL,
  UNIQUE KEY `role_id_2` (`role_id`,`permission_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`role_id`, `permission_key`) VALUES
(1, 'add_admin'),
(1, 'add_billing'),
(1, 'add_bread'),
(1, 'add_carton'),
(1, 'add_category'),
(1, 'add_client'),
(1, 'add_dye_breaking'),
(1, 'add_dye_details'),
(1, 'add_issue'),
(1, 'add_job_card'),
(1, 'add_material_inward'),
(1, 'add_material_order'),
(1, 'add_media'),
(1, 'add_menu'),
(1, 'add_module_user'),
(1, 'add_paper_inward'),
(1, 'add_paper_warehouse'),
(1, 'add_pasting'),
(1, 'add_planning'),
(1, 'add_product'),
(1, 'add_product_type'),
(1, 'add_purchase_order'),
(1, 'add_requisition'),
(1, 'add_role'),
(1, 'add_site_setting'),
(1, 'add_unit'),
(1, 'add_vendor'),
(1, 'add_warehouse'),
(1, 'browse_admin'),
(1, 'browse_billing'),
(1, 'browse_bread'),
(1, 'browse_carton'),
(1, 'browse_chemical_coating'),
(1, 'browse_client'),
(1, 'browse_cutting'),
(1, 'browse_dashboard'),
(1, 'browse_designing'),
(1, 'browse_dye_breaking'),
(1, 'browse_dye_cutting'),
(1, 'browse_dye_details'),
(1, 'browse_embossing'),
(1, 'browse_issue'),
(1, 'browse_job_card'),
(1, 'browse_lamination'),
(1, 'browse_leafing'),
(1, 'browse_material_inward'),
(1, 'browse_material_order'),
(1, 'browse_media'),
(1, 'browse_menu'),
(1, 'browse_module_user'),
(1, 'browse_paper_inward'),
(1, 'browse_paper_warehouse'),
(1, 'browse_pasting'),
(1, 'browse_planning'),
(1, 'browse_printing'),
(1, 'browse_product'),
(1, 'browse_product_type'),
(1, 'browse_purchase_order'),
(1, 'browse_requisition'),
(1, 'browse_role'),
(1, 'browse_setting'),
(1, 'browse_site_setting'),
(1, 'browse_spot_uv'),
(1, 'browse_transaction'),
(1, 'browse_unit'),
(1, 'browse_vendor'),
(1, 'browse_warehouse'),
(1, 'change_email'),
(1, 'change_password'),
(1, 'change_status'),
(1, 'change_status_billing'),
(1, 'change_status_chemical_coating'),
(1, 'change_status_cutting'),
(1, 'change_status_dye_breaking'),
(1, 'change_status_dye_cutting'),
(1, 'change_status_embossing'),
(1, 'change_status_job_card'),
(1, 'change_status_lamination'),
(1, 'change_status_leafing'),
(1, 'change_status_material_order'),
(1, 'change_status_pasting'),
(1, 'change_status_printing'),
(1, 'change_status_spot_uv'),
(1, 'check_material_order'),
(1, 'delete_admin'),
(1, 'delete_bread'),
(1, 'delete_carton'),
(1, 'delete_category'),
(1, 'delete_designing'),
(1, 'delete_dye_breaking'),
(1, 'delete_dye_details'),
(1, 'delete_issue'),
(1, 'delete_job_card'),
(1, 'delete_material_order'),
(1, 'delete_media'),
(1, 'delete_menu'),
(1, 'delete_module_user'),
(1, 'delete_paper_inward'),
(1, 'delete_paper_warehouse'),
(1, 'delete_pasting'),
(1, 'delete_planning'),
(1, 'delete_product'),
(1, 'delete_product_type'),
(1, 'delete_purchase_order'),
(1, 'delete_role'),
(1, 'delete_site_setting'),
(1, 'delete_warehouse'),
(1, 'designer_purchase_order'),
(1, 'edit_admin'),
(1, 'edit_billing'),
(1, 'edit_bread'),
(1, 'edit_carton'),
(1, 'edit_category'),
(1, 'edit_chemical_coating'),
(1, 'edit_client'),
(1, 'edit_cutting'),
(1, 'edit_designing'),
(1, 'edit_dye_breaking'),
(1, 'edit_dye_cutting'),
(1, 'edit_dye_details'),
(1, 'edit_embossing'),
(1, 'edit_issue'),
(1, 'edit_job_card'),
(1, 'edit_lamination'),
(1, 'edit_leafing'),
(1, 'edit_material_inward'),
(1, 'edit_material_order'),
(1, 'edit_media'),
(1, 'edit_menu'),
(1, 'edit_module_user'),
(1, 'edit_paper_inward'),
(1, 'edit_paper_warehouse'),
(1, 'edit_pasting'),
(1, 'edit_planning'),
(1, 'edit_printing'),
(1, 'edit_product'),
(1, 'edit_product_type'),
(1, 'edit_purchase_order'),
(1, 'edit_requisition'),
(1, 'edit_role'),
(1, 'edit_site_setting'),
(1, 'edit_spot_uv'),
(1, 'edit_unit'),
(1, 'edit_vendor'),
(1, 'edit_warehouse'),
(1, 'ledger_product'),
(1, 'logo_site_setting'),
(1, 'quantity_purchase_order'),
(1, 'rate_purchase_order'),
(1, 'read_admin'),
(1, 'read_billing'),
(1, 'read_bread'),
(1, 'read_carton'),
(1, 'read_category'),
(1, 'read_chemical_coating'),
(1, 'read_client'),
(1, 'read_cutting'),
(1, 'read_designing'),
(1, 'read_dye_breaking'),
(1, 'read_dye_cutting'),
(1, 'read_dye_details'),
(1, 'read_embossing'),
(1, 'read_issue'),
(1, 'read_job_card'),
(1, 'read_lamination'),
(1, 'read_leafing'),
(1, 'read_material_inward'),
(1, 'read_material_order'),
(1, 'read_media'),
(1, 'read_menu'),
(1, 'read_module_user'),
(1, 'read_paper_inward'),
(1, 'read_paper_warehouse'),
(1, 'read_pasting'),
(1, 'read_planning'),
(1, 'read_printing'),
(1, 'read_product'),
(1, 'read_product_type'),
(1, 'read_purchase_order'),
(1, 'read_requisition'),
(1, 'read_role'),
(1, 'read_site_setting'),
(1, 'read_spot_uv'),
(1, 'read_transaction'),
(1, 'read_unit'),
(1, 'read_vendor'),
(1, 'read_warehouse'),
(1, 'user_chemical_coating'),
(1, 'user_dye_cutting'),
(1, 'user_job_card'),
(1, 'user_pasting'),
(1, 'user_printing'),
(2, 'add_admin'),
(2, 'add_billing'),
(2, 'add_category'),
(2, 'add_chemical_coating'),
(2, 'add_client'),
(2, 'add_cutting'),
(2, 'add_designing'),
(2, 'add_die_cutting'),
(2, 'add_dye_cutting'),
(2, 'add_dye_details'),
(2, 'add_embossing'),
(2, 'add_issue'),
(2, 'add_job_card'),
(2, 'add_lamination'),
(2, 'add_leafing'),
(2, 'add_material_inward'),
(2, 'add_media'),
(2, 'add_module_user'),
(2, 'add_paper_inward'),
(2, 'add_paper_warehouse'),
(2, 'add_pasting'),
(2, 'add_planning'),
(2, 'add_printing'),
(2, 'add_product'),
(2, 'add_purchase_order'),
(2, 'add_requisition'),
(2, 'add_site_setting'),
(2, 'add_spot_uv'),
(2, 'add_unit'),
(2, 'add_vendor'),
(2, 'add_warehouse'),
(2, 'browse_admin'),
(2, 'browse_billing'),
(2, 'browse_category'),
(2, 'browse_chemical_coating'),
(2, 'browse_client'),
(2, 'browse_cutting'),
(2, 'browse_dashboard'),
(2, 'browse_designing'),
(2, 'browse_die_cutting'),
(2, 'browse_dye_cutting'),
(2, 'browse_dye_details'),
(2, 'browse_embossing'),
(2, 'browse_issue'),
(2, 'browse_job_card'),
(2, 'browse_lamination'),
(2, 'browse_leafing'),
(2, 'browse_material_inward'),
(2, 'browse_media'),
(2, 'browse_module_user'),
(2, 'browse_paper_inward'),
(2, 'browse_paper_warehouse'),
(2, 'browse_pasting'),
(2, 'browse_planning'),
(2, 'browse_printing'),
(2, 'browse_product'),
(2, 'browse_purchase_order'),
(2, 'browse_requisition'),
(2, 'browse_setting'),
(2, 'browse_site_setting'),
(2, 'browse_spot_uv'),
(2, 'browse_transaction'),
(2, 'browse_unit'),
(2, 'browse_vendor'),
(2, 'browse_warehouse'),
(2, 'change_status'),
(2, 'change_status_billing'),
(2, 'change_status_chemical_coating'),
(2, 'change_status_cutting'),
(2, 'change_status_dye_cutting'),
(2, 'change_status_embossing'),
(2, 'change_status_job_card'),
(2, 'change_status_lamination'),
(2, 'change_status_leafing'),
(2, 'change_status_pasting'),
(2, 'change_status_printing'),
(2, 'change_status_spot_uv'),
(2, 'delete_admin'),
(2, 'delete_billing'),
(2, 'delete_category'),
(2, 'delete_chemical_coating'),
(2, 'delete_cutting'),
(2, 'delete_designing'),
(2, 'delete_die_cutting'),
(2, 'delete_dye_cutting'),
(2, 'delete_dye_details'),
(2, 'delete_embossing'),
(2, 'delete_issue'),
(2, 'delete_job_card'),
(2, 'delete_lamination'),
(2, 'delete_leafing'),
(2, 'delete_media'),
(2, 'delete_module_user'),
(2, 'delete_paper_inward'),
(2, 'delete_paper_warehouse'),
(2, 'delete_pasting'),
(2, 'delete_planning'),
(2, 'delete_printing'),
(2, 'delete_purchase_order'),
(2, 'delete_requisition'),
(2, 'delete_spot_uv'),
(2, 'delete_warehouse'),
(2, 'designer_purchase_order'),
(2, 'edit_admin'),
(2, 'edit_billing'),
(2, 'edit_category'),
(2, 'edit_chemical_coating'),
(2, 'edit_client'),
(2, 'edit_cutting'),
(2, 'edit_designing'),
(2, 'edit_die_cutting'),
(2, 'edit_dye_cutting'),
(2, 'edit_dye_details'),
(2, 'edit_embossing'),
(2, 'edit_issue'),
(2, 'edit_job_card'),
(2, 'edit_lamination'),
(2, 'edit_leafing'),
(2, 'edit_material_inward'),
(2, 'edit_media'),
(2, 'edit_module_user'),
(2, 'edit_paper_inward'),
(2, 'edit_paper_warehouse'),
(2, 'edit_pasting'),
(2, 'edit_planning'),
(2, 'edit_printing'),
(2, 'edit_product'),
(2, 'edit_purchase_order'),
(2, 'edit_requisition'),
(2, 'edit_site_setting'),
(2, 'edit_spot_uv'),
(2, 'edit_unit'),
(2, 'edit_vendor'),
(2, 'edit_warehouse'),
(2, 'ledger_product'),
(2, 'logo_site_setting'),
(2, 'quantity_purchase_order'),
(2, 'rate_purchase_order'),
(2, 'read_admin'),
(2, 'read_billing'),
(2, 'read_category'),
(2, 'read_chemical_coating'),
(2, 'read_client'),
(2, 'read_cutting'),
(2, 'read_designing'),
(2, 'read_die_cutting'),
(2, 'read_dye_cutting'),
(2, 'read_dye_details'),
(2, 'read_embossing'),
(2, 'read_issue'),
(2, 'read_job_card'),
(2, 'read_lamination'),
(2, 'read_leafing'),
(2, 'read_material_inward'),
(2, 'read_media'),
(2, 'read_module_user'),
(2, 'read_paper_inward'),
(2, 'read_paper_warehouse'),
(2, 'read_pasting'),
(2, 'read_planning'),
(2, 'read_printing'),
(2, 'read_product'),
(2, 'read_purchase_order'),
(2, 'read_requisition'),
(2, 'read_site_setting'),
(2, 'read_spot_uv'),
(2, 'read_transaction'),
(2, 'read_unit'),
(2, 'read_vendor'),
(2, 'read_warehouse'),
(2, 'user_chemical_coating'),
(2, 'user_dye_cutting'),
(2, 'user_pasting'),
(2, 'user_printing'),
(3, 'add_category'),
(3, 'add_client'),
(3, 'add_designing'),
(3, 'add_dye_details'),
(3, 'add_issue'),
(3, 'add_material_inward'),
(3, 'add_media'),
(3, 'add_module_user'),
(3, 'add_paper_inward'),
(3, 'add_paper_warehouse'),
(3, 'add_planning'),
(3, 'add_product'),
(3, 'add_purchase_order'),
(3, 'add_requisition'),
(3, 'add_transaction'),
(3, 'add_unit'),
(3, 'add_vendor'),
(3, 'add_warehouse'),
(3, 'browse_billing'),
(3, 'browse_category'),
(3, 'browse_chemical_coating'),
(3, 'browse_client'),
(3, 'browse_cutting'),
(3, 'browse_dashboard'),
(3, 'browse_designing'),
(3, 'browse_die_cutting'),
(3, 'browse_dye_cutting'),
(3, 'browse_dye_details'),
(3, 'browse_embossing'),
(3, 'browse_issue'),
(3, 'browse_job_card'),
(3, 'browse_lamination'),
(3, 'browse_leafing'),
(3, 'browse_material_inward'),
(3, 'browse_media'),
(3, 'browse_module_user'),
(3, 'browse_paper_inward'),
(3, 'browse_paper_warehouse'),
(3, 'browse_pasting'),
(3, 'browse_planning'),
(3, 'browse_printing'),
(3, 'browse_product'),
(3, 'browse_production'),
(3, 'browse_purchase_order'),
(3, 'browse_requisition'),
(3, 'browse_spot_uv'),
(3, 'browse_transaction'),
(3, 'browse_unit'),
(3, 'browse_vendor'),
(3, 'browse_warehouse'),
(3, 'change_status_billing'),
(3, 'change_status_chemical_coating'),
(3, 'change_status_cutting'),
(3, 'change_status_dye_cutting'),
(3, 'change_status_embossing'),
(3, 'change_status_job_card'),
(3, 'change_status_lamination'),
(3, 'change_status_leafing'),
(3, 'change_status_pasting'),
(3, 'change_status_printing'),
(3, 'change_status_spot_uv'),
(3, 'delete_designing'),
(3, 'delete_dye_details'),
(3, 'delete_module_user'),
(3, 'delete_planning'),
(3, 'delete_purchase_order'),
(3, 'designer_purchase_order'),
(3, 'edit_billing'),
(3, 'edit_category'),
(3, 'edit_chemical_coating'),
(3, 'edit_client'),
(3, 'edit_cutting'),
(3, 'edit_designing'),
(3, 'edit_die_cutting'),
(3, 'edit_dye_cutting'),
(3, 'edit_dye_details'),
(3, 'edit_embossing'),
(3, 'edit_issue'),
(3, 'edit_job_card'),
(3, 'edit_lamination'),
(3, 'edit_leafing'),
(3, 'edit_material_inward'),
(3, 'edit_media'),
(3, 'edit_module_user'),
(3, 'edit_paper_inward'),
(3, 'edit_paper_warehouse'),
(3, 'edit_pasting'),
(3, 'edit_planning'),
(3, 'edit_printing'),
(3, 'edit_product'),
(3, 'edit_purchase_order'),
(3, 'edit_requisition'),
(3, 'edit_spot_uv'),
(3, 'edit_transaction'),
(3, 'edit_unit'),
(3, 'edit_vendor'),
(3, 'edit_warehouse'),
(3, 'ledger_product'),
(3, 'quantity_purchase_order'),
(3, 'rate_purchase_order'),
(3, 'read_billing'),
(3, 'read_category'),
(3, 'read_chemical_coating'),
(3, 'read_client'),
(3, 'read_cutting'),
(3, 'read_designing'),
(3, 'read_die_cutting'),
(3, 'read_dye_cutting'),
(3, 'read_dye_details'),
(3, 'read_embossing'),
(3, 'read_issue'),
(3, 'read_job_card'),
(3, 'read_lamination'),
(3, 'read_leafing'),
(3, 'read_material_inward'),
(3, 'read_media'),
(3, 'read_module_user'),
(3, 'read_paper_inward'),
(3, 'read_paper_warehouse'),
(3, 'read_pasting'),
(3, 'read_planning'),
(3, 'read_printing'),
(3, 'read_product'),
(3, 'read_purchase_order'),
(3, 'read_requisition'),
(3, 'read_spot_uv'),
(3, 'read_transaction'),
(3, 'read_unit'),
(3, 'read_vendor'),
(3, 'read_warehouse'),
(3, 'user_chemical_coating'),
(3, 'user_dye_cutting'),
(3, 'user_job_card'),
(3, 'user_pasting'),
(3, 'user_printing'),
(4, 'add_designing'),
(4, 'add_planning'),
(4, 'add_purchase_order'),
(4, 'browse_dashboard'),
(4, 'browse_designing'),
(4, 'browse_planning'),
(4, 'browse_purchase_order'),
(4, 'delete_designing'),
(4, 'edit_designing'),
(4, 'edit_planning'),
(4, 'read_designing'),
(4, 'read_planning'),
(4, 'read_purchase_order'),
(5, 'browse_cutting'),
(5, 'browse_dashboard'),
(5, 'change_status_cutting'),
(5, 'edit_cutting'),
(5, 'read_cutting'),
(6, 'browse_dashboard'),
(6, 'browse_printing'),
(6, 'change_status_printing'),
(6, 'edit_printing'),
(6, 'read_printing'),
(7, 'browse_chemical_coating'),
(7, 'browse_dashboard'),
(7, 'change_status_chemical_coating'),
(7, 'edit_chemical_coating'),
(7, 'read_chemical_coating'),
(8, 'add_die_cutting'),
(8, 'browse_dashboard'),
(8, 'browse_die_cutting'),
(8, 'browse_lamination'),
(8, 'change_status_lamination'),
(8, 'edit_lamination'),
(8, 'read_die_cutting'),
(8, 'read_lamination'),
(9, 'browse_dashboard'),
(9, 'browse_embossing'),
(9, 'change_status_embossing'),
(9, 'edit_embossing'),
(9, 'read_embossing'),
(10, 'add_leafing'),
(10, 'browse_dashboard'),
(10, 'browse_leafing'),
(10, 'change_status_leafing'),
(10, 'edit_leafing'),
(10, 'read_leafing'),
(11, 'add_spot_uv'),
(11, 'browse_dashboard'),
(11, 'browse_spot_uv'),
(11, 'change_status_spot_uv'),
(11, 'edit_spot_uv'),
(11, 'read_spot_uv'),
(12, 'browse_dashboard'),
(12, 'browse_dye_cutting'),
(12, 'change_status_dye_cutting'),
(12, 'edit_dye_cutting'),
(12, 'read_dye_cutting'),
(13, 'browse_dashboard'),
(13, 'browse_pasting'),
(13, 'change_status_pasting'),
(13, 'edit_pasting'),
(13, 'read_pasting'),
(16, 'add_billing'),
(16, 'add_client'),
(16, 'add_dye_details'),
(16, 'add_purchase_order'),
(16, 'add_unit'),
(16, 'add_vendor'),
(16, 'browse_billing'),
(16, 'browse_client'),
(16, 'browse_dashboard'),
(16, 'browse_dye_details'),
(16, 'browse_purchase_order'),
(16, 'browse_unit'),
(16, 'browse_vendor'),
(16, 'change_status_billing'),
(16, 'delete_billing'),
(16, 'delete_purchase_order'),
(16, 'designer_purchase_order'),
(16, 'edit_billing'),
(16, 'edit_client'),
(16, 'edit_dye_details'),
(16, 'edit_purchase_order'),
(16, 'edit_unit'),
(16, 'edit_vendor'),
(16, 'quantity_purchase_order'),
(16, 'rate_purchase_order'),
(16, 'read_billing'),
(16, 'read_client'),
(16, 'read_dye_details'),
(16, 'read_purchase_order'),
(16, 'read_unit'),
(16, 'read_vendor'),
(17, 'add_dye_breaking'),
(17, 'browse_dashboard'),
(17, 'browse_dye_breaking'),
(17, 'delete_dye_breaking'),
(17, 'edit_dye_breaking'),
(17, 'read_dye_breaking');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

DROP TABLE IF EXISTS `site_settings`;
CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `address` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `title`, `description`, `logo`, `favicon`, `email`, `contact_no`, `country`, `state`, `city`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Shreya Offset', 'Partner with an award-winning app development company to take your brick-and-mortar business online and reach a wider audience with powerful mobile and web solutions.', '1', '2', 'asifjamal251@gmail.com', '+91 9315647380', '0', 'Chandigarh', 'Chandigarh', 'F-26 Phase 8 Mohali Chandigarh', '2022-06-26 15:46:11', '2024-05-27 05:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `spot_uv`
--

DROP TABLE IF EXISTS `spot_uv`;
CREATE TABLE IF NOT EXISTS `spot_uv` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `job_card_id` bigint NOT NULL,
  `spot_uv_sheets` int DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `leafing` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status_badge` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `status_badge`) VALUES
(1, 'In Process', '<span class=\"badge bg-info\">In Process</span>'),
(2, 'Pending', '<span class=\"badge bg-warning\">Pending</span>'),
(3, 'Cancelled', '<span class=\"badge bg-danger\">Cancelled</span>'),
(4, 'Success', '<span class=\"badge bg-success\">Success</span>'),
(5, 'Completed', '<span class=\"badge bg-success\">Completed</span>'),
(6, 'Approved', '<span class=\"badge bg-success\">Approved</span>'),
(7, 'Partially Approved', '<span class=\"badge bg-success\">Partially Approved</span>'),
(8, 'On Hold', '<span class=\"badge bg-success\">On Hold</span>'),
(9, 'Billed', '<span class=\"badge bg-success\">Billed</span>'),
(10, 'Partially Billed', '<span class=\"badge bg-success\">Partially Billed</span>'),
(11, 'In Planning', '<span class=\"badge bg-success\">In Planning</span>'),
(12, 'In Designing', '<span class=\"badge bg-info\">In Designing</span>'),
(13, 'In Cutting', '<span class=\"badge bg-secondary\">In Cutting</span>'),
(99, 'Hide', '<span class=\"badge bg-success\">Hide</span>'),
(14, 'In Printing', '<span class=\"badge bg-secondary\">In Printing</span>'),
(15, 'In Lamination', '<span class=\"badge bg-secondary\">In Lamination</span>'),
(16, 'In Coating', '<span class=\"badge bg-secondary\">In Coating</span>'),
(17, 'In Leafing', '<span class=\"badge bg-secondary\">In Leafing</span>'),
(18, 'In Embossing', '<span class=\"badge bg-secondary\">In Embossing</span>'),
(19, 'In Dye Cutting', '<span class=\"badge bg-secondary\">In Dye Cutting</span>'),
(20, 'In Spot UV', '<span class=\"badge bg-secondary\">In Spot UV\r\n</span>'),
(21, 'In Pasting', '<span class=\"badge bg-secondary\">In Pasting\r\n</span>'),
(24, 'Post Press', '<span class=\"badge bg-info\">Post Press\n</span>'),
(25, 'In Dye Breaking', '<span class=\"badge bg-secondary\">In Dye Breaking\n</span>'),
(26, 'Partially Received', '<span class=\"badge bg-secondary\">Partially Received\r\n</span>');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'debit/credit',
  `current_quantity` decimal(10,2) DEFAULT '0.00',
  `new_quantity` decimal(10,2) DEFAULT '0.00',
  `total_quantity` decimal(10,2) DEFAULT '0.00',
  `trancation_by` int DEFAULT NULL,
  `remarks` text,
  `job_card_id` bigint DEFAULT NULL,
  `material_inward_id` bigint DEFAULT NULL,
  `issue_item_id` bigint DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trimmed_paper_stock`
--

DROP TABLE IF EXISTS `trimmed_paper_stock`;
CREATE TABLE IF NOT EXISTS `trimmed_paper_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paper_size` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
CREATE TABLE IF NOT EXISTS `vendors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) DEFAULT NULL,
  `email` varchar(1024) DEFAULT NULL,
  `phone_no` varchar(1024) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `gst` varchar(255) DEFAULT NULL,
  `media_id` int DEFAULT NULL,
  `mail_cc` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `email`, `phone_no`, `address`, `gst`, `media_id`, `mail_cc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AARUSHI AGENCIES', 'aarushiagencieschd@gmail.com', '9915834747', 'Plot No-70, INDL Area Phase-1, Chandigarh\r\n160001', '04AADCA1000E2ZS', NULL, 'stores@aarushiagencies.com', '2024-06-08 22:35:10', '2024-06-08 22:35:10', NULL),
(2, 'RPS CHEMICAL AND COATING', 'amanchandna240@gmail.com', '7015231673', 'Flat No. 136, Silver City Dreams, Deepak Industries\r\nDera Bassi, SAS Nagar Punjab 140201', '03BTFPC5348Q2ZF', NULL, NULL, '2024-06-08 22:37:09', '2024-06-08 22:37:09', NULL),
(3, 'AB ENTERPRISES', 'sales.abenterprises2020@gmail.com', '7814454102', 'Plot No.181/20 INDL Area-1 Chandigarh\r\n160001', '04CLAPB8982M1ZT', NULL, NULL, '2024-06-08 22:39:49', '2024-06-08 22:39:49', NULL),
(4, 'PUNJAB ABBRASIVES', 'creativehands16@gmail.com', '9414108034', 'Vill Saidpura, Dera Bassi', '03AACCP1344F1Z0', NULL, NULL, '2024-06-08 22:40:35', '2024-06-08 22:40:35', NULL),
(5, 'ANURAG ENTERPRISES', 'anuraguttam@gmail.com', '8566007338', 'Shed no.136-140/5, INDL Estate-1\r\nChandigarh', '04AACPU9505G1ZP', NULL, 'anuragenterprises.chandigarh@gmail.com', '2024-06-09 10:35:08', '2024-06-09 10:35:08', NULL),
(6, 'WESTTEK', 'harpreet.singh@westtek.info', '9805099904', 'B-1, Sector-60 Gautam Budha Nagar Noida UP', '09AABCH7877E1Z9', NULL, NULL, '2024-06-09 10:35:55', '2024-06-09 10:35:55', NULL),
(7, 'VK PACKAGING', 'vkpacking123@gmail.com', '8146653334', 'Shop No.25 Sec-66, Mohali Phase-9 Indl Area', '03ALVPK3909N1ZK', NULL, NULL, '2024-06-09 10:36:53', '2024-06-09 10:36:53', NULL),
(8, 'SAKATA', 'sarabjit.singh@sakataindia.com', '9888584343', 'B-1245 & 46 RIICO Industries Area, Ghatal, Bhiwadi\r\nRajasthan-301019', '08AACCS4797D1Z4', NULL, 'hemant.kumar@sakataindia.com,akashdeep.saini@sakataindia.com', '2024-06-09 10:38:01', '2024-06-09 10:38:01', NULL),
(9, 'USHA INDUSTRIES', 'ushaindustries6@gmail.com', '9417497080', 'Plot No.6 Industrial Area, Phase-2 Chandigarh-\r\n160002', '04AYRPK2116N1Z7', NULL, NULL, '2024-06-09 10:40:08', '2024-06-09 10:40:08', NULL),
(10, 'KANISHKA ENTERPRISES', 'kanishkaenterprises0007@gmail.com', '9855652744', 'Nada, Singha Devi, Karoran, SAS Nagar, Punjab', '03CYLPB2654Q1Z5', NULL, NULL, '2024-06-09 11:03:11', '2024-06-09 11:03:11', NULL),
(11, 'Devi Graphics', 'devigraphicsoffice475@gmail.com', '6239272503', 'PLot No 97 Press Site Ind Area', '04AIQPS8669D1ZN', NULL, NULL, '2024-06-09 11:04:00', '2024-06-09 11:04:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
CREATE TABLE IF NOT EXISTS `warehouses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `purchase_order_id` bigint DEFAULT NULL,
  `purchase_order_item_id` bigint DEFAULT NULL,
  `carton_name` varchar(255) DEFAULT NULL,
  `carton_size` varchar(255) DEFAULT NULL,
  `old_quantity` int DEFAULT '0',
  `new_quantity` int NOT NULL DEFAULT '0',
  `quantity_in_box` int DEFAULT NULL,
  `pasting_ready_box` varchar(255) DEFAULT NULL,
  `no_of_box` int DEFAULT NULL,
  `ready_box` varchar(255) DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_card_medias`
--
ALTER TABLE `job_card_medias`
  ADD CONSTRAINT `job_card_medias_job_card_id_foreign` FOREIGN KEY (`job_card_id`) REFERENCES `job_cards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `logins`
--
ALTER TABLE `logins`
  ADD CONSTRAINT `logins_personal_access_token_id_foreign` FOREIGN KEY (`personal_access_token_id`) REFERENCES `personal_access_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `machine_machine_types`
--
ALTER TABLE `machine_machine_types`
  ADD CONSTRAINT `machine_machine_types_machine_id_foreign` FOREIGN KEY (`machine_id`) REFERENCES `machines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `machine_machine_types_machine_type_id_foreign` FOREIGN KEY (`machine_type_id`) REFERENCES `machine_types` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
