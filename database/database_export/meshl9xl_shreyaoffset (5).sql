-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2024 at 02:20 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meshl9xl_shreyaoffset`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(191) DEFAULT NULL,
  `event` varchar(191) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext,
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"first_name\":\"Biogenetic\",\"last_name\":\"Drugs\",\"full_name\":\"Biogenetic Drugs\",\"company_name\":\"Biogenetic Drugs Pvt. Ltd.\",\"email\":\"ppcbdpl@smilaxgroup.net\",\"mobile\":\"7807744119\",\"state\":\"Himachal Pradesh\",\"city\":\"Baddi\",\"address\":null,\"pincode\":\"173205\",\"gst\":\"02AACCB3897K1ZJ\",\"media_id\":null,\"color\":\"info\",\"name_init\":\"BD\",\"created_at\":\"2024-06-09T15:13:04.000000Z\",\"updated_at\":\"2024-06-09T15:13:04.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-09 15:13:04', '2024-06-09 15:13:04'),
(2, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"first_name\":\"Smilax\",\"last_name\":\"Healthcare\",\"full_name\":\"Smilax Healthcare\",\"company_name\":\"Smilax Healthcare Drug Co.\",\"email\":\"ppc@smilaxgroup.net\",\"mobile\":\"8894729256\",\"state\":\"Himachal Pradesh\",\"city\":\"Baddi\",\"address\":null,\"pincode\":\"173205\",\"gst\":\"02ABAFM6564C1ZP\",\"media_id\":null,\"color\":\"info\",\"name_init\":\"SH\",\"created_at\":\"2024-06-09T15:14:38.000000Z\",\"updated_at\":\"2024-06-09T15:14:38.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-09 15:14:38', '2024-06-09 15:14:38'),
(3, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 3, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":3,\"first_name\":\"Kingston\",\"last_name\":\"Aqua\",\"full_name\":\"Kingston Aqua\",\"company_name\":\"Kingston\\u00a0Aqua Industries (P) Ltd.\",\"email\":\"kingstonpmstore@gmail.com\",\"mobile\":\"9882981001\",\"state\":\"Himachal Pradesh\",\"city\":\"Baddi\",\"address\":\"Plot no 3 & 4 ,  Bhatoli Kalan, Industrial Township, Baddi,Distt.Solan (H.P)\",\"pincode\":\"173205\",\"gst\":\"02AADCK4688A2ZU\",\"media_id\":null,\"color\":\"primary\",\"name_init\":\"KA\",\"created_at\":\"2024-06-09T15:18:13.000000Z\",\"updated_at\":\"2024-06-09T15:18:13.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-09 15:18:13', '2024-06-09 15:18:13'),
(4, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"first_name\":\"GMH\",\"last_name\":\"LABORATORIES\",\"full_name\":\"GMH LABORATORIES\",\"company_name\":\"GMH\\u00a0LABORATORIES\",\"email\":\"gmhpmstore@gmail.com\",\"mobile\":\"9882981001\",\"state\":\"Himachal Pradesh\",\"city\":\"Baddi\",\"address\":\"Plot No. 13, Bhatoli-kalan Industrial Township,Baddi, Distt- Solan (HP)\",\"pincode\":\"173205\",\"gst\":\"02ABFPG9454L1ZJ\",\"media_id\":null,\"color\":\"success\",\"name_init\":\"GL\",\"created_at\":\"2024-06-09T15:19:52.000000Z\",\"updated_at\":\"2024-06-09T15:19:52.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-09 15:19:52', '2024-06-09 15:19:52'),
(5, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"first_name\":\"Polestar\",\"last_name\":\"Power\",\"full_name\":\"Polestar Power\",\"company_name\":\"Polestar Power Industries\",\"email\":\"store.polestar@gmail.com\",\"mobile\":\"8219530153\",\"state\":\"Himachal Pradesh\",\"city\":\"Baddi\",\"address\":\"Village Damuwala, Haripur Road,Barotiwala, Tehsil Baddi\",\"pincode\":\"174103\",\"gst\":\"02AANFP6841P2ZN\",\"media_id\":null,\"color\":\"warning\",\"name_init\":\"PP\",\"created_at\":\"2024-06-09T15:21:15.000000Z\",\"updated_at\":\"2024-06-09T15:21:15.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-09 15:21:15', '2024-06-09 15:21:15'),
(6, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"first_name\":\"Besto\",\"last_name\":\"Healthcare\",\"full_name\":\"Besto Healthcare\",\"company_name\":\"Besto Healthcare\",\"email\":\"bestohealthcare@gmail.com\",\"mobile\":\"9817398454\",\"state\":\"Himachal Pradesh\",\"city\":\"Baddi\",\"address\":\"Plot No 54-A , 1st Floor , DIC, Industrail Area, Near Chatari Chowk, Baddi, Solan\",\"pincode\":\"173205\",\"gst\":\"02BNLPS4651L1ZM\",\"media_id\":null,\"color\":\"info\",\"name_init\":\"BH\",\"created_at\":\"2024-06-09T15:22:52.000000Z\",\"updated_at\":\"2024-06-09T15:22:52.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-09 15:22:52', '2024-06-09 15:22:52'),
(7, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"first_name\":\"Smilax\",\"last_name\":\"Pharmachem\",\"full_name\":\"Smilax Pharmachem\",\"company_name\":\"Smilax Pharmachem Drugs Industries\",\"email\":\"ppc@smilaxgroup.net\",\"mobile\":\"8894729256\",\"state\":\"Himachal Pradesh\",\"city\":\"Baddi\",\"address\":\"33-34 EPIP 11, Thane Baddi, Solan\",\"pincode\":\"173205\",\"gst\":\"02AAMFA5001B1ZF\",\"media_id\":null,\"color\":\"warning\",\"name_init\":\"SP\",\"created_at\":\"2024-06-09T15:24:15.000000Z\",\"updated_at\":\"2024-06-09T15:24:15.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-09 15:24:15', '2024-06-09 15:24:15'),
(8, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":8,\"first_name\":\"Smilex\",\"last_name\":\"Healthcare\",\"full_name\":\"Smilex Healthcare\",\"company_name\":\"Smilex Healthcare Pvt Ltd\",\"email\":\"ppc@smilaxgroup.net\",\"mobile\":\"8894729256\",\"state\":\"Himachal Pradesh\",\"city\":\"Baddi\",\"address\":\"23 EPIP 1, Jharmajri, Distt Solan, Baddi\",\"pincode\":\"173205\",\"gst\":\"02AAJCS5602G2ZO\",\"media_id\":null,\"color\":\"secondary\",\"name_init\":\"SH\",\"created_at\":\"2024-06-09T15:28:59.000000Z\",\"updated_at\":\"2024-06-09T15:28:59.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-09 15:28:59', '2024-06-09 15:28:59'),
(9, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":9,\"first_name\":\"Tj\",\"last_name\":\"Home Care Remedies\",\"full_name\":\"Tj Home Care Remedies\",\"company_name\":\"Tj Home Care Remedies\",\"email\":\"tjscare@gmail.com\",\"mobile\":\"9814404494\",\"state\":\"Punjab\",\"city\":\"Zirakpur\",\"address\":\"Godown No , 35 Feet, Peer Pucca Road, Village Prabhat, Zirakpur\",\"pincode\":\"140603\",\"gst\":\"03AEZPB0154R1Z5\",\"media_id\":null,\"color\":\"success\",\"name_init\":\"TH\",\"created_at\":\"2024-06-09T15:30:36.000000Z\",\"updated_at\":\"2024-06-09T15:30:36.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-09 15:30:36', '2024-06-09 15:30:36'),
(10, 'product', 'product has been created', 'App\\Models\\Product', 'created', 43, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":43,\"product_type_id\":15,\"unit_id\":5,\"paper_type\":null,\"code\":\"Lith-001\",\"name\":\"Lithochem Yellow\",\"category_id\":5,\"hsn\":2315,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"24.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-10T10:09:43.000000Z\",\"updated_at\":\"2024-06-10T10:09:43.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 10:09:43', '2024-06-10 10:09:43'),
(11, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\MaterialOrderItem', 'created', 1, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":1,\"material_order_id\":1,\"category_id\":5,\"product_id\":43,\"item_name\":\"Lithochem Yellow\",\"quantity\":\"1.00\",\"hsn\":\"2315\",\"weight_per_piece\":\"24.00\",\"total_weight\":\"24.00\",\"unit_id\":5,\"rate_on\":\"170.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"1.00\",\"rate\":\"4080.00\",\"gst\":\"18.00\",\"gst_amount\":\"734.40\",\"amount\":\"4080.00\",\"receive_status\":0,\"created_at\":\"2024-06-10T10:14:56.000000Z\",\"updated_at\":\"2024-06-10T10:14:56.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 10:14:56', '2024-06-10 10:14:56'),
(12, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 10, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":10,\"first_name\":\"Kamlesh\",\"last_name\":\"Yadav\",\"full_name\":\"Kamlesh Yadav\",\"company_name\":\"Windlas Biotech Plant 2\",\"email\":\"pmpurchase@windlasbiotech.com\",\"mobile\":\"9837079820\",\"state\":\"Uttarakhand\",\"city\":\"Dehradun\",\"address\":\"WINDLAS BIOTECH LIMITED (CENTRAL WAREHOUSE) \\r\\nKhasra No-141 to 143 & 145 Mohabewala Industrial Area, Dehradun - 248110, \\r\\nUttarakhand, India\",\"pincode\":\"248110\",\"gst\":\"05AAACW3417C1ZV\",\"media_id\":null,\"color\":\"warning\",\"name_init\":\"KY\",\"created_at\":\"2024-06-10T12:20:09.000000Z\",\"updated_at\":\"2024-06-10T12:20:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:20:09', '2024-06-10 12:20:09'),
(13, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"first_name\":\"Leeford\",\"last_name\":\"Healthcare\",\"full_name\":\"Leeford Healthcare\",\"company_name\":\"Leeford Healthcare Ltd.\",\"email\":\"purchaseunit1@allkindhealthcare.in\",\"mobile\":\"9317519036\",\"state\":\"Punjab\",\"city\":\"Ludhiana\",\"address\":\"New Shivaji Nagar, Harcharan Nagar, Ludhiana, Punjab\",\"pincode\":\"141008\",\"gst\":\"03AABCL1851A1ZB\",\"media_id\":null,\"color\":\"danger\",\"name_init\":\"LH\",\"created_at\":\"2024-06-10T12:20:30.000000Z\",\"updated_at\":\"2024-06-10T12:20:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:20:30', '2024-06-10 12:20:30'),
(14, 'Client', 'Client has been updated', 'App\\Models\\Client', 'updated', 10, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":10,\"first_name\":\"Windlas\",\"last_name\":\"Biotech\",\"full_name\":\"Windlas Biotech\",\"company_name\":\"Windlas Biotech Plant 2\",\"email\":\"pmpurchase@windlasbiotech.com\",\"mobile\":\"9837079820\",\"state\":\"Uttarakhand\",\"city\":\"Dehradun\",\"address\":\"WINDLAS BIOTECH LIMITED (CENTRAL WAREHOUSE) \\r\\nKhasra No-141 to 143 & 145 Mohabewala Industrial Area, Dehradun - 248110, \\r\\nUttarakhand, India\",\"pincode\":\"248110\",\"gst\":\"05AAACW3417C1ZV\",\"media_id\":null,\"color\":\"warning\",\"name_init\":\"WB\",\"created_at\":\"2024-06-10T12:20:09.000000Z\",\"updated_at\":\"2024-06-10T12:20:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"first_name\":\"Kamlesh\",\"last_name\":\"Yadav\",\"full_name\":\"Kamlesh Yadav\",\"company_name\":\"Windlas Biotech Plant 2\",\"email\":\"pmpurchase@windlasbiotech.com\",\"mobile\":\"9837079820\",\"state\":\"Uttarakhand\",\"city\":\"Dehradun\",\"address\":\"WINDLAS BIOTECH LIMITED (CENTRAL WAREHOUSE) \\r\\nKhasra No-141 to 143 & 145 Mohabewala Industrial Area, Dehradun - 248110, \\r\\nUttarakhand, India\",\"pincode\":\"248110\",\"gst\":\"05AAACW3417C1ZV\",\"media_id\":null,\"color\":\"warning\",\"name_init\":\"KY\",\"created_at\":\"2024-06-10T12:20:09.000000Z\",\"updated_at\":\"2024-06-10T12:20:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:20:40', '2024-06-10 12:20:40'),
(15, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 470, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":470,\"dye_no\":\"7\",\"length\":160,\"width\":131,\"height\":168,\"dye_lock\":\"lockbottom\",\"ups\":1,\"sheet_size\":\"16X23.5\",\"automatic\":1,\"carton_size\":\"160X131X168\",\"created_at\":\"2024-06-10T12:33:58.000000Z\",\"updated_at\":\"2024-06-10T12:33:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:33:58', '2024-06-10 12:33:58'),
(16, 'Dye Details', 'Dye Details has been updated', 'App\\Models\\DyeDetails', 'updated', 470, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":470,\"dye_no\":\"915\",\"length\":160,\"width\":131,\"height\":168,\"dye_lock\":\"lockbottom\",\"ups\":1,\"sheet_size\":\"16X23.5\",\"automatic\":1,\"carton_size\":\"160X131X168\",\"created_at\":\"2024-06-10T12:33:58.000000Z\",\"updated_at\":\"2024-06-10T12:35:12.000000Z\",\"deleted_at\":null},\"old\":{\"id\":470,\"dye_no\":\"7\",\"length\":160,\"width\":131,\"height\":168,\"dye_lock\":\"lockbottom\",\"ups\":1,\"sheet_size\":\"16X23.5\",\"automatic\":1,\"carton_size\":\"160X131X168\",\"created_at\":\"2024-06-10T12:33:58.000000Z\",\"updated_at\":\"2024-06-10T12:33:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:35:12', '2024-06-10 12:35:12'),
(17, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 471, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":471,\"dye_no\":\"914\",\"length\":127,\"width\":15,\"height\":164,\"dye_lock\":\"BSO\",\"ups\":4,\"sheet_size\":\"16X23\",\"automatic\":1,\"carton_size\":\"127X15X164\",\"created_at\":\"2024-06-10T12:44:49.000000Z\",\"updated_at\":\"2024-06-10T12:44:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:44:49', '2024-06-10 12:44:49'),
(18, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 472, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":472,\"dye_no\":\"899\",\"length\":165,\"width\":95,\"height\":108,\"dye_lock\":\"lockbottom\",\"ups\":2,\"sheet_size\":\"18X21\",\"automatic\":1,\"carton_size\":\"165X95X108\",\"created_at\":\"2024-06-10T12:49:59.000000Z\",\"updated_at\":\"2024-06-10T12:49:59.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:49:59', '2024-06-10 12:49:59'),
(19, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 1, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":1,\"client_id\":10,\"po_no\":\"PO\\/24-25\\/000001955\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:50:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:50:30', '2024-06-10 12:50:30'),
(20, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 1, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":470,\"carton_name\":\"Outer Carton Vidadeb-50 M Forte\",\"carton_size\":\"160X131X168\",\"quantity\":682,\"rate\":\"7.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9015\",\"gsm\":300,\"remarks\":\"CMYK plus 2 Pantones\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:50:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:50:30', '2024-06-10 12:50:30'),
(21, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 2, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":471,\"carton_name\":\"Inner Carton Vidadeb-50M Forte\",\"carton_size\":\"127X15X164\",\"quantity\":9555,\"rate\":\"2.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9014\",\"gsm\":280,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:50:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:50:30', '2024-06-10 12:50:30'),
(22, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 3, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":472,\"carton_name\":\"Adivit CZ\",\"carton_size\":\"165X95X108\",\"quantity\":2617,\"rate\":\"4.60\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D4562R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:50:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:50:30', '2024-06-10 12:50:30'),
(23, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 1, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":1,\"client_id\":10,\"po_no\":\"PO\\/24-25\\/000004950\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:51:43.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"client_id\":10,\"po_no\":\"PO\\/24-25\\/000001955\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:50:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:51:43', '2024-06-10 12:51:43'),
(24, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 1, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":1,\"client_id\":10,\"po_no\":\"PO\\/24-25\\/000004950\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:52:25.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"client_id\":10,\"po_no\":\"PO\\/24-25\\/000004950\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:51:43.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:52:25', '2024-06-10 12:52:25'),
(25, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 1, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":470,\"carton_name\":\"Outer Carton Vidadeb-50 M Forte\",\"carton_size\":\"160X131X168\",\"quantity\":682,\"rate\":\"7.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9015\",\"gsm\":300,\"remarks\":\"CMYK plus 2 Pantones\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:52:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":470,\"carton_name\":\"Outer Carton Vidadeb-50 M Forte\",\"carton_size\":\"160X131X168\",\"quantity\":682,\"rate\":\"7.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9015\",\"gsm\":300,\"remarks\":\"CMYK plus 2 Pantones\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:50:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:52:58', '2024-06-10 12:52:58'),
(26, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 2, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":471,\"carton_name\":\"Inner Carton Vidadeb-50M Forte\",\"carton_size\":\"127X15X164\",\"quantity\":9555,\"rate\":\"2.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9014\",\"gsm\":280,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:53:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":471,\"carton_name\":\"Inner Carton Vidadeb-50M Forte\",\"carton_size\":\"127X15X164\",\"quantity\":9555,\"rate\":\"2.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9014\",\"gsm\":280,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:50:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:53:00', '2024-06-10 12:53:00'),
(27, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 3, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":472,\"carton_name\":\"Adivit CZ\",\"carton_size\":\"165X95X108\",\"quantity\":2617,\"rate\":\"4.60\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D4562R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:53:01.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":472,\"carton_name\":\"Adivit CZ\",\"carton_size\":\"165X95X108\",\"quantity\":2617,\"rate\":\"4.60\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D4562R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:50:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:53:01', '2024-06-10 12:53:01'),
(28, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 1, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":470,\"carton_name\":\"Outer Carton Vidadeb-50 M Forte\",\"carton_size\":\"160X131X168\",\"quantity\":682,\"rate\":\"7.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9015\",\"gsm\":300,\"remarks\":\"CMYK plus 2 Pantones\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:53:02.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":470,\"carton_name\":\"Outer Carton Vidadeb-50 M Forte\",\"carton_size\":\"160X131X168\",\"quantity\":682,\"rate\":\"7.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9015\",\"gsm\":300,\"remarks\":\"CMYK plus 2 Pantones\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:52:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:53:02', '2024-06-10 12:53:02'),
(29, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 2, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":471,\"carton_name\":\"Inner Carton Vidadeb-50M Forte\",\"carton_size\":\"127X15X164\",\"quantity\":9555,\"rate\":\"2.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9014\",\"gsm\":280,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:53:02.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":471,\"carton_name\":\"Inner Carton Vidadeb-50M Forte\",\"carton_size\":\"127X15X164\",\"quantity\":9555,\"rate\":\"2.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9014\",\"gsm\":280,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:53:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:53:02', '2024-06-10 12:53:02'),
(30, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 3, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":472,\"carton_name\":\"Adivit CZ\",\"carton_size\":\"165X95X108\",\"quantity\":2617,\"rate\":\"4.60\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D4562R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:53:02.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":472,\"carton_name\":\"Adivit CZ\",\"carton_size\":\"165X95X108\",\"quantity\":2617,\"rate\":\"4.60\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D4562R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:53:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:53:02', '2024-06-10 12:53:02'),
(31, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 1, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":470,\"carton_name\":\"Outer Carton Vidadeb-50 M Forte\",\"carton_size\":\"160X131X168\",\"quantity\":682,\"rate\":\"7.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9015\",\"gsm\":300,\"remarks\":\"CMYK plus 2 Pantones\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:53:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":470,\"carton_name\":\"Outer Carton Vidadeb-50 M Forte\",\"carton_size\":\"160X131X168\",\"quantity\":682,\"rate\":\"7.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9015\",\"gsm\":300,\"remarks\":\"CMYK plus 2 Pantones\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:53:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:53:40', '2024-06-10 12:53:40'),
(32, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 2, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":471,\"carton_name\":\"Inner Carton Vidadeb-50M Forte\",\"carton_size\":\"127X15X164\",\"quantity\":9555,\"rate\":\"2.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9014\",\"gsm\":280,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:53:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":471,\"carton_name\":\"Inner Carton Vidadeb-50M Forte\",\"carton_size\":\"127X15X164\",\"quantity\":9555,\"rate\":\"2.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D9014\",\"gsm\":280,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:53:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:53:40', '2024-06-10 12:53:40'),
(33, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 3, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":472,\"carton_name\":\"Adivit CZ\",\"carton_size\":\"165X95X108\",\"quantity\":2617,\"rate\":\"4.60\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D4562R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:53:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"purchase_order_id\":1,\"product_id\":null,\"dye_details_id\":472,\"carton_name\":\"Adivit CZ\",\"carton_size\":\"165X95X108\",\"quantity\":2617,\"rate\":\"4.60\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSEC003D4562R1\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T12:50:30.000000Z\",\"updated_at\":\"2024-06-10T12:53:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:53:40', '2024-06-10 12:53:40'),
(34, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 1, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":1,\"planning_by\":10,\"job_card_no\":\"001\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-10T12:55:06.000000Z\",\"updated_at\":\"2024-06-10T12:55:06.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:55:06', '2024-06-10 12:55:06'),
(35, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 1, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":1,\"job_card_id\":1,\"planning_id\":1,\"purchase_order_id\":1,\"purchase_order_item_id\":1,\"ups\":1,\"quantity\":682,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-10T12:55:06.000000Z\",\"updated_at\":\"2024-06-10T12:55:06.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:55:06', '2024-06-10 12:55:06'),
(36, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 1, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":1,\"planning_by\":10,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"16X23.5\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":470,\"dye_details\":\"915\\/1-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-10T12:55:06.000000Z\",\"updated_at\":\"2024-06-10T12:55:06.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"planning_by\":10,\"job_card_no\":\"001\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-06-10T12:55:06.000000Z\",\"updated_at\":\"2024-06-10T12:55:06.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:55:06', '2024-06-10 12:55:06'),
(37, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 1, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":1,\"job_card_id\":1,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-06-10T12:55:06.000000Z\",\"updated_at\":\"2024-06-10T12:55:06.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:55:06', '2024-06-10 12:55:06'),
(38, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 2, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":2,\"planning_by\":10,\"job_card_no\":\"002\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-10T12:55:36.000000Z\",\"updated_at\":\"2024-06-10T12:55:36.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:55:36', '2024-06-10 12:55:36'),
(39, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 2, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":2,\"job_card_id\":2,\"planning_id\":2,\"purchase_order_id\":1,\"purchase_order_item_id\":2,\"ups\":4,\"quantity\":9555,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-10T12:55:36.000000Z\",\"updated_at\":\"2024-06-10T12:55:36.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:55:36', '2024-06-10 12:55:36'),
(40, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 2, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":2,\"planning_by\":10,\"job_card_no\":\"002\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"16X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":471,\"dye_details\":\"914\\/4-BSO\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-10T12:55:36.000000Z\",\"updated_at\":\"2024-06-10T12:55:36.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"planning_by\":10,\"job_card_no\":\"002\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-06-10T12:55:36.000000Z\",\"updated_at\":\"2024-06-10T12:55:36.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:55:36', '2024-06-10 12:55:36'),
(41, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 2, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":2,\"job_card_id\":2,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-06-10T12:55:36.000000Z\",\"updated_at\":\"2024-06-10T12:55:36.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:55:36', '2024-06-10 12:55:36'),
(42, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 3, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":3,\"planning_by\":10,\"job_card_no\":\"003\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-10T12:55:41.000000Z\",\"updated_at\":\"2024-06-10T12:55:41.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:55:41', '2024-06-10 12:55:41'),
(43, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 3, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":3,\"job_card_id\":3,\"planning_id\":3,\"purchase_order_id\":1,\"purchase_order_item_id\":3,\"ups\":2,\"quantity\":2617,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-10T12:55:41.000000Z\",\"updated_at\":\"2024-06-10T12:55:41.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:55:41', '2024-06-10 12:55:41'),
(44, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 3, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":3,\"planning_by\":10,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"18X21\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":472,\"dye_details\":\"899\\/2-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-10T12:55:41.000000Z\",\"updated_at\":\"2024-06-10T12:55:41.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"planning_by\":10,\"job_card_no\":\"003\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-06-10T12:55:41.000000Z\",\"updated_at\":\"2024-06-10T12:55:41.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:55:41', '2024-06-10 12:55:41'),
(45, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 3, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":3,\"job_card_id\":3,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-06-10T12:55:41.000000Z\",\"updated_at\":\"2024-06-10T12:55:41.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:55:41', '2024-06-10 12:55:41'),
(46, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 12, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":12,\"first_name\":\"Malik\",\"last_name\":\"Lifesciences\",\"full_name\":\"Malik Lifesciences\",\"company_name\":\"Malik Lifesciences\",\"email\":\"maliklifesciences@akums.in\",\"mobile\":\"8859007758\",\"state\":\"UTTARAKHAND\",\"city\":\"Haridwar\",\"address\":\"Plot No.16, Vardhman Industrial Estate \\r\\nBahadarpur Saini, Roorkee \\r\\nHaridwar UTTARAKHAND\\r\\n INDIA 247667\",\"pincode\":\"247667\",\"gst\":\"05AAECM9025E1ZP\",\"media_id\":null,\"color\":\"success\",\"name_init\":\"ML\",\"created_at\":\"2024-06-10T12:58:20.000000Z\",\"updated_at\":\"2024-06-10T12:58:20.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 12:58:20', '2024-06-10 12:58:20'),
(47, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 3, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":3,\"planning_by\":10,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"18X21\",\"required_sheet\":1309,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":472,\"dye_details\":\"899\\/2-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5791\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-10T12:55:41.000000Z\",\"updated_at\":\"2024-06-10T13:08:02.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"planning_by\":10,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"18X21\",\"required_sheet\":1309,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":472,\"dye_details\":\"899\\/2-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5791\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2024-06-10T12:55:41.000000Z\",\"updated_at\":\"2024-06-10T13:01:45.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:08:02', '2024-06-10 13:08:02'),
(48, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":16,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"126\",\"name\":\"23X36-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"17.09\",\"item_per_packet\":100,\"weight_per_piece\":\"0.17\",\"length\":\"23.00\",\"width\":\"36.00\",\"gsm\":320,\"quantity\":\"496.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-09T16:32:44.000000Z\",\"updated_at\":\"2024-06-10T13:08:02.000000Z\",\"deleted_at\":null},\"old\":{\"id\":16,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"126\",\"name\":\"23X36-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"17.09\",\"item_per_packet\":100,\"weight_per_piece\":\"0.17\",\"length\":\"23.00\",\"width\":\"36.00\",\"gsm\":320,\"quantity\":\"1200.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-09T16:32:44.000000Z\",\"updated_at\":\"2024-06-09T16:32:44.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:08:02', '2024-06-10 13:08:02'),
(49, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 3, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":3,\"planning_by\":10,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"18X21\",\"required_sheet\":1309,\"wastage_sheet\":null,\"total_sheet\":1409,\"paper_divide\":null,\"dye_details_id\":472,\"dye_details\":\"899\\/2-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5791\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-10T12:55:41.000000Z\",\"updated_at\":\"2024-06-10T13:08:02.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"planning_by\":10,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"18X21\",\"required_sheet\":1309,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":472,\"dye_details\":\"899\\/2-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5791\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-10T12:55:41.000000Z\",\"updated_at\":\"2024-06-10T13:08:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:08:02', '2024-06-10 13:08:02'),
(50, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 473, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":473,\"dye_no\":\"775\",\"length\":170,\"width\":65,\"height\":98,\"dye_lock\":\"lockbottom\",\"ups\":3,\"sheet_size\":\"19X23\",\"automatic\":0,\"carton_size\":\"170X65X98\",\"created_at\":\"2024-06-10T13:11:28.000000Z\",\"updated_at\":\"2024-06-10T13:11:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:11:28', '2024-06-10 13:11:28'),
(51, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 2, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":2,\"client_id\":12,\"po_no\":\"4501061796\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T13:11:39.000000Z\",\"updated_at\":\"2024-06-10T13:11:39.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:11:39', '2024-06-10 13:11:39');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(52, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 4, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"AMPLUS-LB\",\"carton_size\":\"170X65X98\",\"quantity\":2000,\"rate\":\"4.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20220268\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:11:39.000000Z\",\"updated_at\":\"2024-06-10T13:11:39.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:11:39', '2024-06-10 13:11:39'),
(53, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 13, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":13,\"first_name\":\"Pure&Cure\",\"last_name\":\"Healthcare Pvt.Ltd\",\"full_name\":\"Pure&Cure Healthcare Pvt.Ltd\",\"company_name\":\"Pure & Cure Healthcare Pvt. Ltd\",\"email\":\"works@akums.in\",\"mobile\":\"1334234327\",\"state\":\"UTTARAKHAND\",\"city\":\"Haridwar\",\"address\":\"Plot No.26A,27,28,29 & 30 Sec 8A, \\r\\nI.I.E.,SIDCUL,Ranipur \\r\\nHaridwar UTTARAKHAND\\r\\n INDIA 249403\",\"pincode\":\"249403\",\"gst\":\"05AAECP0713G1ZX\",\"media_id\":null,\"color\":\"secondary\",\"name_init\":\"PH\",\"created_at\":\"2024-06-10T13:17:14.000000Z\",\"updated_at\":\"2024-06-10T13:17:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:17:14', '2024-06-10 13:17:14'),
(54, 'Client', 'Client has been updated', 'App\\Models\\Client', 'updated', 13, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":13,\"first_name\":\"Pure&Cure\",\"last_name\":\"Healthcare Pvt.Ltd\",\"full_name\":\"Pure&Cure Healthcare Pvt.Ltd\",\"company_name\":\"Pure & Cure Healthcare Pvt. Ltd\",\"email\":\"works@akums.in\",\"mobile\":\"01334234327\",\"state\":\"UTTARAKHAND\",\"city\":\"Haridwar\",\"address\":\"Plot No.26A,27,28,29 & 30 Sec 8A, \\r\\nI.I.E.,SIDCUL,Ranipur \\r\\nHaridwar UTTARAKHAND\\r\\n INDIA 249403\",\"pincode\":\"249403\",\"gst\":\"05AAECP0713G1ZX\",\"media_id\":null,\"color\":\"secondary\",\"name_init\":\"PH\",\"created_at\":\"2024-06-10T13:17:14.000000Z\",\"updated_at\":\"2024-06-10T13:17:53.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"first_name\":\"Pure&Cure\",\"last_name\":\"Healthcare Pvt.Ltd\",\"full_name\":\"Pure&Cure Healthcare Pvt.Ltd\",\"company_name\":\"Pure & Cure Healthcare Pvt. Ltd\",\"email\":\"works@akums.in\",\"mobile\":\"1334234327\",\"state\":\"UTTARAKHAND\",\"city\":\"Haridwar\",\"address\":\"Plot No.26A,27,28,29 & 30 Sec 8A, \\r\\nI.I.E.,SIDCUL,Ranipur \\r\\nHaridwar UTTARAKHAND\\r\\n INDIA 249403\",\"pincode\":\"249403\",\"gst\":\"05AAECP0713G1ZX\",\"media_id\":null,\"color\":\"secondary\",\"name_init\":\"PH\",\"created_at\":\"2024-06-10T13:17:14.000000Z\",\"updated_at\":\"2024-06-10T13:17:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:17:53', '2024-06-10 13:17:53'),
(55, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 43, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":43,\"product_type_id\":15,\"unit_id\":5,\"paper_type\":null,\"code\":\"Lith-001\",\"name\":\"Lithochem Yellow\",\"category_id\":5,\"hsn\":2315,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"24.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-10T10:09:43.000000Z\",\"updated_at\":\"2024-06-10T13:26:37.000000Z\",\"deleted_at\":null},\"old\":{\"id\":43,\"product_type_id\":15,\"unit_id\":5,\"paper_type\":null,\"code\":\"Lith-001\",\"name\":\"Lithochem Yellow\",\"category_id\":5,\"hsn\":2315,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"24.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-10T10:09:43.000000Z\",\"updated_at\":\"2024-06-10T10:09:43.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:26:37', '2024-06-10 13:26:37'),
(56, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 3, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":3,\"client_id\":13,\"po_no\":\"4501061855\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T13:29:16.000000Z\",\"updated_at\":\"2024-06-10T13:29:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:29:16', '2024-06-10 13:29:16'),
(57, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 5, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":5,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":426,\"carton_name\":\"Nulax- Plus 170ml\",\"carton_size\":\"54X54X130\",\"quantity\":9592,\"rate\":\"2.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"20214856\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:29:16.000000Z\",\"updated_at\":\"2024-06-10T13:29:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:29:16', '2024-06-10 13:29:16'),
(58, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 14, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":14,\"first_name\":\"Akums AKUMS Drugs & Pharmaceuticals Ltd.\",\"last_name\":\"(Plant 4 - Hormones)\",\"full_name\":\"Akums AKUMS Drugs & Pharmaceuticals Ltd. (Plant 4 - Hormones)\",\"company_name\":\"Akums AKUMS Drugs & Pharmaceuticals Ltd.(Plant 4 - Hormones)\",\"email\":\"plant4@akums.in\",\"mobile\":\"01334-239947\",\"state\":\"UTTARAKHAND\",\"city\":\"Haridwar\",\"address\":\"Plot No. 47 & 48, Sector 6A,\\r\\n I.I.E. SIDCUL,Ranipur\\r\\n Haridwar\\r\\n UTTARAKHAND \\r\\nINDIA 249403\",\"pincode\":\"249403\",\"gst\":\"05AAECA7090B1Z2\",\"media_id\":null,\"color\":\"success\",\"name_init\":\"A(\",\"created_at\":\"2024-06-10T13:33:07.000000Z\",\"updated_at\":\"2024-06-10T13:33:07.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:33:07', '2024-06-10 13:33:07'),
(59, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 474, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":474,\"dye_no\":\"909\",\"length\":100,\"width\":38,\"height\":62,\"dye_lock\":\"lockbottom\",\"ups\":4,\"sheet_size\":\"11.5X19\",\"automatic\":0,\"carton_size\":\"100X38X62\",\"created_at\":\"2024-06-10T13:39:28.000000Z\",\"updated_at\":\"2024-06-10T13:39:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:39:28', '2024-06-10 13:39:28'),
(60, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 2, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":2,\"client_id\":12,\"po_no\":\"4501061796\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T13:11:39.000000Z\",\"updated_at\":\"2024-06-10T13:42:36.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"client_id\":12,\"po_no\":\"4501061796\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T13:11:39.000000Z\",\"updated_at\":\"2024-06-10T13:11:39.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:42:36', '2024-06-10 13:42:36'),
(61, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 3, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":3,\"client_id\":13,\"po_no\":\"4501061855\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T13:29:16.000000Z\",\"updated_at\":\"2024-06-10T13:42:38.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"client_id\":13,\"po_no\":\"4501061855\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T13:29:16.000000Z\",\"updated_at\":\"2024-06-10T13:29:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:42:38', '2024-06-10 13:42:38'),
(62, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 3, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":3,\"client_id\":13,\"po_no\":\"4501061855\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":8,\"designer\":10,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T13:29:16.000000Z\",\"updated_at\":\"2024-06-10T13:44:05.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"client_id\":13,\"po_no\":\"4501061855\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T13:29:16.000000Z\",\"updated_at\":\"2024-06-10T13:42:38.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:44:05', '2024-06-10 13:44:05'),
(63, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 4, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"AMPLUS-LB\",\"carton_size\":\"170X65X98\",\"quantity\":2000,\"rate\":\"4.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20220268\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:11:39.000000Z\",\"updated_at\":\"2024-06-10T13:45:12.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"AMPLUS-LB\",\"carton_size\":\"170X65X98\",\"quantity\":2000,\"rate\":\"4.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20220268\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:11:39.000000Z\",\"updated_at\":\"2024-06-10T13:11:39.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:45:12', '2024-06-10 13:45:12'),
(64, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 4, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"AMPLUS-LB\",\"carton_size\":\"170X65X98\",\"quantity\":2000,\"rate\":\"4.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20220268\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:11:39.000000Z\",\"updated_at\":\"2024-06-10T13:45:13.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"AMPLUS-LB\",\"carton_size\":\"170X65X98\",\"quantity\":2000,\"rate\":\"4.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20220268\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:11:39.000000Z\",\"updated_at\":\"2024-06-10T13:45:12.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:45:13', '2024-06-10 13:45:13'),
(65, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 4, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"AMPLUS-LB\",\"carton_size\":\"170X65X98\",\"quantity\":2000,\"rate\":\"4.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20220268\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-10T13:11:39.000000Z\",\"updated_at\":\"2024-06-10T13:45:35.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"purchase_order_id\":2,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"AMPLUS-LB\",\"carton_size\":\"170X65X98\",\"quantity\":2000,\"rate\":\"4.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20220268\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:11:39.000000Z\",\"updated_at\":\"2024-06-10T13:45:13.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:45:35', '2024-06-10 13:45:35'),
(66, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 5, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":5,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":426,\"carton_name\":\"Nulax- Plus 170ml\",\"carton_size\":\"54X54X130\",\"quantity\":9592,\"rate\":\"2.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"20214856\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:29:16.000000Z\",\"updated_at\":\"2024-06-10T13:45:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":426,\"carton_name\":\"Nulax- Plus 170ml\",\"carton_size\":\"54X54X130\",\"quantity\":9592,\"rate\":\"2.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"20214856\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:29:16.000000Z\",\"updated_at\":\"2024-06-10T13:29:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:45:54', '2024-06-10 13:45:54'),
(67, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 5, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":5,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":426,\"carton_name\":\"Nulax- Plus 170ml\",\"carton_size\":\"54X54X130\",\"quantity\":9592,\"rate\":\"2.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"20214856\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:29:16.000000Z\",\"updated_at\":\"2024-06-10T13:45:57.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":426,\"carton_name\":\"Nulax- Plus 170ml\",\"carton_size\":\"54X54X130\",\"quantity\":9592,\"rate\":\"2.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"20214856\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:29:16.000000Z\",\"updated_at\":\"2024-06-10T13:45:54.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:45:57', '2024-06-10 13:45:57'),
(68, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 5, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":5,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":426,\"carton_name\":\"Nulax- Plus 170ml\",\"carton_size\":\"54X54X130\",\"quantity\":9592,\"rate\":\"2.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"20214856\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-10T13:29:16.000000Z\",\"updated_at\":\"2024-06-10T13:46:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":5,\"purchase_order_id\":3,\"product_id\":null,\"dye_details_id\":426,\"carton_name\":\"Nulax- Plus 170ml\",\"carton_size\":\"54X54X130\",\"quantity\":9592,\"rate\":\"2.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"20214856\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:29:16.000000Z\",\"updated_at\":\"2024-06-10T13:45:57.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:46:00', '2024-06-10 13:46:00'),
(69, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 4, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":4,\"client_id\":1,\"po_no\":\"23\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:46:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:46:10', '2024-06-10 13:46:10'),
(70, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":5,\"carton_name\":\"corpogest 400\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":12,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:46:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:46:10', '2024-06-10 13:46:10'),
(71, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 4, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":4,\"client_id\":1,\"po_no\":\"23\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":1,\"designer\":10,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:46:35.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"client_id\":1,\"po_no\":\"23\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":1,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:46:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:46:35', '2024-06-10 13:46:35'),
(72, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 4, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":4,\"client_id\":14,\"po_no\":\"7600022749\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:49:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"client_id\":1,\"po_no\":\"23\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":1,\"designer\":10,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:46:35.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:49:00', '2024-06-10 13:49:00'),
(73, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 6, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":6,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":474,\"carton_name\":\"corpogest 400\",\"carton_size\":\"100X38X62\",\"quantity\":3448,\"rate\":\"2.60\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20193806\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:49:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":5,\"carton_name\":\"corpogest 400\",\"carton_size\":\"57X37X100\",\"quantity\":2000,\"rate\":\"2.55\",\"gst\":\"18.00\",\"coating_type_id\":2,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":12,\"art_work\":\"354\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:46:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:49:00', '2024-06-10 13:49:00'),
(74, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 6, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":6,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":474,\"carton_name\":\"corpogest 400\",\"carton_size\":\"100X38X62\",\"quantity\":3448,\"rate\":\"2.60\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20193806\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:52:32.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":474,\"carton_name\":\"corpogest 400\",\"carton_size\":\"100X38X62\",\"quantity\":3448,\"rate\":\"2.60\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20193806\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:49:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:52:32', '2024-06-10 13:52:32'),
(75, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 6, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":6,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":474,\"carton_name\":\"corpogest 400\",\"carton_size\":\"100X38X62\",\"quantity\":3448,\"rate\":\"2.60\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20193806\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:52:33.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":474,\"carton_name\":\"corpogest 400\",\"carton_size\":\"100X38X62\",\"quantity\":3448,\"rate\":\"2.60\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20193806\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:52:32.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:52:33', '2024-06-10 13:52:33'),
(76, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 6, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":6,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":474,\"carton_name\":\"corpogest 400\",\"carton_size\":\"100X38X62\",\"quantity\":3448,\"rate\":\"2.60\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20193806\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:52:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"purchase_order_id\":4,\"product_id\":null,\"dye_details_id\":474,\"carton_name\":\"corpogest 400\",\"carton_size\":\"100X38X62\",\"quantity\":3448,\"rate\":\"2.60\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20193806\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-10T13:46:10.000000Z\",\"updated_at\":\"2024-06-10T13:52:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 13:52:40', '2024-06-10 13:52:40'),
(77, 'product', 'product has been created', 'App\\Models\\Product', 'created', 44, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":44,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"P1\",\"name\":\"23X32-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"759.74\",\"item_per_packet\":5000,\"weight_per_piece\":\"0.15\",\"length\":\"23.00\",\"width\":\"32.00\",\"gsm\":320,\"quantity\":null,\"in_hand_quantity\":100,\"type\":1,\"created_at\":\"2024-06-10T14:04:22.000000Z\",\"updated_at\":\"2024-06-10T14:04:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 14:04:22', '2024-06-10 14:04:22'),
(78, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 2, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":2,\"planning_by\":10,\"job_card_no\":\"002\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"16X23\",\"required_sheet\":2389,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":471,\"dye_details\":\"914\\/4-BSO\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5895\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-10T12:55:36.000000Z\",\"updated_at\":\"2024-06-10T14:12:04.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"planning_by\":10,\"job_card_no\":\"002\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"16X23\",\"required_sheet\":2389,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":471,\"dye_details\":\"914\\/4-BSO\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5895\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2024-06-10T12:55:36.000000Z\",\"updated_at\":\"2024-06-10T13:01:56.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 14:12:04', '2024-06-10 14:12:04'),
(79, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 44, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":44,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"P1\",\"name\":\"23X32-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"759.74\",\"item_per_packet\":5000,\"weight_per_piece\":\"0.15\",\"length\":\"23.00\",\"width\":\"32.00\",\"gsm\":320,\"quantity\":\"-1294.00\",\"in_hand_quantity\":100,\"type\":1,\"created_at\":\"2024-06-10T14:04:22.000000Z\",\"updated_at\":\"2024-06-10T14:12:04.000000Z\",\"deleted_at\":null},\"old\":{\"id\":44,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"P1\",\"name\":\"23X32-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"759.74\",\"item_per_packet\":5000,\"weight_per_piece\":\"0.15\",\"length\":\"23.00\",\"width\":\"32.00\",\"gsm\":320,\"quantity\":null,\"in_hand_quantity\":100,\"type\":1,\"created_at\":\"2024-06-10T14:04:22.000000Z\",\"updated_at\":\"2024-06-10T14:04:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 14:12:04', '2024-06-10 14:12:04'),
(80, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 2, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":2,\"planning_by\":10,\"job_card_no\":\"002\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"16X23\",\"required_sheet\":2389,\"wastage_sheet\":null,\"total_sheet\":4978,\"paper_divide\":null,\"dye_details_id\":471,\"dye_details\":\"914\\/4-BSO\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5895\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-10T12:55:36.000000Z\",\"updated_at\":\"2024-06-10T14:12:04.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"planning_by\":10,\"job_card_no\":\"002\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"16X23\",\"required_sheet\":2389,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":471,\"dye_details\":\"914\\/4-BSO\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5895\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"none\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-10T12:55:36.000000Z\",\"updated_at\":\"2024-06-10T14:12:04.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 14:12:04', '2024-06-10 14:12:04'),
(81, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 1, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":1,\"planning_by\":10,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"16X23.5\",\"required_sheet\":682,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":470,\"dye_details\":\"915\\/1-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5894\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-10T12:55:06.000000Z\",\"updated_at\":\"2024-06-10T14:15:13.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"planning_by\":10,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"16X23.5\",\"required_sheet\":682,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":470,\"dye_details\":\"915\\/1-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5894\",\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":2,\"created_at\":\"2024-06-10T12:55:06.000000Z\",\"updated_at\":\"2024-06-10T13:01:50.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 14:15:13', '2024-06-10 14:15:13'),
(82, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 13, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":13,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"123\",\"name\":\"25X38-290\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"17.77\",\"item_per_packet\":100,\"weight_per_piece\":\"0.18\",\"length\":\"25.00\",\"width\":\"38.00\",\"gsm\":290,\"quantity\":\"-241.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-09T16:32:44.000000Z\",\"updated_at\":\"2024-06-10T14:15:13.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"123\",\"name\":\"25X38-290\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"17.77\",\"item_per_packet\":100,\"weight_per_piece\":\"0.18\",\"length\":\"25.00\",\"width\":\"38.00\",\"gsm\":290,\"quantity\":\"200.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-09T16:32:44.000000Z\",\"updated_at\":\"2024-06-09T16:32:44.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 14:15:13', '2024-06-10 14:15:13'),
(83, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 1, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":1,\"planning_by\":10,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"16X23.5\",\"required_sheet\":682,\"wastage_sheet\":null,\"total_sheet\":882,\"paper_divide\":null,\"dye_details_id\":470,\"dye_details\":\"915\\/1-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5894\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-10T12:55:06.000000Z\",\"updated_at\":\"2024-06-10T14:15:13.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"planning_by\":10,\"job_card_no\":\"001\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"16X23.5\",\"required_sheet\":682,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":470,\"dye_details\":\"915\\/1-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5894\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":1,\"created_at\":\"2024-06-10T12:55:06.000000Z\",\"updated_at\":\"2024-06-10T14:15:13.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 14:15:13', '2024-06-10 14:15:13'),
(84, 'product', 'product has been created', 'App\\Models\\Product', 'created', 45, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":45,\"product_type_id\":17,\"unit_id\":3,\"paper_type\":null,\"code\":\"Pidi-002\",\"name\":\"2000L\",\"category_id\":7,\"hsn\":3219,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"50.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-10T14:15:17.000000Z\",\"updated_at\":\"2024-06-10T14:15:17.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 14:15:17', '2024-06-10 14:15:17'),
(85, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 45, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":45,\"product_type_id\":17,\"unit_id\":3,\"paper_type\":null,\"code\":\"Pidi-002\",\"name\":\"2000L\",\"category_id\":7,\"hsn\":3219,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"50.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-10T14:15:17.000000Z\",\"updated_at\":\"2024-06-10T14:37:15.000000Z\",\"deleted_at\":null},\"old\":{\"id\":45,\"product_type_id\":17,\"unit_id\":3,\"paper_type\":null,\"code\":\"Pidi-002\",\"name\":\"2000L\",\"category_id\":7,\"hsn\":3219,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"50.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-10T14:15:17.000000Z\",\"updated_at\":\"2024-06-10T14:15:17.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-10 14:37:15', '2024-06-10 14:37:15'),
(86, 'product', 'product has been created', 'App\\Models\\Product', 'created', 46, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":46,\"product_type_id\":18,\"unit_id\":1,\"paper_type\":null,\"code\":\"5ply-003\",\"name\":\"640*280*302 C\\/ Box\",\"category_id\":8,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"1.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T04:52:17.000000Z\",\"updated_at\":\"2024-06-11T04:52:17.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 04:52:17', '2024-06-11 04:52:17'),
(87, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 46, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":46,\"product_type_id\":18,\"unit_id\":1,\"paper_type\":null,\"code\":\"5ply-003\",\"name\":\"640*280*302 C\\/ Box\",\"category_id\":8,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"1.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T04:52:17.000000Z\",\"updated_at\":\"2024-06-11T04:52:26.000000Z\",\"deleted_at\":null},\"old\":{\"id\":46,\"product_type_id\":18,\"unit_id\":1,\"paper_type\":null,\"code\":\"5ply-003\",\"name\":\"640*280*302 C\\/ Box\",\"category_id\":8,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"1.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T04:52:17.000000Z\",\"updated_at\":\"2024-06-11T04:52:17.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 04:52:26', '2024-06-11 04:52:26'),
(88, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\MaterialOrderItem', 'created', 2, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":2,\"material_order_id\":2,\"category_id\":8,\"product_id\":46,\"item_name\":\"640*280*302 C\\/ Box\",\"quantity\":\"1000.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"1.00\",\"total_weight\":\"1000.00\",\"unit_id\":1,\"rate_on\":\"34.50\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"1000.00\",\"rate\":\"34500.00\",\"gst\":\"18.00\",\"gst_amount\":\"6210.00\",\"amount\":\"34500.00\",\"receive_status\":0,\"created_at\":\"2024-06-11T04:57:09.000000Z\",\"updated_at\":\"2024-06-11T04:57:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 04:57:09', '2024-06-11 04:57:09'),
(89, 'product', 'product has been created', 'App\\Models\\Product', 'created', 47, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":47,\"product_type_id\":15,\"unit_id\":3,\"paper_type\":null,\"code\":\"GP-004\",\"name\":\"Plate Cleaner GP TECHNOVA\",\"category_id\":5,\"hsn\":3814,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"5.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T05:09:10.000000Z\",\"updated_at\":\"2024-06-11T05:09:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 05:09:10', '2024-06-11 05:09:10'),
(90, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 47, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":47,\"product_type_id\":15,\"unit_id\":3,\"paper_type\":null,\"code\":\"GP-004\",\"name\":\"Plate Cleaner GP TECHNOVA\",\"category_id\":5,\"hsn\":3814,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"5.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"-5.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T05:09:10.000000Z\",\"updated_at\":\"2024-06-11T05:10:03.000000Z\",\"deleted_at\":null},\"old\":{\"id\":47,\"product_type_id\":15,\"unit_id\":3,\"paper_type\":null,\"code\":\"GP-004\",\"name\":\"Plate Cleaner GP TECHNOVA\",\"category_id\":5,\"hsn\":3814,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"5.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T05:09:10.000000Z\",\"updated_at\":\"2024-06-11T05:09:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 05:10:03', '2024-06-11 05:10:03'),
(91, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 47, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":47,\"product_type_id\":15,\"unit_id\":3,\"paper_type\":null,\"code\":\"GP-004\",\"name\":\"Plate Cleaner GP TECHNOVA\",\"category_id\":5,\"hsn\":3814,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"5.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"-1.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T05:09:10.000000Z\",\"updated_at\":\"2024-06-11T05:11:43.000000Z\",\"deleted_at\":null},\"old\":{\"id\":47,\"product_type_id\":15,\"unit_id\":3,\"paper_type\":null,\"code\":\"GP-004\",\"name\":\"Plate Cleaner GP TECHNOVA\",\"category_id\":5,\"hsn\":3814,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"5.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"-5.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T05:09:10.000000Z\",\"updated_at\":\"2024-06-11T05:10:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 05:11:43', '2024-06-11 05:11:43'),
(92, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\MaterialOrderItem', 'updated', 2, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":2,\"material_order_id\":2,\"category_id\":8,\"product_id\":46,\"item_name\":\"640*280*302 C\\/ Box\",\"quantity\":\"1000.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"1.00\",\"total_weight\":\"1000.00\",\"unit_id\":1,\"rate_on\":\"34.50\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"1000.00\",\"rate\":\"34500.00\",\"gst\":\"18.00\",\"gst_amount\":\"6210.00\",\"amount\":\"34500.00\",\"receive_status\":1,\"created_at\":\"2024-06-11T04:57:09.000000Z\",\"updated_at\":\"2024-06-11T05:32:52.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"material_order_id\":2,\"category_id\":8,\"product_id\":46,\"item_name\":\"640*280*302 C\\/ Box\",\"quantity\":\"1000.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"1.00\",\"total_weight\":\"1000.00\",\"unit_id\":1,\"rate_on\":\"34.50\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"1000.00\",\"rate\":\"34500.00\",\"gst\":\"18.00\",\"gst_amount\":\"6210.00\",\"amount\":\"34500.00\",\"receive_status\":0,\"created_at\":\"2024-06-11T04:57:09.000000Z\",\"updated_at\":\"2024-06-11T04:57:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 05:32:52', '2024-06-11 05:32:52'),
(93, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\MaterialOrderItem', 'updated', 1, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":1,\"material_order_id\":1,\"category_id\":5,\"product_id\":43,\"item_name\":\"Lithochem Yellow\",\"quantity\":\"1.00\",\"hsn\":\"2315\",\"weight_per_piece\":\"24.00\",\"total_weight\":\"24.00\",\"unit_id\":5,\"rate_on\":\"170.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"1.00\",\"rate\":\"4080.00\",\"gst\":\"18.00\",\"gst_amount\":\"734.40\",\"amount\":\"4080.00\",\"receive_status\":1,\"created_at\":\"2024-06-10T10:14:56.000000Z\",\"updated_at\":\"2024-06-11T05:33:25.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"material_order_id\":1,\"category_id\":5,\"product_id\":43,\"item_name\":\"Lithochem Yellow\",\"quantity\":\"1.00\",\"hsn\":\"2315\",\"weight_per_piece\":\"24.00\",\"total_weight\":\"24.00\",\"unit_id\":5,\"rate_on\":\"170.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"1.00\",\"rate\":\"4080.00\",\"gst\":\"18.00\",\"gst_amount\":\"734.40\",\"amount\":\"4080.00\",\"receive_status\":0,\"created_at\":\"2024-06-10T10:14:56.000000Z\",\"updated_at\":\"2024-06-10T10:14:56.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 05:33:25', '2024-06-11 05:33:25'),
(94, 'product', 'product has been created', 'App\\Models\\Product', 'created', 48, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":48,\"product_type_id\":15,\"unit_id\":3,\"paper_type\":null,\"code\":\"AW(50001)-005\",\"name\":\"Aqua Warnish(50001)\",\"category_id\":5,\"hsn\":32089090,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"20.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T06:21:24.000000Z\",\"updated_at\":\"2024-06-11T06:21:24.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 06:21:24', '2024-06-11 06:21:24'),
(95, 'Material Inward', 'Material Inward has been created', 'App\\Models\\MaterialInward', 'created', 1, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":1,\"receipt_no\":\"REC0001\",\"vendor_id\":6,\"bill_no\":\"INV-1193\",\"bill_date\":\"2024-06-10T18:30:00.000000Z\",\"subtotal\":null,\"total_gst\":null,\"total\":null,\"material_order_no\":\"22\",\"created_at\":\"2024-06-11T06:23:46.000000Z\",\"updated_at\":\"2024-06-11T06:23:46.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 06:23:46', '2024-06-11 06:23:46'),
(96, 'Material Inward Item', 'Material Inward Item has been created', 'App\\Models\\MaterialInwardItem', 'created', 1, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":1,\"material_inward_id\":1,\"category_id\":5,\"product_id\":48,\"item_name\":\"Aqua Warnish(50001)\",\"quantity\":\"11.00\",\"hsn\":\"32089090\",\"weight_per_piece\":\"20.00\",\"total_weight\":\"220.00\",\"unit\":\"KG\",\"rate_on\":\"115.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"11.00\",\"rate\":\"25300.00\",\"gst\":\"18.00\",\"gst_amount\":\"4554.00\",\"amount\":\"25300.00\",\"created_at\":\"2024-06-11T06:23:46.000000Z\",\"updated_at\":\"2024-06-11T06:23:46.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 06:23:46', '2024-06-11 06:23:46'),
(97, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 48, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":48,\"product_type_id\":15,\"unit_id\":3,\"paper_type\":null,\"code\":\"AW(50001)-005\",\"name\":\"Aqua Warnish(50001)\",\"category_id\":5,\"hsn\":32089090,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"20.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"11.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T06:21:24.000000Z\",\"updated_at\":\"2024-06-11T06:23:46.000000Z\",\"deleted_at\":null},\"old\":{\"id\":48,\"product_type_id\":15,\"unit_id\":3,\"paper_type\":null,\"code\":\"AW(50001)-005\",\"name\":\"Aqua Warnish(50001)\",\"category_id\":5,\"hsn\":32089090,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"20.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T06:21:24.000000Z\",\"updated_at\":\"2024-06-11T06:21:24.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 06:23:46', '2024-06-11 06:23:46');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(98, 'Material Inward', 'Material Inward has been updated', 'App\\Models\\MaterialInward', 'updated', 1, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":1,\"receipt_no\":\"REC0001\",\"vendor_id\":6,\"bill_no\":\"INV-1193\",\"bill_date\":\"2024-06-10T18:30:00.000000Z\",\"subtotal\":\"25300.00\",\"total_gst\":\"4554.00\",\"total\":\"29854.00\",\"material_order_no\":\"22\",\"created_at\":\"2024-06-11T06:23:46.000000Z\",\"updated_at\":\"2024-06-11T06:23:46.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"receipt_no\":\"REC0001\",\"vendor_id\":\"6\",\"bill_no\":\"INV-1193\",\"bill_date\":\"2024-06-10T18:30:00.000000Z\",\"subtotal\":null,\"total_gst\":null,\"total\":null,\"material_order_no\":\"22\",\"created_at\":\"2024-06-11T06:23:46.000000Z\",\"updated_at\":\"2024-06-11T06:23:46.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 06:23:46', '2024-06-11 06:23:46'),
(99, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 15, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":15,\"first_name\":\"Windlas Biotech Limited\",\"last_name\":\"Plant - 3\",\"full_name\":\"Windlas Biotech Limited Plant - 3\",\"company_name\":\"Windlas Biotech Plant 2\",\"email\":\"pmpurchase@windlasbiotech.com\",\"mobile\":\"09837079820\",\"state\":\"Uttarakhand\",\"city\":\"Dehradun\",\"address\":\"WINDLAS BIOTECH LIMITED (CENTRAL WAREHOUSE) \\r\\nKhasra No-141 to 143 & 145 Mohabewala Industrial Area, Dehradun - 248110, \\r\\nUttarakhand, India\",\"pincode\":\"248110\",\"gst\":\"05AAACW3417C1ZV\",\"media_id\":null,\"color\":\"warning\",\"name_init\":\"WP\",\"created_at\":\"2024-06-11T06:39:03.000000Z\",\"updated_at\":\"2024-06-11T06:39:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 06:39:03', '2024-06-11 06:39:03'),
(100, 'Client', 'Client has been updated', 'App\\Models\\Client', 'updated', 15, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":15,\"first_name\":\"Windlas Biotech Limited\",\"last_name\":\"Plant - 3\",\"full_name\":\"Windlas Biotech Limited Plant - 3\",\"company_name\":\"Windlas Biotech Plant 3\",\"email\":\"PCTEAM@windlasbiotech.com\",\"mobile\":\"09837079820\",\"state\":\"Uttarakhand\",\"city\":\"Dehradun\",\"address\":\"WINDLAS BIOTECH LIMITED PLANT-3 \\r\\nLot No. 39, Industrial Area,Pharma City,Selaqui, Dehradun - 248171, Uttarakhand,  India\",\"pincode\":\"248171\",\"gst\":\"05AAACW3417C1ZV\",\"media_id\":null,\"color\":\"warning\",\"name_init\":\"WP\",\"created_at\":\"2024-06-11T06:39:03.000000Z\",\"updated_at\":\"2024-06-11T06:45:44.000000Z\",\"deleted_at\":null},\"old\":{\"id\":15,\"first_name\":\"Windlas Biotech Limited\",\"last_name\":\"Plant - 3\",\"full_name\":\"Windlas Biotech Limited Plant - 3\",\"company_name\":\"Windlas Biotech Plant 2\",\"email\":\"pmpurchase@windlasbiotech.com\",\"mobile\":\"09837079820\",\"state\":\"Uttarakhand\",\"city\":\"Dehradun\",\"address\":\"WINDLAS BIOTECH LIMITED (CENTRAL WAREHOUSE) \\r\\nKhasra No-141 to 143 & 145 Mohabewala Industrial Area, Dehradun - 248110, \\r\\nUttarakhand, India\",\"pincode\":\"248110\",\"gst\":\"05AAACW3417C1ZV\",\"media_id\":null,\"color\":\"warning\",\"name_init\":\"WP\",\"created_at\":\"2024-06-11T06:39:03.000000Z\",\"updated_at\":\"2024-06-11T06:39:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 06:45:44', '2024-06-11 06:45:44'),
(101, 'Client', 'Client has been updated', 'App\\Models\\Client', 'updated', 15, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":15,\"first_name\":\"Windlas\",\"last_name\":\"Biotech\",\"full_name\":\"Windlas Biotech\",\"company_name\":\"Windlas Biotech Plant 3\",\"email\":\"PCTEAM@windlasbiotech.com\",\"mobile\":\"09837079820\",\"state\":\"Uttarakhand\",\"city\":\"Dehradun\",\"address\":\"WINDLAS BIOTECH LIMITED PLANT-3 \\r\\nLot No. 39, Industrial Area,Pharma City,Selaqui, Dehradun - 248171, Uttarakhand,  India\",\"pincode\":\"248171\",\"gst\":\"05AAACW3417C1ZV\",\"media_id\":null,\"color\":\"warning\",\"name_init\":\"WB\",\"created_at\":\"2024-06-11T06:39:03.000000Z\",\"updated_at\":\"2024-06-11T06:47:05.000000Z\",\"deleted_at\":null},\"old\":{\"id\":15,\"first_name\":\"Windlas Biotech Limited\",\"last_name\":\"Plant - 3\",\"full_name\":\"Windlas Biotech Limited Plant - 3\",\"company_name\":\"Windlas Biotech Plant 3\",\"email\":\"PCTEAM@windlasbiotech.com\",\"mobile\":\"09837079820\",\"state\":\"Uttarakhand\",\"city\":\"Dehradun\",\"address\":\"WINDLAS BIOTECH LIMITED PLANT-3 \\r\\nLot No. 39, Industrial Area,Pharma City,Selaqui, Dehradun - 248171, Uttarakhand,  India\",\"pincode\":\"248171\",\"gst\":\"05AAACW3417C1ZV\",\"media_id\":null,\"color\":\"warning\",\"name_init\":\"WP\",\"created_at\":\"2024-06-11T06:39:03.000000Z\",\"updated_at\":\"2024-06-11T06:45:44.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 06:47:05', '2024-06-11 06:47:05'),
(102, 'Client', 'Client has been updated', 'App\\Models\\Client', 'updated', 15, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":15,\"first_name\":\"Windlas\",\"last_name\":\"Biotech\",\"full_name\":\"Windlas Biotech\",\"company_name\":\"Windlas Biotech Plant 3\",\"email\":\"pcteam@windlasbiotech.com\",\"mobile\":\"09837079820\",\"state\":\"Uttarakhand\",\"city\":\"Dehradun\",\"address\":\"WINDLAS BIOTECH LIMITED PLANT-3 \\r\\nLot No. 39, Industrial Area,Pharma City,Selaqui, Dehradun - 248171, Uttarakhand,  India\",\"pincode\":\"248171\",\"gst\":\"05AAACW3417C1ZV\",\"media_id\":null,\"color\":\"warning\",\"name_init\":\"WB\",\"created_at\":\"2024-06-11T06:39:03.000000Z\",\"updated_at\":\"2024-06-11T06:47:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":15,\"first_name\":\"Windlas\",\"last_name\":\"Biotech\",\"full_name\":\"Windlas Biotech\",\"company_name\":\"Windlas Biotech Plant 3\",\"email\":\"PCTEAM@windlasbiotech.com\",\"mobile\":\"09837079820\",\"state\":\"Uttarakhand\",\"city\":\"Dehradun\",\"address\":\"WINDLAS BIOTECH LIMITED PLANT-3 \\r\\nLot No. 39, Industrial Area,Pharma City,Selaqui, Dehradun - 248171, Uttarakhand,  India\",\"pincode\":\"248171\",\"gst\":\"05AAACW3417C1ZV\",\"media_id\":null,\"color\":\"warning\",\"name_init\":\"WB\",\"created_at\":\"2024-06-11T06:39:03.000000Z\",\"updated_at\":\"2024-06-11T06:47:05.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 06:47:34', '2024-06-11 06:47:34'),
(103, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 475, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":475,\"dye_no\":\"892\",\"length\":78,\"width\":15,\"height\":123,\"dye_lock\":\"BSO\",\"ups\":9,\"sheet_size\":\"19X23\",\"automatic\":1,\"carton_size\":\"78X15X123\",\"created_at\":\"2024-06-11T07:11:27.000000Z\",\"updated_at\":\"2024-06-11T07:11:27.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 07:11:27', '2024-06-11 07:11:27'),
(104, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 5, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":5,\"client_id\":15,\"po_no\":\"PO\\/24-25\\/000005113\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"New\",\"status_id\":2,\"created_at\":\"2024-06-11T07:19:53.000000Z\",\"updated_at\":\"2024-06-11T07:19:53.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 07:19:53', '2024-06-11 07:19:53'),
(105, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":16,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"126\",\"name\":\"23X36-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"17.09\",\"item_per_packet\":100,\"weight_per_piece\":\"0.17\",\"length\":\"23.00\",\"width\":\"36.00\",\"gsm\":320,\"quantity\":\"446.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-09T16:32:44.000000Z\",\"updated_at\":\"2024-06-11T07:21:17.000000Z\",\"deleted_at\":null},\"old\":{\"id\":16,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"126\",\"name\":\"23X36-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"17.09\",\"item_per_packet\":100,\"weight_per_piece\":\"0.17\",\"length\":\"23.00\",\"width\":\"36.00\",\"gsm\":320,\"quantity\":\"496.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-09T16:32:44.000000Z\",\"updated_at\":\"2024-06-10T13:08:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 07:21:17', '2024-06-11 07:21:17'),
(106, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 3, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":3,\"planning_by\":10,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"18X21\",\"required_sheet\":1309,\"wastage_sheet\":null,\"total_sheet\":1509,\"paper_divide\":null,\"dye_details_id\":472,\"dye_details\":\"899\\/2-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5791\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":13,\"created_at\":\"2024-06-10T12:55:41.000000Z\",\"updated_at\":\"2024-06-11T07:21:17.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null},\"old\":{\"id\":3,\"planning_by\":10,\"job_card_no\":\"003\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"18X21\",\"required_sheet\":1309,\"wastage_sheet\":null,\"total_sheet\":1409,\"paper_divide\":null,\"dye_details_id\":472,\"dye_details\":\"899\\/2-lockbottom\",\"dye_machine\":\"manual\",\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":\"CMYK+P-287\",\"set_no\":\"5791\",\"coating_machine\":\"chemical coating\",\"other_coating_machine\":\"none\",\"coating_window_cutting\":\"window in batch\",\"embossing_leafing\":\"Embossing\",\"roll_used\":\"0\",\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":\"13\",\"created_at\":\"2024-06-10T12:55:41.000000Z\",\"updated_at\":\"2024-06-10T14:20:24.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-11 07:21:17', '2024-06-11 07:21:17'),
(107, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 6, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":6,\"client_id\":15,\"po_no\":\"PO\\/24-25\\/000005113\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-06-11T07:32:00.000000Z\",\"updated_at\":\"2024-06-11T07:32:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 07:32:00', '2024-06-11 07:32:00'),
(108, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 7, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":7,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Sugrcure 40\\/500\",\"carton_size\":\"82X80X80\",\"quantity\":20500,\"rate\":\"3.40\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12408-D0R0\",\"gsm\":330,\"remarks\":\"new dye -- 18X26-4ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T07:32:00.000000Z\",\"updated_at\":\"2024-06-11T07:32:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 07:32:00', '2024-06-11 07:32:00'),
(109, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 476, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":476,\"dye_no\":\"723\",\"length\":165,\"width\":83,\"height\":128,\"dye_lock\":\"lockbottom\",\"ups\":2,\"sheet_size\":\"19X20\",\"automatic\":1,\"carton_size\":\"165X83X128\",\"created_at\":\"2024-06-11T07:49:55.000000Z\",\"updated_at\":\"2024-06-11T07:49:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 07:49:55', '2024-06-11 07:49:55'),
(110, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 477, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":477,\"dye_no\":\"896\",\"length\":45,\"width\":15,\"height\":105,\"dye_lock\":\"BSO\",\"ups\":12,\"sheet_size\":\"16X22\",\"automatic\":1,\"carton_size\":\"45X15X105\",\"created_at\":\"2024-06-11T07:56:52.000000Z\",\"updated_at\":\"2024-06-11T07:56:52.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 07:56:52', '2024-06-11 07:56:52'),
(111, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 478, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":478,\"dye_no\":\"895\",\"length\":165,\"width\":50,\"height\":110,\"dye_lock\":\"lockbottom\",\"ups\":3,\"sheet_size\":\"18x23\",\"automatic\":1,\"carton_size\":\"165X50X110\",\"created_at\":\"2024-06-11T08:02:01.000000Z\",\"updated_at\":\"2024-06-11T08:02:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 08:02:01', '2024-06-11 08:02:01'),
(112, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 479, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":479,\"dye_no\":\"1014\",\"length\":76,\"width\":78,\"height\":121,\"dye_lock\":\"BSO\",\"ups\":2,\"sheet_size\":\"12.75X20\",\"automatic\":1,\"carton_size\":\"76X78X121\",\"created_at\":\"2024-06-11T08:09:18.000000Z\",\"updated_at\":\"2024-06-11T08:09:18.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 08:09:18', '2024-06-11 08:09:18'),
(113, 'Dye Details', 'Dye Details has been updated', 'App\\Models\\DyeDetails', 'updated', 479, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":479,\"dye_no\":\"1014\",\"length\":76,\"width\":78,\"height\":121,\"dye_lock\":\"BSO\",\"ups\":2,\"sheet_size\":\"12.75X20\",\"automatic\":0,\"carton_size\":\"76X78X121\",\"created_at\":\"2024-06-11T08:09:18.000000Z\",\"updated_at\":\"2024-06-11T08:09:48.000000Z\",\"deleted_at\":null},\"old\":{\"id\":479,\"dye_no\":\"1014\",\"length\":76,\"width\":78,\"height\":121,\"dye_lock\":\"BSO\",\"ups\":2,\"sheet_size\":\"12.75X20\",\"automatic\":1,\"carton_size\":\"76X78X121\",\"created_at\":\"2024-06-11T08:09:18.000000Z\",\"updated_at\":\"2024-06-11T08:09:18.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 08:09:48', '2024-06-11 08:09:48'),
(114, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 8, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":8,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Adipostat-CV 20 inner\",\"carton_size\":\"78X15X123\",\"quantity\":10500,\"rate\":\"1.35\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12663-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:42:45.000000Z\",\"updated_at\":\"2024-06-11T08:42:45.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 08:42:45', '2024-06-11 08:42:45'),
(115, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 9, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":9,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Adipostat-CV 20 outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"5.70\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12664-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T08:56:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 08:56:02', '2024-06-11 08:56:02'),
(116, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 10, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton Sonacin 5 inner\",\"carton_size\":\"45X15X105\",\"quantity\":10500,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12685-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T08:56:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 08:56:02', '2024-06-11 08:56:02'),
(117, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 11, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":11,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":478,\"carton_name\":\"Carton Sonacin 5 Outer\",\"carton_size\":\"165X50X110\",\"quantity\":2200,\"rate\":\"5.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12686-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T08:56:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 08:56:02', '2024-06-11 08:56:02'),
(118, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 12, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":12,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Pregarax D 50\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12623-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:01:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:01:28', '2024-06-11 09:01:28'),
(119, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 13, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":13,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Acmerose - CV 10\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12693-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:01:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:01:28', '2024-06-11 09:01:28'),
(120, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 14, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":14,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton MK DAPA M 10_500\",\"carton_size\":\"121X72X76\",\"quantity\":2200,\"rate\":\"4.35\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12567-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 13.75X15.75 - 2ups -- dominant machine\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:03:56.000000Z\",\"updated_at\":\"2024-06-11T09:03:56.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:03:56', '2024-06-11 09:03:56'),
(121, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 480, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":480,\"dye_no\":\"899\",\"length\":165,\"width\":95,\"height\":110,\"dye_lock\":\"lockbottom\",\"ups\":2,\"sheet_size\":\"18X21\",\"automatic\":1,\"carton_size\":\"165X95X110\",\"created_at\":\"2024-06-11T09:09:43.000000Z\",\"updated_at\":\"2024-06-11T09:09:43.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:09:43', '2024-06-11 09:09:43'),
(122, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 15, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":15,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":480,\"carton_name\":\"Carton Montnico - LC outer\",\"carton_size\":\"165X95X110\",\"quantity\":2200,\"rate\":\"8.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12713-D0R0\",\"gsm\":350,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:17:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:17:49', '2024-06-11 09:17:49'),
(123, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 16, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":16,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton montnico - LC inner\",\"carton_size\":\"45X15X105\",\"quantity\":20500,\"rate\":\"1.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12714-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:17:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:17:49', '2024-06-11 09:17:49'),
(124, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 17, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":17,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Feroot\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702-D0R0\",\"gsm\":320,\"remarks\":\"15.75X19 - 4ups -- New Die\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:17:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:17:49', '2024-06-11 09:17:49'),
(125, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 7, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":7,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Sugrcure 40\\/500\",\"carton_size\":\"82X80X80\",\"quantity\":20500,\"rate\":\"3.40\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12408-D0R0\",\"gsm\":330,\"remarks\":\"new dye -- 18X26-4ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T07:32:00.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Sugrcure 40\\/500\",\"carton_size\":\"82X80X80\",\"quantity\":20500,\"rate\":\"3.40\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12408-D0R0\",\"gsm\":330,\"remarks\":\"new dye -- 18X26-4ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T07:32:00.000000Z\",\"updated_at\":\"2024-06-11T07:32:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:09', '2024-06-11 09:18:09'),
(126, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 8, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":8,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Adipostat-CV 20 inner\",\"carton_size\":\"78X15X123\",\"quantity\":10500,\"rate\":\"1.35\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12663-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:42:45.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Adipostat-CV 20 inner\",\"carton_size\":\"78X15X123\",\"quantity\":10500,\"rate\":\"1.35\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12663-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:42:45.000000Z\",\"updated_at\":\"2024-06-11T08:42:45.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:09', '2024-06-11 09:18:09'),
(127, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 9, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":9,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Adipostat-CV 20 outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"5.70\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12664-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Adipostat-CV 20 outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"5.70\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12664-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T08:56:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:09', '2024-06-11 09:18:09'),
(128, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 10, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton Sonacin 5 inner\",\"carton_size\":\"45X15X105\",\"quantity\":10500,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12685-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton Sonacin 5 inner\",\"carton_size\":\"45X15X105\",\"quantity\":10500,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12685-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T08:56:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:09', '2024-06-11 09:18:09'),
(129, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 11, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":11,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":478,\"carton_name\":\"Carton Sonacin 5 Outer\",\"carton_size\":\"165X50X110\",\"quantity\":2200,\"rate\":\"5.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12686-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":11,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":478,\"carton_name\":\"Carton Sonacin 5 Outer\",\"carton_size\":\"165X50X110\",\"quantity\":2200,\"rate\":\"5.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12686-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T08:56:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:09', '2024-06-11 09:18:09'),
(130, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 12, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":12,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Pregarax D 50\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12623-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Pregarax D 50\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12623-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:01:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:09', '2024-06-11 09:18:09'),
(131, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 13, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":13,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Acmerose - CV 10\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12693-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Acmerose - CV 10\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12693-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:01:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:09', '2024-06-11 09:18:09'),
(132, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 14, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":14,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton MK DAPA M 10_500\",\"carton_size\":\"121X72X76\",\"quantity\":2200,\"rate\":\"4.35\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12567-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 13.75X15.75 - 2ups -- dominant machine\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:03:56.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":14,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton MK DAPA M 10_500\",\"carton_size\":\"121X72X76\",\"quantity\":2200,\"rate\":\"4.35\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12567-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 13.75X15.75 - 2ups -- dominant machine\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:03:56.000000Z\",\"updated_at\":\"2024-06-11T09:03:56.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:09', '2024-06-11 09:18:09'),
(133, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 15, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":15,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":480,\"carton_name\":\"Carton Montnico - LC outer\",\"carton_size\":\"165X95X110\",\"quantity\":2200,\"rate\":\"8.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12713-D0R0\",\"gsm\":350,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":15,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":480,\"carton_name\":\"Carton Montnico - LC outer\",\"carton_size\":\"165X95X110\",\"quantity\":2200,\"rate\":\"8.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12713-D0R0\",\"gsm\":350,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:17:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:09', '2024-06-11 09:18:09'),
(134, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 16, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":16,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton montnico - LC inner\",\"carton_size\":\"45X15X105\",\"quantity\":20500,\"rate\":\"1.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12714-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":16,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton montnico - LC inner\",\"carton_size\":\"45X15X105\",\"quantity\":20500,\"rate\":\"1.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12714-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:17:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:09', '2024-06-11 09:18:09'),
(135, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 17, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":17,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Feroot\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702-D0R0\",\"gsm\":320,\"remarks\":\"15.75X19 - 4ups -- New Die\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":17,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Feroot\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702-D0R0\",\"gsm\":320,\"remarks\":\"15.75X19 - 4ups -- New Die\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:17:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:09', '2024-06-11 09:18:09'),
(136, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 7, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":7,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Sugrcure 40\\/500\",\"carton_size\":\"82X80X80\",\"quantity\":20500,\"rate\":\"3.40\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12408-D0R0\",\"gsm\":330,\"remarks\":\"new dye -- 18X26-4ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T07:32:00.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Sugrcure 40\\/500\",\"carton_size\":\"82X80X80\",\"quantity\":20500,\"rate\":\"3.40\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12408-D0R0\",\"gsm\":330,\"remarks\":\"new dye -- 18X26-4ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T07:32:00.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:22', '2024-06-11 09:18:22'),
(137, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 8, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":8,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Adipostat-CV 20 inner\",\"carton_size\":\"78X15X123\",\"quantity\":10500,\"rate\":\"1.35\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12663-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:42:45.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Adipostat-CV 20 inner\",\"carton_size\":\"78X15X123\",\"quantity\":10500,\"rate\":\"1.35\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12663-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:42:45.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:22', '2024-06-11 09:18:22'),
(138, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 9, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":9,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Adipostat-CV 20 outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"5.70\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12664-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Adipostat-CV 20 outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"5.70\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12664-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:22', '2024-06-11 09:18:22'),
(139, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 10, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton Sonacin 5 inner\",\"carton_size\":\"45X15X105\",\"quantity\":10500,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12685-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton Sonacin 5 inner\",\"carton_size\":\"45X15X105\",\"quantity\":10500,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12685-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:22', '2024-06-11 09:18:22'),
(140, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 11, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":11,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":478,\"carton_name\":\"Carton Sonacin 5 Outer\",\"carton_size\":\"165X50X110\",\"quantity\":2200,\"rate\":\"5.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12686-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":11,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":478,\"carton_name\":\"Carton Sonacin 5 Outer\",\"carton_size\":\"165X50X110\",\"quantity\":2200,\"rate\":\"5.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12686-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:22', '2024-06-11 09:18:22'),
(141, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 12, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":12,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Pregarax D 50\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12623-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Pregarax D 50\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12623-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:22', '2024-06-11 09:18:22'),
(142, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 13, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":13,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Acmerose - CV 10\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12693-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Acmerose - CV 10\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12693-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:22', '2024-06-11 09:18:22');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(143, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 14, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":14,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton MK DAPA M 10_500\",\"carton_size\":\"121X72X76\",\"quantity\":2200,\"rate\":\"4.35\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12567-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 13.75X15.75 - 2ups -- dominant machine\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:03:56.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":14,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton MK DAPA M 10_500\",\"carton_size\":\"121X72X76\",\"quantity\":2200,\"rate\":\"4.35\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12567-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 13.75X15.75 - 2ups -- dominant machine\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:03:56.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:22', '2024-06-11 09:18:22'),
(144, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 15, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":15,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":480,\"carton_name\":\"Carton Montnico - LC outer\",\"carton_size\":\"165X95X110\",\"quantity\":2200,\"rate\":\"8.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12713-D0R0\",\"gsm\":350,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":15,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":480,\"carton_name\":\"Carton Montnico - LC outer\",\"carton_size\":\"165X95X110\",\"quantity\":2200,\"rate\":\"8.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12713-D0R0\",\"gsm\":350,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:22', '2024-06-11 09:18:22'),
(145, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 16, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":16,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton montnico - LC inner\",\"carton_size\":\"45X15X105\",\"quantity\":20500,\"rate\":\"1.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12714-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":16,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton montnico - LC inner\",\"carton_size\":\"45X15X105\",\"quantity\":20500,\"rate\":\"1.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12714-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:22', '2024-06-11 09:18:22'),
(146, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 17, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":17,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Feroot\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702-D0R0\",\"gsm\":320,\"remarks\":\"15.75X19 - 4ups -- New Die\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":17,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Feroot\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702-D0R0\",\"gsm\":320,\"remarks\":\"15.75X19 - 4ups -- New Die\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:22', '2024-06-11 09:18:22'),
(147, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 7, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":7,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Sugrcure 40\\/500\",\"carton_size\":\"82X80X80\",\"quantity\":20500,\"rate\":\"3.40\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12408-D0R0\",\"gsm\":330,\"remarks\":\"new dye -- 18X26-4ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T07:32:00.000000Z\",\"updated_at\":\"2024-06-11T09:18:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Sugrcure 40\\/500\",\"carton_size\":\"82X80X80\",\"quantity\":20500,\"rate\":\"3.40\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12408-D0R0\",\"gsm\":330,\"remarks\":\"new dye -- 18X26-4ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T07:32:00.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:34', '2024-06-11 09:18:34'),
(148, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 8, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":8,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Adipostat-CV 20 inner\",\"carton_size\":\"78X15X123\",\"quantity\":10500,\"rate\":\"1.35\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12663-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T08:42:45.000000Z\",\"updated_at\":\"2024-06-11T09:18:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Adipostat-CV 20 inner\",\"carton_size\":\"78X15X123\",\"quantity\":10500,\"rate\":\"1.35\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12663-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:42:45.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:34', '2024-06-11 09:18:34'),
(149, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 9, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":9,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Adipostat-CV 20 outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"5.70\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12664-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Adipostat-CV 20 outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"5.70\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12664-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:34', '2024-06-11 09:18:34'),
(150, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 10, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton Sonacin 5 inner\",\"carton_size\":\"45X15X105\",\"quantity\":10500,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12685-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton Sonacin 5 inner\",\"carton_size\":\"45X15X105\",\"quantity\":10500,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12685-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:34', '2024-06-11 09:18:34'),
(151, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 11, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":11,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":478,\"carton_name\":\"Carton Sonacin 5 Outer\",\"carton_size\":\"165X50X110\",\"quantity\":2200,\"rate\":\"5.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12686-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":11,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":478,\"carton_name\":\"Carton Sonacin 5 Outer\",\"carton_size\":\"165X50X110\",\"quantity\":2200,\"rate\":\"5.40\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12686-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T08:56:02.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:34', '2024-06-11 09:18:34'),
(152, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 12, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":12,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Pregarax D 50\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12623-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:18:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":12,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Pregarax D 50\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12623-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:34', '2024-06-11 09:18:34'),
(153, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 13, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":13,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Acmerose - CV 10\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12693-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:18:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Acmerose - CV 10\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12693-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:01:28.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:34', '2024-06-11 09:18:34'),
(154, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 14, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":14,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton MK DAPA M 10_500\",\"carton_size\":\"121X72X76\",\"quantity\":2200,\"rate\":\"4.35\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12567-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 13.75X15.75 - 2ups -- dominant machine\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T09:03:56.000000Z\",\"updated_at\":\"2024-06-11T09:18:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":14,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton MK DAPA M 10_500\",\"carton_size\":\"121X72X76\",\"quantity\":2200,\"rate\":\"4.35\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12567-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 13.75X15.75 - 2ups -- dominant machine\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:03:56.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:34', '2024-06-11 09:18:34'),
(155, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 15, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":15,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":480,\"carton_name\":\"Carton Montnico - LC outer\",\"carton_size\":\"165X95X110\",\"quantity\":2200,\"rate\":\"8.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12713-D0R0\",\"gsm\":350,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":15,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":480,\"carton_name\":\"Carton Montnico - LC outer\",\"carton_size\":\"165X95X110\",\"quantity\":2200,\"rate\":\"8.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12713-D0R0\",\"gsm\":350,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:34', '2024-06-11 09:18:34'),
(156, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 16, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":16,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton montnico - LC inner\",\"carton_size\":\"45X15X105\",\"quantity\":20500,\"rate\":\"1.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12714-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":16,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":477,\"carton_name\":\"Carton montnico - LC inner\",\"carton_size\":\"45X15X105\",\"quantity\":20500,\"rate\":\"1.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12714-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:34', '2024-06-11 09:18:34'),
(157, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 17, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":17,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Feroot\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702-D0R0\",\"gsm\":320,\"remarks\":\"15.75X19 - 4ups -- New Die\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":17,\"purchase_order_id\":6,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Feroot\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702-D0R0\",\"gsm\":320,\"remarks\":\"15.75X19 - 4ups -- New Die\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:17:49.000000Z\",\"updated_at\":\"2024-06-11T09:18:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:18:34', '2024-06-11 09:18:34'),
(158, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 7, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":7,\"client_id\":10,\"po_no\":\"PO\\/24-25\\/000005114\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"New\",\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T09:54:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:54:21', '2024-06-11 09:54:21'),
(159, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 18, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":18,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"CARTON LINAFIC - 5\",\"carton_size\":\"44X46X102\",\"quantity\":2200,\"rate\":\"3.30\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12403-D0R0\",\"gsm\":330,\"remarks\":\"15.75X20.75-6ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T09:54:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:54:21', '2024-06-11 09:54:21'),
(160, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 19, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":19,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Trizidine\",\"carton_size\":\"50X32X73\",\"quantity\":2200,\"rate\":\"3.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12674-D0R0\",\"gsm\":330,\"remarks\":\"13.75X15.75 - 6 ups new dye - Dominant\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T09:54:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:54:21', '2024-06-11 09:54:21'),
(161, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 20, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":20,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"carton Rabcia DSR\",\"carton_size\":\"147X65X140\",\"quantity\":2200,\"rate\":\"6.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12690-D0R0\",\"gsm\":320,\"remarks\":\"11x17.5 - 1 ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T09:54:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:54:21', '2024-06-11 09:54:21'),
(162, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 21, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":21,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Rabcia L\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12692-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T09:54:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 09:54:21', '2024-06-11 09:54:21'),
(163, 'product', 'product has been created', 'App\\Models\\Product', 'created', 49, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":49,\"product_type_id\":15,\"unit_id\":5,\"paper_type\":null,\"code\":\"EW-006\",\"name\":\"ECO WASH 101K\",\"category_id\":5,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"25.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T10:08:00.000000Z\",\"updated_at\":\"2024-06-11T10:08:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 10:08:00', '2024-06-11 10:08:00'),
(164, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\MaterialOrderItem', 'created', 3, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":3,\"material_order_id\":3,\"category_id\":5,\"product_id\":49,\"item_name\":\"ECO WASH 101K\",\"quantity\":\"4.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"25.00\",\"total_weight\":\"100.00\",\"unit_id\":5,\"rate_on\":\"122.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"4.00\",\"rate\":\"12200.00\",\"gst\":\"18.00\",\"gst_amount\":\"2196.00\",\"amount\":\"12200.00\",\"receive_status\":0,\"created_at\":\"2024-06-11T10:12:50.000000Z\",\"updated_at\":\"2024-06-11T10:12:50.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 10:12:50', '2024-06-11 10:12:50'),
(165, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 21, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":21,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Rabcia L\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12691-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T10:14:03.000000Z\",\"deleted_at\":null},\"old\":{\"id\":21,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Rabcia L\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12692-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T09:54:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 10:14:03', '2024-06-11 10:14:03'),
(166, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 22, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":22,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rabcia 40 DSR\",\"carton_size\":\"70X65X240\",\"quantity\":2200,\"rate\":\"7.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12692-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T10:14:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 10:14:03', '2024-06-11 10:14:03'),
(167, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 23, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":23,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":79,\"carton_name\":\"Carton Sucrader-O- Suspension 200ml\",\"carton_size\":\"60X60X160\",\"quantity\":2200,\"rate\":\"5.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12683-D0R0\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T10:14:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 10:14:03', '2024-06-11 10:14:03'),
(168, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 24, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":24,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertick - 16\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12694-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T10:14:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 10:14:03', '2024-06-11 10:14:03'),
(169, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 25, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":25,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertirick 8\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12695-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T10:23:59.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 10:23:59', '2024-06-11 10:23:59'),
(170, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 26, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":26,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Ursoned 300\",\"carton_size\":\"75X60X70\",\"quantity\":2200,\"rate\":\"3.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12698-D0R0\",\"gsm\":320,\"remarks\":\"12x23-4ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T10:23:59.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 10:23:59', '2024-06-11 10:23:59'),
(171, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\MaterialOrderItem', 'updated', 3, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":3,\"material_order_id\":3,\"category_id\":5,\"product_id\":49,\"item_name\":\"ECO WASH 101K\",\"quantity\":\"4.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"25.00\",\"total_weight\":\"100.00\",\"unit_id\":5,\"rate_on\":\"122.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"4.00\",\"rate\":\"12200.00\",\"gst\":\"18.00\",\"gst_amount\":\"2196.00\",\"amount\":\"12200.00\",\"receive_status\":1,\"created_at\":\"2024-06-11T10:12:50.000000Z\",\"updated_at\":\"2024-06-11T10:24:18.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"material_order_id\":3,\"category_id\":5,\"product_id\":49,\"item_name\":\"ECO WASH 101K\",\"quantity\":\"4.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"25.00\",\"total_weight\":\"100.00\",\"unit_id\":5,\"rate_on\":\"122.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"4.00\",\"rate\":\"12200.00\",\"gst\":\"18.00\",\"gst_amount\":\"2196.00\",\"amount\":\"12200.00\",\"receive_status\":0,\"created_at\":\"2024-06-11T10:12:50.000000Z\",\"updated_at\":\"2024-06-11T10:12:50.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 10:24:18', '2024-06-11 10:24:18'),
(172, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 27, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":27,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton elvitex-AL sachet\",\"carton_size\":\"75X54X93\",\"quantity\":2200,\"rate\":\"4.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12637-D0R0\",\"gsm\":330,\"remarks\":\"12.75X23-4ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T11:16:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 11:16:21', '2024-06-11 11:16:21'),
(173, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 28, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":28,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Pantarick 40\",\"carton_size\":\"110X95X70\",\"quantity\":2200,\"rate\":\"6.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12705-D0R0\",\"gsm\":350,\"remarks\":\"17X24-3ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T11:16:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 11:16:21', '2024-06-11 11:16:21'),
(174, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 29, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":29,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Rabijet - LS outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12653-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T11:16:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 11:16:21', '2024-06-11 11:16:21'),
(175, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 30, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":30,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Rabijet - LS inner\",\"carton_size\":\"78X15X123\",\"quantity\":20500,\"rate\":\"1.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12652-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T11:16:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 11:16:21', '2024-06-11 11:16:21'),
(176, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 31, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":31,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Minokem 2.5\",\"carton_size\":\"54X24X120\",\"quantity\":17000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12701-D0R0\",\"gsm\":350,\"remarks\":\"19X20-9ups -- new dye Pantone colors\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T11:16:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 11:16:21', '2024-06-11 11:16:21'),
(177, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 32, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":32,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Minokem 1.25\",\"carton_size\":\"44X17X102\",\"quantity\":35000,\"rate\":\"1.05\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12700-D0R0\",\"gsm\":350,\"remarks\":\"new die - 16X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T11:16:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 11:16:21', '2024-06-11 11:16:21'),
(178, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 33, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":33,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton feroot Tablets\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702\",\"gsm\":320,\"remarks\":\"19X23-6ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T11:54:08.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 11:54:08', '2024-06-11 11:54:08'),
(179, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 34, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":34,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Mytiga 20\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"4.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12708-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 19X23-6ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T11:54:08.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 11:54:08', '2024-06-11 11:54:08'),
(180, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 35, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":35,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Siaglip-M 100\\/1000\",\"carton_size\":\"158X93X88\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI127065-D0R0\",\"gsm\":320,\"remarks\":\"new dye -- 15.75X20.75-2ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T11:54:08.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 11:54:08', '2024-06-11 11:54:08'),
(181, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 18, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":18,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"CARTON LINAFIC - 5\",\"carton_size\":\"44X46X102\",\"quantity\":2200,\"rate\":\"3.30\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12403-D0R0\",\"gsm\":330,\"remarks\":\"15.75X20.75-6ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":18,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"CARTON LINAFIC - 5\",\"carton_size\":\"44X46X102\",\"quantity\":2200,\"rate\":\"3.30\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12403-D0R0\",\"gsm\":330,\"remarks\":\"15.75X20.75-6ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T09:54:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(182, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 19, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":19,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Trizidine\",\"carton_size\":\"50X32X73\",\"quantity\":2200,\"rate\":\"3.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12674-D0R0\",\"gsm\":330,\"remarks\":\"13.75X15.75 - 6 ups new dye - Dominant\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":19,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Trizidine\",\"carton_size\":\"50X32X73\",\"quantity\":2200,\"rate\":\"3.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12674-D0R0\",\"gsm\":330,\"remarks\":\"13.75X15.75 - 6 ups new dye - Dominant\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T09:54:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(183, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 20, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":20,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"carton Rabcia DSR\",\"carton_size\":\"147X65X140\",\"quantity\":2200,\"rate\":\"6.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12690-D0R0\",\"gsm\":320,\"remarks\":\"11x17.5 - 1 ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":20,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"carton Rabcia DSR\",\"carton_size\":\"147X65X140\",\"quantity\":2200,\"rate\":\"6.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12690-D0R0\",\"gsm\":320,\"remarks\":\"11x17.5 - 1 ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T09:54:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(184, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 21, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":21,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Rabcia L\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12691-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":21,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Rabcia L\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12691-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T10:14:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(185, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 22, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":22,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rabcia 40 DSR\",\"carton_size\":\"70X65X240\",\"quantity\":2200,\"rate\":\"7.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12692-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":22,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rabcia 40 DSR\",\"carton_size\":\"70X65X240\",\"quantity\":2200,\"rate\":\"7.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12692-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T10:14:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(186, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 23, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":23,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":79,\"carton_name\":\"Carton Sucrader-O- Suspension 200ml\",\"carton_size\":\"60X60X160\",\"quantity\":2200,\"rate\":\"5.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12683-D0R0\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":23,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":79,\"carton_name\":\"Carton Sucrader-O- Suspension 200ml\",\"carton_size\":\"60X60X160\",\"quantity\":2200,\"rate\":\"5.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12683-D0R0\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T10:14:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(187, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 24, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":24,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertick - 16\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12694-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":24,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertick - 16\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12694-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T10:14:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(188, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 25, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":25,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertirick 8\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12695-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":25,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertirick 8\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12695-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T10:23:59.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(189, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 26, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":26,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Ursoned 300\",\"carton_size\":\"75X60X70\",\"quantity\":2200,\"rate\":\"3.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12698-D0R0\",\"gsm\":320,\"remarks\":\"12x23-4ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":26,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Ursoned 300\",\"carton_size\":\"75X60X70\",\"quantity\":2200,\"rate\":\"3.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12698-D0R0\",\"gsm\":320,\"remarks\":\"12x23-4ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T10:23:59.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(190, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 27, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":27,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton elvitex-AL sachet\",\"carton_size\":\"75X54X93\",\"quantity\":2200,\"rate\":\"4.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12637-D0R0\",\"gsm\":330,\"remarks\":\"12.75X23-4ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":27,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton elvitex-AL sachet\",\"carton_size\":\"75X54X93\",\"quantity\":2200,\"rate\":\"4.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12637-D0R0\",\"gsm\":330,\"remarks\":\"12.75X23-4ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T11:16:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(191, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 28, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":28,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Pantarick 40\",\"carton_size\":\"110X95X70\",\"quantity\":2200,\"rate\":\"6.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12705-D0R0\",\"gsm\":350,\"remarks\":\"17X24-3ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":28,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Pantarick 40\",\"carton_size\":\"110X95X70\",\"quantity\":2200,\"rate\":\"6.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12705-D0R0\",\"gsm\":350,\"remarks\":\"17X24-3ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T11:16:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(192, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 29, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":29,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Rabijet - LS outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12653-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":29,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Rabijet - LS outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12653-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T11:16:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(193, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 30, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":30,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Rabijet - LS inner\",\"carton_size\":\"78X15X123\",\"quantity\":20500,\"rate\":\"1.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12652-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":30,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Rabijet - LS inner\",\"carton_size\":\"78X15X123\",\"quantity\":20500,\"rate\":\"1.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12652-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T11:16:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(194, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 31, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":31,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Minokem 2.5\",\"carton_size\":\"54X24X120\",\"quantity\":17000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12701-D0R0\",\"gsm\":350,\"remarks\":\"19X20-9ups -- new dye Pantone colors\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":31,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Minokem 2.5\",\"carton_size\":\"54X24X120\",\"quantity\":17000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12701-D0R0\",\"gsm\":350,\"remarks\":\"19X20-9ups -- new dye Pantone colors\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T11:16:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(195, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 32, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":32,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Minokem 1.25\",\"carton_size\":\"44X17X102\",\"quantity\":35000,\"rate\":\"1.05\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12700-D0R0\",\"gsm\":350,\"remarks\":\"new die - 16X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":32,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Minokem 1.25\",\"carton_size\":\"44X17X102\",\"quantity\":35000,\"rate\":\"1.05\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12700-D0R0\",\"gsm\":350,\"remarks\":\"new die - 16X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T11:16:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(196, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 33, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":33,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton feroot Tablets\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702\",\"gsm\":320,\"remarks\":\"19X23-6ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":33,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton feroot Tablets\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702\",\"gsm\":320,\"remarks\":\"19X23-6ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T11:54:08.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(197, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 34, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":34,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Mytiga 20\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"4.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12708-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 19X23-6ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":34,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Mytiga 20\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"4.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12708-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 19X23-6ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T11:54:08.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(198, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 35, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":35,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Siaglip-M 100\\/1000\",\"carton_size\":\"158X93X88\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI127065-D0R0\",\"gsm\":320,\"remarks\":\"new dye -- 15.75X20.75-2ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":35,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Siaglip-M 100\\/1000\",\"carton_size\":\"158X93X88\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI127065-D0R0\",\"gsm\":320,\"remarks\":\"new dye -- 15.75X20.75-2ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T11:54:08.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:55', '2024-06-11 12:04:55'),
(199, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 18, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":18,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"CARTON LINAFIC - 5\",\"carton_size\":\"44X46X102\",\"quantity\":2200,\"rate\":\"3.30\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12403-D0R0\",\"gsm\":330,\"remarks\":\"15.75X20.75-6ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":18,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"CARTON LINAFIC - 5\",\"carton_size\":\"44X46X102\",\"quantity\":2200,\"rate\":\"3.30\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12403-D0R0\",\"gsm\":330,\"remarks\":\"15.75X20.75-6ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(200, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 19, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":19,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Trizidine\",\"carton_size\":\"50X32X73\",\"quantity\":2200,\"rate\":\"3.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12674-D0R0\",\"gsm\":330,\"remarks\":\"13.75X15.75 - 6 ups new dye - Dominant\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":19,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Trizidine\",\"carton_size\":\"50X32X73\",\"quantity\":2200,\"rate\":\"3.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12674-D0R0\",\"gsm\":330,\"remarks\":\"13.75X15.75 - 6 ups new dye - Dominant\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(201, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 20, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":20,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"carton Rabcia DSR\",\"carton_size\":\"147X65X140\",\"quantity\":2200,\"rate\":\"6.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12690-D0R0\",\"gsm\":320,\"remarks\":\"11x17.5 - 1 ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":20,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"carton Rabcia DSR\",\"carton_size\":\"147X65X140\",\"quantity\":2200,\"rate\":\"6.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12690-D0R0\",\"gsm\":320,\"remarks\":\"11x17.5 - 1 ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(202, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 21, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":21,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Rabcia L\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12691-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":21,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Rabcia L\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12691-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(203, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 22, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":22,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rabcia 40 DSR\",\"carton_size\":\"70X65X240\",\"quantity\":2200,\"rate\":\"7.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12692-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":22,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rabcia 40 DSR\",\"carton_size\":\"70X65X240\",\"quantity\":2200,\"rate\":\"7.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12692-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(204, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 23, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":23,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":79,\"carton_name\":\"Carton Sucrader-O- Suspension 200ml\",\"carton_size\":\"60X60X160\",\"quantity\":2200,\"rate\":\"5.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12683-D0R0\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":23,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":79,\"carton_name\":\"Carton Sucrader-O- Suspension 200ml\",\"carton_size\":\"60X60X160\",\"quantity\":2200,\"rate\":\"5.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12683-D0R0\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(205, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 24, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":24,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertick - 16\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12694-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":24,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertick - 16\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12694-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(206, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 25, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":25,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertirick 8\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12695-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":25,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertirick 8\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12695-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(207, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 26, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":26,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Ursoned 300\",\"carton_size\":\"75X60X70\",\"quantity\":2200,\"rate\":\"3.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12698-D0R0\",\"gsm\":320,\"remarks\":\"12x23-4ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":26,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Ursoned 300\",\"carton_size\":\"75X60X70\",\"quantity\":2200,\"rate\":\"3.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12698-D0R0\",\"gsm\":320,\"remarks\":\"12x23-4ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(208, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 27, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":27,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton elvitex-AL sachet\",\"carton_size\":\"75X54X93\",\"quantity\":2200,\"rate\":\"4.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12637-D0R0\",\"gsm\":330,\"remarks\":\"12.75X23-4ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":27,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton elvitex-AL sachet\",\"carton_size\":\"75X54X93\",\"quantity\":2200,\"rate\":\"4.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12637-D0R0\",\"gsm\":330,\"remarks\":\"12.75X23-4ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(209, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 28, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":28,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Pantarick 40\",\"carton_size\":\"110X95X70\",\"quantity\":2200,\"rate\":\"6.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12705-D0R0\",\"gsm\":350,\"remarks\":\"17X24-3ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":28,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Pantarick 40\",\"carton_size\":\"110X95X70\",\"quantity\":2200,\"rate\":\"6.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12705-D0R0\",\"gsm\":350,\"remarks\":\"17X24-3ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(210, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 29, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":29,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Rabijet - LS outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12653-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":29,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Rabijet - LS outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12653-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(211, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 30, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":30,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Rabijet - LS inner\",\"carton_size\":\"78X15X123\",\"quantity\":20500,\"rate\":\"1.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12652-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":30,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Rabijet - LS inner\",\"carton_size\":\"78X15X123\",\"quantity\":20500,\"rate\":\"1.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12652-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(212, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 31, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":31,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Minokem 2.5\",\"carton_size\":\"54X24X120\",\"quantity\":17000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12701-D0R0\",\"gsm\":350,\"remarks\":\"19X20-9ups -- new dye Pantone colors\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":31,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Minokem 2.5\",\"carton_size\":\"54X24X120\",\"quantity\":17000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12701-D0R0\",\"gsm\":350,\"remarks\":\"19X20-9ups -- new dye Pantone colors\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(213, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 32, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":32,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Minokem 1.25\",\"carton_size\":\"44X17X102\",\"quantity\":35000,\"rate\":\"1.05\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12700-D0R0\",\"gsm\":350,\"remarks\":\"new die - 16X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":32,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Minokem 1.25\",\"carton_size\":\"44X17X102\",\"quantity\":35000,\"rate\":\"1.05\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12700-D0R0\",\"gsm\":350,\"remarks\":\"new die - 16X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(214, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 33, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":33,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton feroot Tablets\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702\",\"gsm\":320,\"remarks\":\"19X23-6ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":33,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton feroot Tablets\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702\",\"gsm\":320,\"remarks\":\"19X23-6ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(215, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 34, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":34,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Mytiga 20\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"4.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12708-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 19X23-6ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":34,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Mytiga 20\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"4.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12708-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 19X23-6ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(216, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 35, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":35,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Siaglip-M 100\\/1000\",\"carton_size\":\"158X93X88\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI127065-D0R0\",\"gsm\":320,\"remarks\":\"new dye -- 15.75X20.75-2ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":35,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Siaglip-M 100\\/1000\",\"carton_size\":\"158X93X88\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI127065-D0R0\",\"gsm\":320,\"remarks\":\"new dye -- 15.75X20.75-2ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:04:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:04:58', '2024-06-11 12:04:58'),
(217, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 7, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":7,\"client_id\":10,\"po_no\":\"PO\\/24-25\\/000005114\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":\"New\",\"status_id\":6,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:06:08.000000Z\",\"deleted_at\":null},\"old\":{\"id\":7,\"client_id\":10,\"po_no\":\"PO\\/24-25\\/000005114\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"New\",\"status_id\":6,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:06:08', '2024-06-11 12:06:08'),
(218, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 8, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":8,\"client_id\":15,\"po_no\":\"PO\\/24-25\\/000005179\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"new - urgent\",\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:18:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:18:01', '2024-06-11 12:18:01'),
(219, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 36, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"50X45X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"15X25 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:18:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:18:01', '2024-06-11 12:18:01'),
(220, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 36, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"50X45X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"15X25 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:22:35.000000Z\",\"deleted_at\":null},\"old\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"50X45X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"15X25 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:18:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:22:35', '2024-06-11 12:22:35');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(221, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 36, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"50X45X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"15X25 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:22:38.000000Z\",\"deleted_at\":null},\"old\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"50X45X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"15X25 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:22:35.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:22:38', '2024-06-11 12:22:38'),
(222, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 36, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"50X45X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"15X25 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:23:31.000000Z\",\"deleted_at\":null},\"old\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"50X45X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"15X25 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:22:38.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:31', '2024-06-11 12:23:31'),
(223, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 18, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":18,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"CARTON LINAFIC - 5\",\"carton_size\":\"44X46X102\",\"quantity\":2200,\"rate\":\"3.30\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12403-D0R0\",\"gsm\":330,\"remarks\":\"15.75X20.75-6ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:23:51.000000Z\",\"deleted_at\":null},\"old\":{\"id\":18,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"CARTON LINAFIC - 5\",\"carton_size\":\"44X46X102\",\"quantity\":2200,\"rate\":\"3.30\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12403-D0R0\",\"gsm\":330,\"remarks\":\"15.75X20.75-6ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:51', '2024-06-11 12:23:51'),
(224, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 19, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":19,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Trizidine\",\"carton_size\":\"50X32X73\",\"quantity\":2200,\"rate\":\"3.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12674-D0R0\",\"gsm\":330,\"remarks\":\"13.75X15.75 - 6 ups new dye - Dominant\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:23:51.000000Z\",\"deleted_at\":null},\"old\":{\"id\":19,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Trizidine\",\"carton_size\":\"50X32X73\",\"quantity\":2200,\"rate\":\"3.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12674-D0R0\",\"gsm\":330,\"remarks\":\"13.75X15.75 - 6 ups new dye - Dominant\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:51', '2024-06-11 12:23:51'),
(225, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 20, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":20,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"carton Rabcia DSR\",\"carton_size\":\"147X65X140\",\"quantity\":2200,\"rate\":\"6.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12690-D0R0\",\"gsm\":320,\"remarks\":\"11x17.5 - 1 ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:23:51.000000Z\",\"deleted_at\":null},\"old\":{\"id\":20,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"carton Rabcia DSR\",\"carton_size\":\"147X65X140\",\"quantity\":2200,\"rate\":\"6.90\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12690-D0R0\",\"gsm\":320,\"remarks\":\"11x17.5 - 1 ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:51', '2024-06-11 12:23:51'),
(226, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 21, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":21,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Rabcia L\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12691-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:23:51.000000Z\",\"deleted_at\":null},\"old\":{\"id\":21,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":479,\"carton_name\":\"Carton Rabcia L\",\"carton_size\":\"76X78X121\",\"quantity\":2200,\"rate\":\"4.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12691-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T09:54:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:51', '2024-06-11 12:23:51'),
(227, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 22, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":22,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rabcia 40 DSR\",\"carton_size\":\"70X65X240\",\"quantity\":2200,\"rate\":\"7.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12692-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:23:51.000000Z\",\"deleted_at\":null},\"old\":{\"id\":22,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rabcia 40 DSR\",\"carton_size\":\"70X65X240\",\"quantity\":2200,\"rate\":\"7.15\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12692-D0R0\",\"gsm\":320,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:51', '2024-06-11 12:23:51'),
(228, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 23, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":23,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":79,\"carton_name\":\"Carton Sucrader-O- Suspension 200ml\",\"carton_size\":\"60X60X160\",\"quantity\":2200,\"rate\":\"5.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12683-D0R0\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:23:51.000000Z\",\"deleted_at\":null},\"old\":{\"id\":23,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":79,\"carton_name\":\"Carton Sucrader-O- Suspension 200ml\",\"carton_size\":\"60X60X160\",\"quantity\":2200,\"rate\":\"5.10\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12683-D0R0\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:51', '2024-06-11 12:23:51'),
(229, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 24, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":24,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertick - 16\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12694-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:23:51.000000Z\",\"deleted_at\":null},\"old\":{\"id\":24,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertick - 16\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12694-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:14:03.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:51', '2024-06-11 12:23:51'),
(230, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 25, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":25,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertirick 8\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12695-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T12:23:51.000000Z\",\"deleted_at\":null},\"old\":{\"id\":25,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Vertirick 8\",\"carton_size\":\"64X45X94\",\"quantity\":2200,\"rate\":\"4.30\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12695-D0R0\",\"gsm\":350,\"remarks\":\"19x20-6ups new die - matt varnish\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:51', '2024-06-11 12:23:51'),
(231, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 26, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":26,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Ursoned 300\",\"carton_size\":\"75X60X70\",\"quantity\":2200,\"rate\":\"3.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12698-D0R0\",\"gsm\":320,\"remarks\":\"12x23-4ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T12:23:51.000000Z\",\"deleted_at\":null},\"old\":{\"id\":26,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Ursoned 300\",\"carton_size\":\"75X60X70\",\"quantity\":2200,\"rate\":\"3.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12698-D0R0\",\"gsm\":320,\"remarks\":\"12x23-4ups - new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T10:23:59.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:51', '2024-06-11 12:23:51'),
(232, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 27, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":27,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton elvitex-AL sachet\",\"carton_size\":\"75X54X93\",\"quantity\":2200,\"rate\":\"4.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12637-D0R0\",\"gsm\":330,\"remarks\":\"12.75X23-4ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:23:51.000000Z\",\"deleted_at\":null},\"old\":{\"id\":27,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton elvitex-AL sachet\",\"carton_size\":\"75X54X93\",\"quantity\":2200,\"rate\":\"4.20\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12637-D0R0\",\"gsm\":330,\"remarks\":\"12.75X23-4ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:51', '2024-06-11 12:23:51'),
(233, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 28, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":28,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Pantarick 40\",\"carton_size\":\"110X95X70\",\"quantity\":2200,\"rate\":\"6.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12705-D0R0\",\"gsm\":350,\"remarks\":\"17X24-3ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:23:52.000000Z\",\"deleted_at\":null},\"old\":{\"id\":28,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Pantarick 40\",\"carton_size\":\"110X95X70\",\"quantity\":2200,\"rate\":\"6.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12705-D0R0\",\"gsm\":350,\"remarks\":\"17X24-3ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:52', '2024-06-11 12:23:52'),
(234, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 29, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":29,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Rabijet - LS outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12653-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:23:52.000000Z\",\"deleted_at\":null},\"old\":{\"id\":29,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":476,\"carton_name\":\"Carton Rabijet - LS outer\",\"carton_size\":\"165X83X128\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12653-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:52', '2024-06-11 12:23:52'),
(235, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 30, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":30,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Rabijet - LS inner\",\"carton_size\":\"78X15X123\",\"quantity\":20500,\"rate\":\"1.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12652-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:23:52.000000Z\",\"deleted_at\":null},\"old\":{\"id\":30,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":475,\"carton_name\":\"Carton Rabijet - LS inner\",\"carton_size\":\"78X15X123\",\"quantity\":20500,\"rate\":\"1.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12652-D0R0\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:52', '2024-06-11 12:23:52'),
(236, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 31, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":31,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Minokem 2.5\",\"carton_size\":\"54X24X120\",\"quantity\":17000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12701-D0R0\",\"gsm\":350,\"remarks\":\"19X20-9ups -- new dye Pantone colors\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:23:52.000000Z\",\"deleted_at\":null},\"old\":{\"id\":31,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Minokem 2.5\",\"carton_size\":\"54X24X120\",\"quantity\":17000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12701-D0R0\",\"gsm\":350,\"remarks\":\"19X20-9ups -- new dye Pantone colors\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:52', '2024-06-11 12:23:52'),
(237, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 32, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":32,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Minokem 1.25\",\"carton_size\":\"44X17X102\",\"quantity\":35000,\"rate\":\"1.05\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12700-D0R0\",\"gsm\":350,\"remarks\":\"new die - 16X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:23:52.000000Z\",\"deleted_at\":null},\"old\":{\"id\":32,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Minokem 1.25\",\"carton_size\":\"44X17X102\",\"quantity\":35000,\"rate\":\"1.05\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12700-D0R0\",\"gsm\":350,\"remarks\":\"new die - 16X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:16:21.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:52', '2024-06-11 12:23:52'),
(238, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 33, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":33,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton feroot Tablets\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702\",\"gsm\":320,\"remarks\":\"19X23-6ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:23:52.000000Z\",\"deleted_at\":null},\"old\":{\"id\":33,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton feroot Tablets\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"3.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12702\",\"gsm\":320,\"remarks\":\"19X23-6ups new dye\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:52', '2024-06-11 12:23:52'),
(239, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 34, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":34,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Mytiga 20\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"4.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12708-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 19X23-6ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:23:52.000000Z\",\"deleted_at\":null},\"old\":{\"id\":34,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Mytiga 20\",\"carton_size\":\"62X54X98\",\"quantity\":2200,\"rate\":\"4.45\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12708-D0R0\",\"gsm\":320,\"remarks\":\"new dye - 19X23-6ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:52', '2024-06-11 12:23:52'),
(240, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 35, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":35,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Siaglip-M 100\\/1000\",\"carton_size\":\"158X93X88\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI127065-D0R0\",\"gsm\":320,\"remarks\":\"new dye -- 15.75X20.75-2ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:23:52.000000Z\",\"deleted_at\":null},\"old\":{\"id\":35,\"purchase_order_id\":7,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Siaglip-M 100\\/1000\",\"carton_size\":\"158X93X88\",\"quantity\":2200,\"rate\":\"6.50\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI127065-D0R0\",\"gsm\":320,\"remarks\":\"new dye -- 15.75X20.75-2ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T11:54:08.000000Z\",\"updated_at\":\"2024-06-11T12:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:23:52', '2024-06-11 12:23:52'),
(241, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 36, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"50X45X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"15X25 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:50:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"50X45X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"15X25 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:23:31.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:50:00', '2024-06-11 12:50:00'),
(242, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 36, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"45X50X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"16X23 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:52:47.000000Z\",\"deleted_at\":null},\"old\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"50X45X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"15X25 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:50:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:52:47', '2024-06-11 12:52:47'),
(243, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 36, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"45X50X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"16X23 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:53:12.000000Z\",\"deleted_at\":null},\"old\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"45X50X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"16X23 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:52:47.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 12:53:12', '2024-06-11 12:53:12'),
(244, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 4, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":4,\"planning_by\":10,\"job_card_no\":\"004\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-11T13:30:46.000000Z\",\"updated_at\":\"2024-06-11T13:30:46.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-11 13:30:46', '2024-06-11 13:30:46'),
(245, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 4, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":4,\"job_card_id\":4,\"planning_id\":37,\"purchase_order_id\":8,\"purchase_order_item_id\":36,\"ups\":6,\"quantity\":40000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-11T13:30:46.000000Z\",\"updated_at\":\"2024-06-11T13:30:46.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 13:30:46', '2024-06-11 13:30:46'),
(246, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 4, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":4,\"planning_by\":3,\"job_card_no\":\"004\",\"mix\":1,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":\"New\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-11T13:30:46.000000Z\",\"updated_at\":\"2024-06-11T13:30:46.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null},\"old\":{\"id\":4,\"planning_by\":10,\"job_card_no\":\"004\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-06-11T13:30:46.000000Z\",\"updated_at\":\"2024-06-11T13:30:46.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-11 13:30:46', '2024-06-11 13:30:46'),
(247, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 4, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":4,\"job_card_id\":4,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-06-11T13:30:46.000000Z\",\"updated_at\":\"2024-06-11T13:30:46.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 13:30:46', '2024-06-11 13:30:46'),
(248, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 481, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":481,\"dye_no\":\"1033\",\"length\":45,\"width\":50,\"height\":105,\"dye_lock\":\"BSO\",\"ups\":6,\"sheet_size\":\"23X16\",\"automatic\":1,\"carton_size\":\"45X50X105\",\"created_at\":\"2024-06-11T13:33:06.000000Z\",\"updated_at\":\"2024-06-11T13:33:06.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 13:33:06', '2024-06-11 13:33:06'),
(249, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 9, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":9,\"client_id\":13,\"po_no\":\"4501062413\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"repeat - 300 nos in stock\",\"status_id\":2,\"created_at\":\"2024-06-11T13:34:01.000000Z\",\"updated_at\":\"2024-06-11T13:34:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 13:34:01', '2024-06-11 13:34:01'),
(250, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 37, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":37,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"Carton Oosure Plus\",\"carton_size\":\"170X65X98\",\"quantity\":1000,\"rate\":\"4.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":null,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20218172\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:34:01.000000Z\",\"updated_at\":\"2024-06-11T13:34:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 13:34:01', '2024-06-11 13:34:01'),
(251, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 10, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":10,\"client_id\":2,\"po_no\":\"PMPO0064\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"New\",\"status_id\":2,\"created_at\":\"2024-06-11T13:51:21.000000Z\",\"updated_at\":\"2024-06-11T13:51:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 13:51:21', '2024-06-11 13:51:21'),
(252, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 38, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":38,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Albendazole Susp 10ml\",\"carton_size\":\"32X29X65\",\"quantity\":100500,\"rate\":\"0.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"VR00754\",\"gsm\":280,\"remarks\":\"new dye 19X26-20ups - pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:51:21.000000Z\",\"updated_at\":\"2024-06-11T13:51:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 13:51:21', '2024-06-11 13:51:21'),
(253, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 39, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":39,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Label Albendazole Susp 10ml\",\"carton_size\":\"64X30\",\"quantity\":103000,\"rate\":\"0.06\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":19,\"art_work\":\"VR00945\",\"gsm\":70,\"remarks\":\"Pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:00:19.000000Z\",\"updated_at\":\"2024-06-11T14:00:19.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 14:00:19', '2024-06-11 14:00:19'),
(254, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 11, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":11,\"client_id\":12,\"po_no\":\"4501062143\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-11T14:09:16.000000Z\",\"updated_at\":\"2024-06-11T14:09:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 14:09:16', '2024-06-11 14:09:16'),
(255, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 40, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":40,\"purchase_order_id\":11,\"product_id\":null,\"dye_details_id\":418,\"carton_name\":\"Carton Wilcef-S 375 mg Inj\",\"carton_size\":\"50X30X70\",\"quantity\":9400,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"20215187\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:09:16.000000Z\",\"updated_at\":\"2024-06-11T14:09:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 14:09:16', '2024-06-11 14:09:16'),
(256, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 12, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":12,\"client_id\":13,\"po_no\":\"4501062192\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-06-11T14:14:39.000000Z\",\"updated_at\":\"2024-06-11T14:14:39.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 14:14:39', '2024-06-11 14:14:39'),
(257, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 13, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":13,\"client_id\":13,\"po_no\":\"4501062192\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":null,\"status_id\":2,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-11T14:14:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 14:14:55', '2024-06-11 14:14:55'),
(258, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 41, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":41,\"purchase_order_id\":13,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rozuxa ASP\",\"carton_size\":\"147X90X95\",\"quantity\":2000,\"rate\":\"5.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20185258\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-11T14:14:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 14:14:55', '2024-06-11 14:14:55'),
(259, 'Client', 'Client has been created', 'App\\Models\\Client', 'created', 16, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":16,\"first_name\":\"Windlas\",\"last_name\":\"Biotech\",\"full_name\":\"Windlas Biotech\",\"company_name\":\"Windlas Biotech Plant 1\",\"email\":\"pmpurchase@windlasbiotech.com\",\"mobile\":\"09837079820\",\"state\":\"Uttarakhand\",\"city\":\"Dehradun\",\"address\":\"WINDLAS BIOTECH LIMITED \\r\\n40\\/1 Mohabewala Industrial Area,\\r\\nDehradun - 248110, \\r\\nUttarakhand, India\",\"pincode\":\"248110\",\"gst\":\"05AAACW3417C1ZV\",\"media_id\":null,\"color\":\"success\",\"name_init\":\"WB\",\"created_at\":\"2024-06-11T14:17:45.000000Z\",\"updated_at\":\"2024-06-11T14:17:45.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 14:17:45', '2024-06-11 14:17:45'),
(260, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 14, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":14,\"client_id\":16,\"po_no\":\"PO\\/24-25\\/000005115\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"New\",\"status_id\":2,\"created_at\":\"2024-06-11T14:24:17.000000Z\",\"updated_at\":\"2024-06-11T14:24:17.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 14:24:17', '2024-06-11 14:24:17'),
(261, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 42, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":42,\"purchase_order_id\":14,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Melocure - 5 PS\",\"carton_size\":\"52X17X80\",\"quantity\":10500,\"rate\":\"1.25\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12707-D0R0\",\"gsm\":320,\"remarks\":\"CMYK plus Pantone - new dye 14X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:24:17.000000Z\",\"updated_at\":\"2024-06-11T14:24:17.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-11 14:24:17', '2024-06-11 14:24:17'),
(262, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 36, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"45X50X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"16X23 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-12T05:25:26.000000Z\",\"deleted_at\":null},\"old\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"45X50X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"16X23 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":12,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T13:30:46.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:25:26', '2024-06-12 05:25:26'),
(263, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 8, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":8,\"client_id\":15,\"po_no\":\"PO\\/24-25\\/000005179\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":10,\"designer\":3,\"po_remarks\":\"new - urgent\",\"status_id\":6,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-12T05:26:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"client_id\":15,\"po_no\":\"PO\\/24-25\\/000005179\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"new - urgent\",\"status_id\":6,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-11T12:53:12.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:26:28', '2024-06-12 05:26:28');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(264, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 36, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":481,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"45X50X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"16X23 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-12T05:26:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"45X50X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"16X23 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-12T05:25:26.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:26:28', '2024-06-12 05:26:28'),
(265, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 36, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":481,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"45X50X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"16X23 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-12T05:26:56.000000Z\",\"deleted_at\":null},\"old\":{\"id\":36,\"purchase_order_id\":8,\"product_id\":null,\"dye_details_id\":481,\"carton_name\":\"Carton LOBG Sale\",\"carton_size\":\"45X50X105\",\"quantity\":40000,\"rate\":\"1.65\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"PMSPCWI12732-D0R0\",\"gsm\":320,\"remarks\":\"16X23 - 6 ups new dye for cylinder - 1 mm\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-12T05:26:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:26:56', '2024-06-12 05:26:56'),
(266, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 5, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":5,\"planning_by\":10,\"job_card_no\":\"004\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T05:27:11.000000Z\",\"updated_at\":\"2024-06-12T05:27:11.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 05:27:11', '2024-06-12 05:27:11'),
(267, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 5, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":5,\"job_card_id\":5,\"planning_id\":38,\"purchase_order_id\":8,\"purchase_order_item_id\":36,\"ups\":6,\"quantity\":40000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-12T05:27:11.000000Z\",\"updated_at\":\"2024-06-12T05:27:11.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:27:11', '2024-06-12 05:27:11'),
(268, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 5, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":5,\"planning_by\":3,\"job_card_no\":\"004\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"23X16\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":481,\"dye_details\":\"1033\\/6-BSO\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T05:27:11.000000Z\",\"updated_at\":\"2024-06-12T05:27:11.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null},\"old\":{\"id\":5,\"planning_by\":10,\"job_card_no\":\"004\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-06-12T05:27:11.000000Z\",\"updated_at\":\"2024-06-12T05:27:11.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 05:27:11', '2024-06-12 05:27:11'),
(269, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 5, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":5,\"job_card_id\":5,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-06-12T05:27:11.000000Z\",\"updated_at\":\"2024-06-12T05:27:11.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:27:11', '2024-06-12 05:27:11'),
(270, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 42, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":42,\"purchase_order_id\":14,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Melocure - 5 PS\",\"carton_size\":\"52X17X80\",\"quantity\":10500,\"rate\":\"1.25\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12707-D0R0\",\"gsm\":320,\"remarks\":\"CMYK plus Pantone - new dye 14X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:24:17.000000Z\",\"updated_at\":\"2024-06-12T05:45:13.000000Z\",\"deleted_at\":null},\"old\":{\"id\":42,\"purchase_order_id\":14,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Melocure - 5 PS\",\"carton_size\":\"52X17X80\",\"quantity\":10500,\"rate\":\"1.25\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12707-D0R0\",\"gsm\":320,\"remarks\":\"CMYK plus Pantone - new dye 14X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:24:17.000000Z\",\"updated_at\":\"2024-06-11T14:24:17.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:45:13', '2024-06-12 05:45:13'),
(271, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 42, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":42,\"purchase_order_id\":14,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Melocure - 5 PS\",\"carton_size\":\"52X17X80\",\"quantity\":10500,\"rate\":\"1.25\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12707-D0R0\",\"gsm\":320,\"remarks\":\"CMYK plus Pantone - new dye 14X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:24:17.000000Z\",\"updated_at\":\"2024-06-12T05:45:14.000000Z\",\"deleted_at\":null},\"old\":{\"id\":42,\"purchase_order_id\":14,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Melocure - 5 PS\",\"carton_size\":\"52X17X80\",\"quantity\":10500,\"rate\":\"1.25\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12707-D0R0\",\"gsm\":320,\"remarks\":\"CMYK plus Pantone - new dye 14X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:24:17.000000Z\",\"updated_at\":\"2024-06-12T05:45:13.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:45:14', '2024-06-12 05:45:14'),
(272, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 42, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":42,\"purchase_order_id\":14,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Melocure - 5 PS\",\"carton_size\":\"52X17X80\",\"quantity\":10500,\"rate\":\"1.25\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12707-D0R0\",\"gsm\":320,\"remarks\":\"CMYK plus Pantone - new dye 14X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T14:24:17.000000Z\",\"updated_at\":\"2024-06-12T05:45:33.000000Z\",\"deleted_at\":null},\"old\":{\"id\":42,\"purchase_order_id\":14,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Melocure - 5 PS\",\"carton_size\":\"52X17X80\",\"quantity\":10500,\"rate\":\"1.25\",\"gst\":\"18.00\",\"coating_type_id\":6,\"other_coating_type_id\":1,\"embossing_leafing\":1,\"paper_type_id\":3,\"art_work\":\"PMSPCWI12707-D0R0\",\"gsm\":320,\"remarks\":\"CMYK plus Pantone - new dye 14X23-12ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:24:17.000000Z\",\"updated_at\":\"2024-06-12T05:45:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:45:33', '2024-06-12 05:45:33'),
(273, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 41, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":41,\"purchase_order_id\":13,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rozuxa ASP\",\"carton_size\":\"147X90X95\",\"quantity\":2000,\"rate\":\"5.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20185258\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T05:45:47.000000Z\",\"deleted_at\":null},\"old\":{\"id\":41,\"purchase_order_id\":13,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rozuxa ASP\",\"carton_size\":\"147X90X95\",\"quantity\":2000,\"rate\":\"5.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20185258\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-11T14:14:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:45:47', '2024-06-12 05:45:47'),
(274, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 41, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":41,\"purchase_order_id\":13,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rozuxa ASP\",\"carton_size\":\"147X90X95\",\"quantity\":2000,\"rate\":\"5.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20185258\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T05:45:48.000000Z\",\"deleted_at\":null},\"old\":{\"id\":41,\"purchase_order_id\":13,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rozuxa ASP\",\"carton_size\":\"147X90X95\",\"quantity\":2000,\"rate\":\"5.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20185258\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T05:45:47.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:45:48', '2024-06-12 05:45:48'),
(275, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 41, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":41,\"purchase_order_id\":13,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rozuxa ASP\",\"carton_size\":\"147X90X95\",\"quantity\":2000,\"rate\":\"5.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20185258\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T05:45:51.000000Z\",\"deleted_at\":null},\"old\":{\"id\":41,\"purchase_order_id\":13,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rozuxa ASP\",\"carton_size\":\"147X90X95\",\"quantity\":2000,\"rate\":\"5.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20185258\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T05:45:48.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:45:51', '2024-06-12 05:45:51'),
(276, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 40, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":40,\"purchase_order_id\":11,\"product_id\":null,\"dye_details_id\":418,\"carton_name\":\"Carton Wilcef-S 375 mg Inj\",\"carton_size\":\"50X30X70\",\"quantity\":9400,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"20215187\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:09:16.000000Z\",\"updated_at\":\"2024-06-12T05:46:07.000000Z\",\"deleted_at\":null},\"old\":{\"id\":40,\"purchase_order_id\":11,\"product_id\":null,\"dye_details_id\":418,\"carton_name\":\"Carton Wilcef-S 375 mg Inj\",\"carton_size\":\"50X30X70\",\"quantity\":9400,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"20215187\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:09:16.000000Z\",\"updated_at\":\"2024-06-11T14:09:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:46:07', '2024-06-12 05:46:07'),
(277, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 40, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":40,\"purchase_order_id\":11,\"product_id\":null,\"dye_details_id\":418,\"carton_name\":\"Carton Wilcef-S 375 mg Inj\",\"carton_size\":\"50X30X70\",\"quantity\":9400,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"20215187\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:09:16.000000Z\",\"updated_at\":\"2024-06-12T05:46:08.000000Z\",\"deleted_at\":null},\"old\":{\"id\":40,\"purchase_order_id\":11,\"product_id\":null,\"dye_details_id\":418,\"carton_name\":\"Carton Wilcef-S 375 mg Inj\",\"carton_size\":\"50X30X70\",\"quantity\":9400,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"20215187\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:09:16.000000Z\",\"updated_at\":\"2024-06-12T05:46:07.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:46:08', '2024-06-12 05:46:08'),
(278, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 40, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":40,\"purchase_order_id\":11,\"product_id\":null,\"dye_details_id\":418,\"carton_name\":\"Carton Wilcef-S 375 mg Inj\",\"carton_size\":\"50X30X70\",\"quantity\":9400,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"20215187\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T14:09:16.000000Z\",\"updated_at\":\"2024-06-12T05:46:11.000000Z\",\"deleted_at\":null},\"old\":{\"id\":40,\"purchase_order_id\":11,\"product_id\":null,\"dye_details_id\":418,\"carton_name\":\"Carton Wilcef-S 375 mg Inj\",\"carton_size\":\"50X30X70\",\"quantity\":9400,\"rate\":\"1.30\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":3,\"paper_type_id\":1,\"art_work\":\"20215187\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:09:16.000000Z\",\"updated_at\":\"2024-06-12T05:46:08.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:46:11', '2024-06-12 05:46:11'),
(279, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 38, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":38,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Albendazole Susp 10ml\",\"carton_size\":\"32X29X65\",\"quantity\":100500,\"rate\":\"0.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"VR00754\",\"gsm\":280,\"remarks\":\"new dye 19X26-20ups - pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:51:21.000000Z\",\"updated_at\":\"2024-06-12T05:46:25.000000Z\",\"deleted_at\":null},\"old\":{\"id\":38,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Albendazole Susp 10ml\",\"carton_size\":\"32X29X65\",\"quantity\":100500,\"rate\":\"0.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"VR00754\",\"gsm\":280,\"remarks\":\"new dye 19X26-20ups - pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:51:21.000000Z\",\"updated_at\":\"2024-06-11T13:51:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:46:25', '2024-06-12 05:46:25'),
(280, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 39, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":39,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Label Albendazole Susp 10ml\",\"carton_size\":\"64X30\",\"quantity\":103000,\"rate\":\"0.06\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":19,\"art_work\":\"VR00945\",\"gsm\":70,\"remarks\":\"Pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:00:19.000000Z\",\"updated_at\":\"2024-06-12T05:46:27.000000Z\",\"deleted_at\":null},\"old\":{\"id\":39,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Label Albendazole Susp 10ml\",\"carton_size\":\"64X30\",\"quantity\":103000,\"rate\":\"0.06\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":19,\"art_work\":\"VR00945\",\"gsm\":70,\"remarks\":\"Pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:00:19.000000Z\",\"updated_at\":\"2024-06-11T14:00:19.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:46:27', '2024-06-12 05:46:27'),
(281, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 38, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":38,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Albendazole Susp 10ml\",\"carton_size\":\"32X29X65\",\"quantity\":100500,\"rate\":\"0.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"VR00754\",\"gsm\":280,\"remarks\":\"new dye 19X26-20ups - pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:51:21.000000Z\",\"updated_at\":\"2024-06-12T05:46:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":38,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Albendazole Susp 10ml\",\"carton_size\":\"32X29X65\",\"quantity\":100500,\"rate\":\"0.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"VR00754\",\"gsm\":280,\"remarks\":\"new dye 19X26-20ups - pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:51:21.000000Z\",\"updated_at\":\"2024-06-12T05:46:25.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:46:28', '2024-06-12 05:46:28'),
(282, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 39, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":39,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Label Albendazole Susp 10ml\",\"carton_size\":\"64X30\",\"quantity\":103000,\"rate\":\"0.06\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":19,\"art_work\":\"VR00945\",\"gsm\":70,\"remarks\":\"Pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:00:19.000000Z\",\"updated_at\":\"2024-06-12T05:46:29.000000Z\",\"deleted_at\":null},\"old\":{\"id\":39,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Label Albendazole Susp 10ml\",\"carton_size\":\"64X30\",\"quantity\":103000,\"rate\":\"0.06\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":19,\"art_work\":\"VR00945\",\"gsm\":70,\"remarks\":\"Pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:00:19.000000Z\",\"updated_at\":\"2024-06-12T05:46:27.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:46:29', '2024-06-12 05:46:29'),
(283, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 38, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":38,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Albendazole Susp 10ml\",\"carton_size\":\"32X29X65\",\"quantity\":100500,\"rate\":\"0.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"VR00754\",\"gsm\":280,\"remarks\":\"new dye 19X26-20ups - pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T13:51:21.000000Z\",\"updated_at\":\"2024-06-12T05:46:32.000000Z\",\"deleted_at\":null},\"old\":{\"id\":38,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Albendazole Susp 10ml\",\"carton_size\":\"32X29X65\",\"quantity\":100500,\"rate\":\"0.40\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"VR00754\",\"gsm\":280,\"remarks\":\"new dye 19X26-20ups - pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:51:21.000000Z\",\"updated_at\":\"2024-06-12T05:46:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:46:32', '2024-06-12 05:46:32'),
(284, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 39, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":39,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Label Albendazole Susp 10ml\",\"carton_size\":\"64X30\",\"quantity\":103000,\"rate\":\"0.06\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":19,\"art_work\":\"VR00945\",\"gsm\":70,\"remarks\":\"Pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T14:00:19.000000Z\",\"updated_at\":\"2024-06-12T05:46:32.000000Z\",\"deleted_at\":null},\"old\":{\"id\":39,\"purchase_order_id\":10,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Label Albendazole Susp 10ml\",\"carton_size\":\"64X30\",\"quantity\":103000,\"rate\":\"0.06\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":19,\"art_work\":\"VR00945\",\"gsm\":70,\"remarks\":\"Pantone 3 col\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:00:19.000000Z\",\"updated_at\":\"2024-06-12T05:46:29.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:46:32', '2024-06-12 05:46:32'),
(285, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 37, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":37,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"Carton Oosure Plus\",\"carton_size\":\"170X65X98\",\"quantity\":1000,\"rate\":\"4.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20218172\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:34:01.000000Z\",\"updated_at\":\"2024-06-12T05:47:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":37,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"Carton Oosure Plus\",\"carton_size\":\"170X65X98\",\"quantity\":1000,\"rate\":\"4.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":null,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20218172\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:34:01.000000Z\",\"updated_at\":\"2024-06-11T13:34:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:47:28', '2024-06-12 05:47:28'),
(286, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 37, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":37,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"Carton Oosure Plus\",\"carton_size\":\"170X65X98\",\"quantity\":1000,\"rate\":\"4.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20218172\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:34:01.000000Z\",\"updated_at\":\"2024-06-12T05:47:39.000000Z\",\"deleted_at\":null},\"old\":{\"id\":37,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"Carton Oosure Plus\",\"carton_size\":\"170X65X98\",\"quantity\":1000,\"rate\":\"4.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20218172\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:34:01.000000Z\",\"updated_at\":\"2024-06-12T05:47:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:47:39', '2024-06-12 05:47:39'),
(287, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 37, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":37,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"Carton Oosure Plus\",\"carton_size\":\"170X65X98\",\"quantity\":1000,\"rate\":\"4.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20218172\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:34:01.000000Z\",\"updated_at\":\"2024-06-12T05:47:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":37,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"Carton Oosure Plus\",\"carton_size\":\"170X65X98\",\"quantity\":1000,\"rate\":\"4.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20218172\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:34:01.000000Z\",\"updated_at\":\"2024-06-12T05:47:39.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:47:40', '2024-06-12 05:47:40'),
(288, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 37, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":37,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"Carton Oosure Plus\",\"carton_size\":\"170X65X98\",\"quantity\":1000,\"rate\":\"4.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20218172\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T13:34:01.000000Z\",\"updated_at\":\"2024-06-12T05:47:45.000000Z\",\"deleted_at\":null},\"old\":{\"id\":37,\"purchase_order_id\":9,\"product_id\":null,\"dye_details_id\":473,\"carton_name\":\"Carton Oosure Plus\",\"carton_size\":\"170X65X98\",\"quantity\":1000,\"rate\":\"4.70\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":3,\"art_work\":\"20218172\",\"gsm\":300,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T13:34:01.000000Z\",\"updated_at\":\"2024-06-12T05:47:40.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:47:45', '2024-06-12 05:47:45'),
(289, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 14, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":14,\"client_id\":16,\"po_no\":\"PO\\/24-25\\/000005115\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":\"New\",\"status_id\":6,\"created_at\":\"2024-06-11T14:24:17.000000Z\",\"updated_at\":\"2024-06-12T05:57:25.000000Z\",\"deleted_at\":null},\"old\":{\"id\":14,\"client_id\":16,\"po_no\":\"PO\\/24-25\\/000005115\",\"po_date\":\"2024-06-09T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"New\",\"status_id\":6,\"created_at\":\"2024-06-11T14:24:17.000000Z\",\"updated_at\":\"2024-06-12T05:45:34.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:57:25', '2024-06-12 05:57:25'),
(290, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 13, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":13,\"client_id\":13,\"po_no\":\"4501062192\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":null,\"status_id\":6,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T05:57:27.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"client_id\":13,\"po_no\":\"4501062192\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":null,\"status_id\":6,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T05:45:51.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:57:27', '2024-06-12 05:57:27'),
(291, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 11, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":11,\"client_id\":12,\"po_no\":\"4501062143\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":\"Repeat\",\"status_id\":6,\"created_at\":\"2024-06-11T14:09:16.000000Z\",\"updated_at\":\"2024-06-12T05:57:29.000000Z\",\"deleted_at\":null},\"old\":{\"id\":11,\"client_id\":12,\"po_no\":\"4501062143\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"Repeat\",\"status_id\":6,\"created_at\":\"2024-06-11T14:09:16.000000Z\",\"updated_at\":\"2024-06-12T05:46:11.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:57:29', '2024-06-12 05:57:29'),
(292, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 10, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":10,\"client_id\":2,\"po_no\":\"PMPO0064\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":\"New\",\"status_id\":6,\"created_at\":\"2024-06-11T13:51:21.000000Z\",\"updated_at\":\"2024-06-12T05:57:31.000000Z\",\"deleted_at\":null},\"old\":{\"id\":10,\"client_id\":2,\"po_no\":\"PMPO0064\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"New\",\"status_id\":6,\"created_at\":\"2024-06-11T13:51:21.000000Z\",\"updated_at\":\"2024-06-12T05:46:32.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:57:31', '2024-06-12 05:57:31'),
(293, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 9, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":9,\"client_id\":13,\"po_no\":\"4501062413\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":\"repeat - 300 nos in stock\",\"status_id\":6,\"created_at\":\"2024-06-11T13:34:01.000000Z\",\"updated_at\":\"2024-06-12T05:57:34.000000Z\",\"deleted_at\":null},\"old\":{\"id\":9,\"client_id\":13,\"po_no\":\"4501062413\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"repeat - 300 nos in stock\",\"status_id\":6,\"created_at\":\"2024-06-11T13:34:01.000000Z\",\"updated_at\":\"2024-06-12T05:47:45.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:57:34', '2024-06-12 05:57:34'),
(294, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 8, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":8,\"client_id\":15,\"po_no\":\"PO\\/24-25\\/000005179\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":10,\"designer\":10,\"po_remarks\":\"new - urgent\",\"status_id\":6,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-12T05:57:36.000000Z\",\"deleted_at\":null},\"old\":{\"id\":8,\"client_id\":15,\"po_no\":\"PO\\/24-25\\/000005179\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":10,\"designer\":3,\"po_remarks\":\"new - urgent\",\"status_id\":6,\"created_at\":\"2024-06-11T12:18:01.000000Z\",\"updated_at\":\"2024-06-12T05:26:56.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:57:36', '2024-06-12 05:57:36'),
(295, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 6, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":6,\"client_id\":15,\"po_no\":\"PO\\/24-25\\/000005113\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":null,\"status_id\":6,\"created_at\":\"2024-06-11T07:32:00.000000Z\",\"updated_at\":\"2024-06-12T05:57:39.000000Z\",\"deleted_at\":null},\"old\":{\"id\":6,\"client_id\":15,\"po_no\":\"PO\\/24-25\\/000005113\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":null,\"status_id\":6,\"created_at\":\"2024-06-11T07:32:00.000000Z\",\"updated_at\":\"2024-06-11T09:18:34.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 05:57:39', '2024-06-12 05:57:39'),
(296, 'product', 'product has been created', 'App\\Models\\Product', 'created', 50, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":50,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":null,\"name\":\"19X40-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"13.73\",\"item_per_packet\":100,\"weight_per_piece\":\"0.14\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":280,\"quantity\":null,\"in_hand_quantity\":164,\"type\":1,\"created_at\":\"2024-06-12T06:01:10.000000Z\",\"updated_at\":\"2024-06-12T06:01:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 06:01:10', '2024-06-12 06:01:10'),
(297, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 1, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":1,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"111\",\"name\":\"19X40-280\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"13.73\",\"item_per_packet\":100,\"weight_per_piece\":\"0.14\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":280,\"quantity\":\"16400.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-09T16:32:44.000000Z\",\"updated_at\":\"2024-06-12T06:03:18.000000Z\",\"deleted_at\":null},\"old\":{\"id\":1,\"product_type_id\":1,\"unit_id\":2,\"paper_type\":2,\"code\":\"111\",\"name\":\"19X40-280\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"13.73\",\"item_per_packet\":100,\"weight_per_piece\":\"0.14\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":280,\"quantity\":\"16400.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-09T16:32:44.000000Z\",\"updated_at\":\"2024-06-09T16:32:44.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 06:03:18', '2024-06-12 06:03:18'),
(298, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 2, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":2,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"112\",\"name\":\"21X36-300\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"14.63\",\"item_per_packet\":100,\"weight_per_piece\":\"0.15\",\"length\":\"21.00\",\"width\":\"36.00\",\"gsm\":300,\"quantity\":\"7800.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-09T16:32:44.000000Z\",\"updated_at\":\"2024-06-12T06:04:01.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"product_type_id\":3,\"unit_id\":2,\"paper_type\":1,\"code\":\"112\",\"name\":\"21X36-300\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"14.63\",\"item_per_packet\":100,\"weight_per_piece\":\"0.15\",\"length\":\"21.00\",\"width\":\"36.00\",\"gsm\":300,\"quantity\":\"7800.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-09T16:32:44.000000Z\",\"updated_at\":\"2024-06-09T16:32:44.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 06:04:01', '2024-06-12 06:04:01'),
(299, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 3, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":3,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"113\",\"name\":\"23X28-320\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"13.30\",\"item_per_packet\":100,\"weight_per_piece\":\"0.13\",\"length\":\"23.00\",\"width\":\"28.00\",\"gsm\":320,\"quantity\":\"3400.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-09T16:32:44.000000Z\",\"updated_at\":\"2024-06-12T06:04:11.000000Z\",\"deleted_at\":null},\"old\":{\"id\":3,\"product_type_id\":3,\"unit_id\":2,\"paper_type\":1,\"code\":\"113\",\"name\":\"23X28-320\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"13.30\",\"item_per_packet\":100,\"weight_per_piece\":\"0.13\",\"length\":\"23.00\",\"width\":\"28.00\",\"gsm\":320,\"quantity\":\"3400.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-09T16:32:44.000000Z\",\"updated_at\":\"2024-06-09T16:32:44.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 06:04:11', '2024-06-12 06:04:11'),
(300, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 50, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":50,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":null,\"name\":\"19X40-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"13.73\",\"item_per_packet\":100,\"weight_per_piece\":\"0.14\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":280,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T06:01:10.000000Z\",\"updated_at\":\"2024-06-12T06:04:30.000000Z\",\"deleted_at\":null},\"old\":{\"id\":50,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":null,\"name\":\"19X40-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"13.73\",\"item_per_packet\":100,\"weight_per_piece\":\"0.14\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":280,\"quantity\":null,\"in_hand_quantity\":164,\"type\":1,\"created_at\":\"2024-06-12T06:01:10.000000Z\",\"updated_at\":\"2024-06-12T06:01:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 06:04:30', '2024-06-12 06:04:30'),
(301, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 50, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":50,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"555\",\"name\":\"19X40-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"13.73\",\"item_per_packet\":100,\"weight_per_piece\":\"0.14\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":280,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T06:01:10.000000Z\",\"updated_at\":\"2024-06-12T06:04:42.000000Z\",\"deleted_at\":null},\"old\":{\"id\":50,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":null,\"name\":\"19X40-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"13.73\",\"item_per_packet\":100,\"weight_per_piece\":\"0.14\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":280,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T06:01:10.000000Z\",\"updated_at\":\"2024-06-12T06:04:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 06:04:42', '2024-06-12 06:04:42'),
(302, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 15, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":15,\"client_id\":1,\"po_no\":\"PMPO0242\",\"po_date\":\"2024-06-07T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-12T06:18:32.000000Z\",\"updated_at\":\"2024-06-12T06:18:32.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 06:18:32', '2024-06-12 06:18:32'),
(303, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 43, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":43,\"purchase_order_id\":15,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Aceclofenac & Thiocolchicoside Tab\",\"carton_size\":\"82X80X80\",\"quantity\":3800,\"rate\":\"1.70\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK08416\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:18:32.000000Z\",\"updated_at\":\"2024-06-12T06:18:32.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 06:18:32', '2024-06-12 06:18:32'),
(304, 'Purchase Order', 'Purchase Order has been created', 'App\\Models\\PurchaseOrder', 'created', 16, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":16,\"client_id\":1,\"po_no\":\"PMPO0245\",\"po_date\":\"2024-06-07T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"New\",\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T06:41:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 06:41:33', '2024-06-12 06:41:33'),
(305, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 44, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":44,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Zinc Sulphate 20mg Haryana\",\"carton_size\":\"78X34X48\",\"quantity\":32500,\"rate\":\"0.62\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09836\",\"gsm\":296,\"remarks\":\"new dye 14X22-8ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T06:41:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 06:41:33', '2024-06-12 06:41:33'),
(306, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 45, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":45,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Haryana\",\"carton_size\":\"78X30X71\",\"quantity\":55800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09840\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T06:41:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 06:41:33', '2024-06-12 06:41:33');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(307, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\PurchaseOrderItem', 'created', 46, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":46,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Gujrat\",\"carton_size\":\"78X30X71\",\"quantity\":22800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09842\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T06:41:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 06:41:33', '2024-06-12 06:41:33'),
(308, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 43, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":43,\"purchase_order_id\":15,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Aceclofenac & Thiocolchicoside Tab\",\"carton_size\":\"78X34X56\",\"quantity\":3800,\"rate\":\"1.70\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK08416\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:18:32.000000Z\",\"updated_at\":\"2024-06-12T06:41:59.000000Z\",\"deleted_at\":null},\"old\":{\"id\":43,\"purchase_order_id\":15,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Aceclofenac & Thiocolchicoside Tab\",\"carton_size\":\"82X80X80\",\"quantity\":3800,\"rate\":\"1.70\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK08416\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:18:32.000000Z\",\"updated_at\":\"2024-06-12T06:18:32.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 06:41:59', '2024-06-12 06:41:59'),
(309, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 6, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":6,\"planning_by\":10,\"job_card_no\":\"005\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T07:13:27.000000Z\",\"updated_at\":\"2024-06-12T07:13:27.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 07:13:27', '2024-06-12 07:13:27'),
(310, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 6, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":6,\"job_card_id\":6,\"planning_id\":4,\"purchase_order_id\":2,\"purchase_order_item_id\":4,\"ups\":3,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-12T07:13:27.000000Z\",\"updated_at\":\"2024-06-12T07:13:27.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 07:13:27', '2024-06-12 07:13:27'),
(311, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 6, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":6,\"planning_by\":10,\"job_card_no\":\"005\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":473,\"dye_details\":\"775\\/3-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T07:13:27.000000Z\",\"updated_at\":\"2024-06-12T07:13:27.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null},\"old\":{\"id\":6,\"planning_by\":10,\"job_card_no\":\"005\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-06-12T07:13:27.000000Z\",\"updated_at\":\"2024-06-12T07:13:27.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 07:13:27', '2024-06-12 07:13:27'),
(312, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 6, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":6,\"job_card_id\":6,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-06-12T07:13:27.000000Z\",\"updated_at\":\"2024-06-12T07:13:27.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 07:13:27', '2024-06-12 07:13:27'),
(313, 'product', 'product has been created', 'App\\Models\\Product', 'created', 51, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":51,\"product_type_id\":6,\"unit_id\":2,\"paper_type\":2,\"code\":\"44\",\"name\":\"23X32-340\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"16.14\",\"item_per_packet\":100,\"weight_per_piece\":\"0.16\",\"length\":\"23.00\",\"width\":\"32.00\",\"gsm\":340,\"quantity\":null,\"in_hand_quantity\":3500,\"type\":1,\"created_at\":\"2024-06-12T07:18:36.000000Z\",\"updated_at\":\"2024-06-12T07:18:36.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 07:18:36', '2024-06-12 07:18:36'),
(314, 'product', 'product has been created', 'App\\Models\\Product', 'created', 52, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":52,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"01\",\"name\":\"19X40-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"13.73\",\"item_per_packet\":100,\"weight_per_piece\":\"0.14\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":280,\"quantity\":\"164.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T08:29:49.000000Z\",\"updated_at\":\"2024-06-12T08:29:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 08:29:49', '2024-06-12 08:29:49'),
(315, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 52, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":52,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"01\",\"name\":\"19X40-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"13.73\",\"item_per_packet\":100,\"weight_per_piece\":\"0.14\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":280,\"quantity\":\"0.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T08:29:49.000000Z\",\"updated_at\":\"2024-06-12T08:30:24.000000Z\",\"deleted_at\":null},\"old\":{\"id\":52,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"01\",\"name\":\"19X40-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"13.73\",\"item_per_packet\":100,\"weight_per_piece\":\"0.14\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":280,\"quantity\":\"164.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T08:29:49.000000Z\",\"updated_at\":\"2024-06-12T08:29:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 08:30:24', '2024-06-12 08:30:24'),
(316, 'product', 'product has been created', 'App\\Models\\Product', 'created', 53, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":53,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"01\",\"name\":\"19X40-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"15.69\",\"item_per_packet\":100,\"weight_per_piece\":\"0.16\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":320,\"quantity\":\"16400.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T08:35:03.000000Z\",\"updated_at\":\"2024-06-12T08:35:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 08:35:03', '2024-06-12 08:35:03'),
(317, 'product', 'product has been created', 'App\\Models\\Product', 'created', 54, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":54,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"02\",\"name\":\"21X36-300\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"14.63\",\"item_per_packet\":100,\"weight_per_piece\":\"0.15\",\"length\":\"21.00\",\"width\":\"36.00\",\"gsm\":300,\"quantity\":\"7800.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T08:36:00.000000Z\",\"updated_at\":\"2024-06-12T08:36:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 08:36:00', '2024-06-12 08:36:00'),
(318, 'product', 'product has been created', 'App\\Models\\Product', 'created', 55, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":55,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"03\",\"name\":\"22X31.5-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"12.52\",\"item_per_packet\":100,\"weight_per_piece\":\"0.13\",\"length\":\"22.00\",\"width\":\"31.50\",\"gsm\":280,\"quantity\":\"1000.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T08:36:39.000000Z\",\"updated_at\":\"2024-06-12T08:36:39.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 08:36:39', '2024-06-12 08:36:39'),
(319, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 53, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":53,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"01\",\"name\":\"19X40-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"15.69\",\"item_per_packet\":100,\"weight_per_piece\":\"0.16\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":320,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T08:35:03.000000Z\",\"updated_at\":\"2024-06-12T08:36:54.000000Z\",\"deleted_at\":null},\"old\":{\"id\":53,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"01\",\"name\":\"19X40-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"15.69\",\"item_per_packet\":100,\"weight_per_piece\":\"0.16\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":320,\"quantity\":\"16400.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T08:35:03.000000Z\",\"updated_at\":\"2024-06-12T08:35:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 08:36:54', '2024-06-12 08:36:54'),
(320, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 54, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":54,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"02\",\"name\":\"21X36-300\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"14.63\",\"item_per_packet\":100,\"weight_per_piece\":\"0.15\",\"length\":\"21.00\",\"width\":\"36.00\",\"gsm\":300,\"quantity\":null,\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T08:36:00.000000Z\",\"updated_at\":\"2024-06-12T08:37:20.000000Z\",\"deleted_at\":null},\"old\":{\"id\":54,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"02\",\"name\":\"21X36-300\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"14.63\",\"item_per_packet\":100,\"weight_per_piece\":\"0.15\",\"length\":\"21.00\",\"width\":\"36.00\",\"gsm\":300,\"quantity\":\"7800.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T08:36:00.000000Z\",\"updated_at\":\"2024-06-12T08:36:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 08:37:20', '2024-06-12 08:37:20'),
(321, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 55, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":55,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"03\",\"name\":\"22X31.50-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"12.52\",\"item_per_packet\":100,\"weight_per_piece\":\"0.13\",\"length\":\"22.00\",\"width\":\"31.50\",\"gsm\":280,\"quantity\":\"1000.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T08:36:39.000000Z\",\"updated_at\":\"2024-06-12T08:39:58.000000Z\",\"deleted_at\":null},\"old\":{\"id\":55,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"03\",\"name\":\"22X31.5-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"12.52\",\"item_per_packet\":100,\"weight_per_piece\":\"0.13\",\"length\":\"22.00\",\"width\":\"31.50\",\"gsm\":280,\"quantity\":\"1000.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T08:36:39.000000Z\",\"updated_at\":\"2024-06-12T08:36:39.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 08:39:58', '2024-06-12 08:39:58'),
(322, 'product', 'product has been created', 'App\\Models\\Product', 'created', 56, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":56,\"product_type_id\":3,\"unit_id\":2,\"paper_type\":1,\"code\":\"07\",\"name\":\"23.23X36-280\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"15.11\",\"item_per_packet\":100,\"weight_per_piece\":\"0.15\",\"length\":\"23.23\",\"width\":\"36.00\",\"gsm\":280,\"quantity\":\"4200.00\",\"in_hand_quantity\":2000,\"type\":1,\"created_at\":\"2024-06-12T08:43:38.000000Z\",\"updated_at\":\"2024-06-12T08:43:38.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 08:43:38', '2024-06-12 08:43:38'),
(323, 'product', 'product has been created', 'App\\Models\\Product', 'created', 57, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":57,\"product_type_id\":3,\"unit_id\":2,\"paper_type\":1,\"code\":\"06\",\"name\":\"28X23-320\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"13.30\",\"item_per_packet\":100,\"weight_per_piece\":\"0.13\",\"length\":\"28.00\",\"width\":\"23.00\",\"gsm\":320,\"quantity\":\"14900.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T08:44:19.000000Z\",\"updated_at\":\"2024-06-12T08:44:19.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 08:44:19', '2024-06-12 08:44:19'),
(324, 'product', 'product has been created', 'App\\Models\\Product', 'created', 58, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":58,\"product_type_id\":13,\"unit_id\":2,\"paper_type\":4,\"code\":\"08\",\"name\":\"20.59X24.8-290\",\"category_id\":4,\"hsn\":4810,\"packet_weight\":\"19.11\",\"item_per_packet\":200,\"weight_per_piece\":\"0.10\",\"length\":\"20.59\",\"width\":\"24.80\",\"gsm\":290,\"quantity\":\"102700.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T09:07:59.000000Z\",\"updated_at\":\"2024-06-12T09:07:59.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:07:59', '2024-06-12 09:07:59'),
(325, 'product', 'product has been created', 'App\\Models\\Product', 'created', 59, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":59,\"product_type_id\":13,\"unit_id\":3,\"paper_type\":4,\"code\":\"09\",\"name\":\"28X30.51-290\",\"category_id\":4,\"hsn\":4810,\"packet_weight\":\"31.97\",\"item_per_packet\":200,\"weight_per_piece\":\"0.16\",\"length\":\"28.00\",\"width\":\"30.51\",\"gsm\":290,\"quantity\":\"2250.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T09:09:20.000000Z\",\"updated_at\":\"2024-06-12T09:09:20.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:09:20', '2024-06-12 09:09:20'),
(326, 'product', 'product has been created', 'App\\Models\\Product', 'created', 60, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":60,\"product_type_id\":16,\"unit_id\":3,\"paper_type\":null,\"code\":\"Cyan-007\",\"name\":\"Cyan Sakata\",\"category_id\":6,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"2.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"28.00\",\"in_hand_quantity\":12,\"type\":null,\"created_at\":\"2024-06-12T09:19:16.000000Z\",\"updated_at\":\"2024-06-12T09:19:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:19:16', '2024-06-12 09:19:16'),
(327, 'product', 'product has been created', 'App\\Models\\Product', 'created', 61, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":61,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"10\",\"name\":\"20X36-290\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"13.47\",\"item_per_packet\":100,\"weight_per_piece\":\"0.14\",\"length\":\"20.00\",\"width\":\"36.00\",\"gsm\":290,\"quantity\":\"600.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T09:22:33.000000Z\",\"updated_at\":\"2024-06-12T09:22:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:22:33', '2024-06-12 09:22:33'),
(328, 'product', 'product has been created', 'App\\Models\\Product', 'created', 62, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":62,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"11\",\"name\":\"23X30-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"12.46\",\"item_per_packet\":100,\"weight_per_piece\":\"0.13\",\"length\":\"23.00\",\"width\":\"30.00\",\"gsm\":280,\"quantity\":\"600.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T09:23:15.000000Z\",\"updated_at\":\"2024-06-12T09:23:15.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:23:15', '2024-06-12 09:23:15'),
(329, 'product', 'product has been created', 'App\\Models\\Product', 'created', 63, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":63,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"13\",\"name\":\"19X36-340\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"15.00\",\"item_per_packet\":100,\"weight_per_piece\":\"0.15\",\"length\":\"19.00\",\"width\":\"36.00\",\"gsm\":340,\"quantity\":\"1100.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T09:23:58.000000Z\",\"updated_at\":\"2024-06-12T09:23:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:23:58', '2024-06-12 09:23:58'),
(330, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 60, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":60,\"product_type_id\":16,\"unit_id\":3,\"paper_type\":null,\"code\":\"Cyan-007\",\"name\":\"Cyan Sakata\",\"category_id\":6,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"2.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"13.00\",\"in_hand_quantity\":12,\"type\":null,\"created_at\":\"2024-06-12T09:19:16.000000Z\",\"updated_at\":\"2024-06-12T09:24:12.000000Z\",\"deleted_at\":null},\"old\":{\"id\":60,\"product_type_id\":16,\"unit_id\":3,\"paper_type\":null,\"code\":\"Cyan-007\",\"name\":\"Cyan Sakata\",\"category_id\":6,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"2.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"14.00\",\"in_hand_quantity\":12,\"type\":null,\"created_at\":\"2024-06-12T09:19:16.000000Z\",\"updated_at\":\"2024-06-12T09:19:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:24:12', '2024-06-12 09:24:12'),
(331, 'product', 'product has been created', 'App\\Models\\Product', 'created', 64, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":64,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"14\",\"name\":\"20X38-340\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"16.67\",\"item_per_packet\":100,\"weight_per_piece\":\"0.17\",\"length\":\"20.00\",\"width\":\"38.00\",\"gsm\":340,\"quantity\":\"600.00\",\"in_hand_quantity\":500,\"type\":1,\"created_at\":\"2024-06-12T09:24:31.000000Z\",\"updated_at\":\"2024-06-12T09:24:31.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:24:31', '2024-06-12 09:24:31'),
(332, 'product', 'product has been created', 'App\\Models\\Product', 'created', 65, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":65,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"14\",\"name\":\"26X35-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"16.44\",\"item_per_packet\":100,\"weight_per_piece\":\"0.16\",\"length\":\"26.00\",\"width\":\"35.00\",\"gsm\":280,\"quantity\":\"500.00\",\"in_hand_quantity\":500,\"type\":1,\"created_at\":\"2024-06-12T09:25:07.000000Z\",\"updated_at\":\"2024-06-12T09:25:07.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:25:07', '2024-06-12 09:25:07'),
(333, 'product', 'product has been created', 'App\\Models\\Product', 'created', 66, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":66,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"15\",\"name\":\"20X33-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"13.63\",\"item_per_packet\":100,\"weight_per_piece\":\"0.14\",\"length\":\"20.00\",\"width\":\"33.00\",\"gsm\":320,\"quantity\":\"600.00\",\"in_hand_quantity\":500,\"type\":1,\"created_at\":\"2024-06-12T09:25:46.000000Z\",\"updated_at\":\"2024-06-12T09:25:46.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:25:46', '2024-06-12 09:25:46'),
(334, 'product', 'product has been created', 'App\\Models\\Product', 'created', 67, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":67,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"16\",\"name\":\"22X34-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"13.51\",\"item_per_packet\":100,\"weight_per_piece\":\"0.14\",\"length\":\"22.00\",\"width\":\"34.00\",\"gsm\":280,\"quantity\":\"1100.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T09:26:35.000000Z\",\"updated_at\":\"2024-06-12T09:26:35.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:26:35', '2024-06-12 09:26:35'),
(335, 'product', 'product has been created', 'App\\Models\\Product', 'created', 68, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":68,\"product_type_id\":15,\"unit_id\":5,\"paper_type\":null,\"code\":\"Rtdr-008\",\"name\":\"Retarder OC\",\"category_id\":5,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"5.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"1.00\",\"in_hand_quantity\":1,\"type\":null,\"created_at\":\"2024-06-12T09:27:53.000000Z\",\"updated_at\":\"2024-06-12T09:27:53.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:27:53', '2024-06-12 09:27:53'),
(336, 'product', 'product has been created', 'App\\Models\\Product', 'created', 69, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":69,\"product_type_id\":6,\"unit_id\":2,\"paper_type\":2,\"code\":\"17\",\"name\":\"26X21.5-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"11.54\",\"item_per_packet\":100,\"weight_per_piece\":\"0.12\",\"length\":\"26.00\",\"width\":\"21.50\",\"gsm\":320,\"quantity\":\"3800.00\",\"in_hand_quantity\":500,\"type\":1,\"created_at\":\"2024-06-12T09:27:53.000000Z\",\"updated_at\":\"2024-06-12T09:27:53.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:27:53', '2024-06-12 09:27:53'),
(337, 'product', 'product has been created', 'App\\Models\\Product', 'created', 70, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":70,\"product_type_id\":6,\"unit_id\":2,\"paper_type\":2,\"code\":\"18\",\"name\":\"21X36-330\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"16.10\",\"item_per_packet\":100,\"weight_per_piece\":\"0.16\",\"length\":\"21.00\",\"width\":\"36.00\",\"gsm\":330,\"quantity\":\"1900.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T09:28:21.000000Z\",\"updated_at\":\"2024-06-12T09:28:21.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:28:21', '2024-06-12 09:28:21'),
(338, 'product', 'product has been created', 'App\\Models\\Product', 'created', 71, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":71,\"product_type_id\":6,\"unit_id\":2,\"paper_type\":2,\"code\":\"19\",\"name\":\"24X30-330\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"15.33\",\"item_per_packet\":100,\"weight_per_piece\":\"0.15\",\"length\":\"24.00\",\"width\":\"30.00\",\"gsm\":330,\"quantity\":\"2500.00\",\"in_hand_quantity\":500,\"type\":1,\"created_at\":\"2024-06-12T09:29:01.000000Z\",\"updated_at\":\"2024-06-12T09:29:01.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:29:01', '2024-06-12 09:29:01'),
(339, 'product', 'product has been created', 'App\\Models\\Product', 'created', 72, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":72,\"product_type_id\":6,\"unit_id\":2,\"paper_type\":2,\"code\":\"20\",\"name\":\"23X34-340\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"17.15\",\"item_per_packet\":100,\"weight_per_piece\":\"0.17\",\"length\":\"23.00\",\"width\":\"34.00\",\"gsm\":340,\"quantity\":\"600.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T09:29:43.000000Z\",\"updated_at\":\"2024-06-12T09:29:43.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:29:43', '2024-06-12 09:29:43'),
(340, 'product', 'product has been created', 'App\\Models\\Product', 'created', 73, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":73,\"product_type_id\":6,\"unit_id\":2,\"paper_type\":2,\"code\":\"21\",\"name\":\"23.25X30-340\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"15.30\",\"item_per_packet\":100,\"weight_per_piece\":\"0.15\",\"length\":\"23.25\",\"width\":\"30.00\",\"gsm\":340,\"quantity\":\"1700.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T09:30:14.000000Z\",\"updated_at\":\"2024-06-12T09:30:14.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:30:14', '2024-06-12 09:30:14'),
(341, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\MaterialOrderItem', 'created', 4, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":4,\"material_order_id\":4,\"category_id\":5,\"product_id\":68,\"item_name\":\"Retarder OC\",\"quantity\":\"2.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"5.00\",\"total_weight\":\"10.00\",\"unit_id\":5,\"rate_on\":\"215.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"2.00\",\"rate\":\"2150.00\",\"gst\":\"18.00\",\"gst_amount\":\"387.00\",\"amount\":\"2150.00\",\"receive_status\":0,\"created_at\":\"2024-06-12T09:30:38.000000Z\",\"updated_at\":\"2024-06-12T09:30:38.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:30:38', '2024-06-12 09:30:38'),
(342, 'product', 'product has been created', 'App\\Models\\Product', 'created', 74, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":74,\"product_type_id\":6,\"unit_id\":2,\"paper_type\":2,\"code\":\"22\",\"name\":\"23X36-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"17.09\",\"item_per_packet\":100,\"weight_per_piece\":\"0.17\",\"length\":\"23.00\",\"width\":\"36.00\",\"gsm\":320,\"quantity\":\"2400.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T09:30:48.000000Z\",\"updated_at\":\"2024-06-12T09:30:48.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:30:48', '2024-06-12 09:30:48'),
(343, 'product', 'product has been created', 'App\\Models\\Product', 'created', 75, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":75,\"product_type_id\":6,\"unit_id\":2,\"paper_type\":2,\"code\":\"23\",\"name\":\"24.75X41.5-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"21.21\",\"item_per_packet\":100,\"weight_per_piece\":\"0.21\",\"length\":\"24.75\",\"width\":\"41.50\",\"gsm\":320,\"quantity\":\"1200.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T09:31:22.000000Z\",\"updated_at\":\"2024-06-12T09:31:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:31:22', '2024-06-12 09:31:22'),
(344, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\MaterialOrderItem', 'updated', 4, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":4,\"material_order_id\":4,\"category_id\":5,\"product_id\":68,\"item_name\":\"Retarder OC\",\"quantity\":\"2.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"5.00\",\"total_weight\":\"10.00\",\"unit_id\":5,\"rate_on\":\"215.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"2.00\",\"rate\":\"2150.00\",\"gst\":\"18.00\",\"gst_amount\":\"387.00\",\"amount\":\"2150.00\",\"receive_status\":1,\"created_at\":\"2024-06-12T09:30:38.000000Z\",\"updated_at\":\"2024-06-12T09:33:26.000000Z\",\"deleted_at\":null},\"old\":{\"id\":4,\"material_order_id\":4,\"category_id\":5,\"product_id\":68,\"item_name\":\"Retarder OC\",\"quantity\":\"2.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"5.00\",\"total_weight\":\"10.00\",\"unit_id\":5,\"rate_on\":\"215.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"2.00\",\"rate\":\"2150.00\",\"gst\":\"18.00\",\"gst_amount\":\"387.00\",\"amount\":\"2150.00\",\"receive_status\":0,\"created_at\":\"2024-06-12T09:30:38.000000Z\",\"updated_at\":\"2024-06-12T09:30:38.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:33:26', '2024-06-12 09:33:26'),
(345, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 16, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":16,\"client_id\":1,\"po_no\":\"PMPO0245\",\"po_date\":\"2024-06-07T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":\"New\",\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T09:48:53.000000Z\",\"deleted_at\":null},\"old\":{\"id\":16,\"client_id\":1,\"po_no\":\"PMPO0245\",\"po_date\":\"2024-06-07T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"New\",\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T06:41:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:48:53', '2024-06-12 09:48:53'),
(346, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 15, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":15,\"client_id\":1,\"po_no\":\"PMPO0242\",\"po_date\":\"2024-06-07T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-12T06:18:32.000000Z\",\"updated_at\":\"2024-06-12T09:48:55.000000Z\",\"deleted_at\":null},\"old\":{\"id\":15,\"client_id\":1,\"po_no\":\"PMPO0242\",\"po_date\":\"2024-06-07T18:30:00.000000Z\",\"made_by\":7,\"designer\":3,\"po_remarks\":\"Repeat\",\"status_id\":2,\"created_at\":\"2024-06-12T06:18:32.000000Z\",\"updated_at\":\"2024-06-12T06:18:32.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 09:48:55', '2024-06-12 09:48:55'),
(347, 'product', 'product has been created', 'App\\Models\\Product', 'created', 76, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":76,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":2,\"code\":\"16\",\"name\":\"20X38-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"15.69\",\"item_per_packet\":100,\"weight_per_piece\":\"0.16\",\"length\":\"20.00\",\"width\":\"38.00\",\"gsm\":320,\"quantity\":\"500.00\",\"in_hand_quantity\":500,\"type\":1,\"created_at\":\"2024-06-12T10:00:52.000000Z\",\"updated_at\":\"2024-06-12T10:00:52.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:00:52', '2024-06-12 10:00:52'),
(348, 'product', 'product has been created', 'App\\Models\\Product', 'created', 77, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":77,\"product_type_id\":6,\"unit_id\":2,\"paper_type\":2,\"code\":\"17\",\"name\":\"25.3X38-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"19.85\",\"item_per_packet\":100,\"weight_per_piece\":\"0.20\",\"length\":\"25.30\",\"width\":\"38.00\",\"gsm\":320,\"quantity\":\"700.00\",\"in_hand_quantity\":500,\"type\":1,\"created_at\":\"2024-06-12T10:01:26.000000Z\",\"updated_at\":\"2024-06-12T10:01:26.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:01:26', '2024-06-12 10:01:26'),
(349, 'product', 'product has been created', 'App\\Models\\Product', 'created', 78, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":78,\"product_type_id\":6,\"unit_id\":2,\"paper_type\":2,\"code\":\"18\",\"name\":\"32X23-340\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"16.14\",\"item_per_packet\":100,\"weight_per_piece\":\"0.16\",\"length\":\"32.00\",\"width\":\"23.00\",\"gsm\":340,\"quantity\":\"3664.00\",\"in_hand_quantity\":500,\"type\":1,\"created_at\":\"2024-06-12T10:01:58.000000Z\",\"updated_at\":\"2024-06-12T10:01:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:01:58', '2024-06-12 10:01:58'),
(350, 'product', 'product has been created', 'App\\Models\\Product', 'created', 79, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":79,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"19\",\"name\":\"31.5X41.5-340\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"28.68\",\"item_per_packet\":100,\"weight_per_piece\":\"0.29\",\"length\":\"31.50\",\"width\":\"41.50\",\"gsm\":340,\"quantity\":\"200.00\",\"in_hand_quantity\":100,\"type\":1,\"created_at\":\"2024-06-12T10:02:30.000000Z\",\"updated_at\":\"2024-06-12T10:02:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:02:30', '2024-06-12 10:02:30'),
(351, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 44, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":44,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Zinc Sulphate 20mg Haryana\",\"carton_size\":\"78X34X48\",\"quantity\":32500,\"rate\":\"0.62\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09836\",\"gsm\":296,\"remarks\":\"new dye 14X22-8ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:04:47.000000Z\",\"deleted_at\":null},\"old\":{\"id\":44,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Zinc Sulphate 20mg Haryana\",\"carton_size\":\"78X34X48\",\"quantity\":32500,\"rate\":\"0.62\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09836\",\"gsm\":296,\"remarks\":\"new dye 14X22-8ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T06:41:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:04:47', '2024-06-12 10:04:47'),
(352, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 45, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":45,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Haryana\",\"carton_size\":\"78X30X71\",\"quantity\":55800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09840\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:04:48.000000Z\",\"deleted_at\":null},\"old\":{\"id\":45,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Haryana\",\"carton_size\":\"78X30X71\",\"quantity\":55800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09840\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T06:41:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:04:48', '2024-06-12 10:04:48'),
(353, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 46, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":46,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Gujrat\",\"carton_size\":\"78X30X71\",\"quantity\":22800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09842\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:04:50.000000Z\",\"deleted_at\":null},\"old\":{\"id\":46,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Gujrat\",\"carton_size\":\"78X30X71\",\"quantity\":22800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09842\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":0,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T06:41:33.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:04:50', '2024-06-12 10:04:50'),
(354, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 44, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":44,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Zinc Sulphate 20mg Haryana\",\"carton_size\":\"78X34X48\",\"quantity\":32500,\"rate\":\"0.62\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09836\",\"gsm\":296,\"remarks\":\"new dye 14X22-8ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:05:06.000000Z\",\"deleted_at\":null},\"old\":{\"id\":44,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Zinc Sulphate 20mg Haryana\",\"carton_size\":\"78X34X48\",\"quantity\":32500,\"rate\":\"0.62\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09836\",\"gsm\":296,\"remarks\":\"new dye 14X22-8ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:04:47.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:05:06', '2024-06-12 10:05:06'),
(355, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 45, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":45,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Haryana\",\"carton_size\":\"78X30X71\",\"quantity\":55800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09840\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:05:09.000000Z\",\"deleted_at\":null},\"old\":{\"id\":45,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Haryana\",\"carton_size\":\"78X30X71\",\"quantity\":55800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09840\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:04:48.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:05:09', '2024-06-12 10:05:09'),
(356, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 46, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":46,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Gujrat\",\"carton_size\":\"78X30X71\",\"quantity\":22800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09842\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:05:12.000000Z\",\"deleted_at\":null},\"old\":{\"id\":46,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Gujrat\",\"carton_size\":\"78X30X71\",\"quantity\":22800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09842\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":0,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:04:50.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:05:12', '2024-06-12 10:05:12'),
(357, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 44, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":44,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Zinc Sulphate 20mg Haryana\",\"carton_size\":\"78X34X48\",\"quantity\":32500,\"rate\":\"0.62\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09836\",\"gsm\":296,\"remarks\":\"new dye 14X22-8ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:05:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":44,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Zinc Sulphate 20mg Haryana\",\"carton_size\":\"78X34X48\",\"quantity\":32500,\"rate\":\"0.62\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09836\",\"gsm\":296,\"remarks\":\"new dye 14X22-8ups\",\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:05:06.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:05:28', '2024-06-12 10:05:28'),
(358, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 45, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":45,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Haryana\",\"carton_size\":\"78X30X71\",\"quantity\":55800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09840\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:05:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":45,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Haryana\",\"carton_size\":\"78X30X71\",\"quantity\":55800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09840\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:05:09.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:05:28', '2024-06-12 10:05:28'),
(359, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 46, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":46,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Gujrat\",\"carton_size\":\"78X30X71\",\"quantity\":22800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09842\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:05:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":46,\"purchase_order_id\":16,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Folic Acid 5mg Gujrat\",\"carton_size\":\"78X30X71\",\"quantity\":22800,\"rate\":\"0.50\",\"gst\":\"18.00\",\"coating_type_id\":4,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":13,\"art_work\":\"PK09842\",\"gsm\":296,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-12T06:41:33.000000Z\",\"updated_at\":\"2024-06-12T10:05:12.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:05:28', '2024-06-12 10:05:28'),
(360, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 48, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":48,\"product_type_id\":15,\"unit_id\":3,\"paper_type\":null,\"code\":\"AW(50001)-005\",\"name\":\"Aqua Warnish(50001) Westtek\",\"category_id\":5,\"hsn\":32089090,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"20.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"11.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T06:21:24.000000Z\",\"updated_at\":\"2024-06-12T10:06:59.000000Z\",\"deleted_at\":null},\"old\":{\"id\":48,\"product_type_id\":15,\"unit_id\":3,\"paper_type\":null,\"code\":\"AW(50001)-005\",\"name\":\"Aqua Warnish(50001)\",\"category_id\":5,\"hsn\":32089090,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"20.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"11.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T06:21:24.000000Z\",\"updated_at\":\"2024-06-11T06:23:46.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:06:59', '2024-06-12 10:06:59'),
(361, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 49, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":49,\"product_type_id\":15,\"unit_id\":5,\"paper_type\":null,\"code\":\"EW-006\",\"name\":\"ECO WASH 101K Huber\",\"category_id\":5,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"25.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T10:08:00.000000Z\",\"updated_at\":\"2024-06-12T10:07:22.000000Z\",\"deleted_at\":null},\"old\":{\"id\":49,\"product_type_id\":15,\"unit_id\":5,\"paper_type\":null,\"code\":\"EW-006\",\"name\":\"ECO WASH 101K\",\"category_id\":5,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"25.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-11T10:08:00.000000Z\",\"updated_at\":\"2024-06-11T10:08:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:07:22', '2024-06-12 10:07:22'),
(362, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 7, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":7,\"planning_by\":10,\"job_card_no\":\"006\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T10:37:46.000000Z\",\"updated_at\":\"2024-06-12T10:37:46.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 10:37:46', '2024-06-12 10:37:46');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(363, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 7, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":7,\"job_card_id\":7,\"planning_id\":6,\"purchase_order_id\":4,\"purchase_order_item_id\":6,\"ups\":4,\"quantity\":3448,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-12T10:37:46.000000Z\",\"updated_at\":\"2024-06-12T10:37:46.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:37:46', '2024-06-12 10:37:46'),
(364, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 7, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":7,\"planning_by\":10,\"job_card_no\":\"006\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"11.5X19\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":474,\"dye_details\":\"909\\/4-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T10:37:46.000000Z\",\"updated_at\":\"2024-06-12T10:37:46.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null},\"old\":{\"id\":7,\"planning_by\":10,\"job_card_no\":\"006\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-06-12T10:37:46.000000Z\",\"updated_at\":\"2024-06-12T10:37:46.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 10:37:46', '2024-06-12 10:37:46'),
(365, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 7, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":7,\"job_card_id\":7,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-06-12T10:37:46.000000Z\",\"updated_at\":\"2024-06-12T10:37:46.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:37:46', '2024-06-12 10:37:46'),
(366, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 8, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":8,\"planning_by\":10,\"job_card_no\":\"007\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T10:38:02.000000Z\",\"updated_at\":\"2024-06-12T10:38:02.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 10:38:02', '2024-06-12 10:38:02'),
(367, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 8, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":8,\"job_card_id\":8,\"planning_id\":5,\"purchase_order_id\":3,\"purchase_order_item_id\":5,\"ups\":6,\"quantity\":9592,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-12T10:38:02.000000Z\",\"updated_at\":\"2024-06-12T10:38:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:38:02', '2024-06-12 10:38:02'),
(368, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 8, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":8,\"planning_by\":10,\"job_card_no\":\"007\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"17.5X24.7\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":426,\"dye_details\":\"741\\/6-LBTO\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T10:38:02.000000Z\",\"updated_at\":\"2024-06-12T10:38:02.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null},\"old\":{\"id\":8,\"planning_by\":10,\"job_card_no\":\"007\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-06-12T10:38:02.000000Z\",\"updated_at\":\"2024-06-12T10:38:02.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 10:38:02', '2024-06-12 10:38:02'),
(369, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 8, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":8,\"job_card_id\":8,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-06-12T10:38:02.000000Z\",\"updated_at\":\"2024-06-12T10:38:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 10:38:02', '2024-06-12 10:38:02'),
(370, 'product', 'product has been created', 'App\\Models\\Product', 'created', 80, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":80,\"product_type_id\":16,\"unit_id\":3,\"paper_type\":null,\"code\":\"032 Red\",\"name\":\"Pantone 032 Red\",\"category_id\":10,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"1.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"1.00\",\"in_hand_quantity\":1,\"type\":null,\"created_at\":\"2024-06-12T12:27:59.000000Z\",\"updated_at\":\"2024-06-12T12:27:59.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 12:27:59', '2024-06-12 12:27:59'),
(371, 'product', 'product has been created', 'App\\Models\\Product', 'created', 81, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":81,\"product_type_id\":20,\"unit_id\":1,\"paper_type\":null,\"code\":\"BUK-009\",\"name\":\"Bucket\",\"category_id\":15,\"hsn\":0,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"1.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"6.00\",\"in_hand_quantity\":1,\"type\":null,\"created_at\":\"2024-06-12T12:42:55.000000Z\",\"updated_at\":\"2024-06-12T12:42:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 12:42:55', '2024-06-12 12:42:55'),
(372, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 81, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":81,\"product_type_id\":20,\"unit_id\":1,\"paper_type\":null,\"code\":\"BUK-009\",\"name\":\"Bucket\",\"category_id\":15,\"hsn\":0,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"1.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"5.00\",\"in_hand_quantity\":1,\"type\":null,\"created_at\":\"2024-06-12T12:42:55.000000Z\",\"updated_at\":\"2024-06-12T12:47:35.000000Z\",\"deleted_at\":null},\"old\":{\"id\":81,\"product_type_id\":20,\"unit_id\":1,\"paper_type\":null,\"code\":\"BUK-009\",\"name\":\"Bucket\",\"category_id\":15,\"hsn\":0,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"1.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"6.00\",\"in_hand_quantity\":1,\"type\":null,\"created_at\":\"2024-06-12T12:42:55.000000Z\",\"updated_at\":\"2024-06-12T12:42:55.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 12:47:35', '2024-06-12 12:47:35'),
(373, 'Dye Details', 'Dye Details has been created', 'App\\Models\\DyeDetails', 'created', 482, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":482,\"dye_no\":\"550\",\"length\":147,\"width\":90,\"height\":95,\"dye_lock\":\"lockbottom\",\"ups\":2,\"sheet_size\":\"18x19\",\"automatic\":1,\"carton_size\":\"147X90X95\",\"created_at\":\"2024-06-12T12:51:34.000000Z\",\"updated_at\":\"2024-06-12T12:51:34.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 12:51:34', '2024-06-12 12:51:34'),
(374, 'Dye Details', 'Dye Details has been updated', 'App\\Models\\DyeDetails', 'updated', 418, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":418,\"dye_no\":\"732\",\"length\":50,\"width\":30,\"height\":69,\"dye_lock\":\"BSO\",\"ups\":10,\"sheet_size\":\"14X23\",\"automatic\":1,\"carton_size\":\"50X30X69\",\"created_at\":\"2024-06-08T17:04:37.000000Z\",\"updated_at\":\"2024-06-12T12:59:23.000000Z\",\"deleted_at\":null},\"old\":{\"id\":418,\"dye_no\":\"732\",\"length\":50,\"width\":30,\"height\":69,\"dye_lock\":\"BSO\",\"ups\":10,\"sheet_size\":\"13.5X23\",\"automatic\":0,\"carton_size\":\"50X30X69\",\"created_at\":\"2024-06-08T17:04:37.000000Z\",\"updated_at\":\"2024-06-08T17:04:37.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 12:59:23', '2024-06-12 12:59:23'),
(375, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 9, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":9,\"planning_by\":10,\"job_card_no\":\"008\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T13:02:03.000000Z\",\"updated_at\":\"2024-06-12T13:02:03.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 13:02:03', '2024-06-12 13:02:03'),
(376, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 9, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":9,\"job_card_id\":9,\"planning_id\":44,\"purchase_order_id\":9,\"purchase_order_item_id\":37,\"ups\":3,\"quantity\":1000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-12T13:02:03.000000Z\",\"updated_at\":\"2024-06-12T13:02:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 13:02:03', '2024-06-12 13:02:03'),
(377, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 9, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":9,\"planning_by\":3,\"job_card_no\":\"008\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"19X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":473,\"dye_details\":\"775\\/3-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T13:02:03.000000Z\",\"updated_at\":\"2024-06-12T13:02:03.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null},\"old\":{\"id\":9,\"planning_by\":10,\"job_card_no\":\"008\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-06-12T13:02:03.000000Z\",\"updated_at\":\"2024-06-12T13:02:03.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 13:02:03', '2024-06-12 13:02:03'),
(378, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 9, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":9,\"job_card_id\":9,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-06-12T13:02:03.000000Z\",\"updated_at\":\"2024-06-12T13:02:03.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 13:02:03', '2024-06-12 13:02:03'),
(379, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 10, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":10,\"planning_by\":10,\"job_card_no\":\"009\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T13:02:10.000000Z\",\"updated_at\":\"2024-06-12T13:02:10.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 13:02:10', '2024-06-12 13:02:10'),
(380, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 10, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":10,\"job_card_id\":10,\"planning_id\":41,\"purchase_order_id\":11,\"purchase_order_item_id\":40,\"ups\":10,\"quantity\":9400,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-12T13:02:10.000000Z\",\"updated_at\":\"2024-06-12T13:02:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 13:02:10', '2024-06-12 13:02:10'),
(381, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 10, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":10,\"planning_by\":3,\"job_card_no\":\"009\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"14X23\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":418,\"dye_details\":\"732\\/10-BSO\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T13:02:10.000000Z\",\"updated_at\":\"2024-06-12T13:02:10.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null},\"old\":{\"id\":10,\"planning_by\":10,\"job_card_no\":\"009\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-06-12T13:02:10.000000Z\",\"updated_at\":\"2024-06-12T13:02:10.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 13:02:10', '2024-06-12 13:02:10'),
(382, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 10, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":10,\"job_card_id\":10,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-06-12T13:02:10.000000Z\",\"updated_at\":\"2024-06-12T13:02:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 13:02:10', '2024-06-12 13:02:10'),
(383, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 41, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":41,\"purchase_order_id\":13,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rozuxa ASP\",\"carton_size\":\"147X90X95\",\"quantity\":2000,\"rate\":\"5.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20185258\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T13:02:29.000000Z\",\"deleted_at\":null},\"old\":{\"id\":41,\"purchase_order_id\":13,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rozuxa ASP\",\"carton_size\":\"147X90X95\",\"quantity\":2000,\"rate\":\"5.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20185258\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T05:45:51.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 13:02:29', '2024-06-12 13:02:29'),
(384, 'Purchase Order', 'Purchase Order has been updated', 'App\\Models\\PurchaseOrder', 'updated', 13, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":13,\"client_id\":13,\"po_no\":\"4501062192\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":10,\"designer\":10,\"po_remarks\":null,\"status_id\":6,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T13:02:44.000000Z\",\"deleted_at\":null},\"old\":{\"id\":13,\"client_id\":13,\"po_no\":\"4501062192\",\"po_date\":\"2024-06-10T18:30:00.000000Z\",\"made_by\":7,\"designer\":10,\"po_remarks\":null,\"status_id\":6,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T05:57:27.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 13:02:44', '2024-06-12 13:02:44'),
(385, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 41, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":41,\"purchase_order_id\":13,\"product_id\":null,\"dye_details_id\":482,\"carton_name\":\"Carton Rozuxa ASP\",\"carton_size\":\"147X90X95\",\"quantity\":2000,\"rate\":\"5.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20185258\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T13:02:44.000000Z\",\"deleted_at\":null},\"old\":{\"id\":41,\"purchase_order_id\":13,\"product_id\":null,\"dye_details_id\":null,\"carton_name\":\"Carton Rozuxa ASP\",\"carton_size\":\"147X90X95\",\"quantity\":2000,\"rate\":\"5.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20185258\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T13:02:29.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 13:02:44', '2024-06-12 13:02:44'),
(386, 'Purchase Order Item', 'Purchase Order Item has been updated', 'App\\Models\\PurchaseOrderItem', 'updated', 41, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":41,\"purchase_order_id\":13,\"product_id\":null,\"dye_details_id\":482,\"carton_name\":\"Carton Rozuxa ASP\",\"carton_size\":\"147X90X95\",\"quantity\":2000,\"rate\":\"5.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20185258\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":11,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T13:03:45.000000Z\",\"deleted_at\":null},\"old\":{\"id\":41,\"purchase_order_id\":13,\"product_id\":null,\"dye_details_id\":482,\"carton_name\":\"Carton Rozuxa ASP\",\"carton_size\":\"147X90X95\",\"quantity\":2000,\"rate\":\"5.55\",\"gst\":\"18.00\",\"coating_type_id\":3,\"other_coating_type_id\":1,\"embossing_leafing\":0,\"paper_type_id\":1,\"art_work\":\"20185258\",\"gsm\":330,\"remarks\":null,\"delivery_date\":null,\"bill_no\":null,\"lock_status\":0,\"quantity_status\":1,\"rate_status\":1,\"back_print\":0,\"status_id\":2,\"created_at\":\"2024-06-11T14:14:55.000000Z\",\"updated_at\":\"2024-06-12T13:02:44.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 13:03:45', '2024-06-12 13:03:45'),
(387, 'Job Card', 'Job Card has been created', 'App\\Models\\JobCard', 'created', 11, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":11,\"planning_by\":10,\"job_card_no\":\"010\",\"mix\":0,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T13:04:02.000000Z\",\"updated_at\":\"2024-06-12T13:04:02.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 13:04:02', '2024-06-12 13:04:02'),
(388, 'Job CardI tem', 'Job Card Item has been created', 'App\\Models\\JobCardItem', 'created', 11, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":11,\"job_card_id\":11,\"planning_id\":48,\"purchase_order_id\":13,\"purchase_order_item_id\":41,\"ups\":2,\"quantity\":2000,\"ready_quantity\":null,\"ready_box\":null,\"status_id\":1,\"warehouse_stock_type\":null,\"created_at\":\"2024-06-12T13:04:02.000000Z\",\"updated_at\":\"2024-06-12T13:04:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 13:04:02', '2024-06-12 13:04:02'),
(389, 'Job Card', 'Job Card has been updated', 'App\\Models\\JobCard', 'updated', 11, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":11,\"planning_by\":10,\"job_card_no\":\"010\",\"mix\":1,\"product_id\":null,\"sheet_size\":\"18x19\",\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":482,\"dye_details\":\"550\\/2-lockbottom\",\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":99,\"created_at\":\"2024-06-12T13:04:02.000000Z\",\"updated_at\":\"2024-06-12T13:04:02.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null},\"old\":{\"id\":11,\"planning_by\":10,\"job_card_no\":\"010\",\"mix\":null,\"product_id\":null,\"sheet_size\":null,\"required_sheet\":null,\"wastage_sheet\":null,\"total_sheet\":null,\"paper_divide\":null,\"dye_details_id\":null,\"dye_details\":null,\"dye_machine\":null,\"warehouse_type\":null,\"warehouse_paper\":null,\"warehouse_sheet\":null,\"color\":null,\"set_no\":null,\"coating_machine\":null,\"other_coating_machine\":null,\"coating_window_cutting\":null,\"embossing_leafing\":null,\"roll_used\":null,\"cutting_sheets\":null,\"printed_sheets\":null,\"coated_sheets\":null,\"laminated_sheets\":null,\"spot_uv_sheets\":null,\"dye_counter\":null,\"leafing_counter\":null,\"embossing_counter\":null,\"status_id\":null,\"created_at\":\"2024-06-12T13:04:02.000000Z\",\"updated_at\":\"2024-06-12T13:04:02.000000Z\",\"deleted_at\":null,\"job_card_created_at\":null}}', NULL, '2024-06-12 13:04:02', '2024-06-12 13:04:02'),
(390, 'Designing', 'Designing has been created', 'App\\Models\\Designing', 'created', 11, 'App\\Models\\Admin', 10, '{\"attributes\":{\"id\":11,\"job_card_id\":11,\"sheet_size\":null,\"required_sheet\":null,\"color\":null,\"set_no\":null,\"status_id\":2,\"created_at\":\"2024-06-12T13:04:02.000000Z\",\"updated_at\":\"2024-06-12T13:04:02.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-12 13:04:02', '2024-06-12 13:04:02'),
(391, 'product', 'product has been created', 'App\\Models\\Product', 'created', 82, 'App\\Models\\Admin', 7, '{\"attributes\":{\"id\":82,\"product_type_id\":3,\"unit_id\":3,\"paper_type\":1,\"code\":\"B-101\",\"name\":\"25X36-320\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"18.58\",\"item_per_packet\":100,\"weight_per_piece\":\"0.19\",\"length\":\"25.00\",\"width\":\"36.00\",\"gsm\":320,\"quantity\":null,\"in_hand_quantity\":null,\"type\":1,\"created_at\":\"2024-06-13T06:29:24.000000Z\",\"updated_at\":\"2024-06-13T06:29:24.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 06:29:24', '2024-06-13 06:29:24'),
(392, 'product', 'product has been created', 'App\\Models\\Product', 'created', 83, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":83,\"product_type_id\":3,\"unit_id\":2,\"paper_type\":2,\"code\":\"20\",\"name\":\"26X34-320\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"18.25\",\"item_per_packet\":100,\"weight_per_piece\":\"0.18\",\"length\":\"26.00\",\"width\":\"34.00\",\"gsm\":320,\"quantity\":null,\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-13T06:29:36.000000Z\",\"updated_at\":\"2024-06-13T06:29:36.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 06:29:36', '2024-06-13 06:29:36'),
(393, 'product', 'product has been created', 'App\\Models\\Product', 'created', 84, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":84,\"product_type_id\":15,\"unit_id\":3,\"paper_type\":null,\"code\":\"SP-010\",\"name\":\"Spray Powder Huber\",\"category_id\":5,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"1.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":null,\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-13T06:58:20.000000Z\",\"updated_at\":\"2024-06-13T06:58:20.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 06:58:20', '2024-06-13 06:58:20'),
(394, 'product', 'product has been created', 'App\\Models\\Product', 'created', 85, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":85,\"product_type_id\":17,\"unit_id\":3,\"paper_type\":null,\"code\":\"ALL-011\",\"name\":\"Allstick Fevicol\",\"category_id\":7,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"5.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":null,\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-13T07:00:49.000000Z\",\"updated_at\":\"2024-06-13T07:00:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:00:49', '2024-06-13 07:00:49'),
(395, 'product', 'product has been created', 'App\\Models\\Product', 'created', 86, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":86,\"product_type_id\":15,\"unit_id\":5,\"paper_type\":null,\"code\":\"TH-012\",\"name\":\"Thinner Commercial\",\"category_id\":5,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"5.00\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":null,\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-13T07:01:43.000000Z\",\"updated_at\":\"2024-06-13T07:01:43.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:01:43', '2024-06-13 07:01:43'),
(396, 'product', 'product has been created', 'App\\Models\\Product', 'created', 87, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":87,\"product_type_id\":21,\"unit_id\":6,\"paper_type\":null,\"code\":\"KRIS-013\",\"name\":\"Kris Matrix Groove\",\"category_id\":16,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":1,\"weight_per_piece\":\"50.000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":null,\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-13T07:07:05.000000Z\",\"updated_at\":\"2024-06-13T07:07:05.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:07:05', '2024-06-13 07:07:05'),
(397, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\MaterialOrderItem', 'created', 5, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":5,\"material_order_id\":5,\"category_id\":5,\"product_id\":86,\"item_name\":\"Thinner Commercial\",\"quantity\":\"6.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"5.00\",\"total_weight\":\"30.00\",\"unit_id\":5,\"rate_on\":\"70.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"6.00\",\"rate\":\"2100.00\",\"gst\":\"18.00\",\"gst_amount\":\"378.00\",\"amount\":\"2100.00\",\"receive_status\":0,\"created_at\":\"2024-06-13T07:10:16.000000Z\",\"updated_at\":\"2024-06-13T07:10:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:10:16', '2024-06-13 07:10:16'),
(398, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\MaterialOrderItem', 'created', 6, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":6,\"material_order_id\":5,\"category_id\":16,\"product_id\":87,\"item_name\":\"Kris Matrix Groove\",\"quantity\":\"2.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"50.00\",\"total_weight\":\"100.00\",\"unit_id\":6,\"rate_on\":\"86.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"2.00\",\"rate\":\"8600.00\",\"gst\":\"18.00\",\"gst_amount\":\"1548.00\",\"amount\":\"8600.00\",\"receive_status\":0,\"created_at\":\"2024-06-13T07:10:16.000000Z\",\"updated_at\":\"2024-06-13T07:10:16.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:10:16', '2024-06-13 07:10:16'),
(399, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 82, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":82,\"product_type_id\":3,\"unit_id\":3,\"paper_type\":1,\"code\":\"B-101\",\"name\":\"25X36-320\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"18.58\",\"item_per_packet\":200,\"weight_per_piece\":\"0.190\",\"length\":\"25.00\",\"width\":\"36.00\",\"gsm\":320,\"quantity\":null,\"in_hand_quantity\":null,\"type\":1,\"created_at\":\"2024-06-13T06:29:24.000000Z\",\"updated_at\":\"2024-06-13T07:11:52.000000Z\",\"deleted_at\":null},\"old\":{\"id\":82,\"product_type_id\":3,\"unit_id\":3,\"paper_type\":1,\"code\":\"B-101\",\"name\":\"25X36-320\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"18.58\",\"item_per_packet\":100,\"weight_per_piece\":\"0.190\",\"length\":\"25.00\",\"width\":\"36.00\",\"gsm\":320,\"quantity\":null,\"in_hand_quantity\":null,\"type\":1,\"created_at\":\"2024-06-13T06:29:24.000000Z\",\"updated_at\":\"2024-06-13T06:29:24.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:11:52', '2024-06-13 07:11:52'),
(400, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 82, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":82,\"product_type_id\":3,\"unit_id\":3,\"paper_type\":1,\"code\":\"B-101\",\"name\":\"25X36-320\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"18.58\",\"item_per_packet\":100,\"weight_per_piece\":\"0.190\",\"length\":\"25.00\",\"width\":\"36.00\",\"gsm\":320,\"quantity\":null,\"in_hand_quantity\":null,\"type\":1,\"created_at\":\"2024-06-13T06:29:24.000000Z\",\"updated_at\":\"2024-06-13T07:12:28.000000Z\",\"deleted_at\":null},\"old\":{\"id\":82,\"product_type_id\":3,\"unit_id\":3,\"paper_type\":1,\"code\":\"B-101\",\"name\":\"25X36-320\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"18.58\",\"item_per_packet\":200,\"weight_per_piece\":\"0.190\",\"length\":\"25.00\",\"width\":\"36.00\",\"gsm\":320,\"quantity\":null,\"in_hand_quantity\":null,\"type\":1,\"created_at\":\"2024-06-13T06:29:24.000000Z\",\"updated_at\":\"2024-06-13T07:11:52.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:12:28', '2024-06-13 07:12:28'),
(401, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\MaterialOrderItem', 'created', 7, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":7,\"material_order_id\":6,\"category_id\":5,\"product_id\":47,\"item_name\":\"Plate Cleaner GP TECHNOVA\",\"quantity\":\"6.00\",\"hsn\":\"3814\",\"weight_per_piece\":\"5.00\",\"total_weight\":\"30.00\",\"unit_id\":3,\"rate_on\":\"151.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"6.00\",\"rate\":\"4530.00\",\"gst\":\"18.00\",\"gst_amount\":\"815.40\",\"amount\":\"4530.00\",\"receive_status\":0,\"created_at\":\"2024-06-13T07:13:22.000000Z\",\"updated_at\":\"2024-06-13T07:13:22.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:13:22', '2024-06-13 07:13:22'),
(402, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 82, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":82,\"product_type_id\":3,\"unit_id\":3,\"paper_type\":1,\"code\":\"B-101\",\"name\":\"25X36-320\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"18.58\",\"item_per_packet\":100,\"weight_per_piece\":\"0.186\",\"length\":\"25.00\",\"width\":\"36.00\",\"gsm\":320,\"quantity\":null,\"in_hand_quantity\":null,\"type\":1,\"created_at\":\"2024-06-13T06:29:24.000000Z\",\"updated_at\":\"2024-06-13T07:18:17.000000Z\",\"deleted_at\":null},\"old\":{\"id\":82,\"product_type_id\":3,\"unit_id\":3,\"paper_type\":1,\"code\":\"B-101\",\"name\":\"25X36-320\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"18.58\",\"item_per_packet\":100,\"weight_per_piece\":\"0.190\",\"length\":\"25.00\",\"width\":\"36.00\",\"gsm\":320,\"quantity\":null,\"in_hand_quantity\":null,\"type\":1,\"created_at\":\"2024-06-13T06:29:24.000000Z\",\"updated_at\":\"2024-06-13T07:12:28.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:18:17', '2024-06-13 07:18:17'),
(403, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 83, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":83,\"product_type_id\":3,\"unit_id\":2,\"paper_type\":2,\"code\":\"20\",\"name\":\"26X34-320\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"18.25\",\"item_per_packet\":100,\"weight_per_piece\":\"0.183\",\"length\":\"26.00\",\"width\":\"34.00\",\"gsm\":320,\"quantity\":null,\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-13T06:29:36.000000Z\",\"updated_at\":\"2024-06-13T07:20:18.000000Z\",\"deleted_at\":null},\"old\":{\"id\":83,\"product_type_id\":3,\"unit_id\":2,\"paper_type\":2,\"code\":\"20\",\"name\":\"26X34-320\",\"category_id\":2,\"hsn\":4810,\"packet_weight\":\"18.25\",\"item_per_packet\":100,\"weight_per_piece\":\"0.180\",\"length\":\"26.00\",\"width\":\"34.00\",\"gsm\":320,\"quantity\":null,\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-13T06:29:36.000000Z\",\"updated_at\":\"2024-06-13T06:29:36.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:20:18', '2024-06-13 07:20:18'),
(404, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 79, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":79,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"19\",\"name\":\"31.5X41.5-340\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"28.68\",\"item_per_packet\":100,\"weight_per_piece\":\"0.287\",\"length\":\"31.50\",\"width\":\"41.50\",\"gsm\":340,\"quantity\":\"200.00\",\"in_hand_quantity\":100,\"type\":1,\"created_at\":\"2024-06-12T10:02:30.000000Z\",\"updated_at\":\"2024-06-13T07:20:32.000000Z\",\"deleted_at\":null},\"old\":{\"id\":79,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"19\",\"name\":\"31.5X41.5-340\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"28.68\",\"item_per_packet\":100,\"weight_per_piece\":\"0.290\",\"length\":\"31.50\",\"width\":\"41.50\",\"gsm\":340,\"quantity\":\"200.00\",\"in_hand_quantity\":100,\"type\":1,\"created_at\":\"2024-06-12T10:02:30.000000Z\",\"updated_at\":\"2024-06-12T10:02:30.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:20:32', '2024-06-13 07:20:32'),
(405, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 53, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":53,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"01\",\"name\":\"19X40-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"15.69\",\"item_per_packet\":100,\"weight_per_piece\":\"0.157\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":320,\"quantity\":\"16400.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T08:35:03.000000Z\",\"updated_at\":\"2024-06-13T07:20:49.000000Z\",\"deleted_at\":null},\"old\":{\"id\":53,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"01\",\"name\":\"19X40-320\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"15.69\",\"item_per_packet\":100,\"weight_per_piece\":\"0.160\",\"length\":\"19.00\",\"width\":\"40.00\",\"gsm\":320,\"quantity\":\"16400.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T08:35:03.000000Z\",\"updated_at\":\"2024-06-12T08:36:54.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:20:49', '2024-06-13 07:20:49'),
(406, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 65, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":65,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"14\",\"name\":\"26X35-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"16.44\",\"item_per_packet\":100,\"weight_per_piece\":\"0.164\",\"length\":\"26.00\",\"width\":\"35.00\",\"gsm\":280,\"quantity\":\"500.00\",\"in_hand_quantity\":500,\"type\":1,\"created_at\":\"2024-06-12T09:25:07.000000Z\",\"updated_at\":\"2024-06-13T07:21:47.000000Z\",\"deleted_at\":null},\"old\":{\"id\":65,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"14\",\"name\":\"26X35-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"16.44\",\"item_per_packet\":100,\"weight_per_piece\":\"0.160\",\"length\":\"26.00\",\"width\":\"35.00\",\"gsm\":280,\"quantity\":\"500.00\",\"in_hand_quantity\":500,\"type\":1,\"created_at\":\"2024-06-12T09:25:07.000000Z\",\"updated_at\":\"2024-06-12T09:25:07.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:21:47', '2024-06-13 07:21:47'),
(407, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 55, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":55,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"03\",\"name\":\"22X31.50-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"12.52\",\"item_per_packet\":100,\"weight_per_piece\":\"0.125\",\"length\":\"22.00\",\"width\":\"31.50\",\"gsm\":280,\"quantity\":\"1000.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T08:36:39.000000Z\",\"updated_at\":\"2024-06-13T07:23:00.000000Z\",\"deleted_at\":null},\"old\":{\"id\":55,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"03\",\"name\":\"22X31.50-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"12.52\",\"item_per_packet\":100,\"weight_per_piece\":\"0.130\",\"length\":\"22.00\",\"width\":\"31.50\",\"gsm\":280,\"quantity\":\"1000.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T08:36:39.000000Z\",\"updated_at\":\"2024-06-12T08:39:58.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:23:00', '2024-06-13 07:23:00'),
(408, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 55, 'App\\Models\\Admin', 8, '{\"attributes\":{\"id\":55,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"03\",\"name\":\"22X31.50-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"12.52\",\"item_per_packet\":100,\"weight_per_piece\":\"0.125\",\"length\":\"22.00\",\"width\":\"31.50\",\"gsm\":280,\"quantity\":\"1000.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T08:36:39.000000Z\",\"updated_at\":\"2024-06-13T07:23:08.000000Z\",\"deleted_at\":null},\"old\":{\"id\":55,\"product_type_id\":4,\"unit_id\":2,\"paper_type\":1,\"code\":\"03\",\"name\":\"22X31.50-280\",\"category_id\":1,\"hsn\":4810,\"packet_weight\":\"12.52\",\"item_per_packet\":100,\"weight_per_piece\":\"0.125\",\"length\":\"22.00\",\"width\":\"31.50\",\"gsm\":280,\"quantity\":\"1000.00\",\"in_hand_quantity\":1000,\"type\":1,\"created_at\":\"2024-06-12T08:36:39.000000Z\",\"updated_at\":\"2024-06-13T07:23:00.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:23:08', '2024-06-13 07:23:08'),
(409, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 58, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":58,\"product_type_id\":13,\"unit_id\":2,\"paper_type\":4,\"code\":\"08\",\"name\":\"20.59X24.80-290\",\"category_id\":4,\"hsn\":4810,\"packet_weight\":\"19.11\",\"item_per_packet\":200,\"weight_per_piece\":\"0.100\",\"length\":\"20.59\",\"width\":\"24.80\",\"gsm\":290,\"quantity\":\"102700.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T09:07:59.000000Z\",\"updated_at\":\"2024-06-13T07:23:18.000000Z\",\"deleted_at\":null},\"old\":{\"id\":58,\"product_type_id\":13,\"unit_id\":2,\"paper_type\":4,\"code\":\"08\",\"name\":\"20.59X24.8-290\",\"category_id\":4,\"hsn\":4810,\"packet_weight\":\"19.11\",\"item_per_packet\":200,\"weight_per_piece\":\"0.100\",\"length\":\"20.59\",\"width\":\"24.80\",\"gsm\":290,\"quantity\":\"102700.00\",\"in_hand_quantity\":5000,\"type\":1,\"created_at\":\"2024-06-12T09:07:59.000000Z\",\"updated_at\":\"2024-06-12T09:07:59.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 07:23:18', '2024-06-13 07:23:18'),
(410, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\MaterialOrderItem', 'created', 8, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":8,\"material_order_id\":7,\"category_id\":5,\"product_id\":84,\"item_name\":\"Spray Powder Huber\",\"quantity\":\"10.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"1.00\",\"total_weight\":\"10.00\",\"unit_id\":3,\"rate_on\":\"160.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"10.00\",\"rate\":\"1600.00\",\"gst\":\"18.00\",\"gst_amount\":\"288.00\",\"amount\":\"1600.00\",\"receive_status\":0,\"created_at\":\"2024-06-13T08:13:51.000000Z\",\"updated_at\":\"2024-06-13T08:13:51.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 08:13:51', '2024-06-13 08:13:51'),
(411, 'Material Inward', 'Material Inward has been created', 'App\\Models\\MaterialInward', 'created', 2, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":2,\"receipt_no\":\"REC0002\",\"vendor_id\":21,\"bill_no\":\"CASH-1\",\"bill_date\":\"2024-06-12T18:30:00.000000Z\",\"subtotal\":null,\"total_gst\":null,\"total\":null,\"material_order_no\":\"00\",\"created_at\":\"2024-06-13T08:19:40.000000Z\",\"updated_at\":\"2024-06-13T08:19:40.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 08:19:40', '2024-06-13 08:19:40'),
(412, 'Material Inward Item', 'Material Inward Item has been created', 'App\\Models\\MaterialInwardItem', 'created', 2, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":2,\"material_inward_id\":2,\"category_id\":7,\"product_id\":85,\"item_name\":\"Allstick Fevicol\",\"quantity\":\"1.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"5.00\",\"total_weight\":\"5.00\",\"unit\":\"KG\",\"rate_on\":\"100.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"1.00\",\"rate\":\"500.00\",\"gst\":\"0.00\",\"gst_amount\":\"0.00\",\"amount\":\"500.00\",\"created_at\":\"2024-06-13T08:19:40.000000Z\",\"updated_at\":\"2024-06-13T08:19:40.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 08:19:40', '2024-06-13 08:19:40'),
(413, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 85, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":85,\"product_type_id\":17,\"unit_id\":3,\"paper_type\":null,\"code\":\"ALL-011\",\"name\":\"Allstick Fevicol\",\"category_id\":7,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"5.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"1.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-13T07:00:49.000000Z\",\"updated_at\":\"2024-06-13T08:19:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":85,\"product_type_id\":17,\"unit_id\":3,\"paper_type\":null,\"code\":\"ALL-011\",\"name\":\"Allstick Fevicol\",\"category_id\":7,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"5.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":null,\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-13T07:00:49.000000Z\",\"updated_at\":\"2024-06-13T07:00:49.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 08:19:40', '2024-06-13 08:19:40'),
(414, 'Material Inward', 'Material Inward has been updated', 'App\\Models\\MaterialInward', 'updated', 2, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":2,\"receipt_no\":\"REC0002\",\"vendor_id\":21,\"bill_no\":\"CASH-1\",\"bill_date\":\"2024-06-12T18:30:00.000000Z\",\"subtotal\":\"500.00\",\"total_gst\":\"0.00\",\"total\":\"500.00\",\"material_order_no\":\"00\",\"created_at\":\"2024-06-13T08:19:40.000000Z\",\"updated_at\":\"2024-06-13T08:19:40.000000Z\",\"deleted_at\":null},\"old\":{\"id\":2,\"receipt_no\":\"REC0002\",\"vendor_id\":\"21\",\"bill_no\":\"CASH-1\",\"bill_date\":\"2024-06-12T18:30:00.000000Z\",\"subtotal\":null,\"total_gst\":null,\"total\":null,\"material_order_no\":\"00\",\"created_at\":\"2024-06-13T08:19:40.000000Z\",\"updated_at\":\"2024-06-13T08:19:40.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 08:19:40', '2024-06-13 08:19:40'),
(415, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 85, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":85,\"product_type_id\":17,\"unit_id\":3,\"paper_type\":null,\"code\":\"ALL-011\",\"name\":\"Allstick Fevicol\",\"category_id\":7,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"5.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"-4.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-13T07:00:49.000000Z\",\"updated_at\":\"2024-06-13T08:21:37.000000Z\",\"deleted_at\":null},\"old\":{\"id\":85,\"product_type_id\":17,\"unit_id\":3,\"paper_type\":null,\"code\":\"ALL-011\",\"name\":\"Allstick Fevicol\",\"category_id\":7,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"5.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"1.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-13T07:00:49.000000Z\",\"updated_at\":\"2024-06-13T08:19:40.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 08:21:37', '2024-06-13 08:21:37');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(416, 'product', 'product has been updated', 'App\\Models\\Product', 'updated', 85, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":85,\"product_type_id\":17,\"unit_id\":3,\"paper_type\":null,\"code\":\"ALL-011\",\"name\":\"Allstick Fevicol\",\"category_id\":7,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"5.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"0.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-13T07:00:49.000000Z\",\"updated_at\":\"2024-06-13T08:22:14.000000Z\",\"deleted_at\":null},\"old\":{\"id\":85,\"product_type_id\":17,\"unit_id\":3,\"paper_type\":null,\"code\":\"ALL-011\",\"name\":\"Allstick Fevicol\",\"category_id\":7,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"5.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":\"-4.00\",\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-13T07:00:49.000000Z\",\"updated_at\":\"2024-06-13T08:21:37.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 08:22:14', '2024-06-13 08:22:14'),
(417, 'product', 'product has been created', 'App\\Models\\Product', 'created', 88, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":88,\"product_type_id\":17,\"unit_id\":1,\"paper_type\":null,\"code\":\"Fevi-113\",\"name\":\"Feviquick\",\"category_id\":7,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"1.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":null,\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-13T08:33:34.000000Z\",\"updated_at\":\"2024-06-13T08:33:34.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 08:33:34', '2024-06-13 08:33:34'),
(418, 'product', 'product has been created', 'App\\Models\\Product', 'created', 89, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":89,\"product_type_id\":17,\"unit_id\":1,\"paper_type\":null,\"code\":\"Fevib-114\",\"name\":\"Fevibond\",\"category_id\":7,\"hsn\":4819,\"packet_weight\":null,\"item_per_packet\":\"1.0000\",\"weight_per_piece\":\"1.0000\",\"length\":null,\"width\":null,\"gsm\":null,\"quantity\":null,\"in_hand_quantity\":null,\"type\":null,\"created_at\":\"2024-06-13T08:34:12.000000Z\",\"updated_at\":\"2024-06-13T08:34:12.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 08:34:12', '2024-06-13 08:34:12'),
(419, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\MaterialOrderItem', 'created', 9, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":9,\"material_order_id\":8,\"category_id\":7,\"product_id\":88,\"item_name\":\"Feviquick\",\"quantity\":\"25.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"1.00\",\"total_weight\":\"25.00\",\"unit_id\":1,\"rate_on\":\"55.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"25.00\",\"rate\":\"1375.00\",\"gst\":\"0.00\",\"gst_amount\":\"0.00\",\"amount\":\"1375.00\",\"receive_status\":0,\"created_at\":\"2024-06-13T08:36:10.000000Z\",\"updated_at\":\"2024-06-13T08:36:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 08:36:10', '2024-06-13 08:36:10'),
(420, 'Purchase Order Item', 'Purchase Order Item has been created', 'App\\Models\\MaterialOrderItem', 'created', 10, 'App\\Models\\Admin', 9, '{\"attributes\":{\"id\":10,\"material_order_id\":8,\"category_id\":7,\"product_id\":89,\"item_name\":\"Fevibond\",\"quantity\":\"25.00\",\"hsn\":\"4819\",\"weight_per_piece\":\"1.00\",\"total_weight\":\"25.00\",\"unit_id\":1,\"rate_on\":\"55.00\",\"sheet_per_packet\":\"0.00\",\"item_per_packet\":\"1.00\",\"total_item\":\"25.00\",\"rate\":\"1375.00\",\"gst\":\"0.00\",\"gst_amount\":\"0.00\",\"amount\":\"1375.00\",\"receive_status\":0,\"created_at\":\"2024-06-13T08:36:10.000000Z\",\"updated_at\":\"2024-06-13T08:36:10.000000Z\",\"deleted_at\":null}}', NULL, '2024-06-13 08:36:10', '2024-06-13 08:36:10');

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
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `avatar` varchar(255) DEFAULT '/default-avatar.jpg',
  `cover_photo` varchar(255) DEFAULT 'assets/images/profile-bg.jpg',
  `gender` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `google2fa_secret` varchar(255) DEFAULT NULL,
  `google2fa_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `name`, `email`, `mobile`, `password`, `remember_token`, `status`, `avatar`, `cover_photo`, `gender`, `date_of_birth`, `google2fa_secret`, `google2fa_enabled`, `latitude`, `longitude`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'AR', 'admin@artechnology.in', '8109763160', '$2y$10$HkdFs35.H07KzyY3BmmxJ.E1jCV9NFczzyvki1lHGGHqTqQ5N70VS', 'KQwYLppsGODZh241LiHYWQTeSzk5ev1UD3psCYaHRHrUycGuTXSfTFchbCAS', 1, 'storage/admin/1718219804.jpeg', 'storage/admin/1703261606.jpg', 'male', '2022-01-20', NULL, 0, NULL, NULL, '2022-06-25 15:33:05', '2024-06-13 00:46:48', NULL),
(6, 2, 'Asif Jamal', 'asif@gmail.com', '8109763160', '$2y$12$8ENfcz3SbVJucvirwclJSe1/54yDuY5/TMic18EflNHNZ5PScgYxK', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1994-11-25', 'eyJpdiI6Ik5pcjR0WFdZUm9oUG4rbFRRQ1BGRVE9PSIsInZhbHVlIjoiL2dITTlaL3UySCt6aFhwaEJveDc4Zlg2RGtSak9XdTBETVJ6QVBobVFCWT0iLCJtYWMiOiJhZTkwZjk5ZjE3Nzk5MzQ0OTFiY2I1MTBjNDk4ZjUxNWI4ZTI5NzRkZTg3NWRkYzdjNmYwMmExMjEwZmIzYjkzIiwidGFnIjoiIn0=', 0, '30.6850551', '76.7245967', '2024-06-03 11:30:20', '2024-06-05 08:43:42', NULL),
(7, 2, 'Saurabh', 'saurabh@shreyaoffset.com', '0987654321', '$2y$12$X95sf4chC3ElRzXaG4OYQ.CV96qCAszlw1.T2/ZhmYzDfnKdFhFci', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 14:27:33', '2024-06-10 16:02:16', NULL),
(8, 3, 'Surjeet', 'surjeet@shreyaoffset.com', '0987654321', '$2y$12$qfJUra7p54n.GjQGuIK2KudD3auT4AdSkHaLeOIwRWnIWxrJ5igNS', NULL, 1, 'avatar', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 14:30:12', '2024-06-10 14:30:12', NULL),
(9, 18, 'Store', 'store@shreyaoffset.com', '0987654321', '$2y$12$PBNx68aoOFeYt4pjdPB7QebBNzOeCcV6ztxlI4TPI8w5aR9wMY92W', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 14:38:38', '2024-06-10 14:38:38', NULL),
(10, 4, 'Amit Rana', 'designing@shreyaoffset.com', '0987654321', '$2y$12$5RPQiWT64YRmYPq8axphI.MZE6tHnxVuOcffgWBU2HE/zFkAFDpCC', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 14:40:14', '2024-06-10 14:41:24', NULL),
(11, 19, 'Gate Keeper', 'gatekeeper@shreyaoffset.com', '0987654321', '$2y$12$U4oNA.9N90A5w1igdvSvjebK0vvdchbyicYoW/3uf/qokb03oonlO', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 14:45:50', '2024-06-10 14:47:43', NULL),
(12, 6, 'Printing', 'sm74@gmail.com', '0987654321', '$2y$12$tCuYHCsXgbGzRzMpfudRteV0mPFcCR63SFZcAHfAf1hMJSHBd9wxC', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 14:50:42', '2024-06-10 14:50:54', NULL),
(13, 6, 'Dominant', 'Dominant@gmail.com', '0987654321', '$2y$12$oFYH57pIxgb.4lJ.Bx5PNe7bT6Z/9ElXgh40obHWvbjlFWztV/jHK', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '2024-09-01', NULL, 0, NULL, NULL, '2024-06-10 14:55:41', '2024-06-10 14:55:41', NULL),
(14, 6, 'MOV', 'mov@gmail.com', '0987654321', '$2y$12$yvGn/fgzrmawXDgmJ.3Ztu5fd7TQIXcvo69fsahTJe8QKe0KyAW5S', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 14:56:21', '2024-06-10 14:56:21', NULL),
(15, 7, 'Coating1', 'coating1@gmail.com', '0987654321', '$2y$12$y.W.fPXfP2K2JVmT8rPM2uxVfl6k8GvgUADzy9wabb2jZl/ab76z2', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 14:57:18', '2024-06-10 14:57:18', NULL),
(16, 7, 'Coating 2', 'coating2@gmail.com', '0987654321', '$2y$12$HBzr8yciOZZNJV8x84TvaeuVJzWskgrx10D23cPx.mHHxrqLUGv5K', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 15:04:16', '2024-06-10 15:07:04', NULL),
(17, 12, 'Manual Dye', 'dye@gmail.com', '0987654321', '$2y$12$jUYUX5xC/DFL2.kkrAmU1.u0iswBX3wBh053Q1u3bI8dbDkorcjXO', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 15:10:20', '2024-06-10 15:10:20', NULL),
(18, 5, 'Paper Cutting', 'cutting@gmail.com', '0987654321', '$2y$12$9mlSE/Yr1tpjGEArbrqf/eqSuk39mXpwkelDKSt33..ndbROG/UyK', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 15:13:08', '2024-06-10 15:13:08', NULL),
(19, 13, 'Pasting', 'pasting@gmail.com', '0987654321', '$2y$12$vEnyvoGsJGIRjWSex0CzbeaPG.MiVObhlS.bTf8H2l/1HNHyGLTMC', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 15:15:57', '2024-06-10 15:15:57', NULL),
(20, 20, 'Dispatch', 'dispatch@gmail.com', '0987654321', '$2y$12$knkAbbVDQC9psk4Y6fTZoO2n7VgWv9pTjIbOU/R3blhGQDskd.5CO', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 15:19:43', '2024-06-10 15:22:38', NULL),
(21, 14, 'Billing', 'billing@gmail.com', '0987654321', '$2y$12$zVckALV5TJIYX0MpGa.90uGQuXNedbmHWdB1XpIPLj9KU7i3EQfgG', NULL, 1, '/default-avatar.jpg', 'assets/images/profile-bg.jpg', 'male', '1990-09-01', NULL, 0, NULL, NULL, '2024-06-10 15:23:57', '2024-06-10 15:23:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

CREATE TABLE `billings` (
  `id` bigint(20) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `client_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT '2',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billing_items`
--

CREATE TABLE `billing_items` (
  `id` int(11) NOT NULL,
  `billing_id` bigint(20) NOT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  `purchase_order_item_id` bigint(20) DEFAULT NULL,
  `carton_name` varchar(255) NOT NULL,
  `ready_quantity` varchar(255) NOT NULL,
  `ready_box` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cartons`
--

CREATE TABLE `cartons` (
  `id` int(11) NOT NULL,
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
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cartons`
--

INSERT INTO `cartons` (`id`, `client_id`, `carton_name`, `carton_size`, `rate`, `coating_type_id`, `other_coating_type_id`, `embossing_leafing`, `paper_type_id`, `gsm`, `art_work`, `created_at`, `updated_at`) VALUES
(1, 10, 'Outer Carton Vidadeb-50 M Forte', '160X131X168', NULL, 6, '1', 1, 3, 300, 'PMSEC003D9015', '2024-06-10 18:20:30', '2024-06-10 18:20:30'),
(2, 10, 'Inner Carton Vidadeb-50M Forte', '127X15X164', NULL, 6, '1', 1, 3, 280, 'PMSEC003D9014', '2024-06-10 18:20:30', '2024-06-10 18:20:30'),
(3, 10, 'Adivit CZ', '165X95X108', NULL, 6, '1', 1, 3, 300, 'PMSEC003D4562R1', '2024-06-10 18:20:30', '2024-06-10 18:20:30'),
(4, 12, 'AMPLUS-LB', '170X65X98', NULL, 3, '1', 0, 3, 330, '20220268', '2024-06-10 18:41:39', '2024-06-10 18:41:39'),
(5, 13, 'Nulax- Plus 170ml', '54X54X130', NULL, 6, '1', 1, 3, 330, '20214856', '2024-06-10 18:59:16', '2024-06-10 18:59:16'),
(7, 14, 'corpogest 400', '100X38X62', NULL, 4, '1', 0, 1, 330, '20193806', '2024-06-10 19:19:00', '2024-06-10 19:19:00'),
(8, 15, 'Carton Sugrcure 40/500', '82X80X80', NULL, 6, '1', 0, 3, 330, 'PMSPCWI12408-D0R0', '2024-06-11 13:02:00', '2024-06-11 13:02:00'),
(9, 15, 'Carton Adipostat-CV 20 inner', '78X15X123', NULL, 4, '1', 0, 3, 300, 'PMSPCWI12663-D0R0', '2024-06-11 14:12:45', '2024-06-11 14:12:45'),
(10, 15, 'Carton Adipostat-CV 20 outer', '165X83X128', NULL, 4, '1', 0, 3, 320, 'PMSPCWI12664-D0R0', '2024-06-11 14:26:02', '2024-06-11 14:26:02'),
(11, 15, 'Carton Sonacin 5 inner', '45X15X105', NULL, 3, '1', 1, 3, 320, 'PMSPCWI12685-D0R0', '2024-06-11 14:26:02', '2024-06-11 14:26:02'),
(12, 15, 'Carton Sonacin 5 Outer', '165X50X110', NULL, 3, '1', 0, 3, 320, 'PMSPCWI12686-D0R0', '2024-06-11 14:26:02', '2024-06-11 14:26:02'),
(13, 15, 'Carton Pregarax D 50', '76X78X121', NULL, 6, '1', 0, 1, 320, 'PMSPCWI12623-D0R0', '2024-06-11 14:31:28', '2024-06-11 14:31:28'),
(14, 15, 'Carton Acmerose - CV 10', '76X78X121', NULL, 4, '1', 0, 3, 320, 'PMSPCWI12693-D0R0', '2024-06-11 14:31:28', '2024-06-11 14:31:28'),
(15, 15, 'Carton MK DAPA M 10_500', '121X72X76', NULL, 3, '1', 0, 1, 320, 'PMSPCWI12567-D0R0', '2024-06-11 14:33:56', '2024-06-11 14:33:56'),
(16, 15, 'Carton Montnico - LC outer', '165X95X110', NULL, 6, '1', 1, 3, 350, 'PMSPCWI12713-D0R0', '2024-06-11 14:47:49', '2024-06-11 14:47:49'),
(17, 15, 'Carton montnico - LC inner', '45X15X105', NULL, 6, '1', 1, 3, 320, 'PMSPCWI12714-D0R0', '2024-06-11 14:47:49', '2024-06-11 14:47:49'),
(18, 15, 'Carton Feroot', '62X54X98', NULL, 3, '1', 0, 1, 320, 'PMSPCWI12702-D0R0', '2024-06-11 14:47:49', '2024-06-11 14:47:49'),
(19, 10, 'CARTON LINAFIC - 5', '44X46X102', NULL, 6, '1', 0, 3, 330, 'PMSPCWI12403-D0R0', '2024-06-11 15:24:21', '2024-06-11 15:24:21'),
(20, 10, 'Carton Trizidine', '50X32X73', NULL, 3, '1', 1, 1, 330, 'PMSPCWI12674-D0R0', '2024-06-11 15:24:21', '2024-06-11 15:24:21'),
(21, 10, 'carton Rabcia DSR', '147X65X140', NULL, 6, '1', 1, 1, 320, 'PMSPCWI12690-D0R0', '2024-06-11 15:24:21', '2024-06-11 15:24:21'),
(22, 10, 'Carton Rabcia L', '76X78X121', NULL, 6, '1', 1, 1, 320, 'PMSPCWI12691-D0R0', '2024-06-11 15:24:21', '2024-06-11 15:44:03'),
(23, 10, 'Carton Rabcia 40 DSR', '70X65X240', NULL, 6, '1', 1, 1, 320, 'PMSPCWI12692-D0R0', '2024-06-11 15:44:03', '2024-06-11 15:44:03'),
(24, 10, 'Carton Sucrader-O- Suspension 200ml', '60X60X160', NULL, 6, '1', 1, 3, 330, 'PMSPCWI12683-D0R0', '2024-06-11 15:44:03', '2024-06-11 15:44:03'),
(25, 10, 'Carton Vertick - 16', '64X45X94', NULL, 4, '1', 1, 3, 350, 'PMSPCWI12694-D0R0', '2024-06-11 15:44:03', '2024-06-11 15:44:03'),
(26, 10, 'Carton Vertirick 8', '64X45X94', NULL, 4, '1', 1, 3, 350, 'PMSPCWI12695-D0R0', '2024-06-11 15:53:59', '2024-06-11 15:53:59'),
(27, 10, 'Carton Ursoned 300', '75X60X70', NULL, 3, '1', 0, 1, 320, 'PMSPCWI12698-D0R0', '2024-06-11 15:53:59', '2024-06-11 15:53:59'),
(28, 10, 'Carton elvitex-AL sachet', '75X54X93', NULL, 6, '1', 0, 1, 330, 'PMSPCWI12637-D0R0', '2024-06-11 16:46:21', '2024-06-11 16:46:21'),
(29, 10, 'Carton Pantarick 40', '110X95X70', NULL, 4, '1', 1, 3, 350, 'PMSPCWI12705-D0R0', '2024-06-11 16:46:21', '2024-06-11 16:46:21'),
(30, 10, 'Carton Rabijet - LS outer', '165X83X128', NULL, 3, '1', 1, 1, 300, 'PMSPCWI12653-D0R0', '2024-06-11 16:46:21', '2024-06-11 16:46:21'),
(31, 10, 'Carton Rabijet - LS inner', '78X15X123', NULL, 3, '1', 1, 1, 300, 'PMSPCWI12652-D0R0', '2024-06-11 16:46:21', '2024-06-11 16:46:21'),
(32, 10, 'Carton Minokem 2.5', '54X24X120', NULL, 6, '1', 1, 1, 350, 'PMSPCWI12701-D0R0', '2024-06-11 16:46:21', '2024-06-11 16:46:21'),
(33, 10, 'Minokem 1.25', '44X17X102', NULL, 6, '1', 1, 1, 350, 'PMSPCWI12700-D0R0', '2024-06-11 16:46:21', '2024-06-11 16:46:21'),
(34, 10, 'Carton feroot Tablets', '62X54X98', NULL, 3, '1', 0, 1, 320, 'PMSPCWI12702', '2024-06-11 17:24:08', '2024-06-11 17:24:08'),
(35, 10, 'Carton Mytiga 20', '62X54X98', NULL, 3, '1', 1, 3, 320, 'PMSPCWI12708-D0R0', '2024-06-11 17:24:08', '2024-06-11 17:24:08'),
(36, 10, 'Carton Siaglip-M 100/1000', '158X93X88', NULL, 6, '1', 1, 3, 320, 'PMSPCWI127065-D0R0', '2024-06-11 17:24:08', '2024-06-11 17:24:08'),
(37, 15, 'Carton LOBG Sale', '50X45X105', NULL, 4, '1', 0, 1, 320, 'PMSPCWI12732-D0R0', '2024-06-11 17:48:01', '2024-06-11 17:48:01'),
(38, 15, 'Carton LOBG Sale', '45X50X105', NULL, 4, '1', 0, 1, 320, 'PMSPCWI12732-D0R0', '2024-06-11 18:22:47', '2024-06-11 18:22:47'),
(39, 13, 'Carton Oosure Plus', '170X65X98', NULL, 3, '1', 0, 3, 300, '20218172', '2024-06-11 19:04:01', '2024-06-12 11:17:28'),
(40, 2, 'Carton Albendazole Susp 10ml', '32X29X65', NULL, 4, '1', 0, 13, 280, 'VR00754', '2024-06-11 19:21:21', '2024-06-11 19:21:21'),
(41, 2, 'Label Albendazole Susp 10ml', '64X30', NULL, 4, '1', 0, 19, 70, 'VR00945', '2024-06-11 19:30:19', '2024-06-11 19:30:19'),
(42, 12, 'Carton Wilcef-S 375 mg Inj', '50X30X70', NULL, 3, '1', 3, 1, 330, '20215187', '2024-06-11 19:39:16', '2024-06-11 19:39:16'),
(43, 13, 'Carton Rozuxa ASP', '147X90X95', NULL, 3, '1', 0, 1, 330, '20185258', '2024-06-11 19:44:55', '2024-06-11 19:44:55'),
(44, 16, 'Carton Melocure - 5 PS', '52X17X80', NULL, 6, '1', 1, 3, 320, 'PMSPCWI12707-D0R0', '2024-06-11 19:54:17', '2024-06-11 19:54:17'),
(45, 1, 'Carton Aceclofenac & Thiocolchicoside Tab', '82X80X80', NULL, 4, '1', 0, 13, 296, 'PK08416', '2024-06-12 11:48:32', '2024-06-12 11:48:32'),
(46, 1, 'Carton Zinc Sulphate 20mg Haryana', '78X34X48', NULL, 4, '1', 0, 13, 296, 'PK09836', '2024-06-12 12:11:33', '2024-06-12 12:11:33'),
(47, 1, 'Carton Folic Acid 5mg Haryana', '78X30X71', NULL, 4, '1', 0, 13, 296, 'PK09840', '2024-06-12 12:11:33', '2024-06-12 12:11:33'),
(48, 1, 'Carton Folic Acid 5mg Gujrat', '78X30X71', NULL, 4, '1', 0, 13, 296, 'PK09842', '2024-06-12 12:11:33', '2024-06-12 12:11:33'),
(49, 1, 'Carton Aceclofenac & Thiocolchicoside Tab', '78X34X56', NULL, 4, '1', 0, 13, 296, 'PK08416', '2024-06-12 12:11:59', '2024-06-12 12:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `carton_prices`
--

CREATE TABLE `carton_prices` (
  `id` int(11) NOT NULL,
  `carton_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carton_prices`
--

INSERT INTO `carton_prices` (`id`, `carton_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 682, 7.20, '2024-06-10 18:20:30', '2024-06-10 18:20:30'),
(2, 2, 9555, 2.15, '2024-06-10 18:20:30', '2024-06-10 18:20:30'),
(3, 3, 2617, 4.60, '2024-06-10 18:20:30', '2024-06-10 18:20:30'),
(4, 4, 2000, 4.40, '2024-06-10 18:41:39', '2024-06-10 18:41:39'),
(5, 5, 9592, 2.90, '2024-06-10 18:59:16', '2024-06-10 18:59:16'),
(6, 6, 2000, 2.55, '2024-06-10 19:16:10', '2024-06-10 19:16:10'),
(7, 7, 3448, 2.60, '2024-06-10 19:19:00', '2024-06-10 19:19:00'),
(8, 8, 20500, 3.40, '2024-06-11 13:02:00', '2024-06-11 13:02:00'),
(9, 9, 10500, 1.35, '2024-06-11 14:12:45', '2024-06-11 14:12:45'),
(10, 10, 2200, 5.70, '2024-06-11 14:26:02', '2024-06-11 14:26:02'),
(11, 11, 10500, 1.30, '2024-06-11 14:26:02', '2024-06-11 14:26:02'),
(12, 12, 2200, 5.40, '2024-06-11 14:26:02', '2024-06-11 14:26:02'),
(13, 13, 2200, 4.90, '2024-06-11 14:31:28', '2024-06-11 14:31:28'),
(14, 14, 2200, 4.50, '2024-06-11 14:31:28', '2024-06-11 14:31:28'),
(15, 15, 2200, 4.35, '2024-06-11 14:33:56', '2024-06-11 14:33:56'),
(16, 16, 2200, 8.10, '2024-06-11 14:47:49', '2024-06-11 14:47:49'),
(17, 17, 20500, 1.15, '2024-06-11 14:47:49', '2024-06-11 14:47:49'),
(18, 18, 2200, 3.70, '2024-06-11 14:47:49', '2024-06-11 14:47:49'),
(19, 19, 2200, 3.30, '2024-06-11 15:24:21', '2024-06-11 15:24:21'),
(20, 20, 2200, 3.45, '2024-06-11 15:24:21', '2024-06-11 15:24:21'),
(21, 21, 2200, 6.90, '2024-06-11 15:24:21', '2024-06-11 15:24:21'),
(22, 22, 2200, 4.50, '2024-06-11 15:24:21', '2024-06-11 15:24:21'),
(23, 23, 2200, 7.15, '2024-06-11 15:44:03', '2024-06-11 15:44:03'),
(24, 24, 2200, 5.10, '2024-06-11 15:44:03', '2024-06-11 15:44:03'),
(25, 25, 2200, 4.30, '2024-06-11 15:44:03', '2024-06-11 15:44:03'),
(26, 26, 2200, 4.30, '2024-06-11 15:53:59', '2024-06-11 15:53:59'),
(27, 27, 2200, 3.50, '2024-06-11 15:53:59', '2024-06-11 15:53:59'),
(28, 28, 2200, 4.20, '2024-06-11 16:46:21', '2024-06-11 16:46:21'),
(29, 29, 2200, 6.40, '2024-06-11 16:46:21', '2024-06-11 16:46:21'),
(30, 30, 2200, 6.50, '2024-06-11 16:46:21', '2024-06-11 16:46:21'),
(31, 31, 20500, 1.45, '2024-06-11 16:46:21', '2024-06-11 16:46:21'),
(32, 32, 17000, 1.65, '2024-06-11 16:46:21', '2024-06-11 16:46:21'),
(33, 33, 35000, 1.05, '2024-06-11 16:46:21', '2024-06-11 16:46:21'),
(34, 34, 2200, 3.70, '2024-06-11 17:24:08', '2024-06-11 17:24:08'),
(35, 35, 2200, 4.45, '2024-06-11 17:24:08', '2024-06-11 17:24:08'),
(36, 36, 2200, 6.50, '2024-06-11 17:24:08', '2024-06-11 17:24:08'),
(37, 37, 40000, 1.65, '2024-06-11 17:48:01', '2024-06-11 17:48:01'),
(38, 38, 40000, 1.65, '2024-06-11 18:22:47', '2024-06-11 18:22:47'),
(39, 39, 1000, 4.70, '2024-06-11 19:04:01', '2024-06-11 19:04:01'),
(40, 40, 100500, 0.40, '2024-06-11 19:21:21', '2024-06-11 19:21:21'),
(41, 41, 103000, 0.06, '2024-06-11 19:30:19', '2024-06-11 19:30:19'),
(42, 42, 9400, 1.30, '2024-06-11 19:39:16', '2024-06-11 19:39:16'),
(43, 43, 2000, 5.55, '2024-06-11 19:44:55', '2024-06-11 19:44:55'),
(44, 44, 10500, 1.25, '2024-06-11 19:54:17', '2024-06-11 19:54:17'),
(45, 45, 3800, 1.70, '2024-06-12 11:48:32', '2024-06-12 11:48:32'),
(46, 46, 32500, 0.62, '2024-06-12 12:11:33', '2024-06-12 12:11:33'),
(47, 47, 55800, 0.50, '2024-06-12 12:11:33', '2024-06-12 12:11:33'),
(48, 48, 22800, 0.50, '2024-06-12 12:11:33', '2024-06-12 12:11:33'),
(49, 49, 3800, 1.70, '2024-06-12 12:11:59', '2024-06-12 12:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `ordering` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent`, `status`, `ordering`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CENTURY', NULL, 1, NULL, '2024-06-09 22:08:39', '2024-06-10 20:06:11', NULL),
(2, 'JK', NULL, 1, NULL, '2024-06-09 22:08:48', '2024-06-09 22:08:48', NULL),
(3, 'WHITE BACK', NULL, 1, NULL, '2024-06-09 22:08:59', '2024-06-10 20:06:35', NULL),
(4, 'GREY BACK', NULL, 1, NULL, '2024-06-09 22:09:09', '2024-06-10 20:06:22', NULL),
(5, 'CHEMICALS', NULL, 1, NULL, '2024-06-10 15:35:31', '2024-06-10 20:05:58', NULL),
(6, 'INKS', NULL, 1, NULL, '2024-06-10 15:35:52', '2024-06-10 20:05:22', NULL),
(7, 'ADHESIVES', NULL, 1, NULL, '2024-06-10 19:43:28', '2024-06-10 20:05:42', NULL),
(8, 'Corrugation', NULL, 1, NULL, '2024-06-11 10:18:39', '2024-06-11 10:18:39', NULL),
(9, 'Belts', NULL, 1, NULL, '2024-06-11 11:22:49', '2024-06-11 11:22:49', NULL),
(10, 'Pantone Inks', NULL, 1, NULL, '2024-06-11 11:23:30', '2024-06-11 11:23:30', NULL),
(11, 'Electronic Items', NULL, 1, NULL, '2024-06-11 11:23:51', '2024-06-11 11:23:51', NULL),
(12, 'Tools', NULL, 1, NULL, '2024-06-11 11:24:03', '2024-06-11 11:24:03', NULL),
(13, 'Blankets', NULL, 1, NULL, '2024-06-11 11:25:49', '2024-06-11 11:25:49', NULL),
(14, 'Furniture', NULL, 1, NULL, '2024-06-11 11:27:59', '2024-06-11 11:27:59', NULL),
(15, 'Scrap', NULL, 1, NULL, '2024-06-12 18:02:42', '2024-06-12 18:02:42', NULL),
(16, 'Other', NULL, 1, NULL, '2024-06-13 12:34:48', '2024-06-13 12:34:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chemical_coatings`
--

CREATE TABLE `chemical_coatings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `coated_sheets` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `leafing` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
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
  `media_id` int(11) DEFAULT NULL,
  `color` varchar(1024) DEFAULT NULL,
  `name_init` varchar(1024) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `full_name`, `company_name`, `email`, `mobile`, `state`, `city`, `address`, `pincode`, `gst`, `media_id`, `color`, `name_init`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Biogenetic', 'Drugs', 'Biogenetic Drugs', 'Biogenetic Drugs Pvt. Ltd.', 'ppcbdpl@smilaxgroup.net', '7807744119', 'Himachal Pradesh', 'Baddi', NULL, '173205', '02AACCB3897K1ZJ', NULL, 'info', 'BD', '2024-06-09 20:43:04', '2024-06-09 20:43:04', NULL),
(2, 'Smilax', 'Healthcare', 'Smilax Healthcare', 'Smilax Healthcare Drug Co.', 'ppc@smilaxgroup.net', '8894729256', 'Himachal Pradesh', 'Baddi', NULL, '173205', '02ABAFM6564C1ZP', NULL, 'info', 'SH', '2024-06-09 20:44:38', '2024-06-09 20:44:38', NULL),
(3, 'Kingston', 'Aqua', 'Kingston Aqua', 'Kingston Aqua Industries (P) Ltd.', 'kingstonpmstore@gmail.com', '9882981001', 'Himachal Pradesh', 'Baddi', 'Plot no 3 & 4 ,  Bhatoli Kalan, Industrial Township, Baddi,Distt.Solan (H.P)', '173205', '02AADCK4688A2ZU', NULL, 'primary', 'KA', '2024-06-09 20:48:13', '2024-06-09 20:48:13', NULL),
(4, 'GMH', 'LABORATORIES', 'GMH LABORATORIES', 'GMH LABORATORIES', 'gmhpmstore@gmail.com', '9882981001', 'Himachal Pradesh', 'Baddi', 'Plot No. 13, Bhatoli-kalan Industrial Township,Baddi, Distt- Solan (HP)', '173205', '02ABFPG9454L1ZJ', NULL, 'success', 'GL', '2024-06-09 20:49:52', '2024-06-09 20:49:52', NULL),
(5, 'Polestar', 'Power', 'Polestar Power', 'Polestar Power Industries', 'store.polestar@gmail.com', '8219530153', 'Himachal Pradesh', 'Baddi', 'Village Damuwala, Haripur Road,Barotiwala, Tehsil Baddi', '174103', '02AANFP6841P2ZN', NULL, 'warning', 'PP', '2024-06-09 20:51:15', '2024-06-09 20:51:15', NULL),
(6, 'Besto', 'Healthcare', 'Besto Healthcare', 'Besto Healthcare', 'bestohealthcare@gmail.com', '9817398454', 'Himachal Pradesh', 'Baddi', 'Plot No 54-A , 1st Floor , DIC, Industrail Area, Near Chatari Chowk, Baddi, Solan', '173205', '02BNLPS4651L1ZM', NULL, 'info', 'BH', '2024-06-09 20:52:52', '2024-06-09 20:52:52', NULL),
(7, 'Smilax', 'Pharmachem', 'Smilax Pharmachem', 'Smilax Pharmachem Drugs Industries', 'ppc@smilaxgroup.net', '8894729256', 'Himachal Pradesh', 'Baddi', '33-34 EPIP 11, Thane Baddi, Solan', '173205', '02AAMFA5001B1ZF', NULL, 'warning', 'SP', '2024-06-09 20:54:15', '2024-06-09 20:54:15', NULL),
(8, 'Smilex', 'Healthcare', 'Smilex Healthcare', 'Smilex Healthcare Pvt Ltd', 'ppc@smilaxgroup.net', '8894729256', 'Himachal Pradesh', 'Baddi', '23 EPIP 1, Jharmajri, Distt Solan, Baddi', '173205', '02AAJCS5602G2ZO', NULL, 'secondary', 'SH', '2024-06-09 20:58:59', '2024-06-09 20:58:59', NULL),
(9, 'Tj', 'Home Care Remedies', 'Tj Home Care Remedies', 'Tj Home Care Remedies', 'tjscare@gmail.com', '9814404494', 'Punjab', 'Zirakpur', 'Godown No , 35 Feet, Peer Pucca Road, Village Prabhat, Zirakpur', '140603', '03AEZPB0154R1Z5', NULL, 'success', 'TH', '2024-06-09 21:00:36', '2024-06-09 21:00:36', NULL),
(10, 'Windlas', 'Biotech', 'Windlas Biotech', 'Windlas Biotech Plant 2', 'pmpurchase@windlasbiotech.com', '9837079820', 'Uttarakhand', 'Dehradun', 'WINDLAS BIOTECH LIMITED (CENTRAL WAREHOUSE) \r\nKhasra No-141 to 143 & 145 Mohabewala Industrial Area, Dehradun - 248110, \r\nUttarakhand, India', '248110', '05AAACW3417C1ZV', NULL, 'warning', 'WB', '2024-06-10 17:50:09', '2024-06-10 17:50:40', NULL),
(11, 'Leeford', 'Healthcare', 'Leeford Healthcare', 'Leeford Healthcare Ltd.', 'purchaseunit1@allkindhealthcare.in', '9317519036', 'Punjab', 'Ludhiana', 'New Shivaji Nagar, Harcharan Nagar, Ludhiana, Punjab', '141008', '03AABCL1851A1ZB', NULL, 'danger', 'LH', '2024-06-10 17:50:30', '2024-06-10 17:50:30', NULL),
(12, 'Malik', 'Lifesciences', 'Malik Lifesciences', 'Malik Lifesciences', 'maliklifesciences@akums.in', '8859007758', 'UTTARAKHAND', 'Haridwar', 'Plot No.16, Vardhman Industrial Estate \r\nBahadarpur Saini, Roorkee \r\nHaridwar UTTARAKHAND\r\n INDIA 247667', '247667', '05AAECM9025E1ZP', NULL, 'success', 'ML', '2024-06-10 18:28:20', '2024-06-10 18:28:20', NULL),
(13, 'Pure&Cure', 'Healthcare Pvt.Ltd', 'Pure&Cure Healthcare Pvt.Ltd', 'Pure & Cure Healthcare Pvt. Ltd', 'works@akums.in', '01334234327', 'UTTARAKHAND', 'Haridwar', 'Plot No.26A,27,28,29 & 30 Sec 8A, \r\nI.I.E.,SIDCUL,Ranipur \r\nHaridwar UTTARAKHAND\r\n INDIA 249403', '249403', '05AAECP0713G1ZX', NULL, 'secondary', 'PH', '2024-06-10 18:47:14', '2024-06-10 18:47:53', NULL),
(14, 'Akums AKUMS Drugs & Pharmaceuticals Ltd.', '(Plant 4 - Hormones)', 'Akums AKUMS Drugs & Pharmaceuticals Ltd. (Plant 4 - Hormones)', 'Akums AKUMS Drugs & Pharmaceuticals Ltd.(Plant 4 - Hormones)', 'plant4@akums.in', '01334-239947', 'UTTARAKHAND', 'Haridwar', 'Plot No. 47 & 48, Sector 6A,\r\n I.I.E. SIDCUL,Ranipur\r\n Haridwar\r\n UTTARAKHAND \r\nINDIA 249403', '249403', '05AAECA7090B1Z2', NULL, 'success', 'A(', '2024-06-10 19:03:07', '2024-06-10 19:03:07', NULL),
(15, 'Windlas', 'Biotech', 'Windlas Biotech', 'Windlas Biotech Plant 3', 'pcteam@windlasbiotech.com', '09837079820', 'Uttarakhand', 'Dehradun', 'WINDLAS BIOTECH LIMITED PLANT-3 \r\nLot No. 39, Industrial Area,Pharma City,Selaqui, Dehradun - 248171, Uttarakhand,  India', '248171', '05AAACW3417C1ZV', NULL, 'warning', 'WB', '2024-06-11 12:09:03', '2024-06-11 12:17:34', NULL),
(16, 'Windlas', 'Biotech', 'Windlas Biotech', 'Windlas Biotech Plant 1', 'pmpurchase@windlasbiotech.com', '09837079820', 'Uttarakhand', 'Dehradun', 'WINDLAS BIOTECH LIMITED \r\n40/1 Mohabewala Industrial Area,\r\nDehradun - 248110, \r\nUttarakhand, India', '248110', '05AAACW3417C1ZV', NULL, 'success', 'WB', '2024-06-11 19:47:45', '2024-06-11 19:47:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coas`
--

CREATE TABLE `coas` (
  `id` int(11) NOT NULL,
  `billing_item_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `batch` varchar(255) DEFAULT NULL,
  `manufacturing_date` date DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coating_types`
--

CREATE TABLE `coating_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

CREATE TABLE `coa_items` (
  `id` int(11) NOT NULL,
  `coa_id` int(11) NOT NULL,
  `parameter` varchar(255) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cuttings`
--

CREATE TABLE `cuttings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_card_id` int(11) NOT NULL,
  `cutting_sheets` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT '2',
  `metalic_status` tinyint(1) NOT NULL DEFAULT '0',
  `timer` int(11) NOT NULL DEFAULT '0' COMMENT '0=none\r\n1=start\r\n2=pause\r\n3stop',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `set_no` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '2',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designings`
--

INSERT INTO `designings` (`id`, `job_card_id`, `sheet_size`, `required_sheet`, `color`, `set_no`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, NULL, 'CMYK+P-287', '5894', 5, '2024-06-10 18:25:06', '2024-06-10 18:31:50', NULL),
(2, 2, NULL, NULL, 'CMYK+P-287', '5895', 5, '2024-06-10 18:25:36', '2024-06-10 18:31:56', NULL),
(3, 3, NULL, NULL, 'CMYK+P-287', '5791', 5, '2024-06-10 18:25:41', '2024-06-10 18:31:45', NULL),
(4, 4, NULL, NULL, 'P-186|P2718|BLACK', NULL, 2, '2024-06-11 19:00:46', '2024-06-12 10:55:09', '2024-06-12 10:55:09'),
(5, 5, NULL, NULL, 'P-186|P2718|BLACK', '7279', 5, '2024-06-12 10:57:11', '2024-06-12 11:43:52', NULL),
(6, 6, NULL, NULL, 'CMYK', '5228', 5, '2024-06-12 12:43:27', '2024-06-12 16:10:00', NULL),
(7, 7, NULL, NULL, 'CMYK', '5839', 5, '2024-06-12 16:07:46', '2024-06-12 16:10:05', NULL),
(8, 8, NULL, NULL, 'CMYK', '4856', 5, '2024-06-12 16:08:02', '2024-06-12 16:10:08', NULL),
(9, 9, NULL, NULL, 'CMYK', '5011', 5, '2024-06-12 18:32:03', '2024-06-13 12:52:42', NULL),
(10, 10, NULL, NULL, 'CMYK', '4788', 5, '2024-06-12 18:32:10', '2024-06-13 12:52:46', NULL),
(11, 11, NULL, NULL, 'CMYK', '5635', 5, '2024-06-12 18:34:02', '2024-06-13 12:52:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dye_breakings`
--

CREATE TABLE `dye_breakings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  `purchase_order_item_id` bigint(20) DEFAULT NULL,
  `ready_quantity` int(11) DEFAULT '0',
  `ready_box` varchar(255) DEFAULT NULL,
  `quantity_in_box` int(11) DEFAULT NULL,
  `no_of_box` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dye_cuttings`
--

CREATE TABLE `dye_cuttings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `dye_counter` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dye_details`
--

CREATE TABLE `dye_details` (
  `id` int(11) NOT NULL,
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
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(418, '732', 50, 30, 69, 'BSO', 10, '14X23', 1, '50X30X69', '2024-06-08 22:34:37', '2024-06-12 18:29:23', NULL),
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
(469, '6A', 50, 20, 105, 'BSO', 12, '23X17.6', 0, '50X20X105', '2024-06-08 22:34:37', '2024-06-08 22:34:37', NULL),
(470, '915', 160, 131, 168, 'lockbottom', 1, '16X23.5', 1, '160X131X168', '2024-06-10 18:03:58', '2024-06-10 18:05:12', NULL),
(471, '914', 127, 15, 164, 'BSO', 4, '16X23', 1, '127X15X164', '2024-06-10 18:14:49', '2024-06-10 18:14:49', NULL),
(472, '899', 165, 95, 108, 'lockbottom', 2, '18X21', 1, '165X95X108', '2024-06-10 18:19:59', '2024-06-10 18:19:59', NULL),
(473, '775', 170, 65, 98, 'lockbottom', 3, '19X23', 0, '170X65X98', '2024-06-10 18:41:28', '2024-06-10 18:41:28', NULL),
(474, '909', 100, 38, 62, 'lockbottom', 4, '11.5X19', 0, '100X38X62', '2024-06-10 19:09:28', '2024-06-10 19:09:28', NULL),
(475, '892', 78, 15, 123, 'BSO', 9, '19X23', 1, '78X15X123', '2024-06-11 12:41:27', '2024-06-11 12:41:27', NULL),
(476, '723', 165, 83, 128, 'lockbottom', 2, '19X20', 1, '165X83X128', '2024-06-11 13:19:55', '2024-06-11 13:19:55', NULL),
(477, '896', 45, 15, 105, 'BSO', 12, '16X22', 1, '45X15X105', '2024-06-11 13:26:52', '2024-06-11 13:26:52', NULL),
(478, '895', 165, 50, 110, 'lockbottom', 3, '18x23', 1, '165X50X110', '2024-06-11 13:32:01', '2024-06-11 13:32:01', NULL),
(479, '1014', 76, 78, 121, 'BSO', 2, '12.75X20', 0, '76X78X121', '2024-06-11 13:39:18', '2024-06-11 13:39:48', NULL),
(480, '899', 165, 95, 110, 'lockbottom', 2, '18X21', 1, '165X95X110', '2024-06-11 14:39:43', '2024-06-11 14:39:43', NULL),
(481, '1033', 45, 50, 105, 'BSO', 6, '23X16', 1, '45X50X105', '2024-06-11 19:03:06', '2024-06-11 19:03:06', NULL),
(482, '550', 147, 90, 95, 'lockbottom', 2, '18x19', 1, '147X90X95', '2024-06-12 18:21:34', '2024-06-12 18:21:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `embossings`
--

CREATE TABLE `embossings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `embossing_counter` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `issue_type` int(11) DEFAULT NULL COMMENT '1=auto\r\n0= manual',
  `issue_no` varchar(255) NOT NULL,
  `issue_at` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `user_id`, `issue_type`, `issue_no`, `issue_at`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 'ISN0001', '10-06', '2024-06-10 18:38:02', '2024-06-10 18:38:02'),
(2, 9, 0, 'ISN0002', NULL, '2024-06-11 10:40:03', '2024-06-11 10:40:03'),
(3, 8, 1, 'ISN0003', '11-06', '2024-06-11 12:51:17', '2024-06-11 12:51:17'),
(4, 9, 0, 'ISN0004', NULL, '2024-06-12 14:54:12', '2024-06-12 14:54:12'),
(5, 9, 0, 'ISN0005', NULL, '2024-06-12 18:17:35', '2024-06-12 18:17:35'),
(6, 9, 0, 'ISN0006', NULL, '2024-06-13 13:51:37', '2024-06-13 13:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `issue_items`
--

CREATE TABLE `issue_items` (
  `id` int(11) NOT NULL,
  `job_card_id` bigint(20) DEFAULT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(200) NOT NULL,
  `issue_for` int(11) DEFAULT NULL,
  `oprator_name` varchar(255) DEFAULT NULL,
  `issue_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=manual\r\n0= auto or jobcard created',
  `remarks` text,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_items`
--

INSERT INTO `issue_items` (`id`, `job_card_id`, `issue_id`, `product_id`, `quantity`, `unit`, `issue_for`, `oprator_name`, `issue_type`, `remarks`, `updated_at`, `created_at`) VALUES
(1, 3, 3, 16, 50, 'Sheets', 1, NULL, 1, NULL, '2024-06-11 12:51:17', '2024-06-10 18:38:02'),
(2, 2, 1, 44, 1294, 'Sheets', 1, NULL, 1, NULL, '2024-06-10 19:42:04', '2024-06-10 19:42:04'),
(3, 1, 1, 13, 441, 'Sheets', 1, NULL, 1, NULL, '2024-06-10 19:45:13', '2024-06-10 19:45:13'),
(4, NULL, 2, 47, 1, 'KG', 1, NULL, 1, NULL, '2024-06-11 10:41:43', '2024-06-11 10:40:03'),
(5, NULL, 4, 60, 1, 'KG', 3, NULL, 1, '2 kg can', '2024-06-12 14:54:12', '2024-06-12 14:54:12'),
(6, NULL, 5, 81, 1, 'Nos', 1, NULL, 1, NULL, '2024-06-12 18:17:35', '2024-06-12 18:17:35'),
(7, NULL, 6, 85, 1, 'KG', 13, NULL, 1, NULL, '2024-06-13 13:52:14', '2024-06-13 13:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `job_cards`
--

CREATE TABLE `job_cards` (
  `id` int(11) NOT NULL,
  `planning_by` int(11) NOT NULL,
  `job_card_no` varchar(255) DEFAULT NULL,
  `mix` tinyint(1) DEFAULT '0' COMMENT '1= separate\r\n0= mix',
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
  `warehouse_paper` text,
  `warehouse_sheet` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `set_no` varchar(255) DEFAULT NULL,
  `coating_machine` varchar(255) DEFAULT NULL,
  `other_coating_machine` varchar(255) DEFAULT NULL,
  `coating_window_cutting` varchar(255) DEFAULT NULL,
  `embossing_leafing` varchar(255) DEFAULT NULL,
  `roll_used` varchar(255) DEFAULT NULL,
  `cutting_sheets` int(11) DEFAULT NULL,
  `printed_sheets` int(11) DEFAULT NULL,
  `coated_sheets` int(11) DEFAULT NULL,
  `laminated_sheets` int(11) DEFAULT NULL,
  `spot_uv_sheets` int(11) DEFAULT NULL,
  `dye_counter` int(11) DEFAULT NULL,
  `leafing_counter` int(11) DEFAULT NULL,
  `embossing_counter` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '99',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `job_card_created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_cards`
--

INSERT INTO `job_cards` (`id`, `planning_by`, `job_card_no`, `mix`, `product_id`, `sheet_size`, `required_sheet`, `wastage_sheet`, `total_sheet`, `paper_divide`, `dye_details_id`, `dye_details`, `dye_machine`, `warehouse_type`, `warehouse_paper`, `warehouse_sheet`, `color`, `set_no`, `coating_machine`, `other_coating_machine`, `coating_window_cutting`, `embossing_leafing`, `roll_used`, `cutting_sheets`, `printed_sheets`, `coated_sheets`, `laminated_sheets`, `spot_uv_sheets`, `dye_counter`, `leafing_counter`, `embossing_counter`, `status_id`, `created_at`, `updated_at`, `deleted_at`, `job_card_created_at`) VALUES
(1, 10, '001', 1, NULL, '16X23.5', 682, NULL, 882, NULL, 470, '915/1-lockbottom', 'manual', NULL, NULL, NULL, 'CMYK+P-287', '5894', 'chemical coating', 'none', 'window in batch', 'Embossing', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-10 18:25:06', '2024-06-11 14:37:56', NULL, NULL),
(2, 10, '002', 1, NULL, '16X23', 2389, NULL, 4978, NULL, 471, '914/4-BSO', 'manual', NULL, NULL, NULL, 'CMYK+P-287', '5895', 'chemical coating', 'none', 'none', 'Embossing', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-10 18:25:36', '2024-06-11 14:37:52', NULL, NULL),
(3, 10, '003', 1, NULL, '18X21', 1309, NULL, 1509, NULL, 472, '899/2-lockbottom', 'manual', NULL, NULL, NULL, 'CMYK+P-287', '5791', 'chemical coating', 'none', 'window in batch', 'Embossing', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-10 18:25:41', '2024-06-11 14:37:43', NULL, NULL),
(4, 3, '004', 1, NULL, NULL, 6667, NULL, NULL, NULL, NULL, 'New', NULL, NULL, NULL, NULL, 'P-186|P2718|BLACK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, '2024-06-11 19:00:46', '2024-06-12 10:55:09', '2024-06-12 10:55:09', NULL),
(5, 3, '004', 1, NULL, '23X16', 6667, NULL, NULL, NULL, 481, '1033/6-BSO', NULL, NULL, NULL, NULL, 'P-186|P2718|BLACK', '7279', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-12 10:57:11', '2024-06-12 11:43:52', NULL, '2024-06-12 11:43:52'),
(6, 10, '005', 1, NULL, '19X23', 667, NULL, NULL, NULL, 473, '775/3-lockbottom', NULL, NULL, NULL, NULL, 'CMYK', '5228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-12 12:43:27', '2024-06-12 16:10:00', NULL, '2024-06-12 16:10:00'),
(7, 10, '006', 1, NULL, '11.5X19', 862, NULL, NULL, NULL, 474, '909/4-lockbottom', NULL, NULL, NULL, NULL, 'CMYK', '5839', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-12 16:07:46', '2024-06-12 16:10:05', NULL, '2024-06-12 16:10:05'),
(8, 10, '007', 1, NULL, '17.5X24.7', 1599, NULL, NULL, NULL, 426, '741/6-LBTO', NULL, NULL, NULL, NULL, 'CMYK', '4856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-12 16:08:02', '2024-06-12 16:10:08', NULL, '2024-06-12 16:10:08'),
(9, 3, '008', 1, NULL, '19X23', 333, NULL, NULL, NULL, 473, '775/3-lockbottom', NULL, NULL, NULL, NULL, 'CMYK', '5011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-12 18:32:03', '2024-06-13 12:52:42', NULL, '2024-06-13 12:52:42'),
(10, 3, '009', 1, NULL, '14X23', 940, NULL, NULL, NULL, 418, '732/10-BSO', NULL, NULL, NULL, NULL, 'CMYK', '4788', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-12 18:32:10', '2024-06-13 12:52:46', NULL, '2024-06-13 12:52:46'),
(11, 10, '010', 1, NULL, '18x19', 1000, NULL, NULL, NULL, 482, '550/2-lockbottom', NULL, NULL, NULL, NULL, 'CMYK', '5635', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-12 18:34:02', '2024-06-13 12:52:39', NULL, '2024-06-13 12:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `job_card_histories`
--

CREATE TABLE `job_card_histories` (
  `id` bigint(20) NOT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `machine` varchar(255) NOT NULL,
  `job_card_in` datetime DEFAULT NULL,
  `job_card_out` datetime DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `quantity` int(11) DEFAULT NULL,
  `ready_quantity` int(11) DEFAULT NULL,
  `ready_box` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `warehouse_stock_type` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_card_items`
--

INSERT INTO `job_card_items` (`id`, `job_card_id`, `planning_id`, `purchase_order_id`, `purchase_order_item_id`, `ups`, `quantity`, `ready_quantity`, `ready_box`, `status_id`, `warehouse_stock_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, 1, 682, NULL, NULL, 1, NULL, '2024-06-10 18:25:06', '2024-06-10 18:25:06', NULL),
(2, 2, 2, 1, 2, 4, 9555, NULL, NULL, 1, NULL, '2024-06-10 18:25:36', '2024-06-10 18:25:36', NULL),
(3, 3, 3, 1, 3, 2, 2617, NULL, NULL, 1, NULL, '2024-06-10 18:25:41', '2024-06-10 18:25:41', NULL),
(4, 4, 37, 8, 36, 6, 40000, NULL, NULL, 1, NULL, '2024-06-11 19:00:46', '2024-06-12 10:55:09', '2024-06-12 10:55:09'),
(5, 5, 38, 8, 36, 6, 40000, NULL, NULL, 1, NULL, '2024-06-12 10:57:11', '2024-06-12 10:57:11', NULL),
(6, 6, 4, 2, 4, 3, 2000, NULL, NULL, 1, NULL, '2024-06-12 12:43:27', '2024-06-12 12:43:27', NULL),
(7, 7, 6, 4, 6, 4, 3448, NULL, NULL, 1, NULL, '2024-06-12 16:07:46', '2024-06-12 16:07:46', NULL),
(8, 8, 5, 3, 5, 6, 9592, NULL, NULL, 1, NULL, '2024-06-12 16:08:02', '2024-06-12 16:08:02', NULL),
(9, 9, 44, 9, 37, 3, 1000, NULL, NULL, 1, NULL, '2024-06-12 18:32:03', '2024-06-12 18:32:03', NULL),
(10, 10, 41, 11, 40, 10, 9400, NULL, NULL, 1, NULL, '2024-06-12 18:32:10', '2024-06-12 18:32:10', NULL),
(11, 11, 48, 13, 41, 2, 2000, NULL, NULL, 1, NULL, '2024-06-12 18:34:02', '2024-06-12 18:34:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_card_medias`
--

CREATE TABLE `job_card_medias` (
  `job_card_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_card_medias`
--

INSERT INTO `job_card_medias` (`job_card_id`, `media_id`) VALUES
(5, 6),
(9, 10),
(10, 12),
(11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `job_card_papers`
--

CREATE TABLE `job_card_papers` (
  `id` bigint(20) NOT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sheet_size` varchar(255) DEFAULT NULL,
  `required_sheet` int(11) DEFAULT NULL,
  `wastage_sheet` int(11) DEFAULT NULL,
  `total_sheet` int(11) DEFAULT NULL,
  `paper_divide` int(11) DEFAULT NULL,
  `subtotal_sheet` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_card_papers`
--

INSERT INTO `job_card_papers` (`id`, `job_card_id`, `product_id`, `sheet_size`, `required_sheet`, `wastage_sheet`, `total_sheet`, `paper_divide`, `subtotal_sheet`, `created_at`, `updated_at`) VALUES
(1, 3, 16, '18X21', 1309, 200, 754, 2, 1509, '2024-06-10 18:38:02', '2024-06-11 12:51:17'),
(2, 2, 44, '16X23', 2389, 200, 1294, 2, 2589, '2024-06-10 19:42:04', '2024-06-10 19:42:04'),
(3, 2, NULL, '16X23', 2389, NULL, NULL, NULL, 2389, '2024-06-10 19:42:04', '2024-06-10 19:42:04'),
(4, 1, 13, '16X23.5', 682, 200, 441, 2, 882, '2024-06-10 19:45:13', '2024-06-10 19:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `job_card_timers`
--

CREATE TABLE `job_card_timers` (
  `id` bigint(20) NOT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `machine` varchar(255) DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `paus_at` timestamp NULL DEFAULT NULL,
  `resume_at` timestamp NULL DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `paused_time` int(11) NOT NULL DEFAULT '0',
  `worked_time` int(11) NOT NULL DEFAULT '0',
  `total_time` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '0' COMMENT '1=working,2=stop,3=pause',
  `remarks` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_card_timers`
--

INSERT INTO `job_card_timers` (`id`, `job_card_id`, `machine`, `started_at`, `paus_at`, `resume_at`, `ended_at`, `paused_time`, `worked_time`, `total_time`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cutting', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2024-06-10 19:56:51', '2024-06-10 19:56:51');

-- --------------------------------------------------------

--
-- Table structure for table `job_card_users`
--

CREATE TABLE `job_card_users` (
  `id` int(11) NOT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `module_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_card_users`
--

INSERT INTO `job_card_users` (`id`, `job_card_id`, `module_id`, `module_user_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(2, 3, 1, 1, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(3, 3, 10, 5, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(4, 3, 10, 5, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(5, 3, 2, 6, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(6, 3, 3, NULL, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(7, 3, 3, NULL, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(8, 3, 4, 17, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(9, 3, 4, 17, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(10, 3, 5, NULL, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(11, 3, 6, NULL, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(12, 3, 6, NULL, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(13, 3, 7, 13, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(14, 3, 7, 13, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(15, 3, 9, 16, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(16, 3, 9, 16, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(17, 3, 8, 14, '2024-06-10 19:26:30', '2024-06-10 19:26:30'),
(18, 2, 1, 1, '2024-06-10 19:29:18', '2024-06-10 19:29:18'),
(19, 2, 10, 3, '2024-06-10 19:29:18', '2024-06-10 19:29:18'),
(20, 2, 2, 7, '2024-06-10 19:29:18', '2024-06-10 19:29:18'),
(21, 2, 3, NULL, '2024-06-10 19:29:18', '2024-06-10 19:29:18'),
(22, 2, 4, 17, '2024-06-10 19:29:18', '2024-06-10 19:41:21'),
(23, 2, 5, NULL, '2024-06-10 19:29:18', '2024-06-10 19:29:18'),
(24, 2, 6, NULL, '2024-06-10 19:29:18', '2024-06-10 19:29:18'),
(25, 2, 7, 9, '2024-06-10 19:29:18', '2024-06-10 19:41:21'),
(26, 2, 9, 16, '2024-06-10 19:29:18', '2024-06-10 19:29:18'),
(27, 2, 8, 15, '2024-06-10 19:29:18', '2024-06-10 19:41:21'),
(28, 1, 1, 1, '2024-06-10 19:43:53', '2024-06-10 19:43:53'),
(29, 1, 10, 5, '2024-06-10 19:43:53', '2024-06-10 19:43:53'),
(30, 1, 2, 6, '2024-06-10 19:43:53', '2024-06-10 19:43:53'),
(31, 1, 3, NULL, '2024-06-10 19:43:54', '2024-06-10 19:43:54'),
(32, 1, 4, 18, '2024-06-10 19:43:54', '2024-06-10 19:43:54'),
(33, 1, 5, NULL, '2024-06-10 19:43:54', '2024-06-10 19:43:54'),
(34, 1, 6, NULL, '2024-06-10 19:43:54', '2024-06-10 19:43:54'),
(35, 1, 7, 8, '2024-06-10 19:43:54', '2024-06-10 19:43:54'),
(36, 1, 9, 16, '2024-06-10 19:43:54', '2024-06-10 19:43:54'),
(37, 1, 8, 15, '2024-06-10 19:43:54', '2024-06-10 19:43:54'),
(38, 5, 1, 1, '2024-06-12 12:45:24', '2024-06-12 12:45:24'),
(39, 5, 10, 5, '2024-06-12 12:45:24', '2024-06-12 12:45:24'),
(40, 5, 2, 6, '2024-06-12 12:45:24', '2024-06-12 12:45:24'),
(41, 5, 3, NULL, '2024-06-12 12:45:24', '2024-06-12 12:45:24'),
(42, 5, 4, NULL, '2024-06-12 12:45:24', '2024-06-12 12:45:24'),
(43, 5, 5, NULL, '2024-06-12 12:45:24', '2024-06-12 12:45:24'),
(44, 5, 6, NULL, '2024-06-12 12:45:24', '2024-06-12 12:45:24'),
(45, 5, 7, 13, '2024-06-12 12:45:24', '2024-06-12 12:45:24'),
(46, 5, 9, 16, '2024-06-12 12:45:24', '2024-06-12 12:45:24'),
(47, 5, 8, 15, '2024-06-12 12:45:24', '2024-06-12 12:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `laminations`
--

CREATE TABLE `laminations` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `laminated_sheets` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leafings`
--

CREATE TABLE `leafings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `leafing_counter` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authenticatable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `authenticatable_id` bigint(20) UNSIGNED NOT NULL,
  `user_agent` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` longtext CHARACTER SET latin1,
  `session_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_access_token_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_activity_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `expires_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `authenticatable_type`, `authenticatable_id`, `user_agent`, `ip_address`, `device_type`, `device`, `platform`, `browser`, `location`, `session_id`, `remember_token`, `personal_access_token_id`, `created_at`, `updated_at`, `last_activity_at`, `latitude`, `longitude`, `address`, `expires_at`, `deleted_at`) VALUES
(1, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', NULL, 'Windows', 'Chrome', 'false', 'LBNFEISZvhAAB6sLPhLRWSgPxX3xVrozzEF875uB', '3CuM01ukY4AER6j8uZtRnaPkmvOTceXzUwa7oiCt7z3q57MIYeGMFxJTyi3u', NULL, '2024-06-09 03:42:54', '2024-06-09 04:09:37', '2024-06-09 04:09:37', NULL, NULL, NULL, '2025-07-14 03:42:54', '2024-06-09 04:09:37'),
(2, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', NULL, 'Windows', 'Chrome', 'false', NULL, 'nWrCoDmJvJ3N8UDx0ANkjEBfcaHD1lVRMOX2OkacoEcJPCAhgQphzXb1gJ3v', NULL, '2024-06-09 04:15:37', '2024-06-09 05:51:43', '2024-06-09 05:47:42', NULL, NULL, NULL, '2025-07-14 04:15:37', NULL),
(3, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '192.168.1.8', 'desktop', NULL, 'Windows', 'Chrome', 'false', NULL, 'CymoKXdDeHQrfMwwbVBYZZ2aFRUk0NmQrxtOBz0Nyw4rM9SHqvJZbCatOnwz', NULL, '2024-06-09 04:57:48', '2024-06-09 14:13:35', '2024-06-09 05:34:08', NULL, NULL, NULL, '2025-07-14 04:57:48', NULL),
(4, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', NULL, 'Windows', 'Chrome', 'false', 'IKzkNK7sbe7bQzeaxxDfhrC0vuCGPDs3aMEufJAZ', NULL, NULL, '2024-06-09 05:51:47', '2024-06-09 05:54:50', '2024-06-09 05:54:50', NULL, NULL, NULL, '2025-07-14 05:51:47', NULL),
(5, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '127.0.0.1', 'desktop', NULL, 'Windows', 'Chrome', 'false', 'BAXcVhRZLWDgFnoCOKqSDrFC8qQF4yEeAQ6FGk7S', NULL, NULL, '2024-06-09 14:13:25', '2024-06-09 16:33:36', '2024-06-09 16:33:36', NULL, NULL, NULL, '2025-07-14 14:13:25', NULL),
(6, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '192.168.1.8', 'desktop', NULL, 'Windows', 'Chrome', 'false', 'CZOdbPM2NaSoJxMW9jcHBUdPMuo8OuysJ3sEvwI2', NULL, NULL, '2024-06-09 14:13:37', '2024-06-09 16:51:01', '2024-06-09 16:51:01', NULL, NULL, NULL, '2025-07-14 14:13:37', NULL),
(7, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '223.178.212.138', 'mobile', NULL, 'Android', 'Chrome', NULL, NULL, '3ESTF9CHtc7DnFyiDFcVe1Z4o23aRFoT7PEV9eJ7UWW98kVCblcCwIDL7efb', NULL, '2024-06-09 18:01:12', '2024-06-10 03:56:50', '2024-06-09 18:01:14', NULL, NULL, NULL, '2025-07-14 18:01:12', NULL),
(8, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '223.178.212.138', 'mobile', NULL, 'Android', 'Chrome', NULL, 'WV1PlNoU8Zy5PWCCrHKtwe2hOk3ojYfcqlI3tmG2', NULL, NULL, '2024-06-10 03:56:50', '2024-06-10 03:57:11', '2024-06-10 03:57:11', NULL, NULL, NULL, '2025-07-15 03:56:50', NULL),
(9, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '223.178.212.138', 'desktop', NULL, 'Windows', 'Chrome', NULL, NULL, 'dzgaHXoU0DoOQWbUbuKCcNBl0VFxuDkOsNYunpIoSRFXF2ezY3nF8YcZfkJi', NULL, '2024-06-10 03:57:25', '2024-06-11 04:06:27', '2024-06-10 04:09:34', NULL, NULL, NULL, '2025-07-15 03:57:25', NULL),
(10, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, NULL, 'H61RXb60DIQGrm9fBqaMMv0T6iADnUQGPhA6E2AlGV3xcDtz66Zqa933LseO', NULL, '2024-06-10 08:48:45', '2024-06-10 17:03:58', '2024-06-10 14:38:34', NULL, NULL, NULL, '2025-07-15 08:48:45', NULL),
(11, 'App\\Models\\Admin', 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'B9IUZLhgNzQBpG7sbvySPVF7UfwU20cRqgWsYb5z', '8v0dVcjTVRcf3oTQWs3gO2ERDX0uGDqU9ZEXZNg4YpraTEWDbadFfq9aEzGv', NULL, '2024-06-10 08:58:01', '2024-06-10 08:59:16', '2024-06-10 08:59:16', NULL, NULL, NULL, '2025-07-15 08:58:01', '2024-06-10 08:59:16'),
(12, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Linux; Android 10; Lenovo TB-8505F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36', '103.54.103.182', 'tablet', 'Lenovo Tab M8 HD', 'Android', 'Chrome', NULL, 'Al7scwuCRuNx9dd7EKUj1hnHWZdcD6YNDbUIFuVw', 'yf1i1i6P34kDzzdZTxcssRAjMhvabHQh5gd7yMxjZdlCcLhTooHCHy23yPgb', NULL, '2024-06-10 09:16:13', '2024-06-10 09:20:00', '2024-06-10 09:20:00', NULL, NULL, NULL, '2025-07-15 09:16:13', '2024-06-10 09:20:00'),
(13, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', 'Apple', 'macOS', 'Chrome', NULL, 'raHb3OxDzkYaTdvyyQ59jwc7Lct2ycHCmUhqQb3c', 'gxvNvKTmPNScz4Ncm5AyTt4e5OE3Eb0Sv16Ju5r49X5cflBZFJPJrgZCWKxW', NULL, '2024-06-10 09:42:29', '2024-06-10 09:44:26', '2024-06-10 09:44:26', NULL, NULL, NULL, '2025-07-15 09:42:29', '2024-06-10 09:44:26'),
(14, 'App\\Models\\Admin', 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, NULL, '8di6ZqK46Cn5rYk85J4jmUFq8hJJFV1gjUdkMKqpGuPmlWONbekImAjewE6P', NULL, '2024-06-10 10:00:17', '2024-06-11 04:47:24', '2024-06-10 12:00:53', NULL, NULL, NULL, '2025-07-15 10:00:17', NULL),
(15, 'App\\Models\\Admin', 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'HX7OefGd0rIUAZ8NGvgki5OfFcN6NvhrttWY3Yrw', 'Hygln84pISRjK9tm3oo9Gz2QCfUrgVUcUxuoX7Hi7BmPVAu12cThMPXvkrid', NULL, '2024-06-10 10:29:11', '2024-06-10 10:30:23', '2024-06-10 10:30:23', NULL, NULL, NULL, '2025-07-15 10:29:11', '2024-06-10 10:30:23'),
(16, 'App\\Models\\Admin', 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, NULL, 'xn9dGClJxq8wIuc1WpTIcaBBeFIeqnWGlxnsORMQhqlfJ4p0UkCJIb43sfgL', NULL, '2024-06-10 10:31:34', '2024-06-11 05:26:32', '2024-06-10 14:41:44', NULL, NULL, NULL, '2025-07-15 10:31:34', NULL),
(17, 'App\\Models\\Admin', 11, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '103.54.103.182', 'mobile', NULL, 'Android', 'Chrome', NULL, 'S4iUzfwTXNmRSP50ZWznjCKDf8I2806KXhP73Rvp', 'Bw0DuO7WL4qIp4CcUPEWd9Ka4YzHwPDUXN3vcdyUySTQbNe9yUOhdZpHyc4o', NULL, '2024-06-10 11:03:09', '2024-06-10 14:16:17', '2024-06-10 14:16:17', NULL, NULL, NULL, '2025-07-15 11:03:09', '2024-06-10 14:16:17'),
(18, 'App\\Models\\Admin', 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, NULL, '4NxvUPm4gxcDkpFtItBVSIZkCFGFo94uQ3GDWcYu2t2Y4VNvq4n1ASmquPpv', NULL, '2024-06-10 11:07:54', '2024-06-11 05:16:27', '2024-06-10 11:09:11', NULL, NULL, NULL, '2025-07-15 11:07:54', NULL),
(19, 'App\\Models\\Admin', 20, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'hG02e9idYULRZl2KM2Vk033DA9sG4ZTJ5TZofGKp', '2fxxvnW5BtshyoqF8HZvAQ4thCmWBPZK8xsjqJ4IeV7qnseYVa8zTQRusxKH', NULL, '2024-06-10 11:10:17', '2024-06-10 12:14:31', '2024-06-10 12:14:31', NULL, NULL, NULL, '2025-07-15 11:10:17', NULL),
(20, 'App\\Models\\Admin', 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, NULL, '1auznFTbUG9CsSR9qb8CulI5AOBbrxQRWaYjwzlUHyrklb2rHmfENb8iXwu3', NULL, '2024-06-10 11:13:49', '2024-06-11 05:10:25', '2024-06-10 14:09:21', NULL, NULL, NULL, '2025-07-15 11:13:49', NULL),
(21, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '103.54.103.182', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, NULL, 'URHlhEHwyEht2E3EJh80aBire0p89w6HrIyaGZ0iEJjX295XBRMLV2ih7uE5', NULL, '2024-06-10 11:17:03', '2024-06-10 11:17:23', '2024-06-10 11:17:03', NULL, NULL, NULL, '2025-07-15 11:17:03', NULL),
(22, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '103.54.103.182', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'nFs2PVjAhszqt5SRDT8kfGwmx0oWIDSyrPKlrpDj', NULL, NULL, '2024-06-10 11:17:23', '2024-06-10 12:06:37', '2024-06-10 12:06:37', NULL, NULL, NULL, '2025-07-15 11:17:23', NULL),
(23, 'App\\Models\\Admin', 21, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', '103.54.103.182', 'desktop', NULL, 'Windows', 'Edge', NULL, '7l4qTxF1wxmYMc6lswk90DxRUymixfDU7a9HiAWF', 'ySRWhGhi4fUS7xgazdXwAawJR2DDxaxbfikLpFuQrMFQ4G7MbePlquoaLnaZ', NULL, '2024-06-10 11:17:44', '2024-06-10 14:24:32', '2024-06-10 14:24:32', NULL, NULL, NULL, '2025-07-15 11:17:44', NULL),
(24, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '152.58.105.131', 'mobile', NULL, 'Android', 'Chrome', NULL, 'GTxuQwETIWZjeDWqj91yuHg9osWmIv6zEDWWHnoT', 'dNS2Vsboj7GQCpBPBiLBSVV5EFMEVPBEXwy3xOgvpXy5WMOHpD5icX66DCz8', NULL, '2024-06-10 11:26:11', '2024-06-10 11:27:25', '2024-06-10 11:27:25', NULL, NULL, NULL, '2025-07-15 11:26:11', NULL),
(25, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', 'Apple', 'macOS', 'Chrome', NULL, NULL, 'O5kOMT1JIek1a2T2Virz845o1H9YaoB6wQbLsV53TTKZZLEPBsFyCDTdzgDa', NULL, '2024-06-10 11:57:46', '2024-06-11 07:28:07', '2024-06-10 14:42:34', NULL, NULL, NULL, '2025-07-15 11:57:46', NULL),
(26, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '132.154.173.251', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, NULL, 'OrWdh9uGgIF6AIHbId9k3r4uPJxs5ypEnihkW5GfOUmk3TwV6FOMwe20wBtM', NULL, '2024-06-10 12:07:36', '2024-06-10 15:42:59', '2024-06-10 12:14:37', NULL, NULL, NULL, '2025-07-15 12:07:36', NULL),
(27, 'App\\Models\\Admin', 9, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '103.54.103.182', 'mobile', NULL, 'Android', 'Chrome', NULL, 'sELnuPblnDyozqxC2mlwmuwNXmo6QrFmH5NrUyjE', 'o2HN75D9JNog0zlNw3gAdvfuGEwDfubUuC3rtUQLHNXiWl7x8b2RShfzHf2N', NULL, '2024-06-10 12:42:16', '2024-06-10 14:44:03', '2024-06-10 14:44:03', NULL, NULL, NULL, '2025-07-15 12:42:16', '2024-06-10 14:44:03'),
(28, 'App\\Models\\Admin', 20, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '103.54.103.182', 'mobile', NULL, 'Android', 'Chrome', NULL, 'nCHpmNZY3nw5ZoPsxnPLMKSRDLmShhLVYMh6Mek9', 'oVhoZ2FgAvSlht5z5VElEVI0Kayl6rrsYqO1uwHjqRSVc9LuQVjmw5GpznOO', NULL, '2024-06-10 12:42:42', '2024-06-10 14:31:02', '2024-06-10 14:31:02', NULL, NULL, NULL, '2025-07-15 12:42:42', NULL),
(29, 'App\\Models\\Admin', 8, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '103.54.103.182', 'mobile', NULL, 'Android', 'Chrome', NULL, 'qiiNMdO2fk2lYHHtR6YpSf8JbAjosUPoMpmPlzjs', 'AamtF2w15sJy9uwDQJTqZoNaffoNTb6vbVDg0YsWgKJ5r4DFoD2Uza29ej6N', NULL, '2024-06-10 12:45:53', '2024-06-10 14:45:36', '2024-06-10 14:45:36', NULL, NULL, NULL, '2025-07-15 12:45:53', NULL),
(30, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '103.54.103.182', 'mobile', NULL, 'Android', 'Chrome', NULL, 'NQVS1FBlcGiHPZ7rR5aOUqc8H5ttTWRChtMzo0xp', '2iYMJvzrplhqILgXWFvu5yt98LYPi5nFvOfcLkUQWIE7BZnixbnovUMZOInO', NULL, '2024-06-10 12:49:35', '2024-06-10 13:35:02', '2024-06-10 13:35:02', NULL, NULL, NULL, '2025-07-15 12:49:35', '2024-06-10 13:35:02'),
(31, 'App\\Models\\Admin', 10, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '103.54.103.182', 'mobile', NULL, 'Android', 'Chrome', NULL, 'RaIuhdVp5onIABlV0DLV09kIu1eHbGFY0CDr8MWw', 'zV8iW7ZuUhJ4Uak3KZXHS4rN00k4JjlvZnesKI0ZE7lSSkVhKkYtyjfMaNQY', NULL, '2024-06-10 14:18:22', '2024-06-10 14:45:41', '2024-06-10 14:45:41', NULL, NULL, NULL, '2025-07-15 14:18:22', '2024-06-10 14:45:41'),
(32, 'App\\Models\\Admin', 18, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '103.54.103.182', 'mobile', NULL, 'Android', 'Chrome', NULL, NULL, 'MQkB4pkQUYny08XLy81QZn1e8Ius4XMYtuGRDZGsp0pTLZnJ6Enh04oc9x5n', NULL, '2024-06-10 14:23:13', '2024-06-12 08:51:21', '2024-06-10 14:23:54', NULL, NULL, NULL, '2025-07-15 14:23:13', NULL),
(33, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '223.178.212.138', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'yEAbBiQ7GEIz0CRpan6jxBopGkcZetKF0T5jJiOQ', NULL, NULL, '2024-06-10 15:42:59', '2024-06-10 15:43:00', '2024-06-10 15:43:00', NULL, NULL, NULL, '2025-07-15 15:42:59', NULL),
(34, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '223.178.212.138', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'EqXfryjeuEY4I6cR9IaQEWTXnkpcQmSkjpxQhByD', NULL, NULL, '2024-06-10 17:03:58', '2024-06-10 17:04:15', '2024-06-10 17:04:15', NULL, NULL, NULL, '2025-07-15 17:03:58', NULL),
(35, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '223.178.212.138', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'xGJSwREpOZUAaFU31fijIwOMCWhJwBzPQAicjC0O', NULL, NULL, '2024-06-10 19:14:42', '2024-06-10 19:14:42', '2024-06-10 19:14:42', NULL, NULL, NULL, '2025-07-15 19:14:42', NULL),
(36, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '223.178.211.186', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'Rp0KfKJh6UjjV95wvbhldJ2x0j2YDktlXhQSffxv', NULL, NULL, '2024-06-11 04:06:27', '2024-06-11 04:22:20', '2024-06-11 04:22:20', NULL, NULL, NULL, '2025-07-16 04:06:27', NULL),
(37, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '223.178.211.186', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'Wb1zYkUvEl13EtYALmwyecf0cUk69o83xl5h38pN', NULL, NULL, '2024-06-11 04:24:03', '2024-06-11 12:19:39', '2024-06-11 12:19:39', NULL, NULL, NULL, '2025-07-16 04:24:03', NULL),
(38, 'App\\Models\\Admin', 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'vfXvAy8bFlSS6NgwSlBMfZpjr9oyJvA423LVKSAk', NULL, NULL, '2024-06-11 04:47:24', '2024-06-11 06:24:40', '2024-06-11 06:24:40', NULL, NULL, NULL, '2025-07-16 04:47:24', NULL),
(39, 'App\\Models\\Admin', 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, '2zATTj6MC2Gk22brPS2RuEG0JyDOWcyid79vF8RQ', NULL, NULL, '2024-06-11 05:10:25', '2024-06-11 05:10:50', '2024-06-11 05:10:50', NULL, NULL, NULL, '2025-07-16 05:10:25', '2024-06-11 05:10:50'),
(40, 'App\\Models\\Admin', 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, NULL, 'oriMGUwhUHYZFcSyio50WdMbiHS4lyILiCaMgBcqR7DAHI97YgnziRpeVhMY', NULL, '2024-06-11 05:11:08', '2024-06-11 08:13:47', '2024-06-11 05:11:22', NULL, NULL, NULL, '2025-07-16 05:11:08', NULL),
(41, 'App\\Models\\Admin', 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'L0pYxfCza7nK7RZXF6YeMCv4dIsq4xZDV0pBTAA3', NULL, NULL, '2024-06-11 05:16:27', '2024-06-11 09:07:22', '2024-06-11 09:07:22', NULL, NULL, NULL, '2025-07-16 05:16:27', NULL),
(42, 'App\\Models\\Admin', 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'SH7a5m08ium2SkJspuBWLV7DCeJ7tdrcPVcB03p7', NULL, NULL, '2024-06-11 05:26:32', '2024-06-11 05:26:32', '2024-06-11 05:26:32', NULL, NULL, NULL, '2025-07-16 05:26:32', NULL),
(43, 'App\\Models\\Admin', 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'CuoI5ccWmlBvmWBjMhVVbh7t483S1Z7d1QHAUYdh', NULL, NULL, '2024-06-11 05:26:39', '2024-06-11 14:24:18', '2024-06-11 14:24:18', NULL, NULL, NULL, '2025-07-16 05:26:39', NULL),
(44, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '103.54.103.182', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'wvc5y4SVdWQBcFpd2Tm3IsDo47KpdP5eMGiTvNwc', NULL, NULL, '2024-06-11 07:18:30', '2024-06-11 07:18:55', '2024-06-11 07:18:55', NULL, NULL, NULL, '2025-07-16 07:18:30', NULL),
(45, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', 'Apple', 'macOS', 'Chrome', NULL, 'dIbgqPdLpdzG9iV4sz4r0LzQdnma9NaJ7ByfmV6L', NULL, NULL, '2024-06-11 07:28:07', '2024-06-11 08:10:11', '2024-06-11 08:10:11', NULL, NULL, NULL, '2025-07-16 07:28:07', NULL),
(46, 'App\\Models\\Admin', 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'V4NjmjlClBnsoa0yS2ERDDhdBvdx0DT1F8ajb0qq', NULL, NULL, '2024-06-11 08:13:47', '2024-06-11 08:13:48', '2024-06-11 08:13:48', NULL, NULL, NULL, '2025-07-16 08:13:47', NULL),
(47, 'App\\Models\\Admin', 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'CjWY0oZS7F7qpL7LkcBiOvnY4jshPXKOtCwqgptR', NULL, NULL, '2024-06-11 10:05:36', '2024-06-11 10:21:58', '2024-06-11 10:21:58', NULL, NULL, NULL, '2025-07-16 10:05:36', NULL),
(48, 'App\\Models\\Admin', 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'W1YeionM4xLjANx1EulVTZbh1n4Lo1KCUpbun7WC', NULL, NULL, '2024-06-11 10:25:11', '2024-06-11 13:45:30', '2024-06-11 13:45:30', NULL, NULL, NULL, '2025-07-16 10:25:11', NULL),
(49, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', 'Apple', 'macOS', 'Chrome', NULL, 'tAkuHT82DgAjJ4pT2zz5QgxhLMH2unFD7cbtHr2H', NULL, NULL, '2024-06-11 11:28:13', '2024-06-11 11:35:15', '2024-06-11 11:35:15', NULL, NULL, NULL, '2025-07-16 11:28:13', '2024-06-11 11:35:15'),
(50, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '132.154.188.70', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'l3TrnSv7uO8UNCuVwTSnSi1sgIvJvSfgsGztsTqp', NULL, NULL, '2024-06-11 11:38:25', '2024-06-11 11:39:33', '2024-06-11 11:39:33', NULL, NULL, NULL, '2025-07-16 11:38:25', '2024-06-11 11:39:33'),
(51, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '132.154.188.70', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'rzUU4mV2W9O0epkuqIXD2c1gQLOKdXxqYlQBp4GT', 'aSzd2vtQDDA3cNZNyH0Zi6YmfBcaV23jOmoA8emFthjy2dRxRv0OiYNTTr8i', NULL, '2024-06-11 11:40:10', '2024-06-11 11:42:32', '2024-06-11 11:42:32', NULL, NULL, NULL, '2025-07-16 11:40:10', '2024-06-11 11:42:32'),
(52, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '132.154.188.70', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, NULL, 'xboF87gWUcALZRuEGNDaZnpOrjYq8jcIs3mbnAJSQOvq7RRfgKLCrjoGpzGe', NULL, '2024-06-11 11:51:55', '2024-06-11 19:05:07', '2024-06-11 11:58:18', NULL, NULL, NULL, '2025-07-16 11:51:55', NULL),
(53, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '132.154.188.70', 'desktop', 'Apple', 'macOS', 'Chrome', NULL, 'P3jNDjDBAQxcDMH3aczBFzJg59PT8XUWUm1zZ3Pa', 'ikqD79Rg56lL96MjgsQomPmtoy9r9keMWuC0aZ073i8OXzh6li9ye5c4RMUj', NULL, '2024-06-11 12:04:34', '2024-06-11 12:15:24', '2024-06-11 12:15:24', NULL, NULL, NULL, '2025-07-16 12:04:34', NULL),
(54, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', '132.154.188.70', 'desktop', 'Apple', 'macOS', 'Safari', NULL, '0kev8UntGlrBVai4gJXZyzFxwleii1ZPfsVPEq9U', 'HyoR3Bksp0YWh8hY3OBhRjodyn81MFcL5SynyOlzyXKiyp0IAskznZ4LwTtJ', NULL, '2024-06-11 12:09:51', '2024-06-11 12:09:52', '2024-06-11 12:09:52', NULL, NULL, NULL, '2025-07-16 12:09:51', NULL),
(55, 'App\\Models\\Admin', 9, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '132.154.128.223', 'mobile', NULL, 'Android', 'Chrome', NULL, NULL, 'RR0ngt0XICLv3ABliwkMXtPo7o0A2FGxvdfmChhq8vwaOUmCe6eKpjOreGbb', NULL, '2024-06-11 14:00:14', '2024-06-12 02:09:03', '2024-06-11 14:03:51', NULL, NULL, NULL, '2025-07-16 14:00:14', NULL),
(56, 'App\\Models\\Admin', 7, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '122.173.27.226', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, NULL, '3uvdE66GTJe4ftg81yqCWDzjanLAqAm5i5OrwVN5N2ECCAMq7woy0UO0NlYW', NULL, '2024-06-11 15:25:53', '2024-06-12 09:38:22', '2024-06-11 16:02:00', NULL, NULL, NULL, '2025-07-16 15:25:53', NULL),
(57, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '223.178.211.186', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'SYBax0U3x4sYUtuia1McBNLH8jfdEap46OOsGNNm', NULL, NULL, '2024-06-11 15:59:11', '2024-06-11 16:18:20', '2024-06-11 16:18:20', NULL, NULL, NULL, '2025-07-16 15:59:11', NULL),
(58, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '223.178.211.186', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'Yb0TeuvOaKEvgikBScnqfBtfRvc1WCxxlq5bPxN5', NULL, NULL, '2024-06-11 19:05:07', '2024-06-11 19:05:08', '2024-06-11 19:05:08', NULL, NULL, NULL, '2025-07-16 19:05:07', NULL),
(59, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '223.178.211.186', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'UPj3uofi6CWkX7BNeBIqX0XZR87puitCrMTuZPmv', NULL, NULL, '2024-06-11 19:05:12', '2024-06-11 19:05:23', '2024-06-11 19:05:23', NULL, NULL, NULL, '2025-07-16 19:05:12', NULL),
(60, 'App\\Models\\Admin', 9, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '132.154.128.223', 'mobile', NULL, 'Android', 'Chrome', NULL, 'EOD5SZrhQoSukqTA2sX98MwqsVZv6JWIXYdsna6h', NULL, NULL, '2024-06-12 02:09:03', '2024-06-12 02:09:03', '2024-06-12 02:09:03', NULL, NULL, NULL, '2025-07-17 02:09:03', NULL),
(61, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '223.178.211.186', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'LoHAtp4Zz3NHdpbPCfxBctp2yVza7fYkWCIoaXlt', NULL, NULL, '2024-06-12 04:14:28', '2024-06-12 10:21:29', '2024-06-12 10:21:29', NULL, NULL, NULL, '2025-07-17 04:14:28', NULL),
(62, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '223.178.211.186', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'faMzCOLjpF4tw4BcoaGdL73N2jkNBj2ti1Zw57aU', NULL, NULL, '2024-06-12 04:53:51', '2024-06-12 04:53:57', '2024-06-12 04:53:57', NULL, NULL, NULL, '2025-07-17 04:53:51', '2024-06-12 04:53:57'),
(63, 'App\\Models\\Admin', 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'Cj0WTbNKRN0oFe0It4JfvMV0Lo8xxqHBRv7nmkL2', NULL, NULL, '2024-06-12 05:22:45', '2024-06-12 07:27:41', '2024-06-12 07:27:41', NULL, NULL, NULL, '2025-07-17 05:22:45', NULL),
(64, 'App\\Models\\Admin', 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'edVBYCqXwPEourkwVYeeiv6QtYObkYFEw0SE7ZDM', NULL, NULL, '2024-06-12 05:44:12', '2024-06-12 05:44:12', '2024-06-12 05:44:12', NULL, NULL, NULL, '2025-07-17 05:44:12', NULL),
(65, 'App\\Models\\Admin', 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, '3xFYbSlehhTnuwlUkaqqmfdll9YmFg2Uvr1WuDwm', NULL, NULL, '2024-06-12 05:44:12', '2024-06-12 06:42:00', '2024-06-12 06:42:00', NULL, NULL, NULL, '2025-07-17 05:44:12', NULL),
(66, 'App\\Models\\Admin', 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'c2I0AUtAlWVdR3wJD24Z3A9ZFWOLsLEbSvxo6U9a', NULL, NULL, '2024-06-12 05:55:57', '2024-06-12 08:09:06', '2024-06-12 08:09:06', NULL, NULL, NULL, '2025-07-17 05:55:57', NULL),
(67, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '223.178.211.186', 'mobile', NULL, 'Android', 'Chrome', NULL, 'fMt4Xo5ZLpjVDKO2bbAboBn9bpHxSMjTYb32E7Al', 'uawyv3Veed1XNGZiOJz4PW1KBxumpzHRlHLBzGx3xd2biWNF0itFzQhn80tV', NULL, '2024-06-12 06:02:25', '2024-06-12 06:42:06', '2024-06-12 06:42:06', NULL, NULL, NULL, '2025-07-17 06:02:25', '2024-06-12 06:42:06'),
(68, 'App\\Models\\Admin', 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'getkDNoWZxSfXTzVmat1vHUiYkQKecSdNrCzlfGH', NULL, NULL, '2024-06-12 06:05:27', '2024-06-12 06:07:09', '2024-06-12 06:07:09', NULL, NULL, NULL, '2025-07-17 06:05:27', NULL),
(69, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '223.178.211.186', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'bYQKtNPKaP2eluCHky3do7h5YPP81SgmlbVJZjyJ', NULL, NULL, '2024-06-12 06:29:45', '2024-06-12 06:36:28', '2024-06-12 06:36:28', NULL, NULL, NULL, '2025-07-17 06:29:45', NULL),
(70, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '223.178.211.186', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, '74qcxPoWyWJKLvJa80z1TV4EVclVUnjmnvPKwVVR', NULL, NULL, '2024-06-12 06:36:46', '2024-06-12 06:47:29', '2024-06-12 06:47:29', NULL, NULL, NULL, '2025-07-17 06:36:46', NULL),
(71, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '223.178.211.186', 'mobile', NULL, 'Android', 'Chrome', NULL, 'do0WO52iXYyg88lwcBQb6mP8wbRGuGyVPnlmW8Na', 'Vq6CYQMm3Hc6FNlPQzUqSjMMUBMW3Y25Ct2VuNuEsNK3kA7u8gc1l8fJKaGr', NULL, '2024-06-12 06:48:19', '2024-06-12 06:48:19', '2024-06-12 06:48:19', NULL, NULL, NULL, '2025-07-17 06:48:19', NULL),
(72, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '223.178.211.186', 'mobile', NULL, 'Android', 'Chrome', NULL, 'd0IhmKmGSVGQhJatbXJWkEUT7LDSroxPmGHjT6Ta', 'ENzMp9K7t2alY7eyTxjGyjbrFDj21OvAfM08FOpdIRYPF76lMlA98FnYutBQ', NULL, '2024-06-12 06:48:19', '2024-06-12 08:23:04', '2024-06-12 08:23:04', NULL, NULL, NULL, '2025-07-17 06:48:19', '2024-06-12 08:23:04'),
(73, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '223.178.211.186', 'mobile', NULL, 'Android', 'Chrome', NULL, NULL, '84Cd8pORHz3YFBH2utD8Mv9SYqsTNjvshFE0YtoCPXuHXQUEBwUVAA8NvZFb', NULL, '2024-06-12 08:23:14', '2024-06-12 14:59:06', '2024-06-12 08:29:15', NULL, NULL, NULL, '2025-07-17 08:23:14', NULL),
(74, 'App\\Models\\Admin', 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, NULL, '0bzbYRoqWmNeAYn01DbS1h72XfGbKUkHnFArVay1oDamjxulAO6jvcSGDhJq', NULL, '2024-06-12 08:28:27', '2024-06-12 13:23:27', '2024-06-12 11:22:14', NULL, NULL, NULL, '2025-07-17 08:28:27', NULL),
(75, 'App\\Models\\Admin', 18, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '103.54.103.182', 'mobile', NULL, 'Android', 'Chrome', NULL, '3D6CrINK2DXHh4UC6OVOTRv4c2Tg6IId1DPYUqYu', NULL, NULL, '2024-06-12 08:51:21', '2024-06-12 08:51:26', '2024-06-12 08:51:26', NULL, NULL, NULL, '2025-07-17 08:51:21', '2024-06-12 08:51:26'),
(76, 'App\\Models\\Admin', 11, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '103.54.103.182', 'mobile', NULL, 'Android', 'Chrome', NULL, 'RjX4630YGYeGa2q4rpc5jhEM3uSaMIHuowomiyvt', 'YKDBLf7WPp9tNWcFAisTvbKDTzSE6OkaxPL0TdF085jvaFBzlebxnCc3XD2m', NULL, '2024-06-12 08:55:12', '2024-06-12 08:55:20', '2024-06-12 08:55:20', NULL, NULL, NULL, '2025-07-17 08:55:12', '2024-06-12 08:55:20'),
(77, 'App\\Models\\Admin', 9, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '103.54.103.182', 'mobile', NULL, 'Android', 'Chrome', NULL, 'ouZlL0Qii3NSTCsGNNMgBxBXu03f6SAKHg6Z8sBo', 'YzkXu6vtWhJLMiNZlXCzMXEEbCdV1BJ8tU5Pl63zBjmn3rgDyYDPkLwwpLof', NULL, '2024-06-12 08:55:43', '2024-06-12 13:00:34', '2024-06-12 13:00:34', NULL, NULL, NULL, '2025-07-17 08:55:43', '2024-06-12 13:00:34'),
(78, 'App\\Models\\Admin', 7, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '106.221.132.108', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'guJhMbM9rCVovjvGNHRsFFXsfJGmdl92Ndx8rJz1', NULL, NULL, '2024-06-12 09:38:22', '2024-06-12 11:09:05', '2024-06-12 11:09:05', NULL, NULL, NULL, '2025-07-17 09:38:22', NULL),
(79, 'App\\Models\\Admin', 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'tdkNbFiu3BrAkkkQ8NiPPE4MuixClRBPE1bQWgSs', NULL, NULL, '2024-06-12 10:06:47', '2024-06-12 10:09:22', '2024-06-12 10:09:22', NULL, NULL, NULL, '2025-07-17 10:06:47', NULL),
(80, 'App\\Models\\Admin', 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'axKEnN3lUsKva8dwjPeBMHWHAr71u9tUAANK92Ng', NULL, NULL, '2024-06-12 10:21:35', '2024-06-12 13:23:54', '2024-06-12 13:23:54', NULL, NULL, NULL, '2025-07-17 10:21:35', NULL),
(81, 'App\\Models\\Admin', 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, '1xipiPXXJuY09B3kSb7qmK587mhYrb1cNHAIKK5Y', NULL, NULL, '2024-06-12 12:23:06', '2024-06-12 12:58:03', '2024-06-12 12:58:03', NULL, NULL, NULL, '2025-07-17 12:23:06', NULL),
(82, 'App\\Models\\Admin', 11, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '103.54.103.182', 'mobile', NULL, 'Android', 'Chrome', NULL, NULL, 'mfopMF46zbBCBRneAhWbz83lmLpr1ZerLAdYGYQDnKPc2TKh7syDqJIF3khy', NULL, '2024-06-12 13:06:10', '2024-06-13 06:32:31', '2024-06-12 13:59:23', NULL, NULL, NULL, '2025-07-17 13:06:10', NULL),
(83, 'App\\Models\\Admin', 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'Ojg5blN4mQgOXRbDiOnI6XAu3kmwcmplhlCORSEP', NULL, NULL, '2024-06-12 13:23:28', '2024-06-12 13:23:28', '2024-06-12 13:23:28', NULL, NULL, NULL, '2025-07-17 13:23:28', NULL),
(84, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '223.178.211.186', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'w48DD4cwDT6BxfyxrNrxyqpckjYiIitScRukkxzU', NULL, NULL, '2024-06-12 14:28:06', '2024-06-12 14:28:07', '2024-06-12 14:28:07', NULL, NULL, NULL, '2025-07-17 14:28:06', NULL),
(85, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '223.178.211.186', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'lti6lJ3IzO8eAdArKK8vLcxmcic8MPir9nw2ONFg', NULL, NULL, '2024-06-12 14:28:22', '2024-06-12 14:28:23', '2024-06-12 14:28:23', NULL, NULL, NULL, '2025-07-17 14:28:22', NULL),
(86, 'App\\Models\\Admin', 7, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '122.173.27.226', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'ycExGGCwCBwOOI3lGkVYq2MXQHBOqywQGKlm1IYz', NULL, NULL, '2024-06-12 14:41:47', '2024-06-12 14:41:48', '2024-06-12 14:41:48', NULL, NULL, NULL, '2025-07-17 14:41:47', NULL),
(87, 'App\\Models\\Admin', 6, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '223.178.211.186', 'mobile', NULL, 'Android', 'Chrome', NULL, 'mztQQJH4GsUiGePAyXGj5azbw9tfO7Hpmfy0RF9s', NULL, NULL, '2024-06-12 14:59:06', '2024-06-12 15:32:32', '2024-06-12 15:32:32', NULL, NULL, NULL, '2025-07-17 14:59:06', NULL),
(88, 'App\\Models\\Admin', 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '122.173.31.151', 'desktop', NULL, 'Windows', 'Chrome', NULL, '8WxrSoVO0fPFdOhevkhnO95Rw079VdQZPj6DYv8G', NULL, NULL, '2024-06-12 15:37:25', '2024-06-12 15:37:26', '2024-06-12 15:37:26', NULL, NULL, NULL, '2025-07-17 15:37:25', NULL),
(89, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '223.178.211.186', 'desktop', NULL, 'Windows', 'Chrome', NULL, NULL, 'jc86gEJIYtXbq8SRbBFV04INmSj2Uqk5WVTT1YyEKUZJ8MKcCMLDs6jkfggH', NULL, '2024-06-12 16:48:01', '2024-06-13 07:06:48', '2024-06-12 17:25:54', NULL, NULL, NULL, '2025-07-17 16:48:01', NULL),
(90, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '223.178.211.186', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, '4L70YSVChmnb7zsIq1E4Jo6qN9saFr3p2Cecu51t', NULL, NULL, '2024-06-12 19:15:26', '2024-06-12 19:16:44', '2024-06-12 19:16:44', NULL, NULL, NULL, '2025-07-17 19:15:26', NULL),
(91, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '223.178.211.186', 'mobile', 'Apple iPhone', 'iOS', 'Safari', NULL, 'E1BzdCz6DLG9NtLC5mU3dxFRgJKGJU2HPUT0lj9O', NULL, NULL, '2024-06-12 19:17:56', '2024-06-12 19:17:56', '2024-06-12 19:17:56', NULL, NULL, NULL, '2025-07-17 19:17:56', NULL),
(92, 'App\\Models\\Admin', 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, '2hf4u6wyHWZRh4VFwdyf7Z02NIAtZsBGa9KrmQUf', NULL, NULL, '2024-06-13 05:05:29', '2024-06-13 08:44:19', '2024-06-13 08:44:19', NULL, NULL, NULL, '2025-07-18 05:05:29', NULL),
(93, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '223.178.211.186', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'bJQPXgNsdYlqIWAyyxHn9uRt4XeV22MYzIUT8fRI', NULL, NULL, '2024-06-13 05:28:47', '2024-06-13 06:35:58', '2024-06-13 06:35:58', NULL, NULL, NULL, '2025-07-18 05:28:47', '2024-06-13 06:35:58'),
(94, 'App\\Models\\Admin', 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, '0yUbZ79nqAObNomQ69entRSOzE0ZNQFqLozC0mYm', NULL, NULL, '2024-06-13 05:51:17', '2024-06-13 07:23:38', '2024-06-13 07:23:38', NULL, NULL, NULL, '2025-07-18 05:51:17', NULL),
(95, 'App\\Models\\Admin', 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, '5SfWRnPa3y48mMtvJy6oe9DNsLkXrisXeS7PWuul', NULL, NULL, '2024-06-13 05:55:56', '2024-06-13 07:05:31', '2024-06-13 07:05:31', NULL, NULL, NULL, '2025-07-18 05:55:56', NULL),
(96, 'App\\Models\\Admin', 11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '223.178.211.186', 'desktop', NULL, 'Windows', 'Chrome', NULL, '8UEjP5JIauQcNpHAjM3PjCsaJea37ox3AvXHNuOs', 'dFKpYzQNaSQxxSgjHhvayxF1LBIkb98KBotjgQqXJzzsUNInGTaEPReHLgoC', NULL, '2024-06-13 06:30:32', '2024-06-13 06:33:44', '2024-06-13 06:33:44', NULL, NULL, NULL, '2025-07-18 06:30:32', NULL),
(97, 'App\\Models\\Admin', 11, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '132.154.157.14', 'mobile', NULL, 'Android', 'Chrome', NULL, 'ilN69kfjiYjC60n8CxIc5lz43TZiZnMlQIGgMZVj', NULL, NULL, '2024-06-13 06:32:31', '2024-06-13 06:32:31', '2024-06-13 06:32:31', NULL, NULL, NULL, '2025-07-18 06:32:31', '2024-06-13 06:32:31'),
(98, 'App\\Models\\Admin', 11, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '132.154.157.14', 'mobile', NULL, 'Android', 'Chrome', NULL, 'geI7KavZa6ZxDXYoPi5L1X5jvjhcVeIcBDfUfLLN', 'A44baQRnHQga8HcCdBoHEkQcJKD7sGhh3CfQ7ivmgGhO78mvceflqh5Eh6jB', NULL, '2024-06-13 06:32:48', '2024-06-13 08:49:29', '2024-06-13 08:49:29', NULL, NULL, NULL, '2025-07-18 06:32:48', NULL),
(99, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '223.178.211.186', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'P1zKKKdxIUFt3B97aaDxlrKQuDRYQzEV0IADfOxR', 'b4DXDv3jEmBmxRX8cEZymVv58wRTHpL2hqvXiWRyBzvnyEDGEbAgZ0dEOw9L', NULL, '2024-06-13 06:39:03', '2024-06-13 08:06:19', '2024-06-13 08:06:19', NULL, NULL, NULL, '2025-07-18 06:39:03', NULL),
(100, 'App\\Models\\Admin', 11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '223.178.211.186', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'h6TtMMkBcuJFaAJvqT5VuKm260xqAqCQAqw73zUj', 'BIVOpZ0KIZGsrBrjDzwwEM9QczBZNYpcXrfiVuTHS07A9qlGpjjdOMNnJcSM', NULL, '2024-06-13 06:40:54', '2024-06-13 06:44:19', '2024-06-13 06:44:19', NULL, NULL, NULL, '2025-07-18 06:40:54', NULL),
(101, 'App\\Models\\Admin', 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '103.54.103.182', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'J1HZzw2YEP0hrDzBx6LMhFCbdqh8gYp1PP3kO4RG', NULL, NULL, '2024-06-13 06:56:10', '2024-06-13 08:44:36', '2024-06-13 08:44:36', NULL, NULL, NULL, '2025-07-18 06:56:10', NULL),
(102, 'App\\Models\\Admin', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '223.178.211.186', 'desktop', NULL, 'Windows', 'Chrome', NULL, 'pF20yO2rz9ARs5K8eaTh1bvjjfKibtvdApNMJUZU', NULL, NULL, '2024-06-13 07:06:48', '2024-06-13 07:09:43', '2024-06-13 07:09:43', NULL, NULL, NULL, '2025-07-18 07:06:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `machine_machine_types`
--

CREATE TABLE `machine_machine_types` (
  `machine_id` int(11) NOT NULL,
  `machine_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `machine_types`
--

CREATE TABLE `machine_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `material_inwards`
--

CREATE TABLE `material_inwards` (
  `id` bigint(20) NOT NULL,
  `receipt_no` varchar(255) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `bill_date` date NOT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `total_gst` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `material_order_no` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_inwards`
--

INSERT INTO `material_inwards` (`id`, `receipt_no`, `vendor_id`, `bill_no`, `bill_date`, `subtotal`, `total_gst`, `total`, `material_order_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'REC0001', 6, 'INV-1193', '2024-06-11', 25300.00, 4554.00, 29854.00, '22', '2024-06-11 11:53:46', '2024-06-11 11:53:46', NULL),
(2, 'REC0002', 21, 'CASH-1', '2024-06-13', 500.00, 0.00, 500.00, '00', '2024-06-13 13:49:40', '2024-06-13 13:49:40', NULL);

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
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_inward_items`
--

INSERT INTO `material_inward_items` (`id`, `material_inward_id`, `category_id`, `product_id`, `item_name`, `quantity`, `hsn`, `weight_per_piece`, `total_weight`, `unit`, `rate_on`, `sheet_per_packet`, `item_per_packet`, `total_item`, `rate`, `gst`, `gst_amount`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, 48, 'Aqua Warnish(50001)', 11.00, '32089090', 20.00, 220.00, 'KG', 115.00, 0.00, 1.00, 11.00, 25300.00, 18.00, 4554.00, 25300.00, '2024-06-11 11:53:46', '2024-06-11 11:53:46', NULL),
(2, 2, 7, 85, 'Allstick Fevicol', 1.00, '4819', 5.00, 5.00, 'KG', 100.00, 0.00, 1.00, 1.00, 500.00, 0.00, 0.00, 500.00, '2024-06-13 13:49:40', '2024-06-13 13:49:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `material_orders`
--

CREATE TABLE `material_orders` (
  `id` bigint(20) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `order_no` varchar(255) NOT NULL,
  `bill_no` varchar(255) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL,
  `mo_date` date NOT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `total_gst` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `remarks` text,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `completed_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_orders`
--

INSERT INTO `material_orders` (`id`, `admin_id`, `order_no`, `bill_no`, `vendor_id`, `mo_date`, `subtotal`, `total_gst`, `total`, `remarks`, `status_id`, `completed_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 'RM/24-25/0001', NULL, 16, '2024-06-10', 4080.00, 734.40, 4814.40, NULL, 3, NULL, '2024-06-10 15:44:56', '2024-06-11 11:03:25', NULL),
(2, 9, 'RM/24-25/0002', NULL, 4, '2024-06-11', 34500.00, 6210.00, 40710.00, NULL, 6, NULL, '2024-06-11 10:27:09', '2024-06-11 11:02:52', NULL),
(3, 9, 'RM/24-25/0003', NULL, 2, '2024-06-11', 12200.00, 2196.00, 14396.00, NULL, 1, NULL, '2024-06-11 15:42:50', '2024-06-11 15:42:50', NULL),
(4, 9, 'RM/24-25/0004', '1860/CHD/24-25', 1, '2024-06-12', 2150.00, 387.00, 2537.00, NULL, 6, NULL, '2024-06-12 15:00:38', '2024-06-13 12:14:18', NULL),
(5, 9, 'RM/24-25/0005', NULL, 1, '2024-06-13', 10700.00, 1926.00, 12626.00, NULL, 6, NULL, '2024-06-13 12:40:16', '2024-06-13 14:14:09', NULL),
(6, 9, 'RM/24-25/0006', NULL, 5, '2024-06-13', 4530.00, 815.40, 5345.40, NULL, 1, NULL, '2024-06-13 12:43:22', '2024-06-13 12:43:22', NULL),
(7, 9, 'RM/24-25/0007', NULL, 2, '2024-06-13', 1600.00, 288.00, 1888.00, NULL, 1, NULL, '2024-06-13 13:43:51', '2024-06-13 13:43:51', NULL),
(8, 9, 'RM/24-25/0008', NULL, 21, '2024-06-13', 2750.00, 0.00, 2750.00, NULL, 1, NULL, '2024-06-13 14:06:10', '2024-06-13 14:06:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `material_order_items`
--

CREATE TABLE `material_order_items` (
  `id` int(11) NOT NULL,
  `material_order_id` bigint(20) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `weight_per_piece` decimal(10,2) DEFAULT NULL,
  `total_weight` decimal(10,2) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
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
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_order_items`
--

INSERT INTO `material_order_items` (`id`, `material_order_id`, `category_id`, `product_id`, `item_name`, `quantity`, `hsn`, `weight_per_piece`, `total_weight`, `unit_id`, `rate_on`, `sheet_per_packet`, `item_per_packet`, `total_item`, `rate`, `gst`, `gst_amount`, `amount`, `receive_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, 43, 'Lithochem Yellow', 1.00, '2315', 24.00, 24.00, 5, 170.00, 0.00, 1.00, 1.00, 4080.00, 18.00, 734.40, 4080.00, 1, '2024-06-10 15:44:56', '2024-06-11 11:03:25', NULL),
(2, 2, 8, 46, '640*280*302 C/ Box', 1000.00, '4819', 1.00, 1000.00, 1, 34.50, 0.00, 1.00, 1000.00, 34500.00, 18.00, 6210.00, 34500.00, 1, '2024-06-11 10:27:09', '2024-06-11 11:02:52', NULL),
(3, 3, 5, 49, 'ECO WASH 101K', 4.00, '4819', 25.00, 100.00, 5, 122.00, 0.00, 1.00, 4.00, 12200.00, 18.00, 2196.00, 12200.00, 1, '2024-06-11 15:42:50', '2024-06-11 15:54:18', NULL),
(4, 4, 5, 68, 'Retarder OC', 2.00, '4819', 5.00, 10.00, 5, 215.00, 0.00, 1.00, 2.00, 2150.00, 18.00, 387.00, 2150.00, 1, '2024-06-12 15:00:38', '2024-06-12 15:03:26', NULL),
(5, 5, 5, 86, 'Thinner Commercial', 6.00, '4819', 5.00, 30.00, 5, 70.00, 0.00, 1.00, 6.00, 2100.00, 18.00, 378.00, 2100.00, 0, '2024-06-13 12:40:16', '2024-06-13 12:40:16', NULL),
(6, 5, 16, 87, 'Kris Matrix Groove', 2.00, '4819', 50.00, 100.00, 6, 86.00, 0.00, 1.00, 2.00, 8600.00, 18.00, 1548.00, 8600.00, 0, '2024-06-13 12:40:16', '2024-06-13 12:40:16', NULL),
(7, 6, 5, 47, 'Plate Cleaner GP TECHNOVA', 6.00, '3814', 5.00, 30.00, 3, 151.00, 0.00, 1.00, 6.00, 4530.00, 18.00, 815.40, 4530.00, 0, '2024-06-13 12:43:22', '2024-06-13 12:43:22', NULL),
(8, 7, 5, 84, 'Spray Powder Huber', 10.00, '4819', 1.00, 10.00, 3, 160.00, 0.00, 1.00, 10.00, 1600.00, 18.00, 288.00, 1600.00, 0, '2024-06-13 13:43:51', '2024-06-13 13:43:51', NULL),
(9, 8, 7, 88, 'Feviquick', 25.00, '4819', 1.00, 25.00, 1, 55.00, 0.00, 1.00, 25.00, 1375.00, 0.00, 0.00, 1375.00, 0, '2024-06-13 14:06:10', '2024-06-13 14:06:10', NULL),
(10, 8, 7, 89, 'Fevibond', 25.00, '4819', 1.00, 25.00, 1, 55.00, 0.00, 1.00, 25.00, 1375.00, 0.00, 0.00, 1375.00, 0, '2024-06-13 14:06:10', '2024-06-13 14:06:10', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `file`, `icon`, `name`, `slug`, `type`, `original_name`, `size`, `handle`, `created_at`, `updated_at`) VALUES
(1, 'media/2024/06/1675870540-favicon.png', NULL, '1675870540_favicon', '1675870540-favicon', 'png', '1675870540_favicon.png', '2.66 KB', '1675870540-favicon', '2024-06-10 09:27:05', '2024-06-10 09:27:06'),
(2, 'https://shreyaoffset.s3.eu-north-1.amazonaws.com/media/2024/06/kitchen.jpg', NULL, 'kitchen', 'kitchen', 'jpg', 'kitchen.jpg', '85.93 KB', 'kitchen', '2024-06-10 09:33:57', '2024-06-10 09:33:59'),
(3, 'https://shreyaoffset.s3.eu-north-1.amazonaws.com/media/2024/06/kitchen-2.jpg', NULL, 'kitchen', 'kitchen-2', 'jpg', 'kitchen.jpg', '85.93 KB', 'kitchen', '2024-06-10 09:39:29', '2024-06-10 09:39:31'),
(4, 'https://shreyaoffset.s3.eu-north-1.amazonaws.com/media/2024/06/real-estate.jpg', NULL, 'real   estate', 'real-estate', 'jpg', 'real   estate.jpg', '60.75 KB', 'real-estate', '2024-06-10 16:09:37', '2024-06-10 16:09:41'),
(5, 'https://shreyaoffset.s3.eu-north-1.amazonaws.com/media/2024/06/22f600cf-8eef-4ab5-b280-3e609da639de-modified.png', NULL, '22f600cf-8eef-4ab5-b280-3e609da639de-modified', '22f600cf-8eef-4ab5-b280-3e609da639de-modified', 'png', '22f600cf-8eef-4ab5-b280-3e609da639de-modified.png', '9.13 KB', '22f600cf-8eef-4ab5-b280-3e609da639de-modified', '2024-06-10 18:00:32', '2024-06-10 18:00:34'),
(6, 'https://shreyaoffset.s3.eu-north-1.amazonaws.com/media/2024/06/lobg-gpl03777-crt-s-1-cdr01.jpg', NULL, 'LOBG GPL03777 CRT (S)_1.cdr01', 'lobg-gpl03777-crt-s-1-cdr01', 'jpg', 'LOBG GPL03777 CRT (S)_1.cdr01.jpg', '351.45 KB', 'lobg-gpl03777-crt-s-1cdr01', '2024-06-12 11:42:10', '2024-06-12 11:42:42'),
(7, 'https://shreyaoffset.s3.eu-north-1.amazonaws.com/media/2024/06/lobg-gpl03777-crt-s-45x50x105mm-die-no-1033-cdr01-1.jpg', NULL, 'LOBG GPL03777 CRT (S)_45x50x105mm_Die No 1033.cdr01 (1)', 'lobg-gpl03777-crt-s-45x50x105mm-die-no-1033-cdr01-1', 'jpg', 'LOBG GPL03777 CRT (S)_45x50x105mm_Die No 1033.cdr01 (1).jpg', '309.49 KB', 'lobg-gpl03777-crt-s-45x50x105mm-die-no-1033cdr01-1', '2024-06-12 11:53:58', '2024-06-12 11:54:25'),
(8, 'https://shreyaoffset.s3.eu-north-1.amazonaws.com/media/2024/06/lobg-gpl03777-crt-s-45x50x105mm-die-no-1033-cdr01-1-2.jpg', NULL, 'LOBG GPL03777 CRT (S)_45x50x105mm_Die No 1033.cdr01 (1)', 'lobg-gpl03777-crt-s-45x50x105mm-die-no-1033-cdr01-1-2', 'jpg', 'LOBG GPL03777 CRT (S)_45x50x105mm_Die No 1033.cdr01 (1).jpg', '309.49 KB', 'lobg-gpl03777-crt-s-45x50x105mm-die-no-1033cdr01-1', '2024-06-12 11:54:16', '2024-06-12 11:54:34'),
(9, 'https://shreyaoffset.s3.eu-north-1.amazonaws.com/media/2024/06/logo.png', NULL, 'logo', 'logo', 'png', 'logo.png', '509.05 KB', 'logo', '2024-06-12 22:18:32', '2024-06-12 22:18:36'),
(10, 'https://shreyaoffset.s3.eu-north-1.amazonaws.com/media/2024/06/oosure-2023-24-2191-1-1.pdf', NULL, 'OOSURE 2023-24_2191-1(1)', 'oosure-2023-24-2191-1-1', 'pdf', 'OOSURE 2023-24_2191-1(1).pdf', '827.76 KB', 'oosure-2023-24-2191-11', '2024-06-13 12:48:39', '2024-06-13 12:49:19'),
(11, 'https://shreyaoffset.s3.eu-north-1.amazonaws.com/media/2024/06/rouvax-2022-23-673-1-2.pdf', NULL, 'ROUVAX 2022-23_673-1(2)', 'rouvax-2022-23-673-1-2', 'pdf', 'ROUVAX 2022-23_673-1(2).pdf', '866.97 KB', 'rouvax-2022-23-673-12', '2024-06-13 12:50:48', '2024-06-13 12:51:13'),
(12, NULL, NULL, 'WILCEF2023-24_1316-1(2) (1)', 'wilcef2023-24-1316-1-2-1', 'pdf', 'WILCEF2023-24_1316-1(2) (1).pdf', '8.05 MB', 'wilcef2023-24-1316-12-1', '2024-06-13 12:51:12', '2024-06-13 12:51:12');

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
  `status` tinyint(4) NOT NULL DEFAULT '1'
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

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `module_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `module_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_users`
--

INSERT INTO `module_users` (`id`, `name`, `status`, `module_id`, `created_at`, `updated_at`) VALUES
(1, 'Polar Cutting', 1, 1, '2024-06-10 18:40:42', '2024-06-10 18:40:42'),
(2, 'Manual Cutting', 1, 1, '2024-06-10 18:40:54', '2024-06-10 18:40:54'),
(3, 'SM-74', 1, 10, '2024-06-10 18:41:06', '2024-06-10 18:41:06'),
(4, 'Dominant 4 colour', 1, 10, '2024-06-10 18:41:17', '2024-06-10 18:41:17'),
(5, 'Heidelberg 6 Colour', 1, 10, '2024-06-10 18:41:37', '2024-06-10 18:41:37'),
(6, 'Dominant 2 colour', 1, 2, '2024-06-10 18:42:02', '2024-06-10 18:42:02'),
(7, 'Heidelberg 2 Colour', 1, 2, '2024-06-10 18:42:21', '2024-06-10 18:42:21'),
(8, 'Manish Manual Dye', 1, 7, '2024-06-10 18:46:19', '2024-06-10 18:46:19'),
(9, 'Ravinder Manual Dye', 1, 7, '2024-06-10 18:47:40', '2024-06-10 18:47:40'),
(10, 'Shayam Auto Dye', 1, 7, '2024-06-10 18:48:11', '2024-06-10 18:48:11'),
(11, 'ABCD Auto Dye', 1, 7, '2024-06-10 18:49:09', '2024-06-10 19:09:38'),
(12, 'Ganesh Auto Dye', 1, 7, '2024-06-10 18:49:28', '2024-06-10 19:09:22'),
(13, 'Ranjeet Auto Dye', 1, 7, '2024-06-10 18:49:54', '2024-06-10 18:49:54'),
(14, 'Laalu Lockbottom', 1, 8, '2024-06-10 18:50:30', '2024-06-10 18:50:30'),
(15, 'Veeru Side Pasting', 1, 8, '2024-06-10 18:53:52', '2024-06-10 18:53:52'),
(16, 'Contractor 1', 1, 9, '2024-06-10 19:08:58', '2024-06-10 19:08:58'),
(17, 'Ranjeet', 1, 4, '2024-06-10 19:10:04', '2024-06-10 19:10:04'),
(18, 'Ganesh', 1, 4, '2024-06-10 19:10:20', '2024-06-10 19:10:20'),
(19, 'Ranjeet', 1, 5, '2024-06-10 19:44:05', '2024-06-10 19:44:05'),
(20, 'Manish', 1, 5, '2024-06-10 19:44:32', '2024-06-10 19:44:32'),
(21, 'Ravinder', 1, 5, '2024-06-10 19:44:41', '2024-06-10 19:44:41'),
(22, 'Ganesh', 1, 5, '2024-06-10 19:44:56', '2024-06-10 19:44:56'),
(23, 'Ganesh', 1, 7, '2024-06-10 20:05:39', '2024-06-10 20:05:39');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('98dd82e3-f05d-4bf1-869f-82f40edc5a6c', 'App\\Notifications\\MaterialOrderNotification', 'App\\Models\\Admin', 6, '{\"order_no\":\"RM\\/24-25\\/0004\",\"order_id\":4,\"message\":\"New material order placed.\",\"url\":\"https:\\/\\/shreyaoffset.com\\/admin\\/material-order\\/4\"}', NULL, '2024-06-12 09:30:39', '2024-06-12 09:30:39'),
('c74c7e6e-98c2-4a9e-ab19-0ff5d28f0974', 'App\\Notifications\\MaterialOrderNotification', 'App\\Models\\Admin', 7, '{\"order_no\":\"RM\\/24-25\\/0004\",\"order_id\":4,\"message\":\"New material order placed.\",\"url\":\"https:\\/\\/shreyaoffset.com\\/admin\\/material-order\\/4\"}', '2024-06-12 11:09:04', '2024-06-12 09:30:39', '2024-06-12 11:09:04'),
('ccbd0ebd-f36e-4de5-a16d-22367375c7c2', 'App\\Notifications\\MaterialOrderNotification', 'App\\Models\\Admin', 6, '{\"order_no\":\"RM\\/24-25\\/0005\",\"order_id\":5,\"message\":\"New material order placed.\",\"url\":\"https:\\/\\/shreyaoffset.com\\/admin\\/material-order\\/5\"}', NULL, '2024-06-13 07:10:16', '2024-06-13 07:10:16'),
('60caf474-ca00-4f62-a4e4-585faa7b027c', 'App\\Notifications\\MaterialOrderNotification', 'App\\Models\\Admin', 7, '{\"order_no\":\"RM\\/24-25\\/0005\",\"order_id\":5,\"message\":\"New material order placed.\",\"url\":\"https:\\/\\/shreyaoffset.com\\/admin\\/material-order\\/5\"}', NULL, '2024-06-13 07:10:16', '2024-06-13 07:10:16'),
('82809f81-92ed-478e-bdf1-bd56d74d60f9', 'App\\Notifications\\MaterialOrderNotification', 'App\\Models\\Admin', 6, '{\"order_no\":\"RM\\/24-25\\/0006\",\"order_id\":6,\"message\":\"New material order placed.\",\"url\":\"https:\\/\\/shreyaoffset.com\\/admin\\/material-order\\/6\"}', NULL, '2024-06-13 07:13:22', '2024-06-13 07:13:22'),
('e085df1d-c3ec-43ab-8ba5-696a3e3b4302', 'App\\Notifications\\MaterialOrderNotification', 'App\\Models\\Admin', 7, '{\"order_no\":\"RM\\/24-25\\/0006\",\"order_id\":6,\"message\":\"New material order placed.\",\"url\":\"https:\\/\\/shreyaoffset.com\\/admin\\/material-order\\/6\"}', NULL, '2024-06-13 07:13:22', '2024-06-13 07:13:22'),
('4993efc6-6f3f-4568-a9b0-c897adf6433a', 'App\\Notifications\\MaterialOrderNotification', 'App\\Models\\Admin', 6, '{\"order_no\":\"RM\\/24-25\\/0007\",\"order_id\":7,\"message\":\"New material order placed.\",\"url\":\"https:\\/\\/shreyaoffset.com\\/admin\\/material-order\\/7\"}', NULL, '2024-06-13 08:13:51', '2024-06-13 08:13:51'),
('b5bd7752-fcf4-4942-826b-c170a1ebe147', 'App\\Notifications\\MaterialOrderNotification', 'App\\Models\\Admin', 7, '{\"order_no\":\"RM\\/24-25\\/0007\",\"order_id\":7,\"message\":\"New material order placed.\",\"url\":\"https:\\/\\/shreyaoffset.com\\/admin\\/material-order\\/7\"}', NULL, '2024-06-13 08:13:51', '2024-06-13 08:13:51'),
('3ba63bf6-1ce7-4fc9-898a-54adabcfb4ba', 'App\\Notifications\\MaterialOrderNotification', 'App\\Models\\Admin', 6, '{\"order_no\":\"RM\\/24-25\\/0008\",\"order_id\":8,\"message\":\"New material order placed.\",\"url\":\"https:\\/\\/shreyaoffset.com\\/admin\\/material-order\\/8\"}', NULL, '2024-06-13 08:36:10', '2024-06-13 08:36:10'),
('e98825e2-d90c-4c31-9f0f-b696d68b2a32', 'App\\Notifications\\MaterialOrderNotification', 'App\\Models\\Admin', 7, '{\"order_no\":\"RM\\/24-25\\/0008\",\"order_id\":8,\"message\":\"New material order placed.\",\"url\":\"https:\\/\\/shreyaoffset.com\\/admin\\/material-order\\/8\"}', NULL, '2024-06-13 08:36:10', '2024-06-13 08:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `other_coating_types`
--

CREATE TABLE `other_coating_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paper_warehouses`
--

CREATE TABLE `paper_warehouses` (
  `id` int(11) NOT NULL,
  `paper_stock` text,
  `sheets` int(11) DEFAULT NULL,
  `remarks` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pastings`
--

CREATE TABLE `pastings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  `purchase_order_item_id` bigint(20) DEFAULT NULL,
  `ready_quantity` int(11) DEFAULT '0',
  `dye_breaking_quantity` int(11) NOT NULL DEFAULT '0',
  `ready_box` varchar(255) DEFAULT NULL,
  `quantity_in_box` int(11) DEFAULT NULL,
  `no_of_box` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `menu_slug` varchar(200) DEFAULT NULL,
  `permission_key` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `status_id` int(11) NOT NULL DEFAULT '2',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plannings`
--

INSERT INTO `plannings` (`id`, `designer`, `purchase_order_id`, `purchase_order_item_id`, `dye_detail_id`, `old_dye_detail_id`, `old_jobcard_id`, `ups`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 1, 1, 470, NULL, NULL, 1, 5, '2024-06-10 12:55:06', '2024-06-10 18:25:06', NULL),
(2, 10, 1, 2, 471, NULL, NULL, 4, 5, '2024-06-10 12:55:36', '2024-06-10 18:25:36', NULL),
(3, 10, 1, 3, 472, NULL, NULL, 2, 5, '2024-06-10 12:55:41', '2024-06-10 18:25:41', NULL),
(4, 10, 2, 4, 473, NULL, NULL, 3, 5, '2024-06-12 07:13:27', '2024-06-12 12:43:27', NULL),
(5, 10, 3, 5, 426, NULL, NULL, 6, 5, '2024-06-12 10:38:02', '2024-06-12 16:08:02', NULL),
(6, 10, 4, 6, 474, NULL, NULL, 4, 5, '2024-06-12 10:37:46', '2024-06-12 16:07:46', NULL),
(7, 3, 6, 7, NULL, NULL, NULL, NULL, 2, '2024-06-11 09:18:34', '2024-06-11 14:48:34', NULL),
(8, 3, 6, 8, 475, NULL, NULL, 9, 2, '2024-06-11 09:18:34', '2024-06-11 14:48:34', NULL),
(9, 3, 6, 9, 476, NULL, NULL, 2, 2, '2024-06-11 09:18:34', '2024-06-11 14:48:34', NULL),
(10, 3, 6, 10, 477, NULL, NULL, 12, 2, '2024-06-11 09:18:34', '2024-06-11 14:48:34', NULL),
(11, 3, 6, 11, 478, NULL, NULL, 3, 2, '2024-06-11 09:18:34', '2024-06-11 14:48:34', NULL),
(12, 3, 6, 12, 479, NULL, NULL, 2, 2, '2024-06-11 09:18:34', '2024-06-11 14:48:34', NULL),
(13, 3, 6, 13, 479, NULL, NULL, 2, 2, '2024-06-11 09:18:34', '2024-06-11 14:48:34', NULL),
(14, 3, 6, 14, NULL, NULL, NULL, NULL, 2, '2024-06-11 09:18:34', '2024-06-11 14:48:34', NULL),
(15, 3, 6, 15, 480, NULL, NULL, 2, 2, '2024-06-11 09:18:34', '2024-06-11 14:48:34', NULL),
(16, 3, 6, 16, 477, NULL, NULL, 12, 2, '2024-06-11 09:18:34', '2024-06-11 14:48:34', NULL),
(17, 3, 6, 17, NULL, NULL, NULL, NULL, 2, '2024-06-11 09:18:34', '2024-06-11 14:48:34', NULL),
(38, 3, 8, 36, 481, NULL, NULL, 6, 5, '2024-06-12 05:27:11', '2024-06-12 10:57:11', NULL),
(19, 10, 7, 18, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:51', '2024-06-11 17:53:51', NULL),
(20, 10, 7, 19, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:51', '2024-06-11 17:53:51', NULL),
(21, 10, 7, 20, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:51', '2024-06-11 17:53:51', NULL),
(22, 10, 7, 21, 479, NULL, NULL, 2, 2, '2024-06-11 12:23:51', '2024-06-11 17:53:51', NULL),
(23, 10, 7, 22, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:51', '2024-06-11 17:53:51', NULL),
(24, 10, 7, 23, 79, NULL, NULL, 4, 2, '2024-06-11 12:23:51', '2024-06-11 17:53:51', NULL),
(25, 10, 7, 24, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:51', '2024-06-11 17:53:51', NULL),
(26, 10, 7, 25, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:51', '2024-06-11 17:53:51', NULL),
(27, 10, 7, 26, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:51', '2024-06-11 17:53:51', NULL),
(28, 10, 7, 27, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:51', '2024-06-11 17:53:51', NULL),
(29, 10, 7, 28, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:52', '2024-06-11 17:53:52', NULL),
(30, 10, 7, 29, 476, NULL, NULL, 2, 2, '2024-06-11 12:23:52', '2024-06-11 17:53:52', NULL),
(31, 10, 7, 30, 475, NULL, NULL, 9, 2, '2024-06-11 12:23:52', '2024-06-11 17:53:52', NULL),
(32, 10, 7, 31, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:52', '2024-06-11 17:53:52', NULL),
(33, 10, 7, 32, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:52', '2024-06-11 17:53:52', NULL),
(34, 10, 7, 33, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:52', '2024-06-11 17:53:52', NULL),
(35, 10, 7, 34, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:52', '2024-06-11 17:53:52', NULL),
(36, 10, 7, 35, NULL, NULL, NULL, NULL, 2, '2024-06-11 12:23:52', '2024-06-11 17:53:52', NULL),
(39, 3, 14, 42, NULL, NULL, NULL, NULL, 2, '2024-06-12 05:45:33', '2024-06-12 11:15:33', NULL),
(48, 10, 13, 41, 482, NULL, NULL, 2, 5, '2024-06-12 13:04:02', '2024-06-12 18:34:02', NULL),
(41, 3, 11, 40, 418, NULL, NULL, 10, 5, '2024-06-12 13:02:10', '2024-06-12 18:32:10', NULL),
(42, 3, 10, 38, NULL, NULL, NULL, NULL, 2, '2024-06-12 05:46:32', '2024-06-12 11:16:32', NULL),
(43, 3, 10, 39, NULL, NULL, NULL, NULL, 2, '2024-06-12 05:46:32', '2024-06-12 11:16:32', NULL),
(44, 3, 9, 37, 473, NULL, NULL, 3, 5, '2024-06-12 13:02:03', '2024-06-12 18:32:03', NULL),
(45, 10, 16, 44, NULL, NULL, NULL, NULL, 2, '2024-06-12 10:05:28', '2024-06-12 15:35:28', NULL),
(46, 10, 16, 45, NULL, NULL, NULL, NULL, 2, '2024-06-12 10:05:28', '2024-06-12 15:35:28', NULL),
(47, 10, 16, 46, NULL, NULL, NULL, NULL, 2, '2024-06-12 10:05:28', '2024-06-12 15:35:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `printings`
--

CREATE TABLE `printings` (
  `id` int(11) NOT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `printed_sheet` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_type_id` double DEFAULT NULL,
  `unit_id` int(11) NOT NULL DEFAULT '2',
  `paper_type` double DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(1024) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `hsn` int(11) DEFAULT NULL,
  `packet_weight` decimal(10,4) DEFAULT NULL,
  `item_per_packet` decimal(10,4) DEFAULT NULL,
  `weight_per_piece` decimal(10,4) DEFAULT NULL,
  `length` decimal(10,4) DEFAULT NULL,
  `width` decimal(10,4) DEFAULT NULL,
  `gsm` int(11) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `in_hand_quantity` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_type_id`, `unit_id`, `paper_type`, `code`, `name`, `category_id`, `hsn`, `packet_weight`, `item_per_packet`, `weight_per_piece`, `length`, `width`, `gsm`, `quantity`, `in_hand_quantity`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(43, 15, 5, NULL, 'Lith-001', 'Lithochem Yellow', 5, 2315, NULL, 1.0000, 24.0000, NULL, NULL, NULL, 0.00, NULL, NULL, '2024-06-10 15:39:43', '2024-06-10 18:56:37', NULL),
(45, 17, 3, NULL, 'Pidi-002', '2000L', 7, 3219, NULL, 1.0000, 50.0000, NULL, NULL, NULL, 0.00, NULL, NULL, '2024-06-10 19:45:17', '2024-06-10 20:07:15', NULL),
(46, 18, 1, NULL, '5ply-003', '640*280*302 C/ Box', 8, 4819, NULL, 1.0000, 1.0000, NULL, NULL, NULL, 0.00, NULL, NULL, '2024-06-11 10:22:17', '2024-06-11 10:22:26', NULL),
(47, 15, 3, NULL, 'GP-004', 'Plate Cleaner GP TECHNOVA', 5, 3814, NULL, 1.0000, 5.0000, NULL, NULL, NULL, -1.00, NULL, NULL, '2024-06-11 10:39:10', '2024-06-11 10:41:43', NULL),
(48, 15, 3, NULL, 'AW(50001)-005', 'Aqua Warnish(50001) Westtek', 5, 32089090, NULL, 1.0000, 20.0000, NULL, NULL, NULL, 11.00, NULL, NULL, '2024-06-11 11:51:24', '2024-06-12 15:36:59', NULL),
(49, 15, 5, NULL, 'EW-006', 'ECO WASH 101K Huber', 5, 4819, NULL, 1.0000, 25.0000, NULL, NULL, NULL, 0.00, NULL, NULL, '2024-06-11 15:38:00', '2024-06-12 15:37:22', NULL),
(53, 4, 2, 1, '01', '19X40-320', 1, 4810, 15.6900, 100.0000, 0.1570, 19.0000, 40.0000, 320, 16400.00, 5000, 1, '2024-06-12 14:05:03', '2024-06-13 12:50:49', NULL),
(54, 4, 2, 1, '02', '21X36-300', 1, 4810, 14.6300, 100.0000, 0.1500, 21.0000, 36.0000, 300, 7800.00, 5000, 1, '2024-06-12 14:06:00', '2024-06-12 14:07:20', NULL),
(55, 4, 2, 1, '03', '22X31.50-280', 1, 4810, 12.5200, 100.0000, 0.1250, 22.0000, 31.5000, 280, 1000.00, 1000, 1, '2024-06-12 14:06:39', '2024-06-13 12:53:08', NULL),
(56, 3, 2, 1, '07', '23.23X36-280', 2, 4810, 15.1100, 100.0000, 0.1500, 23.2300, 36.0000, 280, 4200.00, 2000, 1, '2024-06-12 14:13:38', '2024-06-12 14:13:38', NULL),
(57, 3, 2, 1, '06', '28X23-320', 2, 4810, 13.3000, 100.0000, 0.1300, 28.0000, 23.0000, 320, 14900.00, 5000, 1, '2024-06-12 14:14:19', '2024-06-12 14:14:19', NULL),
(58, 13, 2, 4, '08', '20.59X24.80-290', 4, 4810, 19.1100, 200.0000, 0.1000, 20.5900, 24.8000, 290, 102700.00, 5000, 1, '2024-06-12 14:37:59', '2024-06-13 12:53:18', NULL),
(59, 13, 3, 4, '09', '28X30.51-290', 4, 4810, 31.9700, 200.0000, 0.1600, 28.0000, 30.5100, 290, 2250.00, 1000, 1, '2024-06-12 14:39:20', '2024-06-12 14:39:20', NULL),
(60, 16, 3, NULL, 'Cyan-007', 'Cyan Sakata', 6, 4819, NULL, 1.0000, 2.0000, NULL, NULL, NULL, 13.00, 12, NULL, '2024-06-12 14:49:16', '2024-06-12 14:54:12', NULL),
(61, 4, 2, 1, '10', '20X36-290', 1, 4810, 13.4700, 100.0000, 0.1400, 20.0000, 36.0000, 290, 600.00, 1000, 1, '2024-06-12 14:52:33', '2024-06-12 14:52:33', NULL),
(62, 4, 2, 1, '11', '23X30-280', 1, 4810, 12.4600, 100.0000, 0.1300, 23.0000, 30.0000, 280, 600.00, 1000, 1, '2024-06-12 14:53:15', '2024-06-12 14:53:15', NULL),
(63, 4, 2, 1, '13', '19X36-340', 1, 4810, 15.0000, 100.0000, 0.1500, 19.0000, 36.0000, 340, 1100.00, 1000, 1, '2024-06-12 14:53:58', '2024-06-12 14:53:58', NULL),
(64, 4, 2, 1, '14', '20X38-340', 1, 4810, 16.6700, 100.0000, 0.1700, 20.0000, 38.0000, 340, 600.00, 500, 1, '2024-06-12 14:54:31', '2024-06-12 14:54:31', NULL),
(65, 4, 2, 1, '14', '26X35-280', 1, 4810, 16.4400, 100.0000, 0.1640, 26.0000, 35.0000, 280, 500.00, 500, 1, '2024-06-12 14:55:07', '2024-06-13 12:51:47', NULL),
(66, 4, 2, 1, '15', '20X33-320', 1, 4810, 13.6300, 100.0000, 0.1400, 20.0000, 33.0000, 320, 600.00, 500, 1, '2024-06-12 14:55:46', '2024-06-12 14:55:46', NULL),
(67, 4, 2, 1, '16', '22X34-280', 1, 4810, 13.5100, 100.0000, 0.1400, 22.0000, 34.0000, 280, 1100.00, 1000, 1, '2024-06-12 14:56:35', '2024-06-12 14:56:35', NULL),
(68, 15, 5, NULL, 'Rtdr-008', 'Retarder OC', 5, 4819, NULL, 1.0000, 5.0000, NULL, NULL, NULL, 1.00, 1, NULL, '2024-06-12 14:57:53', '2024-06-12 14:57:53', NULL),
(69, 6, 2, 2, '17', '26X21.5-320', 1, 4810, 11.5400, 100.0000, 0.1200, 26.0000, 21.5000, 320, 3800.00, 500, 1, '2024-06-12 14:57:53', '2024-06-12 14:57:53', NULL),
(70, 6, 2, 2, '18', '21X36-330', 1, 4810, 16.1000, 100.0000, 0.1600, 21.0000, 36.0000, 330, 1900.00, 1000, 1, '2024-06-12 14:58:21', '2024-06-12 14:58:21', NULL),
(71, 6, 2, 2, '19', '24X30-330', 1, 4810, 15.3300, 100.0000, 0.1500, 24.0000, 30.0000, 330, 2500.00, 500, 1, '2024-06-12 14:59:01', '2024-06-12 14:59:01', NULL),
(72, 6, 2, 2, '20', '23X34-340', 1, 4810, 17.1500, 100.0000, 0.1700, 23.0000, 34.0000, 340, 600.00, 1000, 1, '2024-06-12 14:59:43', '2024-06-12 14:59:43', NULL),
(73, 6, 2, 2, '21', '23.25X30-340', 1, 4810, 15.3000, 100.0000, 0.1500, 23.2500, 30.0000, 340, 1700.00, 1000, 1, '2024-06-12 15:00:14', '2024-06-12 15:00:14', NULL),
(74, 6, 2, 2, '22', '23X36-320', 1, 4810, 17.0900, 100.0000, 0.1700, 23.0000, 36.0000, 320, 2400.00, 1000, 1, '2024-06-12 15:00:48', '2024-06-12 15:00:48', NULL),
(75, 6, 2, 2, '23', '24.75X41.5-320', 1, 4810, 21.2100, 100.0000, 0.2100, 24.7500, 41.5000, 320, 1200.00, 1000, 1, '2024-06-12 15:01:22', '2024-06-12 15:01:22', NULL),
(76, 4, 2, 2, '16', '20X38-320', 1, 4810, 15.6900, 100.0000, 0.1600, 20.0000, 38.0000, 320, 500.00, 500, 1, '2024-06-12 15:30:52', '2024-06-12 15:30:52', NULL),
(77, 6, 2, 2, '17', '25.3X38-320', 1, 4810, 19.8500, 100.0000, 0.2000, 25.3000, 38.0000, 320, 700.00, 500, 1, '2024-06-12 15:31:26', '2024-06-12 15:31:26', NULL),
(78, 6, 2, 2, '18', '32X23-340', 1, 4810, 16.1400, 100.0000, 0.1600, 32.0000, 23.0000, 340, 3664.00, 500, 1, '2024-06-12 15:31:58', '2024-06-12 15:31:58', NULL),
(79, 4, 2, 1, '19', '31.5X41.5-340', 1, 4810, 28.6800, 100.0000, 0.2870, 31.5000, 41.5000, 340, 200.00, 100, 1, '2024-06-12 15:32:30', '2024-06-13 12:50:32', NULL),
(80, 16, 3, NULL, '032 Red', 'Pantone 032 Red', 10, 4819, NULL, 1.0000, 1.0000, NULL, NULL, NULL, 1.00, 1, NULL, '2024-06-12 17:57:59', '2024-06-12 17:57:59', NULL),
(81, 20, 1, NULL, 'BUK-009', 'Bucket', 15, 0, NULL, 1.0000, 1.0000, NULL, NULL, NULL, 5.00, 1, NULL, '2024-06-12 18:12:55', '2024-06-12 18:17:35', NULL),
(82, 3, 3, 1, 'B-101', '25X36-320', 2, 4810, 18.5800, 100.0000, 0.1860, 25.0000, 36.0000, 320, NULL, NULL, 1, '2024-06-13 11:59:24', '2024-06-13 12:48:17', NULL),
(83, 3, 2, 2, '20', '26X34-320', 2, 4810, 18.2500, 100.0000, 0.1830, 26.0000, 34.0000, 320, NULL, 1000, 1, '2024-06-13 11:59:36', '2024-06-13 12:50:18', NULL),
(84, 15, 3, NULL, 'SP-010', 'Spray Powder Huber', 5, 4819, NULL, 1.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-13 12:28:20', '2024-06-13 12:28:20', NULL),
(85, 17, 3, NULL, 'ALL-011', 'Allstick Fevicol', 7, 4819, NULL, 1.0000, 5.0000, NULL, NULL, NULL, 0.00, NULL, NULL, '2024-06-13 12:30:49', '2024-06-13 13:52:14', NULL),
(86, 15, 5, NULL, 'TH-012', 'Thinner Commercial', 5, 4819, NULL, 1.0000, 5.0000, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-13 12:31:43', '2024-06-13 12:31:43', NULL),
(87, 21, 6, NULL, 'KRIS-013', 'Kris Matrix Groove', 16, 4819, NULL, 1.0000, 50.0000, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-13 12:37:05', '2024-06-13 12:37:05', NULL),
(88, 17, 1, NULL, 'Fevi-113', 'Feviquick', 7, 4819, NULL, 1.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-13 14:03:34', '2024-06-13 14:03:34', NULL),
(89, 17, 1, NULL, 'Fevib-114', 'Fevibond', 7, 4819, NULL, 1.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-13 14:04:12', '2024-06-13 14:04:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `start_series` int(11) DEFAULT NULL,
  `only_paper` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(14, 'White Back', NULL, 0, '2024-06-09 10:30:20', '2024-06-09 10:30:20'),
(15, 'Chemicals', NULL, 0, '2024-06-10 15:31:43', '2024-06-10 15:31:43'),
(16, 'Inks', NULL, 0, '2024-06-10 15:31:49', '2024-06-10 15:31:49'),
(17, 'Adhesives', NULL, 0, '2024-06-10 19:37:12', '2024-06-10 19:37:12'),
(18, 'Corrugation', NULL, 0, '2024-06-11 10:17:50', '2024-06-11 10:17:50'),
(19, 'Chromo Paper', NULL, 0, '2024-06-11 19:19:57', '2024-06-11 19:19:57'),
(20, 'Scrap', NULL, 0, '2024-06-12 18:06:35', '2024-06-12 18:06:35'),
(21, 'Other', NULL, 0, '2024-06-13 12:34:03', '2024-06-13 12:34:03');

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
  `po_remarks` text,
  `status_id` int(11) NOT NULL DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `client_id`, `po_no`, `po_date`, `made_by`, `designer`, `po_remarks`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 'PO/24-25/000004950', '2024-06-10', 7, 10, 'Repeat', 6, '2024-06-10 18:20:30', '2024-06-10 18:23:40', NULL),
(2, 12, '4501061796', '2024-06-10', 7, 10, 'Repeat', 6, '2024-06-10 18:41:39', '2024-06-10 19:15:35', NULL),
(3, 13, '4501061855', '2024-06-10', 8, 10, 'Repeat', 6, '2024-06-10 18:59:16', '2024-06-10 19:16:00', NULL),
(4, 14, '7600022749', '2024-06-10', 7, 10, 'Repeat', 6, '2024-06-10 19:16:10', '2024-06-10 19:22:40', NULL),
(5, 15, 'PO/24-25/000005113', '2024-06-10', 7, 3, 'New', 2, '2024-06-11 12:49:53', '2024-06-11 12:49:53', NULL),
(6, 15, 'PO/24-25/000005113', '2024-06-11', 7, 10, NULL, 6, '2024-06-11 13:02:00', '2024-06-12 11:27:39', NULL),
(7, 10, 'PO/24-25/000005114', '2024-06-10', 7, 10, 'New', 6, '2024-06-11 15:24:21', '2024-06-11 17:53:52', NULL),
(8, 15, 'PO/24-25/000005179', '2024-06-11', 10, 10, 'new - urgent', 6, '2024-06-11 17:48:01', '2024-06-12 11:27:36', NULL),
(9, 13, '4501062413', '2024-06-11', 7, 10, 'repeat - 300 nos in stock', 6, '2024-06-11 19:04:01', '2024-06-12 11:27:34', NULL),
(10, 2, 'PMPO0064', '2024-06-11', 7, 10, 'New', 6, '2024-06-11 19:21:21', '2024-06-12 11:27:31', NULL),
(11, 12, '4501062143', '2024-06-11', 7, 10, 'Repeat', 6, '2024-06-11 19:39:16', '2024-06-12 11:27:29', NULL),
(12, 13, '4501062192', '2024-06-11', 7, 3, NULL, 2, '2024-06-11 19:44:39', '2024-06-11 19:44:39', NULL),
(13, 13, '4501062192', '2024-06-11', 10, 10, NULL, 6, '2024-06-11 19:44:55', '2024-06-12 18:33:45', NULL),
(14, 16, 'PO/24-25/000005115', '2024-06-10', 7, 10, 'New', 6, '2024-06-11 19:54:17', '2024-06-12 11:27:25', NULL),
(15, 1, 'PMPO0242', '2024-06-08', 7, 10, 'Repeat', 2, '2024-06-12 11:48:32', '2024-06-12 15:18:55', NULL),
(16, 1, 'PMPO0245', '2024-06-08', 7, 10, 'New', 6, '2024-06-12 12:11:33', '2024-06-12 15:35:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `id` int(11) NOT NULL,
  `purchase_order_id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `dye_details_id` int(11) DEFAULT NULL,
  `carton_name` varchar(255) DEFAULT NULL,
  `carton_size` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `gst` decimal(10,2) NOT NULL DEFAULT '18.00',
  `coating_type_id` int(11) NOT NULL,
  `other_coating_type_id` int(11) DEFAULT NULL,
  `embossing_leafing` int(11) NOT NULL DEFAULT '0' COMMENT 'none=0\r\nembossing=1\r\nleafing=2\r\nboth=3',
  `paper_type_id` int(11) NOT NULL,
  `art_work` varchar(255) DEFAULT NULL,
  `gsm` int(11) DEFAULT NULL,
  `remarks` text,
  `delivery_date` date DEFAULT NULL,
  `bill_no` varchar(255) DEFAULT NULL,
  `lock_status` tinyint(1) NOT NULL DEFAULT '0',
  `quantity_status` int(11) NOT NULL DEFAULT '0',
  `rate_status` int(11) NOT NULL DEFAULT '0',
  `back_print` tinyint(1) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order_items`
--

INSERT INTO `purchase_order_items` (`id`, `purchase_order_id`, `product_id`, `dye_details_id`, `carton_name`, `carton_size`, `quantity`, `rate`, `gst`, `coating_type_id`, `other_coating_type_id`, `embossing_leafing`, `paper_type_id`, `art_work`, `gsm`, `remarks`, `delivery_date`, `bill_no`, `lock_status`, `quantity_status`, `rate_status`, `back_print`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 470, 'Outer Carton Vidadeb-50 M Forte', '160X131X168', 682, 7.20, 18.00, 6, 1, 1, 3, 'PMSEC003D9015', 300, 'CMYK plus 2 Pantones', NULL, NULL, 0, 1, 1, 0, 13, '2024-06-10 18:20:30', '2024-06-10 19:50:31', NULL),
(2, 1, NULL, 471, 'Inner Carton Vidadeb-50M Forte', '127X15X164', 9555, 2.15, 18.00, 6, 1, 1, 3, 'PMSEC003D9014', 280, NULL, NULL, NULL, 0, 1, 1, 0, 13, '2024-06-10 18:20:30', '2024-06-10 19:50:28', NULL),
(3, 1, NULL, 472, 'Adivit CZ', '165X95X108', 2617, 4.60, 18.00, 6, 1, 1, 3, 'PMSEC003D4562R1', 300, NULL, NULL, NULL, 0, 1, 1, 0, 13, '2024-06-10 18:20:30', '2024-06-10 19:50:24', NULL),
(4, 2, NULL, 473, 'AMPLUS-LB', '170X65X98', 2000, 4.40, 18.00, 3, 1, 0, 3, '20220268', 330, NULL, NULL, NULL, 0, 1, 1, 0, 12, '2024-06-10 18:41:39', '2024-06-12 12:43:27', NULL),
(5, 3, NULL, 426, 'Nulax- Plus 170ml', '54X54X130', 9592, 2.90, 18.00, 6, 1, 1, 3, '20214856', 330, NULL, NULL, NULL, 0, 1, 1, 0, 12, '2024-06-10 18:59:16', '2024-06-12 16:08:02', NULL),
(6, 4, NULL, 474, 'corpogest 400', '100X38X62', 3448, 2.60, 18.00, 4, 1, 0, 1, '20193806', 330, NULL, NULL, NULL, 0, 1, 1, 0, 12, '2024-06-10 19:16:10', '2024-06-12 16:07:46', NULL),
(7, 6, NULL, NULL, 'Carton Sugrcure 40/500', '82X80X80', 20500, 3.40, 18.00, 6, 1, 0, 3, 'PMSPCWI12408-D0R0', 330, 'new dye -- 18X26-4ups', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 13:02:00', '2024-06-11 14:48:34', NULL),
(8, 6, NULL, 475, 'Carton Adipostat-CV 20 inner', '78X15X123', 10500, 1.35, 18.00, 4, 1, 0, 3, 'PMSPCWI12663-D0R0', 300, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 14:12:45', '2024-06-11 14:48:34', NULL),
(9, 6, NULL, 476, 'Carton Adipostat-CV 20 outer', '165X83X128', 2200, 5.70, 18.00, 4, 1, 0, 3, 'PMSPCWI12664-D0R0', 320, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 14:26:02', '2024-06-11 14:48:34', NULL),
(10, 6, NULL, 477, 'Carton Sonacin 5 inner', '45X15X105', 10500, 1.30, 18.00, 3, 1, 1, 3, 'PMSPCWI12685-D0R0', 320, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 14:26:02', '2024-06-11 14:48:34', NULL),
(11, 6, NULL, 478, 'Carton Sonacin 5 Outer', '165X50X110', 2200, 5.40, 18.00, 3, 1, 0, 3, 'PMSPCWI12686-D0R0', 320, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 14:26:02', '2024-06-11 14:48:34', NULL),
(12, 6, NULL, 479, 'Carton Pregarax D 50', '76X78X121', 2200, 4.90, 18.00, 6, 1, 0, 1, 'PMSPCWI12623-D0R0', 320, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 14:31:28', '2024-06-11 14:48:34', NULL),
(13, 6, NULL, 479, 'Carton Acmerose - CV 10', '76X78X121', 2200, 4.50, 18.00, 4, 1, 0, 3, 'PMSPCWI12693-D0R0', 320, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 14:31:28', '2024-06-11 14:48:34', NULL),
(14, 6, NULL, NULL, 'Carton MK DAPA M 10_500', '121X72X76', 2200, 4.35, 18.00, 3, 1, 0, 1, 'PMSPCWI12567-D0R0', 320, 'new dye - 13.75X15.75 - 2ups -- dominant machine', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 14:33:56', '2024-06-11 14:48:34', NULL),
(15, 6, NULL, 480, 'Carton Montnico - LC outer', '165X95X110', 2200, 8.10, 18.00, 6, 1, 1, 3, 'PMSPCWI12713-D0R0', 350, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 14:47:49', '2024-06-11 14:48:34', NULL),
(16, 6, NULL, 477, 'Carton montnico - LC inner', '45X15X105', 20500, 1.15, 18.00, 6, 1, 1, 3, 'PMSPCWI12714-D0R0', 320, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 14:47:49', '2024-06-11 14:48:34', NULL),
(17, 6, NULL, NULL, 'Carton Feroot', '62X54X98', 2200, 3.70, 18.00, 3, 1, 0, 1, 'PMSPCWI12702-D0R0', 320, '15.75X19 - 4ups -- New Die', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 14:47:49', '2024-06-11 14:48:34', NULL),
(18, 7, NULL, NULL, 'CARTON LINAFIC - 5', '44X46X102', 2200, 3.30, 18.00, 6, 1, 0, 3, 'PMSPCWI12403-D0R0', 330, '15.75X20.75-6ups - new dye', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 15:24:21', '2024-06-11 17:53:51', NULL),
(19, 7, NULL, NULL, 'Carton Trizidine', '50X32X73', 2200, 3.45, 18.00, 3, 1, 1, 1, 'PMSPCWI12674-D0R0', 330, '13.75X15.75 - 6 ups new dye - Dominant', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 15:24:21', '2024-06-11 17:53:51', NULL),
(20, 7, NULL, NULL, 'carton Rabcia DSR', '147X65X140', 2200, 6.90, 18.00, 6, 1, 1, 1, 'PMSPCWI12690-D0R0', 320, '11x17.5 - 1 ups new dye', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 15:24:21', '2024-06-11 17:53:51', NULL),
(21, 7, NULL, 479, 'Carton Rabcia L', '76X78X121', 2200, 4.50, 18.00, 6, 1, 1, 1, 'PMSPCWI12691-D0R0', 320, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 15:24:21', '2024-06-11 17:53:51', NULL),
(22, 7, NULL, NULL, 'Carton Rabcia 40 DSR', '70X65X240', 2200, 7.15, 18.00, 6, 1, 1, 1, 'PMSPCWI12692-D0R0', 320, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 15:44:03', '2024-06-11 17:53:51', NULL),
(23, 7, NULL, 79, 'Carton Sucrader-O- Suspension 200ml', '60X60X160', 2200, 5.10, 18.00, 6, 1, 1, 3, 'PMSPCWI12683-D0R0', 330, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 15:44:03', '2024-06-11 17:53:51', NULL),
(24, 7, NULL, NULL, 'Carton Vertick - 16', '64X45X94', 2200, 4.30, 18.00, 4, 1, 1, 3, 'PMSPCWI12694-D0R0', 350, '19x20-6ups new die - matt varnish', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 15:44:03', '2024-06-11 17:53:51', NULL),
(25, 7, NULL, NULL, 'Carton Vertirick 8', '64X45X94', 2200, 4.30, 18.00, 4, 1, 1, 3, 'PMSPCWI12695-D0R0', 350, '19x20-6ups new die - matt varnish', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 15:53:59', '2024-06-11 17:53:51', NULL),
(26, 7, NULL, NULL, 'Carton Ursoned 300', '75X60X70', 2200, 3.50, 18.00, 3, 1, 0, 1, 'PMSPCWI12698-D0R0', 320, '12x23-4ups - new dye', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 15:53:59', '2024-06-11 17:53:51', NULL),
(27, 7, NULL, NULL, 'Carton elvitex-AL sachet', '75X54X93', 2200, 4.20, 18.00, 6, 1, 0, 1, 'PMSPCWI12637-D0R0', 330, '12.75X23-4ups new dye', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 16:46:21', '2024-06-11 17:53:51', NULL),
(28, 7, NULL, NULL, 'Carton Pantarick 40', '110X95X70', 2200, 6.40, 18.00, 4, 1, 1, 3, 'PMSPCWI12705-D0R0', 350, '17X24-3ups new dye', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 16:46:21', '2024-06-11 17:53:52', NULL),
(29, 7, NULL, 476, 'Carton Rabijet - LS outer', '165X83X128', 2200, 6.50, 18.00, 3, 1, 1, 1, 'PMSPCWI12653-D0R0', 300, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 16:46:21', '2024-06-11 17:53:52', NULL),
(30, 7, NULL, 475, 'Carton Rabijet - LS inner', '78X15X123', 20500, 1.45, 18.00, 3, 1, 1, 1, 'PMSPCWI12652-D0R0', 300, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 16:46:21', '2024-06-11 17:53:52', NULL),
(31, 7, NULL, NULL, 'Carton Minokem 2.5', '54X24X120', 17000, 1.65, 18.00, 6, 1, 1, 1, 'PMSPCWI12701-D0R0', 350, '19X20-9ups -- new dye Pantone colors', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 16:46:21', '2024-06-11 17:53:52', NULL),
(32, 7, NULL, NULL, 'Minokem 1.25', '44X17X102', 35000, 1.05, 18.00, 6, 1, 1, 1, 'PMSPCWI12700-D0R0', 350, 'new die - 16X23-12ups', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 16:46:21', '2024-06-11 17:53:52', NULL),
(33, 7, NULL, NULL, 'Carton feroot Tablets', '62X54X98', 2200, 3.70, 18.00, 3, 1, 0, 1, 'PMSPCWI12702', 320, '19X23-6ups new dye', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 17:24:08', '2024-06-11 17:53:52', NULL),
(34, 7, NULL, NULL, 'Carton Mytiga 20', '62X54X98', 2200, 4.45, 18.00, 3, 1, 1, 3, 'PMSPCWI12708-D0R0', 320, 'new dye - 19X23-6ups', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 17:24:08', '2024-06-11 17:53:52', NULL),
(35, 7, NULL, NULL, 'Carton Siaglip-M 100/1000', '158X93X88', 2200, 6.50, 18.00, 6, 1, 1, 3, 'PMSPCWI127065-D0R0', 320, 'new dye -- 15.75X20.75-2ups', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 17:24:08', '2024-06-11 17:53:52', NULL),
(36, 8, NULL, 481, 'Carton LOBG Sale', '45X50X105', 40000, 1.65, 18.00, 4, 1, 0, 1, 'PMSPCWI12732-D0R0', 320, '16X23 - 6 ups new dye for cylinder - 1 mm', NULL, NULL, 0, 1, 1, 0, 12, '2024-06-11 17:48:01', '2024-06-12 10:57:11', NULL),
(37, 9, NULL, 473, 'Carton Oosure Plus', '170X65X98', 1000, 4.70, 18.00, 3, 1, 0, 3, '20218172', 300, NULL, NULL, NULL, 0, 1, 1, 0, 12, '2024-06-11 19:04:01', '2024-06-12 18:32:03', NULL),
(38, 10, NULL, NULL, 'Carton Albendazole Susp 10ml', '32X29X65', 100500, 0.40, 18.00, 4, 1, 0, 13, 'VR00754', 280, 'new dye 19X26-20ups - pantone 3 col', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 19:21:21', '2024-06-12 11:16:32', NULL),
(39, 10, NULL, NULL, 'Label Albendazole Susp 10ml', '64X30', 103000, 0.06, 18.00, 4, 1, 0, 19, 'VR00945', 70, 'Pantone 3 col', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 19:30:19', '2024-06-12 11:16:32', NULL),
(40, 11, NULL, 418, 'Carton Wilcef-S 375 mg Inj', '50X30X70', 9400, 1.30, 18.00, 3, 1, 3, 1, '20215187', 330, NULL, NULL, NULL, 0, 1, 1, 0, 12, '2024-06-11 19:39:16', '2024-06-12 18:32:10', NULL),
(41, 13, NULL, 482, 'Carton Rozuxa ASP', '147X90X95', 2000, 5.55, 18.00, 3, 1, 0, 1, '20185258', 330, NULL, NULL, NULL, 0, 1, 1, 0, 12, '2024-06-11 19:44:55', '2024-06-12 18:34:02', NULL),
(42, 14, NULL, NULL, 'Carton Melocure - 5 PS', '52X17X80', 10500, 1.25, 18.00, 6, 1, 1, 3, 'PMSPCWI12707-D0R0', 320, 'CMYK plus Pantone - new dye 14X23-12ups', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-11 19:54:17', '2024-06-12 11:15:33', NULL),
(43, 15, NULL, NULL, 'Carton Aceclofenac & Thiocolchicoside Tab', '78X34X56', 3800, 1.70, 18.00, 4, 1, 0, 13, 'PK08416', 296, NULL, NULL, NULL, 0, 0, 0, 0, 2, '2024-06-12 11:48:32', '2024-06-12 12:11:59', NULL),
(44, 16, NULL, NULL, 'Carton Zinc Sulphate 20mg Haryana', '78X34X48', 32500, 0.62, 18.00, 4, 1, 0, 13, 'PK09836', 296, 'new dye 14X22-8ups', NULL, NULL, 0, 1, 1, 0, 11, '2024-06-12 12:11:33', '2024-06-12 15:35:28', NULL),
(45, 16, NULL, NULL, 'Carton Folic Acid 5mg Haryana', '78X30X71', 55800, 0.50, 18.00, 4, 1, 0, 13, 'PK09840', 296, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-12 12:11:33', '2024-06-12 15:35:28', NULL),
(46, 16, NULL, NULL, 'Carton Folic Acid 5mg Gujrat', '78X30X71', 22800, 0.50, 18.00, 4, 1, 0, 13, 'PK09842', 296, NULL, NULL, NULL, 0, 1, 1, 0, 11, '2024-06-12 12:11:33', '2024-06-12 15:35:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requisitions`
--

CREATE TABLE `requisitions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requisitions`
--

INSERT INTO `requisitions` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Printing', '2024-06-09 21:04:34', '2024-06-09 21:04:34', NULL),
(2, 'Office', '2024-06-09 21:10:20', '2024-06-09 21:10:20', NULL),
(3, 'SM74', '2024-06-12 14:53:13', '2024-06-12 14:53:13', NULL),
(4, 'MOV 6 Color', '2024-06-12 17:34:07', '2024-06-12 17:34:07', NULL),
(5, 'Pasting Lock', '2024-06-12 17:34:20', '2024-06-12 17:34:20', NULL),
(6, 'Pasting Side', '2024-06-12 17:34:28', '2024-06-12 17:34:28', NULL),
(7, 'Cylinder 2', '2024-06-12 17:35:01', '2024-06-12 17:35:01', NULL),
(8, 'Cylinder 1', '2024-06-12 17:35:09', '2024-06-12 17:35:09', NULL),
(9, 'Paper Cutting Machine', '2024-06-12 17:35:38', '2024-06-12 17:35:38', NULL),
(10, 'Dominant 4 color', '2024-06-12 17:35:50', '2024-06-12 17:35:50', NULL),
(11, 'Dominant 2 Color', '2024-06-12 17:36:03', '2024-06-12 17:36:03', NULL),
(12, 'SORMZ 2 Color', '2024-06-12 17:40:06', '2024-06-12 17:40:06', NULL),
(13, 'Manual Die', '2024-06-13 13:50:59', '2024-06-13 13:50:59', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(17, 'Dye Breaking', NULL, '2024-05-24 18:19:55', '2024-05-24 18:19:55'),
(18, 'Store', NULL, '2024-06-10 14:32:17', '2024-06-10 14:32:17'),
(19, 'Gate Keeper', NULL, '2024-06-10 14:46:10', '2024-06-10 14:46:10'),
(20, 'Dispatch', NULL, '2024-06-10 15:20:00', '2024-06-10 15:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_key` varchar(255) NOT NULL
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
(2, 'add_carton'),
(2, 'add_chemical_coating'),
(2, 'add_client'),
(2, 'add_cutting'),
(2, 'add_designing'),
(2, 'add_die_cutting'),
(2, 'add_dye_breaking'),
(2, 'add_dye_cutting'),
(2, 'add_dye_details'),
(2, 'add_embossing'),
(2, 'add_issue'),
(2, 'add_job_card'),
(2, 'add_lamination'),
(2, 'add_leafing'),
(2, 'add_material_inward'),
(2, 'add_material_order'),
(2, 'add_media'),
(2, 'add_module_user'),
(2, 'add_paper_inward'),
(2, 'add_paper_warehouse'),
(2, 'add_pasting'),
(2, 'add_planning'),
(2, 'add_printing'),
(2, 'add_product'),
(2, 'add_product_type'),
(2, 'add_purchase_order'),
(2, 'add_requisition'),
(2, 'add_site_setting'),
(2, 'add_spot_uv'),
(2, 'add_unit'),
(2, 'add_vendor'),
(2, 'add_warehouse'),
(2, 'browse_admin'),
(2, 'browse_billing'),
(2, 'browse_carton'),
(2, 'browse_chemical_coating'),
(2, 'browse_client'),
(2, 'browse_cutting'),
(2, 'browse_dashboard'),
(2, 'browse_designing'),
(2, 'browse_die_cutting'),
(2, 'browse_dye_breaking'),
(2, 'browse_dye_cutting'),
(2, 'browse_dye_details'),
(2, 'browse_embossing'),
(2, 'browse_issue'),
(2, 'browse_job_card'),
(2, 'browse_lamination'),
(2, 'browse_leafing'),
(2, 'browse_material_inward'),
(2, 'browse_material_order'),
(2, 'browse_media'),
(2, 'browse_module_user'),
(2, 'browse_paper_inward'),
(2, 'browse_paper_warehouse'),
(2, 'browse_pasting'),
(2, 'browse_planning'),
(2, 'browse_printing'),
(2, 'browse_product'),
(2, 'browse_product_type'),
(2, 'browse_purchase_order'),
(2, 'browse_requisition'),
(2, 'browse_setting'),
(2, 'browse_site_setting'),
(2, 'browse_spot_uv'),
(2, 'browse_unit'),
(2, 'browse_vendor'),
(2, 'browse_warehouse'),
(2, 'change_status'),
(2, 'change_status_billing'),
(2, 'change_status_chemical_coating'),
(2, 'change_status_cutting'),
(2, 'change_status_dye_breaking'),
(2, 'change_status_dye_cutting'),
(2, 'change_status_embossing'),
(2, 'change_status_job_card'),
(2, 'change_status_lamination'),
(2, 'change_status_leafing'),
(2, 'change_status_material_order'),
(2, 'change_status_pasting'),
(2, 'change_status_printing'),
(2, 'change_status_spot_uv'),
(2, 'check_material_order'),
(2, 'delete_admin'),
(2, 'delete_billing'),
(2, 'delete_chemical_coating'),
(2, 'delete_cutting'),
(2, 'delete_designing'),
(2, 'delete_die_cutting'),
(2, 'delete_dye_breaking'),
(2, 'delete_dye_cutting'),
(2, 'delete_dye_details'),
(2, 'delete_embossing'),
(2, 'delete_issue'),
(2, 'delete_job_card'),
(2, 'delete_lamination'),
(2, 'delete_leafing'),
(2, 'delete_material_order'),
(2, 'delete_media'),
(2, 'delete_module_user'),
(2, 'delete_paper_inward'),
(2, 'delete_paper_warehouse'),
(2, 'delete_pasting'),
(2, 'delete_planning'),
(2, 'delete_printing'),
(2, 'delete_product_type'),
(2, 'delete_purchase_order'),
(2, 'delete_requisition'),
(2, 'delete_spot_uv'),
(2, 'delete_warehouse'),
(2, 'designer_purchase_order'),
(2, 'edit_admin'),
(2, 'edit_billing'),
(2, 'edit_carton'),
(2, 'edit_chemical_coating'),
(2, 'edit_client'),
(2, 'edit_cutting'),
(2, 'edit_designing'),
(2, 'edit_die_cutting'),
(2, 'edit_dye_breaking'),
(2, 'edit_dye_cutting'),
(2, 'edit_dye_details'),
(2, 'edit_embossing'),
(2, 'edit_issue'),
(2, 'edit_job_card'),
(2, 'edit_lamination'),
(2, 'edit_leafing'),
(2, 'edit_material_inward'),
(2, 'edit_material_order'),
(2, 'edit_media'),
(2, 'edit_module_user'),
(2, 'edit_paper_inward'),
(2, 'edit_paper_warehouse'),
(2, 'edit_pasting'),
(2, 'edit_planning'),
(2, 'edit_printing'),
(2, 'edit_product'),
(2, 'edit_product_type'),
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
(2, 'read_carton'),
(2, 'read_chemical_coating'),
(2, 'read_client'),
(2, 'read_cutting'),
(2, 'read_designing'),
(2, 'read_die_cutting'),
(2, 'read_dye_breaking'),
(2, 'read_dye_cutting'),
(2, 'read_dye_details'),
(2, 'read_embossing'),
(2, 'read_issue'),
(2, 'read_job_card'),
(2, 'read_lamination'),
(2, 'read_leafing'),
(2, 'read_material_inward'),
(2, 'read_material_order'),
(2, 'read_media'),
(2, 'read_module_user'),
(2, 'read_paper_inward'),
(2, 'read_paper_warehouse'),
(2, 'read_pasting'),
(2, 'read_planning'),
(2, 'read_printing'),
(2, 'read_product'),
(2, 'read_product_type'),
(2, 'read_purchase_order'),
(2, 'read_requisition'),
(2, 'read_site_setting'),
(2, 'read_spot_uv'),
(2, 'read_unit'),
(2, 'read_vendor'),
(2, 'read_warehouse'),
(2, 'user_chemical_coating'),
(2, 'user_dye_cutting'),
(2, 'user_job_card'),
(2, 'user_pasting'),
(2, 'user_printing'),
(3, 'add_carton'),
(3, 'add_client'),
(3, 'add_designing'),
(3, 'add_dye_breaking'),
(3, 'add_dye_details'),
(3, 'add_issue'),
(3, 'add_material_inward'),
(3, 'add_material_order'),
(3, 'add_media'),
(3, 'add_module_user'),
(3, 'add_paper_inward'),
(3, 'add_paper_warehouse'),
(3, 'add_planning'),
(3, 'add_product'),
(3, 'add_product_type'),
(3, 'add_purchase_order'),
(3, 'add_requisition'),
(3, 'add_unit'),
(3, 'add_vendor'),
(3, 'add_warehouse'),
(3, 'browse_billing'),
(3, 'browse_carton'),
(3, 'browse_chemical_coating'),
(3, 'browse_client'),
(3, 'browse_cutting'),
(3, 'browse_dashboard'),
(3, 'browse_designing'),
(3, 'browse_die_cutting'),
(3, 'browse_dye_breaking'),
(3, 'browse_dye_cutting'),
(3, 'browse_dye_details'),
(3, 'browse_embossing'),
(3, 'browse_issue'),
(3, 'browse_job_card'),
(3, 'browse_lamination'),
(3, 'browse_leafing'),
(3, 'browse_material_inward'),
(3, 'browse_material_order'),
(3, 'browse_media'),
(3, 'browse_module_user'),
(3, 'browse_paper_inward'),
(3, 'browse_paper_warehouse'),
(3, 'browse_pasting'),
(3, 'browse_planning'),
(3, 'browse_printing'),
(3, 'browse_product'),
(3, 'browse_product_type'),
(3, 'browse_purchase_order'),
(3, 'browse_requisition'),
(3, 'browse_spot_uv'),
(3, 'browse_unit'),
(3, 'browse_vendor'),
(3, 'browse_warehouse'),
(3, 'change_status_billing'),
(3, 'change_status_chemical_coating'),
(3, 'change_status_cutting'),
(3, 'change_status_dye_breaking'),
(3, 'change_status_dye_cutting'),
(3, 'change_status_embossing'),
(3, 'change_status_job_card'),
(3, 'change_status_lamination'),
(3, 'change_status_leafing'),
(3, 'change_status_material_order'),
(3, 'change_status_pasting'),
(3, 'change_status_printing'),
(3, 'change_status_spot_uv'),
(3, 'check_material_order'),
(3, 'delete_designing'),
(3, 'delete_dye_details'),
(3, 'delete_module_user'),
(3, 'delete_planning'),
(3, 'delete_purchase_order'),
(3, 'designer_purchase_order'),
(3, 'edit_billing'),
(3, 'edit_carton'),
(3, 'edit_chemical_coating'),
(3, 'edit_client'),
(3, 'edit_cutting'),
(3, 'edit_designing'),
(3, 'edit_die_cutting'),
(3, 'edit_dye_breaking'),
(3, 'edit_dye_cutting'),
(3, 'edit_dye_details'),
(3, 'edit_embossing'),
(3, 'edit_issue'),
(3, 'edit_job_card'),
(3, 'edit_lamination'),
(3, 'edit_leafing'),
(3, 'edit_material_inward'),
(3, 'edit_material_order'),
(3, 'edit_media'),
(3, 'edit_module_user'),
(3, 'edit_paper_inward'),
(3, 'edit_paper_warehouse'),
(3, 'edit_pasting'),
(3, 'edit_planning'),
(3, 'edit_printing'),
(3, 'edit_product'),
(3, 'edit_product_type'),
(3, 'edit_purchase_order'),
(3, 'edit_requisition'),
(3, 'edit_spot_uv'),
(3, 'edit_unit'),
(3, 'edit_vendor'),
(3, 'edit_warehouse'),
(3, 'ledger_product'),
(3, 'quantity_purchase_order'),
(3, 'rate_purchase_order'),
(3, 'read_billing'),
(3, 'read_carton'),
(3, 'read_chemical_coating'),
(3, 'read_client'),
(3, 'read_cutting'),
(3, 'read_designing'),
(3, 'read_die_cutting'),
(3, 'read_dye_breaking'),
(3, 'read_dye_cutting'),
(3, 'read_dye_details'),
(3, 'read_embossing'),
(3, 'read_issue'),
(3, 'read_job_card'),
(3, 'read_lamination'),
(3, 'read_leafing'),
(3, 'read_material_inward'),
(3, 'read_material_order'),
(3, 'read_media'),
(3, 'read_module_user'),
(3, 'read_paper_inward'),
(3, 'read_paper_warehouse'),
(3, 'read_pasting'),
(3, 'read_planning'),
(3, 'read_printing'),
(3, 'read_product'),
(3, 'read_product_type'),
(3, 'read_purchase_order'),
(3, 'read_requisition'),
(3, 'read_spot_uv'),
(3, 'read_unit'),
(3, 'read_vendor'),
(3, 'read_warehouse'),
(3, 'user_chemical_coating'),
(3, 'user_dye_cutting'),
(3, 'user_job_card'),
(3, 'user_pasting'),
(3, 'user_printing'),
(4, 'add_client'),
(4, 'add_designing'),
(4, 'add_dye_details'),
(4, 'add_job_card'),
(4, 'add_material_order'),
(4, 'add_media'),
(4, 'add_planning'),
(4, 'add_purchase_order'),
(4, 'add_unit'),
(4, 'add_vendor'),
(4, 'browse_client'),
(4, 'browse_dashboard'),
(4, 'browse_designing'),
(4, 'browse_dye_details'),
(4, 'browse_job_card'),
(4, 'browse_material_order'),
(4, 'browse_media'),
(4, 'browse_planning'),
(4, 'browse_purchase_order'),
(4, 'browse_unit'),
(4, 'browse_vendor'),
(4, 'change_status_job_card'),
(4, 'change_status_material_order'),
(4, 'delete_designing'),
(4, 'delete_job_card'),
(4, 'delete_planning'),
(4, 'delete_purchase_order'),
(4, 'designer_purchase_order'),
(4, 'edit_client'),
(4, 'edit_designing'),
(4, 'edit_dye_details'),
(4, 'edit_job_card'),
(4, 'edit_material_order'),
(4, 'edit_media'),
(4, 'edit_planning'),
(4, 'edit_purchase_order'),
(4, 'edit_unit'),
(4, 'edit_vendor'),
(4, 'quantity_purchase_order'),
(4, 'rate_purchase_order'),
(4, 'read_client'),
(4, 'read_designing'),
(4, 'read_dye_details'),
(4, 'read_job_card'),
(4, 'read_material_order'),
(4, 'read_media'),
(4, 'read_planning'),
(4, 'read_purchase_order'),
(4, 'read_unit'),
(4, 'read_vendor'),
(4, 'user_job_card'),
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
(6, 'user_printing'),
(7, 'browse_chemical_coating'),
(7, 'browse_dashboard'),
(7, 'change_status_chemical_coating'),
(7, 'edit_chemical_coating'),
(7, 'read_chemical_coating'),
(7, 'user_chemical_coating'),
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
(12, 'add_embossing'),
(12, 'add_leafing'),
(12, 'browse_dashboard'),
(12, 'browse_dye_cutting'),
(12, 'browse_embossing'),
(12, 'browse_leafing'),
(12, 'change_status_dye_cutting'),
(12, 'change_status_embossing'),
(12, 'change_status_leafing'),
(12, 'edit_dye_cutting'),
(12, 'edit_embossing'),
(12, 'edit_leafing'),
(12, 'read_dye_cutting'),
(12, 'read_embossing'),
(12, 'read_leafing'),
(13, 'add_dye_breaking'),
(13, 'browse_dashboard'),
(13, 'browse_dye_breaking'),
(13, 'browse_pasting'),
(13, 'change_status_dye_breaking'),
(13, 'change_status_pasting'),
(13, 'edit_dye_breaking'),
(13, 'edit_pasting'),
(13, 'read_dye_breaking'),
(13, 'read_pasting'),
(13, 'user_pasting'),
(14, 'add_billing'),
(14, 'browse_billing'),
(14, 'browse_dashboard'),
(14, 'change_status_billing'),
(14, 'edit_billing'),
(14, 'read_billing'),
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
(17, 'read_dye_breaking'),
(18, 'add_category'),
(18, 'add_issue'),
(18, 'add_material_inward'),
(18, 'add_material_order'),
(18, 'add_product'),
(18, 'add_product_type'),
(18, 'add_requisition'),
(18, 'add_unit'),
(18, 'add_vendor'),
(18, 'browse_category'),
(18, 'browse_dashboard'),
(18, 'browse_issue'),
(18, 'browse_material_inward'),
(18, 'browse_material_order'),
(18, 'browse_product'),
(18, 'browse_product_type'),
(18, 'browse_requisition'),
(18, 'browse_unit'),
(18, 'browse_vendor'),
(18, 'edit_category'),
(18, 'edit_issue'),
(18, 'edit_material_inward'),
(18, 'edit_material_order'),
(18, 'edit_product'),
(18, 'edit_product_type'),
(18, 'edit_requisition'),
(18, 'edit_unit'),
(18, 'edit_vendor'),
(18, 'ledger_product'),
(18, 'read_category'),
(18, 'read_issue'),
(18, 'read_material_inward'),
(18, 'read_material_order'),
(18, 'read_product'),
(18, 'read_product_type'),
(18, 'read_requisition'),
(18, 'read_unit'),
(18, 'read_vendor'),
(19, 'browse_dashboard'),
(19, 'browse_material_order'),
(19, 'check_material_order'),
(19, 'edit_material_order'),
(19, 'read_material_order'),
(20, 'add_warehouse'),
(20, 'browse_dashboard'),
(20, 'browse_warehouse'),
(20, 'edit_warehouse'),
(20, 'read_warehouse');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(11) NOT NULL,
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
  `gst` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `title`, `description`, `logo`, `favicon`, `email`, `contact_no`, `country`, `state`, `city`, `address`, `gst`, `created_at`, `updated_at`) VALUES
(1, 'Shreya Offset', 'Partner with an award-winning app development company to take your brick-and-mortar business online and reach a wider audience with powerful mobile and web solutions.', '4', '5', 'purchase@shreyaoffset.com', '+91 7018247476', '0', 'Chandigarh', 'Chandigarh', 'Plot No. 360, Industrial area Phase-1 Chandigarh\r\nPIN : 160002', '03', '2022-06-26 15:46:11', '2024-06-10 12:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `spot_uv`
--

CREATE TABLE `spot_uv` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_card_id` bigint(20) NOT NULL,
  `spot_uv_sheets` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `leafing` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status_badge` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'debit/credit',
  `current_quantity` decimal(10,2) DEFAULT '0.00',
  `new_quantity` decimal(10,2) DEFAULT '0.00',
  `total_quantity` decimal(10,2) DEFAULT '0.00',
  `trancation_by` int(11) DEFAULT NULL,
  `remarks` text,
  `job_card_id` bigint(20) DEFAULT NULL,
  `material_inward_id` bigint(20) DEFAULT NULL,
  `issue_item_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `product_id`, `type`, `current_quantity`, `new_quantity`, `total_quantity`, `trancation_by`, `remarks`, `job_card_id`, `material_inward_id`, `issue_item_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 43, 'Opening Balance', 0.00, 0.00, 0.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-10 15:39:43', '2024-06-10 15:39:43', NULL),
(2, 16, 'Debit', 1200.00, 704.00, 496.00, 8, 'used in job card', 3, NULL, 1, '2024-06-10 18:38:02', '2024-06-10 18:38:02', NULL),
(3, 43, 'Opening Balance', 0.00, 0.00, 0.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-10 18:56:37', '2024-06-10 18:56:37', NULL),
(4, 44, 'Opening Balance', 0.00, 0.00, 0.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-10 19:34:22', '2024-06-10 19:34:22', NULL),
(5, 44, 'Debit', NULL, 1294.00, -1294.00, 8, 'used in job card', 2, NULL, 2, '2024-06-10 19:42:04', '2024-06-10 19:42:04', NULL),
(6, 13, 'Debit', 200.00, 441.00, -241.00, 8, 'used in job card', 1, NULL, 3, '2024-06-10 19:45:13', '2024-06-10 19:45:13', NULL),
(7, 45, 'Opening Balance', 0.00, 0.00, 0.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-10 19:45:17', '2024-06-10 19:45:17', NULL),
(8, 45, 'Opening Balance', 0.00, 0.00, 0.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-10 20:07:15', '2024-06-10 20:07:15', NULL),
(9, 46, 'Opening Balance', 0.00, 0.00, 0.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-11 10:22:17', '2024-06-11 10:22:17', NULL),
(10, 46, 'Opening Balance', 0.00, 0.00, 0.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-11 10:22:26', '2024-06-11 10:22:26', NULL),
(11, 47, 'Opening Balance', 0.00, 0.00, 0.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-11 10:39:10', '2024-06-11 10:39:10', NULL),
(12, 47, 'Debit', 0.00, NULL, 0.00, 9, 'Manual Issued Item', NULL, NULL, 4, '2024-06-11 10:40:03', '2024-06-11 10:40:03', NULL),
(13, 47, 'Debit', -5.00, 4.00, -1.00, 9, 'Product Inward Update', NULL, NULL, 4, '2024-06-11 10:41:43', '2024-06-11 10:41:43', NULL),
(14, 48, 'Opening Balance', 0.00, 0.00, 0.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-11 11:51:24', '2024-06-11 11:51:24', NULL),
(15, 48, 'Credit', 0.00, 11.00, 11.00, 9, 'Product Inward', NULL, 1, NULL, '2024-06-11 11:53:46', '2024-06-11 11:53:46', NULL),
(16, 16, 'Debit', 496.00, 50.00, 446.00, 8, 'used in job card', 3, NULL, 1, '2024-06-11 12:51:17', '2024-06-11 12:51:17', NULL),
(17, 49, 'Opening Balance', 0.00, 0.00, 0.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-11 15:38:00', '2024-06-11 15:38:00', NULL),
(18, 50, 'Opening Balance', 0.00, 0.00, 0.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 11:31:10', '2024-06-12 11:31:10', NULL),
(19, 50, 'Opening Balance', 0.00, 0.00, 0.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 11:31:52', '2024-06-12 11:31:52', NULL),
(20, 1, 'Opening Balance', 0.00, 16400.00, 16400.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 11:33:18', '2024-06-12 11:33:18', NULL),
(21, 2, 'Opening Balance', 0.00, 7800.00, 7800.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 11:34:01', '2024-06-12 11:34:01', NULL),
(22, 3, 'Opening Balance', 0.00, 3400.00, 3400.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 11:34:11', '2024-06-12 11:34:11', NULL),
(23, 50, 'Opening Balance', 0.00, 0.00, 0.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 11:34:30', '2024-06-12 11:34:30', NULL),
(24, 50, 'Opening Balance', 0.00, 0.00, 0.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 11:34:42', '2024-06-12 11:34:42', NULL),
(25, 51, 'Opening Balance', 0.00, 0.00, 0.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 12:48:36', '2024-06-12 12:48:36', NULL),
(26, 52, 'Opening Balance', 0.00, 164.00, 164.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 13:59:49', '2024-06-12 13:59:49', NULL),
(27, 52, 'Opening Balance', 0.00, 0.00, 0.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:00:24', '2024-06-12 14:00:24', NULL),
(28, 53, 'Opening Balance', 0.00, 16400.00, 16400.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:05:03', '2024-06-12 14:05:03', NULL),
(29, 54, 'Opening Balance', 0.00, 7800.00, 7800.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:06:00', '2024-06-12 14:06:00', NULL),
(30, 55, 'Opening Balance', 0.00, 1000.00, 1000.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:06:39', '2024-06-12 14:06:39', NULL),
(31, 53, 'Opening Balance', 0.00, NULL, NULL, 1, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:06:54', '2024-06-12 14:06:54', NULL),
(32, 54, 'Opening Balance', 0.00, NULL, NULL, 1, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:07:20', '2024-06-12 14:07:20', NULL),
(33, 55, 'Opening Balance', 0.00, 1000.00, 1000.00, 1, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:09:58', '2024-06-12 14:09:58', NULL),
(34, 56, 'Opening Balance', 0.00, 4200.00, 4200.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:13:38', '2024-06-12 14:13:38', NULL),
(35, 57, 'Opening Balance', 0.00, 14900.00, 14900.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:14:19', '2024-06-12 14:14:19', NULL),
(36, 58, 'Opening Balance', 0.00, 102700.00, 102700.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:37:59', '2024-06-12 14:37:59', NULL),
(37, 59, 'Opening Balance', 0.00, 2250.00, 2250.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:39:20', '2024-06-12 14:39:20', NULL),
(38, 60, 'Opening Balance', 0.00, 28.00, 28.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-12 14:49:16', '2024-06-12 14:49:16', NULL),
(39, 61, 'Opening Balance', 0.00, 600.00, 600.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:52:33', '2024-06-12 14:52:33', NULL),
(40, 62, 'Opening Balance', 0.00, 600.00, 600.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:53:15', '2024-06-12 14:53:15', NULL),
(41, 63, 'Opening Balance', 0.00, 1100.00, 1100.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:53:58', '2024-06-12 14:53:58', NULL),
(42, 60, 'Debit', 14.00, NULL, 14.00, 9, 'Manual Issued Item', NULL, NULL, 5, '2024-06-12 14:54:12', '2024-06-12 14:54:12', NULL),
(43, 64, 'Opening Balance', 0.00, 600.00, 600.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:54:31', '2024-06-12 14:54:31', NULL),
(44, 65, 'Opening Balance', 0.00, 500.00, 500.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:55:07', '2024-06-12 14:55:07', NULL),
(45, 66, 'Opening Balance', 0.00, 600.00, 600.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:55:46', '2024-06-12 14:55:46', NULL),
(46, 67, 'Opening Balance', 0.00, 1100.00, 1100.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:56:35', '2024-06-12 14:56:35', NULL),
(47, 68, 'Opening Balance', 0.00, 1.00, 1.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-12 14:57:53', '2024-06-12 14:57:53', NULL),
(48, 69, 'Opening Balance', 0.00, 3800.00, 3800.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:57:53', '2024-06-12 14:57:53', NULL),
(49, 70, 'Opening Balance', 0.00, 1900.00, 1900.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:58:21', '2024-06-12 14:58:21', NULL),
(50, 71, 'Opening Balance', 0.00, 2500.00, 2500.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:59:01', '2024-06-12 14:59:01', NULL),
(51, 72, 'Opening Balance', 0.00, 600.00, 600.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 14:59:43', '2024-06-12 14:59:43', NULL),
(52, 73, 'Opening Balance', 0.00, 1700.00, 1700.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 15:00:14', '2024-06-12 15:00:14', NULL),
(53, 74, 'Opening Balance', 0.00, 2400.00, 2400.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 15:00:48', '2024-06-12 15:00:48', NULL),
(54, 75, 'Opening Balance', 0.00, 1200.00, 1200.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 15:01:22', '2024-06-12 15:01:22', NULL),
(55, 76, 'Opening Balance', 0.00, 500.00, 500.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 15:30:52', '2024-06-12 15:30:52', NULL),
(56, 77, 'Opening Balance', 0.00, 700.00, 700.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 15:31:26', '2024-06-12 15:31:26', NULL),
(57, 78, 'Opening Balance', 0.00, 3664.00, 3664.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 15:31:58', '2024-06-12 15:31:58', NULL),
(58, 79, 'Opening Balance', 0.00, 200.00, 200.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-12 15:32:30', '2024-06-12 15:32:30', NULL),
(59, 48, 'Opening Balance', 0.00, 11.00, 11.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-12 15:36:59', '2024-06-12 15:36:59', NULL),
(60, 49, 'Opening Balance', 0.00, 0.00, 0.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-12 15:37:22', '2024-06-12 15:37:22', NULL),
(61, 80, 'Opening Balance', 0.00, 1.00, 1.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-12 17:57:59', '2024-06-12 17:57:59', NULL),
(62, 81, 'Opening Balance', 0.00, 6.00, 6.00, 9, 'New product Added', NULL, NULL, NULL, '2024-06-12 18:12:55', '2024-06-12 18:12:55', NULL),
(63, 81, 'Debit', 6.00, NULL, 6.00, 9, 'Manual Issued Item', NULL, NULL, 6, '2024-06-12 18:17:35', '2024-06-12 18:17:35', NULL),
(64, 82, 'Opening Balance', 0.00, NULL, NULL, 7, 'New Paper Added', NULL, NULL, NULL, '2024-06-13 11:59:24', '2024-06-13 11:59:24', NULL),
(65, 83, 'Opening Balance', 0.00, NULL, NULL, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-13 11:59:36', '2024-06-13 11:59:36', NULL),
(66, 82, 'Opening Balance', 0.00, NULL, NULL, 7, 'New Paper Added', NULL, NULL, NULL, '2024-06-13 12:06:04', '2024-06-13 12:06:04', NULL),
(67, 84, 'Opening Balance', 0.00, NULL, NULL, 9, 'New product Added', NULL, NULL, NULL, '2024-06-13 12:28:20', '2024-06-13 12:28:20', NULL),
(68, 85, 'Opening Balance', 0.00, NULL, NULL, 9, 'New product Added', NULL, NULL, NULL, '2024-06-13 12:30:49', '2024-06-13 12:30:49', NULL),
(69, 86, 'Opening Balance', 0.00, NULL, NULL, 9, 'New product Added', NULL, NULL, NULL, '2024-06-13 12:31:43', '2024-06-13 12:31:43', NULL),
(70, 87, 'Opening Balance', 0.00, NULL, NULL, 9, 'New product Added', NULL, NULL, NULL, '2024-06-13 12:37:05', '2024-06-13 12:37:05', NULL),
(71, 82, 'Opening Balance', 0.00, NULL, NULL, 1, 'New Paper Added', NULL, NULL, NULL, '2024-06-13 12:41:52', '2024-06-13 12:41:52', NULL),
(72, 82, 'Opening Balance', 0.00, NULL, NULL, 1, 'New Paper Added', NULL, NULL, NULL, '2024-06-13 12:42:28', '2024-06-13 12:42:28', NULL),
(73, 82, 'Opening Balance', 0.00, NULL, NULL, 1, 'New Paper Added', NULL, NULL, NULL, '2024-06-13 12:48:17', '2024-06-13 12:48:17', NULL),
(74, 83, 'Opening Balance', 0.00, NULL, NULL, 1, 'New Paper Added', NULL, NULL, NULL, '2024-06-13 12:50:18', '2024-06-13 12:50:18', NULL),
(75, 79, 'Opening Balance', 0.00, 200.00, 200.00, 1, 'New Paper Added', NULL, NULL, NULL, '2024-06-13 12:50:32', '2024-06-13 12:50:32', NULL),
(76, 53, 'Opening Balance', 0.00, 16400.00, 16400.00, 1, 'New Paper Added', NULL, NULL, NULL, '2024-06-13 12:50:49', '2024-06-13 12:50:49', NULL),
(77, 65, 'Opening Balance', 0.00, 500.00, 500.00, 1, 'New Paper Added', NULL, NULL, NULL, '2024-06-13 12:51:47', '2024-06-13 12:51:47', NULL),
(78, 55, 'Opening Balance', 0.00, 1000.00, 1000.00, 1, 'New Paper Added', NULL, NULL, NULL, '2024-06-13 12:53:00', '2024-06-13 12:53:00', NULL),
(79, 55, 'Opening Balance', 0.00, 1000.00, 1000.00, 8, 'New Paper Added', NULL, NULL, NULL, '2024-06-13 12:53:08', '2024-06-13 12:53:08', NULL),
(80, 58, 'Opening Balance', 0.00, 102700.00, 102700.00, 1, 'New Paper Added', NULL, NULL, NULL, '2024-06-13 12:53:18', '2024-06-13 12:53:18', NULL),
(81, 85, 'Credit', NULL, 1.00, 1.00, 9, 'Product Inward', NULL, 2, NULL, '2024-06-13 13:49:40', '2024-06-13 13:49:40', NULL),
(82, 85, 'Debit', 1.00, NULL, 1.00, 9, 'Manual Issued Item', NULL, NULL, 7, '2024-06-13 13:51:37', '2024-06-13 13:51:37', NULL),
(83, 85, 'Debit', -4.00, 4.00, 0.00, 9, 'Product Inward Update', NULL, NULL, 7, '2024-06-13 13:52:14', '2024-06-13 13:52:14', NULL),
(84, 88, 'Opening Balance', 0.00, NULL, NULL, 9, 'New product Added', NULL, NULL, NULL, '2024-06-13 14:03:34', '2024-06-13 14:03:34', NULL),
(85, 89, 'Opening Balance', 0.00, NULL, NULL, 9, 'New product Added', NULL, NULL, NULL, '2024-06-13 14:04:12', '2024-06-13 14:04:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trimmed_paper_stock`
--

CREATE TABLE `trimmed_paper_stock` (
  `id` int(11) NOT NULL,
  `paper_size` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Numbers', 'Nos', '2024-06-09 21:01:51', '2024-06-09 21:01:51', NULL),
(2, 'Sheets', 'Sheets', '2024-06-09 21:02:01', '2024-06-09 21:02:01', NULL),
(3, 'Kilogram', 'KG', '2024-06-09 21:02:21', '2024-06-09 21:02:21', NULL),
(4, 'Gram', 'Gm', '2024-06-09 21:02:28', '2024-06-09 21:02:28', NULL),
(5, 'Liter', 'Ltr', '2024-06-09 21:02:40', '2024-06-09 21:02:40', NULL),
(6, 'Meter', 'Mtr', '2024-06-09 21:03:01', '2024-06-09 21:03:01', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(1024) DEFAULT NULL,
  `email` varchar(1024) DEFAULT NULL,
  `phone_no` varchar(1024) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `gst` varchar(255) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `mail_cc` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `email`, `phone_no`, `address`, `gst`, `media_id`, `mail_cc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AARUSHI AGENCIES', 'aarushiagencieschd@gmail.com', '9915834747', 'Plot No-70, INDL Area Phase-1, Chandigarh\r\n160001', '04AADCA1000E2ZS', NULL, 'stores@aarushiagencies.com', '2024-06-08 22:35:10', '2024-06-08 22:35:10', NULL),
(2, 'RPS CHEMICAL AND COATING', 'amanchandna240@gmail.com', '7015231673', 'Flat No. 136, Silver City Dreams, Deepak Industries\r\nDera Bassi, SAS Nagar Punjab 140201', '03BTFPC5348Q2ZF', NULL, 'shreyaoffsets@gmail.com', '2024-06-08 22:37:09', '2024-06-11 15:51:56', NULL),
(3, 'AB ENTERPRISES', 'sales.abenterprises2020@gmail.com', '7814454102', 'Plot No.181/20 INDL Area-1 Chandigarh\r\n160001', '04CLAPB8982M1ZT', NULL, NULL, '2024-06-08 22:39:49', '2024-06-08 22:39:49', NULL),
(4, 'PUNJAB ABBRASIVES LIMITED', 'creativehands16@gmail.com', '9414108034', 'Vill Saidpura, Dera Bassi', '03AACCP1344F1Z0', NULL, 'shreyaoffsets@gmail.com', '2024-06-08 22:40:35', '2024-06-11 13:09:42', NULL),
(5, 'ANURAG ENTERPRISES', 'anuraguttam@gmail.com', '8566007338', 'Shed no.136-140/5, INDL Estate-1\r\nChandigarh', '04AACPU9505G1ZP', NULL, 'anuragenterprises.chandigarh@gmail.com', '2024-06-09 10:35:08', '2024-06-09 10:35:08', NULL),
(6, 'WESTTEK', 'harpreet.singh@westtek.info', '9805099904', 'B-1, Sector-60 Gautam Budha Nagar Noida UP', '09AABCH7877E1Z9', NULL, NULL, '2024-06-09 10:35:55', '2024-06-09 10:35:55', NULL),
(7, 'VK PACKAGING', 'vkpacking123@gmail.com', '8146653334', 'Shop No.25 Sec-66, Mohali Phase-9 Indl Area', '03ALVPK3909N1ZK', NULL, NULL, '2024-06-09 10:36:53', '2024-06-09 10:36:53', NULL),
(8, 'SAKATA', 'sarabjit.singh@sakataindia.com', '9888584343', 'B-1245 & 46 RIICO Industries Area, Ghatal, Bhiwadi\r\nRajasthan-301019', '08AACCS4797D1Z4', NULL, 'hemant.kumar@sakataindia.com,akashdeep.saini@sakataindia.com', '2024-06-09 10:38:01', '2024-06-09 10:38:01', NULL),
(9, 'USHA INDUSTRIES', 'ushaindustries6@gmail.com', '9417497080', 'Plot No.6 Industrial Area, Phase-2 Chandigarh-\r\n160002', '04AYRPK2116N1Z7', NULL, NULL, '2024-06-09 10:40:08', '2024-06-09 10:40:08', NULL),
(10, 'KANISHKA ENTERPRISES', 'kanishkaenterprises0007@gmail.com', '9855652744', 'Nada, Singha Devi, Karoran, SAS Nagar, Punjab', '03CYLPB2654Q1Z5', NULL, NULL, '2024-06-09 11:03:11', '2024-06-09 11:03:11', NULL),
(11, 'Devi Graphics', 'devigraphicsoffice475@gmail.com', '6239272503', 'PLot No 97 Press Site Ind Area', '04AIQPS8669D1ZN', NULL, NULL, '2024-06-09 11:04:00', '2024-06-09 11:04:00', NULL),
(12, 'Diamond Copy House', 'accdiamondcopyhouse@gmail.com', '7696251951', '136-140/7 Industrial Area, Phase 1', '04AABFD7477P1ZY', NULL, NULL, '2024-06-09 19:53:19', '2024-06-09 19:53:19', NULL),
(13, 'GTC  Paper PVT  Ltd', 'gtcpaper@gmail.com', '9888208719', 'Plot No 271 , IND Area, Phase 1, Chandigarh', '04AAKCG3249G1ZP', NULL, NULL, '2024-06-09 19:54:15', '2024-06-09 19:54:15', NULL),
(14, 'Insight Processors', 'vkapoor212@gmail.com', '9815234702', 'Plot no 21, press Site phase 1 chandigarh', '04AHVPK0782B1ZF', NULL, NULL, '2024-06-09 19:55:45', '2024-06-09 19:55:45', NULL),
(15, 'Janvi Arts', 'devigraphicsoffice475@gmail.com', '6239272503', 'Plot No 97 , Industrial Area Phase 1, Chandigarh', '04AIQPS8668C1ZQ', NULL, NULL, '2024-06-09 19:59:01', '2024-06-09 19:59:01', NULL),
(16, 'Lithochem Offset Systems', 'lithochem1@gmail.com', '6280748120', 'Plot No 144 Press site phase 1 Chandigarh', '04AAHFL7908B1ZL', NULL, 'shreyaoffsets@gmail.com', '2024-06-09 20:00:34', '2024-06-10 17:18:14', NULL),
(17, 'RPS CHEMCIAL & COATING HARYANA', 'amanchandna240@gmail.com', '7015231673', '316, IND AREA, SONIPAT', '06BTFPC5348Q1ZA', NULL, NULL, '2024-06-09 20:21:56', '2024-06-09 20:21:56', NULL),
(18, 'S K Enterprises', 'acct.skenterprises@gmail.com', '9780142880', 'Plot No 253 Ind Area Phase 1, Chandigarh', '04ABSFS7316J1ZQ', NULL, NULL, '2024-06-09 20:23:13', '2024-06-09 20:23:13', NULL),
(19, 'Trc Export Pvt Ltd', 'business@therollercompany.biz', '8728070888', 'Plot No 6,7,8 Kohinoor Rubber Street, Kapurthala Road, Jalandhar', '03AACCT7010J1ZO', NULL, NULL, '2024-06-09 20:24:25', '2024-06-09 20:24:25', NULL),
(20, 'Rohan Enterprises', 'acctrajpapermart@gmail.com', '9872496777', 'Plot No. 479, Sector 82, Mohali\r\nPunjab', '03AANPC2634D1ZC', NULL, 'ppic@leeford.in, umesh.katyal@jkmail.com, akhilesh.sharma@jkmail.com, pulkit.varshney@jkmail.com, shreyaoffsets@gmail.com, planning.pso@gmail.com', '2024-06-13 11:44:32', '2024-06-13 11:44:32', NULL),
(21, 'MARKET-CASH', 'GGG@GMAIL.COM', '9876543210', 'ALL OVER CHANDIGARH', 'GHNHJD4526DHJ1Z', NULL, NULL, '2024-06-13 13:47:38', '2024-06-13 14:08:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  `purchase_order_item_id` bigint(20) DEFAULT NULL,
  `carton_name` varchar(255) DEFAULT NULL,
  `carton_size` varchar(255) DEFAULT NULL,
  `old_quantity` int(11) DEFAULT '0',
  `new_quantity` int(11) NOT NULL DEFAULT '0',
  `quantity_in_box` int(11) DEFAULT NULL,
  `pasting_ready_box` varchar(255) DEFAULT NULL,
  `no_of_box` int(11) DEFAULT NULL,
  `ready_box` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_items`
--
ALTER TABLE `billing_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartons`
--
ALTER TABLE `cartons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carton_prices`
--
ALTER TABLE `carton_prices`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coas`
--
ALTER TABLE `coas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coating_types`
--
ALTER TABLE `coating_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coa_items`
--
ALTER TABLE `coa_items`
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
-- Indexes for table `dye_breakings`
--
ALTER TABLE `dye_breakings`
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
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_items`
--
ALTER TABLE `issue_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_cards`
--
ALTER TABLE `job_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_card_histories`
--
ALTER TABLE `job_card_histories`
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
-- Indexes for table `job_card_papers`
--
ALTER TABLE `job_card_papers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_card_timers`
--
ALTER TABLE `job_card_timers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_card_users`
--
ALTER TABLE `job_card_users`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logins_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`),
  ADD KEY `logins_personal_access_token_id_foreign` (`personal_access_token_id`);

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
-- Indexes for table `material_orders`
--
ALTER TABLE `material_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material_order_items`
--
ALTER TABLE `material_order_items`
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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_users`
--
ALTER TABLE `module_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `start_series` (`start_series`);

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
-- Indexes for table `requisitions`
--
ALTER TABLE `requisitions`
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
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing_items`
--
ALTER TABLE `billing_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cartons`
--
ALTER TABLE `cartons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `carton_prices`
--
ALTER TABLE `carton_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chemical_coatings`
--
ALTER TABLE `chemical_coatings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `coas`
--
ALTER TABLE `coas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coating_types`
--
ALTER TABLE `coating_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coa_items`
--
ALTER TABLE `coa_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuttings`
--
ALTER TABLE `cuttings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `designings`
--
ALTER TABLE `designings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dye_breakings`
--
ALTER TABLE `dye_breakings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dye_cuttings`
--
ALTER TABLE `dye_cuttings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dye_details`
--
ALTER TABLE `dye_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT for table `embossings`
--
ALTER TABLE `embossings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `issue_items`
--
ALTER TABLE `issue_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_cards`
--
ALTER TABLE `job_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `job_card_histories`
--
ALTER TABLE `job_card_histories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_card_items`
--
ALTER TABLE `job_card_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `job_card_papers`
--
ALTER TABLE `job_card_papers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_card_timers`
--
ALTER TABLE `job_card_timers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_card_users`
--
ALTER TABLE `job_card_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `laminations`
--
ALTER TABLE `laminations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leafings`
--
ALTER TABLE `leafings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

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
-- AUTO_INCREMENT for table `material_orders`
--
ALTER TABLE `material_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `material_order_items`
--
ALTER TABLE `material_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `module_users`
--
ALTER TABLE `module_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plannings`
--
ALTER TABLE `plannings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `printings`
--
ALTER TABLE `printings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `requisitions`
--
ALTER TABLE `requisitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spot_uv`
--
ALTER TABLE `spot_uv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
