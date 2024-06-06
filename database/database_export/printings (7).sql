-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 06, 2024 at 05:21 PM
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
  `log_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `batch_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'product', 'product has been created', 'App\\Models\\Product', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-25T10:49:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 10:49:58', '2024-05-25 10:49:58'),
(2, 'product', 'product has been created', 'App\\Models\\Product', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"product_type_id\":1,\"code\":\"jk-1235\",\"name\":\"25X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"16.8400\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1680\",\"length\":\"25.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:50:52.000000Z\",\"updated_at\":\"2024-05-25T10:50:52.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 10:50:52', '2024-05-25 10:50:52'),
(3, 'product', 'product has been created', 'App\\Models\\Product', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"product_type_id\":2,\"code\":\"C-1239\",\"name\":\"26X38-300\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"19.1200\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1910\",\"length\":\"26.0000\",\"width\":\"38.0000\",\"gsm\":300,\"quantity\":null,\"in_hand_quantity\":3000,\"type\":1,\"created_at\":\"2024-05-25T10:53:05.000000Z\",\"updated_at\":\"2024-05-25T10:53:05.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 10:53:05', '2024-05-25 10:53:05'),
(4, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\MaterialOrderItem', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"material_order_id\":1,\"category_id\":3,\"product_id\":3,\"item_name\":\"26X38-300\",\"quantity\":\"60.00\",\"hsn\":\"4810\",\"weight_per_piece\":\"0.19\",\"total_weight\":\"1146.00\",\"unit_id\":2,\"rate_on\":\"76.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"100.00\",\"total_item\":\"6000.00\",\"rate\":\"87096.00\",\"gst\":\"12.00\",\"gst_amount\":\"10451.52\",\"amount\":\"87096.00\",\"created_at\":\"2024-05-25T10:57:24.000000Z\",\"updated_at\":\"2024-05-25T10:57:24.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 10:57:24', '2024-05-25 10:57:24'),
(5, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\MaterialOrderItem', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"material_order_id\":2,\"category_id\":3,\"product_id\":3,\"item_name\":\"26X38-300\",\"quantity\":\"60.00\",\"hsn\":\"4810\",\"weight_per_piece\":\"0.19\",\"total_weight\":\"1146.00\",\"unit_id\":2,\"rate_on\":\"76.50\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"100.00\",\"total_item\":\"6000.00\",\"rate\":\"87669.00\",\"gst\":\"12.00\",\"gst_amount\":\"10520.28\",\"amount\":\"87669.00\",\"created_at\":\"2024-05-25T11:12:10.000000Z\",\"updated_at\":\"2024-05-25T11:12:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 11:12:10', '2024-05-25 11:12:10'),
(6, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\MaterialOrderItem', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"material_order_id\":2,\"category_id\":1,\"product_id\":1,\"item_name\":\"23X36-290\",\"quantity\":\"50.00\",\"hsn\":\"4810\",\"weight_per_piece\":\"0.16\",\"total_weight\":\"775.00\",\"unit_id\":2,\"rate_on\":\"76.50\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"100.00\",\"total_item\":\"5000.00\",\"rate\":\"59287.50\",\"gst\":\"12.00\",\"gst_amount\":\"7114.50\",\"amount\":\"59287.50\",\"created_at\":\"2024-05-25T11:12:10.000000Z\",\"updated_at\":\"2024-05-25T11:12:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 11:12:10', '2024-05-25 11:12:10'),
(7, 'Material Inward', 'Material Inward has been created', 'App\\Models\\MaterialInward', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"receipt_no\":\"REC0001\",\"vendor_id\":1,\"bill_no\":\"5454R\",\"bill_date\":\"2024-05-24T18:30:00.000000Z\",\"subtotal\":null,\"total_gst\":null,\"total\":null,\"created_at\":\"2024-05-25T11:16:33.000000Z\",\"updated_at\":\"2024-05-25T11:16:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 11:16:33', '2024-05-25 11:16:33'),
(8, 'Material Inward Item', 'Material Inward Item has been created', 'App\\Models\\MaterialInwardItem', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"material_inward_id\":1,\"category_id\":1,\"product_id\":2,\"item_name\":\"25X36-290\",\"quantity\":\"60.00\",\"hsn\":\"4810\",\"weight_per_piece\":\"0.17\",\"total_weight\":\"1008.00\",\"unit\":\"Sheets\",\"rate_on\":\"76.50\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"100.00\",\"total_item\":\"6000.00\",\"rate\":\"77112.00\",\"gst\":\"12.00\",\"gst_amount\":\"9253.44\",\"amount\":\"77112.00\",\"created_at\":\"2024-05-25T11:16:34.000000Z\",\"updated_at\":\"2024-05-25T11:16:34.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 11:16:34', '2024-05-25 11:16:34'),
(9, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"product_type_id\":1,\"code\":\"jk-1235\",\"name\":\"25X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"16.8400\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1680\",\"length\":\"25.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"6000.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:50:52.000000Z\",\"updated_at\":\"2024-05-25T11:16:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"product_type_id\":1,\"code\":\"jk-1235\",\"name\":\"25X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"16.8400\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1680\",\"length\":\"25.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:50:52.000000Z\",\"updated_at\":\"2024-05-25T10:50:52.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 11:16:34', '2024-05-25 11:16:34'),
(10, 'Material Inward Item', 'Material Inward Item has been created', 'App\\Models\\MaterialInwardItem', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"material_inward_id\":1,\"category_id\":1,\"product_id\":1,\"item_name\":\"23X36-290\",\"quantity\":\"50.00\",\"hsn\":\"4810\",\"weight_per_piece\":\"0.16\",\"total_weight\":\"775.00\",\"unit\":\"Sheets\",\"rate_on\":\"76.50\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"100.00\",\"total_item\":\"5000.00\",\"rate\":\"59287.50\",\"gst\":\"12.00\",\"gst_amount\":\"7114.50\",\"amount\":\"59287.50\",\"created_at\":\"2024-05-25T11:16:34.000000Z\",\"updated_at\":\"2024-05-25T11:16:34.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 11:16:34', '2024-05-25 11:16:34'),
(11, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"5000.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-25T11:16:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-25T10:49:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 11:16:34', '2024-05-25 11:16:34'),
(12, 'Material Inward', 'Material Inward has been updated', 'App\\Models\\MaterialInward', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"receipt_no\":\"REC0001\",\"vendor_id\":1,\"bill_no\":\"5454R\",\"bill_date\":\"2024-05-24T18:30:00.000000Z\",\"subtotal\":\"136399.50\",\"total_gst\":\"16367.94\",\"total\":\"152767.44\",\"created_at\":\"2024-05-25T11:16:33.000000Z\",\"updated_at\":\"2024-05-25T11:16:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"receipt_no\":\"REC0001\",\"vendor_id\":\"1\",\"bill_no\":\"5454R\",\"bill_date\":\"2024-05-24T18:30:00.000000Z\",\"subtotal\":null,\"total_gst\":null,\"total\":null,\"created_at\":\"2024-05-25T11:16:33.000000Z\",\"updated_at\":\"2024-05-25T11:16:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 11:16:34', '2024-05-25 11:16:34'),
(13, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"dye_no\":\"1\",\"length\":57,\"width\":37,\"height\":100,\"dye_lock\":\"lockbottom\",\"ups\":9,\"sheet_size\":\"19x23\",\"automatic\":0,\"carton_size\":\"57X37X100\",\"created_at\":\"2024-05-25T11:23:13.000000Z\",\"updated_at\":\"2024-05-25T11:23:13.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 11:23:13', '2024-05-25 11:23:13'),
(14, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"dye_no\":\"2\",\"length\":58,\"width\":58,\"height\":200,\"dye_lock\":\"lockbottom\",\"ups\":4,\"sheet_size\":\"19x20\",\"automatic\":0,\"carton_size\":\"58X58X200\",\"created_at\":\"2024-05-25T11:23:52.000000Z\",\"updated_at\":\"2024-05-25T11:23:52.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 11:23:52', '2024-05-25 11:23:52'),
(15, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"client_id\":12,\"po_no\":\"2351\",\"po_date\":\"2024-05-24T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:20:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:20:14', '2024-05-25 13:20:14'),
(16, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:20:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:20:14', '2024-05-25 13:20:14'),
(17, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R2\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:20:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:20:14', '2024-05-25 13:20:14'),
(18, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"HIJ\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:20:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:20:14', '2024-05-25 13:20:14'),
(19, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"client_id\":17,\"po_no\":\"215114\",\"po_date\":\"2024-05-24T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:22:29.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:22:29', '2024-05-25 13:22:29'),
(20, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"MNB\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:22:29.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:22:29', '2024-05-25 13:22:29'),
(21, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"LKJ\",\"carton_size\":\"60X37X105\",\"quantity\":3000,\"rate\":\"6.72\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:22:29.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:22:29', '2024-05-25 13:22:29'),
(22, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"client_id\":17,\"po_no\":\"215114\",\"po_date\":\"2024-05-24T18:30:00.000000Z\",\"made_by\":1,\"designer\":2,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:22:41.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"client_id\":17,\"po_no\":\"215114\",\"po_date\":\"2024-05-24T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:22:29.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:22:41', '2024-05-25 13:22:41'),
(23, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"client_id\":12,\"po_no\":\"2351\",\"po_date\":\"2024-05-24T18:30:00.000000Z\",\"made_by\":1,\"designer\":2,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:22:44.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"client_id\":12,\"po_no\":\"2351\",\"po_date\":\"2024-05-24T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:20:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:22:44', '2024-05-25 13:22:44'),
(24, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"MNB\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:24:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"MNB\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:22:29.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:24:28', '2024-05-25 13:24:28'),
(25, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"LKJ\",\"carton_size\":\"60X37X105\",\"quantity\":3000,\"rate\":\"6.72\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:24:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"LKJ\",\"carton_size\":\"60X37X105\",\"quantity\":3000,\"rate\":\"6.72\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:22:29.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:24:28', '2024-05-25 13:24:28'),
(26, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"MNB\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:24:30.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"MNB\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:24:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:24:30', '2024-05-25 13:24:30'),
(27, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"LKJ\",\"carton_size\":\"60X37X105\",\"quantity\":3000,\"rate\":\"6.72\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:24:30.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"LKJ\",\"carton_size\":\"60X37X105\",\"quantity\":3000,\"rate\":\"6.72\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:24:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:24:30', '2024-05-25 13:24:30'),
(28, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"MNB\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":11,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:24:35.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"MNB\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:24:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:24:35', '2024-05-25 13:24:35'),
(29, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"LKJ\",\"carton_size\":\"60X37X105\",\"quantity\":3000,\"rate\":\"6.72\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":11,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:24:35.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"LKJ\",\"carton_size\":\"60X37X105\",\"quantity\":3000,\"rate\":\"6.72\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":4,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:22:29.000000Z\",\"updated_at\":\"2024-05-25T13:24:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:24:35', '2024-05-25 13:24:35'),
(30, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:10.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:20:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:25:10', '2024-05-25 13:25:10'),
(31, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R2\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:10.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R2\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:20:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:25:10', '2024-05-25 13:25:10'),
(32, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"HIJ\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:10.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"HIJ\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:20:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:25:10', '2024-05-25 13:25:10'),
(33, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:12.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:25:12', '2024-05-25 13:25:12'),
(34, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R2\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:12.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R2\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:25:12', '2024-05-25 13:25:12'),
(35, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"HIJ\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:12.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"HIJ\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:25:12', '2024-05-25 13:25:12'),
(36, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":11,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:16.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"ABC\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:12.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:25:16', '2024-05-25 13:25:16'),
(37, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R2\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":11,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:16.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"DEF\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R2\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:12.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:25:16', '2024-05-25 13:25:16'),
(38, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"HIJ\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":11,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:16.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"HIJ\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"1.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R3\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-25T13:20:14.000000Z\",\"updated_at\":\"2024-05-25T13:25:12.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:25:17', '2024-05-25 13:25:17'),
(39, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"planning_by\":1,\"job_card_no\":\"001\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T13:27:15.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:27:15', '2024-05-25 13:27:15'),
(40, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"job_card_id\":1,\"planning_id\":3,\"purchase_order_id\":1,\"purchase_order_item_id\":1,\"ups\":3,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T13:27:15.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:27:15', '2024-05-25 13:27:15'),
(41, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T13:27:15.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"planning_by\":1,\"job_card_no\":\"001\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T13:27:15.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:27:15', '2024-05-25 13:27:15'),
(42, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"job_card_id\":1,\"planning_id\":4,\"purchase_order_id\":1,\"purchase_order_item_id\":2,\"ups\":3,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T13:27:15.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:27:15', '2024-05-25 13:27:15'),
(43, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"job_card_id\":1,\"planning_id\":5,\"purchase_order_id\":1,\"purchase_order_item_id\":3,\"ups\":3,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T13:27:15.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:27:15', '2024-05-25 13:27:15'),
(44, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"job_card_id\":1,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T13:27:15.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:27:15', '2024-05-25 13:27:15'),
(45, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"planning_by\":1,\"job_card_no\":\"002\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-25T13:27:33.000000Z\",\"updated_at\":\"2024-05-25T13:27:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:27:33', '2024-05-25 13:27:33'),
(46, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"job_card_id\":2,\"planning_id\":1,\"purchase_order_id\":2,\"purchase_order_item_id\":4,\"ups\":2,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-25T13:27:33.000000Z\",\"updated_at\":\"2024-05-25T13:27:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:27:33', '2024-05-25 13:27:33'),
(47, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"planning_by\":2,\"job_card_no\":\"002\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-25T13:27:33.000000Z\",\"updated_at\":\"2024-05-25T13:27:33.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"planning_by\":1,\"job_card_no\":\"002\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-05-25T13:27:33.000000Z\",\"updated_at\":\"2024-05-25T13:27:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:27:33', '2024-05-25 13:27:33'),
(48, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"job_card_id\":2,\"planning_id\":2,\"purchase_order_id\":2,\"purchase_order_item_id\":5,\"ups\":1,\"quantity\":3000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-25T13:27:33.000000Z\",\"updated_at\":\"2024-05-25T13:27:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:27:33', '2024-05-25 13:27:33'),
(49, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"job_card_id\":2,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-05-25T13:27:33.000000Z\",\"updated_at\":\"2024-05-25T13:27:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:27:33', '2024-05-25 13:27:33'),
(50, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"job_card_id\":1,\"planning_id\":3,\"purchase_order_id\":1,\"purchase_order_item_id\":1,\"ups\":3,\"quantity\":null,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-25T13:31:37.000000Z\",\"updated_at\":\"2024-05-25T13:31:37.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:31:37', '2024-05-25 13:31:37'),
(51, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T13:31:37.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T13:29:59.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:31:37', '2024-05-25 13:31:37'),
(52, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"planning_by\":2,\"job_card_no\":\"002\",\"mix\":0,\"product_id\":null,\"sheet_size\":\"19x20\",\"required_sheet\":1667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"2321\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-25T13:27:33.000000Z\",\"updated_at\":\"2024-05-25T13:49:14.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"planning_by\":2,\"job_card_no\":\"002\",\"mix\":0,\"product_id\":null,\"sheet_size\":\"19x20\",\"required_sheet\":1667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"2321\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2024-05-25T13:27:33.000000Z\",\"updated_at\":\"2024-05-25T13:32:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:49:14', '2024-05-25 13:49:14');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(53, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"4117.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-25T13:49:14.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"5000.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-25T11:16:34.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:49:14', '2024-05-25 13:49:14'),
(54, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"planning_by\":2,\"job_card_no\":\"002\",\"mix\":0,\"product_id\":null,\"sheet_size\":\"19x20\",\"required_sheet\":1667,\"wastage_sheet\":null,\"total_sheet\":1767,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"2321\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-25T13:27:33.000000Z\",\"updated_at\":\"2024-05-25T13:49:14.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"planning_by\":2,\"job_card_no\":\"002\",\"mix\":0,\"product_id\":null,\"sheet_size\":\"19x20\",\"required_sheet\":1667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"2321\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-25T13:27:33.000000Z\",\"updated_at\":\"2024-05-25T13:49:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:49:14', '2024-05-25 13:49:14'),
(55, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T13:50:30.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T13:32:59.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:50:30', '2024-05-25 13:50:30'),
(56, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"product_type_id\":1,\"code\":\"jk-1235\",\"name\":\"25X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"16.8400\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1680\",\"length\":\"25.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"5800.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:50:52.000000Z\",\"updated_at\":\"2024-05-25T13:50:30.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"product_type_id\":1,\"code\":\"jk-1235\",\"name\":\"25X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"16.8400\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1680\",\"length\":\"25.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"6000.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:50:52.000000Z\",\"updated_at\":\"2024-05-25T11:16:34.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:50:30', '2024-05-25 13:50:30'),
(57, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"3934.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-25T13:50:30.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"4117.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-25T13:49:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:50:30', '2024-05-25 13:50:30'),
(58, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":767,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T13:50:30.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T13:50:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 13:50:30', '2024-05-25 13:50:30'),
(59, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":967,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":767,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T14:25:23.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":767,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":767,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":\"1\",\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T14:24:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 14:25:23', '2024-05-25 14:25:23'),
(60, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"product_type_id\":1,\"code\":\"jk-1235\",\"name\":\"25X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"16.8400\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1680\",\"length\":\"25.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"5750.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:50:52.000000Z\",\"updated_at\":\"2024-05-25T14:27:48.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"product_type_id\":1,\"code\":\"jk-1235\",\"name\":\"25X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"16.8400\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1680\",\"length\":\"25.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"5800.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:50:52.000000Z\",\"updated_at\":\"2024-05-25T13:50:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 14:27:48', '2024-05-25 14:27:48'),
(61, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":467,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":767,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T14:27:48.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"planning_by\":2,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":967,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":767,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":\"1\",\"created_at\":\"2024-05-25T13:27:15.000000Z\",\"updated_at\":\"2024-05-25T14:26:56.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-25 14:27:48', '2024-05-25 14:27:48'),
(62, 'product', 'product has been created', 'App\\Models\\Product', 'created', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"product_type_id\":2,\"code\":\"KK325\",\"name\":\"23X36-340\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"18.1600\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1820\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":340,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-26T05:33:03.000000Z\",\"updated_at\":\"2024-05-26T05:33:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 05:33:03', '2024-05-26 05:33:03'),
(63, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"product_type_id\":2,\"code\":\"KK325\",\"name\":\"23X40-340\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"18.1600\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1820\",\"length\":\"23.0000\",\"width\":\"40.0000\",\"gsm\":340,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-26T05:33:03.000000Z\",\"updated_at\":\"2024-05-26T05:47:45.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"product_type_id\":2,\"code\":\"KK325\",\"name\":\"23X36-340\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"18.1600\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1820\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":340,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-26T05:33:03.000000Z\",\"updated_at\":\"2024-05-26T05:33:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 05:47:45', '2024-05-26 05:47:45'),
(64, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"product_type_id\":6,\"code\":\"C-1239\",\"name\":\"26X38-300\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"19.1200\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1910\",\"length\":\"26.0000\",\"width\":\"38.0000\",\"gsm\":300,\"quantity\":null,\"in_hand_quantity\":3000,\"type\":1,\"created_at\":\"2024-05-25T10:53:05.000000Z\",\"updated_at\":\"2024-05-26T05:47:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"product_type_id\":2,\"code\":\"C-1239\",\"name\":\"26X38-300\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"19.1200\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1910\",\"length\":\"26.0000\",\"width\":\"38.0000\",\"gsm\":300,\"quantity\":null,\"in_hand_quantity\":3000,\"type\":1,\"created_at\":\"2024-05-25T10:53:05.000000Z\",\"updated_at\":\"2024-05-25T10:53:05.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 05:47:54', '2024-05-26 05:47:54'),
(65, 'product', 'product has been created', 'App\\Models\\Product', 'created', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"product_type_id\":5,\"code\":\"PL-112\",\"name\":\"DEVELOPER\",\"unit_id\":4,\"category_id\":4,\"hsn\":\"564\",\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"20.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":0,\"created_at\":\"2024-05-26T05:51:40.000000Z\",\"updated_at\":\"2024-05-26T05:51:40.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 05:51:40', '2024-05-26 05:51:40'),
(66, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"product_type_id\":null,\"code\":\"PL-112\",\"name\":\"DEVELOPER\",\"unit_id\":4,\"category_id\":4,\"hsn\":\"564\",\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"20.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":0,\"created_at\":\"2024-05-26T05:51:40.000000Z\",\"updated_at\":\"2024-05-26T06:06:43.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"product_type_id\":5,\"code\":\"PL-112\",\"name\":\"DEVELOPER\",\"unit_id\":4,\"category_id\":4,\"hsn\":\"564\",\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"20.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":0,\"created_at\":\"2024-05-26T05:51:40.000000Z\",\"updated_at\":\"2024-05-26T05:51:40.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 06:06:43', '2024-05-26 06:06:43'),
(67, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"product_type_id\":null,\"code\":\"PL-1122\",\"name\":\"DEVELOPER\",\"unit_id\":4,\"category_id\":4,\"hsn\":\"564\",\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"20.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":0,\"created_at\":\"2024-05-26T05:51:40.000000Z\",\"updated_at\":\"2024-05-26T06:07:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"product_type_id\":null,\"code\":\"PL-112\",\"name\":\"DEVELOPER\",\"unit_id\":4,\"category_id\":4,\"hsn\":\"564\",\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"20.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":0,\"created_at\":\"2024-05-26T05:51:40.000000Z\",\"updated_at\":\"2024-05-26T06:06:43.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 06:07:28', '2024-05-26 06:07:28'),
(68, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"product_type_id\":null,\"code\":\"PL-11224\",\"name\":\"DEVELOPER\",\"unit_id\":4,\"category_id\":4,\"hsn\":\"564\",\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"20.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":0,\"created_at\":\"2024-05-26T05:51:40.000000Z\",\"updated_at\":\"2024-05-26T06:07:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"product_type_id\":null,\"code\":\"PL-1122\",\"name\":\"DEVELOPER\",\"unit_id\":4,\"category_id\":4,\"hsn\":\"564\",\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"20.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":0,\"created_at\":\"2024-05-26T05:51:40.000000Z\",\"updated_at\":\"2024-05-26T06:07:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 06:07:40', '2024-05-26 06:07:40'),
(69, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"product_type_id\":2,\"code\":\"KK3252222222\",\"name\":\"23X40-340\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"18.1600\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1820\",\"length\":\"23.0000\",\"width\":\"40.0000\",\"gsm\":340,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-26T05:33:03.000000Z\",\"updated_at\":\"2024-05-26T06:07:49.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"product_type_id\":2,\"code\":\"KK325\",\"name\":\"23X40-340\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"18.1600\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1820\",\"length\":\"23.0000\",\"width\":\"40.0000\",\"gsm\":340,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-26T05:33:03.000000Z\",\"updated_at\":\"2024-05-26T05:47:45.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 06:07:49', '2024-05-26 06:07:49'),
(70, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"product_type_id\":5,\"code\":\"PL-11224\",\"name\":\"DEVELOPER\",\"unit_id\":4,\"category_id\":4,\"hsn\":\"564\",\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"20.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":0,\"created_at\":\"2024-05-26T05:51:40.000000Z\",\"updated_at\":\"2024-05-26T06:27:46.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"product_type_id\":null,\"code\":\"PL-11224\",\"name\":\"DEVELOPER\",\"unit_id\":4,\"category_id\":4,\"hsn\":\"564\",\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"20.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":0,\"created_at\":\"2024-05-26T05:51:40.000000Z\",\"updated_at\":\"2024-05-26T06:07:40.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 06:27:46', '2024-05-26 06:27:46'),
(71, 'product', 'product has been created', 'App\\Models\\Product', 'created', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"product_type_id\":5,\"code\":\"PL-11432514\",\"name\":\"THINNER\",\"unit_id\":4,\"category_id\":4,\"hsn\":\"4810\",\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"5.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":0,\"created_at\":\"2024-05-26T06:28:10.000000Z\",\"updated_at\":\"2024-05-26T06:28:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 06:28:10', '2024-05-26 06:28:10'),
(72, 'Material Inward', 'Material Inward has been created', 'App\\Models\\MaterialInward', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"receipt_no\":\"REC0002\",\"vendor_id\":1,\"bill_no\":\"5454R\",\"bill_date\":\"2024-05-25T18:30:00.000000Z\",\"subtotal\":null,\"total_gst\":null,\"total\":null,\"material_order_no\":\"123,234,543\",\"created_at\":\"2024-05-26T07:24:52.000000Z\",\"updated_at\":\"2024-05-26T07:24:52.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:24:52', '2024-05-26 07:24:52'),
(73, 'Material Inward Item', 'Material Inward Item has been created', 'App\\Models\\MaterialInwardItem', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"material_inward_id\":2,\"category_id\":1,\"product_id\":2,\"item_name\":\"25X36-290\",\"quantity\":\"50.00\",\"hsn\":\"4810\",\"weight_per_piece\":\"0.17\",\"total_weight\":\"840.00\",\"unit\":\"Sheets\",\"rate_on\":\"23.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"100.00\",\"total_item\":\"5000.00\",\"rate\":\"19320.00\",\"gst\":\"12.00\",\"gst_amount\":\"2318.40\",\"amount\":\"19320.00\",\"created_at\":\"2024-05-26T07:24:52.000000Z\",\"updated_at\":\"2024-05-26T07:24:52.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:24:52', '2024-05-26 07:24:52'),
(74, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"product_type_id\":1,\"code\":\"jk-1235\",\"name\":\"25X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"16.8400\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1680\",\"length\":\"25.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"10750.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:50:52.000000Z\",\"updated_at\":\"2024-05-26T07:24:52.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"product_type_id\":1,\"code\":\"jk-1235\",\"name\":\"25X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"16.8400\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1680\",\"length\":\"25.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"5750.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:50:52.000000Z\",\"updated_at\":\"2024-05-25T14:27:48.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:24:52', '2024-05-26 07:24:52'),
(75, 'Material Inward', 'Material Inward has been updated', 'App\\Models\\MaterialInward', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"receipt_no\":\"REC0002\",\"vendor_id\":1,\"bill_no\":\"5454R\",\"bill_date\":\"2024-05-25T18:30:00.000000Z\",\"subtotal\":\"19320.00\",\"total_gst\":\"2318.40\",\"total\":\"21638.40\",\"material_order_no\":\"123,234,543\",\"created_at\":\"2024-05-26T07:24:52.000000Z\",\"updated_at\":\"2024-05-26T07:24:52.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"receipt_no\":\"REC0002\",\"vendor_id\":\"1\",\"bill_no\":\"5454R\",\"bill_date\":\"2024-05-25T18:30:00.000000Z\",\"subtotal\":null,\"total_gst\":null,\"total\":null,\"material_order_no\":\"123,234,543\",\"created_at\":\"2024-05-26T07:24:52.000000Z\",\"updated_at\":\"2024-05-26T07:24:52.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:24:52', '2024-05-26 07:24:52'),
(76, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"client_id\":10,\"po_no\":\"23\",\"po_date\":\"2024-05-25T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":\"this po is on hold\",\"status_id\":2,\"created_at\":\"2024-05-26T07:31:31.000000Z\",\"updated_at\":\"2024-05-26T07:31:31.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:31:31', '2024-05-26 07:31:31'),
(77, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-26T07:31:31.000000Z\",\"updated_at\":\"2024-05-26T07:31:31.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:31:31', '2024-05-26 07:31:31'),
(78, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"client_id\":10,\"po_no\":\"23\",\"po_date\":\"2024-05-25T18:30:00.000000Z\",\"made_by\":1,\"designer\":2,\"po_remarks\":\"this po is on hold\",\"status_id\":2,\"created_at\":\"2024-05-26T07:31:31.000000Z\",\"updated_at\":\"2024-05-26T07:31:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"client_id\":10,\"po_no\":\"23\",\"po_date\":\"2024-05-25T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":\"this po is on hold\",\"status_id\":2,\"created_at\":\"2024-05-26T07:31:31.000000Z\",\"updated_at\":\"2024-05-26T07:31:31.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:31:34', '2024-05-26 07:31:34'),
(79, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T07:31:31.000000Z\",\"updated_at\":\"2024-05-26T07:31:39.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-26T07:31:31.000000Z\",\"updated_at\":\"2024-05-26T07:31:31.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:31:39', '2024-05-26 07:31:39'),
(80, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T07:31:31.000000Z\",\"updated_at\":\"2024-05-26T07:31:41.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T07:31:31.000000Z\",\"updated_at\":\"2024-05-26T07:31:39.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:31:41', '2024-05-26 07:31:41'),
(81, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":11,\"created_at\":\"2024-05-26T07:31:31.000000Z\",\"updated_at\":\"2024-05-26T07:31:45.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":1,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T07:31:31.000000Z\",\"updated_at\":\"2024-05-26T07:31:41.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:31:45', '2024-05-26 07:31:45'),
(82, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"planning_by\":1,\"job_card_no\":\"003\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T07:31:57.000000Z\",\"updated_at\":\"2024-05-26T07:31:57.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:31:57', '2024-05-26 07:31:57'),
(83, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"job_card_id\":3,\"planning_id\":6,\"purchase_order_id\":3,\"purchase_order_item_id\":6,\"ups\":9,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-26T07:31:57.000000Z\",\"updated_at\":\"2024-05-26T07:31:57.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:31:57', '2024-05-26 07:31:57'),
(84, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T07:31:57.000000Z\",\"updated_at\":\"2024-05-26T07:31:57.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"planning_by\":1,\"job_card_no\":\"003\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-05-26T07:31:57.000000Z\",\"updated_at\":\"2024-05-26T07:31:57.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:31:57', '2024-05-26 07:31:57'),
(85, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"job_card_id\":3,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-05-26T07:31:57.000000Z\",\"updated_at\":\"2024-05-26T07:31:57.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:31:57', '2024-05-26 07:31:57'),
(86, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"planning_by\":1,\"job_card_no\":\"003\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T07:33:00.000000Z\",\"updated_at\":\"2024-05-26T07:33:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:33:00', '2024-05-26 07:33:00'),
(87, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"job_card_id\":4,\"planning_id\":6,\"purchase_order_id\":3,\"purchase_order_item_id\":6,\"ups\":9,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-26T07:33:00.000000Z\",\"updated_at\":\"2024-05-26T07:33:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:33:00', '2024-05-26 07:33:00'),
(88, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T07:33:00.000000Z\",\"updated_at\":\"2024-05-26T07:33:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"planning_by\":1,\"job_card_no\":\"003\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-05-26T07:33:00.000000Z\",\"updated_at\":\"2024-05-26T07:33:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:33:00', '2024-05-26 07:33:00'),
(89, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"job_card_id\":4,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-05-26T07:33:00.000000Z\",\"updated_at\":\"2024-05-26T07:33:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:33:00', '2024-05-26 07:33:00'),
(90, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"planning_by\":1,\"job_card_no\":\"003\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T07:33:26.000000Z\",\"updated_at\":\"2024-05-26T07:33:26.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:33:26', '2024-05-26 07:33:26'),
(91, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"job_card_id\":5,\"planning_id\":6,\"purchase_order_id\":3,\"purchase_order_item_id\":6,\"ups\":3,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-26T07:33:26.000000Z\",\"updated_at\":\"2024-05-26T07:33:26.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:33:26', '2024-05-26 07:33:26'),
(92, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T07:33:26.000000Z\",\"updated_at\":\"2024-05-26T07:33:26.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"planning_by\":1,\"job_card_no\":\"003\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-05-26T07:33:26.000000Z\",\"updated_at\":\"2024-05-26T07:33:26.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:33:26', '2024-05-26 07:33:26'),
(93, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"job_card_id\":5,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-05-26T07:33:26.000000Z\",\"updated_at\":\"2024-05-26T07:33:26.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:33:26', '2024-05-26 07:33:26'),
(94, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"planning_by\":1,\"job_card_no\":\"003\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T07:37:58.000000Z\",\"updated_at\":\"2024-05-26T07:37:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:37:58', '2024-05-26 07:37:58'),
(95, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"job_card_id\":6,\"planning_id\":6,\"purchase_order_id\":3,\"purchase_order_item_id\":6,\"ups\":3,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-26T07:37:58.000000Z\",\"updated_at\":\"2024-05-26T07:37:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:37:58', '2024-05-26 07:37:58'),
(96, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T07:37:58.000000Z\",\"updated_at\":\"2024-05-26T07:37:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"planning_by\":1,\"job_card_no\":\"003\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-05-26T07:37:58.000000Z\",\"updated_at\":\"2024-05-26T07:37:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:37:58', '2024-05-26 07:37:58'),
(97, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"job_card_id\":6,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-05-26T07:37:58.000000Z\",\"updated_at\":\"2024-05-26T07:37:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:37:58', '2024-05-26 07:37:58'),
(98, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"planning_by\":1,\"job_card_no\":\"003\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T07:39:10.000000Z\",\"updated_at\":\"2024-05-26T07:39:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:39:10', '2024-05-26 07:39:10'),
(99, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"job_card_id\":7,\"planning_id\":6,\"purchase_order_id\":3,\"purchase_order_item_id\":6,\"ups\":3,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-26T07:39:10.000000Z\",\"updated_at\":\"2024-05-26T07:39:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:39:10', '2024-05-26 07:39:10');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(100, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T07:39:10.000000Z\",\"updated_at\":\"2024-05-26T07:39:10.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"planning_by\":1,\"job_card_no\":\"003\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-05-26T07:39:10.000000Z\",\"updated_at\":\"2024-05-26T07:39:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:39:10', '2024-05-26 07:39:10'),
(101, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"job_card_id\":7,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-05-26T07:39:10.000000Z\",\"updated_at\":\"2024-05-26T07:39:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:39:10', '2024-05-26 07:39:10'),
(102, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-26T07:39:10.000000Z\",\"updated_at\":\"2024-05-26T07:39:56.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2024-05-26T07:39:10.000000Z\",\"updated_at\":\"2024-05-26T07:39:23.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:39:56', '2024-05-26 07:39:56'),
(103, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"3679.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-26T07:39:56.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"3934.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-25T13:50:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:39:56', '2024-05-26 07:39:56'),
(104, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":767,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-26T07:39:10.000000Z\",\"updated_at\":\"2024-05-26T07:39:56.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-26T07:39:10.000000Z\",\"updated_at\":\"2024-05-26T07:39:56.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 07:39:56', '2024-05-26 07:39:56'),
(105, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"3612.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-26T08:08:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"3679.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-26T07:39:56.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 08:08:22', '2024-05-26 08:08:22'),
(106, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":967,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":767,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":14,\"created_at\":\"2024-05-26T07:39:10.000000Z\",\"updated_at\":\"2024-05-26T08:08:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":767,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":767,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":\"14\",\"created_at\":\"2024-05-26T07:39:10.000000Z\",\"updated_at\":\"2024-05-26T08:07:45.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 08:08:22', '2024-05-26 08:08:22'),
(107, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"product_type_id\":6,\"code\":\"C-1239\",\"name\":\"26X38-300\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"19.1200\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1910\",\"length\":\"26.0000\",\"width\":\"38.0000\",\"gsm\":300,\"quantity\":\"-50.00\",\"in_hand_quantity\":3000,\"type\":1,\"created_at\":\"2024-05-25T10:53:05.000000Z\",\"updated_at\":\"2024-05-26T08:10:15.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"product_type_id\":6,\"code\":\"C-1239\",\"name\":\"26X38-300\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"19.1200\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1910\",\"length\":\"26.0000\",\"width\":\"38.0000\",\"gsm\":300,\"quantity\":null,\"in_hand_quantity\":3000,\"type\":1,\"created_at\":\"2024-05-25T10:53:05.000000Z\",\"updated_at\":\"2024-05-26T05:47:54.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 08:10:15', '2024-05-26 08:10:15'),
(108, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":1067,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":767,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":14,\"created_at\":\"2024-05-26T07:39:10.000000Z\",\"updated_at\":\"2024-05-26T08:10:15.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"planning_by\":2,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":967,\"paper_divide\":null,\"dye_details_id\":1,\"dye_details\":\"1\\/9-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"34543\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":767,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":\"14\",\"created_at\":\"2024-05-26T07:39:10.000000Z\",\"updated_at\":\"2024-05-26T08:09:19.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 08:10:15', '2024-05-26 08:10:15'),
(109, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"client_id\":25,\"po_no\":\"2351\",\"po_date\":\"2024-05-25T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:23:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:23:49', '2024-05-26 13:23:49'),
(110, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:23:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:23:49', '2024-05-26 13:23:49'),
(111, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":5000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:23:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:23:49', '2024-05-26 13:23:49'),
(112, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"client_id\":25,\"po_no\":\"2351\",\"po_date\":\"2024-05-25T18:30:00.000000Z\",\"made_by\":1,\"designer\":2,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:23:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"client_id\":25,\"po_no\":\"2351\",\"po_date\":\"2024-05-25T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:23:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:23:54', '2024-05-26 13:23:54'),
(113, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:24:08.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:23:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:24:08', '2024-05-26 13:24:08'),
(114, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":5000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:24:08.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":5000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:23:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:24:08', '2024-05-26 13:24:08'),
(115, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:24:10.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:24:08.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:24:10', '2024-05-26 13:24:10'),
(116, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":5000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:24:10.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":5000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:24:08.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:24:10', '2024-05-26 13:24:10'),
(117, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":11,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:24:14.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:24:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:24:14', '2024-05-26 13:24:14'),
(118, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":5000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":11,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:24:14.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":5000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T13:23:49.000000Z\",\"updated_at\":\"2024-05-26T13:24:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:24:14', '2024-05-26 13:24:14'),
(119, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"planning_by\":1,\"job_card_no\":\"004\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T13:24:31.000000Z\",\"updated_at\":\"2024-05-26T13:24:31.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:24:31', '2024-05-26 13:24:31'),
(120, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"job_card_id\":8,\"planning_id\":7,\"purchase_order_id\":4,\"purchase_order_item_id\":7,\"ups\":2,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-26T13:24:31.000000Z\",\"updated_at\":\"2024-05-26T13:24:31.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:24:31', '2024-05-26 13:24:31'),
(121, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"planning_by\":2,\"job_card_no\":\"004\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T13:24:31.000000Z\",\"updated_at\":\"2024-05-26T13:24:31.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"planning_by\":1,\"job_card_no\":\"004\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-05-26T13:24:31.000000Z\",\"updated_at\":\"2024-05-26T13:24:31.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:24:31', '2024-05-26 13:24:31'),
(122, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"job_card_id\":8,\"planning_id\":8,\"purchase_order_id\":4,\"purchase_order_item_id\":8,\"ups\":2,\"quantity\":5000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-26T13:24:31.000000Z\",\"updated_at\":\"2024-05-26T13:24:31.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:24:31', '2024-05-26 13:24:31'),
(123, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"job_card_id\":8,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-05-26T13:24:31.000000Z\",\"updated_at\":\"2024-05-26T13:24:31.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:24:31', '2024-05-26 13:24:31'),
(124, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"planning_by\":2,\"job_card_no\":\"004\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":1750,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":\"232102\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"metallic\",\"coating_window_cutting\":\"window in batch, pasting, bottom lock\",\"embossing_leafing\":\"None\",\"roll_used\":\"12.5\\\"\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-26T13:24:31.000000Z\",\"updated_at\":\"2024-05-26T13:26:01.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"planning_by\":2,\"job_card_no\":\"004\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":1750,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":\"232102\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2024-05-26T13:24:31.000000Z\",\"updated_at\":\"2024-05-26T13:24:48.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:26:01', '2024-05-26 13:26:01'),
(125, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"product_type_id\":6,\"code\":\"C-1239\",\"name\":\"26X38-300\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"19.1200\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1910\",\"length\":\"26.0000\",\"width\":\"38.0000\",\"gsm\":300,\"quantity\":\"-975.00\",\"in_hand_quantity\":3000,\"type\":1,\"created_at\":\"2024-05-25T10:53:05.000000Z\",\"updated_at\":\"2024-05-26T13:26:01.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"product_type_id\":6,\"code\":\"C-1239\",\"name\":\"26X38-300\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"19.1200\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1910\",\"length\":\"26.0000\",\"width\":\"38.0000\",\"gsm\":300,\"quantity\":\"-50.00\",\"in_hand_quantity\":3000,\"type\":1,\"created_at\":\"2024-05-25T10:53:05.000000Z\",\"updated_at\":\"2024-05-26T08:10:15.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:26:01', '2024-05-26 13:26:01'),
(126, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"planning_by\":2,\"job_card_no\":\"004\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":1750,\"wastage_sheet\":null,\"total_sheet\":1850,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":\"232102\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"metallic\",\"coating_window_cutting\":\"window in batch, pasting, bottom lock\",\"embossing_leafing\":\"None\",\"roll_used\":\"12.5\\\"\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-26T13:24:31.000000Z\",\"updated_at\":\"2024-05-26T13:26:01.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"planning_by\":2,\"job_card_no\":\"004\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":1750,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":\"232102\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"metallic\",\"coating_window_cutting\":\"window in batch, pasting, bottom lock\",\"embossing_leafing\":\"None\",\"roll_used\":\"12.5\\\"\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-26T13:24:31.000000Z\",\"updated_at\":\"2024-05-26T13:26:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:26:01', '2024-05-26 13:26:01'),
(127, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"client_id\":6,\"po_no\":\"PM\\/AB23-152\",\"po_date\":\"2024-05-25T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-05-26T13:49:51.000000Z\",\"updated_at\":\"2024-05-26T13:49:51.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:49:51', '2024-05-26 13:49:51'),
(128, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"purchase_order_id\":5,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"xcxz\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-26T13:49:51.000000Z\",\"updated_at\":\"2024-05-26T13:49:51.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:49:51', '2024-05-26 13:49:51'),
(129, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"client_id\":6,\"po_no\":\"PM\\/AB23-152\",\"po_date\":\"2024-05-25T18:30:00.000000Z\",\"made_by\":1,\"designer\":2,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-05-26T13:49:51.000000Z\",\"updated_at\":\"2024-05-26T13:49:56.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"client_id\":6,\"po_no\":\"PM\\/AB23-152\",\"po_date\":\"2024-05-25T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-05-26T13:49:51.000000Z\",\"updated_at\":\"2024-05-26T13:49:51.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:49:56', '2024-05-26 13:49:56'),
(130, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"purchase_order_id\":5,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"xcxz\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T13:49:51.000000Z\",\"updated_at\":\"2024-05-26T13:50:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"purchase_order_id\":5,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"xcxz\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-26T13:49:51.000000Z\",\"updated_at\":\"2024-05-26T13:49:51.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:50:00', '2024-05-26 13:50:00'),
(131, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"purchase_order_id\":5,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"xcxz\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T13:49:51.000000Z\",\"updated_at\":\"2024-05-26T13:50:01.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"purchase_order_id\":5,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"xcxz\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T13:49:51.000000Z\",\"updated_at\":\"2024-05-26T13:50:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:50:01', '2024-05-26 13:50:01'),
(132, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"purchase_order_id\":5,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"xcxz\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":11,\"created_at\":\"2024-05-26T13:49:51.000000Z\",\"updated_at\":\"2024-05-26T13:50:04.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"purchase_order_id\":5,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"xcxz\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":4,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-26T13:49:51.000000Z\",\"updated_at\":\"2024-05-26T13:50:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:50:04', '2024-05-26 13:50:04'),
(133, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"planning_by\":1,\"job_card_no\":\"005\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T13:50:17.000000Z\",\"updated_at\":\"2024-05-26T13:50:17.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:50:17', '2024-05-26 13:50:17'),
(134, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"job_card_id\":9,\"planning_id\":9,\"purchase_order_id\":5,\"purchase_order_item_id\":9,\"ups\":3,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-26T13:50:17.000000Z\",\"updated_at\":\"2024-05-26T13:50:17.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:50:17', '2024-05-26 13:50:17'),
(135, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"planning_by\":2,\"job_card_no\":\"005\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-26T13:50:17.000000Z\",\"updated_at\":\"2024-05-26T13:50:17.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"planning_by\":1,\"job_card_no\":\"005\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-05-26T13:50:17.000000Z\",\"updated_at\":\"2024-05-26T13:50:17.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:50:17', '2024-05-26 13:50:17'),
(136, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"job_card_id\":9,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-05-26T13:50:17.000000Z\",\"updated_at\":\"2024-05-26T13:50:17.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:50:17', '2024-05-26 13:50:17'),
(137, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"planning_by\":2,\"job_card_no\":\"005\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"2321d\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Both\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-26T13:50:17.000000Z\",\"updated_at\":\"2024-05-26T13:51:15.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"planning_by\":2,\"job_card_no\":\"005\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"2321d\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2024-05-26T13:50:17.000000Z\",\"updated_at\":\"2024-05-26T13:50:38.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:51:15', '2024-05-26 13:51:15'),
(138, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"product_type_id\":6,\"code\":\"C-1239\",\"name\":\"26X38-300\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"19.1200\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1910\",\"length\":\"26.0000\",\"width\":\"38.0000\",\"gsm\":300,\"quantity\":\"-1358.00\",\"in_hand_quantity\":3000,\"type\":1,\"created_at\":\"2024-05-25T10:53:05.000000Z\",\"updated_at\":\"2024-05-26T13:51:15.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"product_type_id\":6,\"code\":\"C-1239\",\"name\":\"26X38-300\",\"unit_id\":3,\"category_id\":3,\"hsn\":\"4810\",\"packet_weight\":\"19.1200\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1910\",\"length\":\"26.0000\",\"width\":\"38.0000\",\"gsm\":300,\"quantity\":\"-975.00\",\"in_hand_quantity\":3000,\"type\":1,\"created_at\":\"2024-05-25T10:53:05.000000Z\",\"updated_at\":\"2024-05-26T13:26:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:51:15', '2024-05-26 13:51:15'),
(139, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"planning_by\":2,\"job_card_no\":\"005\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":767,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"2321d\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Both\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-26T13:50:17.000000Z\",\"updated_at\":\"2024-05-26T13:51:15.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"planning_by\":2,\"job_card_no\":\"005\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19x23\",\"required_sheet\":667,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK\",\"set_no\":\"2321d\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Both\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-26T13:50:17.000000Z\",\"updated_at\":\"2024-05-26T13:51:15.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 13:51:15', '2024-05-26 13:51:15'),
(140, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"product_type_id\":1,\"code\":\"jk-1235\",\"name\":\"25X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"16.8400\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1680\",\"length\":\"25.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"8750.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:50:52.000000Z\",\"updated_at\":\"2024-05-26T16:50:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"product_type_id\":1,\"code\":\"jk-1235\",\"name\":\"25X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"16.8400\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1680\",\"length\":\"25.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"10750.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:50:52.000000Z\",\"updated_at\":\"2024-05-26T07:24:52.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 16:50:00', '2024-05-26 16:50:00');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(141, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"product_type_id\":1,\"code\":\"jk-1235\",\"name\":\"25X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"16.8400\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1680\",\"length\":\"25.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"8700.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:50:52.000000Z\",\"updated_at\":\"2024-05-26T16:50:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"product_type_id\":1,\"code\":\"jk-1235\",\"name\":\"25X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"16.8400\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1680\",\"length\":\"25.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"8750.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:50:52.000000Z\",\"updated_at\":\"2024-05-26T16:50:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-26 16:50:00', '2024-05-26 16:50:00'),
(142, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"client_id\":10,\"po_no\":\"1234560\",\"po_date\":\"2024-05-28T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":\"fgdf\",\"status_id\":2,\"created_at\":\"2024-05-29T05:55:37.000000Z\",\"updated_at\":\"2024-05-29T05:55:37.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-29 05:55:37', '2024-05-29 05:55:37'),
(143, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":100,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":\"Hello World\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-29T05:55:37.000000Z\",\"updated_at\":\"2024-05-29T05:55:37.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-29 05:55:37', '2024-05-29 05:55:37'),
(144, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":100,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":\"Hello World\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-29T05:55:37.000000Z\",\"updated_at\":\"2024-05-29T05:55:44.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":100,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":\"Hello World\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-29T05:55:37.000000Z\",\"updated_at\":\"2024-05-29T05:55:37.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-29 05:55:44', '2024-05-29 05:55:44'),
(145, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":100,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":\"Hello World\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-29T05:55:37.000000Z\",\"updated_at\":\"2024-05-29T05:55:46.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":100,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":\"Hello World\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"status_id\":2,\"created_at\":\"2024-05-29T05:55:37.000000Z\",\"updated_at\":\"2024-05-29T05:55:44.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-29 05:55:46', '2024-05-29 05:55:46'),
(146, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":100,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":\"Hello World\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":11,\"created_at\":\"2024-05-29T05:55:37.000000Z\",\"updated_at\":\"2024-05-29T05:55:53.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":100,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":\"Hello World\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"status_id\":2,\"created_at\":\"2024-05-29T05:55:37.000000Z\",\"updated_at\":\"2024-05-29T05:55:46.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-29 05:55:53', '2024-05-29 05:55:53'),
(147, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"planning_by\":1,\"job_card_no\":\"006\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-29T05:56:50.000000Z\",\"updated_at\":\"2024-05-29T05:56:50.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-29 05:56:50', '2024-05-29 05:56:50'),
(148, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 15, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":15,\"job_card_id\":10,\"planning_id\":10,\"purchase_order_id\":6,\"purchase_order_item_id\":10,\"ups\":3,\"quantity\":100,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-05-29T05:56:50.000000Z\",\"updated_at\":\"2024-05-29T05:56:50.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-29 05:56:50', '2024-05-29 05:56:50'),
(149, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"planning_by\":3,\"job_card_no\":\"006\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-05-29T05:56:50.000000Z\",\"updated_at\":\"2024-05-29T05:56:50.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"planning_by\":1,\"job_card_no\":\"006\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-05-29T05:56:50.000000Z\",\"updated_at\":\"2024-05-29T05:56:50.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-29 05:56:50', '2024-05-29 05:56:50'),
(150, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"job_card_id\":10,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-05-29T05:56:50.000000Z\",\"updated_at\":\"2024-05-29T05:56:50.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-29 05:56:50', '2024-05-29 05:56:50'),
(151, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"planning_by\":3,\"job_card_no\":\"006\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"73X25\",\"required_sheet\":33,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"cmyn\",\"set_no\":\"100\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-29T05:56:50.000000Z\",\"updated_at\":\"2024-05-29T05:58:35.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"planning_by\":3,\"job_card_no\":\"006\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"73X25\",\"required_sheet\":33,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"cmyn\",\"set_no\":\"100\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2024-05-29T05:56:50.000000Z\",\"updated_at\":\"2024-05-29T05:57:08.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-29 05:58:35', '2024-05-29 05:58:35'),
(152, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"3496.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-29T06:00:17.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"3612.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-26T08:08:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-29 06:00:17', '2024-05-29 06:00:17'),
(153, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"planning_by\":3,\"job_card_no\":\"006\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"73X25\",\"required_sheet\":33,\"wastage_sheet\":null,\"total_sheet\":233,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"cmyn\",\"set_no\":\"100\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-29T05:56:50.000000Z\",\"updated_at\":\"2024-05-29T06:00:17.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"planning_by\":3,\"job_card_no\":\"006\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"73X25\",\"required_sheet\":33,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"cmyn\",\"set_no\":\"100\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-05-29T05:56:50.000000Z\",\"updated_at\":\"2024-05-29T05:58:35.000000Z\",\"deleted_at\":null}}', NULL, '2024-05-29 06:00:17', '2024-05-29 06:00:17'),
(154, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"3396.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-06-05T15:40:56.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"3496.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-05-29T06:00:17.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-05 15:40:56', '2024-06-05 15:40:56'),
(155, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"2496.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-06-05T15:49:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"3396.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-06-05T15:40:56.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-05 15:49:40', '2024-06-05 15:49:40'),
(156, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"client_id\":10,\"po_no\":\"1234560\",\"po_date\":\"2024-06-05T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":\"fgdf\",\"status_id\":2,\"created_at\":\"2024-06-06T03:09:27.000000Z\",\"updated_at\":\"2024-06-06T03:09:27.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:09:27', '2024-06-06 03:09:27'),
(157, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"abc\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"354\",\"gsm\":300,\"remarks\":\"Hello World\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:09:28.000000Z\",\"updated_at\":\"2024-06-06T03:09:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:09:28', '2024-06-06 03:09:28'),
(158, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"client_id\":25,\"po_no\":\"1234560\",\"po_date\":\"2024-06-05T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":\"fgdf\",\"status_id\":2,\"created_at\":\"2024-06-06T03:29:39.000000Z\",\"updated_at\":\"2024-06-06T03:29:39.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:29:39', '2024-06-06 03:29:39'),
(159, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":200,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:29:39.000000Z\",\"updated_at\":\"2024-06-06T03:29:39.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:29:39', '2024-06-06 03:29:39'),
(160, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"client_id\":25,\"po_no\":\"1234560\",\"po_date\":\"2024-06-05T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":\"fgdf\",\"status_id\":2,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:30:51.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:30:51', '2024-06-06 03:30:51'),
(161, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":2000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:30:51.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:30:51', '2024-06-06 03:30:51'),
(162, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:30:51.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:30:51', '2024-06-06 03:30:51'),
(163, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":2000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:31:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":2000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:30:51.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:31:00', '2024-06-06 03:31:00'),
(164, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:31:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":14,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:30:51.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:31:00', '2024-06-06 03:31:00'),
(165, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":2000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:31:01.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":2000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:31:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:31:01', '2024-06-06 03:31:01'),
(166, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:31:01.000000Z\",\"deleted_at\":null},\"old\":{\"id\":14,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:31:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:31:01', '2024-06-06 03:31:01'),
(167, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":13,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":2000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:31:07.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":2000,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:31:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:31:07', '2024-06-06 03:31:07'),
(168, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":14,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:31:07.000000Z\",\"deleted_at\":null},\"old\":{\"id\":14,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:30:51.000000Z\",\"updated_at\":\"2024-06-06T03:31:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:31:07', '2024-06-06 03:31:07'),
(169, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"planning_by\":1,\"job_card_no\":\"007\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-06T03:31:27.000000Z\",\"updated_at\":\"2024-06-06T03:31:27.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:31:27', '2024-06-06 03:31:27'),
(170, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 16, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":16,\"job_card_id\":11,\"planning_id\":12,\"purchase_order_id\":9,\"purchase_order_item_id\":14,\"ups\":3,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-06T03:31:27.000000Z\",\"updated_at\":\"2024-06-06T03:31:27.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:31:27', '2024-06-06 03:31:27'),
(171, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"planning_by\":3,\"job_card_no\":\"007\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-06T03:31:27.000000Z\",\"updated_at\":\"2024-06-06T03:31:27.000000Z\",\"deleted_at\":null},\"old\":{\"id\":11,\"planning_by\":1,\"job_card_no\":\"007\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-06-06T03:31:27.000000Z\",\"updated_at\":\"2024-06-06T03:31:27.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:31:27', '2024-06-06 03:31:27'),
(172, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 17, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":17,\"job_card_id\":11,\"planning_id\":11,\"purchase_order_id\":9,\"purchase_order_item_id\":13,\"ups\":9,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-06T03:31:27.000000Z\",\"updated_at\":\"2024-06-06T03:31:27.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:31:27', '2024-06-06 03:31:27'),
(173, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"job_card_id\":11,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-06-06T03:31:27.000000Z\",\"updated_at\":\"2024-06-06T03:31:27.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:31:27', '2024-06-06 03:31:27'),
(174, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"planning_by\":3,\"job_card_no\":\"007\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"73X25\",\"required_sheet\":333,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"cmyn\",\"set_no\":\"500\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-06T03:31:27.000000Z\",\"updated_at\":\"2024-06-06T03:32:16.000000Z\",\"deleted_at\":null},\"old\":{\"id\":11,\"planning_by\":3,\"job_card_no\":\"007\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"73X25\",\"required_sheet\":333,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"cmyn\",\"set_no\":\"500\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2024-06-06T03:31:27.000000Z\",\"updated_at\":\"2024-06-06T03:31:43.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:32:16', '2024-06-06 03:32:16'),
(175, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"2230.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-06-06T03:32:16.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"2496.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-06-05T15:49:40.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:32:16', '2024-06-06 03:32:16'),
(176, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"planning_by\":3,\"job_card_no\":\"007\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"73X25\",\"required_sheet\":333,\"wastage_sheet\":null,\"total_sheet\":533,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"cmyn\",\"set_no\":\"500\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-06T03:31:27.000000Z\",\"updated_at\":\"2024-06-06T03:32:16.000000Z\",\"deleted_at\":null},\"old\":{\"id\":11,\"planning_by\":3,\"job_card_no\":\"007\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"73X25\",\"required_sheet\":333,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"cmyn\",\"set_no\":\"500\",\"coating_machine\":\"matt lamination\",\"other_coating_machine\":\"spot uv\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-06T03:31:27.000000Z\",\"updated_at\":\"2024-06-06T03:32:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:32:16', '2024-06-06 03:32:16'),
(177, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":200,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:29:39.000000Z\",\"updated_at\":\"2024-06-06T03:54:51.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":200,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:29:39.000000Z\",\"updated_at\":\"2024-06-06T03:29:39.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:54:51', '2024-06-06 03:54:51'),
(178, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":200,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:29:39.000000Z\",\"updated_at\":\"2024-06-06T03:54:52.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":200,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:29:39.000000Z\",\"updated_at\":\"2024-06-06T03:54:51.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:54:52', '2024-06-06 03:54:52'),
(179, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":200,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-06T03:29:39.000000Z\",\"updated_at\":\"2024-06-06T03:54:56.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":200,\"rate\":\"5.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T03:29:39.000000Z\",\"updated_at\":\"2024-06-06T03:54:52.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:54:56', '2024-06-06 03:54:56'),
(180, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"planning_by\":1,\"job_card_no\":\"008\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-06T03:55:20.000000Z\",\"updated_at\":\"2024-06-06T03:55:20.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:55:20', '2024-06-06 03:55:20'),
(181, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 18, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":18,\"job_card_id\":12,\"planning_id\":13,\"purchase_order_id\":8,\"purchase_order_item_id\":12,\"ups\":3,\"quantity\":200,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-06T03:55:20.000000Z\",\"updated_at\":\"2024-06-06T03:55:20.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:55:20', '2024-06-06 03:55:20'),
(182, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"planning_by\":3,\"job_card_no\":\"008\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-06T03:55:20.000000Z\",\"updated_at\":\"2024-06-06T03:55:20.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"planning_by\":1,\"job_card_no\":\"008\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-06-06T03:55:20.000000Z\",\"updated_at\":\"2024-06-06T03:55:20.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:55:20', '2024-06-06 03:55:20'),
(183, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"job_card_id\":12,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-06-06T03:55:20.000000Z\",\"updated_at\":\"2024-06-06T03:55:20.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:55:20', '2024-06-06 03:55:20'),
(184, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"planning_by\":3,\"job_card_no\":\"008\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"73X25\",\"required_sheet\":67,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"cmyn\",\"set_no\":\"100\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-06T03:55:20.000000Z\",\"updated_at\":\"2024-06-06T03:56:13.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"planning_by\":3,\"job_card_no\":\"008\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"73X25\",\"required_sheet\":67,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"cmyn\",\"set_no\":\"100\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2024-06-06T03:55:20.000000Z\",\"updated_at\":\"2024-06-06T03:55:38.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:56:13', '2024-06-06 03:56:13');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(185, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"2097.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-06-06T03:56:13.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":4,\"code\":\"JK-1234\",\"name\":\"23X36-290\",\"unit_id\":3,\"category_id\":1,\"hsn\":\"4810\",\"packet_weight\":\"15.4900\",\"item_per_packet\":\"100.0000\",\"weight_per_piece\":\"0.1550\",\"length\":\"23.0000\",\"width\":\"36.0000\",\"gsm\":290,\"quantity\":\"2230.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-05-25T10:49:58.000000Z\",\"updated_at\":\"2024-06-06T03:32:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:56:13', '2024-06-06 03:56:13'),
(186, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"planning_by\":3,\"job_card_no\":\"008\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"73X25\",\"required_sheet\":67,\"wastage_sheet\":null,\"total_sheet\":267,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"cmyn\",\"set_no\":\"100\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-06T03:55:20.000000Z\",\"updated_at\":\"2024-06-06T03:56:13.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"planning_by\":3,\"job_card_no\":\"008\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"73X25\",\"required_sheet\":67,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"cmyn\",\"set_no\":\"100\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"None\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-06T03:55:20.000000Z\",\"updated_at\":\"2024-06-06T03:56:13.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 03:56:13', '2024-06-06 03:56:13'),
(187, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"client_id\":25,\"po_no\":\"123456\",\"po_date\":\"2024-06-05T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":\"fgdf\",\"status_id\":2,\"created_at\":\"2024-06-06T16:13:34.000000Z\",\"updated_at\":\"2024-06-06T16:13:34.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 16:13:34', '2024-06-06 16:13:34'),
(188, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 15, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":15,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":2000,\"rate\":\"1.00\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T16:13:34.000000Z\",\"updated_at\":\"2024-06-06T16:13:34.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 16:13:34', '2024-06-06 16:13:34'),
(189, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"client_id\":25,\"po_no\":\"123456\",\"po_date\":\"2024-06-05T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-06-06T16:16:20.000000Z\",\"updated_at\":\"2024-06-06T16:16:20.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 16:16:20', '2024-06-06 16:16:20'),
(190, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 16, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":16,\"purchase_order_id\":11,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"NBMV\",\"carton_size\":\"125X50X100\",\"quantity\":200,\"rate\":\"1.50\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":0,\"paper_type_id\":2,\"art_work\":\"R4\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T16:16:20.000000Z\",\"updated_at\":\"2024-06-06T16:16:20.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 16:16:20', '2024-06-06 16:16:20'),
(191, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"client_id\":25,\"po_no\":\"123456\",\"po_date\":\"2024-06-05T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-06-06T16:17:24.000000Z\",\"updated_at\":\"2024-06-06T16:17:24.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 16:17:24', '2024-06-06 16:17:24'),
(192, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 17, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":17,\"purchase_order_id\":12,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"ABCD\",\"carton_size\":\"52X52X74\",\"quantity\":3000,\"rate\":\"1.25\",\"gst\":\"18.00\",\"coating_type_id\":5,\"other_coating_type_id\":2,\"embossing_leafing\":1,\"paper_type_id\":2,\"art_work\":\"R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-06T16:17:24.000000Z\",\"updated_at\":\"2024-06-06T16:17:24.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-06 16:17:24', '2024-06-06 16:17:24');

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
  `bill_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` int NOT NULL,
  `status_id` int NOT NULL DEFAULT '2',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billings`
--

INSERT INTO `billings` (`id`, `bill_no`, `client_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'REF000001', 12, 5, '2024-05-25 22:53:01', '2024-05-25 23:01:07'),
(2, 'REF000002', 17, 5, '2024-05-25 22:58:14', '2024-05-25 23:01:03'),
(3, 'REF000003', 12, 2, '2024-05-26 14:30:04', '2024-05-26 14:30:04'),
(4, 'REF000004', 17, 2, '2024-05-26 14:31:06', '2024-05-26 14:31:06');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_items`
--

INSERT INTO `billing_items` (`id`, `billing_id`, `purchase_order_id`, `purchase_order_item_id`, `carton_name`, `ready_quantity`, `ready_box`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'ABC', '2000', '1000x2', 2, '2024-05-25 22:53:01', '2024-05-25 22:53:01'),
(2, 1, 1, 3, 'HIJ', '1995', '1000x1,995x1', 2, '2024-05-25 22:53:52', '2024-05-25 22:53:52'),
(3, 1, 1, 2, 'DEF', '1980', '1000x1,980x1', 2, '2024-05-25 22:57:58', '2024-05-25 22:57:58'),
(4, 2, 2, 4, 'MNB', '1980', '1000x1,980x1', 2, '2024-05-25 22:58:14', '2024-05-25 22:58:14'),
(5, 2, 2, 5, 'LKJ', '3180', '1000x3,180x1', 2, '2024-05-25 22:58:32', '2024-05-25 22:58:32'),
(6, 3, 1, 1, 'ABC', '190', '1', 2, '2024-05-26 14:30:05', '2024-05-26 14:30:05'),
(7, 4, 2, 4, 'MNB', '100', '1', 2, '2024-05-26 14:31:06', '2024-05-26 14:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `cartons`
--

DROP TABLE IF EXISTS `cartons`;
CREATE TABLE IF NOT EXISTS `cartons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` double DEFAULT NULL,
  `carton_name` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carton_size` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `coating_type_id` double DEFAULT NULL,
  `other_coating_type_id` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embossing_leafing` double DEFAULT NULL,
  `paper_type_id` double DEFAULT NULL,
  `gsm` double DEFAULT NULL,
  `art_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cartons`
--

INSERT INTO `cartons` (`id`, `client_id`, `carton_name`, `carton_size`, `rate`, `coating_type_id`, `other_coating_type_id`, `embossing_leafing`, `paper_type_id`, `gsm`, `art_work`, `created_at`, `updated_at`) VALUES
(1, 12, 'ABC', '57X37X100', 2.55, 5, '1', 0, 2, 300, 'R1', '2024-05-25 18:50:14', '2024-05-25 18:50:14'),
(2, 12, 'DEF', '57X37X100', 1.55, 5, '1', 0, 2, 300, 'R2', '2024-05-25 18:50:14', '2024-05-25 18:50:14'),
(3, 12, 'HIJ', '57X37X100', 1.55, 5, '1', 0, 2, 300, 'R3', '2024-05-25 18:50:14', '2024-05-25 18:50:14'),
(4, 17, 'MNB', '52X52X74', 2.55, 5, '1', 0, 4, 300, 'R3', '2024-05-25 18:52:29', '2024-05-25 18:52:29'),
(5, 17, 'LKJ', '60X37X105', 6.72, 3, '1', 0, 4, 300, 'R4', '2024-05-25 18:52:29', '2024-05-25 18:52:29'),
(6, 10, 'abc', '57X37X100', 2.55, 3, '1', 0, 3, 300, '354', '2024-05-26 13:01:31', '2024-05-26 13:01:31'),
(7, 25, 'ABCD', '52X52X74', NULL, 5, '2', 1, 2, 300, 'R1', '2024-05-26 18:53:49', '2024-06-06 21:47:24'),
(8, 25, 'NBMV', '125X50X100', NULL, 5, '2', 0, 2, 300, 'R4', '2024-05-26 18:53:49', '2024-06-06 21:46:20'),
(9, 6, 'xcxz', '52X52X74', 2.55, 5, '4', 3, 1, 300, '354', '2024-05-26 19:19:51', '2024-05-26 19:19:51');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carton_prices`
--

INSERT INTO `carton_prices` (`id`, `carton_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 7, 2000, '1.00', '2024-06-06 21:43:34', '2024-06-06 21:43:34'),
(2, 8, 200, '1.50', '2024-06-06 21:46:20', '2024-06-06 21:46:20'),
(3, 7, 3000, '1.25', '2024-06-06 21:47:24', '2024-06-06 21:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'JK', NULL, 1, '2024-05-25 16:17:27', '2024-05-25 16:17:27', NULL),
(2, 'Endura', 1, 1, '2024-05-25 16:17:38', '2024-05-25 16:18:00', '2024-05-25 16:18:00'),
(3, 'Century', NULL, 1, '2024-05-25 16:22:16', '2024-05-25 16:22:16', NULL),
(4, 'Chemical', NULL, 1, '2024-05-25 16:23:51', '2024-05-25 16:23:51', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chemical_coatings`
--

INSERT INTO `chemical_coatings` (`id`, `user_id`, `job_card_id`, `coated_sheets`, `status_id`, `created_at`, `updated_at`, `leafing`) VALUES
(1, 14, 1, 435, 5, '2024-05-25 21:59:46', '2024-05-25 22:13:11', 0),
(2, 14, 2, 1715, 5, '2024-05-25 22:00:03', '2024-05-25 22:12:56', 0),
(3, 1, 9, 764, 5, '2024-05-26 19:53:08', '2024-05-26 19:56:08', 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `full_name`, `company_name`, `email`, `mobile`, `state`, `city`, `address`, `pincode`, `gst`, `media_id`, `color`, `name_init`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'A', 'B', 'AB', 'Leeford Healthcare Ltd.', 'purchaseunit1@allkindhealthcare.in  ', '9317519036', 'Punjab', 'Ludhiana', 'New Shivaji Nagar, Harcharan Nagar, Ludhiana, Punjab', '141008', '03AABCL1851A1ZB', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(2, 'A', 'B', 'AB', 'Windlas Biotech Limited', 'Pmpurchase@windlasbiotech.com', '9761993074', 'Uttarakhand', 'Dehradun', '40/1 Mohabewala Indl. Area, Dehradun', '248110', '05AAACW3417C1ZV', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(3, 'A', 'B', 'AB', 'THEON PHARMACEUTICALS LTD', 'purchase4@theonpharma.com', '8580443117', 'Himachal Pradesh', 'Nalagarh', 'Village Saini Majra,Tehsil Nalagarh,Distt. Solan Himachal Pradesh', '174101', '02AACCT2692J1ZC', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(4, 'A', 'B', 'AB', 'Shamshree Lifesciences Ltd, ', 'ppic@shamshree.com', '9216288244', 'Himachal Pradesh', 'Baddi', 'Plot No. 11, Katha-Bhatolikalan, Baddi ', '173205', '02AAJCS8933N1ZU ', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(5, 'A', 'B', 'AB', 'Akums Drugs & Pharmaceutical ( Plant 2 )', 'inventory@akums.net', '8010816950', 'Uttarakhand', 'Haridwar', 'Plot No 22, Sector 6A, I.I.E, Sidcul, Ranipur, Haridwar', '249403', '05AAECA7090B1Z2', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(6, 'A', 'B', 'AB', 'Akums Drugs & Pharmaceuticals Ltd ( Plant 1 )', 'inventory@akums.net', '8010816950', 'Uttarakhand', 'Haridwar', 'Plot No 19-20-21 Sector 6A, I.I.E Sidcul, Ranipur, Haridwar', '249403', '05AAECA7090B1Z2', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(7, 'A', 'B', 'AB', 'Akums Drugs & Pharmaceuticals Ltd ( Plant 3 )', 'inventory@akums.net', '8010816950', 'Uttarakhand', 'Haridwar', 'Plot No 2,3,4,5 Sector 6B, I.I.E Sidcul, Ranipur, Haridwar', '249403', '05AAECA7090B1Z2', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(8, 'A', 'B', 'AB', 'Akums Drugs & Pharmaceuticals Ltd ( Plant 4 )', 'inventory@akums.net', '8010816950', 'Uttarakhand', 'Haridwar', 'Plot No 47 & 48 Sector 6A, I.I.E, Sidcul , Ranipur, Haridwar', '249403', '05AAECA7090B1Z2', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(9, 'A', 'B', 'AB', 'Akums Drugs & Pharmaceuticals ( Malik-Cepha )', 'inventory@akums.net', '8010816950', 'Uttarakhand', 'Haridwar', 'Plot No 16, Industrail Estate Bahadarpur Saini, Roorkee, Haridwar', '249403', '05AAECA7090B1Z2', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(10, 'A', 'B', 'AB', 'Akums Drugs & Pharma ( Pure & Cure Site )', 'inventory@akums.net', '8010816950', 'Uttarakhand', 'Haridwar', 'Plot No 26A-27-28-29 & 30, Sector 8 A, I.I.E Sidcul , Ranipur, Haridwar', '249403', '05AAECA7090B1Z2', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(11, 'A', 'B', 'AB', 'Akums Healthcare Limited ( AHL-1 )', 'inventory@akums.net', '8010816950', 'Uttarakhand', 'Haridwar', 'Plot No B-6, 7, 8, 9 Sector 01, Sigaddi Growth Centre Sidcul, Distt Pauri Garhwal Kotdwar', '246149', '05AAUCA5830H1ZI', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(12, 'A', 'B', 'AB', 'Besto Healthcare', 'bestohealthcare@gmail.com ', '9871398454', 'Himachal Pradesh', 'Baddi', 'Plot No 54 A 1st Floor, DIC, Industrial Area, Near Chatri Chowk, Baddi', '173205', '02BNLPS4651L1ZM', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(13, 'A', 'B', 'AB', 'GMH Laboratories', 'accounts@gmhlaboratories.com ', '9882981001', 'Himachal Pradesh', 'Baddi', 'Plot No. 13, Bhatoli-kalan, Industrial Township,, Baddi, Distt- Solan (HP)', '173205', '02ABFPG9454L1ZJ', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(14, 'A', 'B', 'AB', 'Hema Laboratories Pvt Ltd', 'ppic@hemadun.com', ' 9917647591', 'Uttarakhand', 'Dehradun', 'Plot No 29 Pharma City, Selaqui Industrial Area, Selaqui, Dehradun', '248011', '05AAACH5423K1ZR', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(15, 'A', 'B', 'AB', 'Kingston Aqua Industires ( P ) Ltd', 'accounts@gmhlaboratories.com ', '9882981001', 'Himachal Pradesh', 'Baddi', 'Plot No 3, Phase IV , Himuda , Industrial Area, Bhatoli Kalan, TEhsil Baddi, Distt Solan', '173205', '02AADCK4688A2ZU', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(16, 'A', 'B', 'AB', 'Malik Lifesciences Pvt Ltd', 'inventory@akums.net ', '8010816950', 'Uttarakhand', 'Haridwar', 'Plot No 16, Vardhman Industrial Estate, Bahadarpur Saini, Roorkee, Haridwar', '247667', '05AAECM9025E1ZP', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(17, 'A', 'B', 'AB', 'Pure & Cure Healtcare Pvt Ltd', 'inventory@akums.net ', '8010816950', 'Uttarakhand', 'Haridwar', 'Plot No 26A, 27 , 28 , 29 & 30 Sec 8A, Ranipur  Haridwar', '249403', '05AAECP0713G1ZX', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(18, 'A', 'B', 'AB', 'Pure & Cure Healtcare Pvt Ltd- Baddi', 'inventory@akums.net ', '8010816950', 'Himachal Pradesh', 'Badi', 'Khasra No 318/280, 319/280, 321/280 Vill Mankapur, Nalagarh , Baddi', '174101', '02AAECP0713G1Z3', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(19, 'A', 'B', 'AB', 'Biogenetic Drugs Pvt. Ltd.', 'ppcbdpl@smilaxgroup.net', '7807744119', 'Himachal Pradesh', 'Baddi', ' EPIP , Jharmajri baddi', '173205', '02AACCB3897K1ZJ', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(20, 'A', 'B', 'AB', 'Smilax Healthcare Drug Co.', 'ppc@smilaxgroup.net', '8894729256', 'Himachal Pradesh', 'Baddi', '23 , EPIP , Jharmajri baddi', '173205', '02ABAFM6564C1ZP', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(21, 'A', 'B', 'AB', 'Kingston Aqua Industries (P) Ltd.', 'kingstonpmstore@gmail.com', '9882981001', 'Himachal Pradesh', 'Baddi', 'Plot no 3 & 4 ,  Bhatoli Kalan, Industrial Township, Baddi,Distt.Solan (H.P)', '173205', '02AADCK4688A2ZU', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(22, 'A', 'B', 'AB', 'GMH LABORATORIES', 'gmhpmstore@gmail.com', '9882981001', 'Himachal Pradesh', 'Baddi', 'Plot No. 13, Bhatoli-kalan Industrial Township,Baddi, Distt- Solan (HP) ', '173205', '02ABFPG9454L1ZJ', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(23, 'A', 'B', 'AB', 'Polestar Power Industries', 'store.polestar@gmail.com', '8219530153', 'Himachal Pradesh', 'Baddi', 'Village Damuwala, Haripur Road,Barotiwala, Tehsil Baddi', '174103', '02AANFP6841P2ZN', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(24, 'A', 'B', 'AB', 'Besto Healthcare', 'bestohealthcare@gmail.com ', '9817398454', 'Himachal Pradesh', 'Baddi', 'Plot No 54-A , 1st Floor , DIC, Industrail Area, Near Chatari Chowk, Baddi, Solan', '173205', '02BNLPS4651L1ZM', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(25, 'A', 'B', 'AB', 'Smilax Pharmachem Drugs Industries', 'ppc@smilaxgroup.net', '8894729256', 'Himachal Pradesh', 'Baddi', '33-34 EPIP 11, Thane Baddi, Solan', '173205', '02AAMFA5001B1ZF', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(26, 'A', 'B', 'AB', 'Smilex Healthcare Pvt Ltd', 'ppc@smilaxgroup.net', '8894729256', 'Himachal Pradesh', 'Baddi', '23 EPIP 1, Jharmajri, Distt Solan, Baddi', '173205', '02AAJCS5602G2ZO', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL),
(27, 'A', 'B', 'AB', 'Tj Home Care Remedies', 'tjscare@gmail.com', '9814404494', 'Punjab', 'Zirakpur', 'Godown No , 35 Feet, Peer Pucca Road, Village Prabhat, Zirakpur', '140603', '03AEZPB0154R1Z5', NULL, 'success', 'AB', '2024-05-05 00:29:17', '2024-05-05 00:29:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coas`
--

DROP TABLE IF EXISTS `coas`;
CREATE TABLE IF NOT EXISTS `coas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `billing_item_id` bigint NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturing_date` date DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coating_types`
--

DROP TABLE IF EXISTS `coating_types`;
CREATE TABLE IF NOT EXISTS `coating_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cuttings`
--

INSERT INTO `cuttings` (`id`, `user_id`, `job_card_id`, `cutting_sheets`, `status_id`, `metalic_status`, `timer`, `created_at`, `updated_at`) VALUES
(1, 11, 2, 1767, 5, 0, 0, '2024-05-25 19:21:49', '2024-05-25 20:01:41'),
(4, NULL, 1, 467, 5, 0, 0, '2024-05-25 19:58:01', '2024-05-25 20:01:38'),
(6, 11, 8, 1850, 5, 0, 0, '2024-05-26 18:56:12', '2024-05-26 19:17:23'),
(7, 11, 9, 767, 5, 0, 0, '2024-05-26 19:21:22', '2024-05-26 19:30:25'),
(8, 13, 10, 233, 5, 0, 0, '2024-05-29 11:36:22', '2024-05-29 13:44:10'),
(9, 10, 11, 530, 5, 0, 0, '2024-06-06 09:03:33', '2024-06-06 09:03:59'),
(10, NULL, 12, NULL, 2, 0, 0, '2024-06-06 09:33:04', '2024-06-06 09:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `designings`
--

DROP TABLE IF EXISTS `designings`;
CREATE TABLE IF NOT EXISTS `designings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_card_id` int NOT NULL,
  `sheet_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required_sheet` int DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '2',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designings`
--

INSERT INTO `designings` (`id`, `job_card_id`, `sheet_size`, `required_sheet`, `color`, `set_no`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, NULL, 'CMYK', '34543', 5, '2024-05-25 18:57:15', '2024-05-25 19:02:59', NULL),
(2, 2, '19x20', NULL, 'CMYK', '2321', 5, '2024-05-25 18:57:33', '2024-05-25 19:02:21', NULL),
(3, 3, NULL, NULL, 'CMYK', '2321', 2, '2024-05-26 13:01:57', '2024-05-26 13:02:18', '2024-05-26 13:02:18'),
(4, 4, NULL, NULL, NULL, NULL, 2, '2024-05-26 13:03:00', '2024-05-26 13:03:08', '2024-05-26 13:03:08'),
(5, 5, NULL, NULL, NULL, NULL, 2, '2024-05-26 13:03:26', '2024-05-26 13:04:10', '2024-05-26 13:04:10'),
(6, 6, NULL, NULL, NULL, NULL, 2, '2024-05-26 13:07:58', '2024-05-26 13:08:06', '2024-05-26 13:08:06'),
(7, 7, NULL, NULL, 'CMYK', '34543', 5, '2024-05-26 13:09:10', '2024-05-26 13:09:23', NULL),
(8, 8, '19x23', NULL, NULL, '232102', 5, '2024-05-26 18:54:31', '2024-05-26 18:54:48', NULL),
(9, 9, '19x23', NULL, 'CMYK', '2321d', 5, '2024-05-26 19:20:17', '2024-05-26 19:20:38', NULL),
(10, 10, '73X25', NULL, 'cmyn', '100', 5, '2024-05-29 11:26:50', '2024-05-29 11:27:08', NULL),
(11, 11, '73X25', NULL, 'cmyn', '500', 5, '2024-06-06 09:01:27', '2024-06-06 09:01:43', NULL),
(12, 12, '73X25', NULL, 'cmyn', '100', 5, '2024-06-06 09:25:20', '2024-06-06 09:25:38', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dye_breakings`
--

INSERT INTO `dye_breakings` (`id`, `user_id`, `job_card_id`, `purchase_order_id`, `purchase_order_item_id`, `ready_quantity`, `ready_box`, `quantity_in_box`, `no_of_box`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 12, 1, 1, 2, 2000, NULL, NULL, NULL, 5, '2024-05-25 22:14:10', '2024-05-25 22:21:10'),
(2, 20, 1, 1, 3, 2000, NULL, NULL, NULL, 5, '2024-05-25 22:14:10', '2024-05-25 22:21:06'),
(3, 12, 1, 1, 1, 2200, NULL, NULL, NULL, 5, '2024-05-25 22:14:10', '2024-05-25 22:21:03'),
(4, 20, 2, 2, 4, 2000, NULL, NULL, NULL, 5, '2024-05-25 22:14:15', '2024-05-26 14:22:30'),
(5, 12, 2, 2, 5, 3200, NULL, NULL, NULL, 5, '2024-05-25 22:14:15', '2024-05-25 22:20:46'),
(6, NULL, 11, 9, 14, 0, NULL, NULL, NULL, 2, '2024-06-06 09:17:33', '2024-06-06 09:17:33'),
(7, NULL, 11, 9, 13, 0, NULL, NULL, NULL, 2, '2024-06-06 09:17:33', '2024-06-06 09:17:33');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dye_cuttings`
--

INSERT INTO `dye_cuttings` (`id`, `user_id`, `job_card_id`, `dye_counter`, `status_id`, `created_at`, `updated_at`) VALUES
(3, 4, 9, 750, 2, '2024-05-26 20:00:58', '2024-05-26 20:01:29'),
(4, 5, 10, NULL, 2, '2024-05-29 17:10:15', '2024-05-29 17:27:44'),
(5, 4, 11, 430, 5, '2024-06-06 09:16:05', '2024-06-06 09:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `dye_details`
--

DROP TABLE IF EXISTS `dye_details`;
CREATE TABLE IF NOT EXISTS `dye_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dye_no` varchar(1024) DEFAULT NULL,
  `length` int DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `dye_lock` varchar(1024) DEFAULT NULL,
  `ups` int DEFAULT NULL,
  `sheet_size` varchar(1024) DEFAULT NULL,
  `automatic` int DEFAULT NULL,
  `carton_size` varchar(1024) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dye_details`
--

INSERT INTO `dye_details` (`id`, `dye_no`, `length`, `width`, `height`, `dye_lock`, `ups`, `sheet_size`, `automatic`, `carton_size`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 57, 37, 100, 'lockbottom', 9, '19x23', 0, '57X37X100', '2024-05-25 16:53:13', '2024-05-25 16:53:13', NULL),
(2, '2', 58, 58, 200, 'lockbottom', 4, '19x20', 0, '58X58X200', '2024-05-25 16:53:52', '2024-05-25 16:53:52', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `embossings`
--

INSERT INTO `embossings` (`id`, `user_id`, `job_card_id`, `embossing_counter`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 16, 9, 755, 5, '2024-05-26 19:58:51', '2024-05-26 20:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
CREATE TABLE IF NOT EXISTS `issues` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `issue_type` int DEFAULT NULL COMMENT '1=auto\r\n0= manual',
  `issue_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_at` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `user_id`, `issue_type`, `issue_no`, `issue_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'ISN0001', '25-05', '2024-05-25 19:19:14', '2024-05-25 19:19:14'),
(2, 1, 1, 'ISN0002', '26-05', '2024-05-26 13:09:56', '2024-05-26 13:09:56'),
(3, 1, NULL, 'ISN0003', NULL, '2024-05-26 22:00:54', '2024-05-26 22:00:54'),
(4, 1, NULL, 'ISN0004', NULL, '2024-05-26 22:08:29', '2024-05-26 22:08:29'),
(5, 1, NULL, 'ISN0005', NULL, '2024-05-26 22:09:06', '2024-05-26 22:09:06'),
(6, 1, 1, 'ISN0006', NULL, '2024-05-26 22:12:24', '2024-05-26 22:12:24'),
(7, 1, 1, 'ISN0007', NULL, '2024-05-26 22:19:17', '2024-05-26 22:19:17'),
(8, 1, 1, 'ISN0008', NULL, '2024-05-26 22:20:00', '2024-05-26 22:20:00'),
(9, 1, 1, 'ISN0009', '29-05', '2024-05-29 11:28:35', '2024-05-29 11:28:35'),
(10, 1, 0, 'ISN0010', NULL, '2024-06-05 21:10:56', '2024-06-05 21:10:56'),
(11, 1, 1, 'ISN0011', '06-06', '2024-06-06 09:02:16', '2024-06-06 09:02:16');

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
  `unit` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_for` int DEFAULT NULL,
  `oprator_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=manual\r\n0= auto or jobcard created',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issue_items`
--

INSERT INTO `issue_items` (`id`, `job_card_id`, `issue_id`, `product_id`, `quantity`, `unit`, `issue_for`, `oprator_name`, `issue_type`, `remarks`, `updated_at`, `created_at`) VALUES
(1, 12, 11, 1, 133, 'Sheets', 1, NULL, 0, NULL, '2024-06-06 09:26:13', '2024-05-25 19:19:14'),
(2, 1, 1, 2, 50, 'Sheets', 1, NULL, 0, NULL, '2024-05-25 19:57:48', '2024-05-25 19:20:30'),
(3, 9, 2, 3, 383, 'Sheets', 1, NULL, 0, NULL, '2024-05-26 19:21:15', '2024-05-26 13:40:15'),
(4, NULL, 5, 2, 2000, 'Sheets', 2, NULL, 1, NULL, '2024-05-26 22:09:06', '2024-05-26 22:09:06'),
(5, NULL, 6, 2, 2000, 'Sheets', 2, NULL, 1, NULL, '2024-05-26 22:12:24', '2024-05-26 22:12:24'),
(6, NULL, 7, 2, 2000, 'Sheets', 2, NULL, 1, NULL, '2024-05-26 22:19:17', '2024-05-26 22:19:17'),
(7, NULL, 8, 2, 2000, 'Sheets', 2, NULL, 1, NULL, '2024-05-26 22:20:00', '2024-05-26 22:20:00'),
(8, NULL, 8, 2, 50, 'Sheets', 1, NULL, 1, NULL, '2024-05-26 22:20:00', '2024-05-26 22:20:00'),
(9, NULL, 10, 1, 1000, 'Sheets', 2, NULL, 1, 'Hello World nnnn', '2024-06-05 21:18:59', '2024-06-05 21:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `job_cards`
--

DROP TABLE IF EXISTS `job_cards`;
CREATE TABLE IF NOT EXISTS `job_cards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `planning_by` int NOT NULL,
  `job_card_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mix` tinyint(1) DEFAULT '0' COMMENT '1= separate\r\n0= mix',
  `product_id` int DEFAULT NULL,
  `sheet_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required_sheet` int DEFAULT NULL,
  `wastage_sheet` int DEFAULT NULL,
  `total_sheet` int DEFAULT NULL,
  `paper_divide` int DEFAULT NULL,
  `dye_details_id` int DEFAULT NULL,
  `dye_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dye_machine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'auto or manual',
  `warehouse_type` int DEFAULT NULL,
  `warehouse_paper` text COLLATE utf8mb4_unicode_ci,
  `warehouse_sheet` int DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coating_machine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_coating_machine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coating_window_cutting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embossing_leafing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roll_used` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_cards`
--

INSERT INTO `job_cards` (`id`, `planning_by`, `job_card_no`, `mix`, `product_id`, `sheet_size`, `required_sheet`, `wastage_sheet`, `total_sheet`, `paper_divide`, `dye_details_id`, `dye_details`, `dye_machine`, `warehouse_type`, `warehouse_paper`, `warehouse_sheet`, `color`, `set_no`, `coating_machine`, `other_coating_machine`, `coating_window_cutting`, `embossing_leafing`, `roll_used`, `cutting_sheets`, `printed_sheets`, `coated_sheets`, `laminated_sheets`, `spot_uv_sheets`, `dye_counter`, `leafing_counter`, `embossing_counter`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '001', 1, NULL, '19x23', 667, NULL, 467, NULL, 1, '1/9', 'manual', NULL, NULL, NULL, 'CMYK', '34543', 'chemical coating', 'none', 'none', 'None', '0', 467, 450, 435, NULL, NULL, 430, NULL, NULL, 25, '2024-05-25 18:57:15', '2024-05-25 22:14:10', NULL),
(2, 2, '002', 0, NULL, '19x20', 1667, NULL, 1767, NULL, NULL, NULL, 'manual', NULL, NULL, NULL, 'CMYK', '2321', 'chemical coating', 'none', 'none', 'None', '0', 1767, 1720, 1715, NULL, NULL, 1712, NULL, NULL, 25, '2024-05-25 18:57:33', '2024-05-25 22:14:15', NULL),
(3, 2, '003', 1, NULL, '19x23', 222, NULL, NULL, NULL, 1, '1/9-lockbottom', NULL, NULL, NULL, NULL, 'CMYK', '2321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2024-05-26 13:01:57', '2024-05-26 13:02:18', '2024-05-26 13:02:18'),
(4, 2, '003', 1, NULL, '19x23', 222, NULL, NULL, NULL, 1, '1/9-lockbottom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2024-05-26 13:03:00', '2024-05-26 13:03:08', '2024-05-26 13:03:08'),
(5, 2, '003', 1, NULL, '19x23', 667, NULL, NULL, NULL, 1, '1/9-lockbottom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2024-05-26 13:03:26', '2024-05-26 13:04:10', '2024-05-26 13:04:10'),
(6, 2, '003', 1, NULL, '19x23', 667, NULL, NULL, NULL, 1, '1/9-lockbottom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2024-05-26 13:07:58', '2024-05-26 13:08:06', '2024-05-26 13:08:06'),
(7, 2, '003', 1, NULL, '19x23', 667, NULL, 1067, NULL, 1, '1/9-lockbottom', 'manual', NULL, NULL, NULL, 'CMYK', '34543', 'chemical coating', 'none', 'window in batch', 'None', '0', 767, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-05-26 13:09:10', '2024-05-26 13:42:57', NULL),
(8, 2, '004', 1, NULL, '19x23', 1750, NULL, 1850, NULL, NULL, 'New', 'manual', NULL, NULL, NULL, NULL, '232102', 'chemical coating', 'metallic', 'window in batch, pasting, bottom lock', 'None', '12.5\"', 1850, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2024-05-26 18:54:31', '2024-05-26 19:17:23', NULL),
(9, 2, '005', 1, NULL, '19x23', 667, NULL, 767, NULL, NULL, 'New', 'manual', NULL, NULL, NULL, 'CMYK', '2321d', 'chemical coating', 'spot uv', 'none', 'Both', '0', 767, 766, 764, NULL, 760, 750, 765, 755, 19, '2024-05-26 19:20:17', '2024-05-26 20:01:29', NULL),
(10, 3, '006', 1, NULL, '73X25', 33, NULL, 233, NULL, NULL, 'New', 'manual', NULL, NULL, NULL, 'cmyn', '100', 'matt lamination', 'none', 'none', 'None', '0', 233, 232, NULL, 231, NULL, NULL, NULL, NULL, 19, '2024-05-29 11:26:50', '2024-05-29 17:10:15', NULL),
(11, 3, '007', 1, NULL, '73X25', 333, NULL, 533, NULL, NULL, 'New', 'manual', NULL, NULL, NULL, 'cmyn', '500', 'matt lamination', 'spot uv', 'none', 'None', '0', 530, 529, NULL, 528, 499, 430, NULL, NULL, 25, '2024-06-06 09:01:27', '2024-06-06 09:17:33', NULL),
(12, 3, '008', 1, NULL, '73X25', 67, NULL, 267, NULL, NULL, 'New', 'manual', NULL, NULL, NULL, 'cmyn', '100', 'chemical coating', 'none', 'none', 'None', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, '2024-06-06 09:25:20', '2024-06-06 09:33:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_card_histories`
--

DROP TABLE IF EXISTS `job_card_histories`;
CREATE TABLE IF NOT EXISTS `job_card_histories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_card_id` bigint NOT NULL,
  `machine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_card_in` datetime DEFAULT NULL,
  `job_card_out` datetime DEFAULT NULL,
  `counter` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_card_histories`
--

INSERT INTO `job_card_histories` (`id`, `job_card_id`, `machine`, `job_card_in`, `job_card_out`, `counter`, `created_at`, `updated_at`) VALUES
(1, 2, 'Cutting', '2024-05-25 19:21:49', '2024-05-25 20:01:41', 1667, '2024-05-25 19:21:49', '2024-05-25 20:01:41'),
(5, 1, 'Cutting', '2024-05-25 19:58:01', '2024-05-25 20:01:38', 667, '2024-05-25 19:58:01', '2024-05-25 20:01:38'),
(6, 1, 'Printing', '2024-05-25 20:01:38', '2024-05-25 21:59:46', 467, '2024-05-25 20:01:38', '2024-05-25 21:59:46'),
(7, 2, 'Printing', '2024-05-25 20:01:41', '2024-05-25 22:00:03', 1767, '2024-05-25 20:01:41', '2024-05-25 22:00:03'),
(8, 1, 'Chemical Coating', '2024-05-25 21:59:46', '2024-05-25 22:13:11', 450, '2024-05-25 21:59:46', '2024-05-25 22:13:11'),
(9, 2, 'Chemical Coating', '2024-05-25 22:00:03', '2024-05-25 22:12:56', 1720, '2024-05-25 22:00:03', '2024-05-25 22:12:56'),
(10, 2, 'Dye Cutting', '2024-05-25 22:12:56', '2024-05-25 22:14:15', 1715, '2024-05-25 22:12:56', '2024-05-25 22:14:15'),
(11, 1, 'Dye Cutting', '2024-05-25 22:13:11', '2024-05-25 22:14:10', 435, '2024-05-25 22:13:11', '2024-05-25 22:14:10'),
(12, 1, 'Dye Breaking', '2024-05-25 22:14:10', NULL, 430, '2024-05-25 22:14:10', '2024-05-25 22:14:10'),
(13, 2, 'Dye Breaking', '2024-05-25 22:14:15', NULL, 1712, '2024-05-25 22:14:15', '2024-05-25 22:14:15'),
(18, 8, 'Cutting', '2024-05-26 18:56:12', '2024-05-26 19:17:23', 1750, '2024-05-26 18:56:12', '2024-05-26 19:17:23'),
(19, 8, 'Lamination', '2024-05-26 19:17:23', NULL, 1850, '2024-05-26 19:17:23', '2024-05-26 19:17:23'),
(20, 9, 'Cutting', '2024-05-26 19:21:22', '2024-05-26 19:30:25', 667, '2024-05-26 19:21:22', '2024-05-26 19:30:25'),
(22, 9, 'Printing', '2024-05-26 19:30:25', '2024-05-26 19:50:53', 767, '2024-05-26 19:30:25', '2024-05-26 19:50:53'),
(24, 9, 'Leafing', '2024-05-26 19:50:53', '2024-05-26 19:53:08', 766, '2024-05-26 19:50:53', '2024-05-26 19:53:08'),
(25, 9, 'Chemical Coating', '2024-05-26 19:53:08', '2024-05-26 19:56:08', 765, '2024-05-26 19:53:08', '2024-05-26 19:56:08'),
(26, 9, 'Spot Uv', '2024-05-26 19:56:08', '2024-05-26 19:58:51', 764, '2024-05-26 19:56:08', '2024-05-26 19:58:51'),
(27, 9, 'Embossing', '2024-05-26 19:58:51', '2024-05-26 20:00:58', 760, '2024-05-26 19:58:51', '2024-05-26 20:00:58'),
(28, 9, 'Dye Cutting', '2024-05-26 20:00:58', NULL, 755, '2024-05-26 20:00:58', '2024-05-26 20:00:58'),
(29, 10, 'Cutting', '2024-05-29 11:36:22', '2024-05-29 13:44:10', 33, '2024-05-29 11:30:32', '2024-05-29 13:44:10'),
(31, 10, 'Printing', '2024-05-29 13:44:10', '2024-05-29 14:24:07', 233, '2024-05-29 13:44:10', '2024-05-29 14:24:07'),
(32, 10, 'Lamination', '2024-05-29 14:24:07', '2024-05-29 17:10:15', 231, '2024-05-29 14:24:07', '2024-05-29 17:10:15'),
(33, 10, 'Dye Cutting', '2024-05-29 17:10:15', NULL, 231, '2024-05-29 17:10:15', '2024-05-29 17:10:15'),
(34, 11, 'Cutting', '2024-06-06 09:03:33', '2024-06-06 09:03:59', 333, '2024-06-06 09:02:21', '2024-06-06 09:03:59'),
(35, 11, 'Printing', '2024-06-06 09:03:59', '2024-06-06 09:07:12', 530, '2024-06-06 09:03:59', '2024-06-06 09:07:12'),
(36, 11, 'Lamination', '2024-06-06 09:07:12', '2024-06-06 09:15:36', 528, '2024-06-06 09:07:12', '2024-06-06 09:15:36'),
(37, 11, 'Spot Uv', '2024-06-06 09:15:36', '2024-06-06 09:16:05', 528, '2024-06-06 09:15:36', '2024-06-06 09:16:05'),
(38, 11, 'Dye Cutting', '2024-06-06 09:16:05', '2024-06-06 09:17:33', 499, '2024-06-06 09:16:05', '2024-06-06 09:17:33'),
(39, 11, 'Dye Breaking', '2024-06-06 09:17:33', NULL, 430, '2024-06-06 09:17:33', '2024-06-06 09:17:33'),
(40, 12, 'Cutting', '2024-06-06 09:33:04', NULL, 67, '2024-06-06 09:26:18', '2024-06-06 09:33:04');

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
  `ready_box` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `warehouse_stock_type` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_card_items`
--

INSERT INTO `job_card_items` (`id`, `job_card_id`, `planning_id`, `purchase_order_id`, `purchase_order_item_id`, `ups`, `quantity`, `ready_quantity`, `ready_box`, `status_id`, `warehouse_stock_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 1, 1, 3, 2000, NULL, NULL, 1, NULL, '2024-05-25 18:57:15', '2024-05-25 18:59:59', '2024-05-25 18:59:59'),
(2, 1, 4, 1, 2, 3, 2000, NULL, NULL, 1, NULL, '2024-05-25 18:57:15', '2024-05-25 18:57:15', NULL),
(3, 1, 5, 1, 3, 3, 2000, NULL, NULL, 1, NULL, '2024-05-25 18:57:15', '2024-05-25 18:57:15', NULL),
(4, 2, 1, 2, 4, 2, 2000, NULL, NULL, 1, NULL, '2024-05-25 18:57:33', '2024-05-25 18:57:33', NULL),
(5, 2, 2, 2, 5, 1, 3000, NULL, NULL, 1, NULL, '2024-05-25 18:57:33', '2024-05-25 18:57:33', NULL),
(6, 1, 3, 1, 1, 3, NULL, NULL, NULL, 1, NULL, '2024-05-25 19:01:37', '2024-05-25 19:01:37', NULL),
(7, 3, 6, 3, 6, 9, 2000, NULL, NULL, 1, NULL, '2024-05-26 13:01:57', '2024-05-26 13:02:18', '2024-05-26 13:02:18'),
(8, 4, 6, 3, 6, 9, 2000, NULL, NULL, 1, NULL, '2024-05-26 13:03:00', '2024-05-26 13:03:08', '2024-05-26 13:03:08'),
(9, 5, 6, 3, 6, 3, 2000, NULL, NULL, 1, NULL, '2024-05-26 13:03:26', '2024-05-26 13:04:10', '2024-05-26 13:04:10'),
(10, 6, 6, 3, 6, 3, 2000, NULL, NULL, 1, NULL, '2024-05-26 13:07:58', '2024-05-26 13:08:06', '2024-05-26 13:08:06'),
(11, 7, 6, 3, 6, 3, 2000, NULL, NULL, 1, NULL, '2024-05-26 13:09:10', '2024-05-26 13:09:10', NULL),
(12, 8, 7, 4, 7, 2, 2000, NULL, NULL, 1, NULL, '2024-05-26 18:54:31', '2024-05-26 18:54:31', NULL),
(13, 8, 8, 4, 8, 2, 5000, NULL, NULL, 1, NULL, '2024-05-26 18:54:31', '2024-05-26 18:54:31', NULL),
(14, 9, 9, 5, 9, 3, 2000, NULL, NULL, 1, NULL, '2024-05-26 19:20:17', '2024-05-26 19:20:17', NULL),
(15, 10, 10, 6, 10, 3, 100, NULL, NULL, 1, NULL, '2024-05-29 11:26:50', '2024-05-29 11:26:50', NULL),
(16, 11, 12, 9, 14, 3, 2000, NULL, NULL, 1, NULL, '2024-06-06 09:01:27', '2024-06-06 09:01:27', NULL),
(17, 11, 11, 9, 13, 9, 2000, NULL, NULL, 1, NULL, '2024-06-06 09:01:27', '2024-06-06 09:01:27', NULL),
(18, 12, 13, 8, 12, 3, 200, NULL, NULL, 1, NULL, '2024-06-06 09:25:20', '2024-06-06 09:25:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_card_medias`
--

DROP TABLE IF EXISTS `job_card_medias`;
CREATE TABLE IF NOT EXISTS `job_card_medias` (
  `job_card_id` int NOT NULL,
  `media_id` int NOT NULL,
  KEY `job_card_medias_job_card_id_foreign` (`job_card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_card_papers`
--

DROP TABLE IF EXISTS `job_card_papers`;
CREATE TABLE IF NOT EXISTS `job_card_papers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_card_id` bigint NOT NULL,
  `product_id` int DEFAULT NULL,
  `sheet_size` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `required_sheet` int DEFAULT NULL,
  `wastage_sheet` int DEFAULT NULL,
  `total_sheet` int DEFAULT NULL,
  `paper_divide` int DEFAULT NULL,
  `subtotal_sheet` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_card_papers`
--

INSERT INTO `job_card_papers` (`id`, `job_card_id`, `product_id`, `sheet_size`, `required_sheet`, `wastage_sheet`, `total_sheet`, `paper_divide`, `subtotal_sheet`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '19x20', 1667, 100, 883, 2, 1767, '2024-05-25 19:19:14', '2024-05-25 19:19:14'),
(2, 1, 2, '19x23', 100, 0, 50, 2, 100, '2024-05-25 19:20:30', '2024-05-25 19:57:48'),
(3, 1, 1, '19x23', 367, 0, 183, 2, 367, '2024-05-25 19:20:30', '2024-05-25 19:20:30'),
(4, 7, 1, '19x23', 667, 300, 322, 3, 967, '2024-05-26 13:09:56', '2024-05-26 13:38:22'),
(5, 7, 3, '19x23', 100, 0, 50, 2, 100, '2024-05-26 13:40:15', '2024-05-26 13:40:15'),
(6, 8, 3, '19x23', 1750, 100, 925, 2, 1850, '2024-05-26 18:56:01', '2024-05-26 18:56:01'),
(7, 9, 3, '19x23', 667, 100, 383, 2, 767, '2024-05-26 19:21:15', '2024-05-26 19:21:15'),
(8, 10, 1, '73X25', 33, 200, 116, 2, 233, '2024-05-29 11:28:35', '2024-05-29 11:28:35'),
(9, 11, 1, '73X25', 333, 200, 266, 2, 533, '2024-06-06 09:02:16', '2024-06-06 09:02:16'),
(10, 12, 1, '73X25', 67, 200, 133, 2, 267, '2024-06-06 09:26:13', '2024-06-06 09:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `job_card_timers`
--

DROP TABLE IF EXISTS `job_card_timers`;
CREATE TABLE IF NOT EXISTS `job_card_timers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_card_id` bigint NOT NULL,
  `machine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `paus_at` timestamp NULL DEFAULT NULL,
  `resume_at` timestamp NULL DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `paused_time` int NOT NULL DEFAULT '0',
  `worked_time` int NOT NULL DEFAULT '0',
  `total_time` int NOT NULL DEFAULT '0',
  `status` int DEFAULT '0' COMMENT '1=working,2=stop,3=pause',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_card_timers`
--

INSERT INTO `job_card_timers` (`id`, `job_card_id`, `machine`, `started_at`, `paus_at`, `resume_at`, `ended_at`, `paused_time`, `worked_time`, `total_time`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cutting', '2024-05-25 14:21:25', '2024-05-25 14:21:34', '2024-05-25 14:21:54', '2024-05-25 14:22:00', 20, 15, 35, 2, 'Machine maintenance', '2024-05-25 19:44:02', '2024-05-25 19:52:00'),
(2, 2, 'Cutting', '2024-05-25 14:28:16', '2024-05-25 14:28:26', '2024-05-25 14:28:36', '2024-05-25 14:28:40', 10, 14, 24, 2, NULL, '2024-05-25 19:58:14', '2024-05-25 19:58:40'),
(3, 1, 'Printing', '2024-05-25 16:29:07', NULL, NULL, '2024-05-25 16:29:13', 0, 6, 6, 2, NULL, '2024-05-25 21:59:04', '2024-05-25 21:59:13'),
(4, 2, 'Printing', '2024-05-25 16:29:17', NULL, NULL, '2024-05-25 16:29:23', 0, 6, 6, 2, NULL, '2024-05-25 21:59:15', '2024-05-25 21:59:23'),
(5, 7, 'Cutting', '2024-05-26 08:06:46', NULL, NULL, '2024-05-26 08:06:52', 0, 6, 6, 2, NULL, '2024-05-26 13:36:43', '2024-05-26 13:36:52'),
(6, 8, 'Cutting', '2024-05-26 13:46:53', NULL, NULL, '2024-05-26 13:47:07', 0, 14, 14, 2, NULL, '2024-05-26 19:16:50', '2024-05-26 19:17:07'),
(7, 9, 'Cutting', '2024-05-26 13:59:20', '2024-05-26 13:59:29', '2024-05-26 13:59:43', '2024-05-26 13:59:47', 14, 13, 27, 2, NULL, '2024-05-26 19:22:20', '2024-05-26 19:29:47'),
(8, 9, 'Printing', '2024-05-26 14:02:15', NULL, NULL, '2024-05-26 14:02:23', 0, 8, 8, 2, NULL, '2024-05-26 19:31:49', '2024-05-26 19:32:23'),
(9, 9, 'Chemical Coating', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2024-05-26 19:54:42', '2024-05-26 19:54:42'),
(10, 9, 'Dye Cutting', '2024-05-26 14:31:49', '2024-05-26 15:28:44', '2024-05-26 15:27:30', NULL, 79, 3336, 0, 3, NULL, '2024-05-26 20:01:46', '2024-05-26 20:58:44'),
(11, 10, 'Cutting', '2024-05-29 08:06:33', NULL, NULL, '2024-05-29 08:06:38', 0, 5, 5, 2, NULL, '2024-05-29 13:36:31', '2024-05-29 13:36:38'),
(12, 10, 'Printing', '2024-05-29 08:53:58', NULL, NULL, '2024-05-29 08:54:03', 0, 5, 5, 2, NULL, '2024-05-29 14:23:56', '2024-05-29 14:24:03'),
(13, 2, 'Dye Breaking', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2024-05-29 17:32:34', '2024-05-29 17:32:34'),
(14, 2, 'Pasting', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2024-06-03 18:36:50', '2024-06-03 18:36:50'),
(15, 11, 'Cutting', '2024-06-06 03:33:49', NULL, NULL, '2024-06-06 03:33:55', 0, 6, 6, 2, NULL, '2024-06-06 09:03:46', '2024-06-06 09:03:55'),
(16, 11, 'Printing', '2024-06-06 03:36:57', NULL, NULL, '2024-06-06 03:37:03', 0, 6, 6, 2, NULL, '2024-06-06 09:06:54', '2024-06-06 09:07:03'),
(17, 11, 'Lamination', '2024-06-06 03:37:36', '2024-06-06 03:44:17', '2024-06-06 03:44:23', '2024-06-06 03:44:56', 6, 434, 440, 2, NULL, '2024-06-06 09:07:34', '2024-06-06 09:14:56'),
(18, 8, 'Lamination', '2024-06-06 03:43:59', '2024-06-06 03:44:40', '2024-06-06 03:44:45', '2024-06-06 03:45:01', 5, 57, 62, 2, NULL, '2024-06-06 09:13:55', '2024-06-06 09:15:01'),
(19, 11, 'Dye Cutting', '2024-06-06 03:47:04', NULL, NULL, '2024-06-06 03:47:26', 0, 22, 22, 2, NULL, '2024-06-06 09:17:02', '2024-06-06 09:17:26');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_card_users`
--

INSERT INTO `job_card_users` (`id`, `job_card_id`, `module_id`, `module_user_id`, `created_at`, `updated_at`) VALUES
(6, 9, 1, 10, '2024-05-29 10:33:10', '2024-05-29 10:33:10'),
(7, 9, 10, 22, '2024-05-29 10:33:10', '2024-05-29 10:33:10'),
(8, 9, 2, 1, '2024-05-29 10:33:10', '2024-05-29 10:33:10'),
(9, 9, 3, 15, '2024-05-29 10:33:10', '2024-05-29 10:33:10'),
(10, 9, 4, 16, '2024-05-29 10:33:10', '2024-05-29 10:33:10'),
(11, 9, 5, 17, '2024-05-29 10:33:10', '2024-05-29 10:33:10'),
(12, 9, 6, 18, '2024-05-29 10:33:10', '2024-05-29 10:33:10'),
(13, 9, 7, 4, '2024-05-29 10:33:10', '2024-05-29 10:33:10'),
(14, 9, 9, 12, '2024-05-29 10:33:10', '2024-05-29 10:33:10'),
(15, 9, 8, 6, '2024-05-29 10:33:10', '2024-05-29 10:33:10'),
(16, 10, 1, 13, '2024-05-29 11:28:00', '2024-05-29 13:29:19'),
(17, 10, 10, 21, '2024-05-29 11:28:00', '2024-05-29 14:10:45'),
(18, 10, 2, 3, '2024-05-29 11:28:00', '2024-05-29 11:28:00'),
(19, 10, 3, 26, '2024-05-29 11:28:00', '2024-05-29 16:58:59'),
(20, 10, 4, 16, '2024-05-29 11:28:00', '2024-05-29 11:28:00'),
(21, 10, 5, 23, '2024-05-29 11:28:00', '2024-05-29 11:28:00'),
(22, 10, 6, 24, '2024-05-29 11:28:00', '2024-05-29 11:28:00'),
(23, 10, 7, 5, '2024-05-29 11:28:00', '2024-05-29 17:27:44'),
(24, 10, 9, 12, '2024-05-29 11:28:00', '2024-05-29 11:28:00'),
(25, 10, 8, 8, '2024-05-29 11:28:00', '2024-05-29 11:28:00'),
(26, 11, 1, 10, '2024-06-06 09:03:24', '2024-06-06 09:03:24'),
(27, 11, 10, 21, '2024-06-06 09:03:24', '2024-06-06 09:03:24'),
(28, 11, 2, NULL, '2024-06-06 09:03:24', '2024-06-06 09:03:24'),
(29, 11, 3, NULL, '2024-06-06 09:03:24', '2024-06-06 09:03:24'),
(30, 11, 4, NULL, '2024-06-06 09:03:24', '2024-06-06 09:03:24'),
(31, 11, 5, NULL, '2024-06-06 09:03:24', '2024-06-06 09:03:24'),
(32, 11, 6, NULL, '2024-06-06 09:03:24', '2024-06-06 09:03:24'),
(33, 11, 7, 4, '2024-06-06 09:03:24', '2024-06-06 09:16:54'),
(34, 11, 9, NULL, '2024-06-06 09:03:24', '2024-06-06 09:03:24'),
(35, 11, 8, NULL, '2024-06-06 09:03:24', '2024-06-06 09:03:24');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laminations`
--

INSERT INTO `laminations` (`id`, `user_id`, `job_card_id`, `laminated_sheets`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 15, 8, NULL, 2, '2024-05-26 19:17:23', '2024-05-26 19:17:51'),
(2, 26, 10, 231, 5, '2024-05-29 14:24:07', '2024-05-29 17:10:15'),
(3, NULL, 11, 528, 5, '2024-06-06 09:07:12', '2024-06-06 09:15:36');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leafings`
--

INSERT INTO `leafings` (`id`, `user_id`, `job_card_id`, `leafing_counter`, `status_id`, `created_at`, `updated_at`) VALUES
(2, 17, 9, 765, 5, '2024-05-26 19:50:53', '2024-05-26 19:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
CREATE TABLE IF NOT EXISTS `logins` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `authenticatable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authenticatable_id` bigint UNSIGNED NOT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_access_token_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_activity_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
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
(1, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', NULL, NULL, 'mhCNpMUHXxsJEk4gSpFGorSGUhDSJsnA99DDPw5Ys4oWCr06w7YaJJT5Ab4w', NULL, '2024-06-03 14:56:53', '2024-06-03 17:49:01', '2024-06-03 15:25:28', NULL, NULL, NULL, '2025-07-08 14:56:53', NULL),
(2, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', NULL, 'LiUtRvvNokj19CbgKxuR8t9PG4at4NRwKsXkNYUY', NULL, NULL, '2024-06-03 15:08:40', '2024-06-03 15:08:40', '2024-06-03 15:08:40', NULL, NULL, NULL, '2024-06-03 17:08:40', '2024-06-03 15:08:40'),
(3, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', NULL, 'MreJeLgX9blaX2nTIo8D6DRvPhZSLf38QBTvZxU3', NULL, NULL, '2024-06-03 15:08:59', '2024-06-03 15:08:59', '2024-06-03 15:08:59', NULL, NULL, NULL, '2024-06-03 17:08:59', NULL),
(4, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Safari', NULL, 'ZFCEEO5gM5ztEue2Zt2dKjCfUJwvnJfqmXBGdq69', 'ObcbQFF8Z84rqAsQ2rCgi1HrlqmNzQTxNWkH7T2OQpQGhuWf7v259l9h1eYu', NULL, '2024-06-03 15:10:53', '2024-06-03 15:10:53', '2024-06-03 15:10:53', NULL, NULL, NULL, '2025-07-08 15:10:53', '2024-06-03 15:10:53'),
(5, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Safari', NULL, 'xbcEdEh3Uw9Ut5T0WYFl94pk0w1ftaon7zc80acG', NULL, NULL, '2024-06-03 15:11:06', '2024-06-03 15:58:16', '2024-06-03 15:58:16', NULL, NULL, NULL, '2024-06-03 17:11:06', '2024-06-03 15:58:16'),
(6, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/125.0.6422.80 Mobile/15E148 Safari/604.1', '192.168.1.10', 'mobile', 'Apple iPhone', 'iOS', 'Chrome', NULL, 'Q98paR75KzorsbjfcS9ll826o8glilWkR8S3n2kT', NULL, NULL, '2024-06-03 15:34:49', '2024-06-03 15:34:49', '2024-06-03 15:34:49', NULL, NULL, NULL, '2024-06-03 17:34:49', '2024-06-03 15:34:49'),
(7, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/125.0.6422.80 Mobile/15E148 Safari/604.1', '192.168.1.10', 'mobile', 'Apple iPhone', 'iOS', 'Chrome', NULL, 'fdCjkkgML4A2FnzMR139ZcYRBTSo3YE0THf2I12q', NULL, NULL, '2024-06-03 15:35:10', '2024-06-03 16:15:17', '2024-06-03 16:15:17', NULL, NULL, NULL, '2024-06-03 17:35:10', NULL),
(8, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Safari', 'false', 'AsuaUOM4PQRnmotCfrUSlVlnjAdURkPGZxooWEL1', 'RPhUuKHWe8txrL00fW4rr0oHy3w8iO8H3L1Y4AIw83n6vlIWfe0b9LmuIx1k', NULL, '2024-06-03 15:58:33', '2024-06-03 15:58:33', '2024-06-03 15:58:33', NULL, NULL, NULL, '2025-07-08 15:58:33', '2024-06-03 15:58:33'),
(9, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Safari', 'false', 'lA2EghSenPW1Jxtazj8i1Q9RdKF6pA4IoGrARsbn', NULL, NULL, '2024-06-03 15:58:57', '2024-06-03 16:03:15', '2024-06-03 16:03:15', NULL, NULL, NULL, '2024-06-03 17:58:57', '2024-06-03 16:03:15'),
(10, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Safari', 'false', 'OS7jWbQ5nXXDddJIMsytyDkius4w7PbgkgomLRFc', 'roYRB7SScLkk4gTPNUvt7S3U5gFKlBLYMXBzDnRtwukug2K7jM8gG9kHCevd', NULL, '2024-06-03 16:03:24', '2024-06-03 16:03:24', '2024-06-03 16:03:24', NULL, NULL, NULL, '2025-07-08 16:03:24', '2024-06-03 16:03:24'),
(11, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Safari', 'false', 'hcCncDURFpqAtJBrwrZY80AxbRlInj6ByVLSmk4s', NULL, NULL, '2024-06-03 16:03:40', '2024-06-03 16:14:32', '2024-06-03 16:14:32', NULL, NULL, NULL, '2024-06-03 18:03:40', NULL),
(12, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'HH4UtT53iktyoov6mLKQn79cavhcBK5NZ8QAAykE', NULL, NULL, '2024-06-03 17:49:04', '2024-06-03 18:56:42', '2024-06-03 18:56:42', NULL, NULL, NULL, '2025-07-08 17:49:04', '2024-06-03 18:56:42'),
(13, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', NULL, 'YsDmAxLknBlcgZgrBUs3QNbmM7tlnfWni7mP3UjAqRPw912Zc5r2s5MYyGmW', NULL, '2024-06-03 19:01:34', '2024-06-04 05:46:28', '2024-06-03 19:21:03', NULL, NULL, NULL, '2025-07-08 19:01:34', NULL),
(14, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'eFbwt0ioFF1IRmBlkd9AmKK1zUlZfHQKBu7ReAqf', NULL, NULL, '2024-06-04 05:46:30', '2024-06-04 05:46:30', '2024-06-04 05:46:30', NULL, NULL, NULL, '2025-07-09 05:46:30', '2024-06-04 05:46:30'),
(15, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'pEqDsArckXJSu9L0NQz0y4sU0PdfPL7vgDO4sDn4', 'AJVY8jNCn5pKeWznxNR9muGyow3iowf0VZ5X4mbpaNMndc1O7viBenm2GrNi', NULL, '2024-06-04 10:47:37', '2024-06-04 10:48:13', '2024-06-04 10:48:13', NULL, NULL, NULL, '2025-07-09 10:47:37', '2024-06-04 10:48:13'),
(16, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'DqWxgEZPwzd1f0UOB5BLb4trM6Xkn4PEfss8TJ7P', 'y5KKOo0AIJienek1OxRUWPRL4BP7GJig3lRJQhxxvXoCIOpnYoE1SEF3Ky3c', NULL, '2024-06-04 10:48:44', '2024-06-04 10:48:44', '2024-06-04 10:48:44', NULL, NULL, NULL, '2025-07-09 10:48:44', '2024-06-04 10:48:44'),
(17, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'QZt4WQ8DYEMrBXzFLs5sKSB6XmV8pATVj46VGRbX', NULL, NULL, '2024-06-04 10:49:09', '2024-06-04 10:51:57', '2024-06-04 10:51:57', NULL, NULL, NULL, '2024-06-04 12:49:09', '2024-06-04 10:51:57'),
(18, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'j4UlEyYgLxwZJiPkPKRMTgYNRMEC7SPLT0TDpKUp', 'Rdq1aqdOD6eTOMZPu4YL3wpTJnHNjwCCloU5mISWBU1p9cohdVHrQ7US8q0i', NULL, '2024-06-04 10:52:19', '2024-06-04 10:52:19', '2024-06-04 10:52:19', NULL, NULL, NULL, '2025-07-09 10:52:19', '2024-06-04 10:52:19'),
(19, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'zN9awPUhUW1lJ8AUJd3oc3rjcnr6N4by4mXgvWzj', NULL, NULL, '2024-06-04 10:52:46', '2024-06-04 10:52:46', '2024-06-04 10:52:46', NULL, NULL, NULL, '2024-06-04 12:52:46', NULL),
(20, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'cBC55agIpD2WIqKAZrlAJxvxx8bozFjrDe62FER5', 'pZbLgT5QBqbaVE8NW5Ajpp293FRI71fe8TC8jaePvKuTNLs7X9HF5rlB99Pw', NULL, '2024-06-04 10:56:21', '2024-06-04 10:56:21', '2024-06-04 10:56:21', NULL, NULL, NULL, '2025-07-09 10:56:21', '2024-06-04 10:56:21'),
(21, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'n5cvI8UWS9YRKR1dOAt3eJPKBkMOZggACnMKun9a', NULL, NULL, '2024-06-04 10:56:41', '2024-06-04 10:57:19', '2024-06-04 10:57:19', NULL, NULL, NULL, '2024-06-04 12:56:41', '2024-06-04 10:57:19'),
(22, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'qYZIc34xNkh4Z2rRyQzzLlN7h28TsqoUf1MqBgsa', '8c0rPM3EdACoN9mLBdN9VuSziEH93Kt6WQoeItxnxcfdxvAkKahNC7CSLUbs', NULL, '2024-06-04 10:57:55', '2024-06-04 10:57:55', '2024-06-04 10:57:55', NULL, NULL, NULL, '2025-07-09 10:57:55', '2024-06-04 10:57:55'),
(23, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'N02kF8joaXSKpWgTWAKcV4fveuANARtDPUoJR9mk', NULL, NULL, '2024-06-04 10:58:09', '2024-06-04 11:12:22', '2024-06-04 11:12:22', NULL, NULL, NULL, '2024-06-04 12:58:09', '2024-06-04 11:12:22'),
(24, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'oQXdzSPeCqi2vmUgduHz2BMgBY2XPgg6YV3WVqnM', 'WdgU3QThDUAQRjXH4uinLsxNPz0bl2SBUYZr1pj3AV765h2YpjQF8uqBMUgX', NULL, '2024-06-04 11:12:39', '2024-06-04 11:12:39', '2024-06-04 11:12:39', NULL, NULL, NULL, '2025-07-09 11:12:39', '2024-06-04 11:12:39'),
(25, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'iBbZiQeihXQir6Ws3rrJMbCFG3kA34idV4TblwMo', NULL, NULL, '2024-06-04 11:13:00', '2024-06-04 11:14:00', '2024-06-04 11:14:00', NULL, NULL, NULL, '2024-06-04 13:13:00', '2024-06-04 11:14:00'),
(26, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'X5y05BaPFpaR8bdJuZue91tKEUVpKtNJ8LuSm6C1', 'EgreRZIEwOJhif5qHBNv1xKHD0791xMwTvuIKBmmEshsqxiCCZvtCj0gTKHR', NULL, '2024-06-04 11:14:18', '2024-06-04 11:14:18', '2024-06-04 11:14:18', NULL, NULL, NULL, '2025-07-09 11:14:18', '2024-06-04 11:14:18'),
(27, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'aiFqPCQ8lMVvgdHWC5oib0QAW1X5ejBO6r5lM6uE', NULL, NULL, '2024-06-04 11:14:29', '2024-06-04 11:16:28', '2024-06-04 11:16:28', NULL, NULL, NULL, '2024-06-04 13:14:29', '2024-06-04 11:16:28'),
(28, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'XMXkPQoGPrFLxFfT3o0kwYvGTuJaUiKVIPJ0PcGT', 'MqgqzuywfIPra6o4YorCkwfViOy3r2vADpUqcz4VyUuZhtMe3Gkzfw5Ldi0n', NULL, '2024-06-04 11:16:50', '2024-06-04 11:16:50', '2024-06-04 11:16:50', NULL, NULL, NULL, '2025-07-09 11:16:50', '2024-06-04 11:16:50'),
(29, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'oiHtKN2LKUalaUrReD3bkLhNEh6533xfg58vLtMv', NULL, NULL, '2024-06-04 11:17:00', '2024-06-04 11:17:44', '2024-06-04 11:17:44', NULL, NULL, NULL, '2024-06-04 13:17:00', '2024-06-04 11:17:44'),
(30, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'dK5GxXfHYELFBCdvjst3lNxl1nTLvgrYKK1Z0xQo', 'Kbh9LqhxzEnY8jXg17EAJTaGdeN4n7zI3JAYBmQ46fs78zexKY3u4oD8Ujvv', NULL, '2024-06-04 11:17:57', '2024-06-04 11:17:57', '2024-06-04 11:17:57', NULL, NULL, NULL, '2025-07-09 11:17:57', '2024-06-04 11:17:57'),
(31, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'hjgCGS7YyES2HjuDvJaMv0UrXnd6hc84rYeHH3Q4', NULL, NULL, '2024-06-04 11:18:09', '2024-06-04 11:18:45', '2024-06-04 11:18:45', NULL, NULL, NULL, '2024-06-04 13:18:09', '2024-06-04 11:18:45'),
(32, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'zo49HlDGsl4ZRICvmRLGt29QenSxeLQVztBjyrU4', 'oeUjAqGF3wdFWUfvbuWveGdiFfR4lpQmEGTwss2PUsDIrQAliLJdBaa47ugz', NULL, '2024-06-04 11:19:00', '2024-06-04 11:19:00', '2024-06-04 11:19:00', NULL, NULL, NULL, '2025-07-09 11:19:00', '2024-06-04 11:19:00'),
(33, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'VV2ks2yzjheg7xaavFG3Srhli1auLOrTXn1HM758', NULL, NULL, '2024-06-04 11:19:13', '2024-06-04 11:20:42', '2024-06-04 11:20:42', NULL, NULL, NULL, '2024-06-04 13:19:13', '2024-06-04 11:20:42'),
(34, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'XIfRTpp0RHIoFdotZyaFLtr19Y2U9RuqTApoSplE', 'fZfUvOGcIDnLDX0ENSVc4lIQRDzpMC7bdT7QQWCElM0Rrq5sPibUreNNEgqn', NULL, '2024-06-04 11:21:00', '2024-06-04 11:21:00', '2024-06-04 11:21:00', NULL, NULL, NULL, '2025-07-09 11:21:00', '2024-06-04 11:21:00'),
(35, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'JyTu3CyUu2rkQTqUxHlqiw7HIN7HVTSLiWksax94', NULL, NULL, '2024-06-04 11:21:11', '2024-06-04 11:21:42', '2024-06-04 11:21:42', NULL, NULL, NULL, '2024-06-04 13:21:11', '2024-06-04 11:21:42'),
(36, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'vAWItIaPzC0XRNl3Va4LKBc4EbS3iwLVBObdccbO', '5pVLV9r2SuDhcxkYbhiAQApYkYpsQE4ey8xhMuOnJkKL7Vt4o5XjYz94B3Ff', NULL, '2024-06-04 11:22:05', '2024-06-04 11:22:05', '2024-06-04 11:22:05', NULL, NULL, NULL, '2025-07-09 11:22:05', '2024-06-04 11:22:05'),
(37, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'dztnKnmcbukr9JylTIkUXqHDB010hclnqnYS1RVO', NULL, NULL, '2024-06-04 11:22:15', '2024-06-04 13:00:41', '2024-06-04 13:00:41', '30.6849956', '76.7246435', NULL, '2024-06-04 13:22:15', NULL),
(38, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'qjv2ECwdbMQlIDWpOin2jJ6uSH5SLqHuqsrdIoQ1', 'e2WXldaNwBXkIlK4pPRSDZRQAOWcsP78WQv0DQqiuOYDAxVLNech2FtzBUzD', NULL, '2024-06-05 02:55:00', '2024-06-05 02:55:48', '2024-06-05 02:55:48', NULL, NULL, NULL, '2025-07-10 02:55:00', '2024-06-05 02:55:48'),
(39, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'SFsyE3zg2J16QcMSo6tAzS30DLWIZarqSXkVKbkO', '2BSZOUgPZR0sZThnoLYk2blF99rTPnv0zpD7sMkki0hSRgiO3oPCeO9UyfYH', NULL, '2024-06-05 02:56:48', '2024-06-05 02:56:48', '2024-06-05 02:56:48', NULL, NULL, NULL, '2025-07-10 02:56:48', '2024-06-05 02:56:48'),
(40, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'GTEgzPSNwb9iRjUQ4BiNa6gjMV8goH5fiX3TpOWE', NULL, NULL, '2024-06-05 02:57:11', '2024-06-05 03:11:15', '2024-06-05 03:11:15', '30.6850458', '76.724588', NULL, '2024-06-05 04:57:11', '2024-06-05 03:11:15'),
(41, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'Yh3QU1zzhlNLnMagVg4Jr5gMjx8pIS3nmw5f2fps', 't2GmjiTOdcZhQtIHqraqE055OuiSoBGKIOsgbKcgov2S4yS281jsZezrjBOP', NULL, '2024-06-05 03:11:37', '2024-06-05 03:11:37', '2024-06-05 03:11:37', NULL, NULL, NULL, '2025-07-10 03:11:37', '2024-06-05 03:11:37'),
(42, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'HQk6YHCd6b2NdW3B7GNh41aiO9MmYpAdA5YV2TVp', NULL, NULL, '2024-06-05 03:11:56', '2024-06-05 03:13:01', '2024-06-05 03:13:01', '30.6850396', '76.7245675', NULL, '2024-06-05 05:11:56', '2024-06-05 03:13:01'),
(43, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', '3CSH5iv1zx0vFS9syNUKPbJytMyE9Dl61xrsM51D', 'yCcGbWE4rT3zcfqScI3rJFX8sZMqMfDfTQhLkRdMsR4NjWmfoOOLZikyyixg', NULL, '2024-06-05 03:13:42', '2024-06-05 03:13:42', '2024-06-05 03:13:42', NULL, NULL, NULL, '2025-07-10 03:13:42', '2024-06-05 03:13:42'),
(44, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'HnLpaAFHppOjMqsxIsoPJdeA1pkTF4T4GNFgefXh', NULL, NULL, '2024-06-05 03:13:52', '2024-06-05 03:20:13', '2024-06-05 03:20:13', '30.6850551', '76.7245967', '4723, Shaibzada Ajit Singh Nagar, Sector 68, Kumbra, Sahibzada Ajit Singh Nagar, Punjab 160062, India', '2024-06-05 05:13:52', '2024-06-05 03:20:13'),
(45, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', NULL, 'gQ1oDelHyInkdHClw6SyAuMhvEIJBbsATvS9A0NA5FpmjA36JIY17cOzwW4u', NULL, '2024-06-05 04:32:27', '2024-06-05 10:41:12', '2024-06-05 05:11:03', NULL, NULL, NULL, '2025-07-10 04:32:27', NULL),
(46, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'cIk0wU9b45fDI9mK7qPcU6274XlK2L47BJhY5v6H', NULL, NULL, '2024-06-05 10:41:14', '2024-06-05 12:57:29', '2024-06-05 12:57:29', NULL, NULL, NULL, '2025-07-10 10:41:14', NULL),
(47, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', 'vskTKglf8Ghquwi8SHSQ20nBEaMXpZ1tsZHCZvTr', NULL, NULL, '2024-06-05 15:31:33', '2024-06-05 16:20:39', '2024-06-05 16:20:39', NULL, NULL, NULL, '2025-07-10 15:31:33', NULL),
(48, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', 'Apple', 'macOS', 'Chrome', 'false', '0iX7uYY22cN3sCQilX4AdUiCNHa3KG9mXICkA0jq', NULL, NULL, '2024-06-06 03:08:08', '2024-06-06 05:22:22', '2024-06-06 05:22:22', NULL, NULL, NULL, '2025-07-11 03:08:08', NULL),
(49, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', NULL, 'Windows', 'Chrome', 'false', NULL, 'b1DVSKiZBTYpexuyGSmrwo4NqElWJ65vlnUwcc0BRyNzK0zeZ88ENxfxvplv', NULL, '2024-06-06 13:56:35', '2024-06-06 16:02:10', '2024-06-06 15:45:59', NULL, NULL, NULL, '2025-07-11 13:56:35', NULL),
(50, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', NULL, 'Windows', 'Chrome', 'false', 'Szcy5JCrHgb6jxELepfJBkeLKJAyrRKfV6D10gIr', NULL, NULL, '2024-06-06 16:02:12', '2024-06-06 16:44:32', '2024-06-06 16:44:32', NULL, NULL, NULL, '2025-07-11 16:02:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

DROP TABLE IF EXISTS `machines`;
CREATE TABLE IF NOT EXISTS `machines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `machine_types`
--

DROP TABLE IF EXISTS `machine_types`;
CREATE TABLE IF NOT EXISTS `machine_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material_inwards`
--

DROP TABLE IF EXISTS `material_inwards`;
CREATE TABLE IF NOT EXISTS `material_inwards` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `receipt_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int NOT NULL,
  `bill_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_date` date NOT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `total_gst` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `material_order_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `material_inwards`
--

INSERT INTO `material_inwards` (`id`, `receipt_no`, `vendor_id`, `bill_no`, `bill_date`, `subtotal`, `total_gst`, `total`, `material_order_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'REC0001', 1, '5454R', '2024-05-25', '136399.50', '16367.94', '152767.44', NULL, '2024-05-25 16:46:33', '2024-05-25 16:46:34', NULL),
(2, 'REC0002', 1, '5454R', '2024-05-26', '19320.00', '2318.40', '21638.40', '123,234,543', '2024-05-26 12:54:52', '2024-05-26 12:54:52', NULL);

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
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `hsn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_per_piece` decimal(10,2) DEFAULT NULL,
  `total_weight` decimal(10,2) DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `material_inward_items`
--

INSERT INTO `material_inward_items` (`id`, `material_inward_id`, `category_id`, `product_id`, `item_name`, `quantity`, `hsn`, `weight_per_piece`, `total_weight`, `unit`, `rate_on`, `sheet_per_packet`, `item_per_packet`, `total_item`, `rate`, `gst`, `gst_amount`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 2, '25X36-290', '60.00', '4810', '0.17', '1008.00', 'Sheets', '76.50', '0.00', '100.00', '6000.00', '77112.00', '12.00', '9253.44', '77112.00', '2024-05-25 16:46:34', '2024-05-25 16:46:34', NULL),
(2, 1, 1, 1, '23X36-290', '50.00', '4810', '0.16', '775.00', 'Sheets', '76.50', '0.00', '100.00', '5000.00', '59287.50', '12.00', '7114.50', '59287.50', '2024-05-25 16:46:34', '2024-05-25 16:46:34', NULL),
(3, 2, 1, 2, '25X36-290', '50.00', '4810', '0.17', '840.00', 'Sheets', '23.00', '0.00', '100.00', '5000.00', '19320.00', '12.00', '2318.40', '19320.00', '2024-05-26 12:54:52', '2024-05-26 12:54:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `material_orders`
--

DROP TABLE IF EXISTS `material_orders`;
CREATE TABLE IF NOT EXISTS `material_orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int NOT NULL,
  `mo_date` date NOT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `total_gst` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `status_id` int NOT NULL DEFAULT '1',
  `completed_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `material_orders`
--

INSERT INTO `material_orders` (`id`, `admin_id`, `order_no`, `vendor_id`, `mo_date`, `subtotal`, `total_gst`, `total`, `remarks`, `status_id`, `completed_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'MO0001', 2, '2024-05-25', '87096.00', '10451.52', '97547.52', NULL, 6, NULL, '2024-05-25 16:27:24', '2024-05-25 16:32:32', '2024-05-25 16:32:32'),
(2, 1, 'MO0001', 1, '2024-05-25', '146956.50', '17634.78', '164591.28', NULL, 3, '2024-05-26 00:00:00', '2024-05-25 16:42:10', '2024-05-26 12:40:05', NULL);

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
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `hsn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `material_order_items`
--

INSERT INTO `material_order_items` (`id`, `material_order_id`, `category_id`, `product_id`, `item_name`, `quantity`, `hsn`, `weight_per_piece`, `total_weight`, `unit_id`, `rate_on`, `sheet_per_packet`, `item_per_packet`, `total_item`, `rate`, `gst`, `gst_amount`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 3, '26X38-300', '60.00', '4810', '0.19', '1146.00', 2, '76.00', '0.00', '100.00', '6000.00', '87096.00', '12.00', '10451.52', '87096.00', '2024-05-25 16:27:24', '2024-05-25 16:27:24', NULL),
(2, 2, 3, 3, '26X38-300', '60.00', '4810', '0.19', '1146.00', 2, '76.50', '0.00', '100.00', '6000.00', '87669.00', '12.00', '10520.28', '87669.00', '2024-05-25 16:42:10', '2024-05-25 16:42:10', NULL),
(3, 2, 1, 1, '23X36-290', '50.00', '4810', '0.16', '775.00', 2, '76.50', '0.00', '100.00', '5000.00', '59287.50', '12.00', '7114.50', '59287.50', '2024-05-25 16:42:10', '2024-05-25 16:42:10', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `file`, `icon`, `name`, `slug`, `type`, `original_name`, `size`, `handle`, `created_at`, `updated_at`) VALUES
(1, 'https://colourimpration.s3.eu-north-1.amazonaws.com/media/real-estate.jpg', NULL, 'real   estate', 'real-estate', 'jpg', 'real   estate.jpg', '60.75 KB', 'real-estate', '2024-05-25 18:55:31', '2024-05-25 18:55:33'),
(2, 'https://colourimpration.s3.eu-north-1.amazonaws.com/media/0bd403c4-e875-44f5-99f2-3b89b29986bf.png', NULL, '0bd403c4-e875-44f5-99f2-3b89b29986bf', '0bd403c4-e875-44f5-99f2-3b89b29986bf', 'png', '0bd403c4-e875-44f5-99f2-3b89b29986bf.png', '197.59 KB', '0bd403c4-e875-44f5-99f2-3b89b29986bf', '2024-05-27 11:20:07', '2024-05-27 11:20:09'),
(3, 'https://colourimpration.s3.eu-north-1.amazonaws.com/media/67ld-dkrs22ab89nk3asaq.jpg', NULL, '67Ld-dkRS22ab89nk3AsaQ', '67ld-dkrs22ab89nk3asaq', 'jpg', '67Ld-dkRS22ab89nk3AsaQ.jpg', '141.68 KB', '67ld-dkrs22ab89nk3asaq', '2024-05-27 22:14:50', '2024-05-27 22:14:53'),
(4, 'https://shreyaoffset.s3.eu-north-1.amazonaws.com/', NULL, 'WhatsApp Image 2024-06-03 at 13.12.32 (1)', 'whatsapp-image-2024-06-03-at-13-12-32-1', 'jpeg', 'WhatsApp Image 2024-06-03 at 13.12.32 (1).jpeg', '148.97 KB', 'whatsapp-image-2024-06-03-at-131232-1', '2024-06-06 10:31:45', '2024-06-06 10:31:47'),
(5, 'https://shreyaoffset.s3.eu-north-1.amazonaws.com/', NULL, 'WhatsApp Image 2024-06-03 at 13.12.32 (1)', 'whatsapp-image-2024-06-03-at-13-12-32-1-2', 'jpeg', 'WhatsApp Image 2024-06-03 at 13.12.32 (1).jpeg', '148.97 KB', 'whatsapp-image-2024-06-03-at-131232-1', '2024-06-06 10:47:30', '2024-06-06 10:47:31'),
(6, 'https://shreyaoffset.s3.eu-north-1.amazonaws.com/media/whatsapp-image-2024-06-03-at-13-12-32-1-3.jpeg', NULL, 'WhatsApp Image 2024-06-03 at 13.12.32 (1)', 'whatsapp-image-2024-06-03-at-13-12-32-1-3', 'jpeg', 'WhatsApp Image 2024-06-03 at 13.12.32 (1).jpeg', '148.97 KB', 'whatsapp-image-2024-06-03-at-131232-1', '2024-06-06 10:51:57', '2024-06-06 10:51:59');

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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `module_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_users`
--

INSERT INTO `module_users` (`id`, `name`, `status`, `module_id`, `created_at`, `updated_at`) VALUES
(1, 'Dileep Operator', 1, 2, '2024-03-03 16:26:52', '2024-03-03 16:26:52'),
(2, 'Prakash', 1, 2, '2024-03-03 16:27:05', '2024-03-03 16:27:05'),
(3, 'Hari Kumar', 1, 2, '2024-03-03 16:27:19', '2024-03-03 16:27:19'),
(4, 'Surjeet Singh', 1, 7, '2024-03-03 16:33:20', '2024-03-03 16:33:20'),
(5, 'Sonu Kumar', 1, 7, '2024-03-03 16:33:34', '2024-03-03 16:33:34'),
(6, 'Shankar Kumar', 1, 8, '2024-03-03 16:35:14', '2024-03-03 16:35:14'),
(7, 'Dileep Kumar Paswan', 1, 8, '2024-03-03 16:35:23', '2024-03-03 16:35:23'),
(8, 'Ram Parsad', 1, 8, '2024-03-03 16:35:31', '2024-03-03 16:35:31'),
(9, 'Saroj Kumar', 1, 8, '2024-03-03 16:35:39', '2024-03-03 16:35:39'),
(10, 'Asif', 1, 1, '2024-05-23 03:55:26', '2024-05-23 03:55:26'),
(11, 'Jamal', 1, 1, '2024-05-23 03:55:36', '2024-05-23 03:55:36'),
(12, 'Rajeev', 1, 9, '2024-05-24 18:27:52', '2024-05-24 18:27:52'),
(13, 'asif', 1, 1, '2024-05-25 19:04:19', '2024-05-25 19:04:19'),
(14, 'vvv', 1, 2, '2024-05-25 19:04:37', '2024-05-25 19:04:37'),
(15, 'bbb', 1, 3, '2024-05-25 19:04:48', '2024-05-25 19:04:48'),
(16, 'nnn', 1, 4, '2024-05-25 19:04:57', '2024-05-25 19:04:57'),
(17, 'mmm', 1, 5, '2024-05-25 19:05:05', '2024-05-25 19:05:05'),
(18, 'kkk', 1, 6, '2024-05-25 19:05:24', '2024-05-25 19:05:24'),
(19, 'jjj', 1, 7, '2024-05-25 19:05:41', '2024-05-25 19:05:41'),
(20, 'hhh', 1, 9, '2024-05-25 19:05:54', '2024-05-25 19:05:54'),
(21, 'tft', 1, 10, '2024-05-25 19:06:08', '2024-05-25 19:06:08'),
(22, 'nnm', 1, 10, '2024-05-25 19:06:34', '2024-05-25 19:06:34'),
(23, 'ghfgh', 1, 5, '2024-05-26 19:52:30', '2024-05-26 19:52:30'),
(24, 'zsfa', 1, 6, '2024-05-26 19:57:39', '2024-05-26 19:57:39'),
(25, 'ccvb', 1, 4, '2024-05-26 20:00:15', '2024-05-26 20:00:15'),
(26, 'Lamination 1', 1, 3, '2024-05-29 16:51:25', '2024-05-29 16:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `other_coating_types`
--

DROP TABLE IF EXISTS `other_coating_types`;
CREATE TABLE IF NOT EXISTS `other_coating_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `quality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paper_warehouses`
--

DROP TABLE IF EXISTS `paper_warehouses`;
CREATE TABLE IF NOT EXISTS `paper_warehouses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paper_stock` text COLLATE utf8mb4_unicode_ci,
  `sheets` int DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paper_warehouses`
--

INSERT INTO `paper_warehouses` (`id`, `paper_stock`, `sheets`, `remarks`, `created_at`, `updated_at`) VALUES
(1, '19X19 - 290 GSM - OMEGA', 200, NULL, '2024-05-05 23:17:49', '2024-05-05 23:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pastings`
--

INSERT INTO `pastings` (`id`, `user_id`, `job_card_id`, `purchase_order_id`, `purchase_order_item_id`, `ready_quantity`, `dye_breaking_quantity`, `ready_box`, `quantity_in_box`, `no_of_box`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 1, 2, 1980, 2000, '1000x1,980x1', NULL, NULL, 5, '2024-05-25 22:14:10', '2024-05-25 22:27:22'),
(2, 8, 1, 1, 3, 1995, 2000, '1000x1,995x1', NULL, NULL, 5, '2024-05-25 22:14:10', '2024-05-25 22:27:29'),
(3, 9, 1, 1, 1, 2190, 2200, '1000x2,190x1', NULL, NULL, 5, '2024-05-25 22:14:10', '2024-05-25 22:27:26'),
(4, 7, 2, 2, 4, 300, 2000, '1000x1,980x1', NULL, NULL, 5, '2024-05-25 22:14:15', '2024-05-26 14:30:42'),
(5, 6, 2, 2, 5, 3180, 3200, '1000x3,180x1', NULL, NULL, 5, '2024-05-25 22:14:15', '2024-05-25 22:27:14'),
(6, NULL, 11, 9, 14, 0, 0, NULL, NULL, NULL, 99, '2024-06-06 09:17:33', '2024-06-06 09:17:33'),
(7, NULL, 11, 9, 13, 0, 0, NULL, NULL, NULL, 99, '2024-06-06 09:17:33', '2024-06-06 09:17:33');

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
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=latin1;

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
(388, 'material_order', 'add_material_order'),
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
(401, 'dye_breaking', 'change_status_dye_breaking');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plannings`
--

INSERT INTO `plannings` (`id`, `designer`, `purchase_order_id`, `purchase_order_item_id`, `dye_detail_id`, `old_dye_detail_id`, `old_jobcard_id`, `ups`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 2, 4, NULL, NULL, NULL, 2, 5, '2024-05-25 13:27:33', '2024-05-25 18:57:33', NULL),
(2, 2, 2, 5, NULL, NULL, NULL, 1, 5, '2024-05-25 13:27:33', '2024-05-25 18:57:33', NULL),
(3, 2, 1, 1, 1, NULL, NULL, 3, 5, '2024-05-25 13:31:37', '2024-05-25 19:01:37', NULL),
(4, 2, 1, 2, 1, NULL, NULL, 3, 5, '2024-05-25 13:27:15', '2024-05-25 18:57:15', NULL),
(5, 2, 1, 3, 1, NULL, NULL, 3, 5, '2024-05-25 13:27:15', '2024-05-25 18:57:15', NULL),
(6, 2, 3, 6, 1, NULL, NULL, 3, 5, '2024-05-26 07:39:10', '2024-05-26 13:09:10', NULL),
(7, 2, 4, 7, NULL, NULL, NULL, 2, 5, '2024-05-26 13:24:31', '2024-05-26 18:54:31', NULL),
(8, 2, 4, 8, NULL, NULL, NULL, 2, 5, '2024-05-26 13:24:31', '2024-05-26 18:54:31', NULL),
(9, 2, 5, 9, NULL, NULL, NULL, 3, 5, '2024-05-26 13:50:17', '2024-05-26 19:20:17', NULL),
(10, 3, 6, 10, NULL, NULL, NULL, 3, 5, '2024-05-29 05:56:50', '2024-05-29 11:26:50', NULL),
(11, 3, 9, 13, NULL, NULL, NULL, 9, 5, '2024-06-06 03:31:27', '2024-06-06 09:01:27', NULL),
(12, 3, 9, 14, NULL, NULL, NULL, 3, 5, '2024-06-06 03:31:27', '2024-06-06 09:01:27', NULL),
(13, 3, 8, 12, NULL, NULL, NULL, 3, 5, '2024-06-06 03:55:20', '2024-06-06 09:25:20', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printings`
--

INSERT INTO `printings` (`id`, `job_card_id`, `printed_sheet`, `user_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1720, NULL, 5, '2024-05-25 19:07:12', '2024-05-25 22:00:03'),
(3, 1, 450, NULL, 5, '2024-05-25 20:01:38', '2024-05-25 21:59:46'),
(7, 8, NULL, 12, 0, '2024-05-26 18:55:25', '2024-05-26 18:55:25'),
(9, 9, 766, 20, 5, '2024-05-26 19:30:25', '2024-05-26 19:50:53'),
(11, 10, 232, 21, 5, '2024-05-29 13:44:10', '2024-05-29 14:24:07'),
(12, 11, 529, 21, 5, '2024-06-06 09:03:59', '2024-06-06 09:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_type_id` int DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_type_id`, `code`, `name`, `unit_id`, `category_id`, `hsn`, `packet_weight`, `item_per_packet`, `weight_per_piece`, `length`, `width`, `gsm`, `quantity`, `in_hand_quantity`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 'JK-1234', '23X36-290', 3, 1, '4810', '15.4900', '100.0000', '0.1550', '23.0000', '36.0000', 290, '2097.00', 5000, 1, '2024-05-25 16:19:58', '2024-06-06 09:26:13', NULL),
(2, 1, 'jk-1235', '25X36-290', 3, 1, '4810', '16.8400', '100.0000', '0.1680', '25.0000', '36.0000', 290, '8700.00', 5000, 1, '2024-05-25 16:20:52', '2024-05-26 22:20:00', NULL),
(3, 6, 'C-1239', '26X38-300', 3, 3, '4810', '19.1200', '100.0000', '0.1910', '26.0000', '38.0000', 300, '-1358.00', 3000, 1, '2024-05-25 16:23:05', '2024-05-26 19:21:15', NULL),
(4, 2, 'KK3252222222', '23X40-340', 3, 3, '4810', '18.1600', '100.0000', '0.1820', '23.0000', '40.0000', 340, NULL, 5000, 1, '2024-05-26 11:03:03', '2024-05-26 11:37:49', NULL),
(5, 5, 'PL-11224', 'DEVELOPER', 4, 4, '564', NULL, '1.0000', '20.0000', NULL, NULL, NULL, '0.00', NULL, 0, '2024-05-26 11:21:40', '2024-05-26 11:57:46', NULL),
(6, 5, 'PL-11432514', 'THINNER', 4, 4, '4810', NULL, '1.0000', '5.0000', NULL, NULL, NULL, '0.00', NULL, 0, '2024-05-26 11:58:10', '2024-05-26 11:58:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
CREATE TABLE IF NOT EXISTS `product_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_series` int DEFAULT NULL,
  `only_paper` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `start_series` (`start_series`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `type`, `start_series`, `only_paper`, `created_at`, `updated_at`) VALUES
(1, 'Ultima', 11, 0, '2024-05-14 15:17:42', '2024-05-17 11:30:15'),
(2, 'Omegaa', NULL, 0, '2024-05-14 18:41:30', '2024-05-26 10:52:19'),
(3, 'Prima Plus', 13, 0, '2024-05-14 18:44:01', '2024-05-17 11:30:00'),
(4, 'Endura', 15, 0, '2024-05-14 18:44:24', '2024-05-14 22:29:36'),
(5, 'Chemical', 88, 0, '2024-05-17 13:10:48', '2024-05-17 13:10:48'),
(6, 'Platina', NULL, 0, '2024-05-26 10:52:56', '2024-05-26 10:52:56'),
(7, 'ABP', NULL, 0, '2024-05-26 10:54:00', '2024-05-26 10:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

DROP TABLE IF EXISTS `purchase_orders`;
CREATE TABLE IF NOT EXISTS `purchase_orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `po_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_date` date DEFAULT NULL,
  `made_by` int NOT NULL,
  `designer` int DEFAULT NULL,
  `po_remarks` text COLLATE utf8mb4_unicode_ci,
  `status_id` int NOT NULL DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `client_id`, `po_no`, `po_date`, `made_by`, `designer`, `po_remarks`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 12, '2351', '2024-05-25', 1, 2, NULL, 5, '2024-05-25 18:50:14', '2024-05-25 22:27:29', NULL),
(2, 17, '215114', '2024-05-25', 1, 2, NULL, 5, '2024-05-25 18:52:29', '2024-05-26 14:30:42', NULL),
(3, 10, '23', '2024-05-26', 1, 2, 'this po is on hold', 24, '2024-05-26 13:01:31', '2024-05-26 13:39:19', NULL),
(4, 25, '2351', '2024-05-26', 1, 2, NULL, 24, '2024-05-26 18:53:49', '2024-05-26 19:17:23', NULL),
(5, 6, 'PM/AB23-152', '2024-05-26', 1, 2, NULL, 24, '2024-05-26 19:19:51', '2024-05-26 19:30:25', NULL),
(6, 10, '1234560', '2024-05-29', 1, 3, 'fgdf', 24, '2024-05-29 11:25:37', '2024-05-29 13:44:10', NULL),
(7, 10, '1234560', '2024-06-06', 1, 3, 'fgdf', 2, '2024-06-06 08:39:27', '2024-06-06 08:39:27', NULL),
(8, 25, '1234560', '2024-06-06', 1, 3, 'fgdf', 6, '2024-06-06 08:59:39', '2024-06-06 09:24:56', NULL),
(9, 25, '1234560', '2024-06-06', 1, 3, 'fgdf', 24, '2024-06-06 09:00:51', '2024-06-06 09:03:59', NULL),
(10, 25, '123456', '2024-06-06', 1, 3, 'fgdf', 2, '2024-06-06 21:43:34', '2024-06-06 21:43:34', NULL),
(11, 25, '123456', '2024-06-06', 1, 3, NULL, 2, '2024-06-06 21:46:20', '2024-06-06 21:46:20', NULL),
(12, 25, '123456', '2024-06-06', 1, 3, NULL, 2, '2024-06-06 21:47:24', '2024-06-06 21:47:24', NULL);

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
  `carton_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carton_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `gst` decimal(10,2) NOT NULL DEFAULT '18.00',
  `coating_type_id` int NOT NULL,
  `other_coating_type_id` int DEFAULT NULL,
  `embossing_leafing` int NOT NULL DEFAULT '0' COMMENT 'none=0\r\nembossing=1\r\nleafing=2\r\nboth=3',
  `paper_type_id` int NOT NULL,
  `art_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gsm` int DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `delivery_date` date DEFAULT NULL,
  `bill_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lock_status` tinyint(1) NOT NULL DEFAULT '0',
  `quantity_status` int NOT NULL DEFAULT '0',
  `rate_status` int NOT NULL DEFAULT '0',
  `back_print` tinyint(1) NOT NULL DEFAULT '0',
  `status_id` int NOT NULL DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_items`
--

INSERT INTO `purchase_order_items` (`id`, `purchase_order_id`, `product_id`, `dye_details_id`, `carton_name`, `carton_size`, `quantity`, `rate`, `gst`, `coating_type_id`, `other_coating_type_id`, `embossing_leafing`, `paper_type_id`, `art_work`, `gsm`, `remarks`, `delivery_date`, `bill_no`, `lock_status`, `quantity_status`, `rate_status`, `back_print`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 1, 'ABC', '57X37X100', 2000, '2.55', '18.00', 5, 1, 0, 2, 'R1', 300, NULL, NULL, NULL, 0, 1, 1, 0, 5, '2024-05-25 18:50:14', '2024-05-25 22:27:26', NULL),
(2, 1, NULL, 1, 'DEF', '57X37X100', 2000, '1.55', '18.00', 5, 1, 0, 2, 'R2', 300, NULL, NULL, NULL, 0, 1, 1, 0, 5, '2024-05-25 18:50:14', '2024-05-25 22:27:22', NULL),
(3, 1, NULL, 1, 'HIJ', '57X37X100', 2000, '1.55', '18.00', 5, 1, 0, 2, 'R3', 300, NULL, NULL, NULL, 0, 1, 1, 0, 5, '2024-05-25 18:50:14', '2024-05-25 22:27:29', NULL),
(4, 2, NULL, NULL, 'MNB', '52X52X74', 2000, '2.55', '18.00', 5, 1, 0, 4, 'R3', 300, NULL, NULL, NULL, 0, 1, 1, 0, 5, '2024-05-25 18:52:29', '2024-05-26 14:30:42', NULL),
(5, 2, NULL, NULL, 'LKJ', '60X37X105', 3000, '6.72', '18.00', 3, 1, 0, 4, 'R4', 300, NULL, NULL, NULL, 0, 1, 1, 0, 5, '2024-05-25 18:52:29', '2024-05-25 22:27:14', NULL),
(6, 3, NULL, 1, 'abc', '57X37X100', 2000, '2.55', '18.00', 3, 1, 0, 3, '354', 300, NULL, NULL, NULL, 0, 1, 1, 0, 14, '2024-05-26 13:01:31', '2024-05-26 13:39:19', NULL),
(7, 4, NULL, NULL, 'ABCD', '52X52X74', 2000, '2.55', '18.00', 5, 2, 0, 2, 'R1', 300, NULL, NULL, NULL, 0, 1, 1, 0, 15, '2024-05-26 18:53:49', '2024-05-26 19:17:23', NULL),
(8, 4, NULL, NULL, 'NBMV', '125X50X100', 5000, '5.00', '18.00', 5, 2, 0, 2, 'R4', 300, NULL, NULL, NULL, 0, 1, 1, 0, 15, '2024-05-26 18:53:49', '2024-05-26 19:17:23', NULL),
(9, 5, NULL, NULL, 'xcxz', '52X52X74', 2000, '2.55', '18.00', 5, 4, 3, 1, '354', 300, NULL, NULL, NULL, 0, 1, 1, 0, 19, '2024-05-26 19:19:51', '2024-05-26 20:00:58', NULL),
(10, 6, NULL, NULL, 'abc', '57X37X100', 100, '2.55', '18.00', 3, 1, 0, 3, '354', 300, 'Hello World', NULL, NULL, 0, 1, 1, 0, 19, '2024-05-29 11:25:37', '2024-05-29 17:10:15', NULL),
(11, 7, NULL, NULL, 'abc', '57X37X100', 2000, '2.55', '18.00', 3, 1, 0, 3, '354', 300, 'Hello World', NULL, NULL, 0, 0, 0, 0, 2, '2024-06-06 08:39:28', '2024-06-06 08:39:28', NULL),
(12, 8, NULL, NULL, 'NBMV', '125X50X100', 200, '5.00', '18.00', 5, 2, 0, 2, 'R4', 300, NULL, NULL, NULL, 0, 1, 1, 0, 13, '2024-06-06 08:59:39', '2024-06-06 09:33:04', NULL),
(13, 9, NULL, NULL, 'NBMV', '125X50X100', 2000, '5.00', '18.00', 5, 2, 0, 2, 'R4', 300, NULL, NULL, NULL, 0, 1, 1, 0, 25, '2024-06-06 09:00:51', '2024-06-06 09:17:33', NULL),
(14, 9, NULL, NULL, 'ABCD', '52X52X74', 2000, '2.55', '18.00', 5, 2, 0, 2, 'R1', 300, NULL, NULL, NULL, 0, 1, 1, 0, 25, '2024-06-06 09:00:51', '2024-06-06 09:17:33', NULL),
(15, 10, NULL, NULL, 'ABCD', '52X52X74', 2000, '1.00', '18.00', 5, 2, 0, 2, 'R1', 300, NULL, NULL, NULL, 0, 0, 0, 0, 2, '2024-06-06 21:43:34', '2024-06-06 21:43:34', NULL),
(16, 11, NULL, NULL, 'NBMV', '125X50X100', 200, '1.50', '18.00', 5, 2, 0, 2, 'R4', 300, NULL, NULL, NULL, 0, 0, 0, 0, 2, '2024-06-06 21:46:20', '2024-06-06 21:46:20', NULL),
(17, 12, NULL, NULL, 'ABCD', '52X52X74', 3000, '1.25', '18.00', 5, 2, 1, 2, 'R1', 300, NULL, NULL, NULL, 0, 0, 0, 0, 2, '2024-06-06 21:47:24', '2024-06-06 21:47:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requisitions`
--

DROP TABLE IF EXISTS `requisitions`;
CREATE TABLE IF NOT EXISTS `requisitions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requisitions`
--

INSERT INTO `requisitions` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Printing', '2024-05-25 16:12:47', '2024-05-25 16:12:47', NULL),
(2, 'Office', '2024-05-25 16:13:17', '2024-05-25 16:13:33', NULL);

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
(1, 'change_status_pasting'),
(1, 'change_status_printing'),
(1, 'change_status_spot_uv'),
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spot_uv`
--

INSERT INTO `spot_uv` (`id`, `user_id`, `job_card_id`, `spot_uv_sheets`, `status_id`, `created_at`, `updated_at`, `leafing`) VALUES
(1, 24, 9, 760, 5, '2024-05-26 19:56:08', '2024-05-26 19:58:51', 0),
(2, 18, 11, 499, 5, '2024-06-06 09:15:36', '2024-06-06 09:16:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_badge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(22, 'In Billibg', '<span class=\"badge bg-secondary\">In Billing\r\n</span>'),
(23, 'In Partially Billing', '<span class=\"badge bg-secondary\">In Partially Billing\r\n</span>'),
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
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'debit/credit',
  `current_quantity` decimal(10,2) DEFAULT '0.00',
  `new_quantity` decimal(10,2) DEFAULT '0.00',
  `total_quantity` decimal(10,2) DEFAULT '0.00',
  `trancation_by` int DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `job_card_id` bigint DEFAULT NULL,
  `material_inward_id` bigint DEFAULT NULL,
  `issue_item_id` bigint DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `product_id`, `type`, `current_quantity`, `new_quantity`, `total_quantity`, `trancation_by`, `remarks`, `job_card_id`, `material_inward_id`, `issue_item_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 18:51:15', '2024-05-05 18:51:15', NULL),
(2, 1, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 18:53:08', '2024-05-05 18:53:08', NULL),
(3, 2, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 19:00:18', '2024-05-05 19:00:18', NULL),
(4, 3, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 21:47:47', '2024-05-05 21:47:47', NULL),
(5, 4, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 21:48:44', '2024-05-05 21:48:44', NULL),
(6, 5, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 21:49:41', '2024-05-05 21:49:41', NULL),
(7, 6, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 21:51:37', '2024-05-05 21:51:37', NULL),
(8, 7, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 21:54:04', '2024-05-05 21:54:04', NULL),
(9, 8, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 21:54:55', '2024-05-05 21:54:55', NULL),
(10, 9, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 21:55:51', '2024-05-05 21:55:51', NULL),
(11, 10, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 21:58:34', '2024-05-05 21:58:34', NULL),
(12, 11, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:01:52', '2024-05-05 22:01:52', NULL),
(13, 12, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:02:57', '2024-05-05 22:02:57', NULL),
(14, 12, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:04:08', '2024-05-05 22:04:08', NULL),
(15, 11, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:04:17', '2024-05-05 22:04:17', NULL),
(16, 10, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:29:30', '2024-05-05 22:29:30', NULL),
(17, 9, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:29:44', '2024-05-05 22:29:44', NULL),
(18, 8, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:29:51', '2024-05-05 22:29:51', NULL),
(19, 7, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:30:10', '2024-05-05 22:30:10', NULL),
(20, 6, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:30:19', '2024-05-05 22:30:19', NULL),
(21, 5, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:30:39', '2024-05-05 22:30:39', NULL),
(22, 4, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:30:52', '2024-05-05 22:30:52', NULL),
(23, 3, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:31:34', '2024-05-05 22:31:34', NULL),
(24, 2, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:32:00', '2024-05-05 22:32:00', NULL),
(25, 1, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:32:06', '2024-05-05 22:32:06', NULL),
(26, 2, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-05 22:36:40', '2024-05-05 22:36:40', NULL),
(27, 4, 'Debit', NULL, '4212.00', '-4212.00', 1, 'used in job card', 6, NULL, 1, '2024-05-06 19:04:52', '2024-05-06 19:04:52', NULL),
(28, 1, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-14 18:54:17', '2024-05-14 18:54:17', NULL),
(29, 2, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New product Added', NULL, NULL, NULL, '2024-05-14 18:55:02', '2024-05-14 18:55:02', NULL),
(30, 1, 'Credit', NULL, '7800.00', '7800.00', 1, 'Product Inward', NULL, 1, NULL, '2024-05-14 19:00:45', '2024-05-14 19:00:45', NULL),
(31, 3, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-14 22:21:09', '2024-05-14 22:21:09', NULL),
(32, 1, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-14 22:22:17', '2024-05-14 22:22:17', NULL),
(33, 1, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-14 22:23:52', '2024-05-14 22:23:52', NULL),
(34, 1, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-14 22:26:33', '2024-05-14 22:26:33', NULL),
(35, 2, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-14 22:30:14', '2024-05-14 22:30:14', NULL),
(36, 1, 'Debit', NULL, '425.00', '-425.00', 1, 'used in job card', 8, NULL, 2, '2024-05-15 12:08:08', '2024-05-15 12:08:08', NULL),
(37, 1, 'Debit', '-425.00', '600.00', '-1025.00', 1, 'used in job card', 9, NULL, 2, '2024-05-15 20:01:54', '2024-05-15 20:01:54', NULL),
(38, 3, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-17 13:03:08', '2024-05-17 13:03:08', NULL),
(39, 4, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New product Added', NULL, NULL, NULL, '2024-05-17 13:09:35', '2024-05-17 13:09:35', NULL),
(40, 4, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New product Added', NULL, NULL, NULL, '2024-05-17 13:11:03', '2024-05-17 13:11:03', NULL),
(41, 5, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New product Added', NULL, NULL, NULL, '2024-05-17 13:11:17', '2024-05-17 13:11:17', NULL),
(42, 6, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-17 13:57:14', '2024-05-17 13:57:14', NULL),
(43, 7, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-17 14:02:26', '2024-05-17 14:02:26', NULL),
(44, 8, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-17 14:02:49', '2024-05-17 14:02:49', NULL),
(45, 9, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New product Added', NULL, NULL, NULL, '2024-05-17 14:03:25', '2024-05-17 14:03:25', NULL),
(46, 10, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-18 14:24:21', '2024-05-18 14:24:21', NULL),
(47, 3, 'Debit', NULL, '211.00', '-211.00', 1, 'used in job card', 1, NULL, 1, '2024-05-20 19:08:27', '2024-05-20 19:08:27', NULL),
(48, 11, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New product Added', NULL, NULL, NULL, '2024-05-20 19:28:53', '2024-05-20 19:28:53', NULL),
(49, 12, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New product Added', NULL, NULL, NULL, '2024-05-20 19:29:18', '2024-05-20 19:29:18', NULL),
(50, 3, 'Credit', '-211.00', '5200.00', '4989.00', 1, 'Product Inward', NULL, 1, NULL, '2024-05-20 19:55:27', '2024-05-20 19:55:27', NULL),
(51, 12, 'Credit', '0.00', '2.00', '2.00', 1, 'Product Inward', NULL, 1, NULL, '2024-05-20 19:55:27', '2024-05-20 19:55:27', NULL),
(52, 10, 'Credit', NULL, '5000.00', '5000.00', 1, 'Product Inward', NULL, 1, NULL, '2024-05-20 19:55:27', '2024-05-20 19:55:27', NULL),
(53, 3, 'Credit', '4989.00', '5000.00', '9989.00', 1, 'Product Inward', NULL, 2, NULL, '2024-05-20 19:56:51', '2024-05-20 19:56:51', NULL),
(54, 11, 'Credit', '0.00', '50.00', '50.00', 1, 'Product Inward', NULL, 2, NULL, '2024-05-20 19:56:51', '2024-05-20 19:56:51', NULL),
(55, 3, 'Credit', '9989.00', '1000.00', '10989.00', 1, 'Product Inward', NULL, 3, NULL, '2024-05-20 19:57:52', '2024-05-20 19:57:52', NULL),
(56, 9, 'Credit', '0.00', '2.00', '2.00', 1, 'Product Inward', NULL, 3, NULL, '2024-05-20 19:57:52', '2024-05-20 19:57:52', NULL),
(57, 11, 'Credit', '50.00', '10.00', '60.00', 1, 'Product Inward', NULL, 3, NULL, '2024-05-20 19:57:52', '2024-05-20 19:57:52', NULL),
(58, 12, 'Credit', '2.00', '1000.00', '1002.00', 1, 'Product Inward', NULL, 3, NULL, '2024-05-20 19:57:52', '2024-05-20 19:57:52', NULL),
(59, 3, 'Debit', '10989.00', '116.00', '10873.00', 1, 'used in job card', 2, NULL, 1, '2024-05-23 05:22:38', '2024-05-23 05:22:38', NULL),
(60, 3, 'Debit', '10873.00', '700.00', '10173.00', 1, 'used in job card', 8, NULL, 1, '2024-05-23 20:58:18', '2024-05-23 20:58:18', NULL),
(61, 1, 'Debit', '-1025.00', '750.00', '-1775.00', 1, 'used in job card', 8, NULL, 2, '2024-05-23 20:58:18', '2024-05-23 20:58:18', NULL),
(62, 13, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-24 12:48:41', '2024-05-24 12:48:41', NULL),
(63, 13, 'Debit', NULL, '10050.00', '-10050.00', 1, 'used in job card', 11, NULL, 3, '2024-05-24 12:53:18', '2024-05-24 12:53:18', NULL),
(64, 10, 'Debit', '5000.00', '10050.00', '-5050.00', 1, 'used in job card', 11, NULL, 4, '2024-05-24 12:53:18', '2024-05-24 12:53:18', NULL),
(65, 10, 'Debit', '-5050.00', '1050.00', '-6100.00', 1, 'used in job card', 12, NULL, 4, '2024-05-24 13:48:45', '2024-05-24 13:48:45', NULL),
(66, 3, 'Debit', '10173.00', '1500.00', '8673.00', 1, 'used in job card', 12, NULL, 1, '2024-05-24 13:48:45', '2024-05-24 13:48:45', NULL),
(67, 10, 'Debit', '-6100.00', '1050.00', '-7150.00', 1, 'used in job card', 12, NULL, 4, '2024-05-24 13:53:00', '2024-05-24 13:53:00', NULL),
(68, 3, 'Debit', '8673.00', '1500.00', '7173.00', 1, 'used in job card', 12, NULL, 1, '2024-05-24 13:53:00', '2024-05-24 13:53:00', NULL),
(69, 10, 'Debit', '-7150.00', '1500.00', '-8650.00', 1, 'used in job card', 12, NULL, 4, '2024-05-24 13:55:09', '2024-05-24 13:55:09', NULL),
(70, 10, 'Debit', '-8650.00', '1100.00', '-9750.00', 1, 'used in job card', 13, NULL, 4, '2024-05-24 14:04:18', '2024-05-24 14:04:18', NULL),
(71, 3, 'Debit', '7173.00', '1500.00', '5673.00', 1, 'used in job card', 13, NULL, 1, '2024-05-24 14:04:18', '2024-05-24 14:04:18', NULL),
(72, 3, 'Debit', '5673.00', '800.00', '4873.00', 1, 'used in job card', 14, NULL, 1, '2024-05-24 17:49:26', '2024-05-24 17:49:26', NULL),
(73, 1, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-25 16:19:58', '2024-05-25 16:19:58', NULL),
(74, 2, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-25 16:20:52', '2024-05-25 16:20:52', NULL),
(75, 3, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-25 16:23:05', '2024-05-25 16:23:05', NULL),
(76, 2, 'Credit', NULL, '6000.00', '6000.00', 1, 'Product Inward', NULL, 1, NULL, '2024-05-25 16:46:34', '2024-05-25 16:46:34', NULL),
(77, 1, 'Credit', NULL, '5000.00', '5000.00', 1, 'Product Inward', NULL, 1, NULL, '2024-05-25 16:46:34', '2024-05-25 16:46:34', NULL),
(78, 1, 'Debit', '5000.00', '883.00', '4117.00', 1, 'used in job card', 2, NULL, 1, '2024-05-25 19:19:14', '2024-05-25 19:19:14', NULL),
(79, 2, 'Debit', '6000.00', '200.00', '5800.00', 1, 'used in job card', 1, NULL, 2, '2024-05-25 19:20:30', '2024-05-25 19:20:30', NULL),
(80, 1, 'Debit', '4117.00', '183.00', '3934.00', 1, 'used in job card', 1, NULL, 1, '2024-05-25 19:20:30', '2024-05-25 19:20:30', NULL),
(81, 2, 'Debit', '5800.00', '50.00', '5750.00', 1, 'used in job card', 1, NULL, 2, '2024-05-25 19:57:48', '2024-05-25 19:57:48', NULL),
(82, 4, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-26 11:03:03', '2024-05-26 11:03:03', NULL),
(83, 4, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-26 11:17:45', '2024-05-26 11:17:45', NULL),
(84, 3, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-26 11:17:54', '2024-05-26 11:17:54', NULL),
(85, 5, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New product Added', NULL, NULL, NULL, '2024-05-26 11:21:40', '2024-05-26 11:21:40', NULL),
(86, 5, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New product Added', NULL, NULL, NULL, '2024-05-26 11:36:43', '2024-05-26 11:36:43', NULL),
(87, 5, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New product Added', NULL, NULL, NULL, '2024-05-26 11:37:28', '2024-05-26 11:37:28', NULL),
(88, 5, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New product Added', NULL, NULL, NULL, '2024-05-26 11:37:40', '2024-05-26 11:37:40', NULL),
(89, 4, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New Paper Added', NULL, NULL, NULL, '2024-05-26 11:37:49', '2024-05-26 11:37:49', NULL),
(90, 5, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New product Added', NULL, NULL, NULL, '2024-05-26 11:57:46', '2024-05-26 11:57:46', NULL),
(91, 6, 'Opening Balance', '0.00', '0.00', '0.00', 1, 'New product Added', NULL, NULL, NULL, '2024-05-26 11:58:10', '2024-05-26 11:58:10', NULL),
(92, 2, 'Credit', '5750.00', '5000.00', '10750.00', 1, 'Product Inward', NULL, 2, NULL, '2024-05-26 12:54:52', '2024-05-26 12:54:52', NULL),
(93, 1, 'Debit', '3934.00', '255.00', '3679.00', 1, 'used in job card', 7, NULL, 1, '2024-05-26 13:09:56', '2024-05-26 13:09:56', NULL),
(94, 1, 'Debit', '3679.00', '67.00', '3612.00', 1, 'used in job card', 7, NULL, 1, '2024-05-26 13:38:22', '2024-05-26 13:38:22', NULL),
(95, 3, 'Debit', NULL, '50.00', '-50.00', 1, 'used in job card', 7, NULL, 3, '2024-05-26 13:40:15', '2024-05-26 13:40:15', NULL),
(96, 3, 'Debit', '-50.00', '925.00', '-975.00', 1, 'used in job card', 8, NULL, 3, '2024-05-26 18:56:01', '2024-05-26 18:56:01', NULL),
(97, 3, 'Debit', '-975.00', '383.00', '-1358.00', 1, 'used in job card', 9, NULL, 3, '2024-05-26 19:21:15', '2024-05-26 19:21:15', NULL),
(98, 2, 'Debit', '10750.00', NULL, '10750.00', 1, 'Manual Issued Item', NULL, NULL, 7, '2024-05-26 22:20:00', '2024-05-26 22:20:00', NULL),
(99, 2, 'Debit', '8750.00', NULL, '8750.00', 1, 'Manual Issued Item', NULL, NULL, 8, '2024-05-26 22:20:00', '2024-05-26 22:20:00', NULL),
(100, 1, 'Debit', '3612.00', '116.00', '3496.00', 1, 'used in job card', 10, NULL, 1, '2024-05-29 11:30:17', '2024-05-29 11:30:17', NULL),
(101, 1, 'Debit', '3496.00', NULL, '3496.00', 1, 'Manual Issued Item', NULL, NULL, 9, '2024-06-05 21:10:56', '2024-06-05 21:10:56', NULL),
(102, 1, 'Debit', '3396.00', '900.00', '2496.00', 1, 'Product Inward Update', NULL, NULL, 9, '2024-06-05 21:19:40', '2024-06-05 21:19:40', NULL),
(103, 1, 'Debit', '2496.00', '266.00', '2230.00', 1, 'used in job card', 11, NULL, 1, '2024-06-06 09:02:16', '2024-06-06 09:02:16', NULL),
(104, 1, 'Debit', '2230.00', '133.00', '2097.00', 1, 'used in job card', 12, NULL, 1, '2024-06-06 09:26:13', '2024-06-06 09:26:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trimmed_paper_stock`
--

DROP TABLE IF EXISTS `trimmed_paper_stock`;
CREATE TABLE IF NOT EXISTS `trimmed_paper_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paper_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Numbers', 'Nos', '2024-02-08 01:11:09', '2024-02-08 01:11:09', NULL),
(2, 'Kilogram', 'Kg', '2024-02-08 01:11:24', '2024-02-08 01:11:24', NULL),
(3, 'Sheets', 'Sheets', '2024-02-08 01:11:45', '2024-02-08 01:11:45', NULL),
(4, 'Liter', 'Ltr', '2024-02-08 01:11:58', '2024-02-08 01:11:58', NULL),
(5, 'Grams', 'Gm', '2024-02-08 01:12:12', '2024-05-25 16:16:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
CREATE TABLE IF NOT EXISTS `vendors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(1024) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone_no` varchar(1024) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(1024) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gst` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `media_id` int DEFAULT NULL,
  `mail_cc` text COLLATE utf8mb3_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `email`, `phone_no`, `address`, `gst`, `media_id`, `mail_cc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Anurag Enterprisess', 'rajeev.evorapkg@gmail.com', '8699808150', '2209 bhy', '03alcpc1520011', NULL, 'rajeev.evorapkg@gmail.com', '2024-05-25 16:03:11', '2024-05-27 22:10:56', NULL),
(2, 'Kalra Papers', 'rajeevbhardwaj14311@gmail.com', '0978080369', '2209', '', NULL, 'rajeevbhardwaj14311@gmail.com', '2024-05-25 16:08:48', '2024-05-25 16:08:48', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `client_id`, `purchase_order_id`, `purchase_order_item_id`, `carton_name`, `carton_size`, `old_quantity`, `new_quantity`, `quantity_in_box`, `pasting_ready_box`, `no_of_box`, `ready_box`, `status_id`, `created_at`, `updated_at`) VALUES
(10, 17, 2, 5, 'LKJ', '60X37X105', 0, 0, NULL, '1000x3,180x1', NULL, NULL, 2, '2024-05-25 22:22:57', '2024-05-25 22:58:32'),
(11, 17, 2, 4, 'MNB', '52X52X74', 200, 0, NULL, '1000x1,980x1', NULL, NULL, 2, '2024-05-25 22:23:02', '2024-05-26 14:31:06'),
(12, 12, 1, 2, 'DEF', '57X37X100', 0, 0, NULL, '1000x1,980x1', NULL, NULL, 2, '2024-05-25 22:23:06', '2024-05-25 22:57:58'),
(13, 12, 1, 3, 'HIJ', '57X37X100', 0, 0, NULL, '1000x1,995x1', NULL, NULL, 2, '2024-05-25 22:23:11', '2024-05-25 22:53:52'),
(14, 12, 1, 1, 'ABC', '57X37X100', 0, 0, NULL, '1000x2,190x1', NULL, NULL, 2, '2024-05-25 22:23:18', '2024-05-26 14:30:05');

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
