-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2023 at 07:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sof_touch`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `batch_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"first_name\":\"RAJEEV\",\"last_name\":\"KUMAR\",\"full_name\":\"RAJEEV KUMAR\",\"company_name\":\"AR TECHNOLOGY\",\"email\":\"A@GMAIL.COM\",\"mobile\":\"1234567890\",\"state\":\"Haryana\",\"city\":\"SAHABPURA\",\"address\":\"120\",\"pincode\":133004,\"gst\":\"03ANCPC76767\",\"media_id\":null,\"color\":\"info\",\"name_init\":\"RK\",\"created_at\":\"2023-12-24T08:53:22.000000Z\",\"updated_at\":\"2023-12-24T08:53:22.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:23:22', '2023-12-24 03:23:22'),
(2, 'product', 'product has been created', 'App\\Models\\Product', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"0.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T09:09:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:39:00', '2023-12-24 03:39:00'),
(3, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"automatic\":1,\"length\":\"57\",\"width\":\"37\",\"height\":\"100\",\"ups\":\"9\",\"dye_no\":\"1\",\"sheet_size\":\"19X23\",\"carton_size\":\"57X37X100\",\"dye_lock\":\"lockbottom\",\"created_at\":\"2023-12-24T09:09:48.000000Z\",\"updated_at\":\"2023-12-24T09:09:48.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:39:48', '2023-12-24 03:39:48'),
(4, 'Material Inward', 'Material Inward has been created', 'App\\Models\\MaterialInward', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"vendor_id\":1,\"bill_no\":\"1234\",\"bill_date\":\"2023-12-24T00:00:00.000000Z\",\"subtotal\":null,\"total_gst\":null,\"total\":null,\"created_at\":\"2023-12-24T09:10:31.000000Z\",\"updated_at\":\"2023-12-24T09:10:31.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:40:31', '2023-12-24 03:40:31'),
(5, 'Material Inward Item', 'Material Inward Item has been created', 'App\\Models\\MaterialInwardItem', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"material_inward_id\":1,\"category_id\":2,\"product_id\":1,\"item_name\":\"23X38-290\",\"quantity\":70,\"hsn\":\"4810\",\"weight_per_piece\":\"0.16\",\"total_weight\":\"1085.00\",\"unit\":\"Sheets\",\"rate_on\":\"76.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"100.00\",\"total_item\":\"7000.00\",\"rate\":\"82460.00\",\"gst\":\"12.00\",\"gst_amount\":\"9895.20\",\"amount\":\"82460.00\",\"created_at\":\"2023-12-24T09:10:31.000000Z\",\"updated_at\":\"2023-12-24T09:10:31.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:40:31', '2023-12-24 03:40:31'),
(6, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"7000.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T09:10:31.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"0.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T09:09:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:40:31', '2023-12-24 03:40:31'),
(7, 'Material Inward', 'Material Inward has been updated', 'App\\Models\\MaterialInward', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"vendor_id\":1,\"bill_no\":\"1234\",\"bill_date\":\"2023-12-24T00:00:00.000000Z\",\"subtotal\":\"82460.00\",\"total_gst\":\"9895.20\",\"total\":\"92355.20\",\"created_at\":\"2023-12-24T09:10:31.000000Z\",\"updated_at\":\"2023-12-24T09:10:31.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"vendor_id\":\"1\",\"bill_no\":\"1234\",\"bill_date\":\"2023-12-24T00:00:00.000000Z\",\"subtotal\":null,\"total_gst\":null,\"total\":null,\"created_at\":\"2023-12-24T09:10:31.000000Z\",\"updated_at\":\"2023-12-24T09:10:31.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:40:31', '2023-12-24 03:40:31'),
(8, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"client_id\":1,\"po_no\":\"215114\",\"po_date\":\"2023-12-24T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:19', '2023-12-24 03:44:19'),
(9, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"purchase_order_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:19', '2023-12-24 03:44:19'),
(10, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"purchase_order_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:19', '2023-12-24 03:44:19'),
(11, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"purchase_order_id\":1,\"carton_name\":\"GHI\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:19', '2023-12-24 03:44:19'),
(12, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"purchase_order_id\":1,\"carton_name\":\"JKL\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:19', '2023-12-24 03:44:19'),
(13, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"client_id\":1,\"po_no\":\"215114\",\"po_date\":\"2023-12-24T00:00:00.000000Z\",\"made_by\":1,\"designer\":2,\"status_id\":2,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:29.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"client_id\":1,\"po_no\":\"215114\",\"po_date\":\"2023-12-24T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:29', '2023-12-24 03:44:29'),
(14, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"purchase_order_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:41.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"purchase_order_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:41', '2023-12-24 03:44:41'),
(15, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"purchase_order_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:41.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"purchase_order_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:41', '2023-12-24 03:44:41'),
(16, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"purchase_order_id\":1,\"carton_name\":\"GHI\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:41.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"purchase_order_id\":1,\"carton_name\":\"GHI\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:41', '2023-12-24 03:44:41'),
(17, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"purchase_order_id\":1,\"carton_name\":\"JKL\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:41.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"purchase_order_id\":1,\"carton_name\":\"JKL\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:41', '2023-12-24 03:44:41'),
(18, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"purchase_order_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:42.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"purchase_order_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:41.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:42', '2023-12-24 03:44:42'),
(19, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"purchase_order_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:42.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"purchase_order_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:41.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:42', '2023-12-24 03:44:42'),
(20, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"purchase_order_id\":1,\"carton_name\":\"GHI\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:42.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"purchase_order_id\":1,\"carton_name\":\"GHI\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:41.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:42', '2023-12-24 03:44:42'),
(21, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"purchase_order_id\":1,\"carton_name\":\"JKL\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:42.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"purchase_order_id\":1,\"carton_name\":\"JKL\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:41.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:42', '2023-12-24 03:44:42'),
(22, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"purchase_order_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:46.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"purchase_order_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:42.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:46', '2023-12-24 03:44:46'),
(23, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"purchase_order_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:46.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"purchase_order_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:42.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:46', '2023-12-24 03:44:46'),
(24, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"purchase_order_id\":1,\"carton_name\":\"GHI\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:46.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"purchase_order_id\":1,\"carton_name\":\"GHI\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:42.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:46', '2023-12-24 03:44:46'),
(25, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"purchase_order_id\":1,\"carton_name\":\"JKL\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:46.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"purchase_order_id\":1,\"carton_name\":\"JKL\",\"carton_size\":\"57X37X100\",\"quantity\":1200,\"rate\":\"1.55\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:14:19.000000Z\",\"updated_at\":\"2023-12-24T09:14:42.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:44:46', '2023-12-24 03:44:46'),
(26, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"planning_by\":1,\"job_card_no\":\"001\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":99,\"created_at\":\"2023-12-24T09:15:19.000000Z\",\"updated_at\":\"2023-12-24T09:15:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:19', '2023-12-24 03:45:19'),
(27, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"job_card_id\":1,\"planning_id\":1,\"purchase_order_id\":1,\"purchase_order_item_id\":1,\"ups\":3,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T09:15:19.000000Z\",\"updated_at\":\"2023-12-24T09:15:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:19', '2023-12-24 03:45:19'),
(28, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":99,\"created_at\":\"2023-12-24T09:15:19.000000Z\",\"updated_at\":\"2023-12-24T09:15:19.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"planning_by\":1,\"job_card_no\":\"001\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":null,\"created_at\":\"2023-12-24T09:15:19.000000Z\",\"updated_at\":\"2023-12-24T09:15:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:19', '2023-12-24 03:45:19'),
(29, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"job_card_id\":1,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T09:15:19.000000Z\",\"updated_at\":\"2023-12-24T09:15:19.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:19', '2023-12-24 03:45:19'),
(30, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"planning_by\":1,\"job_card_no\":\"002\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":99,\"created_at\":\"2023-12-24T09:15:27.000000Z\",\"updated_at\":\"2023-12-24T09:15:27.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:28', '2023-12-24 03:45:28'),
(31, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"job_card_id\":2,\"planning_id\":2,\"purchase_order_id\":1,\"purchase_order_item_id\":2,\"ups\":3,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T09:15:28.000000Z\",\"updated_at\":\"2023-12-24T09:15:28.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:28', '2023-12-24 03:45:28'),
(32, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"planning_by\":2,\"job_card_no\":\"002\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":99,\"created_at\":\"2023-12-24T09:15:27.000000Z\",\"updated_at\":\"2023-12-24T09:15:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"planning_by\":1,\"job_card_no\":\"002\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":null,\"created_at\":\"2023-12-24T09:15:27.000000Z\",\"updated_at\":\"2023-12-24T09:15:27.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:28', '2023-12-24 03:45:28'),
(33, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"job_card_id\":2,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T09:15:28.000000Z\",\"updated_at\":\"2023-12-24T09:15:28.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:28', '2023-12-24 03:45:28'),
(34, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"planning_by\":1,\"job_card_no\":\"003\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":99,\"created_at\":\"2023-12-24T09:15:35.000000Z\",\"updated_at\":\"2023-12-24T09:15:35.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:35', '2023-12-24 03:45:35'),
(35, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"job_card_id\":3,\"planning_id\":3,\"purchase_order_id\":1,\"purchase_order_item_id\":3,\"ups\":3,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T09:15:35.000000Z\",\"updated_at\":\"2023-12-24T09:15:35.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:35', '2023-12-24 03:45:35'),
(36, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":99,\"created_at\":\"2023-12-24T09:15:35.000000Z\",\"updated_at\":\"2023-12-24T09:15:35.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"planning_by\":1,\"job_card_no\":\"003\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":null,\"created_at\":\"2023-12-24T09:15:35.000000Z\",\"updated_at\":\"2023-12-24T09:15:35.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:35', '2023-12-24 03:45:35'),
(37, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"job_card_id\":3,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T09:15:35.000000Z\",\"updated_at\":\"2023-12-24T09:15:35.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:35', '2023-12-24 03:45:35'),
(38, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"planning_by\":1,\"job_card_no\":\"004\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":99,\"created_at\":\"2023-12-24T09:15:45.000000Z\",\"updated_at\":\"2023-12-24T09:15:45.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:46', '2023-12-24 03:45:46'),
(39, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"job_card_id\":4,\"planning_id\":4,\"purchase_order_id\":1,\"purchase_order_item_id\":4,\"ups\":3,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T09:15:46.000000Z\",\"updated_at\":\"2023-12-24T09:15:46.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:46', '2023-12-24 03:45:46'),
(40, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"planning_by\":2,\"job_card_no\":\"004\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":99,\"created_at\":\"2023-12-24T09:15:45.000000Z\",\"updated_at\":\"2023-12-24T09:15:46.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"planning_by\":1,\"job_card_no\":\"004\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":null,\"created_at\":\"2023-12-24T09:15:45.000000Z\",\"updated_at\":\"2023-12-24T09:15:45.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:46', '2023-12-24 03:45:46'),
(41, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"job_card_id\":4,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T09:15:46.000000Z\",\"updated_at\":\"2023-12-24T09:15:46.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:45:46', '2023-12-24 03:45:46'),
(42, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch, pasting, bottom lock\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":1,\"created_at\":\"2023-12-24T09:15:19.000000Z\",\"updated_at\":\"2023-12-24T09:19:33.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":2,\"created_at\":\"2023-12-24T09:15:19.000000Z\",\"updated_at\":\"2023-12-24T09:16:52.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:49:33', '2023-12-24 03:49:33'),
(43, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"6450.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T09:19:33.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"7000.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T09:10:31.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:49:33', '2023-12-24 03:49:33'),
(44, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"planning_by\":2,\"job_card_no\":\"002\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Leafing\",\"roll_used\":\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":1,\"created_at\":\"2023-12-24T09:15:27.000000Z\",\"updated_at\":\"2023-12-24T09:20:21.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"planning_by\":2,\"job_card_no\":\"002\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":2,\"created_at\":\"2023-12-24T09:15:27.000000Z\",\"updated_at\":\"2023-12-24T09:16:56.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:50:21', '2023-12-24 03:50:21'),
(45, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"5900.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T09:20:21.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"6450.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T09:19:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:50:21', '2023-12-24 03:50:21'),
(46, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Both\",\"roll_used\":\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":1,\"created_at\":\"2023-12-24T09:15:35.000000Z\",\"updated_at\":\"2023-12-24T09:29:47.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":2,\"created_at\":\"2023-12-24T09:15:35.000000Z\",\"updated_at\":\"2023-12-24T09:16:46.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:59:47', '2023-12-24 03:59:47'),
(47, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"5350.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T09:29:47.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"5900.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T09:20:21.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 03:59:47', '2023-12-24 03:59:47'),
(48, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"planning_by\":2,\"job_card_no\":\"004\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":1,\"created_at\":\"2023-12-24T09:15:45.000000Z\",\"updated_at\":\"2023-12-24T09:30:35.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"planning_by\":2,\"job_card_no\":\"004\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"status_id\":2,\"created_at\":\"2023-12-24T09:15:45.000000Z\",\"updated_at\":\"2023-12-24T09:16:40.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:00:35', '2023-12-24 04:00:35'),
(49, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"4800.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T09:30:35.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"5350.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T09:29:47.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:00:35', '2023-12-24 04:00:35'),
(50, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"client_id\":1,\"po_no\":\"35465\",\"po_date\":\"2023-12-24T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:43:34.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:13:34', '2023-12-24 04:13:34'),
(51, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"purchase_order_id\":2,\"carton_name\":\"Mamoon\",\"carton_size\":\"20X22X24\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":3,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:43:34.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:13:34', '2023-12-24 04:13:34'),
(52, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"purchase_order_id\":2,\"carton_name\":\"Nasar\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:43:34.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:13:34', '2023-12-24 04:13:34'),
(53, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"purchase_order_id\":2,\"carton_name\":\"Noor\",\"carton_size\":\"10X12X14\",\"quantity\":1500,\"rate\":\"1.00\",\"coating_type_id\":4,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:43:34.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:13:34', '2023-12-24 04:13:34'),
(54, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"purchase_order_id\":2,\"carton_name\":\"Babu\",\"carton_size\":\"18X18X18\",\"quantity\":3000,\"rate\":\"1.00\",\"coating_type_id\":6,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:43:34.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:13:34', '2023-12-24 04:13:34'),
(55, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"client_id\":1,\"po_no\":\"35465\",\"po_date\":\"2023-12-24T00:00:00.000000Z\",\"made_by\":1,\"designer\":3,\"status_id\":2,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:43:49.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"client_id\":1,\"po_no\":\"35465\",\"po_date\":\"2023-12-24T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:43:34.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:13:49', '2023-12-24 04:13:49');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(56, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"purchase_order_id\":2,\"carton_name\":\"Mamoon\",\"carton_size\":\"20X22X24\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":3,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:24.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"purchase_order_id\":2,\"carton_name\":\"Mamoon\",\"carton_size\":\"20X22X24\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":3,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:43:34.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:14:24', '2023-12-24 04:14:24'),
(57, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"purchase_order_id\":2,\"carton_name\":\"Nasar\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:27.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"purchase_order_id\":2,\"carton_name\":\"Nasar\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:43:34.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:14:27', '2023-12-24 04:14:27'),
(58, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"purchase_order_id\":2,\"carton_name\":\"Noor\",\"carton_size\":\"10X12X14\",\"quantity\":1500,\"rate\":\"1.00\",\"coating_type_id\":4,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:27.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"purchase_order_id\":2,\"carton_name\":\"Noor\",\"carton_size\":\"10X12X14\",\"quantity\":1500,\"rate\":\"1.00\",\"coating_type_id\":4,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:43:34.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:14:27', '2023-12-24 04:14:27'),
(59, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"purchase_order_id\":2,\"carton_name\":\"Babu\",\"carton_size\":\"18X18X18\",\"quantity\":3000,\"rate\":\"1.00\",\"coating_type_id\":6,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:27.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"purchase_order_id\":2,\"carton_name\":\"Babu\",\"carton_size\":\"18X18X18\",\"quantity\":3000,\"rate\":\"1.00\",\"coating_type_id\":6,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:43:34.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:14:27', '2023-12-24 04:14:27'),
(60, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"purchase_order_id\":2,\"carton_name\":\"Mamoon\",\"carton_size\":\"20X22X24\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":3,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:31.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"purchase_order_id\":2,\"carton_name\":\"Mamoon\",\"carton_size\":\"20X22X24\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":3,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:24.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:14:31', '2023-12-24 04:14:31'),
(61, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"purchase_order_id\":2,\"carton_name\":\"Nasar\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:31.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"purchase_order_id\":2,\"carton_name\":\"Nasar\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:27.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:14:31', '2023-12-24 04:14:31'),
(62, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"purchase_order_id\":2,\"carton_name\":\"Noor\",\"carton_size\":\"10X12X14\",\"quantity\":1500,\"rate\":\"1.00\",\"coating_type_id\":4,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:31.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"purchase_order_id\":2,\"carton_name\":\"Noor\",\"carton_size\":\"10X12X14\",\"quantity\":1500,\"rate\":\"1.00\",\"coating_type_id\":4,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:27.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:14:31', '2023-12-24 04:14:31'),
(63, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"purchase_order_id\":2,\"carton_name\":\"Babu\",\"carton_size\":\"18X18X18\",\"quantity\":3000,\"rate\":\"1.00\",\"coating_type_id\":6,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:31.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"purchase_order_id\":2,\"carton_name\":\"Babu\",\"carton_size\":\"18X18X18\",\"quantity\":3000,\"rate\":\"1.00\",\"coating_type_id\":6,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:27.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:14:31', '2023-12-24 04:14:31'),
(64, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"purchase_order_id\":2,\"carton_name\":\"Mamoon\",\"carton_size\":\"20X22X24\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":3,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"purchase_order_id\":2,\"carton_name\":\"Mamoon\",\"carton_size\":\"20X22X24\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":3,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:31.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:14:40', '2023-12-24 04:14:40'),
(65, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"purchase_order_id\":2,\"carton_name\":\"Nasar\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"purchase_order_id\":2,\"carton_name\":\"Nasar\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:31.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:14:40', '2023-12-24 04:14:40'),
(66, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"purchase_order_id\":2,\"carton_name\":\"Noor\",\"carton_size\":\"10X12X14\",\"quantity\":1500,\"rate\":\"1.00\",\"coating_type_id\":4,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"purchase_order_id\":2,\"carton_name\":\"Noor\",\"carton_size\":\"10X12X14\",\"quantity\":1500,\"rate\":\"1.00\",\"coating_type_id\":4,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:31.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:14:40', '2023-12-24 04:14:40'),
(67, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"purchase_order_id\":2,\"carton_name\":\"Babu\",\"carton_size\":\"18X18X18\",\"quantity\":3000,\"rate\":\"1.00\",\"coating_type_id\":6,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"purchase_order_id\":2,\"carton_name\":\"Babu\",\"carton_size\":\"18X18X18\",\"quantity\":3000,\"rate\":\"1.00\",\"coating_type_id\":6,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T09:43:34.000000Z\",\"updated_at\":\"2023-12-24T09:44:31.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 04:14:40', '2023-12-24 04:14:40'),
(68, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"planning_by\":1,\"job_card_no\":\"005\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T16:25:18.000000Z\",\"updated_at\":\"2023-12-24T16:25:18.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:18', '2023-12-24 10:55:18'),
(69, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"job_card_id\":5,\"planning_id\":5,\"purchase_order_id\":2,\"purchase_order_item_id\":5,\"ups\":1,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T16:25:18.000000Z\",\"updated_at\":\"2023-12-24T16:25:18.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:18', '2023-12-24 10:55:18'),
(70, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"planning_by\":3,\"job_card_no\":\"005\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T16:25:18.000000Z\",\"updated_at\":\"2023-12-24T16:25:18.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"planning_by\":1,\"job_card_no\":\"005\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-24T16:25:18.000000Z\",\"updated_at\":\"2023-12-24T16:25:18.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:18', '2023-12-24 10:55:18'),
(71, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"job_card_id\":5,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T16:25:18.000000Z\",\"updated_at\":\"2023-12-24T16:25:18.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:18', '2023-12-24 10:55:18'),
(72, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"planning_by\":1,\"job_card_no\":\"006\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T16:25:31.000000Z\",\"updated_at\":\"2023-12-24T16:25:31.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:31', '2023-12-24 10:55:31'),
(73, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"job_card_id\":6,\"planning_id\":6,\"purchase_order_id\":2,\"purchase_order_item_id\":6,\"ups\":2,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T16:25:31.000000Z\",\"updated_at\":\"2023-12-24T16:25:31.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:31', '2023-12-24 10:55:31'),
(74, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"planning_by\":3,\"job_card_no\":\"006\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T16:25:31.000000Z\",\"updated_at\":\"2023-12-24T16:25:31.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"planning_by\":1,\"job_card_no\":\"006\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-24T16:25:31.000000Z\",\"updated_at\":\"2023-12-24T16:25:31.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:31', '2023-12-24 10:55:31'),
(75, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"job_card_id\":6,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T16:25:31.000000Z\",\"updated_at\":\"2023-12-24T16:25:31.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:31', '2023-12-24 10:55:31'),
(76, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"planning_by\":1,\"job_card_no\":\"007\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T16:25:44.000000Z\",\"updated_at\":\"2023-12-24T16:25:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:44', '2023-12-24 10:55:44'),
(77, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"job_card_id\":7,\"planning_id\":7,\"purchase_order_id\":2,\"purchase_order_item_id\":7,\"ups\":3,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T16:25:44.000000Z\",\"updated_at\":\"2023-12-24T16:25:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:44', '2023-12-24 10:55:44'),
(78, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"planning_by\":3,\"job_card_no\":\"007\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T16:25:44.000000Z\",\"updated_at\":\"2023-12-24T16:25:44.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"planning_by\":1,\"job_card_no\":\"007\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-24T16:25:44.000000Z\",\"updated_at\":\"2023-12-24T16:25:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:44', '2023-12-24 10:55:44'),
(79, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"job_card_id\":7,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T16:25:44.000000Z\",\"updated_at\":\"2023-12-24T16:25:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:44', '2023-12-24 10:55:44'),
(80, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"planning_by\":1,\"job_card_no\":\"008\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T16:25:54.000000Z\",\"updated_at\":\"2023-12-24T16:25:54.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:54', '2023-12-24 10:55:54'),
(81, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"job_card_id\":8,\"planning_id\":8,\"purchase_order_id\":2,\"purchase_order_item_id\":8,\"ups\":4,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T16:25:54.000000Z\",\"updated_at\":\"2023-12-24T16:25:54.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:54', '2023-12-24 10:55:54'),
(82, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"planning_by\":3,\"job_card_no\":\"008\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T16:25:54.000000Z\",\"updated_at\":\"2023-12-24T16:25:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"planning_by\":1,\"job_card_no\":\"008\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-24T16:25:54.000000Z\",\"updated_at\":\"2023-12-24T16:25:54.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:54', '2023-12-24 10:55:54'),
(83, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"job_card_id\":8,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T16:25:54.000000Z\",\"updated_at\":\"2023-12-24T16:25:54.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 10:55:54', '2023-12-24 10:55:54'),
(84, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"planning_by\":3,\"job_card_no\":\"005\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"Yellow\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-24T16:25:18.000000Z\",\"updated_at\":\"2023-12-24T16:30:49.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"planning_by\":3,\"job_card_no\":\"005\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"Yellow\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-24T16:25:18.000000Z\",\"updated_at\":\"2023-12-24T16:28:38.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 11:00:49', '2023-12-24 11:00:49'),
(85, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"4250.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T16:30:49.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"4800.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T09:30:35.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 11:00:49', '2023-12-24 11:00:49'),
(86, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"planning_by\":3,\"job_card_no\":\"006\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"blue\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Both\",\"roll_used\":\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-24T16:25:31.000000Z\",\"updated_at\":\"2023-12-24T16:33:10.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"planning_by\":3,\"job_card_no\":\"006\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"blue\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-24T16:25:31.000000Z\",\"updated_at\":\"2023-12-24T16:28:45.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 11:03:10', '2023-12-24 11:03:10'),
(87, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"3700.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T16:33:10.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"4250.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T16:30:49.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 11:03:10', '2023-12-24 11:03:10'),
(88, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"planning_by\":3,\"job_card_no\":\"007\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"black\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Leafing\",\"roll_used\":\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-24T16:25:44.000000Z\",\"updated_at\":\"2023-12-24T16:34:15.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"planning_by\":3,\"job_card_no\":\"007\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"black\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-24T16:25:44.000000Z\",\"updated_at\":\"2023-12-24T16:28:30.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 11:04:15', '2023-12-24 11:04:15'),
(89, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"3150.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T16:34:15.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"3700.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T16:33:10.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 11:04:15', '2023-12-24 11:04:15'),
(90, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"planning_by\":3,\"job_card_no\":\"008\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"red\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-24T16:25:54.000000Z\",\"updated_at\":\"2023-12-24T16:36:39.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"planning_by\":3,\"job_card_no\":\"008\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"red\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-24T16:25:54.000000Z\",\"updated_at\":\"2023-12-24T16:28:25.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 11:06:39', '2023-12-24 11:06:39'),
(91, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"2600.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T16:36:39.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"3150.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T16:34:15.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 11:06:39', '2023-12-24 11:06:39'),
(92, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"client_id\":1,\"po_no\":\"215114\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:26:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:56:51', '2023-12-24 14:56:51'),
(93, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"purchase_order_id\":3,\"carton_name\":\"NNN\",\"carton_size\":\"57X37X100\",\"quantity\":1234,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:26:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:56:51', '2023-12-24 14:56:51'),
(94, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"purchase_order_id\":3,\"carton_name\":\"RRR\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:26:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:56:51', '2023-12-24 14:56:51'),
(95, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"purchase_order_id\":3,\"carton_name\":\"JJJ\",\"carton_size\":\"57X37X100\",\"quantity\":12122,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:26:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:56:51', '2023-12-24 14:56:51'),
(96, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"purchase_order_id\":3,\"carton_name\":\"PPP\",\"carton_size\":\"57X37X100\",\"quantity\":12311,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:26:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:56:51', '2023-12-24 14:56:51'),
(97, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"client_id\":1,\"po_no\":\"215114\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":3,\"status_id\":2,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:41.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"client_id\":1,\"po_no\":\"215114\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:26:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:57:41', '2023-12-24 14:57:41'),
(98, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"purchase_order_id\":3,\"carton_name\":\"NNN\",\"carton_size\":\"57X37X100\",\"quantity\":1234,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"purchase_order_id\":3,\"carton_name\":\"NNN\",\"carton_size\":\"57X37X100\",\"quantity\":1234,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:26:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:57:54', '2023-12-24 14:57:54'),
(99, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"purchase_order_id\":3,\"carton_name\":\"RRR\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"purchase_order_id\":3,\"carton_name\":\"RRR\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:26:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:57:54', '2023-12-24 14:57:54'),
(100, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"purchase_order_id\":3,\"carton_name\":\"JJJ\",\"carton_size\":\"57X37X100\",\"quantity\":12122,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":11,\"purchase_order_id\":3,\"carton_name\":\"JJJ\",\"carton_size\":\"57X37X100\",\"quantity\":12122,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:26:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:57:54', '2023-12-24 14:57:54'),
(101, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"purchase_order_id\":3,\"carton_name\":\"PPP\",\"carton_size\":\"57X37X100\",\"quantity\":12311,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"purchase_order_id\":3,\"carton_name\":\"PPP\",\"carton_size\":\"57X37X100\",\"quantity\":12311,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:26:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:57:54', '2023-12-24 14:57:54'),
(102, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"purchase_order_id\":3,\"carton_name\":\"NNN\",\"carton_size\":\"57X37X100\",\"quantity\":1234,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:56.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"purchase_order_id\":3,\"carton_name\":\"NNN\",\"carton_size\":\"57X37X100\",\"quantity\":1234,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:54.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:57:56', '2023-12-24 14:57:56'),
(103, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"purchase_order_id\":3,\"carton_name\":\"RRR\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:56.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"purchase_order_id\":3,\"carton_name\":\"RRR\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:54.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:57:56', '2023-12-24 14:57:56'),
(104, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"purchase_order_id\":3,\"carton_name\":\"JJJ\",\"carton_size\":\"57X37X100\",\"quantity\":12122,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:56.000000Z\",\"deleted_at\":null},\"old\":{\"id\":11,\"purchase_order_id\":3,\"carton_name\":\"JJJ\",\"carton_size\":\"57X37X100\",\"quantity\":12122,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:54.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:57:56', '2023-12-24 14:57:56');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(105, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"purchase_order_id\":3,\"carton_name\":\"PPP\",\"carton_size\":\"57X37X100\",\"quantity\":12311,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:56.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"purchase_order_id\":3,\"carton_name\":\"PPP\",\"carton_size\":\"57X37X100\",\"quantity\":12311,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:54.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:57:56', '2023-12-24 14:57:56'),
(106, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"purchase_order_id\":3,\"carton_name\":\"NNN\",\"carton_size\":\"57X37X100\",\"quantity\":1234,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:59.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"purchase_order_id\":3,\"carton_name\":\"NNN\",\"carton_size\":\"57X37X100\",\"quantity\":1234,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:56.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:57:59', '2023-12-24 14:57:59'),
(107, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"purchase_order_id\":3,\"carton_name\":\"RRR\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:59.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"purchase_order_id\":3,\"carton_name\":\"RRR\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.55\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:56.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:57:59', '2023-12-24 14:57:59'),
(108, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"purchase_order_id\":3,\"carton_name\":\"JJJ\",\"carton_size\":\"57X37X100\",\"quantity\":12122,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:59.000000Z\",\"deleted_at\":null},\"old\":{\"id\":11,\"purchase_order_id\":3,\"carton_name\":\"JJJ\",\"carton_size\":\"57X37X100\",\"quantity\":12122,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:56.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:57:59', '2023-12-24 14:57:59'),
(109, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"purchase_order_id\":3,\"carton_name\":\"PPP\",\"carton_size\":\"57X37X100\",\"quantity\":12311,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:59.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"purchase_order_id\":3,\"carton_name\":\"PPP\",\"carton_size\":\"57X37X100\",\"quantity\":12311,\"rate\":\"1.70\",\"coating_type_id\":1,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:26:51.000000Z\",\"updated_at\":\"2023-12-24T20:27:56.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:57:59', '2023-12-24 14:57:59'),
(110, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"planning_by\":1,\"job_card_no\":\"009\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:28:23.000000Z\",\"updated_at\":\"2023-12-24T20:28:23.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:58:23', '2023-12-24 14:58:23'),
(111, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"job_card_id\":9,\"planning_id\":9,\"purchase_order_id\":3,\"purchase_order_item_id\":9,\"ups\":9,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T20:28:23.000000Z\",\"updated_at\":\"2023-12-24T20:28:23.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:58:23', '2023-12-24 14:58:23'),
(112, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"planning_by\":3,\"job_card_no\":\"009\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:28:23.000000Z\",\"updated_at\":\"2023-12-24T20:28:23.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"planning_by\":1,\"job_card_no\":\"009\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-24T20:28:23.000000Z\",\"updated_at\":\"2023-12-24T20:28:23.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:58:23', '2023-12-24 14:58:23'),
(113, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"job_card_id\":9,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:28:23.000000Z\",\"updated_at\":\"2023-12-24T20:28:23.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:58:23', '2023-12-24 14:58:23'),
(114, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"planning_by\":1,\"job_card_no\":\"010\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:28:32.000000Z\",\"updated_at\":\"2023-12-24T20:28:32.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:58:32', '2023-12-24 14:58:32'),
(115, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"job_card_id\":10,\"planning_id\":10,\"purchase_order_id\":3,\"purchase_order_item_id\":10,\"ups\":7,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T20:28:32.000000Z\",\"updated_at\":\"2023-12-24T20:28:32.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:58:32', '2023-12-24 14:58:32'),
(116, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"planning_by\":3,\"job_card_no\":\"010\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:28:32.000000Z\",\"updated_at\":\"2023-12-24T20:28:32.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"planning_by\":1,\"job_card_no\":\"010\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-24T20:28:32.000000Z\",\"updated_at\":\"2023-12-24T20:28:32.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:58:32', '2023-12-24 14:58:32'),
(117, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"job_card_id\":10,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:28:32.000000Z\",\"updated_at\":\"2023-12-24T20:28:32.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:58:32', '2023-12-24 14:58:32'),
(118, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"client_id\":1,\"po_no\":\"564654\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:28:53.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:58:53', '2023-12-24 14:58:53'),
(119, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"purchase_order_id\":4,\"carton_name\":\"FALANA\",\"carton_size\":\"20X22X24\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:28:53.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:58:53', '2023-12-24 14:58:53'),
(120, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"purchase_order_id\":4,\"carton_name\":\"DHIMKANA\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:28:53.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:58:53', '2023-12-24 14:58:53'),
(121, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 15, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":15,\"purchase_order_id\":4,\"carton_name\":\"Babu ne thana thaya\",\"carton_size\":\"10X12X14\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:28:53.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:58:53', '2023-12-24 14:58:53'),
(122, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 16, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":16,\"purchase_order_id\":4,\"carton_name\":\"Moye Moye\",\"carton_size\":\"18X18X18\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:28:53.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:58:53', '2023-12-24 14:58:53'),
(123, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"planning_by\":1,\"job_card_no\":\"011\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:29:01.000000Z\",\"updated_at\":\"2023-12-24T20:29:01.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:01', '2023-12-24 14:59:01'),
(124, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"job_card_id\":11,\"planning_id\":11,\"purchase_order_id\":3,\"purchase_order_item_id\":11,\"ups\":8,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T20:29:01.000000Z\",\"updated_at\":\"2023-12-24T20:29:01.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:01', '2023-12-24 14:59:01'),
(125, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"planning_by\":3,\"job_card_no\":\"011\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:29:01.000000Z\",\"updated_at\":\"2023-12-24T20:29:01.000000Z\",\"deleted_at\":null},\"old\":{\"id\":11,\"planning_by\":1,\"job_card_no\":\"011\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-24T20:29:01.000000Z\",\"updated_at\":\"2023-12-24T20:29:01.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:01', '2023-12-24 14:59:01'),
(126, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"job_card_id\":11,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:29:01.000000Z\",\"updated_at\":\"2023-12-24T20:29:01.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:01', '2023-12-24 14:59:01'),
(127, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"client_id\":1,\"po_no\":\"564654\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":2,\"status_id\":2,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:14.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"client_id\":1,\"po_no\":\"564654\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:28:53.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:14', '2023-12-24 14:59:14'),
(128, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"planning_by\":1,\"job_card_no\":\"012\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:29:16.000000Z\",\"updated_at\":\"2023-12-24T20:29:16.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:16', '2023-12-24 14:59:16'),
(129, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"job_card_id\":12,\"planning_id\":12,\"purchase_order_id\":3,\"purchase_order_item_id\":12,\"ups\":8,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T20:29:16.000000Z\",\"updated_at\":\"2023-12-24T20:29:16.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:16', '2023-12-24 14:59:16'),
(130, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"planning_by\":3,\"job_card_no\":\"012\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:29:16.000000Z\",\"updated_at\":\"2023-12-24T20:29:16.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"planning_by\":1,\"job_card_no\":\"012\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-24T20:29:16.000000Z\",\"updated_at\":\"2023-12-24T20:29:16.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:16', '2023-12-24 14:59:16'),
(131, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"job_card_id\":12,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:29:16.000000Z\",\"updated_at\":\"2023-12-24T20:29:16.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:16', '2023-12-24 14:59:16'),
(132, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"purchase_order_id\":4,\"carton_name\":\"FALANA\",\"carton_size\":\"20X22X24\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"purchase_order_id\":4,\"carton_name\":\"FALANA\",\"carton_size\":\"20X22X24\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:28:53.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:40', '2023-12-24 14:59:40'),
(133, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"purchase_order_id\":4,\"carton_name\":\"DHIMKANA\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":14,\"purchase_order_id\":4,\"carton_name\":\"DHIMKANA\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:28:53.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:40', '2023-12-24 14:59:40'),
(134, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 15, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":15,\"purchase_order_id\":4,\"carton_name\":\"Babu ne thana thaya\",\"carton_size\":\"10X12X14\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":15,\"purchase_order_id\":4,\"carton_name\":\"Babu ne thana thaya\",\"carton_size\":\"10X12X14\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:28:53.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:40', '2023-12-24 14:59:40'),
(135, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 16, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":16,\"purchase_order_id\":4,\"carton_name\":\"Moye Moye\",\"carton_size\":\"18X18X18\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":16,\"purchase_order_id\":4,\"carton_name\":\"Moye Moye\",\"carton_size\":\"18X18X18\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:28:53.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:40', '2023-12-24 14:59:40'),
(136, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"purchase_order_id\":4,\"carton_name\":\"FALANA\",\"carton_size\":\"20X22X24\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:42.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"purchase_order_id\":4,\"carton_name\":\"FALANA\",\"carton_size\":\"20X22X24\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:40.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:42', '2023-12-24 14:59:42'),
(137, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"purchase_order_id\":4,\"carton_name\":\"DHIMKANA\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:42.000000Z\",\"deleted_at\":null},\"old\":{\"id\":14,\"purchase_order_id\":4,\"carton_name\":\"DHIMKANA\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:40.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:42', '2023-12-24 14:59:42'),
(138, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 15, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":15,\"purchase_order_id\":4,\"carton_name\":\"Babu ne thana thaya\",\"carton_size\":\"10X12X14\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:42.000000Z\",\"deleted_at\":null},\"old\":{\"id\":15,\"purchase_order_id\":4,\"carton_name\":\"Babu ne thana thaya\",\"carton_size\":\"10X12X14\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:40.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:42', '2023-12-24 14:59:42'),
(139, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 16, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":16,\"purchase_order_id\":4,\"carton_name\":\"Moye Moye\",\"carton_size\":\"18X18X18\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:42.000000Z\",\"deleted_at\":null},\"old\":{\"id\":16,\"purchase_order_id\":4,\"carton_name\":\"Moye Moye\",\"carton_size\":\"18X18X18\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:40.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:42', '2023-12-24 14:59:42'),
(140, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"purchase_order_id\":4,\"carton_name\":\"FALANA\",\"carton_size\":\"20X22X24\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"purchase_order_id\":4,\"carton_name\":\"FALANA\",\"carton_size\":\"20X22X24\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:42.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:54', '2023-12-24 14:59:54'),
(141, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"purchase_order_id\":4,\"carton_name\":\"DHIMKANA\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":14,\"purchase_order_id\":4,\"carton_name\":\"DHIMKANA\",\"carton_size\":\"18X20X36\",\"quantity\":2000,\"rate\":\"2.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:42.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:54', '2023-12-24 14:59:54'),
(142, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 15, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":15,\"purchase_order_id\":4,\"carton_name\":\"Babu ne thana thaya\",\"carton_size\":\"10X12X14\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":15,\"purchase_order_id\":4,\"carton_name\":\"Babu ne thana thaya\",\"carton_size\":\"10X12X14\",\"quantity\":2500,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:42.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:54', '2023-12-24 14:59:54'),
(143, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 16, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":16,\"purchase_order_id\":4,\"carton_name\":\"Moye Moye\",\"carton_size\":\"18X18X18\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":16,\"purchase_order_id\":4,\"carton_name\":\"Moye Moye\",\"carton_size\":\"18X18X18\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":1,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-24T20:28:53.000000Z\",\"updated_at\":\"2023-12-24T20:29:42.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 14:59:54', '2023-12-24 14:59:54'),
(144, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"planning_by\":1,\"job_card_no\":\"013\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:30:33.000000Z\",\"updated_at\":\"2023-12-24T20:30:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:00:33', '2023-12-24 15:00:33'),
(145, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"job_card_id\":13,\"planning_id\":13,\"purchase_order_id\":4,\"purchase_order_item_id\":13,\"ups\":8,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T20:30:33.000000Z\",\"updated_at\":\"2023-12-24T20:30:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:00:33', '2023-12-24 15:00:33'),
(146, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"planning_by\":2,\"job_card_no\":\"013\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:30:33.000000Z\",\"updated_at\":\"2023-12-24T20:30:33.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"planning_by\":1,\"job_card_no\":\"013\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-24T20:30:33.000000Z\",\"updated_at\":\"2023-12-24T20:30:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:00:33', '2023-12-24 15:00:33'),
(147, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"job_card_id\":13,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:30:33.000000Z\",\"updated_at\":\"2023-12-24T20:30:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:00:33', '2023-12-24 15:00:33'),
(148, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"planning_by\":1,\"job_card_no\":\"014\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:30:44.000000Z\",\"updated_at\":\"2023-12-24T20:30:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:00:44', '2023-12-24 15:00:44'),
(149, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"job_card_id\":14,\"planning_id\":14,\"purchase_order_id\":4,\"purchase_order_item_id\":14,\"ups\":6,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T20:30:44.000000Z\",\"updated_at\":\"2023-12-24T20:30:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:00:44', '2023-12-24 15:00:44'),
(150, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"planning_by\":2,\"job_card_no\":\"014\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:30:44.000000Z\",\"updated_at\":\"2023-12-24T20:30:44.000000Z\",\"deleted_at\":null},\"old\":{\"id\":14,\"planning_by\":1,\"job_card_no\":\"014\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-24T20:30:44.000000Z\",\"updated_at\":\"2023-12-24T20:30:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:00:44', '2023-12-24 15:00:44'),
(151, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"job_card_id\":14,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:30:44.000000Z\",\"updated_at\":\"2023-12-24T20:30:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:00:44', '2023-12-24 15:00:44'),
(152, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 15, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":15,\"planning_by\":1,\"job_card_no\":\"015\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:30:58.000000Z\",\"updated_at\":\"2023-12-24T20:30:58.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:00:58', '2023-12-24 15:00:58'),
(153, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 15, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":15,\"job_card_id\":15,\"planning_id\":15,\"purchase_order_id\":4,\"purchase_order_item_id\":15,\"ups\":5,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T20:30:58.000000Z\",\"updated_at\":\"2023-12-24T20:30:58.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:00:58', '2023-12-24 15:00:58'),
(154, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 15, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":15,\"planning_by\":2,\"job_card_no\":\"015\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:30:58.000000Z\",\"updated_at\":\"2023-12-24T20:30:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":15,\"planning_by\":1,\"job_card_no\":\"015\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-24T20:30:58.000000Z\",\"updated_at\":\"2023-12-24T20:30:58.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:00:58', '2023-12-24 15:00:58'),
(155, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 15, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":15,\"job_card_id\":15,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:30:58.000000Z\",\"updated_at\":\"2023-12-24T20:30:58.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:00:58', '2023-12-24 15:00:58'),
(156, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 16, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":16,\"planning_by\":1,\"job_card_no\":\"016\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:31:09.000000Z\",\"updated_at\":\"2023-12-24T20:31:09.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:01:09', '2023-12-24 15:01:09'),
(157, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 16, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":16,\"job_card_id\":16,\"planning_id\":16,\"purchase_order_id\":4,\"purchase_order_item_id\":16,\"ups\":9,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-24T20:31:09.000000Z\",\"updated_at\":\"2023-12-24T20:31:09.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:01:09', '2023-12-24 15:01:09');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(158, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 16, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":16,\"planning_by\":2,\"job_card_no\":\"016\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-24T20:31:09.000000Z\",\"updated_at\":\"2023-12-24T20:31:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":16,\"planning_by\":1,\"job_card_no\":\"016\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-24T20:31:09.000000Z\",\"updated_at\":\"2023-12-24T20:31:09.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:01:09', '2023-12-24 15:01:09'),
(159, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 16, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":16,\"job_card_id\":16,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:31:09.000000Z\",\"updated_at\":\"2023-12-24T20:31:09.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:01:09', '2023-12-24 15:01:09'),
(160, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"planning_by\":3,\"job_card_no\":\"009\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":275,\"paper_divide\":4,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"gloss lamination\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-24T20:28:23.000000Z\",\"updated_at\":\"2023-12-24T20:34:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"planning_by\":3,\"job_card_no\":\"009\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:28:23.000000Z\",\"updated_at\":\"2023-12-24T20:30:42.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:04:40', '2023-12-24 15:04:40'),
(161, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"2325.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:34:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"2600.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T16:36:39.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:04:40', '2023-12-24 15:04:40'),
(162, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"planning_by\":2,\"job_card_no\":\"013\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":183,\"paper_divide\":6,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"red\",\"coating_machine\":\"gloss lamination\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"15.5\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-24T20:30:33.000000Z\",\"updated_at\":\"2023-12-24T20:35:02.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"planning_by\":2,\"job_card_no\":\"013\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"red\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:30:33.000000Z\",\"updated_at\":\"2023-12-24T20:32:47.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:05:02', '2023-12-24 15:05:02'),
(163, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"2141.67\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:35:02.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"2325.00\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:34:40.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:05:02', '2023-12-24 15:05:02'),
(164, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"planning_by\":3,\"job_card_no\":\"010\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":275,\"paper_divide\":4,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"gloss lamination\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Leafing\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-24T20:28:32.000000Z\",\"updated_at\":\"2023-12-24T20:36:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"planning_by\":3,\"job_card_no\":\"010\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:28:32.000000Z\",\"updated_at\":\"2023-12-24T20:30:47.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:06:00', '2023-12-24 15:06:00'),
(165, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"1866.67\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:36:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"2141.67\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:35:02.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:06:00', '2023-12-24 15:06:00'),
(166, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"planning_by\":2,\"job_card_no\":\"014\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":183,\"paper_divide\":6,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"red\",\"coating_machine\":\"gloss lamination\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Leafing\",\"roll_used\":\"15.5\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-24T20:30:44.000000Z\",\"updated_at\":\"2023-12-24T20:36:15.000000Z\",\"deleted_at\":null},\"old\":{\"id\":14,\"planning_by\":2,\"job_card_no\":\"014\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"red\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:30:44.000000Z\",\"updated_at\":\"2023-12-24T20:32:41.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:06:15', '2023-12-24 15:06:15'),
(167, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"1683.34\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:36:15.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"1866.67\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:36:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:06:15', '2023-12-24 15:06:15'),
(168, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"planning_by\":3,\"job_card_no\":\"011\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":220,\"paper_divide\":5,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"gloss lamination\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Both\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-24T20:29:01.000000Z\",\"updated_at\":\"2023-12-24T20:36:57.000000Z\",\"deleted_at\":null},\"old\":{\"id\":11,\"planning_by\":3,\"job_card_no\":\"011\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:29:01.000000Z\",\"updated_at\":\"2023-12-24T20:30:18.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:06:57', '2023-12-24 15:06:57'),
(169, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"1463.34\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:36:57.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"1683.34\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:36:15.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:06:57', '2023-12-24 15:06:57'),
(170, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 15, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":15,\"planning_by\":2,\"job_card_no\":\"015\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":183,\"paper_divide\":6,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"red\",\"coating_machine\":\"gloss lamination\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Both\",\"roll_used\":\"15.5\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-24T20:30:58.000000Z\",\"updated_at\":\"2023-12-24T20:37:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":15,\"planning_by\":2,\"job_card_no\":\"015\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"red\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:30:58.000000Z\",\"updated_at\":\"2023-12-24T20:32:35.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:07:28', '2023-12-24 15:07:28'),
(171, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"1280.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:37:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"1463.34\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:36:57.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:07:28', '2023-12-24 15:07:28'),
(172, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"planning_by\":3,\"job_card_no\":\"012\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"gloss lamination\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-24T20:29:16.000000Z\",\"updated_at\":\"2023-12-24T20:38:18.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"planning_by\":3,\"job_card_no\":\"012\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:29:16.000000Z\",\"updated_at\":\"2023-12-24T20:30:14.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:08:18', '2023-12-24 15:08:18'),
(173, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"730.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:38:18.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"1280.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:37:28.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:08:18', '2023-12-24 15:08:18'),
(174, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 16, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":16,\"planning_by\":2,\"job_card_no\":\"016\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":183,\"paper_divide\":6,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"red\",\"coating_machine\":\"gloss lamination\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"15.5\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-24T20:31:09.000000Z\",\"updated_at\":\"2023-12-24T20:38:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":16,\"planning_by\":2,\"job_card_no\":\"016\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"red\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-24T20:31:09.000000Z\",\"updated_at\":\"2023-12-24T20:32:28.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:08:34', '2023-12-24 15:08:34'),
(175, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"546.68\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:38:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"730.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:38:18.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-24 15:08:34', '2023-12-24 15:08:34'),
(176, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"client_id\":1,\"po_no\":\"215114\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:34:29.000000Z\",\"updated_at\":\"2023-12-25T12:34:29.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:29', '2023-12-25 07:04:29'),
(177, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 17, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":17,\"purchase_order_id\":5,\"carton_name\":\"NB\",\"carton_size\":\"57X37X100\",\"quantity\":6543,\"rate\":\"2.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:29.000000Z\",\"updated_at\":\"2023-12-25T12:34:29.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:29', '2023-12-25 07:04:29'),
(178, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 18, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":18,\"purchase_order_id\":5,\"carton_name\":\"HG\",\"carton_size\":\"57X37X100\",\"quantity\":8765,\"rate\":\"1.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:29.000000Z\",\"updated_at\":\"2023-12-25T12:34:29.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:29', '2023-12-25 07:04:29'),
(179, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 19, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":19,\"purchase_order_id\":5,\"carton_name\":\"YT\",\"carton_size\":\"57X37X100\",\"quantity\":675,\"rate\":\"5.00\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:29.000000Z\",\"updated_at\":\"2023-12-25T12:34:29.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:29', '2023-12-25 07:04:29'),
(180, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"client_id\":1,\"po_no\":\"316545\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:34:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:33', '2023-12-25 07:04:33'),
(181, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 20, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":20,\"purchase_order_id\":6,\"carton_name\":\"Ayein Bengan\",\"carton_size\":\"20X22X24\",\"quantity\":1000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:34:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:33', '2023-12-25 07:04:33'),
(182, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 21, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":21,\"purchase_order_id\":6,\"carton_name\":\"Baby\",\"carton_size\":\"18X20X36\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:34:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:33', '2023-12-25 07:04:33'),
(183, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 22, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":22,\"purchase_order_id\":6,\"carton_name\":\"Sona\",\"carton_size\":\"10X12X14\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:34:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:33', '2023-12-25 07:04:33'),
(184, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 23, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":23,\"purchase_order_id\":6,\"carton_name\":\"Mona\",\"carton_size\":\"18X18X18\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:34:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:33', '2023-12-25 07:04:33'),
(185, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"client_id\":1,\"po_no\":\"215114\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:34:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:44', '2023-12-25 07:04:44'),
(186, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 24, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":24,\"purchase_order_id\":7,\"carton_name\":\"NB\",\"carton_size\":\"57X37X100\",\"quantity\":6543,\"rate\":\"2.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:34:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:44', '2023-12-25 07:04:44'),
(187, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 25, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":25,\"purchase_order_id\":7,\"carton_name\":\"HG\",\"carton_size\":\"57X37X100\",\"quantity\":8765,\"rate\":\"1.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:34:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:44', '2023-12-25 07:04:44'),
(188, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 26, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":26,\"purchase_order_id\":7,\"carton_name\":\"YT\",\"carton_size\":\"57X37X100\",\"quantity\":675,\"rate\":\"5.00\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:34:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:44', '2023-12-25 07:04:44'),
(189, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 27, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":27,\"purchase_order_id\":7,\"carton_name\":\"TR\",\"carton_size\":\"57X37X100\",\"quantity\":7654,\"rate\":\"1.70\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:34:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:44', '2023-12-25 07:04:44'),
(190, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"client_id\":1,\"po_no\":\"316545\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":2,\"status_id\":2,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:34:53.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"client_id\":1,\"po_no\":\"316545\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:34:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:53', '2023-12-25 07:04:53'),
(191, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"client_id\":1,\"po_no\":\"215114\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":3,\"status_id\":2,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:34:57.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"client_id\":1,\"po_no\":\"215114\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:34:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:04:57', '2023-12-25 07:04:57'),
(192, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 24, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":24,\"purchase_order_id\":7,\"carton_name\":\"NB\",\"carton_size\":\"57X37X100\",\"quantity\":6543,\"rate\":\"2.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":24,\"purchase_order_id\":7,\"carton_name\":\"NB\",\"carton_size\":\"57X37X100\",\"quantity\":6543,\"rate\":\"2.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:34:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:09', '2023-12-25 07:05:09'),
(193, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 25, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":25,\"purchase_order_id\":7,\"carton_name\":\"HG\",\"carton_size\":\"57X37X100\",\"quantity\":8765,\"rate\":\"1.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":25,\"purchase_order_id\":7,\"carton_name\":\"HG\",\"carton_size\":\"57X37X100\",\"quantity\":8765,\"rate\":\"1.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:34:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:09', '2023-12-25 07:05:09'),
(194, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 26, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":26,\"purchase_order_id\":7,\"carton_name\":\"YT\",\"carton_size\":\"57X37X100\",\"quantity\":675,\"rate\":\"5.00\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":26,\"purchase_order_id\":7,\"carton_name\":\"YT\",\"carton_size\":\"57X37X100\",\"quantity\":675,\"rate\":\"5.00\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:34:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:09', '2023-12-25 07:05:09'),
(195, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 27, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":27,\"purchase_order_id\":7,\"carton_name\":\"TR\",\"carton_size\":\"57X37X100\",\"quantity\":7654,\"rate\":\"1.70\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":27,\"purchase_order_id\":7,\"carton_name\":\"TR\",\"carton_size\":\"57X37X100\",\"quantity\":7654,\"rate\":\"1.70\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:34:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:09', '2023-12-25 07:05:09'),
(196, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 24, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":24,\"purchase_order_id\":7,\"carton_name\":\"NB\",\"carton_size\":\"57X37X100\",\"quantity\":6543,\"rate\":\"2.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:10.000000Z\",\"deleted_at\":null},\"old\":{\"id\":24,\"purchase_order_id\":7,\"carton_name\":\"NB\",\"carton_size\":\"57X37X100\",\"quantity\":6543,\"rate\":\"2.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:09.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:10', '2023-12-25 07:05:10'),
(197, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 25, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":25,\"purchase_order_id\":7,\"carton_name\":\"HG\",\"carton_size\":\"57X37X100\",\"quantity\":8765,\"rate\":\"1.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:10.000000Z\",\"deleted_at\":null},\"old\":{\"id\":25,\"purchase_order_id\":7,\"carton_name\":\"HG\",\"carton_size\":\"57X37X100\",\"quantity\":8765,\"rate\":\"1.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:09.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:10', '2023-12-25 07:05:10'),
(198, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 26, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":26,\"purchase_order_id\":7,\"carton_name\":\"YT\",\"carton_size\":\"57X37X100\",\"quantity\":675,\"rate\":\"5.00\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:10.000000Z\",\"deleted_at\":null},\"old\":{\"id\":26,\"purchase_order_id\":7,\"carton_name\":\"YT\",\"carton_size\":\"57X37X100\",\"quantity\":675,\"rate\":\"5.00\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:09.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:10', '2023-12-25 07:05:10'),
(199, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 27, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":27,\"purchase_order_id\":7,\"carton_name\":\"TR\",\"carton_size\":\"57X37X100\",\"quantity\":7654,\"rate\":\"1.70\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:10.000000Z\",\"deleted_at\":null},\"old\":{\"id\":27,\"purchase_order_id\":7,\"carton_name\":\"TR\",\"carton_size\":\"57X37X100\",\"quantity\":7654,\"rate\":\"1.70\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:09.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:10', '2023-12-25 07:05:10'),
(200, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 24, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":24,\"purchase_order_id\":7,\"carton_name\":\"NB\",\"carton_size\":\"57X37X100\",\"quantity\":6543,\"rate\":\"2.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:13.000000Z\",\"deleted_at\":null},\"old\":{\"id\":24,\"purchase_order_id\":7,\"carton_name\":\"NB\",\"carton_size\":\"57X37X100\",\"quantity\":6543,\"rate\":\"2.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:10.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:13', '2023-12-25 07:05:13'),
(201, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 25, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":25,\"purchase_order_id\":7,\"carton_name\":\"HG\",\"carton_size\":\"57X37X100\",\"quantity\":8765,\"rate\":\"1.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:13.000000Z\",\"deleted_at\":null},\"old\":{\"id\":25,\"purchase_order_id\":7,\"carton_name\":\"HG\",\"carton_size\":\"57X37X100\",\"quantity\":8765,\"rate\":\"1.55\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":2,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:10.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:13', '2023-12-25 07:05:13'),
(202, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 26, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":26,\"purchase_order_id\":7,\"carton_name\":\"YT\",\"carton_size\":\"57X37X100\",\"quantity\":675,\"rate\":\"5.00\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:13.000000Z\",\"deleted_at\":null},\"old\":{\"id\":26,\"purchase_order_id\":7,\"carton_name\":\"YT\",\"carton_size\":\"57X37X100\",\"quantity\":675,\"rate\":\"5.00\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:10.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:13', '2023-12-25 07:05:13'),
(203, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 27, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":27,\"purchase_order_id\":7,\"carton_name\":\"TR\",\"carton_size\":\"57X37X100\",\"quantity\":7654,\"rate\":\"1.70\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:13.000000Z\",\"deleted_at\":null},\"old\":{\"id\":27,\"purchase_order_id\":7,\"carton_name\":\"TR\",\"carton_size\":\"57X37X100\",\"quantity\":7654,\"rate\":\"1.70\",\"coating_type_id\":2,\"other_coating_type_id\":4,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:44.000000Z\",\"updated_at\":\"2023-12-25T12:35:10.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:13', '2023-12-25 07:05:13'),
(204, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 20, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":20,\"purchase_order_id\":6,\"carton_name\":\"Ayein Bengan\",\"carton_size\":\"20X22X24\",\"quantity\":1000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:48.000000Z\",\"deleted_at\":null},\"old\":{\"id\":20,\"purchase_order_id\":6,\"carton_name\":\"Ayein Bengan\",\"carton_size\":\"20X22X24\",\"quantity\":1000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:34:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:48', '2023-12-25 07:05:48');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(205, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 21, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":21,\"purchase_order_id\":6,\"carton_name\":\"Baby\",\"carton_size\":\"18X20X36\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:48.000000Z\",\"deleted_at\":null},\"old\":{\"id\":21,\"purchase_order_id\":6,\"carton_name\":\"Baby\",\"carton_size\":\"18X20X36\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:34:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:48', '2023-12-25 07:05:48'),
(206, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 22, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":22,\"purchase_order_id\":6,\"carton_name\":\"Sona\",\"carton_size\":\"10X12X14\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:48.000000Z\",\"deleted_at\":null},\"old\":{\"id\":22,\"purchase_order_id\":6,\"carton_name\":\"Sona\",\"carton_size\":\"10X12X14\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:34:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:48', '2023-12-25 07:05:48'),
(207, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 23, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":23,\"purchase_order_id\":6,\"carton_name\":\"Mona\",\"carton_size\":\"18X18X18\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:48.000000Z\",\"deleted_at\":null},\"old\":{\"id\":23,\"purchase_order_id\":6,\"carton_name\":\"Mona\",\"carton_size\":\"18X18X18\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:34:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:48', '2023-12-25 07:05:48'),
(208, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 20, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":20,\"purchase_order_id\":6,\"carton_name\":\"Ayein Bengan\",\"carton_size\":\"20X22X24\",\"quantity\":1000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:49.000000Z\",\"deleted_at\":null},\"old\":{\"id\":20,\"purchase_order_id\":6,\"carton_name\":\"Ayein Bengan\",\"carton_size\":\"20X22X24\",\"quantity\":1000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:48.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:49', '2023-12-25 07:05:49'),
(209, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 21, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":21,\"purchase_order_id\":6,\"carton_name\":\"Baby\",\"carton_size\":\"18X20X36\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:49.000000Z\",\"deleted_at\":null},\"old\":{\"id\":21,\"purchase_order_id\":6,\"carton_name\":\"Baby\",\"carton_size\":\"18X20X36\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:48.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:49', '2023-12-25 07:05:49'),
(210, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 22, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":22,\"purchase_order_id\":6,\"carton_name\":\"Sona\",\"carton_size\":\"10X12X14\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:49.000000Z\",\"deleted_at\":null},\"old\":{\"id\":22,\"purchase_order_id\":6,\"carton_name\":\"Sona\",\"carton_size\":\"10X12X14\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:48.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:49', '2023-12-25 07:05:49'),
(211, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 23, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":23,\"purchase_order_id\":6,\"carton_name\":\"Mona\",\"carton_size\":\"18X18X18\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:49.000000Z\",\"deleted_at\":null},\"old\":{\"id\":23,\"purchase_order_id\":6,\"carton_name\":\"Mona\",\"carton_size\":\"18X18X18\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:48.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:49', '2023-12-25 07:05:49'),
(212, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 20, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":20,\"purchase_order_id\":6,\"carton_name\":\"Ayein Bengan\",\"carton_size\":\"20X22X24\",\"quantity\":1000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":20,\"purchase_order_id\":6,\"carton_name\":\"Ayein Bengan\",\"carton_size\":\"20X22X24\",\"quantity\":1000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:49.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:54', '2023-12-25 07:05:54'),
(213, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 21, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":21,\"purchase_order_id\":6,\"carton_name\":\"Baby\",\"carton_size\":\"18X20X36\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":21,\"purchase_order_id\":6,\"carton_name\":\"Baby\",\"carton_size\":\"18X20X36\",\"quantity\":1500,\"rate\":\"2.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":2,\"paper_type_id\":2,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:49.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:54', '2023-12-25 07:05:54'),
(214, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 22, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":22,\"purchase_order_id\":6,\"carton_name\":\"Sona\",\"carton_size\":\"10X12X14\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":22,\"purchase_order_id\":6,\"carton_name\":\"Sona\",\"carton_size\":\"10X12X14\",\"quantity\":1800,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":3,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:49.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:54', '2023-12-25 07:05:54'),
(215, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 23, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":23,\"purchase_order_id\":6,\"carton_name\":\"Mona\",\"carton_size\":\"18X18X18\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":23,\"purchase_order_id\":6,\"carton_name\":\"Mona\",\"carton_size\":\"18X18X18\",\"quantity\":2000,\"rate\":\"1.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T12:34:33.000000Z\",\"updated_at\":\"2023-12-25T12:35:49.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:05:54', '2023-12-25 07:05:54'),
(216, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 17, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":17,\"planning_by\":1,\"job_card_no\":\"017\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:36:17.000000Z\",\"updated_at\":\"2023-12-25T12:36:17.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:17', '2023-12-25 07:06:17'),
(217, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 17, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":17,\"job_card_id\":17,\"planning_id\":21,\"purchase_order_id\":6,\"purchase_order_item_id\":20,\"ups\":2,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-25T12:36:17.000000Z\",\"updated_at\":\"2023-12-25T12:36:17.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:17', '2023-12-25 07:06:17'),
(218, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 17, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":17,\"planning_by\":2,\"job_card_no\":\"017\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:36:17.000000Z\",\"updated_at\":\"2023-12-25T12:36:17.000000Z\",\"deleted_at\":null},\"old\":{\"id\":17,\"planning_by\":1,\"job_card_no\":\"017\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-25T12:36:17.000000Z\",\"updated_at\":\"2023-12-25T12:36:17.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:17', '2023-12-25 07:06:17'),
(219, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 17, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":17,\"job_card_id\":17,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:36:17.000000Z\",\"updated_at\":\"2023-12-25T12:36:17.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:17', '2023-12-25 07:06:17'),
(220, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 18, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":18,\"planning_by\":1,\"job_card_no\":\"018\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:36:42.000000Z\",\"updated_at\":\"2023-12-25T12:36:42.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:42', '2023-12-25 07:06:42'),
(221, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 18, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":18,\"job_card_id\":18,\"planning_id\":22,\"purchase_order_id\":6,\"purchase_order_item_id\":21,\"ups\":2,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-25T12:36:42.000000Z\",\"updated_at\":\"2023-12-25T12:36:42.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:42', '2023-12-25 07:06:42'),
(222, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 18, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":18,\"planning_by\":2,\"job_card_no\":\"018\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:36:42.000000Z\",\"updated_at\":\"2023-12-25T12:36:42.000000Z\",\"deleted_at\":null},\"old\":{\"id\":18,\"planning_by\":1,\"job_card_no\":\"018\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-25T12:36:42.000000Z\",\"updated_at\":\"2023-12-25T12:36:42.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:42', '2023-12-25 07:06:42'),
(223, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 18, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":18,\"job_card_id\":18,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:36:42.000000Z\",\"updated_at\":\"2023-12-25T12:36:42.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:42', '2023-12-25 07:06:42'),
(224, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 19, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":19,\"planning_by\":1,\"job_card_no\":\"019\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:36:51.000000Z\",\"updated_at\":\"2023-12-25T12:36:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:51', '2023-12-25 07:06:51'),
(225, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 19, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":19,\"job_card_id\":19,\"planning_id\":23,\"purchase_order_id\":6,\"purchase_order_item_id\":22,\"ups\":2,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-25T12:36:51.000000Z\",\"updated_at\":\"2023-12-25T12:36:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:51', '2023-12-25 07:06:51'),
(226, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 19, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":19,\"planning_by\":2,\"job_card_no\":\"019\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:36:51.000000Z\",\"updated_at\":\"2023-12-25T12:36:51.000000Z\",\"deleted_at\":null},\"old\":{\"id\":19,\"planning_by\":1,\"job_card_no\":\"019\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-25T12:36:51.000000Z\",\"updated_at\":\"2023-12-25T12:36:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:51', '2023-12-25 07:06:51'),
(227, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 19, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":19,\"job_card_id\":19,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:36:51.000000Z\",\"updated_at\":\"2023-12-25T12:36:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:51', '2023-12-25 07:06:51'),
(228, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 20, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":20,\"planning_by\":1,\"job_card_no\":\"020\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:36:59.000000Z\",\"updated_at\":\"2023-12-25T12:36:59.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:59', '2023-12-25 07:06:59'),
(229, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 20, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":20,\"job_card_id\":20,\"planning_id\":24,\"purchase_order_id\":6,\"purchase_order_item_id\":23,\"ups\":2,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-25T12:36:59.000000Z\",\"updated_at\":\"2023-12-25T12:36:59.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:59', '2023-12-25 07:06:59'),
(230, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 20, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":20,\"planning_by\":2,\"job_card_no\":\"020\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:36:59.000000Z\",\"updated_at\":\"2023-12-25T12:36:59.000000Z\",\"deleted_at\":null},\"old\":{\"id\":20,\"planning_by\":1,\"job_card_no\":\"020\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-25T12:36:59.000000Z\",\"updated_at\":\"2023-12-25T12:36:59.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:59', '2023-12-25 07:06:59'),
(231, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 20, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":20,\"job_card_id\":20,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:36:59.000000Z\",\"updated_at\":\"2023-12-25T12:36:59.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:06:59', '2023-12-25 07:06:59'),
(232, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 21, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":21,\"planning_by\":1,\"job_card_no\":\"021\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:37:07.000000Z\",\"updated_at\":\"2023-12-25T12:37:07.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:07', '2023-12-25 07:07:07'),
(233, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 21, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":21,\"job_card_id\":21,\"planning_id\":17,\"purchase_order_id\":7,\"purchase_order_item_id\":24,\"ups\":2,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-25T12:37:07.000000Z\",\"updated_at\":\"2023-12-25T12:37:07.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:07', '2023-12-25 07:07:07'),
(234, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 21, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":21,\"planning_by\":3,\"job_card_no\":\"021\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:37:07.000000Z\",\"updated_at\":\"2023-12-25T12:37:07.000000Z\",\"deleted_at\":null},\"old\":{\"id\":21,\"planning_by\":1,\"job_card_no\":\"021\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-25T12:37:07.000000Z\",\"updated_at\":\"2023-12-25T12:37:07.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:07', '2023-12-25 07:07:07'),
(235, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 21, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":21,\"job_card_id\":21,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:37:07.000000Z\",\"updated_at\":\"2023-12-25T12:37:07.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:07', '2023-12-25 07:07:07'),
(236, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 22, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":22,\"planning_by\":1,\"job_card_no\":\"022\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:37:17.000000Z\",\"updated_at\":\"2023-12-25T12:37:17.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:17', '2023-12-25 07:07:17'),
(237, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 22, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":22,\"job_card_id\":22,\"planning_id\":18,\"purchase_order_id\":7,\"purchase_order_item_id\":25,\"ups\":2,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-25T12:37:17.000000Z\",\"updated_at\":\"2023-12-25T12:37:17.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:17', '2023-12-25 07:07:17'),
(238, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 22, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":22,\"planning_by\":3,\"job_card_no\":\"022\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:37:17.000000Z\",\"updated_at\":\"2023-12-25T12:37:17.000000Z\",\"deleted_at\":null},\"old\":{\"id\":22,\"planning_by\":1,\"job_card_no\":\"022\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-25T12:37:17.000000Z\",\"updated_at\":\"2023-12-25T12:37:17.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:17', '2023-12-25 07:07:17'),
(239, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 22, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":22,\"job_card_id\":22,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:37:17.000000Z\",\"updated_at\":\"2023-12-25T12:37:17.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:17', '2023-12-25 07:07:17'),
(240, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 23, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":23,\"planning_by\":1,\"job_card_no\":\"023\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:37:33.000000Z\",\"updated_at\":\"2023-12-25T12:37:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:33', '2023-12-25 07:07:33'),
(241, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 23, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":23,\"job_card_id\":23,\"planning_id\":19,\"purchase_order_id\":7,\"purchase_order_item_id\":26,\"ups\":2,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-25T12:37:33.000000Z\",\"updated_at\":\"2023-12-25T12:37:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:33', '2023-12-25 07:07:33'),
(242, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 23, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":23,\"planning_by\":3,\"job_card_no\":\"023\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:37:33.000000Z\",\"updated_at\":\"2023-12-25T12:37:33.000000Z\",\"deleted_at\":null},\"old\":{\"id\":23,\"planning_by\":1,\"job_card_no\":\"023\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-25T12:37:33.000000Z\",\"updated_at\":\"2023-12-25T12:37:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:33', '2023-12-25 07:07:33'),
(243, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 23, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":23,\"job_card_id\":23,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:37:33.000000Z\",\"updated_at\":\"2023-12-25T12:37:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:33', '2023-12-25 07:07:33'),
(244, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 24, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":24,\"planning_by\":1,\"job_card_no\":\"024\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:37:41.000000Z\",\"updated_at\":\"2023-12-25T12:37:41.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:41', '2023-12-25 07:07:41'),
(245, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 24, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":24,\"job_card_id\":24,\"planning_id\":20,\"purchase_order_id\":7,\"purchase_order_item_id\":27,\"ups\":2,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-25T12:37:41.000000Z\",\"updated_at\":\"2023-12-25T12:37:41.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:41', '2023-12-25 07:07:41'),
(246, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 24, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":24,\"planning_by\":3,\"job_card_no\":\"024\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T12:37:41.000000Z\",\"updated_at\":\"2023-12-25T12:37:41.000000Z\",\"deleted_at\":null},\"old\":{\"id\":24,\"planning_by\":1,\"job_card_no\":\"024\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-25T12:37:41.000000Z\",\"updated_at\":\"2023-12-25T12:37:41.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:41', '2023-12-25 07:07:41'),
(247, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 24, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":24,\"job_card_id\":24,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:37:41.000000Z\",\"updated_at\":\"2023-12-25T12:37:41.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:07:41', '2023-12-25 07:07:41'),
(248, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 17, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":17,\"planning_by\":2,\"job_card_no\":\"017\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"12X25\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T12:36:17.000000Z\",\"updated_at\":\"2023-12-25T12:43:06.000000Z\",\"deleted_at\":null},\"old\":{\"id\":17,\"planning_by\":2,\"job_card_no\":\"017\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"12X25\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:36:17.000000Z\",\"updated_at\":\"2023-12-25T12:39:30.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:13:06', '2023-12-25 07:13:06'),
(249, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"-3.32\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:43:06.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"546.68\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-24T20:38:34.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:13:06', '2023-12-25 07:13:06'),
(250, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 17, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":17,\"planning_by\":2,\"job_card_no\":\"017\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"12X25\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":275,\"paper_divide\":4,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T12:36:17.000000Z\",\"updated_at\":\"2023-12-25T12:44:06.000000Z\",\"deleted_at\":null},\"old\":{\"id\":17,\"planning_by\":2,\"job_card_no\":\"017\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"12X25\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T12:36:17.000000Z\",\"updated_at\":\"2023-12-25T12:43:06.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:14:06', '2023-12-25 07:14:06'),
(251, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"-278.32\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:44:06.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"-3.32\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:43:06.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:14:06', '2023-12-25 07:14:06'),
(252, 'Material Inward', 'Material Inward has been created', 'App\\Models\\MaterialInward', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"vendor_id\":1,\"bill_no\":\"1234\",\"bill_date\":\"2023-12-25T00:00:00.000000Z\",\"subtotal\":null,\"total_gst\":null,\"total\":null,\"created_at\":\"2023-12-25T12:46:48.000000Z\",\"updated_at\":\"2023-12-25T12:46:48.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:16:48', '2023-12-25 07:16:48'),
(253, 'Material Inward Item', 'Material Inward Item has been created', 'App\\Models\\MaterialInwardItem', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"material_inward_id\":2,\"category_id\":2,\"product_id\":1,\"item_name\":\"23X38-290\",\"quantity\":467,\"hsn\":\"4810\",\"weight_per_piece\":\"0.16\",\"total_weight\":\"7238.50\",\"unit\":\"Sheets\",\"rate_on\":\"10.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"100.00\",\"total_item\":\"46700.00\",\"rate\":\"72385.00\",\"gst\":\"18.00\",\"gst_amount\":\"13029.30\",\"amount\":\"72385.00\",\"created_at\":\"2023-12-25T12:46:48.000000Z\",\"updated_at\":\"2023-12-25T12:46:48.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:16:48', '2023-12-25 07:16:48'),
(254, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"46421.68\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:46:48.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"-278.32\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:44:06.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:16:48', '2023-12-25 07:16:48');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(255, 'Material Inward', 'Material Inward has been updated', 'App\\Models\\MaterialInward', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"vendor_id\":1,\"bill_no\":\"1234\",\"bill_date\":\"2023-12-25T00:00:00.000000Z\",\"subtotal\":\"72385.00\",\"total_gst\":\"13029.30\",\"total\":\"85414.30\",\"created_at\":\"2023-12-25T12:46:48.000000Z\",\"updated_at\":\"2023-12-25T12:46:48.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"vendor_id\":\"1\",\"bill_no\":\"1234\",\"bill_date\":\"2023-12-25T00:00:00.000000Z\",\"subtotal\":null,\"total_gst\":null,\"total\":null,\"created_at\":\"2023-12-25T12:46:48.000000Z\",\"updated_at\":\"2023-12-25T12:46:48.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:16:48', '2023-12-25 07:16:48'),
(256, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 18, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":18,\"planning_by\":2,\"job_card_no\":\"018\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"12X25\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Leafing\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T12:36:42.000000Z\",\"updated_at\":\"2023-12-25T12:48:27.000000Z\",\"deleted_at\":null},\"old\":{\"id\":18,\"planning_by\":2,\"job_card_no\":\"018\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"12X25\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:36:42.000000Z\",\"updated_at\":\"2023-12-25T12:39:25.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:18:27', '2023-12-25 07:18:27'),
(257, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"45871.68\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:48:27.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"46421.68\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:46:48.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:18:27', '2023-12-25 07:18:27'),
(258, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 19, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":19,\"planning_by\":2,\"job_card_no\":\"019\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"12X25\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":367,\"paper_divide\":3,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Both\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T12:36:51.000000Z\",\"updated_at\":\"2023-12-25T12:50:53.000000Z\",\"deleted_at\":null},\"old\":{\"id\":19,\"planning_by\":2,\"job_card_no\":\"019\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"12X25\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:36:51.000000Z\",\"updated_at\":\"2023-12-25T12:39:21.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:20:53', '2023-12-25 07:20:53'),
(259, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"45505.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:50:53.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"45871.68\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:48:27.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:20:53', '2023-12-25 07:20:53'),
(260, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 20, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":20,\"planning_by\":2,\"job_card_no\":\"020\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T12:36:59.000000Z\",\"updated_at\":\"2023-12-25T12:51:56.000000Z\",\"deleted_at\":null},\"old\":{\"id\":20,\"planning_by\":2,\"job_card_no\":\"020\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:36:59.000000Z\",\"updated_at\":\"2023-12-25T12:39:16.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:21:56', '2023-12-25 07:21:56'),
(261, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"44955.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:51:56.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"45505.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:50:53.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:21:56', '2023-12-25 07:21:56'),
(262, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 21, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":21,\"planning_by\":3,\"job_card_no\":\"021\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":220,\"paper_divide\":5,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T12:37:07.000000Z\",\"updated_at\":\"2023-12-25T12:53:23.000000Z\",\"deleted_at\":null},\"old\":{\"id\":21,\"planning_by\":3,\"job_card_no\":\"021\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:37:07.000000Z\",\"updated_at\":\"2023-12-25T12:39:11.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:23:23', '2023-12-25 07:23:23'),
(263, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"44735.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:53:23.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"44955.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:51:56.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:23:24', '2023-12-25 07:23:24'),
(264, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 22, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":22,\"planning_by\":3,\"job_card_no\":\"022\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Leafing\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T12:37:17.000000Z\",\"updated_at\":\"2023-12-25T12:54:12.000000Z\",\"deleted_at\":null},\"old\":{\"id\":22,\"planning_by\":3,\"job_card_no\":\"022\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:37:17.000000Z\",\"updated_at\":\"2023-12-25T12:39:07.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:24:12', '2023-12-25 07:24:12'),
(265, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"44185.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:54:12.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"44735.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:53:23.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:24:12', '2023-12-25 07:24:12'),
(266, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 23, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":23,\"planning_by\":3,\"job_card_no\":\"023\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Both\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T12:37:33.000000Z\",\"updated_at\":\"2023-12-25T12:54:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":23,\"planning_by\":3,\"job_card_no\":\"023\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:37:33.000000Z\",\"updated_at\":\"2023-12-25T12:39:02.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:24:54', '2023-12-25 07:24:54'),
(267, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"43635.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:54:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"44185.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:54:12.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:24:54', '2023-12-25 07:24:54'),
(268, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 24, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":24,\"planning_by\":3,\"job_card_no\":\"024\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T12:37:41.000000Z\",\"updated_at\":\"2023-12-25T12:55:45.000000Z\",\"deleted_at\":null},\"old\":{\"id\":24,\"planning_by\":3,\"job_card_no\":\"024\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-25T12:37:41.000000Z\",\"updated_at\":\"2023-12-25T12:38:57.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:25:45', '2023-12-25 07:25:45'),
(269, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 24, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":24,\"planning_by\":3,\"job_card_no\":\"024\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T12:37:41.000000Z\",\"updated_at\":\"2023-12-25T12:56:03.000000Z\",\"deleted_at\":null},\"old\":{\"id\":24,\"planning_by\":3,\"job_card_no\":\"024\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T12:37:41.000000Z\",\"updated_at\":\"2023-12-25T12:55:45.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:26:03', '2023-12-25 07:26:03'),
(270, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"43085.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:56:03.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"43635.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:54:54.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 07:26:03', '2023-12-25 07:26:03'),
(271, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"client_id\":1,\"po_no\":\"215114\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:00', '2023-12-25 09:37:00'),
(272, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 28, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":28,\"purchase_order_id\":8,\"carton_name\":\"KK\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":2,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:00', '2023-12-25 09:37:00'),
(273, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 29, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":29,\"purchase_order_id\":8,\"carton_name\":\"LL\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:00', '2023-12-25 09:37:00'),
(274, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 30, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":30,\"purchase_order_id\":8,\"carton_name\":\"QQ\",\"carton_size\":\"100X12X90\",\"quantity\":2323,\"rate\":\"1.70\",\"coating_type_id\":5,\"other_coating_type_id\":3,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:00', '2023-12-25 09:37:00'),
(275, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 31, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":31,\"purchase_order_id\":8,\"carton_name\":\"GG\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.70\",\"coating_type_id\":3,\"other_coating_type_id\":3,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:00', '2023-12-25 09:37:00'),
(276, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"client_id\":1,\"po_no\":\"215114\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":3,\"status_id\":2,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"client_id\":1,\"po_no\":\"215114\",\"po_date\":\"2023-12-25T00:00:00.000000Z\",\"made_by\":1,\"designer\":null,\"status_id\":2,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:28', '2023-12-25 09:37:28'),
(277, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 28, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":28,\"purchase_order_id\":8,\"carton_name\":\"KK\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":2,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:44.000000Z\",\"deleted_at\":null},\"old\":{\"id\":28,\"purchase_order_id\":8,\"carton_name\":\"KK\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":2,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:44', '2023-12-25 09:37:44'),
(278, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 29, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":29,\"purchase_order_id\":8,\"carton_name\":\"LL\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:44.000000Z\",\"deleted_at\":null},\"old\":{\"id\":29,\"purchase_order_id\":8,\"carton_name\":\"LL\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:44', '2023-12-25 09:37:44'),
(279, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 30, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":30,\"purchase_order_id\":8,\"carton_name\":\"QQ\",\"carton_size\":\"100X12X90\",\"quantity\":2323,\"rate\":\"1.70\",\"coating_type_id\":5,\"other_coating_type_id\":3,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:44.000000Z\",\"deleted_at\":null},\"old\":{\"id\":30,\"purchase_order_id\":8,\"carton_name\":\"QQ\",\"carton_size\":\"100X12X90\",\"quantity\":2323,\"rate\":\"1.70\",\"coating_type_id\":5,\"other_coating_type_id\":3,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:44', '2023-12-25 09:37:44'),
(280, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 31, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":31,\"purchase_order_id\":8,\"carton_name\":\"GG\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.70\",\"coating_type_id\":3,\"other_coating_type_id\":3,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:44.000000Z\",\"deleted_at\":null},\"old\":{\"id\":31,\"purchase_order_id\":8,\"carton_name\":\"GG\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.70\",\"coating_type_id\":3,\"other_coating_type_id\":3,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:44', '2023-12-25 09:37:44'),
(281, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 28, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":28,\"purchase_order_id\":8,\"carton_name\":\"KK\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":2,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:46.000000Z\",\"deleted_at\":null},\"old\":{\"id\":28,\"purchase_order_id\":8,\"carton_name\":\"KK\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":2,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:46', '2023-12-25 09:37:46'),
(282, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 29, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":29,\"purchase_order_id\":8,\"carton_name\":\"LL\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:46.000000Z\",\"deleted_at\":null},\"old\":{\"id\":29,\"purchase_order_id\":8,\"carton_name\":\"LL\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:46', '2023-12-25 09:37:46'),
(283, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 30, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":30,\"purchase_order_id\":8,\"carton_name\":\"QQ\",\"carton_size\":\"100X12X90\",\"quantity\":2323,\"rate\":\"1.70\",\"coating_type_id\":5,\"other_coating_type_id\":3,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:46.000000Z\",\"deleted_at\":null},\"old\":{\"id\":30,\"purchase_order_id\":8,\"carton_name\":\"QQ\",\"carton_size\":\"100X12X90\",\"quantity\":2323,\"rate\":\"1.70\",\"coating_type_id\":5,\"other_coating_type_id\":3,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:46', '2023-12-25 09:37:46'),
(284, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 31, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":31,\"purchase_order_id\":8,\"carton_name\":\"GG\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.70\",\"coating_type_id\":3,\"other_coating_type_id\":3,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:46.000000Z\",\"deleted_at\":null},\"old\":{\"id\":31,\"purchase_order_id\":8,\"carton_name\":\"GG\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.70\",\"coating_type_id\":3,\"other_coating_type_id\":3,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:44.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:46', '2023-12-25 09:37:46'),
(285, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 28, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":28,\"purchase_order_id\":8,\"carton_name\":\"KK\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":2,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:50.000000Z\",\"deleted_at\":null},\"old\":{\"id\":28,\"purchase_order_id\":8,\"carton_name\":\"KK\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":4,\"other_coating_type_id\":2,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:46.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:50', '2023-12-25 09:37:50'),
(286, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 29, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":29,\"purchase_order_id\":8,\"carton_name\":\"LL\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:50.000000Z\",\"deleted_at\":null},\"old\":{\"id\":29,\"purchase_order_id\":8,\"carton_name\":\"LL\",\"carton_size\":\"57X37X100\",\"quantity\":2100,\"rate\":\"1.55\",\"coating_type_id\":3,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:46.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:50', '2023-12-25 09:37:50'),
(287, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 30, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":30,\"purchase_order_id\":8,\"carton_name\":\"QQ\",\"carton_size\":\"100X12X90\",\"quantity\":2323,\"rate\":\"1.70\",\"coating_type_id\":5,\"other_coating_type_id\":3,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:50.000000Z\",\"deleted_at\":null},\"old\":{\"id\":30,\"purchase_order_id\":8,\"carton_name\":\"QQ\",\"carton_size\":\"100X12X90\",\"quantity\":2323,\"rate\":\"1.70\",\"coating_type_id\":5,\"other_coating_type_id\":3,\"embossing_leafing\":1,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:46.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:50', '2023-12-25 09:37:50'),
(288, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 31, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":31,\"purchase_order_id\":8,\"carton_name\":\"GG\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.70\",\"coating_type_id\":3,\"other_coating_type_id\":3,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":11,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:50.000000Z\",\"deleted_at\":null},\"old\":{\"id\":31,\"purchase_order_id\":8,\"carton_name\":\"GG\",\"carton_size\":\"57X37X100\",\"quantity\":1212,\"rate\":\"1.70\",\"coating_type_id\":3,\"other_coating_type_id\":3,\"embossing_leafing\":0,\"paper_type_id\":1,\"delivery_date\":null,\"bill_no\":null,\"status_id\":2,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"created_at\":\"2023-12-25T15:07:00.000000Z\",\"updated_at\":\"2023-12-25T15:07:46.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:37:50', '2023-12-25 09:37:50'),
(289, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 25, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":25,\"planning_by\":1,\"job_card_no\":\"025\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T15:08:32.000000Z\",\"updated_at\":\"2023-12-25T15:08:32.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:38:32', '2023-12-25 09:38:32'),
(290, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 25, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":25,\"job_card_id\":25,\"planning_id\":25,\"purchase_order_id\":8,\"purchase_order_item_id\":28,\"ups\":3,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-25T15:08:32.000000Z\",\"updated_at\":\"2023-12-25T15:08:32.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:38:32', '2023-12-25 09:38:32'),
(291, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 25, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":25,\"planning_by\":3,\"job_card_no\":\"025\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T15:08:32.000000Z\",\"updated_at\":\"2023-12-25T15:08:32.000000Z\",\"deleted_at\":null},\"old\":{\"id\":25,\"planning_by\":1,\"job_card_no\":\"025\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-25T15:08:32.000000Z\",\"updated_at\":\"2023-12-25T15:08:32.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:38:32', '2023-12-25 09:38:32'),
(292, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 25, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":25,\"job_card_id\":25,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-25T15:08:32.000000Z\",\"updated_at\":\"2023-12-25T15:08:32.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:38:32', '2023-12-25 09:38:32'),
(293, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 26, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":26,\"planning_by\":1,\"job_card_no\":\"026\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T15:08:45.000000Z\",\"updated_at\":\"2023-12-25T15:08:45.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:38:45', '2023-12-25 09:38:45'),
(294, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 26, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":26,\"job_card_id\":26,\"planning_id\":26,\"purchase_order_id\":8,\"purchase_order_item_id\":29,\"ups\":3,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-25T15:08:45.000000Z\",\"updated_at\":\"2023-12-25T15:08:45.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:38:45', '2023-12-25 09:38:45'),
(295, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 26, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":26,\"planning_by\":3,\"job_card_no\":\"026\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T15:08:45.000000Z\",\"updated_at\":\"2023-12-25T15:08:45.000000Z\",\"deleted_at\":null},\"old\":{\"id\":26,\"planning_by\":1,\"job_card_no\":\"026\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-25T15:08:45.000000Z\",\"updated_at\":\"2023-12-25T15:08:45.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:38:45', '2023-12-25 09:38:45'),
(296, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 26, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":26,\"job_card_id\":26,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-25T15:08:45.000000Z\",\"updated_at\":\"2023-12-25T15:08:45.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:38:45', '2023-12-25 09:38:45'),
(297, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 27, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":27,\"planning_by\":1,\"job_card_no\":\"027\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T15:08:58.000000Z\",\"updated_at\":\"2023-12-25T15:08:58.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:38:58', '2023-12-25 09:38:58'),
(298, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 27, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":27,\"job_card_id\":27,\"planning_id\":27,\"purchase_order_id\":8,\"purchase_order_item_id\":30,\"ups\":3,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-25T15:08:58.000000Z\",\"updated_at\":\"2023-12-25T15:08:58.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:38:58', '2023-12-25 09:38:58');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(299, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 27, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":27,\"planning_by\":3,\"job_card_no\":\"027\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T15:08:58.000000Z\",\"updated_at\":\"2023-12-25T15:08:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":27,\"planning_by\":1,\"job_card_no\":\"027\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-25T15:08:58.000000Z\",\"updated_at\":\"2023-12-25T15:08:58.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:38:58', '2023-12-25 09:38:58'),
(300, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 27, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":27,\"job_card_id\":27,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-25T15:08:58.000000Z\",\"updated_at\":\"2023-12-25T15:08:58.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:38:58', '2023-12-25 09:38:58'),
(301, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 28, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":28,\"planning_by\":1,\"job_card_no\":\"028\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T15:09:29.000000Z\",\"updated_at\":\"2023-12-25T15:09:29.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:39:29', '2023-12-25 09:39:29'),
(302, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 28, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":28,\"job_card_id\":28,\"planning_id\":28,\"purchase_order_id\":8,\"purchase_order_item_id\":31,\"ups\":1,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2023-12-25T15:09:29.000000Z\",\"updated_at\":\"2023-12-25T15:09:29.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:39:29', '2023-12-25 09:39:29'),
(303, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 28, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":28,\"planning_by\":3,\"job_card_no\":\"028\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2023-12-25T15:09:29.000000Z\",\"updated_at\":\"2023-12-25T15:09:29.000000Z\",\"deleted_at\":null},\"old\":{\"id\":28,\"planning_by\":1,\"job_card_no\":\"028\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2023-12-25T15:09:29.000000Z\",\"updated_at\":\"2023-12-25T15:09:29.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:39:29', '2023-12-25 09:39:29'),
(304, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 28, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":28,\"job_card_id\":28,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"status_id\":2,\"created_at\":\"2023-12-25T15:09:29.000000Z\",\"updated_at\":\"2023-12-25T15:09:29.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:39:29', '2023-12-25 09:39:29'),
(305, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 25, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":25,\"planning_by\":3,\"job_card_no\":\"025\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"metallic\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T15:08:32.000000Z\",\"updated_at\":\"2023-12-25T15:24:16.000000Z\",\"deleted_at\":null},\"old\":{\"id\":25,\"planning_by\":3,\"job_card_no\":\"025\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-25T15:08:32.000000Z\",\"updated_at\":\"2023-12-25T15:11:49.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:54:16', '2023-12-25 09:54:16'),
(306, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"42535.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T15:24:16.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"43085.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T12:56:03.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:54:16', '2023-12-25 09:54:16'),
(307, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 26, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":26,\"planning_by\":3,\"job_card_no\":\"026\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"metallic\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"17.5\\\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T15:08:45.000000Z\",\"updated_at\":\"2023-12-25T15:25:32.000000Z\",\"deleted_at\":null},\"old\":{\"id\":26,\"planning_by\":3,\"job_card_no\":\"026\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-25T15:08:45.000000Z\",\"updated_at\":\"2023-12-25T15:11:43.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:55:32', '2023-12-25 09:55:32'),
(308, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"41985.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T15:25:32.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"42535.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T15:24:16.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:55:32', '2023-12-25 09:55:32'),
(309, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 27, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":27,\"planning_by\":3,\"job_card_no\":\"027\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":2000,\"wastage_sheet\":100,\"total_sheet\":700,\"paper_divide\":3,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"both\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T15:08:58.000000Z\",\"updated_at\":\"2023-12-25T15:27:53.000000Z\",\"deleted_at\":null},\"old\":{\"id\":27,\"planning_by\":3,\"job_card_no\":\"027\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":2000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-25T15:08:58.000000Z\",\"updated_at\":\"2023-12-25T15:11:37.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:57:53', '2023-12-25 09:57:53'),
(310, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"41285.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T15:27:53.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"41985.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T15:25:32.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:57:53', '2023-12-25 09:57:53'),
(311, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 28, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":28,\"planning_by\":3,\"job_card_no\":\"028\",\"mix\":1,\"product_id\":1,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":100,\"total_sheet\":550,\"paper_divide\":2,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"automatic\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"both\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"\",\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2023-12-25T15:09:29.000000Z\",\"updated_at\":\"2023-12-25T15:29:59.000000Z\",\"deleted_at\":null},\"old\":{\"id\":28,\"planning_by\":3,\"job_card_no\":\"028\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":1000,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2023-12-25T15:09:29.000000Z\",\"updated_at\":\"2023-12-25T15:11:32.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:59:59', '2023-12-25 09:59:59'),
(312, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"40735.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T15:29:59.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"name\":\"23X38-290\",\"unit_id\":5,\"category_id\":2,\"hsn\":\"4810\",\"packet_weight\":\"15.500\",\"item_per_packet\":100,\"weight_per_piece\":\"0.155\",\"quantity\":\"41285.01\",\"length\":\"23.00\",\"width\":\"38.00\",\"gsm\":290,\"status\":1,\"created_at\":\"2023-12-24T09:09:00.000000Z\",\"updated_at\":\"2023-12-25T15:27:53.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-25 09:59:59', '2023-12-25 09:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `avatar` varchar(255) DEFAULT NULL,
  `cover_photo` varchar(255) DEFAULT 'assets/images/profile-bg.jpg',
  `gender` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `name`, `email`, `mobile`, `password`, `remember_token`, `status`, `avatar`, `cover_photo`, `gender`, `date_of_birth`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Jamal', 'asifjamal251@gmail.com', '8109763160', '$2y$10$HkdFs35.H07KzyY3BmmxJ.E1jCV9NFczzyvki1lHGGHqTqQ5N70VS', 'jgx0Xs1YjiG9UvMTNAsEumock3DVLhsYl8GKWTAFBLIMdqHkq53a7GIITWIu', 1, 'storage/admin/1700733287.png', 'storage/admin/1703261606.jpg', 'male', '2022-01-20', '2022-06-25 15:33:05', '2023-12-22 16:13:28', NULL),
(2, 4, 'Jamal', 'asif@gmail.com', '8109763160', '$2y$10$HkdFs35.H07KzyY3BmmxJ.E1jCV9NFczzyvki1lHGGHqTqQ5N70VS', '5tIU5k7w2IiMmrX8lj9PdQ1jTeF45iyaqZGiFg3T0Uiq6mOJlcIJaeRq0S1X', 1, 'storage/admin/1700733287.png', NULL, 'male', '2022-01-20', '2022-06-25 15:33:05', '2023-11-23 09:54:47', NULL),
(3, 4, 'Asif', 'designer@gmail.com', '8109763160', '$2y$10$HkdFs35.H07KzyY3BmmxJ.E1jCV9NFczzyvki1lHGGHqTqQ5N70VS', '5tIU5k7w2IiMmrX8lj9PdQ1jTeF45iyaqZGiFg3T0Uiq6mOJlcIJaeRq0S1X', 1, 'storage/admin/1700733287.png', NULL, 'male', '2022-01-20', '2022-06-25 15:33:05', '2023-11-23 09:54:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_password_resets`
--

INSERT INTO `admin_password_resets` (`email`, `token`, `created_at`) VALUES
('asifjamal@yopmail.com', '$2y$10$J/boDihlUPMgBF7L2uPVjeaYlLxKjQ4Ifo25TfhwBOt3UCix0kkYm', '2019-06-16 12:06:57'),
('asif.sanix@gmail.com', '$2y$10$cNoidIFR/27b5zYgCugNGeto1P2Dr0uHNen4gUahwteuP1vCgURlm', '2019-08-08 06:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`id`, `admin_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 3, 4, NULL, NULL),
(4, 7, 3, NULL, NULL),
(6, 3, 3, NULL, NULL),
(7, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carton_histories`
--

CREATE TABLE `carton_histories` (
  `id` bigint(20) NOT NULL,
  `purchase_order_item_id` bigint(20) NOT NULL,
  `position` varchar(255) NOT NULL,
  `carton_in` datetime DEFAULT NULL,
  `carton_out` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CENTURY', NULL, 1, '2023-12-24 08:57:43', '2023-12-24 08:57:43', NULL),
(2, 'PRIMA PLUS', 1, 1, '2023-12-24 08:57:54', '2023-12-24 08:57:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chemical_coatings`
--

CREATE TABLE `chemical_coatings` (
  `id` int(11) NOT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `coated_sheets` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 2,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `leafing` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chemical_coatings`
--

INSERT INTO `chemical_coatings` (`id`, `job_card_id`, `coated_sheets`, `status_id`, `created_at`, `updated_at`, `leafing`) VALUES
(1, 4, 492, 5, '2023-12-24 17:04:19', '2023-12-24 17:09:38', 0),
(2, 3, 480, 5, '2023-12-24 18:08:10', '2023-12-24 18:20:05', 0),
(3, 1, 490, 5, '2023-12-24 19:02:08', '2023-12-24 19:03:21', 0),
(4, 5, 490, 5, '2023-12-24 19:06:27', '2023-12-24 19:07:06', 0),
(5, 2, 485, 5, '2023-12-24 19:06:34', '2023-12-24 19:07:18', 0),
(6, 6, 480, 5, '2023-12-24 19:59:28', '2023-12-24 20:00:25', 0),
(7, 7, 480, 5, '2023-12-24 20:00:32', '2023-12-24 20:02:25', 0),
(8, 8, 480, 5, '2023-12-24 20:05:22', '2023-12-24 20:05:58', 0),
(9, 25, 490, 5, '2023-12-25 16:14:20', '2023-12-25 16:15:14', 0),
(10, 27, 490, 5, '2023-12-25 16:20:46', '2023-12-25 16:21:22', 0),
(11, 26, 480, 5, '2023-12-25 16:25:27', '2023-12-25 16:26:09', 0),
(12, 28, 490, 5, '2023-12-25 16:26:36', '2023-12-25 16:26:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(191) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `gst` varchar(255) DEFAULT NULL,
  `media_id` bigint(20) UNSIGNED DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `name_init` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `full_name`, `company_name`, `email`, `mobile`, `state`, `city`, `address`, `pincode`, `gst`, `media_id`, `color`, `name_init`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'RAJEEV', 'KUMAR', 'RAJEEV KUMAR', 'AR TECHNOLOGY', 'A@GMAIL.COM', '1234567890', 'Haryana', 'SAHABPURA', '120', 133004, '03ANCPC76767', NULL, 'info', 'RK', '2023-12-24 03:23:22', '2023-12-24 03:23:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coating_types`
--

CREATE TABLE `coating_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `cuttings`
--

CREATE TABLE `cuttings` (
  `id` int(11) NOT NULL,
  `job_card_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT 2,
  `metalic_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cuttings`
--

INSERT INTO `cuttings` (`id`, `job_card_id`, `status_id`, `metalic_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 5, 0, '2023-12-24 09:30:45', '2023-12-24 16:56:19', NULL),
(2, 3, 5, 0, '2023-12-24 09:30:54', '2023-12-24 17:17:26', NULL),
(3, 2, 5, 0, '2023-12-24 09:30:59', '2023-12-24 19:05:36', NULL),
(4, 1, 5, 0, '2023-12-24 09:31:05', '2023-12-24 19:01:06', NULL),
(5, 8, 5, 0, '2023-12-24 16:46:51', '2023-12-24 20:04:50', NULL),
(6, 7, 5, 0, '2023-12-24 16:46:57', '2023-12-24 19:58:38', NULL),
(7, 6, 5, 0, '2023-12-24 16:47:03', '2023-12-24 19:58:35', NULL),
(8, 5, 5, 0, '2023-12-24 16:47:09', '2023-12-24 19:05:34', NULL),
(9, 9, 5, 0, '2023-12-24 20:38:46', '2023-12-25 11:19:55', NULL),
(10, 10, 5, 0, '2023-12-24 20:38:52', '2023-12-25 11:09:11', NULL),
(11, 11, 5, 0, '2023-12-24 20:38:58', '2023-12-25 10:34:45', NULL),
(12, 12, 5, 0, '2023-12-24 20:39:04', '2023-12-25 10:11:40', NULL),
(13, 16, 5, 0, '2023-12-24 20:39:27', '2023-12-25 08:56:14', NULL),
(14, 15, 5, 0, '2023-12-24 20:39:33', '2023-12-25 08:34:36', NULL),
(15, 14, 5, 0, '2023-12-24 20:39:38', '2023-12-25 07:31:49', NULL),
(16, 13, 5, 0, '2023-12-24 20:39:44', '2023-12-24 20:40:46', NULL),
(17, 17, 5, 0, '2023-12-25 12:56:12', '2023-12-25 12:57:08', NULL),
(18, 18, 5, 0, '2023-12-25 12:56:17', '2023-12-25 12:57:20', NULL),
(19, 19, 5, 0, '2023-12-25 12:56:21', '2023-12-25 12:57:24', NULL),
(20, 20, 5, 0, '2023-12-25 12:56:25', '2023-12-25 12:57:28', NULL),
(21, 21, 5, 0, '2023-12-25 12:56:28', '2023-12-25 12:57:33', NULL),
(22, 22, 5, 0, '2023-12-25 12:56:32', '2023-12-25 12:57:37', NULL),
(23, 23, 5, 0, '2023-12-25 12:56:36', '2023-12-25 12:57:41', NULL),
(24, 24, 5, 0, '2023-12-25 12:56:40', '2023-12-25 12:57:46', NULL),
(25, 25, 5, 0, '2023-12-25 15:31:20', '2023-12-25 15:34:55', NULL),
(26, 26, 5, 0, '2023-12-25 15:31:25', '2023-12-25 16:21:22', NULL),
(27, 27, 5, 0, '2023-12-25 15:31:30', '2023-12-25 15:34:44', NULL),
(28, 28, 5, 0, '2023-12-25 15:31:34', '2023-12-25 16:25:43', NULL),
(29, 25, 5, 1, '2023-12-25 16:04:50', '2023-12-25 16:14:05', NULL),
(30, 27, 5, 1, '2023-12-25 16:15:40', '2023-12-25 16:20:23', NULL),
(31, 26, 5, 1, '2023-12-25 16:22:09', '2023-12-25 16:22:34', NULL),
(32, 28, 5, 1, '2023-12-25 16:26:05', '2023-12-25 16:26:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designings`
--

CREATE TABLE `designings` (
  `id` bigint(20) NOT NULL,
  `job_card_id` int(11) NOT NULL,
  `sheet_size` varchar(255) DEFAULT NULL,
  `required_sheet` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 2,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designings`
--

INSERT INTO `designings` (`id`, `job_card_id`, `sheet_size`, `required_sheet`, `color`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 1000, 'CMYK', 5, '2023-12-24 09:15:19', '2023-12-24 09:16:52', NULL),
(2, 2, NULL, 1000, 'CMYK', 5, '2023-12-24 09:15:28', '2023-12-24 09:16:56', NULL),
(3, 3, NULL, 1000, 'CMYK', 5, '2023-12-24 09:15:35', '2023-12-24 09:16:46', NULL),
(4, 4, NULL, 1000, 'CMYK', 5, '2023-12-24 09:15:46', '2023-12-24 09:16:40', NULL),
(5, 5, '19X23', 1000, 'Yellow', 5, '2023-12-24 16:25:18', '2023-12-24 16:28:38', NULL),
(6, 6, '19X23', 1000, 'blue', 5, '2023-12-24 16:25:31', '2023-12-24 16:28:45', NULL),
(7, 7, '19X23', 1000, 'black', 5, '2023-12-24 16:25:44', '2023-12-24 16:28:30', NULL),
(8, 8, '19X23', 1000, 'red', 5, '2023-12-24 16:25:54', '2023-12-24 16:28:25', NULL),
(9, 9, NULL, 1000, 'CMYK', 5, '2023-12-24 20:28:23', '2023-12-24 20:30:42', NULL),
(10, 10, NULL, 1000, 'CMYK', 5, '2023-12-24 20:28:32', '2023-12-24 20:30:47', NULL),
(11, 11, NULL, 1000, 'CMYK', 5, '2023-12-24 20:29:01', '2023-12-24 20:30:18', NULL),
(12, 12, NULL, 1000, 'CMYK', 5, '2023-12-24 20:29:16', '2023-12-24 20:30:14', NULL),
(13, 13, '19X23', 1000, 'red', 5, '2023-12-24 20:30:33', '2023-12-24 20:32:47', NULL),
(14, 14, '19X23', 1000, 'red', 5, '2023-12-24 20:30:44', '2023-12-24 20:32:41', NULL),
(15, 15, '19X23', 1000, 'red', 5, '2023-12-24 20:30:58', '2023-12-24 20:32:35', NULL),
(16, 16, '19X23', 1000, 'red', 5, '2023-12-24 20:31:09', '2023-12-24 20:32:28', NULL),
(17, 17, '12X25', 1000, 'CMYK', 5, '2023-12-25 12:36:17', '2023-12-25 12:39:30', NULL),
(18, 18, '12X25', 1000, 'CMYK', 5, '2023-12-25 12:36:42', '2023-12-25 12:39:25', NULL),
(19, 19, '12X25', 1000, 'CMYK', 5, '2023-12-25 12:36:51', '2023-12-25 12:39:21', NULL),
(20, 20, '19X23', 1000, 'CMYK', 5, '2023-12-25 12:36:59', '2023-12-25 12:39:16', NULL),
(21, 21, NULL, 1000, 'CMYK', 5, '2023-12-25 12:37:07', '2023-12-25 12:39:11', NULL),
(22, 22, NULL, 1000, 'CMYK', 5, '2023-12-25 12:37:17', '2023-12-25 12:39:07', NULL),
(23, 23, NULL, 1000, 'CMYK', 5, '2023-12-25 12:37:33', '2023-12-25 12:39:02', NULL),
(24, 24, NULL, 1000, 'CMYK', 5, '2023-12-25 12:37:41', '2023-12-25 12:38:57', NULL),
(25, 25, NULL, 1000, 'CMYK', 5, '2023-12-25 15:08:32', '2023-12-25 15:11:49', NULL),
(26, 26, NULL, 1000, 'CMYK', 5, '2023-12-25 15:08:45', '2023-12-25 15:11:43', NULL),
(27, 27, '19X23', 2000, 'CMYK', 5, '2023-12-25 15:08:58', '2023-12-25 15:11:37', NULL),
(28, 28, NULL, 1000, 'CMYK', 5, '2023-12-25 15:09:29', '2023-12-25 15:11:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dye_cuttings`
--

CREATE TABLE `dye_cuttings` (
  `id` int(11) NOT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `dye_counter` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 2,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dye_cuttings`
--

INSERT INTO `dye_cuttings` (`id`, `job_card_id`, `dye_counter`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 4, 540, 5, '2023-12-24 17:09:38', '2023-12-24 17:15:39'),
(2, 3, 470, 5, '2023-12-24 18:45:50', '2023-12-24 18:48:46'),
(3, 1, 480, 5, '2023-12-24 19:03:58', '2023-12-24 19:04:29'),
(4, 2, 540, 5, '2023-12-24 19:07:18', '2023-12-24 19:56:28'),
(5, 5, 470, 5, '2023-12-24 19:55:35', '2023-12-24 19:56:24'),
(6, 7, 480, 5, '2023-12-24 20:03:00', '2023-12-24 20:03:39'),
(7, 6, 470, 5, '2023-12-24 20:03:50', '2023-12-24 20:04:13'),
(8, 8, 480, 5, '2023-12-24 20:06:58', '2023-12-24 20:07:30'),
(9, 13, 160, 5, '2023-12-25 07:28:58', '2023-12-25 07:30:14'),
(10, 14, 98, 5, '2023-12-25 07:47:20', '2023-12-25 07:51:10'),
(11, 15, 93, 5, '2023-12-25 08:54:31', '2023-12-25 08:55:04'),
(12, 16, 140, 5, '2023-12-25 10:09:22', '2023-12-25 10:09:44'),
(13, 12, 540, 5, '2023-12-25 10:27:18', '2023-12-25 10:27:43'),
(14, 11, 199, 5, '2023-12-25 10:53:44', '2023-12-25 10:54:31'),
(15, 10, 160, 5, '2023-12-25 11:14:57', '2023-12-25 11:15:31'),
(16, 9, 160, 5, '2023-12-25 11:23:09', '2023-12-25 11:24:37'),
(17, 23, 120, 5, '2023-12-25 13:06:55', '2023-12-25 13:07:16'),
(18, 22, 140, 5, '2023-12-25 13:08:02', '2023-12-25 13:08:28'),
(19, 18, 540, 5, '2023-12-25 13:10:35', '2023-12-25 13:10:59'),
(20, 17, 140, 5, '2023-12-25 13:12:20', '2023-12-25 13:12:43'),
(21, 19, 199, 5, '2023-12-25 13:13:33', '2023-12-25 13:13:54'),
(22, 20, 540, 5, '2023-12-25 13:15:15', '2023-12-25 13:15:38'),
(23, 21, 120, 5, '2023-12-25 13:16:47', '2023-12-25 13:17:12'),
(24, 24, 140, 5, '2023-12-25 13:26:15', '2023-12-25 13:27:42'),
(25, 25, 480, 5, '2023-12-25 16:15:37', '2023-12-25 16:17:45'),
(26, 27, 120, 5, '2023-12-25 16:22:05', '2023-12-25 16:22:17'),
(27, 26, 480, 5, '2023-12-25 16:26:09', '2023-12-25 16:26:50'),
(28, 28, 140, 5, '2023-12-25 16:27:20', '2023-12-25 16:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `dye_details`
--

CREATE TABLE `dye_details` (
  `id` int(11) NOT NULL,
  `automatic` tinyint(1) NOT NULL,
  `length` varchar(255) NOT NULL,
  `width` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `ups` varchar(100) NOT NULL,
  `dye_no` varchar(255) NOT NULL,
  `sheet_size` varchar(255) NOT NULL,
  `carton_size` varchar(255) NOT NULL,
  `dye_lock` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dye_details`
--

INSERT INTO `dye_details` (`id`, `automatic`, `length`, `width`, `height`, `ups`, `dye_no`, `sheet_size`, `carton_size`, `dye_lock`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '57', '37', '100', '9', '1', '19X23', '57X37X100', 'lockbottom', '2023-12-24 09:09:48', '2023-12-24 09:09:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `embossings`
--

CREATE TABLE `embossings` (
  `id` int(11) NOT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `embossing_counter` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 2,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `embossings`
--

INSERT INTO `embossings` (`id`, `job_card_id`, `embossing_counter`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 3, 475, 5, '2023-12-24 18:20:05', '2023-12-24 18:45:50'),
(2, 1, 485, 5, '2023-12-24 19:03:21', '2023-12-24 19:03:58'),
(3, 5, 485, 5, '2023-12-24 19:46:00', '2023-12-24 19:55:35'),
(4, 6, 475, 5, '2023-12-24 20:03:12', '2023-12-24 20:03:50'),
(5, 13, 170, 5, '2023-12-24 21:05:38', '2023-12-25 07:28:58'),
(7, 15, 95, 5, '2023-12-25 08:50:44', '2023-12-25 08:54:31'),
(8, 11, 200, 5, '2023-12-25 10:53:21', '2023-12-25 10:53:44'),
(9, 9, 170, 5, '2023-12-25 11:21:51', '2023-12-25 11:23:09'),
(10, 23, 129, 5, '2023-12-25 13:06:24', '2023-12-25 13:06:55'),
(11, 17, 200, 5, '2023-12-25 13:11:54', '2023-12-25 13:12:20'),
(12, 19, 200, 5, '2023-12-25 13:13:12', '2023-12-25 13:13:33'),
(13, 21, 129, 5, '2023-12-25 13:16:23', '2023-12-25 13:16:47'),
(14, 25, 485, 5, '2023-12-25 16:15:14', '2023-12-25 16:15:37'),
(15, 27, 129, 5, '2023-12-25 16:21:44', '2023-12-25 16:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `job_cards`
--

CREATE TABLE `job_cards` (
  `id` int(11) NOT NULL,
  `planning_by` int(11) NOT NULL,
  `job_card_no` varchar(255) DEFAULT NULL,
  `mix` tinyint(1) DEFAULT 0 COMMENT '1= separate\r\n0= mix',
  `product_id` int(11) DEFAULT NULL,
  `sheet_size` varchar(255) DEFAULT NULL,
  `required_sheet` int(11) DEFAULT NULL,
  `wastage_sheet` int(11) DEFAULT NULL,
  `total_sheet` int(11) DEFAULT NULL,
  `paper_divide` int(11) DEFAULT NULL,
  `dye_details_id` int(11) DEFAULT NULL,
  `dye_details` varchar(255) DEFAULT NULL,
  `dye_machine` varchar(255) DEFAULT NULL COMMENT 'auto or manual',
  `warehouse_type` int(11) DEFAULT NULL,
  `warehouse_paper` text DEFAULT NULL,
  `warehouse_sheet` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `coating_machine` varchar(255) DEFAULT NULL,
  `other_coating_machine` varchar(255) DEFAULT NULL,
  `coating_window_cutting` varchar(255) DEFAULT NULL,
  `embossing_leafing` varchar(255) DEFAULT NULL,
  `roll_used` varchar(255) DEFAULT NULL,
  `printed_sheets` int(11) DEFAULT NULL,
  `coated_sheets` int(11) DEFAULT NULL,
  `laminated_sheets` int(11) DEFAULT NULL,
  `spot_uv_sheets` int(11) DEFAULT NULL,
  `dye_counter` int(11) DEFAULT NULL,
  `leafing_counter` int(11) DEFAULT NULL,
  `embossing_counter` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 99,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_cards`
--

INSERT INTO `job_cards` (`id`, `planning_by`, `job_card_no`, `mix`, `product_id`, `sheet_size`, `required_sheet`, `wastage_sheet`, `total_sheet`, `paper_divide`, `dye_details_id`, `dye_details`, `dye_machine`, `warehouse_type`, `warehouse_paper`, `warehouse_sheet`, `color`, `coating_machine`, `other_coating_machine`, `coating_window_cutting`, `embossing_leafing`, `roll_used`, `printed_sheets`, `coated_sheets`, `laminated_sheets`, `spot_uv_sheets`, `dye_counter`, `leafing_counter`, `embossing_counter`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '001', 1, 1, '19X23', 1000, 100, 550, 2, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'chemical coating', 'none', 'window in batch, pasting, bottom lock', 'Embossing', '', 500, 490, NULL, NULL, 480, NULL, 485, 21, '2023-12-24 09:15:19', '2023-12-24 19:04:29', NULL),
(2, 2, '002', 1, 1, '19X23', 1000, 100, 550, 2, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'chemical coating', 'none', 'none', 'Leafing', '', 500, 485, NULL, NULL, 540, 490, NULL, 21, '2023-12-24 09:15:27', '2023-12-24 19:56:28', NULL),
(3, 2, '003', 1, 1, '19X23', 1000, 100, 550, 2, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'chemical coating', 'none', 'none', 'Both', '', 500, 480, NULL, NULL, 470, 490, 475, 21, '2023-12-24 09:15:35', '2023-12-24 18:48:46', NULL),
(4, 2, '004', 1, 1, '19X23', 1000, 100, 550, 2, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'chemical coating', 'none', 'none', 'None', '', 500, 492, NULL, NULL, 540, NULL, NULL, 21, '2023-12-24 09:15:45', '2023-12-24 17:15:39', NULL),
(5, 3, '005', 1, 1, '19X23', 1000, 100, 550, 2, NULL, NULL, 'manual', NULL, NULL, NULL, 'Yellow', 'chemical coating', 'spot uv', 'none', 'Embossing', '', 500, 490, NULL, 400, 470, NULL, 485, 21, '2023-12-24 16:25:18', '2023-12-24 19:56:24', NULL),
(6, 3, '006', 1, 1, '19X23', 1000, 100, 550, 2, NULL, NULL, 'manual', NULL, NULL, NULL, 'blue', 'chemical coating', 'spot uv', 'none', 'Both', '', 500, 480, NULL, 479, 470, 490, 475, 21, '2023-12-24 16:25:31', '2023-12-24 20:04:13', NULL),
(7, 3, '007', 1, 1, '19X23', 1000, 100, 550, 2, NULL, NULL, 'manual', NULL, NULL, NULL, 'black', 'chemical coating', 'spot uv', 'none', 'Leafing', '', 500, 480, NULL, 400, 480, 490, NULL, 21, '2023-12-24 16:25:44', '2023-12-24 20:03:39', NULL),
(8, 3, '008', 1, 1, '19X23', 1000, 100, 550, 2, NULL, NULL, 'manual', NULL, NULL, NULL, 'red', 'chemical coating', 'spot uv', 'none', 'None', '', 500, 480, NULL, 400, 480, NULL, NULL, 21, '2023-12-24 16:25:54', '2023-12-24 20:07:30', NULL),
(9, 3, '009', 1, 1, '19X23', 1000, 100, 275, 4, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'gloss lamination', 'none', 'none', 'Embossing', '17.5\"', 210, NULL, 150, NULL, 160, NULL, 170, 21, '2023-12-24 20:28:23', '2023-12-25 11:24:37', NULL),
(10, 3, '010', 1, 1, '19X23', 1000, 100, 275, 4, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'gloss lamination', 'none', 'none', 'Leafing', '17.5\"', 270, NULL, 230, NULL, 160, 250, NULL, 21, '2023-12-24 20:28:32', '2023-12-25 11:15:31', NULL),
(11, 3, '011', 1, 1, '19X23', 1000, 100, 220, 5, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'gloss lamination', 'none', 'none', 'Both', '17.5\"', 210, NULL, 200, NULL, 199, 200, 200, 21, '2023-12-24 20:29:01', '2023-12-25 10:54:31', NULL),
(12, 3, '012', 1, 1, '19X23', 1000, 100, 550, 2, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'gloss lamination', 'none', 'none', 'None', '17.5\"', 540, NULL, 530, NULL, 540, NULL, NULL, 21, '2023-12-24 20:29:16', '2023-12-25 10:27:43', NULL),
(13, 2, '013', 1, 1, '19X23', 1000, 100, 183, 6, NULL, 'New', 'manual', NULL, NULL, NULL, 'red', 'gloss lamination', 'spot uv', 'none', 'Embossing', '15.5', 180, NULL, 8, NULL, 160, NULL, 170, 21, '2023-12-24 20:30:33', '2023-12-25 07:30:14', NULL),
(14, 2, '014', 1, 1, '19X23', 1000, 100, 183, 6, NULL, 'New', 'manual', NULL, NULL, NULL, 'red', 'gloss lamination', 'spot uv', 'none', 'Leafing', '15.5', 180, NULL, 100, 99, 98, 170, NULL, 21, '2023-12-24 20:30:44', '2023-12-25 07:51:10', NULL),
(15, 2, '015', 1, 1, '19X23', 1000, 100, 183, 6, NULL, 'New', 'manual', NULL, NULL, NULL, 'red', 'gloss lamination', 'spot uv', 'none', 'Both', '15.5', 180, NULL, 100, 99, 93, 170, 95, 21, '2023-12-24 20:30:58', '2023-12-25 08:55:04', NULL),
(16, 2, '016', 1, 1, '19X23', 1000, 100, 183, 6, NULL, 'New', 'manual', NULL, NULL, NULL, 'red', 'gloss lamination', 'spot uv', 'none', 'None', '15.5', 180, NULL, 150, 149, 140, NULL, NULL, 21, '2023-12-24 20:31:09', '2023-12-25 10:09:44', NULL),
(17, 2, '017', 1, 1, '12X25', 1000, 100, 275, 4, NULL, 'New', 'manual', NULL, NULL, NULL, 'CMYK', 'matt lamination', 'none', 'none', 'Embossing', '17.5\"', 250, NULL, 200, NULL, 140, NULL, 200, 21, '2023-12-25 12:36:17', '2023-12-25 13:12:43', NULL),
(18, 2, '018', 1, 1, '12X25', 1000, 100, 550, 2, NULL, 'New', 'manual', NULL, NULL, NULL, 'CMYK', 'matt lamination', 'none', 'none', 'Leafing', '17.5\"', 500, NULL, 200, NULL, 540, 490, NULL, 21, '2023-12-25 12:36:42', '2023-12-25 13:10:59', NULL),
(19, 2, '019', 1, 1, '12X25', 1000, 100, 367, 3, NULL, 'New', 'automatic', NULL, NULL, NULL, 'CMYK', 'matt lamination', 'none', 'none', 'Both', '17.5\"', 350, NULL, 200, NULL, 199, 349, 200, 21, '2023-12-25 12:36:51', '2023-12-25 13:13:54', NULL),
(20, 2, '020', 1, 1, '19X23', 1000, 100, 550, 2, NULL, 'New', 'manual', NULL, NULL, NULL, 'CMYK', 'matt lamination', 'none', 'none', 'None', '17.5\"', 500, NULL, 200, NULL, 540, NULL, NULL, 21, '2023-12-25 12:36:59', '2023-12-25 13:15:38', NULL),
(21, 3, '021', 1, 1, '19X23', 1000, 100, 220, 5, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'matt lamination', 'spot uv', 'none', 'Embossing', '17.5\"', 200, NULL, 199, 149, 120, NULL, 129, 21, '2023-12-25 12:37:07', '2023-12-25 13:17:12', NULL),
(22, 3, '022', 1, 1, '19X23', 1000, 100, 550, 2, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'matt lamination', 'spot uv', 'none', 'Leafing', '17.5\"', 500, NULL, 200, 149, 140, 490, NULL, 21, '2023-12-25 12:37:17', '2023-12-25 13:08:28', NULL),
(23, 3, '023', 1, 1, '19X23', 1000, 100, 550, 2, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'matt lamination', 'spot uv', 'none', 'Both', '17.5\"', 500, NULL, 200, 149, 120, 490, 129, 21, '2023-12-25 12:37:33', '2023-12-25 13:07:16', NULL),
(24, 3, '024', 1, 1, '19X23', 1000, 100, 550, 2, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'matt lamination', 'spot uv', 'none', 'None', '17.5\"', 500, NULL, 200, 149, 140, NULL, NULL, 21, '2023-12-25 12:37:41', '2023-12-25 13:27:42', NULL),
(25, 3, '025', 1, 1, '19X23', 1000, 100, 550, 2, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'chemical coating', 'metallic', 'none', 'Embossing', '17.5\"', 500, 490, 549, NULL, 480, NULL, 485, 21, '2023-12-25 15:08:32', '2023-12-25 16:17:45', NULL),
(26, 3, '026', 1, 1, '19X23', 1000, 100, 550, 2, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'chemical coating', 'metallic', 'none', 'None', '17.5\"', 540, 480, 530, NULL, 480, NULL, NULL, 21, '2023-12-25 15:08:45', '2023-12-25 16:26:50', NULL),
(27, 3, '027', 1, 1, '19X23', 2000, 100, 700, 3, NULL, 'New', 'manual', NULL, NULL, NULL, 'CMYK', 'chemical coating', 'both', 'none', 'Embossing', '', 500, 490, 200, 149, 120, NULL, 129, 21, '2023-12-25 15:08:58', '2023-12-25 16:22:17', NULL),
(28, 3, '028', 1, 1, '19X23', 1000, 100, 550, 2, 1, '1/9-lockbottom', 'automatic', NULL, NULL, NULL, 'CMYK', 'chemical coating', 'both', 'none', 'None', '', 500, 490, 200, 149, 140, NULL, NULL, 21, '2023-12-25 15:09:29', '2023-12-25 16:27:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_card_items`
--

CREATE TABLE `job_card_items` (
  `id` int(11) NOT NULL,
  `job_card_id` int(11) DEFAULT NULL,
  `planning_id` int(11) DEFAULT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `purchase_order_item_id` int(11) DEFAULT NULL,
  `ups` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `warehouse_stock_type` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_card_items`
--

INSERT INTO `job_card_items` (`id`, `job_card_id`, `planning_id`, `purchase_order_id`, `purchase_order_item_id`, `ups`, `status_id`, `warehouse_stock_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, 3, 1, NULL, '2023-12-24 09:15:19', '2023-12-24 09:15:19', NULL),
(2, 2, 2, 1, 2, 3, 1, NULL, '2023-12-24 09:15:28', '2023-12-24 09:15:28', NULL),
(3, 3, 3, 1, 3, 3, 1, NULL, '2023-12-24 09:15:35', '2023-12-24 09:15:35', NULL),
(4, 4, 4, 1, 4, 3, 1, NULL, '2023-12-24 09:15:46', '2023-12-24 09:15:46', NULL),
(5, 5, 5, 2, 5, 1, 1, NULL, '2023-12-24 16:25:18', '2023-12-24 16:25:18', NULL),
(6, 6, 6, 2, 6, 2, 1, NULL, '2023-12-24 16:25:31', '2023-12-24 16:25:31', NULL),
(7, 7, 7, 2, 7, 3, 1, NULL, '2023-12-24 16:25:44', '2023-12-24 16:25:44', NULL),
(8, 8, 8, 2, 8, 4, 1, NULL, '2023-12-24 16:25:54', '2023-12-24 16:25:54', NULL),
(9, 9, 9, 3, 9, 9, 1, NULL, '2023-12-24 20:28:23', '2023-12-24 20:28:23', NULL),
(10, 10, 10, 3, 10, 7, 1, NULL, '2023-12-24 20:28:32', '2023-12-24 20:28:32', NULL),
(11, 11, 11, 3, 11, 8, 1, NULL, '2023-12-24 20:29:01', '2023-12-24 20:29:01', NULL),
(12, 12, 12, 3, 12, 8, 1, NULL, '2023-12-24 20:29:16', '2023-12-24 20:29:16', NULL),
(13, 13, 13, 4, 13, 8, 1, NULL, '2023-12-24 20:30:33', '2023-12-24 20:30:33', NULL),
(14, 14, 14, 4, 14, 6, 1, NULL, '2023-12-24 20:30:44', '2023-12-24 20:30:44', NULL),
(15, 15, 15, 4, 15, 5, 1, NULL, '2023-12-24 20:30:58', '2023-12-24 20:30:58', NULL),
(16, 16, 16, 4, 16, 9, 1, NULL, '2023-12-24 20:31:09', '2023-12-24 20:31:09', NULL),
(17, 17, 21, 6, 20, 2, 1, NULL, '2023-12-25 12:36:17', '2023-12-25 12:36:17', NULL),
(18, 18, 22, 6, 21, 2, 1, NULL, '2023-12-25 12:36:42', '2023-12-25 12:36:42', NULL),
(19, 19, 23, 6, 22, 2, 1, NULL, '2023-12-25 12:36:51', '2023-12-25 12:36:51', NULL),
(20, 20, 24, 6, 23, 2, 1, NULL, '2023-12-25 12:36:59', '2023-12-25 12:36:59', NULL),
(21, 21, 17, 7, 24, 2, 1, NULL, '2023-12-25 12:37:07', '2023-12-25 12:37:07', NULL),
(22, 22, 18, 7, 25, 2, 1, NULL, '2023-12-25 12:37:17', '2023-12-25 12:37:17', NULL),
(23, 23, 19, 7, 26, 2, 1, NULL, '2023-12-25 12:37:33', '2023-12-25 12:37:33', NULL),
(24, 24, 20, 7, 27, 2, 1, NULL, '2023-12-25 12:37:41', '2023-12-25 12:37:41', NULL),
(25, 25, 25, 8, 28, 3, 1, NULL, '2023-12-25 15:08:32', '2023-12-25 15:08:32', NULL),
(26, 26, 26, 8, 29, 3, 1, NULL, '2023-12-25 15:08:45', '2023-12-25 15:08:45', NULL),
(27, 27, 27, 8, 30, 3, 1, NULL, '2023-12-25 15:08:58', '2023-12-25 15:08:58', NULL),
(28, 28, 28, 8, 31, 1, 1, NULL, '2023-12-25 15:09:29', '2023-12-25 15:09:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_card_medias`
--

CREATE TABLE `job_card_medias` (
  `job_card_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laminations`
--

CREATE TABLE `laminations` (
  `id` bigint(20) NOT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `laminated_sheets` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 2,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `laminations`
--

INSERT INTO `laminations` (`id`, `job_card_id`, `laminated_sheets`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 13, 8, 2, '2023-12-24 20:41:27', '2023-12-24 21:07:05'),
(3, 14, 100, 5, '2023-12-25 07:42:17', '2023-12-25 07:43:40'),
(4, 15, 100, 5, '2023-12-25 08:35:47', '2023-12-25 08:50:02'),
(5, 16, 150, 5, '2023-12-25 08:56:48', '2023-12-25 10:08:53'),
(6, 12, 530, 5, '2023-12-25 10:13:05', '2023-12-25 10:27:18'),
(7, 11, 200, 5, '2023-12-25 10:37:09', '2023-12-25 10:53:21'),
(8, 10, 230, 5, '2023-12-25 11:10:54', '2023-12-25 11:14:57'),
(9, 9, 150, 5, '2023-12-25 11:20:36', '2023-12-25 11:21:52'),
(10, 24, 200, 5, '2023-12-25 13:00:04', '2023-12-25 13:25:29'),
(11, 23, 200, 5, '2023-12-25 13:00:18', '2023-12-25 13:04:10'),
(12, 22, 200, 5, '2023-12-25 13:00:31', '2023-12-25 13:03:59'),
(13, 21, 199, 5, '2023-12-25 13:00:36', '2023-12-25 13:16:02'),
(14, 20, 200, 5, '2023-12-25 13:00:40', '2023-12-25 13:15:15'),
(15, 19, 200, 5, '2023-12-25 13:00:45', '2023-12-25 13:03:48'),
(16, 18, 200, 5, '2023-12-25 13:00:50', '2023-12-25 13:03:33'),
(17, 17, 200, 5, '2023-12-25 13:00:55', '2023-12-25 13:11:54'),
(18, 27, 200, 5, '2023-12-25 15:34:44', '2023-12-25 16:15:40'),
(19, 25, 549, 5, '2023-12-25 15:34:55', '2023-12-25 16:13:21'),
(20, 26, 530, 5, '2023-12-25 16:21:22', '2023-12-25 16:22:09'),
(21, 28, 200, 5, '2023-12-25 16:25:43', '2023-12-25 16:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `leafings`
--

CREATE TABLE `leafings` (
  `id` int(11) NOT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `leafing_counter` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 2,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `leafings`
--

INSERT INTO `leafings` (`id`, `job_card_id`, `leafing_counter`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 3, 490, 5, '2023-12-24 16:51:30', '2023-12-24 18:08:10'),
(2, 2, 490, 5, '2023-12-24 19:05:54', '2023-12-24 19:06:34'),
(3, 6, 490, 5, '2023-12-24 19:58:56', '2023-12-24 19:59:28'),
(4, 7, 490, 5, '2023-12-24 19:59:15', '2023-12-24 20:00:32'),
(5, 14, 170, 5, '2023-12-25 07:41:28', '2023-12-25 07:42:17'),
(6, 15, 170, 5, '2023-12-25 08:35:10', '2023-12-25 08:35:47'),
(7, 11, 200, 5, '2023-12-25 10:36:36', '2023-12-25 10:37:09'),
(8, 10, 250, 5, '2023-12-25 11:10:24', '2023-12-25 11:10:54'),
(9, 18, 490, 5, '2023-12-25 13:03:33', '2023-12-25 13:10:35'),
(10, 19, 349, 5, '2023-12-25 13:03:48', '2023-12-25 13:13:12'),
(11, 22, 490, 5, '2023-12-25 13:03:59', '2023-12-25 13:05:32'),
(12, 23, 490, 5, '2023-12-25 13:04:10', '2023-12-25 13:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `machine_machine_types`
--

CREATE TABLE `machine_machine_types` (
  `machine_id` int(11) NOT NULL,
  `machine_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `machine_types`
--

CREATE TABLE `machine_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material_inwards`
--

CREATE TABLE `material_inwards` (
  `id` bigint(20) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `bill_date` date NOT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `total_gst` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `material_inwards`
--

INSERT INTO `material_inwards` (`id`, `vendor_id`, `bill_no`, `bill_date`, `subtotal`, `total_gst`, `total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1234', '2023-12-24', '82460.00', '9895.20', '92355.20', '2023-12-24 09:10:31', '2023-12-24 09:10:31', NULL),
(2, 1, '1234', '2023-12-25', '72385.00', '13029.30', '85414.30', '2023-12-25 12:46:48', '2023-12-25 12:46:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `material_inward_items`
--

CREATE TABLE `material_inward_items` (
  `id` int(11) NOT NULL,
  `material_inward_id` bigint(20) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `weight_per_piece` decimal(10,2) DEFAULT NULL,
  `total_weight` decimal(10,2) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `rate_on` decimal(10,2) DEFAULT NULL,
  `sheet_per_packet` decimal(10,2) DEFAULT 0.00,
  `item_per_packet` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_item` decimal(10,2) NOT NULL DEFAULT 0.00,
  `rate` decimal(10,2) DEFAULT NULL,
  `gst` decimal(10,2) DEFAULT NULL,
  `gst_amount` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `material_inward_items`
--

INSERT INTO `material_inward_items` (`id`, `material_inward_id`, `category_id`, `product_id`, `item_name`, `quantity`, `hsn`, `weight_per_piece`, `total_weight`, `unit`, `rate_on`, `sheet_per_packet`, `item_per_packet`, `total_item`, `rate`, `gst`, `gst_amount`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 1, '23X38-290', 70, '4810', '0.16', '1085.00', 'Sheets', '76.00', '0.00', '100.00', '7000.00', '82460.00', '12.00', '9895.20', '82460.00', '2023-12-24 09:10:31', '2023-12-24 09:10:31', NULL),
(2, 2, 2, 1, '23X38-290', 467, '4810', '0.16', '7238.50', 'Sheets', '10.00', '0.00', '100.00', '46700.00', '72385.00', '18.00', '13029.30', '72385.00', '2023-12-25 12:46:48', '2023-12-25 12:46:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` bigint(20) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`slug`, `name`, `icon`, `parent`, `ordering`, `status`) VALUES
('add_details', 'Add Details', 'bx bx-layer-plus', NULL, 1, 1),
('admin', 'Admin', 'mdi mdi-account-lock', 'others', 2, 1),
('bread', 'Bread', 'ft-target', 'setting', 2, 1),
('category', 'Category', NULL, 'add_details', 2, 1),
('chemical_coating', 'Chemical Coating', NULL, 'production', 6, 1),
('client', 'Client', NULL, 'add_details', 1, 1),
('cutting', 'Cutting', NULL, 'production', 4, 1),
('dashboard', 'Dashboard', 'bx bx-home-circle', NULL, 0, 1),
('designing', 'Designing', NULL, 'production', 2, 1),
('die_cutting', 'Die Cutting', NULL, 'production', 12, 1),
('dye_cutting', 'Dye Cutting', NULL, 'production', 11, 1),
('dye_details', 'Dye Details', NULL, 'add_details', 5, 1),
('embossing', 'Embossing', NULL, 'production', 8, 1),
('job_card', 'Job Card', NULL, 'production', 3, 1),
('lamination', 'Lamination', NULL, 'production', 7, 1),
('leafing', 'Leafing', NULL, 'production', 9, 1),
('material_inward', 'Material Inward', NULL, 'store', 0, 1),
('media', 'Media', NULL, 'others', 1, 1),
('menu', 'Menu', NULL, 'setting', 1, 1),
('others', 'Others', NULL, NULL, 4, 1),
('pasting', 'Pasting', NULL, 'production', 13, 1),
('planning', 'Planning', NULL, 'production', 1, 1),
('printing', 'Printing', NULL, 'production', 5, 1),
('product', 'Product', NULL, 'add_details', 4, 1),
('production', 'Production', NULL, NULL, 3, 1),
('purchase_order', 'Purchase Order', NULL, 'production', 0, 1),
('role', 'Role', NULL, 'setting', 0, 1),
('setting', 'Setting', 'mdi mdi-tools', NULL, 5, 1),
('site_setting', 'Site Setting', 'bx bx-cog', 'others', 3, 1),
('spot_uv', 'Spot Uv', NULL, 'production', 10, 1),
('store', 'Store', NULL, NULL, 2, 1),
('transaction', 'Transaction', NULL, 'others', 0, 1),
('unit', 'Unit', NULL, 'add_details', 3, 1),
('vendor', 'Vendor', NULL, 'add_details', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `other_coating_types`
--

CREATE TABLE `other_coating_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `paper_qualities` (
  `id` int(11) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paper_warehouses`
--

CREATE TABLE `paper_warehouses` (
  `id` int(11) NOT NULL,
  `put_job_card_id` int(11) DEFAULT NULL,
  `get_job_card_id` int(11) DEFAULT NULL,
  `warehouse_type` int(11) DEFAULT NULL,
  `paper_stock` text DEFAULT NULL,
  `sheets` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pastings`
--

CREATE TABLE `pastings` (
  `id` int(11) NOT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `status_id` int(11) DEFAULT 2,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pastings`
--

INSERT INTO `pastings` (`id`, `job_card_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 4, 2, '2023-12-24 17:10:18', '2023-12-24 17:10:18'),
(2, 3, 2, '2023-12-24 18:48:46', '2023-12-24 18:48:46'),
(3, 1, 2, '2023-12-24 19:04:29', '2023-12-24 19:04:29'),
(4, 5, 2, '2023-12-24 19:56:24', '2023-12-24 19:56:24'),
(5, 2, 2, '2023-12-24 19:56:28', '2023-12-24 19:56:28'),
(6, 7, 2, '2023-12-24 20:03:39', '2023-12-24 20:03:39'),
(7, 6, 2, '2023-12-24 20:04:13', '2023-12-24 20:04:13'),
(8, 8, 2, '2023-12-24 20:07:30', '2023-12-24 20:07:30'),
(9, 13, 2, '2023-12-25 07:30:14', '2023-12-25 07:30:14'),
(10, 14, 2, '2023-12-25 07:51:10', '2023-12-25 07:51:10'),
(11, 15, 2, '2023-12-25 08:55:04', '2023-12-25 08:55:04'),
(12, 16, 2, '2023-12-25 10:09:44', '2023-12-25 10:09:44'),
(13, 12, 2, '2023-12-25 10:27:43', '2023-12-25 10:27:43'),
(14, 11, 2, '2023-12-25 10:54:31', '2023-12-25 10:54:31'),
(15, 10, 2, '2023-12-25 11:15:31', '2023-12-25 11:15:31'),
(16, 9, 2, '2023-12-25 11:24:37', '2023-12-25 11:24:37'),
(17, 23, 2, '2023-12-25 13:07:16', '2023-12-25 13:07:16'),
(18, 22, 2, '2023-12-25 13:08:28', '2023-12-25 13:08:28'),
(19, 18, 2, '2023-12-25 13:10:59', '2023-12-25 13:10:59'),
(20, 17, 2, '2023-12-25 13:12:43', '2023-12-25 13:12:43'),
(21, 19, 2, '2023-12-25 13:13:54', '2023-12-25 13:13:54'),
(22, 20, 2, '2023-12-25 13:15:38', '2023-12-25 13:15:38'),
(23, 21, 2, '2023-12-25 13:17:12', '2023-12-25 13:17:12'),
(24, 24, 2, '2023-12-25 13:27:42', '2023-12-25 13:27:42'),
(25, 25, 2, '2023-12-25 16:17:45', '2023-12-25 16:17:45'),
(26, 27, 2, '2023-12-25 16:22:17', '2023-12-25 16:22:17'),
(27, 26, 2, '2023-12-25 16:26:50', '2023-12-25 16:26:50'),
(28, 28, 2, '2023-12-25 16:27:38', '2023-12-25 16:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `menu_slug` varchar(200) DEFAULT NULL,
  `permission_key` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(100, 'vendor', 'delete_vendor'),
(101, 'category', 'browse_category'),
(102, 'category', 'read_category'),
(103, 'category', 'add_category'),
(104, 'category', 'edit_category'),
(105, 'category', 'delete_category'),
(106, 'unit', 'browse_unit'),
(107, 'unit', 'read_unit'),
(108, 'unit', 'add_unit'),
(109, 'unit', 'edit_unit'),
(110, 'unit', 'delete_unit'),
(111, 'product', 'browse_product'),
(112, 'product', 'read_product'),
(113, 'product', 'add_product'),
(114, 'product', 'edit_product'),
(115, 'product', 'delete_product'),
(116, 'material_inward', 'browse_material_inward'),
(117, 'material_inward', 'read_material_inward'),
(118, 'material_inward', 'add_material_inward'),
(119, 'material_inward', 'edit_material_inward'),
(120, 'material_inward', 'delete_material_inward'),
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
(266, 'lamination', 'change_status_lamination');

-- --------------------------------------------------------

--
-- Table structure for table `plannings`
--

CREATE TABLE `plannings` (
  `id` bigint(20) NOT NULL,
  `designer` int(11) NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `purchase_order_item_id` int(11) NOT NULL,
  `dye_detail_id` int(11) DEFAULT NULL,
  `old_dye_detail_id` int(11) DEFAULT NULL,
  `old_jobcard_id` int(11) DEFAULT NULL,
  `ups` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plannings`
--

INSERT INTO `plannings` (`id`, `designer`, `purchase_order_id`, `purchase_order_item_id`, `dye_detail_id`, `old_dye_detail_id`, `old_jobcard_id`, `ups`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 1, 1, NULL, NULL, 3, 5, '2023-12-24 09:15:19', '2023-12-24 09:15:19', NULL),
(2, 2, 1, 2, 1, NULL, NULL, 3, 5, '2023-12-24 09:15:28', '2023-12-24 09:15:28', NULL),
(3, 2, 1, 3, 1, NULL, NULL, 3, 5, '2023-12-24 09:15:35', '2023-12-24 09:15:35', NULL),
(4, 2, 1, 4, 1, NULL, NULL, 3, 5, '2023-12-24 09:15:46', '2023-12-24 09:15:46', NULL),
(5, 3, 2, 5, NULL, NULL, NULL, 1, 5, '2023-12-24 16:25:18', '2023-12-24 16:25:18', NULL),
(6, 3, 2, 6, NULL, NULL, NULL, 2, 5, '2023-12-24 16:25:31', '2023-12-24 16:25:31', NULL),
(7, 3, 2, 7, NULL, NULL, NULL, 3, 5, '2023-12-24 16:25:44', '2023-12-24 16:25:44', NULL),
(8, 3, 2, 8, NULL, NULL, NULL, 4, 5, '2023-12-24 16:25:54', '2023-12-24 16:25:54', NULL),
(9, 3, 3, 9, 1, NULL, NULL, 9, 5, '2023-12-24 20:28:23', '2023-12-24 20:28:23', NULL),
(10, 3, 3, 10, 1, NULL, NULL, 7, 5, '2023-12-24 20:28:32', '2023-12-24 20:28:32', NULL),
(11, 3, 3, 11, 1, NULL, NULL, 8, 5, '2023-12-24 20:29:01', '2023-12-24 20:29:01', NULL),
(12, 3, 3, 12, 1, NULL, NULL, 8, 5, '2023-12-24 20:29:16', '2023-12-24 20:29:16', NULL),
(13, 2, 4, 13, NULL, NULL, NULL, 8, 5, '2023-12-24 20:30:33', '2023-12-24 20:30:33', NULL),
(14, 2, 4, 14, NULL, NULL, NULL, 6, 5, '2023-12-24 20:30:44', '2023-12-24 20:30:44', NULL),
(15, 2, 4, 15, NULL, NULL, NULL, 5, 5, '2023-12-24 20:30:58', '2023-12-24 20:30:58', NULL),
(16, 2, 4, 16, NULL, NULL, NULL, 9, 5, '2023-12-24 20:31:09', '2023-12-24 20:31:09', NULL),
(17, 3, 7, 24, 1, NULL, NULL, 2, 5, '2023-12-25 12:37:07', '2023-12-25 12:37:07', NULL),
(18, 3, 7, 25, 1, NULL, NULL, 2, 5, '2023-12-25 12:37:17', '2023-12-25 12:37:17', NULL),
(19, 3, 7, 26, 1, NULL, NULL, 2, 5, '2023-12-25 12:37:33', '2023-12-25 12:37:33', NULL),
(20, 3, 7, 27, 1, NULL, NULL, 2, 5, '2023-12-25 12:37:41', '2023-12-25 12:37:41', NULL),
(21, 2, 6, 20, NULL, NULL, NULL, 2, 5, '2023-12-25 12:36:17', '2023-12-25 12:36:17', NULL),
(22, 2, 6, 21, NULL, NULL, NULL, 2, 5, '2023-12-25 12:36:42', '2023-12-25 12:36:42', NULL),
(23, 2, 6, 22, NULL, NULL, NULL, 2, 5, '2023-12-25 12:36:51', '2023-12-25 12:36:51', NULL),
(24, 2, 6, 23, NULL, NULL, NULL, 2, 5, '2023-12-25 12:36:59', '2023-12-25 12:36:59', NULL),
(25, 3, 8, 28, 1, NULL, NULL, 3, 5, '2023-12-25 15:08:32', '2023-12-25 15:08:32', NULL),
(26, 3, 8, 29, 1, NULL, NULL, 3, 5, '2023-12-25 15:08:45', '2023-12-25 15:08:45', NULL),
(27, 3, 8, 30, NULL, NULL, NULL, 3, 5, '2023-12-25 15:08:58', '2023-12-25 15:08:58', NULL),
(28, 3, 8, 31, 1, NULL, NULL, 1, 5, '2023-12-25 15:09:29', '2023-12-25 15:09:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `printings`
--

CREATE TABLE `printings` (
  `id` int(11) NOT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `printed_sheet` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 2,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `printings`
--

INSERT INTO `printings` (`id`, `job_card_id`, `printed_sheet`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 4, 500, 5, '2023-12-24 16:56:19', '2023-12-24 17:05:34'),
(2, 3, 500, 5, '2023-12-24 17:17:26', '2023-12-24 17:20:52'),
(3, 1, 500, 5, '2023-12-24 19:01:06', '2023-12-24 19:02:08'),
(4, 5, 500, 5, '2023-12-24 19:05:34', '2023-12-24 19:06:27'),
(5, 2, 500, 5, '2023-12-24 19:05:36', '2023-12-24 19:05:54'),
(6, 6, 500, 5, '2023-12-24 19:58:35', '2023-12-24 19:58:56'),
(7, 7, 500, 5, '2023-12-24 19:58:38', '2023-12-24 19:59:15'),
(8, 8, 500, 5, '2023-12-24 20:04:50', '2023-12-24 20:05:22'),
(9, 13, 180, 5, '2023-12-24 20:40:46', '2023-12-24 20:41:27'),
(10, 14, 180, 5, '2023-12-25 07:31:49', '2023-12-25 07:41:28'),
(11, 15, 180, 5, '2023-12-25 08:34:36', '2023-12-25 08:35:10'),
(12, 16, 180, 5, '2023-12-25 08:56:14', '2023-12-25 08:56:48'),
(13, 12, 540, 5, '2023-12-25 10:11:40', '2023-12-25 10:13:05'),
(14, 11, 210, 5, '2023-12-25 10:34:45', '2023-12-25 10:36:36'),
(15, 10, 270, 5, '2023-12-25 11:09:11', '2023-12-25 11:10:24'),
(16, 9, 210, 5, '2023-12-25 11:19:55', '2023-12-25 11:20:36'),
(17, 17, 250, 5, '2023-12-25 12:57:08', '2023-12-25 13:00:55'),
(18, 18, 500, 5, '2023-12-25 12:57:20', '2023-12-25 13:00:50'),
(19, 19, 350, 5, '2023-12-25 12:57:24', '2023-12-25 13:00:45'),
(20, 20, 500, 5, '2023-12-25 12:57:28', '2023-12-25 13:00:40'),
(21, 21, 200, 5, '2023-12-25 12:57:32', '2023-12-25 13:00:36'),
(22, 22, 500, 5, '2023-12-25 12:57:37', '2023-12-25 13:00:31'),
(23, 23, 500, 5, '2023-12-25 12:57:41', '2023-12-25 13:00:18'),
(24, 24, 500, 5, '2023-12-25 12:57:46', '2023-12-25 13:00:04'),
(25, 25, 500, 5, '2023-12-25 16:14:05', '2023-12-25 16:14:20'),
(26, 27, 500, 5, '2023-12-25 16:20:23', '2023-12-25 16:20:46'),
(27, 26, 540, 5, '2023-12-25 16:22:34', '2023-12-25 16:25:27'),
(28, 28, 500, 5, '2023-12-25 16:26:20', '2023-12-25 16:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `packet_weight` decimal(10,3) DEFAULT 0.000,
  `item_per_packet` int(11) DEFAULT 1,
  `weight_per_piece` decimal(10,3) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT 0.00,
  `length` decimal(10,2) DEFAULT NULL,
  `width` decimal(10,2) DEFAULT NULL,
  `gsm` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_type_id`, `name`, `unit_id`, `category_id`, `hsn`, `packet_weight`, `item_per_packet`, `weight_per_piece`, `quantity`, `length`, `width`, `gsm`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '23X38-290', 5, 2, '4810', '15.500', 100, '0.155', '40735.01', '23.00', '38.00', 290, 1, '2023-12-24 09:09:00', '2023-12-25 15:29:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `only_paper` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `type`, `only_paper`, `created_at`, `updated_at`) VALUES
(1, 'White Paper', 1, '2023-11-24 12:07:41', '2023-11-24 12:07:41'),
(2, 'Yellow Paper', 1, '2023-11-24 12:07:41', '2023-11-24 12:07:41'),
(3, 'White Back', 1, '2023-11-24 12:07:41', '2023-11-24 12:07:41'),
(4, 'Grey Back', 1, '2023-11-24 12:07:41', '2023-11-24 12:07:41'),
(5, 'Art Paper', 1, '2023-11-24 12:07:41', '2023-11-24 12:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) NOT NULL,
  `client_id` int(11) NOT NULL,
  `po_no` varchar(255) NOT NULL,
  `po_date` date DEFAULT NULL,
  `made_by` int(11) NOT NULL,
  `designer` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 2,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `client_id`, `po_no`, `po_date`, `made_by`, `designer`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '215114', '2023-12-24', 1, 2, 6, '2023-12-24 09:14:19', '2023-12-24 09:14:46', NULL),
(2, 1, '35465', '2023-12-24', 1, 3, 6, '2023-12-24 09:43:34', '2023-12-24 09:44:40', NULL),
(3, 1, '215114', '2023-12-25', 1, 3, 6, '2023-12-24 20:26:51', '2023-12-24 20:27:59', NULL),
(4, 1, '564654', '2023-12-25', 1, 2, 6, '2023-12-24 20:28:53', '2023-12-24 20:29:54', NULL),
(5, 1, '215114', '2023-12-25', 1, NULL, 2, '2023-12-25 12:34:29', '2023-12-25 12:34:29', NULL),
(6, 1, '316545', '2023-12-25', 1, 2, 6, '2023-12-25 12:34:33', '2023-12-25 12:35:54', NULL),
(7, 1, '215114', '2023-12-25', 1, 3, 6, '2023-12-25 12:34:44', '2023-12-25 12:35:13', NULL),
(8, 1, '215114', '2023-12-25', 1, 3, 6, '2023-12-25 15:07:00', '2023-12-25 15:07:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `id` int(11) NOT NULL,
  `purchase_order_id` bigint(20) NOT NULL,
  `carton_name` varchar(255) DEFAULT NULL,
  `carton_size` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `coating_type_id` int(11) NOT NULL,
  `other_coating_type_id` int(11) DEFAULT NULL,
  `embossing_leafing` int(11) NOT NULL DEFAULT 0 COMMENT 'none=0\r\nembossing=1\r\nleafing=2\r\nboth=3',
  `paper_type_id` int(11) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `bill_no` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 2,
  `lock_status` tinyint(1) NOT NULL DEFAULT 0,
  `quantity_status` int(11) NOT NULL DEFAULT 0,
  `rate_status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_items`
--

INSERT INTO `purchase_order_items` (`id`, `purchase_order_id`, `carton_name`, `carton_size`, `quantity`, `rate`, `coating_type_id`, `other_coating_type_id`, `embossing_leafing`, `paper_type_id`, `delivery_date`, `bill_no`, `status_id`, `lock_status`, `quantity_status`, `rate_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'ABC', '57X37X100', 1200, '1.55', 3, 1, 1, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-24 09:14:19', '2023-12-24 19:04:29', NULL),
(2, 1, 'DEF', '57X37X100', 1200, '1.55', 4, 1, 2, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-24 09:14:19', '2023-12-24 19:56:28', NULL),
(3, 1, 'GHI', '57X37X100', 1200, '1.55', 5, 1, 3, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-24 09:14:19', '2023-12-24 18:48:46', NULL),
(4, 1, 'JKL', '57X37X100', 1200, '1.55', 6, 1, 0, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-24 09:14:19', '2023-12-24 17:10:18', NULL),
(5, 2, 'Mamoon', '20X22X24', 2500, '1.00', 3, 4, 1, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-24 09:43:34', '2023-12-24 19:56:24', NULL),
(6, 2, 'Nasar', '18X20X36', 2000, '1.00', 5, 4, 3, 2, NULL, NULL, 21, 0, 1, 1, '2023-12-24 09:43:34', '2023-12-24 20:04:13', NULL),
(7, 2, 'Noor', '10X12X14', 1500, '1.00', 4, 4, 2, 4, NULL, NULL, 21, 0, 1, 1, '2023-12-24 09:43:34', '2023-12-24 20:03:39', NULL),
(8, 2, 'Babu', '18X18X18', 3000, '1.00', 6, 4, 0, 3, NULL, NULL, 21, 0, 1, 1, '2023-12-24 09:43:34', '2023-12-24 20:07:30', NULL),
(9, 3, 'NNN', '57X37X100', 1234, '1.55', 1, 1, 1, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-24 20:26:51', '2023-12-25 11:24:37', NULL),
(10, 3, 'RRR', '57X37X100', 1212, '1.55', 1, 1, 2, 2, NULL, NULL, 21, 0, 1, 1, '2023-12-24 20:26:51', '2023-12-25 11:15:31', NULL),
(11, 3, 'JJJ', '57X37X100', 12122, '1.70', 1, 1, 3, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-24 20:26:51', '2023-12-25 10:54:31', NULL),
(12, 3, 'PPP', '57X37X100', 12311, '1.70', 1, 1, 0, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-24 20:26:51', '2023-12-25 10:27:43', NULL),
(13, 4, 'FALANA', '20X22X24', 1500, '2.00', 1, 4, 1, 2, NULL, NULL, 21, 0, 1, 1, '2023-12-24 20:28:53', '2023-12-25 07:30:14', NULL),
(14, 4, 'DHIMKANA', '18X20X36', 2000, '2.00', 1, 4, 2, 3, NULL, NULL, 21, 0, 1, 1, '2023-12-24 20:28:53', '2023-12-25 07:51:10', NULL),
(15, 4, 'Babu ne thana thaya', '10X12X14', 2500, '1.00', 1, 4, 3, 4, NULL, NULL, 21, 0, 1, 1, '2023-12-24 20:28:53', '2023-12-25 08:55:04', NULL),
(16, 4, 'Moye Moye', '18X18X18', 1800, '1.00', 1, 4, 0, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-24 20:28:53', '2023-12-25 10:09:44', NULL),
(17, 5, 'NB', '57X37X100', 6543, '2.55', 2, 4, 1, 1, NULL, NULL, 2, 0, 0, 0, '2023-12-25 12:34:29', '2023-12-25 12:34:29', NULL),
(18, 5, 'HG', '57X37X100', 8765, '1.55', 2, 4, 2, 1, NULL, NULL, 2, 0, 0, 0, '2023-12-25 12:34:29', '2023-12-25 12:34:29', NULL),
(19, 5, 'YT', '57X37X100', 675, '5.00', 2, 4, 3, 1, NULL, NULL, 2, 0, 0, 0, '2023-12-25 12:34:29', '2023-12-25 12:34:29', NULL),
(20, 6, 'Ayein Bengan', '20X22X24', 1000, '1.00', 2, 1, 1, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-25 12:34:33', '2023-12-25 13:12:43', NULL),
(21, 6, 'Baby', '18X20X36', 1500, '2.00', 2, 1, 2, 2, NULL, NULL, 21, 0, 1, 1, '2023-12-25 12:34:33', '2023-12-25 13:10:59', NULL),
(22, 6, 'Sona', '10X12X14', 1800, '1.00', 2, 1, 3, 3, NULL, NULL, 21, 0, 1, 1, '2023-12-25 12:34:33', '2023-12-25 13:13:54', NULL),
(23, 6, 'Mona', '18X18X18', 2000, '1.00', 2, 1, 0, 4, NULL, NULL, 21, 0, 1, 1, '2023-12-25 12:34:33', '2023-12-25 13:15:38', NULL),
(24, 7, 'NB', '57X37X100', 6543, '2.55', 2, 4, 1, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-25 12:34:44', '2023-12-25 13:17:12', NULL),
(25, 7, 'HG', '57X37X100', 8765, '1.55', 2, 4, 2, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-25 12:34:44', '2023-12-25 13:08:28', NULL),
(26, 7, 'YT', '57X37X100', 675, '5.00', 2, 4, 3, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-25 12:34:44', '2023-12-25 13:07:16', NULL),
(27, 7, 'TR', '57X37X100', 7654, '1.70', 2, 4, 0, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-25 12:34:44', '2023-12-25 13:27:42', NULL),
(28, 8, 'KK', '57X37X100', 2100, '1.55', 4, 2, 1, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-25 15:07:00', '2023-12-25 16:17:45', NULL),
(29, 8, 'LL', '57X37X100', 2100, '1.55', 3, 2, 0, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-25 15:07:00', '2023-12-25 16:26:50', NULL),
(30, 8, 'QQ', '100X12X90', 2323, '1.70', 5, 3, 1, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-25 15:07:00', '2023-12-25 16:22:17', NULL),
(31, 8, 'GG', '57X37X100', 1212, '1.70', 3, 3, 0, 1, NULL, NULL, 21, 0, 1, 1, '2023-12-25 15:07:00', '2023-12-25 16:27:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(8, 'Dye Cutting', 'Dye Cutting', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(9, 'Pasting', 'Pasting', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(10, 'Dispatch', 'Dispatch', '2023-12-07 16:58:15', '2023-12-07 16:58:15'),
(11, 'Billing', 'Billing', '2023-12-07 16:58:15', '2023-12-07 16:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`role_id`, `permission_key`) VALUES
(1, 'add_admin'),
(1, 'add_bread'),
(1, 'add_category'),
(1, 'add_chemical_coating'),
(1, 'add_client'),
(1, 'add_cutting'),
(1, 'add_designing'),
(1, 'add_die_cutting'),
(1, 'add_dye_cutting'),
(1, 'add_dye_details'),
(1, 'add_embossing'),
(1, 'add_job_card'),
(1, 'add_lamination'),
(1, 'add_leafing'),
(1, 'add_material_inward'),
(1, 'add_media'),
(1, 'add_menu'),
(1, 'add_paper_inward'),
(1, 'add_pasting'),
(1, 'add_planning'),
(1, 'add_printing'),
(1, 'add_product'),
(1, 'add_purchase_order'),
(1, 'add_role'),
(1, 'add_site_setting'),
(1, 'add_spot_uv'),
(1, 'add_transaction'),
(1, 'add_unit'),
(1, 'add_vendor'),
(1, 'browse_admin'),
(1, 'browse_bread'),
(1, 'browse_chemical_coating'),
(1, 'browse_client'),
(1, 'browse_cutting'),
(1, 'browse_dashboard'),
(1, 'browse_designing'),
(1, 'browse_die_cutting'),
(1, 'browse_dye_cutting'),
(1, 'browse_dye_details'),
(1, 'browse_embossing'),
(1, 'browse_job_card'),
(1, 'browse_lamination'),
(1, 'browse_leafing'),
(1, 'browse_material_inward'),
(1, 'browse_media'),
(1, 'browse_menu'),
(1, 'browse_paper_inward'),
(1, 'browse_pasting'),
(1, 'browse_planning'),
(1, 'browse_printing'),
(1, 'browse_product'),
(1, 'browse_purchase_order'),
(1, 'browse_role'),
(1, 'browse_setting'),
(1, 'browse_site_setting'),
(1, 'browse_spot_uv'),
(1, 'browse_transaction'),
(1, 'browse_unit'),
(1, 'browse_vendor'),
(1, 'change_email'),
(1, 'change_password'),
(1, 'change_status'),
(1, 'change_status_chemical_coating'),
(1, 'change_status_cutting'),
(1, 'change_status_dye_cutting'),
(1, 'change_status_embossing'),
(1, 'change_status_job_card'),
(1, 'change_status_lamination'),
(1, 'change_status_leafing'),
(1, 'change_status_printing'),
(1, 'change_status_spot_uv'),
(1, 'delete_admin'),
(1, 'delete_bread'),
(1, 'delete_category'),
(1, 'delete_chemical_coating'),
(1, 'delete_cutting'),
(1, 'delete_designing'),
(1, 'delete_die_cutting'),
(1, 'delete_dye_cutting'),
(1, 'delete_dye_details'),
(1, 'delete_embossing'),
(1, 'delete_job_card'),
(1, 'delete_lamination'),
(1, 'delete_leafing'),
(1, 'delete_material_inward'),
(1, 'delete_media'),
(1, 'delete_menu'),
(1, 'delete_paper_inward'),
(1, 'delete_pasting'),
(1, 'delete_planning'),
(1, 'delete_printing'),
(1, 'delete_product'),
(1, 'delete_purchase_order'),
(1, 'delete_role'),
(1, 'delete_site_setting'),
(1, 'delete_spot_uv'),
(1, 'delete_transaction'),
(1, 'delete_unit'),
(1, 'delete_vendor'),
(1, 'designer_purchase_order'),
(1, 'edit_admin'),
(1, 'edit_bread'),
(1, 'edit_category'),
(1, 'edit_chemical_coating'),
(1, 'edit_client'),
(1, 'edit_cutting'),
(1, 'edit_designing'),
(1, 'edit_die_cutting'),
(1, 'edit_dye_cutting'),
(1, 'edit_dye_details'),
(1, 'edit_embossing'),
(1, 'edit_job_card'),
(1, 'edit_lamination'),
(1, 'edit_leafing'),
(1, 'edit_material_inward'),
(1, 'edit_media'),
(1, 'edit_menu'),
(1, 'edit_paper_inward'),
(1, 'edit_pasting'),
(1, 'edit_planning'),
(1, 'edit_printing'),
(1, 'edit_product'),
(1, 'edit_purchase_order'),
(1, 'edit_role'),
(1, 'edit_site_setting'),
(1, 'edit_spot_uv'),
(1, 'edit_transaction'),
(1, 'edit_unit'),
(1, 'edit_vendor'),
(1, 'logo_site_setting'),
(1, 'quantity_purchase_order'),
(1, 'rate_purchase_order'),
(1, 'read_admin'),
(1, 'read_bread'),
(1, 'read_category'),
(1, 'read_chemical_coating'),
(1, 'read_client'),
(1, 'read_cutting'),
(1, 'read_designing'),
(1, 'read_die_cutting'),
(1, 'read_dye_cutting'),
(1, 'read_dye_details'),
(1, 'read_embossing'),
(1, 'read_job_card'),
(1, 'read_lamination'),
(1, 'read_leafing'),
(1, 'read_material_inward'),
(1, 'read_media'),
(1, 'read_menu'),
(1, 'read_paper_inward'),
(1, 'read_pasting'),
(1, 'read_planning'),
(1, 'read_printing'),
(1, 'read_product'),
(1, 'read_purchase_order'),
(1, 'read_role'),
(1, 'read_site_setting'),
(1, 'read_spot_uv'),
(1, 'read_transaction'),
(1, 'read_unit'),
(1, 'read_vendor'),
(2, 'browse_admin'),
(2, 'browse_dashboard'),
(2, 'browse_setting'),
(2, 'edit_admin'),
(2, 'read_admin'),
(3, 'add_designing'),
(3, 'add_planning'),
(3, 'browse_dashboard'),
(3, 'browse_designing'),
(3, 'browse_planning'),
(3, 'edit_designing'),
(3, 'read_designing'),
(3, 'read_planning'),
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
(4, 'read_purchase_order');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `title`, `description`, `logo`, `favicon`, `email`, `contact_no`, `country`, `state`, `city`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Softouch', 'Partner with an award-winning app development company to take your brick-and-mortar business online and reach a wider audience with powerful mobile and web solutions.', '4', '5', 'asifjamal251@gmail.com', '+91 9315647380', '0', 'Chandigarh', 'Chandigarh', 'F-26 Phase 8 Mohali Chandigarh', '2022-06-26 15:46:11', '2023-12-20 03:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `spot_uv`
--

CREATE TABLE `spot_uv` (
  `id` int(11) NOT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `spot_uv_sheets` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 2,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `leafing` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `spot_uv`
--

INSERT INTO `spot_uv` (`id`, `job_card_id`, `spot_uv_sheets`, `status_id`, `created_at`, `updated_at`, `leafing`) VALUES
(1, 5, 400, 5, '2023-12-24 19:07:06', '2023-12-24 19:55:07', 0),
(2, 6, 479, 5, '2023-12-24 20:00:25', '2023-12-24 20:03:12', 0),
(3, 7, 400, 5, '2023-12-24 20:02:25', '2023-12-24 20:03:00', 0),
(4, 8, 400, 5, '2023-12-24 20:05:58', '2023-12-24 20:06:58', 0),
(5, 14, 99, 5, '2023-12-25 07:43:40', '2023-12-25 07:47:20', 0),
(6, 15, 99, 5, '2023-12-25 08:50:02', '2023-12-25 08:50:44', 0),
(7, 16, 149, 5, '2023-12-25 10:08:53', '2023-12-25 10:09:22', 0),
(10, 22, 149, 5, '2023-12-25 13:05:32', '2023-12-25 13:08:02', 0),
(11, 23, 149, 5, '2023-12-25 13:05:37', '2023-12-25 13:06:24', 0),
(12, 21, 149, 5, '2023-12-25 13:16:02', '2023-12-25 13:16:23', 0),
(13, 24, 149, 5, '2023-12-25 13:25:29', '2023-12-25 13:26:15', 0),
(14, 27, 149, 5, '2023-12-25 16:21:22', '2023-12-25 16:21:44', 0),
(15, 28, 149, 5, '2023-12-25 16:26:56', '2023-12-25 16:27:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status_badge` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(21, 'In Pasting', '<span class=\"badge bg-secondary\">In Pasting\r\n</span>');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'debit/credit',
  `current_quantity` decimal(10,2) DEFAULT 0.00,
  `new_quantity` decimal(10,2) DEFAULT 0.00,
  `total_quantity` decimal(10,2) DEFAULT 0.00,
  `trancation_by` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `job_card_id` bigint(20) DEFAULT NULL,
  `material_inward_id` bigint(20) DEFAULT NULL,
  `material_issue_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `product_id`, `type`, `current_quantity`, `new_quantity`, `total_quantity`, `trancation_by`, `remarks`, `job_card_id`, `material_inward_id`, `material_issue_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2023-12-24 09:09:00', '2023-12-24 09:09:00', NULL),
(2, 1, 'Credit', '0.00', '7000.00', '7000.00', 1, 'Product Inward', NULL, 1, NULL, '2023-12-24 09:10:31', '2023-12-24 09:10:31', NULL),
(3, 1, 'Debit', '7000.00', '550.00', '6450.00', 1, 'used in job card', 1, NULL, NULL, '2023-12-24 09:19:33', '2023-12-24 09:19:33', NULL),
(4, 1, 'Debit', '6450.00', '550.00', '5900.00', 1, 'used in job card', 2, NULL, NULL, '2023-12-24 09:20:21', '2023-12-24 09:20:21', NULL),
(5, 1, 'Debit', '5900.00', '550.00', '5350.00', 1, 'used in job card', 3, NULL, NULL, '2023-12-24 09:29:47', '2023-12-24 09:29:47', NULL),
(6, 1, 'Debit', '5350.00', '550.00', '4800.00', 1, 'used in job card', 4, NULL, NULL, '2023-12-24 09:30:35', '2023-12-24 09:30:35', NULL),
(7, 1, 'Debit', '4800.00', '550.00', '4250.00', 1, 'used in job card', 5, NULL, NULL, '2023-12-24 16:30:49', '2023-12-24 16:30:49', NULL),
(8, 1, 'Debit', '4250.00', '550.00', '3700.00', 1, 'used in job card', 6, NULL, NULL, '2023-12-24 16:33:10', '2023-12-24 16:33:10', NULL),
(9, 1, 'Debit', '3700.00', '550.00', '3150.00', 1, 'used in job card', 7, NULL, NULL, '2023-12-24 16:34:15', '2023-12-24 16:34:15', NULL),
(10, 1, 'Debit', '3150.00', '550.00', '2600.00', 1, 'used in job card', 8, NULL, NULL, '2023-12-24 16:36:39', '2023-12-24 16:36:39', NULL),
(11, 1, 'Debit', '2600.00', '275.00', '2325.00', 1, 'used in job card', 9, NULL, NULL, '2023-12-24 20:34:40', '2023-12-24 20:34:40', NULL),
(12, 1, 'Debit', '2325.00', '183.33', '2141.67', 1, 'used in job card', 13, NULL, NULL, '2023-12-24 20:35:02', '2023-12-24 20:35:02', NULL),
(13, 1, 'Debit', '2141.67', '275.00', '1866.67', 1, 'used in job card', 10, NULL, NULL, '2023-12-24 20:36:00', '2023-12-24 20:36:00', NULL),
(14, 1, 'Debit', '1866.67', '183.33', '1683.34', 1, 'used in job card', 14, NULL, NULL, '2023-12-24 20:36:15', '2023-12-24 20:36:15', NULL),
(15, 1, 'Debit', '1683.34', '220.00', '1463.34', 1, 'used in job card', 11, NULL, NULL, '2023-12-24 20:36:57', '2023-12-24 20:36:57', NULL),
(16, 1, 'Debit', '1463.34', '183.33', '1280.01', 1, 'used in job card', 15, NULL, NULL, '2023-12-24 20:37:28', '2023-12-24 20:37:28', NULL),
(17, 1, 'Debit', '1280.01', '550.00', '730.01', 1, 'used in job card', 12, NULL, NULL, '2023-12-24 20:38:18', '2023-12-24 20:38:18', NULL),
(18, 1, 'Debit', '730.01', '183.33', '546.68', 1, 'used in job card', 16, NULL, NULL, '2023-12-24 20:38:34', '2023-12-24 20:38:34', NULL),
(19, 1, 'Debit', '546.68', '550.00', '-3.32', 1, 'used in job card', 17, NULL, NULL, '2023-12-25 12:43:06', '2023-12-25 12:43:06', NULL),
(20, 1, 'Debit', '-3.32', '275.00', '-278.32', 1, 'used in job card', 17, NULL, NULL, '2023-12-25 12:44:06', '2023-12-25 12:44:06', NULL),
(21, 1, 'Credit', '-278.32', '46700.00', '46421.68', 1, 'Product Inward', NULL, 2, NULL, '2023-12-25 12:46:48', '2023-12-25 12:46:48', NULL),
(22, 1, 'Debit', '46421.68', '550.00', '45871.68', 1, 'used in job card', 18, NULL, NULL, '2023-12-25 12:48:27', '2023-12-25 12:48:27', NULL),
(23, 1, 'Debit', '45871.68', '366.67', '45505.01', 1, 'used in job card', 19, NULL, NULL, '2023-12-25 12:50:53', '2023-12-25 12:50:53', NULL),
(24, 1, 'Debit', '45505.01', '550.00', '44955.01', 1, 'used in job card', 20, NULL, NULL, '2023-12-25 12:51:56', '2023-12-25 12:51:56', NULL),
(25, 1, 'Debit', '44955.01', '220.00', '44735.01', 1, 'used in job card', 21, NULL, NULL, '2023-12-25 12:53:23', '2023-12-25 12:53:23', NULL),
(26, 1, 'Debit', '44735.01', '550.00', '44185.01', 1, 'used in job card', 22, NULL, NULL, '2023-12-25 12:54:12', '2023-12-25 12:54:12', NULL),
(27, 1, 'Debit', '44185.01', '550.00', '43635.01', 1, 'used in job card', 23, NULL, NULL, '2023-12-25 12:54:54', '2023-12-25 12:54:54', NULL),
(28, 1, 'Debit', '43635.01', '550.00', '43085.01', 1, 'used in job card', 24, NULL, NULL, '2023-12-25 12:56:03', '2023-12-25 12:56:03', NULL),
(29, 1, 'Debit', '43085.01', '550.00', '42535.01', 1, 'used in job card', 25, NULL, NULL, '2023-12-25 15:24:16', '2023-12-25 15:24:16', NULL),
(30, 1, 'Debit', '42535.01', '550.00', '41985.01', 1, 'used in job card', 26, NULL, NULL, '2023-12-25 15:25:32', '2023-12-25 15:25:32', NULL),
(31, 1, 'Debit', '41985.01', '700.00', '41285.01', 1, 'used in job card', 27, NULL, NULL, '2023-12-25 15:27:53', '2023-12-25 15:27:53', NULL),
(32, 1, 'Debit', '41285.01', '550.00', '40735.01', 1, 'used in job card', 28, NULL, NULL, '2023-12-25 15:29:59', '2023-12-25 15:29:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trimmed_paper_stock`
--

CREATE TABLE `trimmed_paper_stock` (
  `id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'NUMBERS', 'NOS', '2023-11-29 20:13:19', '2023-11-29 20:13:19', NULL),
(2, 'KILOGRAM', 'KG', '2023-11-29 20:13:31', '2023-11-29 20:13:31', NULL),
(3, 'LITER', 'LTR', '2023-11-29 20:13:39', '2023-12-13 16:26:12', '2023-12-13 16:26:12'),
(4, 'METER', 'MTR', '2023-11-29 20:13:54', '2023-11-29 20:13:54', NULL),
(5, 'Sheets', 'Sheets', '2023-12-13 16:25:21', '2023-12-13 16:26:46', NULL),
(6, 'LITER', 'LTR', '2023-12-14 19:23:29', '2023-12-14 19:23:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_no` bigint(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `email`, `phone_no`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ANURAG ENTERPRISES', 'kavitak000999@gmail.com', 9780803692, '120', '2023-12-24 08:52:39', '2023-12-24 08:52:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carton_histories`
--
ALTER TABLE `carton_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chemical_coatings`
--
ALTER TABLE `chemical_coatings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `coating_types`
--
ALTER TABLE `coating_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuttings`
--
ALTER TABLE `cuttings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designings`
--
ALTER TABLE `designings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dye_cuttings`
--
ALTER TABLE `dye_cuttings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dye_details`
--
ALTER TABLE `dye_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `embossings`
--
ALTER TABLE `embossings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_cards`
--
ALTER TABLE `job_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_card_items`
--
ALTER TABLE `job_card_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_card_medias`
--
ALTER TABLE `job_card_medias`
  ADD KEY `job_card_medias_job_card_id_foreign` (`job_card_id`);

--
-- Indexes for table `laminations`
--
ALTER TABLE `laminations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leafings`
--
ALTER TABLE `leafings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine_machine_types`
--
ALTER TABLE `machine_machine_types`
  ADD KEY `machine_machine_types_machine_id_foreign` (`machine_id`),
  ADD KEY `machine_machine_types_machine_type_id_foreign` (`machine_type_id`);

--
-- Indexes for table `machine_types`
--
ALTER TABLE `machine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material_inwards`
--
ALTER TABLE `material_inwards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material_inward_items`
--
ALTER TABLE `material_inward_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`slug`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `other_coating_types`
--
ALTER TABLE `other_coating_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paper_qualities`
--
ALTER TABLE `paper_qualities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paper_warehouses`
--
ALTER TABLE `paper_warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pastings`
--
ALTER TABLE `pastings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`permission_key`);

--
-- Indexes for table `plannings`
--
ALTER TABLE `plannings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printings`
--
ALTER TABLE `printings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD UNIQUE KEY `role_id_2` (`role_id`,`permission_key`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_uv`
--
ALTER TABLE `spot_uv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trimmed_paper_stock`
--
ALTER TABLE `trimmed_paper_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `carton_histories`
--
ALTER TABLE `carton_histories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chemical_coatings`
--
ALTER TABLE `chemical_coatings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coating_types`
--
ALTER TABLE `coating_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cuttings`
--
ALTER TABLE `cuttings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `designings`
--
ALTER TABLE `designings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `dye_cuttings`
--
ALTER TABLE `dye_cuttings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `dye_details`
--
ALTER TABLE `dye_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `embossings`
--
ALTER TABLE `embossings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `job_cards`
--
ALTER TABLE `job_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `job_card_items`
--
ALTER TABLE `job_card_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `laminations`
--
ALTER TABLE `laminations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `leafings`
--
ALTER TABLE `leafings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `machines`
--
ALTER TABLE `machines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `machine_types`
--
ALTER TABLE `machine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `material_inwards`
--
ALTER TABLE `material_inwards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `material_inward_items`
--
ALTER TABLE `material_inward_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `other_coating_types`
--
ALTER TABLE `other_coating_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `paper_qualities`
--
ALTER TABLE `paper_qualities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paper_warehouses`
--
ALTER TABLE `paper_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pastings`
--
ALTER TABLE `pastings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `plannings`
--
ALTER TABLE `plannings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `printings`
--
ALTER TABLE `printings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spot_uv`
--
ALTER TABLE `spot_uv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `trimmed_paper_stock`
--
ALTER TABLE `trimmed_paper_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_card_medias`
--
ALTER TABLE `job_card_medias`
  ADD CONSTRAINT `job_card_medias_job_card_id_foreign` FOREIGN KEY (`job_card_id`) REFERENCES `job_cards` (`id`) ON DELETE CASCADE;

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
