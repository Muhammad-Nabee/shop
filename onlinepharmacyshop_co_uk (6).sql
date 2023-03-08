-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 03:25 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinepharmacyshop.co.uk`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kod_allowe_reviews`
--

CREATE TABLE `kod_allowe_reviews` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT '0',
  `one_star` tinyint(1) DEFAULT 0,
  `two_star` tinyint(1) NOT NULL DEFAULT 0,
  `three_star` tinyint(1) NOT NULL DEFAULT 0,
  `four_star` tinyint(1) NOT NULL DEFAULT 0,
  `five_star` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_allowe_reviews`
--

INSERT INTO `kod_allowe_reviews` (`id`, `hash_id`, `one_star`, `two_star`, `three_star`, `four_star`, `five_star`, `created_at`, `updated_at`) VALUES
(1, 'dgNpak1638428863', 1, 1, 1, 1, 1, '2021-12-02 02:07:43', '2021-12-02 05:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `kod_banners`
--

CREATE TABLE `kod_banners` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `banner_type` enum('IMG_TXT','IMG') DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_ip` varchar(50) DEFAULT NULL,
  `updated_ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_banners`
--

INSERT INTO `kod_banners` (`id`, `hash_id`, `title`, `description`, `image`, `banner_type`, `display_order`, `status`, `created_at`, `updated_at`, `created_ip`, `updated_ip`) VALUES
(59, '9XU5FzJZdL', 'Saxenda pens', '<div class=\"container\">\r\n<div class=\"overflow-hidden\">\r\n<div class=\"row align-items-center min-vh-73 py-8 justify-content-center justify-content-md-start\">\r\n<div class=\"col-auto\">\r\n<div class=\"overflow-hidden\">\r\n<h1 animation=\"\" class=\"fs-sm-4 fs-3 text-white\" data-zanim-xs=\"{\">Weight Loss Pen</h1>\r\n</div>\r\n\r\n<div class=\"overflow-hidden\">\r\n<p animation=\"\" class=\"fs-sm-1 fs-0\" data-zanim-xs=\"{\">Safe, Effective Treatment</p>\r\n</div>\r\n\r\n<div class=\"overflow-hidden\">\r\n<div class=\"owl-slide-animated owl-slide-cta\"><a class=\"btn_1\" href=\"https://burwashmedsdirect.co.uk/callthedoc/treatments/category/weight-loss-pen\" role=\"button\">Find out more</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'weight-loss-pen-59.jpg', 'IMG_TXT', 1, 1, '2021-06-25 06:34:43', '2021-10-06 12:53:17', '115.186.141.77', NULL),
(60, 'ZWCLberFd4', 'Premature Ejaculation', '<div class=\"container\">\r\n<div class=\"overflow-hidden\">\r\n<div class=\"row align-items-center min-vh-73 py-8 justify-content-center justify-content-md-start\">\r\n<div class=\"col-auto\">\r\n<div class=\"overflow-hidden\">\r\n<h1 animation=\"\" class=\"fs-sm-4 fs-3 text-white\" data-zanim-xs=\"{\">Premature Ejaculation Treatment</h1>\r\n</div>\r\n\r\n<div class=\"overflow-hidden\">\r\n<p animation=\"\" class=\"fs-sm-1 fs-0\" data-zanim-xs=\"{\">Premature Ejaculation Pills</p>\r\n</div>\r\n\r\n<div class=\"overflow-hidden\">\r\n<div class=\"owl-slide-animated owl-slide-cta\"><a class=\"btn_1\" href=\"https://burwashmedsdirect.co.uk/callthedoc/treatments/category/premature-ejaculation\" role=\"button\">Find out more</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'premature-ejaculation-treatment-60.jpg', 'IMG_TXT', 2, 1, '2021-06-25 06:37:18', '2021-10-06 12:53:46', '115.186.141.77', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kod_brands`
--

CREATE TABLE `kod_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `display_position` varchar(255) DEFAULT NULL,
  `display_order` int(5) DEFAULT 1,
  `status` tinyint(2) DEFAULT 1,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_brands`
--

INSERT INTO `kod_brands` (`id`, `name`, `slug`, `sub_heading`, `short_description`, `description`, `logo`, `banner`, `display_position`, `display_order`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(2, 'test', 'test', 'test', '<p>kjhkjh</p>', '<p>kjhkjh</p>', 'logo-zUFkM.png', NULL, '1', 1, 1, NULL, NULL, NULL, '2021-10-14 02:16:33', '2021-11-29 01:40:27'),
(7, 'test', 'testt', 'sdf', '<p>sdf</p>', '<p>sdf</p>', 'logo-Qkz5B.jpg', NULL, '1', 1, 1, NULL, NULL, NULL, '2021-10-14 03:11:35', '2021-11-29 01:40:35'),
(8, 'dfgs', 'dfgs', NULL, NULL, NULL, 'logo-oh8C7.jpg', NULL, '1', 1, 1, NULL, NULL, NULL, '2021-10-14 03:18:07', '2021-11-29 01:40:43'),
(9, 'lkjgs', 'lkjgs', 'dfg', NULL, NULL, 'logo-ITwrn.jpg', NULL, '1', 1, 1, NULL, NULL, NULL, '2021-10-14 03:18:38', '2021-11-29 01:40:52'),
(10, 'sadfas', 'sadfas', NULL, NULL, NULL, 'logo-5FV2z.jpg', NULL, '1', 1, 1, NULL, NULL, NULL, '2021-10-14 03:18:57', '2021-11-29 01:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `kod_category_positions`
--

CREATE TABLE `kod_category_positions` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_category_positions`
--

INSERT INTO `kod_category_positions` (`id`, `hash_id`, `title`, `display_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'adsdc32', 'Homepage', 1, '1', '2021-06-10 11:25:19', '2021-06-10 11:25:19'),
(2, 're444323', 'All Treatments', 1, '1', '2021-06-10 11:25:19', '2021-06-10 11:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `kod_countries`
--

CREATE TABLE `kod_countries` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `country_code` varchar(50) NOT NULL DEFAULT '',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `modified_date` datetime DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kod_countries`
--

INSERT INTO `kod_countries` (`id`, `title`, `country_code`, `status`, `modified_date`, `modified_by_ip`, `created_date`, `created_by_ip`) VALUES
(1, 'Afghanistan', 'AF', '1', '2020-09-24 13:16:19', '212.103.50.133', NULL, NULL),
(2, 'Albania', 'AL', '1', '2020-07-22 06:39:38', '111.119.187.11', NULL, NULL),
(3, 'Algeria', 'DZ', '1', NULL, NULL, NULL, NULL),
(4, 'American Samoa', 'DS', '1', NULL, NULL, NULL, NULL),
(5, 'Andorra', 'AD', '1', NULL, NULL, NULL, NULL),
(6, 'Angola', 'AO', '1', NULL, NULL, NULL, NULL),
(7, 'Anguilla', 'AI', '1', NULL, NULL, NULL, NULL),
(8, 'Antarctica', 'AQ', '1', NULL, NULL, NULL, NULL),
(9, 'Antigua and Barbuda', 'AG', '1', NULL, NULL, NULL, NULL),
(10, 'Argentina', 'AR', '1', NULL, NULL, NULL, NULL),
(11, 'Armenia', 'AM', '1', NULL, NULL, NULL, NULL),
(12, 'Aruba', 'AW', '1', NULL, NULL, NULL, NULL),
(13, 'Australia', 'AU', '1', NULL, NULL, NULL, NULL),
(14, 'Austria', 'AT', '1', NULL, NULL, NULL, NULL),
(15, 'Azerbaijan', 'AZ', '1', NULL, NULL, NULL, NULL),
(16, 'Bahamas', 'BS', '1', NULL, NULL, NULL, NULL),
(17, 'Bahrain', 'BH', '1', NULL, NULL, NULL, NULL),
(18, 'Bangladesh', 'BD', '1', NULL, NULL, NULL, NULL),
(19, 'Barbados', 'BB', '1', NULL, NULL, NULL, NULL),
(20, 'Belarus', 'BY', '1', NULL, NULL, NULL, NULL),
(21, 'Belgium', 'BE', '1', NULL, NULL, NULL, NULL),
(22, 'Belize', 'BZ', '1', NULL, NULL, NULL, NULL),
(23, 'Benin', 'BJ', '1', NULL, NULL, NULL, NULL),
(24, 'Bermuda', 'BM', '1', NULL, NULL, NULL, NULL),
(25, 'Bhutan', 'BT', '1', NULL, NULL, NULL, NULL),
(26, 'Bolivia', 'BO', '1', NULL, NULL, NULL, NULL),
(27, 'Bosnia and Herzegovina', 'BA', '1', NULL, NULL, NULL, NULL),
(28, 'Botswana', 'BW', '1', NULL, NULL, NULL, NULL),
(29, 'Bouvet Island', 'BV', '1', NULL, NULL, NULL, NULL),
(30, 'Brazil', 'BR', '1', NULL, NULL, NULL, NULL),
(31, 'British Indian Ocean Territory', 'IO', '1', NULL, NULL, NULL, NULL),
(32, 'Brunei Darussalam', 'BN', '1', NULL, NULL, NULL, NULL),
(33, 'Bulgaria', 'BG', '1', NULL, NULL, NULL, NULL),
(34, 'Burkina Faso', 'BF', '1', NULL, NULL, NULL, NULL),
(35, 'Burundi', 'BI', '1', NULL, NULL, NULL, NULL),
(36, 'Cambodia', 'KH', '1', NULL, NULL, NULL, NULL),
(37, 'Cameroon', 'CM', '1', NULL, NULL, NULL, NULL),
(38, 'Canada', 'CA', '1', NULL, NULL, NULL, NULL),
(39, 'Cape Verde', 'CV', '1', NULL, NULL, NULL, NULL),
(40, 'Cayman Islands', 'KY', '1', NULL, NULL, NULL, NULL),
(41, 'Central African Republic', 'CF', '1', NULL, NULL, NULL, NULL),
(42, 'Chad', 'TD', '1', NULL, NULL, NULL, NULL),
(43, 'Chile', 'CL', '1', NULL, NULL, NULL, NULL),
(44, 'China', 'CN', '1', NULL, NULL, NULL, NULL),
(45, 'Christmas Island', 'CX', '1', NULL, NULL, NULL, NULL),
(46, 'Cocos (Keeling) Islands', 'CC', '1', NULL, NULL, NULL, NULL),
(47, 'Colombia', 'CO', '1', NULL, NULL, NULL, NULL),
(48, 'Comoros', 'KM', '1', NULL, NULL, NULL, NULL),
(49, 'Democratic Republic of the Congo', 'CD', '1', NULL, NULL, NULL, NULL),
(50, 'Republic of Congo', 'CG', '1', NULL, NULL, NULL, NULL),
(51, 'Cook Islands', 'CK', '1', NULL, NULL, NULL, NULL),
(52, 'Costa Rica', 'CR', '1', NULL, NULL, NULL, NULL),
(53, 'Croatia (Hrvatska)', 'HR', '1', NULL, NULL, NULL, NULL),
(54, 'Cuba', 'CU', '1', NULL, NULL, NULL, NULL),
(55, 'Cyprus', 'CY', '1', NULL, NULL, NULL, NULL),
(56, 'Czech Republic', 'CZ', '1', NULL, NULL, NULL, NULL),
(57, 'Denmark', 'DK', '1', NULL, NULL, NULL, NULL),
(58, 'Djibouti', 'DJ', '1', NULL, NULL, NULL, NULL),
(59, 'Dominica', 'DM', '1', NULL, NULL, NULL, NULL),
(60, 'Dominican Republic', 'DO', '1', NULL, NULL, NULL, NULL),
(61, 'East Timor', 'TP', '1', NULL, NULL, NULL, NULL),
(62, 'Ecuador', 'EC', '1', NULL, NULL, NULL, NULL),
(63, 'Egypt', 'EG', '1', NULL, NULL, NULL, NULL),
(64, 'El Salvador', 'SV', '1', NULL, NULL, NULL, NULL),
(65, 'Equatorial Guinea', 'GQ', '1', NULL, NULL, NULL, NULL),
(66, 'Eritrea', 'ER', '1', NULL, NULL, NULL, NULL),
(67, 'Estonia', 'EE', '1', NULL, NULL, NULL, NULL),
(68, 'Ethiopia', 'ET', '1', NULL, NULL, NULL, NULL),
(69, 'Falkland Islands (Malvinas)', 'FK', '1', NULL, NULL, NULL, NULL),
(70, 'Faroe Islands', 'FO', '1', NULL, NULL, NULL, NULL),
(71, 'Fiji', 'FJ', '1', NULL, NULL, NULL, NULL),
(72, 'Finland', 'FI', '1', NULL, NULL, NULL, NULL),
(73, 'France', 'FR', '1', NULL, NULL, NULL, NULL),
(74, 'France, Metropolitan', 'FX', '1', NULL, NULL, NULL, NULL),
(75, 'French Guiana', 'GF', '1', NULL, NULL, NULL, NULL),
(76, 'French Polynesia', 'PF', '1', NULL, NULL, NULL, NULL),
(77, 'French Southern Territories', 'TF', '1', NULL, NULL, NULL, NULL),
(78, 'Gabon', 'GA', '1', NULL, NULL, NULL, NULL),
(79, 'Gambia', 'GM', '1', NULL, NULL, NULL, NULL),
(80, 'Georgia', 'GE', '1', NULL, NULL, NULL, NULL),
(81, 'Germany', 'DE', '1', NULL, NULL, NULL, NULL),
(82, 'Ghana', 'GH', '1', NULL, NULL, NULL, NULL),
(83, 'Gibraltar', 'GI', '1', NULL, NULL, NULL, NULL),
(84, 'Guernsey', 'GK', '1', NULL, NULL, NULL, NULL),
(85, 'Greece', 'GR', '1', NULL, NULL, NULL, NULL),
(86, 'Greenland', 'GL', '1', NULL, NULL, NULL, NULL),
(87, 'Grenada', 'GD', '1', NULL, NULL, NULL, NULL),
(88, 'Guadeloupe', 'GP', '1', NULL, NULL, NULL, NULL),
(89, 'Guam', 'GU', '1', NULL, NULL, NULL, NULL),
(90, 'Guatemala', 'GT', '1', NULL, NULL, NULL, NULL),
(91, 'Guinea', 'GN', '1', NULL, NULL, NULL, NULL),
(92, 'Guinea-Bissau', 'GW', '1', NULL, NULL, NULL, NULL),
(93, 'Guyana', 'GY', '1', NULL, NULL, NULL, NULL),
(94, 'Haiti', 'HT', '1', NULL, NULL, NULL, NULL),
(95, 'Heard and Mc Donald Islands', 'HM', '1', NULL, NULL, NULL, NULL),
(96, 'Honduras', 'HN', '1', NULL, NULL, NULL, NULL),
(97, 'Hong Kong', 'HK', '1', NULL, NULL, NULL, NULL),
(98, 'Hungary', 'HU', '1', NULL, NULL, NULL, NULL),
(99, 'Iceland', 'IS', '1', NULL, NULL, NULL, NULL),
(100, 'India', 'IN', '1', NULL, NULL, NULL, NULL),
(101, 'Isle of Man', 'IM', '1', NULL, NULL, NULL, NULL),
(102, 'Indonesia', 'ID', '1', NULL, NULL, NULL, NULL),
(103, 'Iran (Islamic Republic of)', 'IR', '1', NULL, NULL, NULL, NULL),
(104, 'Iraq', 'IQ', '1', NULL, NULL, NULL, NULL),
(105, 'Ireland', 'IE', '1', NULL, NULL, NULL, NULL),
(106, 'Israel', 'IL', '1', NULL, NULL, NULL, NULL),
(107, 'Italy', 'IT', '1', NULL, NULL, NULL, NULL),
(108, 'Ivory Coast', 'CI', '1', NULL, NULL, NULL, NULL),
(109, 'Jersey', 'JE', '1', NULL, NULL, NULL, NULL),
(110, 'Jamaica', 'JM', '1', NULL, NULL, NULL, NULL),
(111, 'Japan', 'JP', '1', NULL, NULL, NULL, NULL),
(112, 'Jordan', 'JO', '1', NULL, NULL, NULL, NULL),
(113, 'Kazakhstan', 'KZ', '1', NULL, NULL, NULL, NULL),
(114, 'Kenya', 'KE', '1', NULL, NULL, NULL, NULL),
(115, 'Kiribati', 'KI', '1', NULL, NULL, NULL, NULL),
(116, 'Korea, Democratic People\'s Republic of', 'KP', '1', NULL, NULL, NULL, NULL),
(117, 'Korea, Republic of', 'KR', '1', NULL, NULL, NULL, NULL),
(118, 'Kosovo', 'XK', '1', NULL, NULL, NULL, NULL),
(119, 'Kuwait', 'KW', '1', NULL, NULL, NULL, NULL),
(120, 'Kyrgyzstan', 'KG', '1', NULL, NULL, NULL, NULL),
(121, 'Lao People\'s Democratic Republic', 'LA', '1', NULL, NULL, NULL, NULL),
(122, 'Latvia', 'LV', '1', NULL, NULL, NULL, NULL),
(123, 'Lebanon', 'LB', '1', NULL, NULL, NULL, NULL),
(124, 'Lesotho', 'LS', '1', NULL, NULL, NULL, NULL),
(125, 'Liberia', 'LR', '1', NULL, NULL, NULL, NULL),
(126, 'Libyan Arab Jamahiriya', 'LY', '1', NULL, NULL, NULL, NULL),
(127, 'Liechtenstein', 'LI', '1', NULL, NULL, NULL, NULL),
(128, 'Lithuania', 'LT', '1', NULL, NULL, NULL, NULL),
(129, 'Luxembourg', 'LU', '1', NULL, NULL, NULL, NULL),
(130, 'Macau', 'MO', '1', NULL, NULL, NULL, NULL),
(131, 'North Macedonia', 'MK', '1', NULL, NULL, NULL, NULL),
(132, 'Madagascar', 'MG', '1', NULL, NULL, NULL, NULL),
(133, 'Malawi', 'MW', '1', NULL, NULL, NULL, NULL),
(134, 'Malaysia', 'MY', '1', NULL, NULL, NULL, NULL),
(135, 'Maldives', 'MV', '1', NULL, NULL, NULL, NULL),
(136, 'Mali', 'ML', '1', NULL, NULL, NULL, NULL),
(137, 'Malta', 'MT', '1', NULL, NULL, NULL, NULL),
(138, 'Marshall Islands', 'MH', '1', NULL, NULL, NULL, NULL),
(139, 'Martinique', 'MQ', '1', NULL, NULL, NULL, NULL),
(140, 'Mauritania', 'MR', '1', NULL, NULL, NULL, NULL),
(141, 'Mauritius', 'MU', '1', NULL, NULL, NULL, NULL),
(142, 'Mayotte', 'TY', '1', NULL, NULL, NULL, NULL),
(143, 'Mexico', 'MX', '1', NULL, NULL, NULL, NULL),
(144, 'Micronesia, Federated States of', 'FM', '1', NULL, NULL, NULL, NULL),
(145, 'Moldova, Republic of', 'MD', '1', NULL, NULL, NULL, NULL),
(146, 'Monaco', 'MC', '1', NULL, NULL, NULL, NULL),
(147, 'Mongolia', 'MN', '1', NULL, NULL, NULL, NULL),
(148, 'Montenegro', 'ME', '1', NULL, NULL, NULL, NULL),
(149, 'Montserrat', 'MS', '1', NULL, NULL, NULL, NULL),
(150, 'Morocco', 'MA', '1', NULL, NULL, NULL, NULL),
(151, 'Mozambique', 'MZ', '1', NULL, NULL, NULL, NULL),
(152, 'Myanmar', 'MM', '1', NULL, NULL, NULL, NULL),
(153, 'Namibia', 'NA', '1', NULL, NULL, NULL, NULL),
(154, 'Nauru', 'NR', '1', NULL, NULL, NULL, NULL),
(155, 'Nepal', 'NP', '1', NULL, NULL, NULL, NULL),
(156, 'Netherlands', 'NL', '1', NULL, NULL, NULL, NULL),
(157, 'Netherlands Antilles', 'AN', '1', NULL, NULL, NULL, NULL),
(158, 'New Caledonia', 'NC', '1', NULL, NULL, NULL, NULL),
(159, 'New Zealand', 'NZ', '1', NULL, NULL, NULL, NULL),
(160, 'Nicaragua', 'NI', '1', NULL, NULL, NULL, NULL),
(161, 'Niger', 'NE', '1', NULL, NULL, NULL, NULL),
(162, 'Nigeria', 'NG', '1', NULL, NULL, NULL, NULL),
(163, 'Niue', 'NU', '1', NULL, NULL, NULL, NULL),
(164, 'Norfolk Island', 'NF', '1', NULL, NULL, NULL, NULL),
(165, 'Northern Mariana Islands', 'MP', '1', NULL, NULL, NULL, NULL),
(166, 'Norway', 'NO', '1', NULL, NULL, NULL, NULL),
(167, 'Oman', 'OM', '1', NULL, NULL, NULL, NULL),
(168, 'Pakistan', 'PK', '1', NULL, NULL, NULL, NULL),
(169, 'Palau', 'PW', '1', NULL, NULL, NULL, NULL),
(170, 'Palestine', 'PS', '1', NULL, NULL, NULL, NULL),
(171, 'Panama', 'PA', '1', NULL, NULL, NULL, NULL),
(172, 'Papua New Guinea', 'PG', '1', NULL, NULL, NULL, NULL),
(173, 'Paraguay', 'PY', '1', NULL, NULL, NULL, NULL),
(174, 'Peru', 'PE', '1', NULL, NULL, NULL, NULL),
(175, 'Philippines', 'PH', '1', NULL, NULL, NULL, NULL),
(176, 'Pitcairn', 'PN', '1', NULL, NULL, NULL, NULL),
(177, 'Poland', 'PL', '1', NULL, NULL, NULL, NULL),
(178, 'Portugal', 'PT', '1', NULL, NULL, NULL, NULL),
(179, 'Puerto Rico', 'PR', '1', NULL, NULL, NULL, NULL),
(180, 'Qatar', 'QA', '1', NULL, NULL, NULL, NULL),
(181, 'Reunion', 'RE', '1', NULL, NULL, NULL, NULL),
(182, 'Romania', 'RO', '1', NULL, NULL, NULL, NULL),
(183, 'Russian Federation', 'RU', '1', NULL, NULL, NULL, NULL),
(184, 'Rwanda', 'RW', '1', NULL, NULL, NULL, NULL),
(185, 'Saint Kitts and Nevis', 'KN', '1', NULL, NULL, NULL, NULL),
(186, 'Saint Lucia', 'LC', '1', NULL, NULL, NULL, NULL),
(187, 'Saint Vincent and the Grenadines', 'VC', '1', NULL, NULL, NULL, NULL),
(188, 'Samoa', 'WS', '1', NULL, NULL, NULL, NULL),
(189, 'San Marino', 'SM', '1', NULL, NULL, NULL, NULL),
(190, 'Sao Tome and Principe', 'ST', '1', NULL, NULL, NULL, NULL),
(191, 'Saudi Arabia', 'SA', '1', NULL, NULL, NULL, NULL),
(192, 'Senegal', 'SN', '1', NULL, NULL, NULL, NULL),
(193, 'Serbia', 'RS', '1', NULL, NULL, NULL, NULL),
(194, 'Seychelles', 'SC', '1', NULL, NULL, NULL, NULL),
(195, 'Sierra Leone', 'SL', '1', NULL, NULL, NULL, NULL),
(196, 'Singapore', 'SG', '1', NULL, NULL, NULL, NULL),
(197, 'Slovakia', 'SK', '1', NULL, NULL, NULL, NULL),
(198, 'Slovenia', 'SI', '1', NULL, NULL, NULL, NULL),
(199, 'Solomon Islands', 'SB', '1', NULL, NULL, NULL, NULL),
(200, 'Somalia', 'SO', '1', NULL, NULL, NULL, NULL),
(201, 'South Africa', 'ZA', '1', NULL, NULL, NULL, NULL),
(202, 'South Georgia South Sandwich Islands', 'GS', '1', NULL, NULL, NULL, NULL),
(203, 'South Sudan', 'SS', '1', NULL, NULL, NULL, NULL),
(204, 'Spain', 'ES', '1', NULL, NULL, NULL, NULL),
(205, 'Sri Lanka', 'LK', '1', NULL, NULL, NULL, NULL),
(206, 'St. Helena', 'SH', '1', NULL, NULL, NULL, NULL),
(207, 'St. Pierre and Miquelon', 'PM', '1', NULL, NULL, NULL, NULL),
(208, 'Sudan', 'SD', '1', NULL, NULL, NULL, NULL),
(209, 'Suriname', 'SR', '1', NULL, NULL, NULL, NULL),
(210, 'Svalbard and Jan Mayen Islands', 'SJ', '1', NULL, NULL, NULL, NULL),
(211, 'Swaziland', 'SZ', '1', NULL, NULL, NULL, NULL),
(212, 'Sweden', 'SE', '1', NULL, NULL, NULL, NULL),
(213, 'Switzerland', 'CH', '1', NULL, NULL, NULL, NULL),
(214, 'Syrian Arab Republic', 'SY', '1', NULL, NULL, NULL, NULL),
(215, 'Taiwan', 'TW', '1', NULL, NULL, NULL, NULL),
(216, 'Tajikistan', 'TJ', '1', NULL, NULL, NULL, NULL),
(217, 'Tanzania, United Republic of', 'TZ', '1', NULL, NULL, NULL, NULL),
(218, 'Thailand', 'TH', '1', NULL, NULL, NULL, NULL),
(219, 'Togo', 'TG', '1', NULL, NULL, NULL, NULL),
(220, 'Tokelau', 'TK', '1', NULL, NULL, NULL, NULL),
(221, 'Tonga', 'TO', '1', NULL, NULL, NULL, NULL),
(222, 'Trinidad and Tobago', 'TT', '1', NULL, NULL, NULL, NULL),
(223, 'Tunisia', 'TN', '1', NULL, NULL, NULL, NULL),
(224, 'Turkey', 'TR', '1', NULL, NULL, NULL, NULL),
(225, 'Turkmenistan', 'TM', '1', NULL, NULL, NULL, NULL),
(226, 'Turks and Caicos Islands', 'TC', '1', NULL, NULL, NULL, NULL),
(227, 'Tuvalu', 'TV', '1', NULL, NULL, NULL, NULL),
(228, 'Uganda', 'UG', '1', NULL, NULL, NULL, NULL),
(229, 'Ukraine', 'UA', '1', NULL, NULL, NULL, NULL),
(230, 'United Arab Emirates', 'AE', '1', NULL, NULL, NULL, NULL),
(231, 'United Kingdom', 'GB', '1', NULL, NULL, NULL, NULL),
(232, 'United States', 'US', '1', NULL, NULL, NULL, NULL),
(233, 'United States minor outlying islands', 'UM', '1', NULL, NULL, NULL, NULL),
(234, 'Uruguay', 'UY', '1', NULL, NULL, NULL, NULL),
(235, 'Uzbekistan', 'UZ', '1', NULL, NULL, NULL, NULL),
(236, 'Vanuatu', 'VU', '1', NULL, NULL, NULL, NULL),
(237, 'Vatican City State', 'VA', '1', NULL, NULL, NULL, NULL),
(238, 'Venezuela', 'VE', '1', NULL, NULL, NULL, NULL),
(239, 'Vietnam', 'VN', '1', NULL, NULL, NULL, NULL),
(240, 'Virgin Islands (British)', 'VG', '1', NULL, NULL, NULL, NULL),
(241, 'Virgin Islands (U.S.)', 'VI', '1', NULL, NULL, NULL, NULL),
(242, 'Wallis and Futuna Islands', 'WF', '1', NULL, NULL, NULL, NULL),
(243, 'Western Sahara', 'EH', '1', NULL, NULL, NULL, NULL),
(244, 'Yemen', 'YE', '1', NULL, NULL, NULL, NULL),
(245, 'Zambia', 'ZM', '1', NULL, NULL, NULL, NULL),
(246, 'Zimbabwe', 'ZW', '1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kod_coupons`
--

CREATE TABLE `kod_coupons` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `coupon_code` varchar(50) DEFAULT NULL,
  `discount_value` double(10,2) DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `usage_total` int(11) DEFAULT NULL,
  `coupon_type` enum('FIXED_PRICE','PERCENTAGE') DEFAULT NULL,
  `expiry_date_time` datetime DEFAULT NULL,
  `has_expiry_date` enum('1','0') DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_by_ip` varchar(50) DEFAULT NULL,
  `updated_by_ip` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_coupons`
--

INSERT INTO `kod_coupons` (`id`, `hash_id`, `title`, `description`, `coupon_code`, `discount_value`, `usage_limit`, `usage_total`, `coupon_type`, `expiry_date_time`, `has_expiry_date`, `status`, `created_by_ip`, `updated_by_ip`, `created_at`, `updated_at`) VALUES
(22, 'wAvL8XwCQB', 'MC30 Title', '<p>MC30 desc</p>', 'MC30', 10.00, 10, NULL, 'PERCENTAGE', '2021-10-07 00:00:00', '1', '1', '115.186.141.19', '115.186.141.19', '2021-07-06 02:49:01', '2021-10-05 09:31:00'),
(23, 'CXH6QW1630995527', 'MC20 Title', '<p>MC20 desc</p>', 'MC20', 5.00, 20, 8, 'PERCENTAGE', NULL, '0', '1', '127.0.0.1', '127.0.0.1', '2021-09-07 05:18:47', '2021-12-16 08:20:35'),
(24, 'WB4fHl1638796395', 'Test123', '', 'MC22', 10.00, 7, NULL, 'FIXED_PRICE', '2021-12-31 00:00:00', '1', '1', '127.0.0.1', '127.0.0.1', '2021-12-06 08:13:15', '2021-12-06 08:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `kod_delivery_methods`
--

CREATE TABLE `kod_delivery_methods` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `delivery_type` enum('Local','International') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains Pharamcies Cleaning Areas' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kod_delivery_methods`
--

INSERT INTO `kod_delivery_methods` (`id`, `hash_id`, `type_id`, `title`, `description`, `long_description`, `image`, `price`, `display_order`, `status`, `delivery_type`, `created_at`, `created_by_ip`, `updated_at`, `modified_by_ip`) VALUES
(31, 'nQZRAnIMVk', 1, 'International (Outside the UK Via DHL 2-5 Days)', 'Please note our shipment days are Monday - Wednesday.', '<p><span style=\"color: rgb(33, 37, 41); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 11.2px; background-color: rgb(248, 248, 248);\">Please note our shipment days are Monday - Wednesday. If you order&nbsp;after Wednesday your order will not be shipped until the following Monday. This is done to avoid your order being stuck in transit over the weekend.</span><br></p>', 'international-outside-the-uk-via-dhl-2-5-days-31.jpg', 20.00, 17, '1', 'International', '2021-06-23 08:58:09', '127.0.0.1', '2021-12-02 07:54:28', '127.0.0.1'),
(32, 'TcFC9Kn0kI', 1, 'Royal Mail Standard', 'Please note our shipment days are Monday - Wednesday. Royal Mail Standard', '', 'royal-mail-standard-32.jpg', 5.00, 1, '1', 'Local', '2021-07-05 07:13:26', '127.0.0.1', '2021-12-02 07:54:58', '127.0.0.1'),
(33, 'Ysaj2bOas9', 3, 'Free Delivery', 'There is no charge for delivery for this order.', '<p>There is no charge for delivery for this order.</p>', 'free-delivery-33.jpg', 0.00, 1, '1', 'Local', '2021-07-05 07:43:07', '127.0.0.1', '2021-12-02 07:53:58', '127.0.0.1'),
(34, 'wfQx8GPiPr', 2, 'Store Collection', 'You can order your medication online and then walk into the pharmacy to collect it.', '<p>You can order your medication online and then walk into the pharmacy to collect it.</p>', 'pick-up-from-store-34.jpg', 0.00, 2, '0', 'Local', '2021-07-05 07:49:43', '115.186.141.19', '2021-10-05 09:16:03', '115.186.141.19'),
(35, '204GMc1632743725', 3, 'Free International Delivery', 'There is no charge for delivery for this order.', '<p>There is no charge for delivery for this order.</p>', 'free-international-delivery-35.jpg', 0.00, 1, '1', 'International', '2021-09-27 10:55:25', '127.0.0.1', '2021-12-02 07:54:08', '127.0.0.1'),
(36, 'rw4R1F1633428819', 1, 'Royal Mail Special Delivery', 'Royal Mail Special Delivery', '<p>Royal Mail Special Delivery<br></p>', 'royal-mail-special-delivery-36.jpg', 7.50, 1, '1', 'Local', '2021-10-05 09:13:39', '127.0.0.1', '2021-11-29 05:38:20', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `kod_delivery_method_types`
--

CREATE TABLE `kod_delivery_method_types` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL,
  `display_order` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_delivery_method_types`
--

INSERT INTO `kod_delivery_method_types` (`id`, `hash_id`, `title`, `status`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'asdqw', 'Standard', '1', 1, '2021-09-30 07:57:22', '2021-09-30 07:57:22'),
(2, 'qweq3ac', 'Collection', '1', 2, '2021-09-30 07:57:40', '2021-09-30 07:57:40'),
(3, 'dqfghfjhjr4', 'Free', '1', 3, '2021-09-30 07:57:53', '2021-09-30 07:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `kod_email_templates`
--

CREATE TABLE `kod_email_templates` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `email_title` varchar(500) DEFAULT NULL,
  `email_subject` varchar(500) DEFAULT NULL,
  `email_body` varchar(500) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_email_templates`
--

INSERT INTO `kod_email_templates` (`id`, `hash_id`, `email_title`, `email_subject`, `email_body`, `status`, `created_at`, `updated_at`, `created_by_ip`, `modified_by_ip`) VALUES
(8, 'NGljtIhb5l', 'Forgot Password Email', 'Forgot Password Link', 'Hi [FIRST_NAME],\r\n\r\nPlease click the link below to reset your password.\r\n\r\nClick Link&nbsp; \r\n[LINK]\r\n<br>\r\n[PHARMACY_SIGNATURES]', 1, '2021-06-30 23:50:17', '2021-07-01 00:59:42', '127.0.0.1', '127.0.0.1'),
(9, '7GjXXX1633521422', 'Order received', 'Order received', '<p>Hi Admin,</p><p>You have received an order, please login to your website [DASHBOARD] to review it.</p><p>Thanks<br></p>', 1, '2021-10-06 10:57:02', '2021-10-06 10:57:02', '115.186.141.77', '115.186.141.77'),
(10, '56xw2c1633521445', 'Order Completed', 'Order Completed', '<p>Hi <b>[FIRST_NAME] [LAST_NAME]</b>,</p><p>Thank you for your order with us, please see the order details below.</p><div><div><b>Order Number:</b></div></div><div>[ORDER_NUMBER]</div><div><br></div><div><b>Order date &amp; time:</b></div><div>[ORDER_DATE] [ORDER_TIME]</div><div><br></div><div>[ORDER_TABLE]</div>', 1, '2021-10-06 10:57:25', '2021-10-06 10:57:25', '115.186.141.77', '115.186.141.77'),
(11, 'xMvJct1634207992', 'Contact Us', 'Contact Us', '<p>[MESSAGE]</p><p>[FULL_NAME]</p><p>[CONTACT_NO]</p><p>[EMAIL_ADDRESS]</p><p>[PHARMACY_SIGNATURE]</p>', 1, '2021-10-14 05:39:52', '2021-10-14 05:39:52', '127.0.0.1', '127.0.0.1'),
(12, 'yjudTe1638944380', 'Patient Order Transfer', 'Order Transfer', '<p>Hi <b>[FIRST_NAME] [LAST_NAME]</b>,</p><p>Your order transfer another pharmacy Please collect order this pharmacy [PHARMACY_NAME].</p><div><div><b>Order Number:</b></div></div><div>[ORDER_NUMBER]</div><div><br></div><div><b>Order date &amp; time:</b></div><div>[ORDER_DATE] [ORDER_TIME]</div><div><br></div><div>[ORDER_TABLE]</div>', 1, '2021-12-08 01:19:40', '2021-12-08 01:19:40', '127.0.0.1', '127.0.0.1'),
(13, 'OlbezZ1638944407', 'Pharmacy Order Transfer', 'Order Transfer', '<p>Hi Admin,</p><p>You have received an transfer order, please login to your website to review it.</p><p>Thanks<br></p>', 1, '2021-12-08 01:20:07', '2021-12-08 02:31:47', '127.0.0.1', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `kod_faqs`
--

CREATE TABLE `kod_faqs` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='FAQ ' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `kod_faq_categories`
--

CREATE TABLE `kod_faq_categories` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_faq_categories`
--

INSERT INTO `kod_faq_categories` (`id`, `hash_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(3, 'D1HsVfXWbo', 'Default Category', 1, '2021-06-23 07:49:10', '2021-10-06 09:50:27'),
(4, 'FZziLT1630674240', 'Cat B', 1, '2021-09-03 12:04:00', '2021-09-03 12:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `kod_filled_raf`
--

CREATE TABLE `kod_filled_raf` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `med_cat_id` int(11) DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `strength_id` int(11) DEFAULT NULL,
  `quantity_id` int(11) DEFAULT NULL,
  `raf_id` int(11) DEFAULT NULL,
  `raf_key` mediumtext DEFAULT NULL,
  `raf_value` text DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_filled_raf`
--

INSERT INTO `kod_filled_raf` (`id`, `hash_id`, `order_id`, `med_cat_id`, `medicine_id`, `strength_id`, `quantity_id`, `raf_id`, `raf_key`, `raf_value`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(1, 'OARwrLUCik', 2, 3, 18, 34, 147, 4, 'hair_loss_au_q1', 'Y', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(2, '8sLnIj8uSl', 2, 3, 18, 34, 147, 4, 'hair_loss_symp_q1', 'Y', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(3, 'S8VM8A8vqg', 2, 3, 18, 34, 147, 4, 'hair_loss_symp_q2', 'N', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(4, 'TlZihWxpjz', 2, 3, 18, 34, 147, 4, 'hair_loss_symp_q3', 'Y', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(5, '31sKmzF7lZ', 2, 3, 18, 34, 147, 4, 'hair_loss_symp_q4', 'N', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(6, 'pxlpl6wyFe', 2, 3, 18, 34, 147, 4, 'hair_loss_symp_q5', 'N', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(7, 'a0HwDIY7T2', 2, 3, 18, 34, 147, 4, 'hair_loss_symp_q6', 'N', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(8, '22tN2QEZW4', 2, 3, 18, 34, 147, 4, 'hair_loss_hlth_q1', 'N', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(9, 'N48fyVCmWS', 2, 3, 18, 34, 147, 4, 'hair_loss_hlth_q2', 'N', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(10, '9vXOO1VNhc', 2, 3, 18, 34, 147, 4, 'hair_loss_hlth_q3', 'N', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(11, 'vxzrGF9y1M', 2, 3, 18, 34, 147, 4, 'hair_loss_med_q1', 'N', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(12, 'G8hpa5Cg9y', 2, 3, 18, 34, 147, 4, 'hair_loss_agreement_q1', 'Y', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(13, 'PBdZ0gZyIU', 2, 3, 18, 34, 147, 4, 'hair_loss_agreement_q2', 'Y', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(14, '2rZATNJvb3', 2, 3, 18, 34, 147, 4, 'hair_loss_agreement_q3', 'Y', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(15, 'VqtiKTP7XT', 2, 3, 18, 34, 147, 4, 'hair_loss_agreement_q4', 'Y', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(16, 'bh4jGoeV8a', 2, 3, 18, 34, 147, 4, 'hair_loss_agreement_q5', 'Y', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(17, 'qY4zSWOkaY', 2, 3, 18, 34, 147, 4, 'hair_loss_agreement_q6', 'Y', NULL, NULL, '2021-09-08 13:17:46', '2021-09-08 13:17:46'),
(18, 'wHc0IQjmVK', 3, 3, 18, 34, 147, 4, 'hair_loss_au_q1', 'Y', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(19, 'KPS5nVndez', 3, 3, 18, 34, 147, 4, 'hair_loss_symp_q1', 'Y', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(20, 'H6naLb0T6l', 3, 3, 18, 34, 147, 4, 'hair_loss_symp_q2', 'N', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(21, 'utdCRMZCro', 3, 3, 18, 34, 147, 4, 'hair_loss_symp_q3', 'Y', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(22, '4SpdRbpUtm', 3, 3, 18, 34, 147, 4, 'hair_loss_symp_q4', 'N', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(23, 'SUlf9wOD3a', 3, 3, 18, 34, 147, 4, 'hair_loss_symp_q5', 'N', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(24, 'mRLhkZ7HSx', 3, 3, 18, 34, 147, 4, 'hair_loss_symp_q6', 'N', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(25, 'UDhXXXN4GP', 3, 3, 18, 34, 147, 4, 'hair_loss_hlth_q1', 'N', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(26, 'f1PcK3FVeK', 3, 3, 18, 34, 147, 4, 'hair_loss_hlth_q2', 'N', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(27, 'IGiceimfZG', 3, 3, 18, 34, 147, 4, 'hair_loss_hlth_q3', 'N', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(28, 'J8GwKL4EW9', 3, 3, 18, 34, 147, 4, 'hair_loss_med_q1', 'N', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(29, 'VSztCiWMMi', 3, 3, 18, 34, 147, 4, 'hair_loss_agreement_q1', 'Y', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(30, 'lGMoI6Rs1L', 3, 3, 18, 34, 147, 4, 'hair_loss_agreement_q2', 'Y', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(31, 'CXrlXFgQC8', 3, 3, 18, 34, 147, 4, 'hair_loss_agreement_q3', 'Y', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(32, 'nVerLoiHcD', 3, 3, 18, 34, 147, 4, 'hair_loss_agreement_q4', 'Y', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(33, 'J1yMprLidY', 3, 3, 18, 34, 147, 4, 'hair_loss_agreement_q5', 'Y', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(34, '6reFhASE9u', 3, 3, 18, 34, 147, 4, 'hair_loss_agreement_q6', 'Y', NULL, NULL, '2021-09-08 13:19:04', '2021-09-08 13:19:04'),
(35, 'XahxuFoS2f', 4, 3, 18, 34, 147, 4, 'hair_loss_au_q1', 'Y', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(36, 'aeEgwYPwX5', 4, 3, 18, 34, 147, 4, 'hair_loss_symp_q1', 'Y', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(37, 'k2dQJCBKEE', 4, 3, 18, 34, 147, 4, 'hair_loss_symp_q2', 'N', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(38, 'K1G8s9Wygo', 4, 3, 18, 34, 147, 4, 'hair_loss_symp_q3', 'Y', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(39, '1mDnSGVX73', 4, 3, 18, 34, 147, 4, 'hair_loss_symp_q4', 'N', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(40, 'MCeVEA5TIi', 4, 3, 18, 34, 147, 4, 'hair_loss_symp_q5', 'N', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(41, 'ryvr2bc0yu', 4, 3, 18, 34, 147, 4, 'hair_loss_symp_q6', 'N', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(42, 'nhcYNUsCm6', 4, 3, 18, 34, 147, 4, 'hair_loss_hlth_q1', 'N', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(43, 'Z0oQ7KWMQ7', 4, 3, 18, 34, 147, 4, 'hair_loss_hlth_q2', 'N', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(44, 'm2Bw5YiZNG', 4, 3, 18, 34, 147, 4, 'hair_loss_hlth_q3', 'N', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(45, 'w1yADNTp3w', 4, 3, 18, 34, 147, 4, 'hair_loss_med_q1', 'N', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(46, 'G71YcoB8oZ', 4, 3, 18, 34, 147, 4, 'hair_loss_agreement_q1', 'Y', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(47, 'Qm6CrP1HZM', 4, 3, 18, 34, 147, 4, 'hair_loss_agreement_q2', 'Y', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(48, 'rmZhBPgwBP', 4, 3, 18, 34, 147, 4, 'hair_loss_agreement_q3', 'Y', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(49, 'oTsFw5JNOc', 4, 3, 18, 34, 147, 4, 'hair_loss_agreement_q4', 'Y', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(50, 'ipMwHfmryp', 4, 3, 18, 34, 147, 4, 'hair_loss_agreement_q5', 'Y', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(51, 'TZu2iVeEDZ', 4, 3, 18, 34, 147, 4, 'hair_loss_agreement_q6', 'Y', NULL, NULL, '2021-09-14 06:09:35', '2021-09-14 06:09:35'),
(52, 'zUXUAM3NwI', 5, 3, 18, 34, 147, 4, 'hair_loss_au_q1', 'Y', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(53, 'n6hhpyLFPK', 5, 3, 18, 34, 147, 4, 'hair_loss_symp_q1', 'Y', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(54, 'NFirdNUk4w', 5, 3, 18, 34, 147, 4, 'hair_loss_symp_q2', 'N', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(55, 'VzijEPA5lO', 5, 3, 18, 34, 147, 4, 'hair_loss_symp_q3', 'Y', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(56, 'EghJNFmf8s', 5, 3, 18, 34, 147, 4, 'hair_loss_symp_q4', 'N', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(57, 'Ucps2Jm8W6', 5, 3, 18, 34, 147, 4, 'hair_loss_symp_q5', 'N', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(58, 'L2czr8wIrn', 5, 3, 18, 34, 147, 4, 'hair_loss_symp_q6', 'N', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(59, 'et0ZKFMoUW', 5, 3, 18, 34, 147, 4, 'hair_loss_hlth_q1', 'N', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(60, 'wPlhSn4hm7', 5, 3, 18, 34, 147, 4, 'hair_loss_hlth_q2', 'N', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(61, '0ZUs5DXOOZ', 5, 3, 18, 34, 147, 4, 'hair_loss_hlth_q3', 'N', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(62, 'EY8wA8oSqq', 5, 3, 18, 34, 147, 4, 'hair_loss_med_q1', 'N', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(63, 'w1pMQ8sE15', 5, 3, 18, 34, 147, 4, 'hair_loss_agreement_q1', 'Y', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(64, '1ehZ15reTR', 5, 3, 18, 34, 147, 4, 'hair_loss_agreement_q2', 'Y', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(65, 'bYi79Ha7lt', 5, 3, 18, 34, 147, 4, 'hair_loss_agreement_q3', 'Y', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(66, '5RcN6APf4y', 5, 3, 18, 34, 147, 4, 'hair_loss_agreement_q4', 'Y', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(67, 'WRsQtCEIAQ', 5, 3, 18, 34, 147, 4, 'hair_loss_agreement_q5', 'Y', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(68, 'PnTQAH0njG', 5, 3, 18, 34, 147, 4, 'hair_loss_agreement_q6', 'Y', NULL, NULL, '2021-09-14 06:42:26', '2021-09-14 06:42:26'),
(69, '97bTSFVpQA', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q1', 'Y', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(70, 'd0tzwML9aN', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q2', 'Y', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(71, 'xqrIW2aGwn', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q3', 'N', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(72, 'EV8nTHHEZV', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_sympt_q1', 'Y', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(73, 'ldfJebA2vm', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q1', 'N', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(74, 'qXIcToVXdX', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q2', 'N', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(75, 'KwhbFaaWGo', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q3', 'N', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(76, 'JzFCqoyg75', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q4', 'N', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(77, 'vGncpcow5i', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q5', 'N', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(78, 'HaNvT3Omwf', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q6', 'N', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(79, '8ODV7AgyTy', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q7', 'N', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(80, 'gISjAH8oYF', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q1', 'N', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(81, 'IRuYxr4IsF', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q2', 'Y', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(82, 'fV6dw1ExK1', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q3', 'N', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(83, 'njbAOsr06y', 6, 1, 1, 1, 1, 3, 'erectile_dysfunction_agreement_q1', 'Y', NULL, NULL, '2021-09-14 07:46:31', '2021-09-14 07:46:31'),
(84, 'MCV1YuZl5O', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q1', 'Y', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(85, 'BhlTHGtjN3', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q2', 'Y', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(86, 'x9RJ0ZnshG', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q3', 'N', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(87, '1rpJZT5OwH', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_sympt_q1', 'Y', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(88, 'JMbOQH9D3R', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q1', 'N', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(89, 'Jm7PVBie2s', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q2', 'N', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(90, '3VRHety0qQ', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q3', 'N', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(91, 'lGCBT5TDj4', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q4', 'N', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(92, 'iiu6EvKaC8', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q5', 'N', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(93, 'GcUd1JtBKi', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q6', 'N', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(94, 'zuXZDnkQfZ', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q7', 'N', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(95, 'dZl996kshT', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q1', 'N', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(96, 'zLqY4PWZLP', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q2', 'N', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(97, 'pvKXRZF0VH', 8, 1, 1, 1, 1, 3, 'erectile_dysfunction_agreement_q1', 'Y', NULL, NULL, '2021-09-28 09:29:05', '2021-09-28 09:29:05'),
(98, 'LEj11T93HM', 9, 9, 11, 27, 132, 10, 'acid_reflux_smpt_q1', 'Y', NULL, NULL, '2021-09-28 11:07:33', '2021-09-28 11:07:33'),
(99, 'UlsN5TwSPg', 9, 9, 11, 27, 132, 10, 'acid_reflux_smpt_q2', 'N', NULL, NULL, '2021-09-28 11:07:33', '2021-09-28 11:07:33'),
(100, 'CCQMJYof96', 9, 9, 11, 27, 132, 10, 'acid_reflux_hlth_q1', 'N', NULL, NULL, '2021-09-28 11:07:33', '2021-09-28 11:07:33'),
(101, 'ee9tVGnq2J', 9, 9, 11, 27, 132, 10, 'acid_reflux_hlth_q2', 'N', NULL, NULL, '2021-09-28 11:07:33', '2021-09-28 11:07:33'),
(102, '4KU1NtgADr', 9, 9, 11, 27, 132, 10, 'acid_reflux_hlth_q3', 'N', NULL, NULL, '2021-09-28 11:07:33', '2021-09-28 11:07:33'),
(103, 'P1IdUFFqkh', 9, 9, 11, 27, 132, 10, 'acid_reflux_hlth_q4', 'N', NULL, NULL, '2021-09-28 11:07:33', '2021-09-28 11:07:33'),
(104, 'xW2kVQ3lxu', 9, 9, 11, 27, 132, 10, 'acid_reflux_med_q1', 'N', NULL, NULL, '2021-09-28 11:07:33', '2021-09-28 11:07:33'),
(105, 'RE4XAA1p6R', 9, 9, 11, 27, 132, 10, 'acid_reflux_agreement_q1', 'Y', NULL, NULL, '2021-09-28 11:07:33', '2021-09-28 11:07:33'),
(106, '28860MzUp3', 9, 9, 11, 27, 132, 10, 'acid_reflux_agreement_q2', 'Y', NULL, NULL, '2021-09-28 11:07:33', '2021-09-28 11:07:33'),
(107, 'WsF3wlK4N7', 9, 9, 11, 27, 132, 10, 'acid_reflux_agreement_q3', 'Y', NULL, NULL, '2021-09-28 11:07:33', '2021-09-28 11:07:33'),
(108, 'AFAU5NnGoU', 9, 9, 11, 27, 132, 10, 'acid_reflux_agreement_q4', 'Y', NULL, NULL, '2021-09-28 11:07:33', '2021-09-28 11:07:33'),
(109, 'QEEvIlJuYv', 10, 3, 18, 34, 144, 4, 'hair_loss_au_q1', 'Y', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(110, 'cBFqVSfMMY', 10, 3, 18, 34, 144, 4, 'hair_loss_symp_q1', 'Y', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(111, 'YCiSBTlXch', 10, 3, 18, 34, 144, 4, 'hair_loss_symp_q2', 'N', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(112, 'cpNOQJ2jNQ', 10, 3, 18, 34, 144, 4, 'hair_loss_symp_q3', 'N', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(113, 'ftUFeiPIC7', 10, 3, 18, 34, 144, 4, 'hair_loss_symp_q4', 'N', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(114, 'tgE0T15BaR', 10, 3, 18, 34, 144, 4, 'hair_loss_symp_q5', 'N', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(115, '4vSTP2g0CC', 10, 3, 18, 34, 144, 4, 'hair_loss_symp_q6', 'N', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(116, 'lwUKDbU9Zt', 10, 3, 18, 34, 144, 4, 'hair_loss_hlth_q1', 'N', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(117, 'gdYNfq2zpx', 10, 3, 18, 34, 144, 4, 'hair_loss_hlth_q2', 'N', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(118, 'uUZ4i2IChQ', 10, 3, 18, 34, 144, 4, 'hair_loss_hlth_q3', 'N', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(119, 'qxSg3sCApe', 10, 3, 18, 34, 144, 4, 'hair_loss_med_q1', 'Y', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(120, '5YS0C0wgpZ', 10, 3, 18, 34, 144, 4, 'hair_loss_med_q2', 'N', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(121, 'XEgQJWitEw', 10, 3, 18, 34, 144, 4, 'hair_loss_agreement_q1', 'Y', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(122, 'HQ4zcTlFXy', 10, 3, 18, 34, 144, 4, 'hair_loss_agreement_q2', 'Y', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(123, 'BI4vAGVrSU', 10, 3, 18, 34, 144, 4, 'hair_loss_agreement_q3', 'Y', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(124, 'RG59396Gnn', 10, 3, 18, 34, 144, 4, 'hair_loss_agreement_q4', 'Y', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(125, 'ZVJq7DQHzQ', 10, 3, 18, 34, 144, 4, 'hair_loss_agreement_q5', 'Y', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(126, 'IH4rwu7wEt', 10, 3, 18, 34, 144, 4, 'hair_loss_agreement_q6', 'Y', NULL, NULL, '2021-09-28 11:43:06', '2021-09-28 11:43:06'),
(127, 'ohBOd7GGtA', 11, 13, 22, 38, 160, 19, 'genetil_herpes_au_q1', 'Y', NULL, NULL, '2021-09-28 11:54:17', '2021-09-28 11:54:17'),
(128, '5jgQFR7Enx', 11, 13, 22, 38, 160, 19, 'genetil_herpes_au_q2', 'Y', NULL, NULL, '2021-09-28 11:54:17', '2021-09-28 11:54:17'),
(129, 'QeMFFJLQBW', 11, 13, 22, 38, 160, 19, 'genetil_herpes_smpt_q1', 'N', NULL, NULL, '2021-09-28 11:54:17', '2021-09-28 11:54:17'),
(130, 'bgJVPLCmE5', 11, 13, 22, 38, 160, 19, 'genetil_herpes_hlth_q1', 'N', NULL, NULL, '2021-09-28 11:54:17', '2021-09-28 11:54:17'),
(131, 'fHjYKG1ela', 11, 13, 22, 38, 160, 19, 'genetil_herpes_hlth_q2', 'N', NULL, NULL, '2021-09-28 11:54:17', '2021-09-28 11:54:17'),
(132, 'xUDyhoFiav', 11, 13, 22, 38, 160, 19, 'genetil_herpes_hlth_q3', 'N', NULL, NULL, '2021-09-28 11:54:17', '2021-09-28 11:54:17'),
(133, 'FftN14v8Bu', 11, 13, 22, 38, 160, 19, 'genetil_herpes_med_q1', 'N', NULL, NULL, '2021-09-28 11:54:17', '2021-09-28 11:54:17'),
(134, 'CA4hj4QD6C', 11, 13, 22, 38, 160, 19, 'genetil_herpes_agreement_q1', 'Y', NULL, NULL, '2021-09-28 11:54:17', '2021-09-28 11:54:17'),
(135, 'JmkQlA4cO4', 11, 13, 22, 38, 160, 19, 'genetil_herpes_agreement_q2', 'Y', NULL, NULL, '2021-09-28 11:54:17', '2021-09-28 11:54:17'),
(136, 'Gar9sGvE84', 11, 13, 22, 38, 160, 19, 'genetil_herpes_agreement_q3', 'Y', NULL, NULL, '2021-09-28 11:54:17', '2021-09-28 11:54:17'),
(137, 'LflohTXGRS', 11, 13, 22, 38, 160, 19, 'genetil_herpes_agreement_q4', 'Y', NULL, NULL, '2021-09-28 11:54:17', '2021-09-28 11:54:17'),
(138, '8xoZClMpqr', 12, 7, 26, 42, 175, 6, 'acne_au_q1', 'Y', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(139, 'TVnI3wf8D2', 12, 7, 26, 42, 175, 6, 'acne_hlth_q1', 'N', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(140, 'Mcpb6hTTR1', 12, 7, 26, 42, 175, 6, 'acne_hlth_q2', 'N', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(141, 'M7HPeBhhpi', 12, 7, 26, 42, 175, 6, 'acne_hlth_q3', 'N', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(142, 'bF4fgNnFt8', 12, 7, 26, 42, 175, 6, 'acne_hlth_q4', 'Y', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(143, 'a3IgEjEBhi', 12, 7, 26, 42, 175, 6, 'acne_med_q1', 'N', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(144, 'KEaYsxDkkX', 12, 7, 26, 42, 175, 6, 'acne_agreement_q1', 'Y', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(145, '8xH8k3T6AX', 12, 7, 26, 42, 175, 6, 'acne_agreement_q2', 'Y', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(146, 'kL0giylEWj', 12, 7, 26, 42, 175, 6, 'acne_agreement_q3', 'Y', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(147, 'sdvPEpfBx9', 12, 7, 26, 42, 175, 6, 'acne_agreement_q4', 'Y', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(148, 'XZDmdEEyhX', 12, 7, 26, 42, 175, 6, 'acne_agreement_q5', 'Y', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(149, 'bqRrPYCyEF', 12, 7, 26, 42, 175, 6, 'acne_agreement_q6', 'Y', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(150, '9cYjCEcRg4', 12, 7, 26, 42, 175, 6, 'acne_agreement_q7', 'Y', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(151, '7MZ9EpFIoh', 12, 7, 26, 42, 175, 6, 'acne_agreement_q8', 'Y', NULL, NULL, '2021-09-28 17:32:32', '2021-09-28 17:32:32'),
(152, 'TPj7PsO90x', 13, 7, 26, 42, 175, 6, 'acne_au_q1', 'Y', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(153, 'YTcDl1KMXS', 13, 7, 26, 42, 175, 6, 'acne_hlth_q1', 'N', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(154, '9qi4lMOItM', 13, 7, 26, 42, 175, 6, 'acne_hlth_q2', 'N', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(155, 'yBqn5mH7uw', 13, 7, 26, 42, 175, 6, 'acne_hlth_q3', 'N', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(156, '07rigUrJ0A', 13, 7, 26, 42, 175, 6, 'acne_hlth_q4', 'Y', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(157, 'JLkTGY2e9f', 13, 7, 26, 42, 175, 6, 'acne_med_q1', 'N', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(158, '9aCPDT9fVq', 13, 7, 26, 42, 175, 6, 'acne_agreement_q1', 'Y', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(159, 'tEYFInLfrE', 13, 7, 26, 42, 175, 6, 'acne_agreement_q2', 'Y', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(160, 'RGZorylAGT', 13, 7, 26, 42, 175, 6, 'acne_agreement_q3', 'Y', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(161, 'cUlKRm2Jfk', 13, 7, 26, 42, 175, 6, 'acne_agreement_q4', 'Y', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(162, '8TECUAdV6C', 13, 7, 26, 42, 175, 6, 'acne_agreement_q5', 'Y', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(163, 'nDZUVXtXgl', 13, 7, 26, 42, 175, 6, 'acne_agreement_q6', 'Y', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(164, 'MnwthCImmb', 13, 7, 26, 42, 175, 6, 'acne_agreement_q7', 'Y', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(165, 'Yts19qXZl5', 13, 7, 26, 42, 175, 6, 'acne_agreement_q8', 'Y', NULL, NULL, '2021-09-28 17:38:24', '2021-09-28 17:38:24'),
(166, 'bNzxgC0qPs', 14, 7, 26, 42, 175, 6, 'acne_au_q1', 'Y', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(167, '8DHWOZrLYn', 14, 7, 26, 42, 175, 6, 'acne_hlth_q1', 'N', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(168, 'A5y3VlZeOb', 14, 7, 26, 42, 175, 6, 'acne_hlth_q2', 'N', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(169, '2FY5oAfA8S', 14, 7, 26, 42, 175, 6, 'acne_hlth_q3', 'N', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(170, 'fkS7vCF2n8', 14, 7, 26, 42, 175, 6, 'acne_hlth_q4', 'Y', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(171, 'IFvnTuItcx', 14, 7, 26, 42, 175, 6, 'acne_med_q1', 'Y', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(172, 'Zju4E7kt2a', 14, 7, 26, 42, 175, 6, 'acne_med_q2', 'N', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(173, 'A7xMESahNB', 14, 7, 26, 42, 175, 6, 'acne_agreement_q1', 'Y', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(174, '3x8joavZh9', 14, 7, 26, 42, 175, 6, 'acne_agreement_q2', 'Y', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(175, 'pes6HClM5g', 14, 7, 26, 42, 175, 6, 'acne_agreement_q3', 'Y', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(176, '2f6aWKZMXC', 14, 7, 26, 42, 175, 6, 'acne_agreement_q4', 'Y', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(177, '9FGIB5iMed', 14, 7, 26, 42, 175, 6, 'acne_agreement_q5', 'Y', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(178, 'LHM2PmZjKI', 14, 7, 26, 42, 175, 6, 'acne_agreement_q6', 'Y', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(179, 'uKrlnVZfK4', 14, 7, 26, 42, 175, 6, 'acne_agreement_q7', 'Y', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(180, 'zVZTLpJOWp', 14, 7, 26, 42, 175, 6, 'acne_agreement_q8', 'Y', NULL, NULL, '2021-09-29 09:14:07', '2021-09-29 09:14:07'),
(181, 'YO2LuVzAJu', 15, 7, 28, 44, 180, 6, 'acne_au_q1', 'Y', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(182, '7xyTWJH7vP', 15, 7, 28, 44, 180, 6, 'acne_hlth_q1', 'N', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(183, 'gjJqu5gr8P', 15, 7, 28, 44, 180, 6, 'acne_hlth_q2', 'N', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(184, 'C3ivBwBjqF', 15, 7, 28, 44, 180, 6, 'acne_hlth_q3', 'N', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(185, 'B4k1LZQbgU', 15, 7, 28, 44, 180, 6, 'acne_hlth_q4', 'Y', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(186, '8KpPKJfz3L', 15, 7, 28, 44, 180, 6, 'acne_med_q1', 'N', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(187, 'mXdzc3KBXZ', 15, 7, 28, 44, 180, 6, 'acne_agreement_q1', 'Y', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(188, 'wJCHhB70Us', 15, 7, 28, 44, 180, 6, 'acne_agreement_q2', 'Y', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(189, 'q6IGwP1kjP', 15, 7, 28, 44, 180, 6, 'acne_agreement_q3', 'Y', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(190, '1W9DDRsSyV', 15, 7, 28, 44, 180, 6, 'acne_agreement_q4', 'Y', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(191, 'O0YPdwfnNo', 15, 7, 28, 44, 180, 6, 'acne_agreement_q5', 'Y', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(192, 'IYTmF2aooJ', 15, 7, 28, 44, 180, 6, 'acne_agreement_q6', 'Y', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(193, '9hmWdIAGOx', 15, 7, 28, 44, 180, 6, 'acne_agreement_q7', 'Y', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(194, '7au2wSpfvh', 15, 7, 28, 44, 180, 6, 'acne_agreement_q8', 'Y', NULL, NULL, '2021-09-29 09:15:13', '2021-09-29 09:15:13'),
(195, 'GuVBe7brmK', 16, 5, 35, 52, 200, 7, 'hayfever_hlth_q1', 'Y', NULL, NULL, '2021-09-29 09:29:33', '2021-09-29 09:29:33'),
(196, 'hA4HEEYFIg', 16, 5, 35, 52, 200, 7, 'hayfever_hlth_q2', 'N', NULL, NULL, '2021-09-29 09:29:33', '2021-09-29 09:29:33'),
(197, 'E08zUDkkiB', 16, 5, 35, 52, 200, 7, 'hayfever_hlth_q3', 'N', NULL, NULL, '2021-09-29 09:29:33', '2021-09-29 09:29:33'),
(198, 'bQBhTZxvWP', 16, 5, 35, 52, 200, 7, 'hayfever_hlth_q4', 'Y', NULL, NULL, '2021-09-29 09:29:33', '2021-09-29 09:29:33'),
(199, 'thpxuwoa9r', 16, 5, 35, 52, 200, 7, 'hayfever_med_q1', 'Y', NULL, NULL, '2021-09-29 09:29:33', '2021-09-29 09:29:33'),
(200, 'DprVrVByIl', 16, 5, 35, 52, 200, 7, 'hayfever_med_q2', 'Y', NULL, NULL, '2021-09-29 09:29:33', '2021-09-29 09:29:33'),
(201, 'JGSn8Ty7Wv', 16, 5, 35, 52, 200, 7, 'hayfever_med_q3', 'N', NULL, NULL, '2021-09-29 09:29:33', '2021-09-29 09:29:33'),
(202, 'RkC4r77Gsb', 16, 5, 35, 52, 200, 7, 'hayfever_agreement_q1', 'Y', NULL, NULL, '2021-09-29 09:29:33', '2021-09-29 09:29:33'),
(203, 'z9Nlx9DSdq', 16, 5, 35, 52, 200, 7, 'hayfever_agreement_q2', 'Y', NULL, NULL, '2021-09-29 09:29:33', '2021-09-29 09:29:33'),
(204, '76zSHCjs4w', 16, 5, 35, 52, 200, 7, 'hayfever_agreement_q3', 'Y', NULL, NULL, '2021-09-29 09:29:33', '2021-09-29 09:29:33'),
(205, 'PQ0tlHkSaO', 16, 5, 35, 52, 200, 7, 'hayfever_agreement_q4', 'Y', NULL, NULL, '2021-09-29 09:29:33', '2021-09-29 09:29:33'),
(206, '7ozXJfOV1M', 17, 5, 35, 52, 201, 7, 'hayfever_hlth_q1', 'Y', NULL, NULL, '2021-09-29 09:30:20', '2021-09-29 09:30:20'),
(207, 'fedBLctN2e', 17, 5, 35, 52, 201, 7, 'hayfever_hlth_q2', 'N', NULL, NULL, '2021-09-29 09:30:20', '2021-09-29 09:30:20'),
(208, 'loID5Ic6gZ', 17, 5, 35, 52, 201, 7, 'hayfever_hlth_q3', 'N', NULL, NULL, '2021-09-29 09:30:20', '2021-09-29 09:30:20'),
(209, 'GQabaAhZE0', 17, 5, 35, 52, 201, 7, 'hayfever_hlth_q4', 'Y', NULL, NULL, '2021-09-29 09:30:20', '2021-09-29 09:30:20'),
(210, '8DaYZtDFFu', 17, 5, 35, 52, 201, 7, 'hayfever_med_q1', 'Y', NULL, NULL, '2021-09-29 09:30:20', '2021-09-29 09:30:20'),
(211, 'ovR60mF15Z', 17, 5, 35, 52, 201, 7, 'hayfever_med_q2', 'Y', NULL, NULL, '2021-09-29 09:30:20', '2021-09-29 09:30:20'),
(212, 'xMfEoHHqTe', 17, 5, 35, 52, 201, 7, 'hayfever_med_q3', 'N', NULL, NULL, '2021-09-29 09:30:20', '2021-09-29 09:30:20'),
(213, 'fj6zAexnt0', 17, 5, 35, 52, 201, 7, 'hayfever_agreement_q1', 'Y', NULL, NULL, '2021-09-29 09:30:20', '2021-09-29 09:30:20'),
(214, 'PdT1ndfVmS', 17, 5, 35, 52, 201, 7, 'hayfever_agreement_q2', 'Y', NULL, NULL, '2021-09-29 09:30:20', '2021-09-29 09:30:20'),
(215, 'I59pTGOAHd', 17, 5, 35, 52, 201, 7, 'hayfever_agreement_q3', 'Y', NULL, NULL, '2021-09-29 09:30:20', '2021-09-29 09:30:20'),
(216, 'bnGZhMzZHe', 17, 5, 35, 52, 201, 7, 'hayfever_agreement_q4', 'Y', NULL, NULL, '2021-09-29 09:30:20', '2021-09-29 09:30:20'),
(217, 'dFNujAmxYL', 18, 5, 36, 53, 203, 7, 'hayfever_hlth_q1', 'Y', NULL, NULL, '2021-09-29 09:42:41', '2021-09-29 09:42:41'),
(218, '6NPGeoi2PC', 18, 5, 36, 53, 203, 7, 'hayfever_hlth_q2', 'N', NULL, NULL, '2021-09-29 09:42:41', '2021-09-29 09:42:41'),
(219, 'M2IPwLmaEP', 18, 5, 36, 53, 203, 7, 'hayfever_hlth_q3', 'N', NULL, NULL, '2021-09-29 09:42:41', '2021-09-29 09:42:41'),
(220, 'bDR1VOYZ48', 18, 5, 36, 53, 203, 7, 'hayfever_hlth_q4', 'Y', NULL, NULL, '2021-09-29 09:42:41', '2021-09-29 09:42:41'),
(221, 'KuoHxHsIm0', 18, 5, 36, 53, 203, 7, 'hayfever_med_q1', 'Y', NULL, NULL, '2021-09-29 09:42:41', '2021-09-29 09:42:41'),
(222, 'tzDycJhJly', 18, 5, 36, 53, 203, 7, 'hayfever_med_q2', 'N', NULL, NULL, '2021-09-29 09:42:41', '2021-09-29 09:42:41'),
(223, 'QisMF9kcXA', 18, 5, 36, 53, 203, 7, 'hayfever_med_q3', 'N', NULL, NULL, '2021-09-29 09:42:41', '2021-09-29 09:42:41'),
(224, 'xPHXlyRnON', 18, 5, 36, 53, 203, 7, 'hayfever_agreement_q1', 'Y', NULL, NULL, '2021-09-29 09:42:41', '2021-09-29 09:42:41'),
(225, 'UZKLcDpY6d', 18, 5, 36, 53, 203, 7, 'hayfever_agreement_q2', 'Y', NULL, NULL, '2021-09-29 09:42:41', '2021-09-29 09:42:41'),
(226, '8Oc2vGuSql', 18, 5, 36, 53, 203, 7, 'hayfever_agreement_q3', 'Y', NULL, NULL, '2021-09-29 09:42:41', '2021-09-29 09:42:41'),
(227, 'DZv987u6x2', 18, 5, 36, 53, 203, 7, 'hayfever_agreement_q4', 'Y', NULL, NULL, '2021-09-29 09:42:41', '2021-09-29 09:42:41'),
(228, 'RUDdVHPwxS', 19, 16, 39, 56, 207, 32, 'cold_sore_au_q1', 'Y', NULL, NULL, '2021-09-29 09:48:29', '2021-09-29 09:48:29'),
(229, '1HIXDlh3Jv', 19, 16, 39, 56, 207, 32, 'cold_sore_au_q2', 'Y', NULL, NULL, '2021-09-29 09:48:29', '2021-09-29 09:48:29'),
(230, '0uOd6Gkfq1', 19, 16, 39, 56, 207, 32, 'cold_sore_smtp_q1', 'N', NULL, NULL, '2021-09-29 09:48:29', '2021-09-29 09:48:29'),
(231, 'AH1jRAFr9k', 19, 16, 39, 56, 207, 32, 'cold_sore_hlth_q1', 'N', NULL, NULL, '2021-09-29 09:48:29', '2021-09-29 09:48:29'),
(232, '2zsID7HKrV', 19, 16, 39, 56, 207, 32, 'cold_sore_hlth_q2', 'N', NULL, NULL, '2021-09-29 09:48:29', '2021-09-29 09:48:29'),
(233, 'zibUiCyA6l', 19, 16, 39, 56, 207, 32, 'cold_sore_hlth_q3', 'N', NULL, NULL, '2021-09-29 09:48:29', '2021-09-29 09:48:29'),
(234, 'DIQq7f1ZaP', 19, 16, 39, 56, 207, 32, 'cold_sore_med_q1', 'Y', NULL, NULL, '2021-09-29 09:48:29', '2021-09-29 09:48:29'),
(235, 'oUqzDKMsAe', 19, 16, 39, 56, 207, 32, 'cold_sore_med_q2', 'N', NULL, NULL, '2021-09-29 09:48:29', '2021-09-29 09:48:29'),
(236, 'fpNPIVuQkU', 19, 16, 39, 56, 207, 32, 'cold_sore_agreement_q1', 'Y', NULL, NULL, '2021-09-29 09:48:29', '2021-09-29 09:48:29'),
(237, 'Q7sVLJlMif', 19, 16, 39, 56, 207, 32, 'cold_sore_agreement_q2', 'Y', NULL, NULL, '2021-09-29 09:48:29', '2021-09-29 09:48:29'),
(238, 'GqD2scNN7q', 19, 16, 39, 56, 207, 32, 'cold_sore_agreement_q3', 'Y', NULL, NULL, '2021-09-29 09:48:29', '2021-09-29 09:48:29'),
(239, 'vB7pNxRM5Q', 20, 16, 39, 56, 207, 32, 'cold_sore_au_q1', 'Y', NULL, NULL, '2021-09-29 09:49:29', '2021-09-29 09:49:29'),
(240, 'mKKdtDuGKY', 20, 16, 39, 56, 207, 32, 'cold_sore_au_q2', 'Y', NULL, NULL, '2021-09-29 09:49:29', '2021-09-29 09:49:29'),
(241, 'yW8IRtzpLW', 20, 16, 39, 56, 207, 32, 'cold_sore_smtp_q1', 'N', NULL, NULL, '2021-09-29 09:49:29', '2021-09-29 09:49:29'),
(242, 'lbk0SmwxXp', 20, 16, 39, 56, 207, 32, 'cold_sore_hlth_q1', 'N', NULL, NULL, '2021-09-29 09:49:29', '2021-09-29 09:49:29'),
(243, 'HLiuXDQo2p', 20, 16, 39, 56, 207, 32, 'cold_sore_hlth_q2', 'N', NULL, NULL, '2021-09-29 09:49:29', '2021-09-29 09:49:29'),
(244, 'fwwdlS1Uqp', 20, 16, 39, 56, 207, 32, 'cold_sore_hlth_q3', 'N', NULL, NULL, '2021-09-29 09:49:29', '2021-09-29 09:49:29'),
(245, 'fIah80gwsJ', 20, 16, 39, 56, 207, 32, 'cold_sore_med_q1', 'N', NULL, NULL, '2021-09-29 09:49:29', '2021-09-29 09:49:29'),
(246, '9Ovf6BPZ02', 20, 16, 39, 56, 207, 32, 'cold_sore_agreement_q1', 'Y', NULL, NULL, '2021-09-29 09:49:29', '2021-09-29 09:49:29'),
(247, 'yZtcHCVVX5', 20, 16, 39, 56, 207, 32, 'cold_sore_agreement_q2', 'Y', NULL, NULL, '2021-09-29 09:49:29', '2021-09-29 09:49:29'),
(248, 'VX6EGtb6jC', 20, 16, 39, 56, 207, 32, 'cold_sore_agreement_q3', 'Y', NULL, NULL, '2021-09-29 09:49:29', '2021-09-29 09:49:29'),
(249, '3gkieJP61x', 21, 17, 42, 59, 216, 12, 'anti_malaria_hlth_q1', 'N', NULL, NULL, '2021-09-29 10:04:19', '2021-09-29 10:04:19'),
(250, 'Rvk9ruWAmd', 21, 17, 42, 59, 216, 12, 'anti_malaria_hlth_q2', 'N', NULL, NULL, '2021-09-29 10:04:19', '2021-09-29 10:04:19'),
(251, 'fKZHhbB8nw', 21, 17, 42, 59, 216, 12, 'anti_malaria_hlth_q3', 'N', NULL, NULL, '2021-09-29 10:04:19', '2021-09-29 10:04:19'),
(252, 'vLfuUYXVn3', 21, 17, 42, 59, 216, 12, 'anti_malaria_hlth_q4', 'N', NULL, NULL, '2021-09-29 10:04:19', '2021-09-29 10:04:19'),
(253, '4dm067CrC4', 21, 17, 42, 59, 216, 12, 'anti_malaria_med_q1', 'Y', NULL, NULL, '2021-09-29 10:04:19', '2021-09-29 10:04:19'),
(254, 'WOxgckUx2i', 21, 17, 42, 59, 216, 12, 'anti_malaria_med_q2', 'N', NULL, NULL, '2021-09-29 10:04:19', '2021-09-29 10:04:19'),
(255, 'eHqUV3Prgf', 21, 17, 42, 59, 216, 12, 'anti_malaria_agreement_q1', 'Y', NULL, NULL, '2021-09-29 10:04:19', '2021-09-29 10:04:19'),
(256, 'MS8RooMBRc', 21, 17, 42, 59, 216, 12, 'anti_malaria_agreement_q2', 'Y', NULL, NULL, '2021-09-29 10:04:19', '2021-09-29 10:04:19'),
(257, '91RpqDL6MW', 21, 17, 42, 59, 216, 12, 'anti_malaria_agreement_q3', 'Y', NULL, NULL, '2021-09-29 10:04:19', '2021-09-29 10:04:19'),
(258, 'W030CeeIRy', 22, 17, 42, 59, 217, 12, 'anti_malaria_hlth_q1', 'N', NULL, NULL, '2021-09-29 10:04:55', '2021-09-29 10:04:55'),
(259, 'MyqWisxIt9', 22, 17, 42, 59, 217, 12, 'anti_malaria_hlth_q2', 'N', NULL, NULL, '2021-09-29 10:04:55', '2021-09-29 10:04:55'),
(260, 'Kg9AKMXMZq', 22, 17, 42, 59, 217, 12, 'anti_malaria_hlth_q3', 'N', NULL, NULL, '2021-09-29 10:04:55', '2021-09-29 10:04:55'),
(261, 'NlCotEtym0', 22, 17, 42, 59, 217, 12, 'anti_malaria_hlth_q4', 'N', NULL, NULL, '2021-09-29 10:04:55', '2021-09-29 10:04:55'),
(262, '5VNzc2zj7T', 22, 17, 42, 59, 217, 12, 'anti_malaria_med_q1', 'N', NULL, NULL, '2021-09-29 10:04:55', '2021-09-29 10:04:55'),
(263, 'jT4v9oTITs', 22, 17, 42, 59, 217, 12, 'anti_malaria_agreement_q1', 'Y', NULL, NULL, '2021-09-29 10:04:55', '2021-09-29 10:04:55'),
(264, 'd4VOQlfy09', 22, 17, 42, 59, 217, 12, 'anti_malaria_agreement_q2', 'Y', NULL, NULL, '2021-09-29 10:04:55', '2021-09-29 10:04:55'),
(265, 'hR0f7SfBov', 22, 17, 42, 59, 217, 12, 'anti_malaria_agreement_q3', 'Y', NULL, NULL, '2021-09-29 10:04:55', '2021-09-29 10:04:55'),
(266, '5kkLb5wS9I', 23, 15, 45, 62, 242, 33, 'flu_treatment_au_q1', 'Y', NULL, NULL, '2021-09-29 10:33:55', '2021-09-29 10:33:55'),
(267, '6eHQpcVdOZ', 23, 15, 45, 62, 242, 33, 'flu_treatment_sympt_q1', 'N', NULL, NULL, '2021-09-29 10:33:55', '2021-09-29 10:33:55'),
(268, 'EBlhRwwYVK', 23, 15, 45, 62, 242, 33, 'flu_treatment_hlth_q1', 'N', NULL, NULL, '2021-09-29 10:33:55', '2021-09-29 10:33:55'),
(269, 'YAPiEfP4QW', 23, 15, 45, 62, 242, 33, 'flu_treatment_hlth_q2', 'N', NULL, NULL, '2021-09-29 10:33:55', '2021-09-29 10:33:55'),
(270, 'FJh9hxEj9F', 23, 15, 45, 62, 242, 33, 'flu_treatment_hlth_q3', 'Y', NULL, NULL, '2021-09-29 10:33:55', '2021-09-29 10:33:55'),
(271, 'zFoKTG7ucY', 23, 15, 45, 62, 242, 33, 'flu_treatment_med_q1', 'Y', NULL, NULL, '2021-09-29 10:33:55', '2021-09-29 10:33:55'),
(272, 'XKKzNGz9pn', 23, 15, 45, 62, 242, 33, 'flu_treatment_med_q2', 'N', NULL, NULL, '2021-09-29 10:33:55', '2021-09-29 10:33:55'),
(273, '7FvLuHjWbR', 23, 15, 45, 62, 242, 33, 'flu_treatment_agreement_q1', 'Y', NULL, NULL, '2021-09-29 10:33:55', '2021-09-29 10:33:55'),
(274, 'h45iDnYPOf', 23, 15, 45, 62, 242, 33, 'flu_treatment_agreement_q2', 'Y', NULL, NULL, '2021-09-29 10:33:55', '2021-09-29 10:33:55'),
(275, '0zvT4ut6KW', 23, 15, 45, 62, 242, 33, 'flu_treatment_agreement_q3', 'Y', NULL, NULL, '2021-09-29 10:33:55', '2021-09-29 10:33:55'),
(276, 'izJJCHfgW4', 23, 15, 45, 62, 242, 33, 'flu_treatment_agreement_q4', 'Y', NULL, NULL, '2021-09-29 10:33:55', '2021-09-29 10:33:55'),
(277, 'ZkmiktCySv', 23, 15, 45, 62, 242, 33, 'flu_treatment_agreement_q5', 'Y', NULL, NULL, '2021-09-29 10:33:55', '2021-09-29 10:33:55'),
(278, 'k1iIebVRwo', 24, 15, 45, 62, 242, 33, 'flu_treatment_au_q1', 'Y', NULL, NULL, '2021-09-29 10:34:57', '2021-09-29 10:34:57'),
(279, 'f28YkFWBb0', 24, 15, 45, 62, 242, 33, 'flu_treatment_sympt_q1', 'N', NULL, NULL, '2021-09-29 10:34:57', '2021-09-29 10:34:57'),
(280, 'bbpP9TL6Pq', 24, 15, 45, 62, 242, 33, 'flu_treatment_hlth_q1', 'N', NULL, NULL, '2021-09-29 10:34:57', '2021-09-29 10:34:57'),
(281, 'Lb3VCzmM9t', 24, 15, 45, 62, 242, 33, 'flu_treatment_hlth_q2', 'N', NULL, NULL, '2021-09-29 10:34:57', '2021-09-29 10:34:57'),
(282, 'T5pNpP4cLq', 24, 15, 45, 62, 242, 33, 'flu_treatment_hlth_q3', 'Y', NULL, NULL, '2021-09-29 10:34:57', '2021-09-29 10:34:57'),
(283, '1E0bDxZu24', 24, 15, 45, 62, 242, 33, 'flu_treatment_med_q1', 'N', NULL, NULL, '2021-09-29 10:34:57', '2021-09-29 10:34:57'),
(284, '4Cdw4l7KbG', 24, 15, 45, 62, 242, 33, 'flu_treatment_agreement_q1', 'Y', NULL, NULL, '2021-09-29 10:34:57', '2021-09-29 10:34:57'),
(285, '6ZOJ4aTNcS', 24, 15, 45, 62, 242, 33, 'flu_treatment_agreement_q2', 'Y', NULL, NULL, '2021-09-29 10:34:57', '2021-09-29 10:34:57'),
(286, 'rRCksMESBL', 24, 15, 45, 62, 242, 33, 'flu_treatment_agreement_q3', 'Y', NULL, NULL, '2021-09-29 10:34:57', '2021-09-29 10:34:57'),
(287, 'cPVlTRJi3n', 24, 15, 45, 62, 242, 33, 'flu_treatment_agreement_q4', 'Y', NULL, NULL, '2021-09-29 10:34:57', '2021-09-29 10:34:57'),
(288, 'lTXGxoUhkq', 24, 15, 45, 62, 242, 33, 'flu_treatment_agreement_q5', 'Y', NULL, NULL, '2021-09-29 10:34:57', '2021-09-29 10:34:57'),
(289, '02ADtZAtbs', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_au_q1', 'Y', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(290, 'tzflpKhs7G', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_au_q2', 'Y', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(291, 'RNUCdzbey9', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_au_q3', 'N', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(292, 'vwQl39naQQ', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_au_q4', 'N', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(293, '7ZbWYBEyYK', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_smtp_q1', 'Y', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(294, 'j3N1PNGz5e', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q1', 'N', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(295, 'f2tzHnAJhI', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q2', 'N', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(296, 'MLrzaOmGFm', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q3', 'N', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(297, 'wq5aH4fM9w', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q4', 'N', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(298, 'ySffSSvmIs', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q5', 'N', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(299, 'Drlny6lhNH', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q6', 'N', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(300, 'CqamRR6gsB', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q7', 'N', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(301, 'NfCNGXqWn1', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_med_q1', 'Y', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(302, 'fAcyHQV0Y0', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_med_q2', 'Y', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(303, 'OwbakCtOiy', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_med_q3', 'N', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(304, 'hWypkTybl3', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_agreement_q1', 'Y', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(305, 'BI2nnpCdrU', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_agreement_q2', 'Y', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(306, 'ER0P3FsCDh', 25, 2, 46, 63, 243, 24, 'premature_ejaculation_agreement_q3', 'Y', NULL, NULL, '2021-09-29 10:52:06', '2021-09-29 10:52:06'),
(307, 'OvGZMikkrn', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_au_q1', 'Y', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(308, 'TAQbnGgmrB', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_au_q2', 'Y', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(309, '5QqQncALOO', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_au_q3', 'N', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(310, 'QrmHrzyPjX', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_au_q4', 'N', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(311, 'Mv5m48xCmd', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_smtp_q1', 'Y', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(312, 'ewW4StJKfs', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q1', 'N', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(313, 'vKEbTsMZRP', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q2', 'N', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(314, 'F4svwzPq3b', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q3', 'N', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(315, 'pxL91L4PT7', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q4', 'N', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(316, 'HGHEUFSazw', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q5', 'N', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(317, 'D5vtoU9EUE', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q6', 'N', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(318, 'P7IglVpw7E', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_hlth_q7', 'N', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(319, 'NtYgKmrHa5', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_med_q1', 'Y', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(320, 'xx5r38acPU', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_med_q2', 'N', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(321, 'wrwC80ej8N', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_agreement_q1', 'Y', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(322, 'doVeJhOXAR', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_agreement_q2', 'Y', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(323, 'tmyCeWkV1P', 26, 2, 46, 63, 243, 24, 'premature_ejaculation_agreement_q3', 'Y', NULL, NULL, '2021-09-29 10:55:32', '2021-09-29 10:55:32'),
(324, '00q0MoYh8H', 27, 6, 52, 72, 279, 8, 'period_delay_au_q1', 'Y', NULL, NULL, '2021-09-29 11:15:44', '2021-09-29 11:15:44'),
(325, 'bxqTrH6DaJ', 27, 6, 52, 72, 279, 8, 'period_delay_hlth_q1', 'N', NULL, NULL, '2021-09-29 11:15:44', '2021-09-29 11:15:44'),
(326, 'h6NEcHEBfW', 27, 6, 52, 72, 279, 8, 'period_delay_hlth_q2', 'N', NULL, NULL, '2021-09-29 11:15:44', '2021-09-29 11:15:44'),
(327, 'p6f86HIkaM', 27, 6, 52, 72, 279, 8, 'period_delay_hlth_q3', 'N', NULL, NULL, '2021-09-29 11:15:44', '2021-09-29 11:15:44'),
(328, 'cA3g8itbX6', 27, 6, 52, 72, 279, 8, 'period_delay_hlth_q4', 'N', NULL, NULL, '2021-09-29 11:15:44', '2021-09-29 11:15:44'),
(329, 'wCzNtfY0FK', 27, 6, 52, 72, 279, 8, 'period_delay_med_q1', 'N', NULL, NULL, '2021-09-29 11:15:44', '2021-09-29 11:15:44'),
(330, 'xCKabI2xdz', 27, 6, 52, 72, 279, 8, 'period_delay_med_q2', 'N', NULL, NULL, '2021-09-29 11:15:44', '2021-09-29 11:15:44'),
(331, 'PtAdzXtz7Y', 27, 6, 52, 72, 279, 8, 'period_delay_agreement_q1', 'Y', NULL, NULL, '2021-09-29 11:15:44', '2021-09-29 11:15:44'),
(332, 'g2EtVd53vl', 27, 6, 52, 72, 279, 8, 'period_delay_agreement_q2', 'Y', NULL, NULL, '2021-09-29 11:15:44', '2021-09-29 11:15:44'),
(333, 'SxkMVBhKwq', 28, 6, 52, 72, 280, 8, 'period_delay_au_q1', 'Y', NULL, NULL, '2021-09-29 11:17:10', '2021-09-29 11:17:10'),
(334, 'ubxpxnLHxJ', 28, 6, 52, 72, 280, 8, 'period_delay_hlth_q1', 'N', NULL, NULL, '2021-09-29 11:17:10', '2021-09-29 11:17:10'),
(335, 'jvVzHjJ480', 28, 6, 52, 72, 280, 8, 'period_delay_hlth_q2', 'N', NULL, NULL, '2021-09-29 11:17:10', '2021-09-29 11:17:10'),
(336, 'YONCAvGE6B', 28, 6, 52, 72, 280, 8, 'period_delay_hlth_q3', 'N', NULL, NULL, '2021-09-29 11:17:10', '2021-09-29 11:17:10'),
(337, 'z7XTrN8Ncw', 28, 6, 52, 72, 280, 8, 'period_delay_hlth_q4', 'N', NULL, NULL, '2021-09-29 11:17:10', '2021-09-29 11:17:10'),
(338, 'gy1wdmNZ6J', 28, 6, 52, 72, 280, 8, 'period_delay_med_q1', 'N', NULL, NULL, '2021-09-29 11:17:10', '2021-09-29 11:17:10'),
(339, 'AbsGwYHw25', 28, 6, 52, 72, 280, 8, 'period_delay_med_q2', 'N', NULL, NULL, '2021-09-29 11:17:10', '2021-09-29 11:17:10'),
(340, 'PMnv7pLbWd', 28, 6, 52, 72, 280, 8, 'period_delay_agreement_q1', 'Y', NULL, NULL, '2021-09-29 11:17:10', '2021-09-29 11:17:10'),
(341, 'Y6SI1CHBCq', 28, 6, 52, 72, 280, 8, 'period_delay_agreement_q2', 'Y', NULL, NULL, '2021-09-29 11:17:10', '2021-09-29 11:17:10'),
(342, 'OhX54BWh1o', 29, 6, 52, 72, 280, 8, 'period_delay_au_q1', 'Y', NULL, NULL, '2021-09-29 11:20:20', '2021-09-29 11:20:20'),
(343, 'R15MFUMDBq', 29, 6, 52, 72, 280, 8, 'period_delay_hlth_q1', 'N', NULL, NULL, '2021-09-29 11:20:20', '2021-09-29 11:20:20'),
(344, 'mAEdkrc2Nn', 29, 6, 52, 72, 280, 8, 'period_delay_hlth_q2', 'N', NULL, NULL, '2021-09-29 11:20:20', '2021-09-29 11:20:20'),
(345, 'P7selb3YGG', 29, 6, 52, 72, 280, 8, 'period_delay_hlth_q3', 'N', NULL, NULL, '2021-09-29 11:20:20', '2021-09-29 11:20:20'),
(346, 'xxxnE1rhPs', 29, 6, 52, 72, 280, 8, 'period_delay_hlth_q4', 'N', NULL, NULL, '2021-09-29 11:20:20', '2021-09-29 11:20:20'),
(347, 'WdIIACEkQb', 29, 6, 52, 72, 280, 8, 'period_delay_med_q1', 'N', NULL, NULL, '2021-09-29 11:20:20', '2021-09-29 11:20:20'),
(348, 'FM7HGPDE08', 29, 6, 52, 72, 280, 8, 'period_delay_med_q2', 'N', NULL, NULL, '2021-09-29 11:20:20', '2021-09-29 11:20:20'),
(349, 'WAEJrxB1kA', 29, 6, 52, 72, 280, 8, 'period_delay_agreement_q1', 'Y', NULL, NULL, '2021-09-29 11:20:20', '2021-09-29 11:20:20'),
(350, '4yp2hyNqCw', 29, 6, 52, 72, 280, 8, 'period_delay_agreement_q2', 'Y', NULL, NULL, '2021-09-29 11:20:20', '2021-09-29 11:20:20'),
(351, 'QQaIsEZHsz', 30, 6, 52, 72, 279, 8, 'period_delay_au_q1', 'Y', NULL, NULL, '2021-09-29 11:22:15', '2021-09-29 11:22:15'),
(352, 'lb4GpFOfHh', 30, 6, 52, 72, 279, 8, 'period_delay_hlth_q1', 'N', NULL, NULL, '2021-09-29 11:22:15', '2021-09-29 11:22:15'),
(353, 'SmBZonOLt1', 30, 6, 52, 72, 279, 8, 'period_delay_hlth_q2', 'N', NULL, NULL, '2021-09-29 11:22:15', '2021-09-29 11:22:15'),
(354, 'uNXzocd26O', 30, 6, 52, 72, 279, 8, 'period_delay_hlth_q3', 'N', NULL, NULL, '2021-09-29 11:22:15', '2021-09-29 11:22:15'),
(355, 'ejjvmNzPl2', 30, 6, 52, 72, 279, 8, 'period_delay_hlth_q4', 'N', NULL, NULL, '2021-09-29 11:22:15', '2021-09-29 11:22:15'),
(356, 'MdPuwsdukx', 30, 6, 52, 72, 279, 8, 'period_delay_med_q1', 'N', NULL, NULL, '2021-09-29 11:22:15', '2021-09-29 11:22:15'),
(357, 'Icg7b4twCa', 30, 6, 52, 72, 279, 8, 'period_delay_med_q2', 'Y', NULL, NULL, '2021-09-29 11:22:15', '2021-09-29 11:22:15'),
(358, 'oZrg1mIWw8', 30, 6, 52, 72, 279, 8, 'period_delay_med_q3', 'N', NULL, NULL, '2021-09-29 11:22:15', '2021-09-29 11:22:15'),
(359, 'Qsm3JD3ZE2', 30, 6, 52, 72, 279, 8, 'period_delay_agreement_q1', 'Y', NULL, NULL, '2021-09-29 11:22:15', '2021-09-29 11:22:15'),
(360, 'G6cR3E15eF', 30, 6, 52, 72, 279, 8, 'period_delay_agreement_q2', 'Y', NULL, NULL, '2021-09-29 11:22:15', '2021-09-29 11:22:15'),
(361, 'zvH3vn7fnj', 31, 10, 60, 86, 308, 9, 'migraine_au_q1', 'Y', NULL, NULL, '2021-09-29 11:37:00', '2021-09-29 11:37:00'),
(362, 'WdBTOnWWm7', 31, 10, 60, 86, 308, 9, 'migraine_smtp_q1', 'N', NULL, NULL, '2021-09-29 11:37:00', '2021-09-29 11:37:00'),
(363, 'R3LVPkvRmA', 31, 10, 60, 86, 308, 9, 'migraine_smtp_q2', 'N', NULL, NULL, '2021-09-29 11:37:00', '2021-09-29 11:37:00'),
(364, 'ehPqtk2Hu8', 31, 10, 60, 86, 308, 9, 'migraine_smtp_q3', 'Y', NULL, NULL, '2021-09-29 11:37:00', '2021-09-29 11:37:00'),
(365, 'yLlBmFUeJp', 31, 10, 60, 86, 308, 9, 'migraine_smtp_q4', 'N', NULL, NULL, '2021-09-29 11:37:00', '2021-09-29 11:37:00'),
(366, 'erLEZnoTZw', 31, 10, 60, 86, 308, 9, 'migraine_hlth_q1', 'Y', NULL, NULL, '2021-09-29 11:37:00', '2021-09-29 11:37:00'),
(367, 'OkqI0s5T2K', 31, 10, 60, 86, 308, 9, 'migraine_hlth_q2', 'N', NULL, NULL, '2021-09-29 11:37:00', '2021-09-29 11:37:00'),
(368, 'yBvj31Jj58', 31, 10, 60, 86, 308, 9, 'migraine_hlth_q3', 'N', NULL, NULL, '2021-09-29 11:37:00', '2021-09-29 11:37:00'),
(369, 'cqWvVJLaiu', 31, 10, 60, 86, 308, 9, 'migraine_hlth_q4', 'N', NULL, NULL, '2021-09-29 11:37:00', '2021-09-29 11:37:00'),
(370, 'AmNOOme20v', 31, 10, 60, 86, 308, 9, 'migraine_hlth_q5', 'N', NULL, NULL, '2021-09-29 11:37:00', '2021-09-29 11:37:00'),
(371, 'Zw6WQagbl8', 31, 10, 60, 86, 308, 9, 'migraine_med_q1', 'Y', NULL, NULL, '2021-09-29 11:37:00', '2021-09-29 11:37:00'),
(372, 'teZ1Ta00YV', 31, 10, 60, 86, 308, 9, 'migraine_med_q2', 'N', NULL, NULL, '2021-09-29 11:37:00', '2021-09-29 11:37:00'),
(373, '0r0LNhZwp7', 31, 10, 60, 86, 308, 9, 'migraine_agreement_q1', 'Y', NULL, NULL, '2021-09-29 11:37:00', '2021-09-29 11:37:00'),
(374, 'mY8qFUddag', 32, 10, 60, 86, 310, 9, 'migraine_au_q1', 'Y', NULL, NULL, '2021-09-29 11:38:10', '2021-09-29 11:38:10'),
(375, '5yG9mp3tbU', 32, 10, 60, 86, 310, 9, 'migraine_smtp_q1', 'N', NULL, NULL, '2021-09-29 11:38:10', '2021-09-29 11:38:10'),
(376, 'RqG8aSsSho', 32, 10, 60, 86, 310, 9, 'migraine_smtp_q2', 'N', NULL, NULL, '2021-09-29 11:38:10', '2021-09-29 11:38:10'),
(377, 'avZiKkl04W', 32, 10, 60, 86, 310, 9, 'migraine_smtp_q3', 'Y', NULL, NULL, '2021-09-29 11:38:10', '2021-09-29 11:38:10'),
(378, 'bKJFx29lOp', 32, 10, 60, 86, 310, 9, 'migraine_smtp_q4', 'N', NULL, NULL, '2021-09-29 11:38:10', '2021-09-29 11:38:10'),
(379, 'VDVxwwBRRY', 32, 10, 60, 86, 310, 9, 'migraine_hlth_q1', 'Y', NULL, NULL, '2021-09-29 11:38:10', '2021-09-29 11:38:10'),
(380, 'DjGYsBUuWH', 32, 10, 60, 86, 310, 9, 'migraine_hlth_q2', 'N', NULL, NULL, '2021-09-29 11:38:10', '2021-09-29 11:38:10'),
(381, 'aUB6vGfwQy', 32, 10, 60, 86, 310, 9, 'migraine_hlth_q3', 'N', NULL, NULL, '2021-09-29 11:38:10', '2021-09-29 11:38:10'),
(382, 'fgmeWFV2cs', 32, 10, 60, 86, 310, 9, 'migraine_hlth_q4', 'N', NULL, NULL, '2021-09-29 11:38:10', '2021-09-29 11:38:10'),
(383, 'CH1vBOSHLd', 32, 10, 60, 86, 310, 9, 'migraine_hlth_q5', 'N', NULL, NULL, '2021-09-29 11:38:10', '2021-09-29 11:38:10'),
(384, 'KpYVL39XlI', 32, 10, 60, 86, 310, 9, 'migraine_med_q1', 'Y', NULL, NULL, '2021-09-29 11:38:10', '2021-09-29 11:38:10'),
(385, 'JETjHVAqOV', 32, 10, 60, 86, 310, 9, 'migraine_med_q2', 'N', NULL, NULL, '2021-09-29 11:38:10', '2021-09-29 11:38:10'),
(386, '2jnrnL8V2D', 32, 10, 60, 86, 310, 9, 'migraine_agreement_q1', 'Y', NULL, NULL, '2021-09-29 11:38:10', '2021-09-29 11:38:10');
INSERT INTO `kod_filled_raf` (`id`, `hash_id`, `order_id`, `med_cat_id`, `medicine_id`, `strength_id`, `quantity_id`, `raf_id`, `raf_key`, `raf_value`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(387, 'rIIsRpt9Qh', 33, 10, 60, 86, 308, 9, 'migraine_au_q1', 'Y', NULL, NULL, '2021-09-29 11:55:18', '2021-09-29 11:55:18'),
(388, 'GuMjW6rpTb', 33, 10, 60, 86, 308, 9, 'migraine_smtp_q1', 'N', NULL, NULL, '2021-09-29 11:55:18', '2021-09-29 11:55:18'),
(389, 'eRLhaUsPCo', 33, 10, 60, 86, 308, 9, 'migraine_smtp_q2', 'N', NULL, NULL, '2021-09-29 11:55:18', '2021-09-29 11:55:18'),
(390, 'CilMzxf8z6', 33, 10, 60, 86, 308, 9, 'migraine_smtp_q3', 'Y', NULL, NULL, '2021-09-29 11:55:18', '2021-09-29 11:55:18'),
(391, 'RhLdAaGRTS', 33, 10, 60, 86, 308, 9, 'migraine_smtp_q4', 'N', NULL, NULL, '2021-09-29 11:55:18', '2021-09-29 11:55:18'),
(392, 'PcDEnNj2hA', 33, 10, 60, 86, 308, 9, 'migraine_hlth_q1', 'Y', NULL, NULL, '2021-09-29 11:55:18', '2021-09-29 11:55:18'),
(393, 'lSS05wKw1j', 33, 10, 60, 86, 308, 9, 'migraine_hlth_q2', 'N', NULL, NULL, '2021-09-29 11:55:18', '2021-09-29 11:55:18'),
(394, 'W89G4eteJc', 33, 10, 60, 86, 308, 9, 'migraine_hlth_q3', 'N', NULL, NULL, '2021-09-29 11:55:18', '2021-09-29 11:55:18'),
(395, 'GURvBq8poQ', 33, 10, 60, 86, 308, 9, 'migraine_hlth_q4', 'N', NULL, NULL, '2021-09-29 11:55:18', '2021-09-29 11:55:18'),
(396, 'DRflvVnsRH', 33, 10, 60, 86, 308, 9, 'migraine_hlth_q5', 'N', NULL, NULL, '2021-09-29 11:55:18', '2021-09-29 11:55:18'),
(397, '5qoO8pFJl9', 33, 10, 60, 86, 308, 9, 'migraine_med_q1', 'Y', NULL, NULL, '2021-09-29 11:55:18', '2021-09-29 11:55:18'),
(398, 'sWOYwVI8EG', 33, 10, 60, 86, 308, 9, 'migraine_med_q2', 'N', NULL, NULL, '2021-09-29 11:55:18', '2021-09-29 11:55:18'),
(399, 'RANuSMAZEc', 33, 10, 60, 86, 308, 9, 'migraine_agreement_q1', 'Y', NULL, NULL, '2021-09-29 11:55:18', '2021-09-29 11:55:18'),
(400, 'dptmddqnOl', 34, 10, 60, 86, 311, 9, 'migraine_au_q1', 'Y', NULL, NULL, '2021-09-29 16:48:36', '2021-09-29 16:48:36'),
(401, 'fMMnLJxMNA', 34, 10, 60, 86, 311, 9, 'migraine_smtp_q1', 'N', NULL, NULL, '2021-09-29 16:48:36', '2021-09-29 16:48:36'),
(402, 'kPSdjTdV2M', 34, 10, 60, 86, 311, 9, 'migraine_smtp_q2', 'N', NULL, NULL, '2021-09-29 16:48:36', '2021-09-29 16:48:36'),
(403, 'oX8bwi2vkM', 34, 10, 60, 86, 311, 9, 'migraine_smtp_q3', 'Y', NULL, NULL, '2021-09-29 16:48:36', '2021-09-29 16:48:36'),
(404, '9uR9nuPqvx', 34, 10, 60, 86, 311, 9, 'migraine_smtp_q4', 'N', NULL, NULL, '2021-09-29 16:48:36', '2021-09-29 16:48:36'),
(405, 'cIscnDrPEV', 34, 10, 60, 86, 311, 9, 'migraine_hlth_q1', 'Y', NULL, NULL, '2021-09-29 16:48:36', '2021-09-29 16:48:36'),
(406, '8ListlxdI8', 34, 10, 60, 86, 311, 9, 'migraine_hlth_q2', 'N', NULL, NULL, '2021-09-29 16:48:36', '2021-09-29 16:48:36'),
(407, 'roqvkZO7VD', 34, 10, 60, 86, 311, 9, 'migraine_hlth_q3', 'N', NULL, NULL, '2021-09-29 16:48:36', '2021-09-29 16:48:36'),
(408, 'zsDtJg184t', 34, 10, 60, 86, 311, 9, 'migraine_hlth_q4', 'N', NULL, NULL, '2021-09-29 16:48:36', '2021-09-29 16:48:36'),
(409, 'lxj87byZja', 34, 10, 60, 86, 311, 9, 'migraine_hlth_q5', 'N', NULL, NULL, '2021-09-29 16:48:36', '2021-09-29 16:48:36'),
(410, 'LQ5wHtsMr6', 34, 10, 60, 86, 311, 9, 'migraine_med_q1', 'N', NULL, NULL, '2021-09-29 16:48:36', '2021-09-29 16:48:36'),
(411, 'nRJ7l9fGNC', 34, 10, 60, 86, 311, 9, 'migraine_med_q2', 'N', NULL, NULL, '2021-09-29 16:48:36', '2021-09-29 16:48:36'),
(412, 't2bI30655z', 34, 10, 60, 86, 311, 9, 'migraine_agreement_q1', 'Y', NULL, NULL, '2021-09-29 16:48:36', '2021-09-29 16:48:36'),
(413, '4JpDBicFIj', 35, 12, 55, 77, 286, 5, 'asthma_au_q1', 'Y', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(414, 'pA94UQtUB8', 35, 12, 55, 77, 286, 5, 'asthma_smtp_q1', 'N', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(415, 'b88ydESIKk', 35, 12, 55, 77, 286, 5, 'asthma_smtp_q2', 'N', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(416, '5izVuhnpbT', 35, 12, 55, 77, 286, 5, 'asthma_smtp_q3', 'Y', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(417, 'tyvYTOOdoZ', 35, 12, 55, 77, 286, 5, 'asthma_hlth_q1', 'Y', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(418, 'KkB2WqWuy9', 35, 12, 55, 77, 286, 5, 'asthma_hlth_q2', 'Y', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(419, 'CQGVNtVuZD', 35, 12, 55, 77, 286, 5, 'asthma_hlth_q3', 'Y', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(420, 'ucb4o7yBpb', 35, 12, 55, 77, 286, 5, 'asthma_hlth_q4', 'N', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(421, 'h3a8qW6y8C', 35, 12, 55, 77, 286, 5, 'asthma_hlth_q5', 'N', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(422, 'UEWMWyRsBp', 35, 12, 55, 77, 286, 5, 'asthma_hlth_q6', 'N', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(423, 'YjLHHpX7Lm', 35, 12, 55, 77, 286, 5, 'asthma_med_q1', 'Y', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(424, '6AKlDYeefX', 35, 12, 55, 77, 286, 5, 'asthma_med_q2', 'N', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(425, '4qs6ujQS9I', 35, 12, 55, 77, 286, 5, 'asthma_agreement_q1', 'Y', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(426, 'eRbAZD66Sl', 35, 12, 55, 77, 286, 5, 'asthma_agreement_q2', 'Y', NULL, NULL, '2021-09-29 16:58:26', '2021-09-29 16:58:26'),
(427, 'RH8NyE1YVZ', 36, 12, 55, 78, 287, 5, 'asthma_au_q1', 'Y', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(428, 'VTYdOi6TER', 36, 12, 55, 78, 287, 5, 'asthma_smtp_q1', 'N', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(429, '5gdjIu8bxR', 36, 12, 55, 78, 287, 5, 'asthma_smtp_q2', 'N', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(430, 'Usg3x0bLHe', 36, 12, 55, 78, 287, 5, 'asthma_smtp_q3', 'Y', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(431, 'N5bujE6fEr', 36, 12, 55, 78, 287, 5, 'asthma_hlth_q1', 'Y', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(432, 'Xt9oPYaVqH', 36, 12, 55, 78, 287, 5, 'asthma_hlth_q2', 'Y', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(433, 'hlsTBbI2cR', 36, 12, 55, 78, 287, 5, 'asthma_hlth_q3', 'Y', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(434, 'LjdjtyTiGB', 36, 12, 55, 78, 287, 5, 'asthma_hlth_q4', 'N', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(435, 'GIfIATvawP', 36, 12, 55, 78, 287, 5, 'asthma_hlth_q5', 'N', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(436, 'djELygc3if', 36, 12, 55, 78, 287, 5, 'asthma_hlth_q6', 'N', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(437, 'jE02yg2ttS', 36, 12, 55, 78, 287, 5, 'asthma_med_q1', 'N', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(438, 'QiqAGLCPQs', 36, 12, 55, 78, 287, 5, 'asthma_med_q2', 'N', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(439, 'rPmCOJcYPA', 36, 12, 55, 78, 287, 5, 'asthma_agreement_q1', 'Y', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(440, 'eN1EXbJTGV', 36, 12, 55, 78, 287, 5, 'asthma_agreement_q2', 'Y', NULL, NULL, '2021-09-29 17:21:35', '2021-09-29 17:21:35'),
(441, '13AlosCBDP', 37, 14, 56, 80, 289, 31, 'genital_warts_au_q1', 'Y', NULL, NULL, '2021-09-29 17:27:12', '2021-09-29 17:27:12'),
(442, 'QciZSXFYgV', 37, 14, 56, 80, 289, 31, 'genital_warts_au_q2', 'Y', NULL, NULL, '2021-09-29 17:27:12', '2021-09-29 17:27:12'),
(443, 'Uu7DdOfWMA', 37, 14, 56, 80, 289, 31, 'genital_warts_au_q3', 'Y', NULL, NULL, '2021-09-29 17:27:12', '2021-09-29 17:27:12'),
(444, '62WOQtmwKy', 37, 14, 56, 80, 289, 31, 'genital_warts_sympt_q1', 'N', NULL, NULL, '2021-09-29 17:27:12', '2021-09-29 17:27:12'),
(445, 'FpV2xvirBo', 37, 14, 56, 80, 289, 31, 'genital_warts_hlth_q1', 'N', NULL, NULL, '2021-09-29 17:27:12', '2021-09-29 17:27:12'),
(446, 'KcPtGY3RM3', 37, 14, 56, 80, 289, 31, 'genital_warts_hlth_q2', 'N', NULL, NULL, '2021-09-29 17:27:12', '2021-09-29 17:27:12'),
(447, 'c6taeaeQ2c', 37, 14, 56, 80, 289, 31, 'genital_warts_hlth_q3', 'N', NULL, NULL, '2021-09-29 17:27:12', '2021-09-29 17:27:12'),
(448, 'AEyoO5m5bU', 37, 14, 56, 80, 289, 31, 'genital_warts_med_q1', 'Y', NULL, NULL, '2021-09-29 17:27:12', '2021-09-29 17:27:12'),
(449, 'lrFolH89Ms', 37, 14, 56, 80, 289, 31, 'genital_warts_med_q2', 'N', NULL, NULL, '2021-09-29 17:27:12', '2021-09-29 17:27:12'),
(450, 'JWmeT9Lk9Z', 37, 14, 56, 80, 289, 31, 'genital_warts_agreement_q1', 'Y', NULL, NULL, '2021-09-29 17:27:12', '2021-09-29 17:27:12'),
(451, 'bBvIeplrzj', 37, 14, 56, 80, 289, 31, 'genital_warts_agreement_q2', 'Y', NULL, NULL, '2021-09-29 17:27:12', '2021-09-29 17:27:12'),
(452, 'HNdMWW7UVV', 37, 14, 56, 80, 289, 31, 'genital_warts_agreement_q3', 'Y', NULL, NULL, '2021-09-29 17:27:12', '2021-09-29 17:27:12'),
(453, 'vGNehWlVnv', 38, 14, 56, 80, 290, 31, 'genital_warts_au_q1', 'Y', NULL, NULL, '2021-09-29 18:00:48', '2021-09-29 18:00:48'),
(454, 'G5sRBpfEb3', 38, 14, 56, 80, 290, 31, 'genital_warts_au_q2', 'Y', NULL, NULL, '2021-09-29 18:00:48', '2021-09-29 18:00:48'),
(455, 'tqjevmKNAH', 38, 14, 56, 80, 290, 31, 'genital_warts_au_q3', 'Y', NULL, NULL, '2021-09-29 18:00:48', '2021-09-29 18:00:48'),
(456, 'MpI4lh5nnj', 38, 14, 56, 80, 290, 31, 'genital_warts_sympt_q1', 'N', NULL, NULL, '2021-09-29 18:00:48', '2021-09-29 18:00:48'),
(457, 'mGMTzQgQIQ', 38, 14, 56, 80, 290, 31, 'genital_warts_hlth_q1', 'N', NULL, NULL, '2021-09-29 18:00:48', '2021-09-29 18:00:48'),
(458, 'RUejS39Pfv', 38, 14, 56, 80, 290, 31, 'genital_warts_hlth_q2', 'N', NULL, NULL, '2021-09-29 18:00:48', '2021-09-29 18:00:48'),
(459, 'MYvp4FRpBc', 38, 14, 56, 80, 290, 31, 'genital_warts_hlth_q3', 'N', NULL, NULL, '2021-09-29 18:00:48', '2021-09-29 18:00:48'),
(460, 'j4iKAQlpbZ', 38, 14, 56, 80, 290, 31, 'genital_warts_med_q1', 'N', NULL, NULL, '2021-09-29 18:00:48', '2021-09-29 18:00:48'),
(461, 'KM26jV4kBg', 38, 14, 56, 80, 290, 31, 'genital_warts_med_q2', 'N', NULL, NULL, '2021-09-29 18:00:48', '2021-09-29 18:00:48'),
(462, '8RL21uB5jo', 38, 14, 56, 80, 290, 31, 'genital_warts_agreement_q1', 'Y', NULL, NULL, '2021-09-29 18:00:48', '2021-09-29 18:00:48'),
(463, 'CKmvz8514D', 38, 14, 56, 80, 290, 31, 'genital_warts_agreement_q2', 'Y', NULL, NULL, '2021-09-29 18:00:48', '2021-09-29 18:00:48'),
(464, 'vFLnLeCddQ', 38, 14, 56, 80, 290, 31, 'genital_warts_agreement_q3', 'Y', NULL, NULL, '2021-09-29 18:00:48', '2021-09-29 18:00:48'),
(465, 'h3rDVMr07E', 39, 11, 59, 84, 299, 13, 'stop_smoking_hlth_q1', 'N', NULL, NULL, '2021-09-30 09:24:32', '2021-09-30 09:24:32'),
(466, 'qA294GmjwJ', 39, 11, 59, 84, 299, 13, 'stop_smoking_hlth_q2', 'N', NULL, NULL, '2021-09-30 09:24:32', '2021-09-30 09:24:32'),
(467, 'yjKUokvccz', 39, 11, 59, 84, 299, 13, 'stop_smoking_hlth_q3', 'N', NULL, NULL, '2021-09-30 09:24:32', '2021-09-30 09:24:32'),
(468, 'ctAS1SAVqK', 39, 11, 59, 84, 299, 13, 'stop_smoking_med_q1', 'Y', NULL, NULL, '2021-09-30 09:24:32', '2021-09-30 09:24:32'),
(469, 'SPAbcm6xpR', 39, 11, 59, 84, 299, 13, 'stop_smoking_med_q2', 'N', NULL, NULL, '2021-09-30 09:24:32', '2021-09-30 09:24:32'),
(470, 'ILJLQtJZci', 39, 11, 59, 84, 299, 13, 'stop_smoking_agreement_q1', 'Y', NULL, NULL, '2021-09-30 09:24:32', '2021-09-30 09:24:32'),
(471, 'zkMaGXmHLM', 39, 11, 59, 84, 299, 13, 'stop_smoking_agreement_q2', 'Y', NULL, NULL, '2021-09-30 09:24:32', '2021-09-30 09:24:32'),
(472, '3tYUf5Cy3o', 39, 11, 59, 84, 299, 13, 'stop_smoking_agreement_q3', 'Y', NULL, NULL, '2021-09-30 09:24:32', '2021-09-30 09:24:32'),
(473, 'zE2f2OQv09', 39, 11, 59, 84, 299, 13, 'stop_smoking_agreement_q4', 'Y', NULL, NULL, '2021-09-30 09:24:32', '2021-09-30 09:24:32'),
(474, 'oaDBiGonLc', 39, 11, 59, 84, 299, 13, 'stop_smoking_agreement_q5', 'Y', NULL, NULL, '2021-09-30 09:24:32', '2021-09-30 09:24:32'),
(475, 'DH4ZVc55Zw', 40, 11, 59, 84, 299, 13, 'stop_smoking_hlth_q1', 'N', NULL, NULL, '2021-09-30 09:42:35', '2021-09-30 09:42:35'),
(476, 'cZrcrf5W5v', 40, 11, 59, 84, 299, 13, 'stop_smoking_hlth_q2', 'N', NULL, NULL, '2021-09-30 09:42:35', '2021-09-30 09:42:35'),
(477, 'jpdrOLYWBu', 40, 11, 59, 84, 299, 13, 'stop_smoking_hlth_q3', 'N', NULL, NULL, '2021-09-30 09:42:35', '2021-09-30 09:42:35'),
(478, 'oaWz4jGZgJ', 40, 11, 59, 84, 299, 13, 'stop_smoking_med_q1', 'N', NULL, NULL, '2021-09-30 09:42:35', '2021-09-30 09:42:35'),
(479, '443C49zAQZ', 40, 11, 59, 84, 299, 13, 'stop_smoking_med_q2', 'N', NULL, NULL, '2021-09-30 09:42:35', '2021-09-30 09:42:35'),
(480, 'E4zEhKPeJv', 40, 11, 59, 84, 299, 13, 'stop_smoking_agreement_q1', 'Y', NULL, NULL, '2021-09-30 09:42:35', '2021-09-30 09:42:35'),
(481, 'WQZdkdL0MU', 40, 11, 59, 84, 299, 13, 'stop_smoking_agreement_q2', 'Y', NULL, NULL, '2021-09-30 09:42:35', '2021-09-30 09:42:35'),
(482, 'erqbfenM6I', 40, 11, 59, 84, 299, 13, 'stop_smoking_agreement_q3', 'Y', NULL, NULL, '2021-09-30 09:42:35', '2021-09-30 09:42:35'),
(483, 'wD0A9qctb6', 40, 11, 59, 84, 299, 13, 'stop_smoking_agreement_q4', 'Y', NULL, NULL, '2021-09-30 09:42:35', '2021-09-30 09:42:35'),
(484, '3ppd8HGHfn', 40, 11, 59, 84, 299, 13, 'stop_smoking_agreement_q5', 'Y', NULL, NULL, '2021-09-30 09:42:35', '2021-09-30 09:42:35'),
(485, 'LM1LZB43Gq', 41, 4, 49, 66, 259, 35, 'q1_details', 'heart problems', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(486, 'rStXXZhibt', 41, 4, 49, 66, 259, 35, 'q1_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(487, 'znEllEK2Lt', 41, 4, 49, 66, 259, 35, 'blood_pressure_stats', 'Low - 90/60 or below', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(488, '7XIaBOSET2', 41, 4, 49, 66, 259, 35, 'q3_details', 'breating problems', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(489, 'aHknmKMcS2', 41, 4, 49, 66, 259, 35, 'q3_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(490, '6OnQY3Do2L', 41, 4, 49, 66, 259, 35, 'q4_details', 'kidney problems', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(491, 'EMfGNlOJxu', 41, 4, 49, 66, 259, 35, 'q4_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(492, 'vsykY7Erjj', 41, 4, 49, 66, 259, 35, 'q5_details', 'liver problems', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(493, 'OxMJRcORVw', 41, 4, 49, 66, 259, 35, 'q5_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(494, '3rth9ZXGyz', 41, 4, 49, 66, 259, 35, 'q6_details', 'sugar problems', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(495, 'CnUxJnexFD', 41, 4, 49, 66, 259, 35, 'q6_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(496, 'Gx8LsOiBU1', 41, 4, 49, 66, 259, 35, 'q7_details', 'mental health problems', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(497, 'nAVFxY8mHq', 41, 4, 49, 66, 259, 35, 'q7_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(498, 'rAWY904Elr', 41, 4, 49, 66, 259, 35, 'q8_details', 'neurological problems', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(499, 'rb0Jm31eAM', 41, 4, 49, 66, 259, 35, 'q8_option', 'N', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(500, 'kKIRLJrhNh', 41, 4, 49, 66, 259, 35, 'q9_details', 'Please tell us about any operations you have had', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(501, 'crGvuI7Tlf', 41, 4, 49, 66, 259, 35, 'q10_details', 'Please tell us about any operations you have had', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(502, 'yXTCa6LDqy', 41, 4, 49, 66, 259, 35, 'height_unit', 'metric', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(503, 'cUEScY72Ey', 41, 4, 49, 66, 259, 35, 'height_feet', '5ft', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(504, 'WSHE4r0NOm', 41, 4, 49, 66, 259, 35, 'height_inches', '5in', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(505, 'xos2Uu9rA2', 41, 4, 49, 66, 259, 35, 'height_metres', '3m', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(506, '0M5SnHhBqT', 41, 4, 49, 66, 259, 35, 'height_cm', '3cm', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(507, 'nTYTPddPme', 41, 4, 49, 66, 259, 35, 'weight_unit', 'metric', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(508, '0oe9Zfhtrt', 41, 4, 49, 66, 259, 35, 'weight_stones', NULL, NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(509, 'pl7znersFe', 41, 4, 49, 66, 259, 35, 'weight_pounds', NULL, NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(510, 'FlU34EhrDJ', 41, 4, 49, 66, 259, 35, 'weight_kg', '50kg', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(511, 'YOtMZtrC4r', 41, 4, 49, 66, 259, 35, 'q13_details', 'Are you currently taking any medications?', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(512, 'l6hsDwHpvg', 41, 4, 49, 66, 259, 35, 'q14_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(513, 'wbBIS6ND1Q', 41, 4, 49, 66, 259, 35, 'smoke_per_day', '21 - 25', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(514, 'Yjg6QIYZM3', 41, 4, 49, 66, 259, 35, 'q15_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(515, 'tgR0MIsTiu', 41, 4, 49, 66, 259, 35, 'drink_per_week', '21 - 25', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(516, 'sWAe9Q87c4', 41, 4, 49, 66, 259, 35, 'q16_details', 'Do you suffer from any allergies?', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(517, 'gAaSqCcy64', 41, 4, 49, 66, 259, 35, 'q16_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(518, 'lovZG4eFPo', 41, 4, 49, 66, 259, 35, 'q17_details', 'Is there a history of any disorder that runs in the family?', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(519, 'eRMSFIYzvc', 41, 4, 49, 66, 259, 35, 'q17_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(520, 'BvMCoSlfVz', 41, 4, 49, 66, 259, 35, 'are_you_female', '1', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(521, 'rYiEiN7dgy', 41, 4, 49, 66, 259, 35, 'q18_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(522, '5INNCb2dox', 41, 4, 49, 66, 259, 35, 'pregnant_duration', '4-6 months', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(523, 'eowsvDwYdx', 41, 4, 49, 66, 259, 35, 'q19_option', 'N', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(524, 'e3MSOfDJ7a', 41, 4, 49, 66, 259, 35, 'q20_option', 'N', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(525, '19JoeQMuX2', 41, 4, 49, 66, 259, 35, 'agree_step_1', '1', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(526, 'VY5g7StO24', 41, 4, 49, 66, 259, 35, 'q21_details', 'heart problems', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(527, 'udEdVuWJLk', 41, 4, 49, 66, 259, 35, 'q21_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(528, 'ada7LRm4ay', 41, 4, 49, 66, 259, 35, 'q22_details', 'other weight loss medications', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(529, 'ifEtEG8sFA', 41, 4, 49, 66, 259, 35, 'q22_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(530, 'D1G38d5nLB', 41, 4, 49, 66, 259, 35, 'q23_details', 'How else have you tried to lose weight', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(531, 'YexO42f2mI', 41, 4, 49, 66, 259, 35, 'q24_details', 'withdrawing', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(532, 'o81EVtO4ZE', 41, 4, 49, 66, 259, 35, 'q24_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(533, '5VR8wLPHzd', 41, 4, 49, 66, 259, 35, 'q25_details', 'painkillers', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(534, 'EFwaewdNxq', 41, 4, 49, 66, 259, 35, 'q25_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(535, 'yPJH05GOhZ', 41, 4, 49, 66, 259, 35, 'calories_consumed', '1000 - 1500', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(536, 'au9cCvHh1H', 41, 4, 49, 66, 259, 35, 'q27_details', 'Pizza, burgers, fried chicken', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(537, '6r0zOln7Ph', 41, 4, 49, 66, 259, 35, 'q27_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(538, 'sIDB6P877W', 41, 4, 49, 66, 259, 35, 'q28_details', 'crisps/chocolates/cakes', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(539, 'IXqKDLC4DC', 41, 4, 49, 66, 259, 35, 'q28_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(540, 'OeuEdQJjL1', 41, 4, 49, 66, 259, 35, 'weekly_exercise', 'Two to three hours', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(541, 'oqiI6AAWDm', 41, 4, 49, 66, 259, 35, 'q30_details', 'such as Anorexia Nervosa or Bulimia', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(542, 'nPPtlsBQX7', 41, 4, 49, 66, 259, 35, 'q30_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(543, 'N0RcrRaq5I', 41, 4, 49, 66, 259, 35, 'q31_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(544, '9o4UnNSkn1', 41, 4, 49, 66, 259, 35, 'high_bp_day', '7', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(545, 'Nmjz7mNJpa', 41, 4, 49, 66, 259, 35, 'high_bp_month', '7', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(546, 'TAOcNBXYSC', 41, 4, 49, 66, 259, 35, 'high_bp_year', '2007', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(547, '8ibJdE5Qow', 41, 4, 49, 66, 259, 35, 'q32_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(548, '0jDCmtYwEG', 41, 4, 49, 66, 259, 35, 'diabetes_day', '8', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(549, '0cjHvSbTxZ', 41, 4, 49, 66, 259, 35, 'diabetes_month', '8', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(550, 'J6wK8XFfCS', 41, 4, 49, 66, 259, 35, 'diabetes_year', '2008', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(551, 'QrXCyFBQdO', 41, 4, 49, 66, 259, 35, 'q33_option', 'Y', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(552, 'liQi7BwTqX', 41, 4, 49, 66, 259, 35, 'dyslipidemia_day', '9', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(553, 'PnXsiwINrK', 41, 4, 49, 66, 259, 35, 'dyslipidemia_month', '9', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(554, '0k9wkyWNlw', 41, 4, 49, 66, 259, 35, 'dyslipidemia_year', '2008', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(555, 'Vlqd1N1Z5k', 41, 4, 49, 66, 259, 35, 'q34_details', 'anything else', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(556, 'zL8EVvmiTX', 41, 4, 49, 66, 259, 35, 'agree_step_2', '1', NULL, NULL, '2021-09-30 10:00:49', '2021-09-30 10:00:49'),
(557, '6A9yXhbatv', 42, 8, 50, 69, 271, 2, 'height_in_meters', '4', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(558, 'qq3R9XBSMK', 42, 8, 50, 69, 271, 2, 'weight_in_kgs', '789', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(559, 'UIYkEc0gUK', 42, 8, 50, 69, 271, 2, 'weight_loss_bmi_q2', 'N', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(560, 'ICOZQTzqsA', 42, 8, 50, 69, 271, 2, 'weight_loss_hlth_q1', 'N', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(561, 'W3bUE9hUYO', 42, 8, 50, 69, 271, 2, 'weight_loss_hlth_q2', 'N', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(562, 'q1Xxrfd9li', 42, 8, 50, 69, 271, 2, 'weight_loss_hlth_q3', 'N', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(563, 'bCkipKgAGr', 42, 8, 50, 69, 271, 2, 'weight_loss_hlth_q4', 'N', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(564, 'avjPLXxUIz', 42, 8, 50, 69, 271, 2, 'weight_loss_med_q1', 'N', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(565, 'cL3FLiyYOV', 42, 8, 50, 69, 271, 2, 'weight_loss_med_q2', 'N', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(566, 'mLIiBK9dzm', 42, 8, 50, 69, 271, 2, 'weight_loss_med_q3', 'Y', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(567, 'egxdMy0NTg', 42, 8, 50, 69, 271, 2, 'weight_loss_med_q4', 'N', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(568, 'mWKmM201mO', 42, 8, 50, 69, 271, 2, 'weight_loss_agreement_q1', 'Y', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(569, 'B33ith0Exy', 42, 8, 50, 69, 271, 2, 'weight_loss_agreement_q2', 'Y', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(570, 'iO1o3L8tOx', 42, 8, 50, 69, 271, 2, 'weight_loss_agreement_q3', 'Y', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(571, '5bEmJVUbWa', 42, 8, 50, 69, 271, 2, 'weight_loss_agreement_q4', 'Y', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(572, 'gzFdFh38Xd', 42, 8, 50, 69, 271, 2, 'weight_loss_agreement_q5', 'Y', NULL, NULL, '2021-09-30 10:28:47', '2021-09-30 10:28:47'),
(573, '348qAsmqu5', 43, 8, 50, 69, 271, 2, 'height_in_meters', '10', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(574, 'bXoTigltex', 43, 8, 50, 69, 271, 2, 'weight_in_kgs', '7878', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(575, '0qfcncL1qA', 43, 8, 50, 69, 271, 2, 'weight_loss_bmi_q2', 'Y', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(576, 'jhqme3jGz7', 43, 8, 50, 69, 271, 2, 'weight_loss_hlth_q1', 'N', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(577, 'eht6p6bbqD', 43, 8, 50, 69, 271, 2, 'weight_loss_hlth_q2', 'N', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(578, '5s8K2mDBrF', 43, 8, 50, 69, 271, 2, 'weight_loss_hlth_q3', 'N', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(579, 'XBFfC0k1k4', 43, 8, 50, 69, 271, 2, 'weight_loss_hlth_q4', 'N', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(580, 'W5uuzg21k1', 43, 8, 50, 69, 271, 2, 'weight_loss_med_q1', 'Y', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(581, '3cXPwzwgZ5', 43, 8, 50, 69, 271, 2, 'weight_loss_med_q2', 'N', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(582, '6ugHgfp5aU', 43, 8, 50, 69, 271, 2, 'weight_loss_med_q3', 'N', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(583, 'YVmnaVO1KJ', 43, 8, 50, 69, 271, 2, 'weight_loss_med_q4', 'N', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(584, 'cUHUF41P8J', 43, 8, 50, 69, 271, 2, 'weight_loss_agreement_q1', 'Y', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(585, 'TCQ9Fqpe3c', 43, 8, 50, 69, 271, 2, 'weight_loss_agreement_q2', 'Y', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(586, 'k5Lq4eWoee', 43, 8, 50, 69, 271, 2, 'weight_loss_agreement_q3', 'Y', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(587, 'kloe03Ks55', 43, 8, 50, 69, 271, 2, 'weight_loss_agreement_q4', 'Y', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(588, 'ch1zsb2o9x', 43, 8, 50, 69, 271, 2, 'weight_loss_agreement_q5', 'Y', NULL, NULL, '2021-09-30 10:40:49', '2021-09-30 10:40:49'),
(589, 'Qk9MQJZ56j', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q1', 'Y', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(590, 'IX2WCgo3zV', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q2', 'Y', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(591, 'Z1plu8MIiU', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q3', 'Y', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(592, 'sWFGqFzlxD', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_sympt_q1', 'Y', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(593, '2iDVtanIhd', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q1', 'N', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(594, 'ea8HEHTmPF', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q2', 'N', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(595, 'Y8JUcngdJL', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q3', 'N', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(596, 'UO950p87ye', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q4', 'N', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(597, 'TmHB9ZCatj', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q5', 'N', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(598, 'wuLEpbu8W3', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q6', 'N', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(599, 'lHFsilG4uA', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q7', 'N', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(600, 'iZI3Zg2qOs', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q1', 'N', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(601, 'ubyZZO1dgc', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q2', 'Y', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(602, 'RuiMgLrXdu', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q3', 'N', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(603, '61PlepH9Zm', 44, 1, 1, 1, 1, 3, 'erectile_dysfunction_agreement_q1', 'Y', NULL, NULL, '2021-09-30 10:43:55', '2021-09-30 10:43:55'),
(604, 'xhjfOBsX8V', 45, 9, 11, 27, 132, 10, 'acid_reflux_smpt_q1', 'Y', NULL, NULL, '2021-09-30 10:52:09', '2021-09-30 10:52:09'),
(605, 'Bpp95iRu5B', 45, 9, 11, 27, 132, 10, 'acid_reflux_smpt_q2', 'N', NULL, NULL, '2021-09-30 10:52:09', '2021-09-30 10:52:09'),
(606, '3EQvnjhCoX', 45, 9, 11, 27, 132, 10, 'acid_reflux_hlth_q1', 'N', NULL, NULL, '2021-09-30 10:52:09', '2021-09-30 10:52:09'),
(607, 'bb7GxR8tF7', 45, 9, 11, 27, 132, 10, 'acid_reflux_hlth_q2', 'N', NULL, NULL, '2021-09-30 10:52:09', '2021-09-30 10:52:09'),
(608, 'QEKgSTuib9', 45, 9, 11, 27, 132, 10, 'acid_reflux_hlth_q3', 'N', NULL, NULL, '2021-09-30 10:52:09', '2021-09-30 10:52:09'),
(609, 'bwOQXe48ms', 45, 9, 11, 27, 132, 10, 'acid_reflux_hlth_q4', 'N', NULL, NULL, '2021-09-30 10:52:09', '2021-09-30 10:52:09'),
(610, 'AewF43DcXG', 45, 9, 11, 27, 132, 10, 'acid_reflux_med_q1', 'Y', NULL, NULL, '2021-09-30 10:52:09', '2021-09-30 10:52:09'),
(611, 'wbRdj6Uliz', 45, 9, 11, 27, 132, 10, 'acid_reflux_med_q2', 'N', NULL, NULL, '2021-09-30 10:52:09', '2021-09-30 10:52:09'),
(612, 'M7wc5FYqax', 45, 9, 11, 27, 132, 10, 'acid_reflux_agreement_q1', 'Y', NULL, NULL, '2021-09-30 10:52:09', '2021-09-30 10:52:09'),
(613, 'jRRQvK6RDv', 45, 9, 11, 27, 132, 10, 'acid_reflux_agreement_q2', 'Y', NULL, NULL, '2021-09-30 10:52:09', '2021-09-30 10:52:09'),
(614, 'tDgJTApcSx', 45, 9, 11, 27, 132, 10, 'acid_reflux_agreement_q3', 'Y', NULL, NULL, '2021-09-30 10:52:09', '2021-09-30 10:52:09'),
(615, 'BvV0PnFK1V', 45, 9, 11, 27, 132, 10, 'acid_reflux_agreement_q4', 'Y', NULL, NULL, '2021-09-30 10:52:09', '2021-09-30 10:52:09'),
(616, 'HX0R3koxZY', 46, 3, 18, 34, 144, 4, 'hair_loss_au_q1', 'Y', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(617, 'jmHTZBwwB1', 46, 3, 18, 34, 144, 4, 'hair_loss_symp_q1', 'Y', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(618, '2KhYsfExRW', 46, 3, 18, 34, 144, 4, 'hair_loss_symp_q2', 'N', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(619, 'BOeH20ludY', 46, 3, 18, 34, 144, 4, 'hair_loss_symp_q3', 'Y', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(620, 'wHwLfeDsoo', 46, 3, 18, 34, 144, 4, 'hair_loss_symp_q4', 'N', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(621, '2rYWv2hZoB', 46, 3, 18, 34, 144, 4, 'hair_loss_symp_q5', 'N', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(622, 'fF2xx1CQ9C', 46, 3, 18, 34, 144, 4, 'hair_loss_symp_q6', 'N', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(623, 'cnjCZJH7fQ', 46, 3, 18, 34, 144, 4, 'hair_loss_hlth_q1', 'N', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(624, 'fbw74u6IrX', 46, 3, 18, 34, 144, 4, 'hair_loss_hlth_q2', 'N', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(625, 'w9W1k1gXEV', 46, 3, 18, 34, 144, 4, 'hair_loss_hlth_q3', 'N', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(626, 'rtEy7FMqlQ', 46, 3, 18, 34, 144, 4, 'hair_loss_med_q1', 'Y', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(627, 'eUosXLtTPZ', 46, 3, 18, 34, 144, 4, 'hair_loss_med_q2', 'N', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(628, 'WMYvC4jnSb', 46, 3, 18, 34, 144, 4, 'hair_loss_agreement_q1', 'Y', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(629, '6mDzc2lRgq', 46, 3, 18, 34, 144, 4, 'hair_loss_agreement_q2', 'Y', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(630, 'RZb39H08dO', 46, 3, 18, 34, 144, 4, 'hair_loss_agreement_q3', 'Y', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(631, 'Mr0iRBJmn8', 46, 3, 18, 34, 144, 4, 'hair_loss_agreement_q4', 'Y', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(632, 'qNtGkD453H', 46, 3, 18, 34, 144, 4, 'hair_loss_agreement_q5', 'Y', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(633, 'u8jh7ybTpb', 46, 3, 18, 34, 144, 4, 'hair_loss_agreement_q6', 'Y', NULL, NULL, '2021-09-30 11:03:58', '2021-09-30 11:03:58'),
(634, 'od96O6ogUI', 47, 3, 18, 34, 144, 4, 'hair_loss_au_q1', 'Y', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(635, 'eUGROsSoLG', 47, 3, 18, 34, 144, 4, 'hair_loss_symp_q1', 'Y', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(636, '0aF1SeWvmW', 47, 3, 18, 34, 144, 4, 'hair_loss_symp_q2', 'N', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(637, 'IFD6eylOI6', 47, 3, 18, 34, 144, 4, 'hair_loss_symp_q3', 'Y', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(638, 'iw7fVCnJaW', 47, 3, 18, 34, 144, 4, 'hair_loss_symp_q4', 'N', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(639, 'HNiZQzr0HI', 47, 3, 18, 34, 144, 4, 'hair_loss_symp_q5', 'N', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(640, 'FQ0UeDJvBg', 47, 3, 18, 34, 144, 4, 'hair_loss_symp_q6', 'N', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(641, 'wym6CXyxEZ', 47, 3, 18, 34, 144, 4, 'hair_loss_hlth_q1', 'N', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(642, 'ncz4uXMyPv', 47, 3, 18, 34, 144, 4, 'hair_loss_hlth_q2', 'N', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(643, 'xW2sRC8tG5', 47, 3, 18, 34, 144, 4, 'hair_loss_hlth_q3', 'N', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(644, 'ghhTLhEZAM', 47, 3, 18, 34, 144, 4, 'hair_loss_med_q1', 'Y', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(645, 'o2DyZLirkc', 47, 3, 18, 34, 144, 4, 'hair_loss_med_q2', 'N', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(646, 'T0rwxtbruH', 47, 3, 18, 34, 144, 4, 'hair_loss_agreement_q1', 'Y', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(647, 'yCzXSTLhLi', 47, 3, 18, 34, 144, 4, 'hair_loss_agreement_q2', 'Y', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(648, 'Iw14YxC6GQ', 47, 3, 18, 34, 144, 4, 'hair_loss_agreement_q3', 'Y', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(649, 'bfL8kVYJKF', 47, 3, 18, 34, 144, 4, 'hair_loss_agreement_q4', 'Y', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(650, 'vrabPjAr9d', 47, 3, 18, 34, 144, 4, 'hair_loss_agreement_q5', 'Y', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(651, 'rRVjsVRbzp', 47, 3, 18, 34, 144, 4, 'hair_loss_agreement_q6', 'Y', NULL, NULL, '2021-09-30 11:07:06', '2021-09-30 11:07:06'),
(652, 'qSAKW631QA', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q1', 'N', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(653, 'WBtkYkk9rM', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q2', 'Y', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(654, 'UawxzjvLIg', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q3', 'Y', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(655, 'Iu0fVav7E3', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_sympt_q1', 'Y', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(656, 'A8txGCMsj4', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q1', 'N', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(657, 'vLUN3ElI8w', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q2', 'N', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(658, 'PK8YVWWtIO', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q3', 'N', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(659, 'R31FYiMSr0', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q4', 'N', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(660, 'tSJtG5ncrP', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q5', 'N', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(661, '3QQH92x4Nr', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q6', 'N', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(662, 'l2X0PJMZaM', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q7', 'N', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(663, 'oUqG5WemwA', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q1', 'N', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(664, 'QH8SMOlxFA', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q2', 'Y', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(665, 'OYGkoc8GDk', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q3', 'N', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(666, 'Ay6NwZi4WT', 48, 1, 1, 1, 1, 3, 'erectile_dysfunction_agreement_q1', 'Y', NULL, NULL, '2021-09-30 11:44:37', '2021-09-30 11:44:37'),
(667, '069DCjMmau', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_au_q1', 'Y', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(668, 'LJyAdnNT2L', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_au_q2', 'Y', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(669, 'DJ4k0TFvj3', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_au_q3', 'Y', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(670, 'NnzVCnTSv2', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_au_q4', 'N', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(671, 'j1wPgfc4sI', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_smtp_q1', 'Y', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(672, '3wxekj3X9p', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_hlth_q1', 'N', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(673, 'TxNzQeW2OY', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_hlth_q2', 'N', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(674, 'eefzwHHksD', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_hlth_q3', 'N', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(675, 'DXBqfPhBAa', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_hlth_q4', 'N', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(676, 'YcfSnOgfXo', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_hlth_q5', 'N', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(677, 'b8ffe6dCmc', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_hlth_q6', 'N', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(678, 'cMkb46QHWt', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_hlth_q7', 'N', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(679, 'unvgCk9Rpi', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_med_q1', 'Y', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(680, '513d1NwNhv', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_med_q2', 'Y', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(681, 'ktofoOcvVk', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_med_q3', 'N', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(682, 'gJrbD9KCSu', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_agreement_q1', 'Y', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(683, '2p5EkPsK1C', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_agreement_q2', 'Y', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(684, 'wXBiBgU2d6', 49, 2, 46, 63, 246, 24, 'premature_ejaculation_agreement_q3', 'Y', NULL, NULL, '2021-09-30 14:28:38', '2021-09-30 14:28:38'),
(685, 'imzsZUJRDh', 50, 8, 50, 69, 272, 2, 'height_in_meters', '4', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(686, '96miwYzdoy', 50, 8, 50, 69, 272, 2, 'weight_in_kgs', '454', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(687, 'OSEHlhM4WY', 50, 8, 50, 69, 272, 2, 'weight_loss_bmi_q2', 'Y', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(688, 'FedF987KQL', 50, 8, 50, 69, 272, 2, 'weight_loss_hlth_q1', 'N', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(689, '1Wn2N289wy', 50, 8, 50, 69, 272, 2, 'weight_loss_hlth_q2', 'N', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(690, 'GdbynCLR2Q', 50, 8, 50, 69, 272, 2, 'weight_loss_hlth_q3', 'N', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(691, '8CXv5mRFcM', 50, 8, 50, 69, 272, 2, 'weight_loss_hlth_q4', 'N', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(692, 'CePKUuNESe', 50, 8, 50, 69, 272, 2, 'weight_loss_med_q1', 'Y', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(693, 'pE7a6XjjBc', 50, 8, 50, 69, 272, 2, 'weight_loss_med_q2', 'N', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(694, 'Dy0rCTrDMW', 50, 8, 50, 69, 272, 2, 'weight_loss_med_q3', 'Y', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(695, '4msiltrAYE', 50, 8, 50, 69, 272, 2, 'weight_loss_med_q4', 'N', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(696, 'FrXJRyxxnL', 50, 8, 50, 69, 272, 2, 'weight_loss_agreement_q1', 'Y', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(697, 'zgxE76182i', 50, 8, 50, 69, 272, 2, 'weight_loss_agreement_q2', 'Y', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(698, 'rsWAGWLPx1', 50, 8, 50, 69, 272, 2, 'weight_loss_agreement_q3', 'Y', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(699, 'IJ8EImeSsB', 50, 8, 50, 69, 272, 2, 'weight_loss_agreement_q4', 'Y', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(700, 'KIBLQ4LP3S', 50, 8, 50, 69, 272, 2, 'weight_loss_agreement_q5', 'Y', NULL, NULL, '2021-09-30 14:40:44', '2021-09-30 14:40:44'),
(701, 'dKhfFj1EIH', 51, 6, 52, 72, 279, 8, 'period_delay_au_q1', 'Y', NULL, NULL, '2021-09-30 14:53:50', '2021-09-30 14:53:50'),
(702, '2ICpY8quJN', 51, 6, 52, 72, 279, 8, 'period_delay_hlth_q1', 'N', NULL, NULL, '2021-09-30 14:53:50', '2021-09-30 14:53:50'),
(703, 'VFpFRDyXMh', 51, 6, 52, 72, 279, 8, 'period_delay_hlth_q2', 'N', NULL, NULL, '2021-09-30 14:53:50', '2021-09-30 14:53:50'),
(704, 'pwv1B6SoM4', 51, 6, 52, 72, 279, 8, 'period_delay_hlth_q3', 'N', NULL, NULL, '2021-09-30 14:53:50', '2021-09-30 14:53:50'),
(705, '4HpCZx3UuQ', 51, 6, 52, 72, 279, 8, 'period_delay_hlth_q4', 'N', NULL, NULL, '2021-09-30 14:53:50', '2021-09-30 14:53:50'),
(706, '2zoup5KAzY', 51, 6, 52, 72, 279, 8, 'period_delay_med_q1', 'N', NULL, NULL, '2021-09-30 14:53:50', '2021-09-30 14:53:50'),
(707, 'CdvMUl0Nxw', 51, 6, 52, 72, 279, 8, 'period_delay_med_q2', 'Y', NULL, NULL, '2021-09-30 14:53:50', '2021-09-30 14:53:50'),
(708, 'wRlfu2IPST', 51, 6, 52, 72, 279, 8, 'period_delay_med_q3', 'N', NULL, NULL, '2021-09-30 14:53:50', '2021-09-30 14:53:50'),
(709, '6HDUErO01O', 51, 6, 52, 72, 279, 8, 'period_delay_agreement_q1', 'Y', NULL, NULL, '2021-09-30 14:53:50', '2021-09-30 14:53:50'),
(710, 'Ob0HzbO7mZ', 51, 6, 52, 72, 279, 8, 'period_delay_agreement_q2', 'Y', NULL, NULL, '2021-09-30 14:53:50', '2021-09-30 14:53:50'),
(711, 'L9HdfNSQvH', 52, 10, 60, 86, 311, 9, 'migraine_au_q1', 'Y', NULL, NULL, '2021-09-30 15:05:39', '2021-09-30 15:05:39'),
(712, 'M2IymD02TI', 52, 10, 60, 86, 311, 9, 'migraine_smtp_q1', 'N', NULL, NULL, '2021-09-30 15:05:39', '2021-09-30 15:05:39'),
(713, 'GFmG34L14S', 52, 10, 60, 86, 311, 9, 'migraine_smtp_q2', 'N', NULL, NULL, '2021-09-30 15:05:39', '2021-09-30 15:05:39'),
(714, 'miT3diJWta', 52, 10, 60, 86, 311, 9, 'migraine_smtp_q3', 'Y', NULL, NULL, '2021-09-30 15:05:39', '2021-09-30 15:05:39'),
(715, '4KJ4WT6ruU', 52, 10, 60, 86, 311, 9, 'migraine_smtp_q4', 'N', NULL, NULL, '2021-09-30 15:05:39', '2021-09-30 15:05:39'),
(716, 'n9JMlfgoUQ', 52, 10, 60, 86, 311, 9, 'migraine_hlth_q1', 'Y', NULL, NULL, '2021-09-30 15:05:39', '2021-09-30 15:05:39'),
(717, 'HFjQxKfz4D', 52, 10, 60, 86, 311, 9, 'migraine_hlth_q2', 'N', NULL, NULL, '2021-09-30 15:05:39', '2021-09-30 15:05:39'),
(718, 'g9iArsSZoH', 52, 10, 60, 86, 311, 9, 'migraine_hlth_q3', 'N', NULL, NULL, '2021-09-30 15:05:39', '2021-09-30 15:05:39'),
(719, '99D6QFDxmd', 52, 10, 60, 86, 311, 9, 'migraine_hlth_q4', 'N', NULL, NULL, '2021-09-30 15:05:39', '2021-09-30 15:05:39'),
(720, 'kjtvFxtEIC', 52, 10, 60, 86, 311, 9, 'migraine_hlth_q5', 'N', NULL, NULL, '2021-09-30 15:05:39', '2021-09-30 15:05:39'),
(721, '2ZPiAZ0vNE', 52, 10, 60, 86, 311, 9, 'migraine_med_q1', 'Y', NULL, NULL, '2021-09-30 15:05:39', '2021-09-30 15:05:39'),
(722, 'AQE6h2ucMf', 52, 10, 60, 86, 311, 9, 'migraine_med_q2', 'N', NULL, NULL, '2021-09-30 15:05:39', '2021-09-30 15:05:39'),
(723, 'k2U3hP2Yto', 52, 10, 60, 86, 311, 9, 'migraine_agreement_q1', 'Y', NULL, NULL, '2021-09-30 15:05:39', '2021-09-30 15:05:39'),
(724, 'adMrYXORxx', 53, 12, 55, 77, 286, 5, 'asthma_au_q1', 'Y', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(725, 'JFnvoHnUiK', 53, 12, 55, 77, 286, 5, 'asthma_smtp_q1', 'N', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(726, 'Z2qO6jEovd', 53, 12, 55, 77, 286, 5, 'asthma_smtp_q2', 'N', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(727, 'SqWvyiYXJ0', 53, 12, 55, 77, 286, 5, 'asthma_smtp_q3', 'Y', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(728, 'Yzx2x9JxhQ', 53, 12, 55, 77, 286, 5, 'asthma_hlth_q1', 'Y', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(729, 'LI73brULzb', 53, 12, 55, 77, 286, 5, 'asthma_hlth_q2', 'Y', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(730, 'jiqXzcJJSL', 53, 12, 55, 77, 286, 5, 'asthma_hlth_q3', 'Y', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(731, 'Ko3doHDwhc', 53, 12, 55, 77, 286, 5, 'asthma_hlth_q4', 'N', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(732, '9xE4afJzWJ', 53, 12, 55, 77, 286, 5, 'asthma_hlth_q5', 'N', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(733, 'GB7VyG4AxW', 53, 12, 55, 77, 286, 5, 'asthma_hlth_q6', 'N', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(734, 'HMhZ6WngrW', 53, 12, 55, 77, 286, 5, 'asthma_med_q1', 'Y', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(735, 'hM25NUxshd', 53, 12, 55, 77, 286, 5, 'asthma_med_q2', 'N', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(736, '8tA13NkOby', 53, 12, 55, 77, 286, 5, 'asthma_agreement_q1', 'Y', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(737, 'kaZIdUMgAm', 53, 12, 55, 77, 286, 5, 'asthma_agreement_q2', 'Y', NULL, NULL, '2021-09-30 15:22:34', '2021-09-30 15:22:34'),
(738, 'm8ZOwW4dJp', 54, 14, 56, 80, 292, 31, 'genital_warts_au_q1', 'Y', NULL, NULL, '2021-09-30 15:43:45', '2021-09-30 15:43:45'),
(739, 'EKpNP6oaMR', 54, 14, 56, 80, 292, 31, 'genital_warts_au_q2', 'Y', NULL, NULL, '2021-09-30 15:43:45', '2021-09-30 15:43:45'),
(740, 'TyrFkA5KPd', 54, 14, 56, 80, 292, 31, 'genital_warts_au_q3', 'Y', NULL, NULL, '2021-09-30 15:43:45', '2021-09-30 15:43:45'),
(741, 'JVq7nOXOIC', 54, 14, 56, 80, 292, 31, 'genital_warts_sympt_q1', 'N', NULL, NULL, '2021-09-30 15:43:45', '2021-09-30 15:43:45'),
(742, 'PE6keBzgxX', 54, 14, 56, 80, 292, 31, 'genital_warts_hlth_q1', 'N', NULL, NULL, '2021-09-30 15:43:45', '2021-09-30 15:43:45'),
(743, 'pQGDxWuiu8', 54, 14, 56, 80, 292, 31, 'genital_warts_hlth_q2', 'N', NULL, NULL, '2021-09-30 15:43:45', '2021-09-30 15:43:45'),
(744, 'Pkt30tIVBL', 54, 14, 56, 80, 292, 31, 'genital_warts_hlth_q3', 'N', NULL, NULL, '2021-09-30 15:43:45', '2021-09-30 15:43:45'),
(745, 'bzFvHKxdAz', 54, 14, 56, 80, 292, 31, 'genital_warts_med_q1', 'Y', NULL, NULL, '2021-09-30 15:43:45', '2021-09-30 15:43:45'),
(746, 'UFJDEl3hOM', 54, 14, 56, 80, 292, 31, 'genital_warts_med_q2', 'N', NULL, NULL, '2021-09-30 15:43:45', '2021-09-30 15:43:45'),
(747, 'ZpWxTDW1rr', 54, 14, 56, 80, 292, 31, 'genital_warts_agreement_q1', 'Y', NULL, NULL, '2021-09-30 15:43:45', '2021-09-30 15:43:45'),
(748, 'HnZCuItAkY', 54, 14, 56, 80, 292, 31, 'genital_warts_agreement_q2', 'Y', NULL, NULL, '2021-09-30 15:43:45', '2021-09-30 15:43:45'),
(749, '1ON1pukR2R', 54, 14, 56, 80, 292, 31, 'genital_warts_agreement_q3', 'Y', NULL, NULL, '2021-09-30 15:43:45', '2021-09-30 15:43:45'),
(750, 'cMe1i8nHkv', 55, 11, 59, 85, 303, 13, 'stop_smoking_hlth_q1', 'N', NULL, NULL, '2021-09-30 15:51:36', '2021-09-30 15:51:36'),
(751, 'rkJ1I6IeAE', 55, 11, 59, 85, 303, 13, 'stop_smoking_hlth_q2', 'N', NULL, NULL, '2021-09-30 15:51:36', '2021-09-30 15:51:36'),
(752, 'vHfsQkw4oT', 55, 11, 59, 85, 303, 13, 'stop_smoking_hlth_q3', 'N', NULL, NULL, '2021-09-30 15:51:36', '2021-09-30 15:51:36'),
(753, '0MBcEg3KxR', 55, 11, 59, 85, 303, 13, 'stop_smoking_med_q1', 'Y', NULL, NULL, '2021-09-30 15:51:36', '2021-09-30 15:51:36'),
(754, 'MNgJeLvgrU', 55, 11, 59, 85, 303, 13, 'stop_smoking_med_q2', 'N', NULL, NULL, '2021-09-30 15:51:36', '2021-09-30 15:51:36'),
(755, '584WdbbGEp', 55, 11, 59, 85, 303, 13, 'stop_smoking_agreement_q1', 'Y', NULL, NULL, '2021-09-30 15:51:36', '2021-09-30 15:51:36'),
(756, 'dA86IegVo8', 55, 11, 59, 85, 303, 13, 'stop_smoking_agreement_q2', 'Y', NULL, NULL, '2021-09-30 15:51:36', '2021-09-30 15:51:36'),
(757, 'EC0ude1Wkv', 55, 11, 59, 85, 303, 13, 'stop_smoking_agreement_q3', 'Y', NULL, NULL, '2021-09-30 15:51:36', '2021-09-30 15:51:36'),
(758, 'jlCTfiEFaG', 55, 11, 59, 85, 303, 13, 'stop_smoking_agreement_q4', 'Y', NULL, NULL, '2021-09-30 15:51:36', '2021-09-30 15:51:36'),
(759, '0UPzhhBQge', 55, 11, 59, 85, 303, 13, 'stop_smoking_agreement_q5', 'Y', NULL, NULL, '2021-09-30 15:51:36', '2021-09-30 15:51:36'),
(760, 'hxi3mZG8rl', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q1', 'N', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(761, 'HbKR2K6O58', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q2', 'Y', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(762, 'QfyeQ5pR7A', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q3', 'Y', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(763, 'luOPkSheqe', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_sympt_q1', 'Y', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(764, 'lvZKAg5bBr', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q1', 'N', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(765, '8F44JUF2Pj', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q2', 'N', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(766, 'EfFkdgmAEp', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q3', 'N', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(767, 'c0plJl9kAs', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q4', 'N', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(768, 'AeXiewQrZK', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q5', 'N', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(769, 'kih2XydVQG', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q6', 'N', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42');
INSERT INTO `kod_filled_raf` (`id`, `hash_id`, `order_id`, `med_cat_id`, `medicine_id`, `strength_id`, `quantity_id`, `raf_id`, `raf_key`, `raf_value`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(770, 'avxUGWbr9H', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q7', 'N', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(771, 'CIr7FOAbKY', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q1', 'N', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(772, 'wZUKhEww0a', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q2', 'Y', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(773, 'JCEn8akWV2', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q3', 'N', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(774, 'tqE6tHsoqm', 56, 1, 1, 1, 1, 3, 'erectile_dysfunction_agreement_q1', 'Y', NULL, NULL, '2021-10-01 10:49:42', '2021-10-01 10:49:42'),
(775, 'W7qZENuhjB', 57, 9, 11, 27, 132, 10, 'acid_reflux_smpt_q1', 'Y', NULL, NULL, '2021-10-01 11:00:27', '2021-10-01 11:00:27'),
(776, '5TVw7ugf3d', 57, 9, 11, 27, 132, 10, 'acid_reflux_smpt_q2', 'N', NULL, NULL, '2021-10-01 11:00:27', '2021-10-01 11:00:27'),
(777, '7v9yvTq7Oi', 57, 9, 11, 27, 132, 10, 'acid_reflux_hlth_q1', 'N', NULL, NULL, '2021-10-01 11:00:27', '2021-10-01 11:00:27'),
(778, '44bMQP9vTb', 57, 9, 11, 27, 132, 10, 'acid_reflux_hlth_q2', 'N', NULL, NULL, '2021-10-01 11:00:27', '2021-10-01 11:00:27'),
(779, 'fZ39czR69M', 57, 9, 11, 27, 132, 10, 'acid_reflux_hlth_q3', 'N', NULL, NULL, '2021-10-01 11:00:27', '2021-10-01 11:00:27'),
(780, 'XLNltaqwZZ', 57, 9, 11, 27, 132, 10, 'acid_reflux_hlth_q4', 'N', NULL, NULL, '2021-10-01 11:00:27', '2021-10-01 11:00:27'),
(781, 'p1WuKHEQY8', 57, 9, 11, 27, 132, 10, 'acid_reflux_med_q1', 'Y', NULL, NULL, '2021-10-01 11:00:27', '2021-10-01 11:00:27'),
(782, 'vxjJ0ki2Qf', 57, 9, 11, 27, 132, 10, 'acid_reflux_med_q2', 'N', NULL, NULL, '2021-10-01 11:00:27', '2021-10-01 11:00:27'),
(783, 'gkI1PWt1BH', 57, 9, 11, 27, 132, 10, 'acid_reflux_agreement_q1', 'Y', NULL, NULL, '2021-10-01 11:00:27', '2021-10-01 11:00:27'),
(784, 'XQF8zexBKp', 57, 9, 11, 27, 132, 10, 'acid_reflux_agreement_q2', 'Y', NULL, NULL, '2021-10-01 11:00:27', '2021-10-01 11:00:27'),
(785, 'sa9OszgxL0', 57, 9, 11, 27, 132, 10, 'acid_reflux_agreement_q3', 'Y', NULL, NULL, '2021-10-01 11:00:27', '2021-10-01 11:00:27'),
(786, 'KyKdLr0yMX', 57, 9, 11, 27, 132, 10, 'acid_reflux_agreement_q4', 'Y', NULL, NULL, '2021-10-01 11:00:27', '2021-10-01 11:00:27'),
(787, '9fL6RxrqsW', 58, 3, 18, 34, 147, 4, 'hair_loss_au_q1', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(788, 'rXlPohTjif', 58, 3, 18, 34, 147, 4, 'hair_loss_symp_q1', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(789, 'DpiKHDDaf5', 58, 3, 18, 34, 147, 4, 'hair_loss_symp_q2', 'N', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(790, 'W2oc9dyNov', 58, 3, 18, 34, 147, 4, 'hair_loss_symp_q3', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(791, 'ONY8PzrlP0', 58, 3, 18, 34, 147, 4, 'hair_loss_symp_q4', 'N', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(792, 'YQaA3qBAo8', 58, 3, 18, 34, 147, 4, 'hair_loss_symp_q5', 'N', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(793, 'O2wXX1ETWS', 58, 3, 18, 34, 147, 4, 'hair_loss_symp_q6', 'N', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(794, 'Eccbi1lQLE', 58, 3, 18, 34, 147, 4, 'hair_loss_hlth_q1', 'N', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(795, '7PjhK3IDGr', 58, 3, 18, 34, 147, 4, 'hair_loss_hlth_q2', 'N', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(796, 'z5JSQ8UXHT', 58, 3, 18, 34, 147, 4, 'hair_loss_hlth_q3', 'N', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(797, 'jqnDzwyKl8', 58, 3, 18, 34, 147, 4, 'hair_loss_med_q1', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(798, '0NOmHhvhVb', 58, 3, 18, 34, 147, 4, 'hair_loss_med_q2', 'N', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(799, '2MHJehbgtu', 58, 3, 18, 34, 147, 4, 'hair_loss_agreement_q1', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(800, '0H3StAgHBO', 58, 3, 18, 34, 147, 4, 'hair_loss_agreement_q2', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(801, '5cV3s9A5Vh', 58, 3, 18, 34, 147, 4, 'hair_loss_agreement_q3', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(802, 'q601HyVhiv', 58, 3, 18, 34, 147, 4, 'hair_loss_agreement_q4', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(803, 'K4q3tjxz7j', 58, 3, 18, 34, 147, 4, 'hair_loss_agreement_q5', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(804, 'ZFqqzRYPQx', 58, 3, 18, 34, 147, 4, 'hair_loss_agreement_q6', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(805, 'IScqjsRiSV', 58, 13, 22, 38, 163, 19, 'genetil_herpes_au_q1', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(806, 'thVSLm5Pra', 58, 13, 22, 38, 163, 19, 'genetil_herpes_au_q2', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(807, 'cxpmrlMahS', 58, 13, 22, 38, 163, 19, 'genetil_herpes_smpt_q1', 'N', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(808, 'koFXTLv4Tm', 58, 13, 22, 38, 163, 19, 'genetil_herpes_hlth_q1', 'N', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(809, 'OIwcCdDIOY', 58, 13, 22, 38, 163, 19, 'genetil_herpes_hlth_q2', 'N', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(810, '2b13VvT7MN', 58, 13, 22, 38, 163, 19, 'genetil_herpes_hlth_q3', 'N', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(811, 'wQvzuSL6q5', 58, 13, 22, 38, 163, 19, 'genetil_herpes_med_q1', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(812, 'ILuAlJXQv5', 58, 13, 22, 38, 163, 19, 'genetil_herpes_med_q2', 'N', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(813, 'u5RF55ZKDn', 58, 13, 22, 38, 163, 19, 'genetil_herpes_agreement_q1', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(814, 'aBQs7NKqrY', 58, 13, 22, 38, 163, 19, 'genetil_herpes_agreement_q2', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(815, 'RP7o6qB2pE', 58, 13, 22, 38, 163, 19, 'genetil_herpes_agreement_q3', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(816, 'codmBo8pB3', 58, 13, 22, 38, 163, 19, 'genetil_herpes_agreement_q4', 'Y', NULL, NULL, '2021-10-01 11:16:29', '2021-10-01 11:16:29'),
(817, 'UxHk5sZXew', 59, 7, 26, 42, 176, 6, 'acne_au_q1', 'Y', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(818, 'LoFMXpJ2Zx', 59, 7, 26, 42, 176, 6, 'acne_hlth_q1', 'N', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(819, 'WRRp6LXmtf', 59, 7, 26, 42, 176, 6, 'acne_hlth_q2', 'N', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(820, 'AM1lYNwXbA', 59, 7, 26, 42, 176, 6, 'acne_hlth_q3', 'Y', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(821, 'KRbyLbMa7E', 59, 7, 26, 42, 176, 6, 'acne_hlth_q4', 'Y', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(822, 'wjYttcJFGH', 59, 7, 26, 42, 176, 6, 'acne_med_q1', 'Y', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(823, 'mP2NzYW21E', 59, 7, 26, 42, 176, 6, 'acne_med_q2', 'N', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(824, 'e6nCoIsWdT', 59, 7, 26, 42, 176, 6, 'acne_agreement_q1', 'Y', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(825, 'qXhWvYE9P6', 59, 7, 26, 42, 176, 6, 'acne_agreement_q2', 'Y', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(826, 'vpvHThaqwJ', 59, 7, 26, 42, 176, 6, 'acne_agreement_q3', 'Y', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(827, 'hFWyGm5ztm', 59, 7, 26, 42, 176, 6, 'acne_agreement_q4', 'Y', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(828, '3lijgDhQgF', 59, 7, 26, 42, 176, 6, 'acne_agreement_q5', 'Y', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(829, 'hgujDQ7PGT', 59, 7, 26, 42, 176, 6, 'acne_agreement_q6', 'Y', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(830, 'ECw77m9fFD', 59, 7, 26, 42, 176, 6, 'acne_agreement_q7', 'Y', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(831, '3BEOjfloZF', 59, 7, 26, 42, 176, 6, 'acne_agreement_q8', 'Y', NULL, NULL, '2021-10-01 11:39:59', '2021-10-01 11:39:59'),
(832, 'TQLvuONbXl', 60, 5, 35, 52, 200, 7, 'hayfever_hlth_q1', 'Y', NULL, NULL, '2021-10-01 11:52:35', '2021-10-01 11:52:35'),
(833, 'uQbu674u26', 60, 5, 35, 52, 200, 7, 'hayfever_hlth_q2', 'N', NULL, NULL, '2021-10-01 11:52:35', '2021-10-01 11:52:35'),
(834, 'RE6tYQwrX9', 60, 5, 35, 52, 200, 7, 'hayfever_hlth_q3', 'N', NULL, NULL, '2021-10-01 11:52:35', '2021-10-01 11:52:35'),
(835, 'mcdlqUVHK6', 60, 5, 35, 52, 200, 7, 'hayfever_hlth_q4', 'Y', NULL, NULL, '2021-10-01 11:52:35', '2021-10-01 11:52:35'),
(836, 'hm80JlvGPr', 60, 5, 35, 52, 200, 7, 'hayfever_med_q1', 'Y', NULL, NULL, '2021-10-01 11:52:35', '2021-10-01 11:52:35'),
(837, 'QeMimiMGUX', 60, 5, 35, 52, 200, 7, 'hayfever_med_q2', 'Y', NULL, NULL, '2021-10-01 11:52:35', '2021-10-01 11:52:35'),
(838, '5k7sQXT4BS', 60, 5, 35, 52, 200, 7, 'hayfever_med_q3', 'N', NULL, NULL, '2021-10-01 11:52:35', '2021-10-01 11:52:35'),
(839, 'zIWnUDqRfF', 60, 5, 35, 52, 200, 7, 'hayfever_agreement_q1', 'Y', NULL, NULL, '2021-10-01 11:52:35', '2021-10-01 11:52:35'),
(840, 'wWstVQO6V0', 60, 5, 35, 52, 200, 7, 'hayfever_agreement_q2', 'Y', NULL, NULL, '2021-10-01 11:52:35', '2021-10-01 11:52:35'),
(841, 'zgvQaqx5LE', 60, 5, 35, 52, 200, 7, 'hayfever_agreement_q3', 'Y', NULL, NULL, '2021-10-01 11:52:35', '2021-10-01 11:52:35'),
(842, 'aKv8Lrfst0', 60, 5, 35, 52, 200, 7, 'hayfever_agreement_q4', 'Y', NULL, NULL, '2021-10-01 11:52:35', '2021-10-01 11:52:35'),
(843, '2HpfVBWfl0', 61, 16, 39, 56, 208, 32, 'cold_sore_au_q1', 'Y', NULL, NULL, '2021-10-01 13:41:35', '2021-10-01 13:41:35'),
(844, 'CAjg6yLYQ0', 61, 16, 39, 56, 208, 32, 'cold_sore_au_q2', 'Y', NULL, NULL, '2021-10-01 13:41:35', '2021-10-01 13:41:35'),
(845, 'mOLVS5bsOm', 61, 16, 39, 56, 208, 32, 'cold_sore_smtp_q1', 'N', NULL, NULL, '2021-10-01 13:41:35', '2021-10-01 13:41:35'),
(846, 's1zmw7KEIR', 61, 16, 39, 56, 208, 32, 'cold_sore_hlth_q1', 'N', NULL, NULL, '2021-10-01 13:41:35', '2021-10-01 13:41:35'),
(847, 'fU5NqxSE4z', 61, 16, 39, 56, 208, 32, 'cold_sore_hlth_q2', 'N', NULL, NULL, '2021-10-01 13:41:35', '2021-10-01 13:41:35'),
(848, 'GH3rNjNwnS', 61, 16, 39, 56, 208, 32, 'cold_sore_hlth_q3', 'N', NULL, NULL, '2021-10-01 13:41:35', '2021-10-01 13:41:35'),
(849, 'LoYQ9WLi0Z', 61, 16, 39, 56, 208, 32, 'cold_sore_med_q1', 'Y', NULL, NULL, '2021-10-01 13:41:35', '2021-10-01 13:41:35'),
(850, 'OeZEOv7DpC', 61, 16, 39, 56, 208, 32, 'cold_sore_med_q2', 'N', NULL, NULL, '2021-10-01 13:41:35', '2021-10-01 13:41:35'),
(851, 'RoBdt4eOvG', 61, 16, 39, 56, 208, 32, 'cold_sore_agreement_q1', 'Y', NULL, NULL, '2021-10-01 13:41:35', '2021-10-01 13:41:35'),
(852, '6BHBhs9w5K', 61, 16, 39, 56, 208, 32, 'cold_sore_agreement_q2', 'Y', NULL, NULL, '2021-10-01 13:41:35', '2021-10-01 13:41:35'),
(853, 'T4rdQIpiXp', 61, 16, 39, 56, 208, 32, 'cold_sore_agreement_q3', 'Y', NULL, NULL, '2021-10-01 13:41:35', '2021-10-01 13:41:35'),
(854, '8RIL2OM46f', 62, 17, 42, 59, 216, 12, 'anti_malaria_hlth_q1', 'N', NULL, NULL, '2021-10-01 13:53:24', '2021-10-01 13:53:24'),
(855, 'BncsP6sdTq', 62, 17, 42, 59, 216, 12, 'anti_malaria_hlth_q2', 'N', NULL, NULL, '2021-10-01 13:53:24', '2021-10-01 13:53:24'),
(856, 'Y8UoTImw5V', 62, 17, 42, 59, 216, 12, 'anti_malaria_hlth_q3', 'N', NULL, NULL, '2021-10-01 13:53:24', '2021-10-01 13:53:24'),
(857, 'n07dwwjvcx', 62, 17, 42, 59, 216, 12, 'anti_malaria_hlth_q4', 'N', NULL, NULL, '2021-10-01 13:53:24', '2021-10-01 13:53:24'),
(858, 'Jt2wASTC23', 62, 17, 42, 59, 216, 12, 'anti_malaria_med_q1', 'Y', NULL, NULL, '2021-10-01 13:53:24', '2021-10-01 13:53:24'),
(859, 'uv3sxxlbd2', 62, 17, 42, 59, 216, 12, 'anti_malaria_med_q2', 'N', NULL, NULL, '2021-10-01 13:53:24', '2021-10-01 13:53:24'),
(860, '8QjtLLbDb7', 62, 17, 42, 59, 216, 12, 'anti_malaria_agreement_q1', 'Y', NULL, NULL, '2021-10-01 13:53:24', '2021-10-01 13:53:24'),
(861, 'QjKbTuUc7i', 62, 17, 42, 59, 216, 12, 'anti_malaria_agreement_q2', 'Y', NULL, NULL, '2021-10-01 13:53:24', '2021-10-01 13:53:24'),
(862, 'g6usvzQf7e', 62, 17, 42, 59, 216, 12, 'anti_malaria_agreement_q3', 'Y', NULL, NULL, '2021-10-01 13:53:24', '2021-10-01 13:53:24'),
(863, 'v9WTa1pFWu', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q1', 'Y', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(864, 'ejTNbdmEoy', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q2', 'Y', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(865, 'Ts2gqNWrO0', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_au_q3', 'N', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(866, 'ZZzxD0A7WE', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_sympt_q1', 'Y', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(867, 'f9Lklkhf63', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q1', 'N', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(868, 'uiu7bL8DIg', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q2', 'N', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(869, 'N7tsCwspi7', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q3', 'N', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(870, 'HgkpPIWuVe', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q4', 'N', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(871, 'qD726EeSU9', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q5', 'N', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(872, 'MtservI1qi', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q6', 'N', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(873, 'ZGYHN5PrmS', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_hlth_q7', 'N', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(874, 'krHj4w3oEN', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q1', 'N', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(875, '9jUQXuga19', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q2', 'Y', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(876, 'qWjgNa7vSP', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_med_q3', 'N', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(877, 'psQ66lidkz', 63, 1, 1, 1, 1, 3, 'erectile_dysfunction_agreement_q1', 'Y', NULL, NULL, '2021-10-01 13:56:26', '2021-10-01 13:56:26'),
(878, 'l0ErtHuAGp', 64, 3, 18, 34, 144, 4, 'hair_loss_au_q1', 'Y', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(879, 'Dk5WtVdJzP', 64, 3, 18, 34, 144, 4, 'hair_loss_symp_q1', 'Y', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(880, 'WZq1RdqQKC', 64, 3, 18, 34, 144, 4, 'hair_loss_symp_q2', 'N', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(881, 'EFFq60mHF3', 64, 3, 18, 34, 144, 4, 'hair_loss_symp_q3', 'Y', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(882, '488feTAaSm', 64, 3, 18, 34, 144, 4, 'hair_loss_symp_q4', 'N', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(883, 'xtM5FigGE3', 64, 3, 18, 34, 144, 4, 'hair_loss_symp_q5', 'N', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(884, 'XLXBcc2zaA', 64, 3, 18, 34, 144, 4, 'hair_loss_symp_q6', 'N', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(885, 'iumUaIGdDj', 64, 3, 18, 34, 144, 4, 'hair_loss_hlth_q1', 'N', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(886, '97mMfbTE16', 64, 3, 18, 34, 144, 4, 'hair_loss_hlth_q2', 'N', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(887, 'XfK9uqdAll', 64, 3, 18, 34, 144, 4, 'hair_loss_hlth_q3', 'N', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(888, 'UURfajm62r', 64, 3, 18, 34, 144, 4, 'hair_loss_med_q1', 'N', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(889, 'p0lcXQZwVx', 64, 3, 18, 34, 144, 4, 'hair_loss_agreement_q1', 'Y', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(890, '0DewOULLTB', 64, 3, 18, 34, 144, 4, 'hair_loss_agreement_q2', 'Y', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(891, 'Svc8epxWmY', 64, 3, 18, 34, 144, 4, 'hair_loss_agreement_q3', 'Y', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(892, 'TgKkrd6g0v', 64, 3, 18, 34, 144, 4, 'hair_loss_agreement_q4', 'Y', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(893, 'WUNKj1kWvi', 64, 3, 18, 34, 144, 4, 'hair_loss_agreement_q5', 'Y', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(894, 'uJJAsWDS9y', 64, 3, 18, 34, 144, 4, 'hair_loss_agreement_q6', 'Y', NULL, NULL, '2021-10-05 14:23:27', '2021-10-05 14:23:27'),
(895, 'sZX8ZNFv17', 65, 3, 18, 34, 144, 4, 'hair_loss_au_q1', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(896, 'mDeCV0xnsL', 65, 3, 18, 34, 144, 4, 'hair_loss_symp_q1', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(897, 'KpQSoL8UG9', 65, 3, 18, 34, 144, 4, 'hair_loss_symp_q2', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(898, 't3dFXvZLRH', 65, 3, 18, 34, 144, 4, 'hair_loss_symp_q3', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(899, 'iYIxWZTyt7', 65, 3, 18, 34, 144, 4, 'hair_loss_symp_q4', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(900, 'JFnnc7Jrad', 65, 3, 18, 34, 144, 4, 'hair_loss_symp_q5', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(901, 'rTKyZ2MONj', 65, 3, 18, 34, 144, 4, 'hair_loss_symp_q6', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(902, 'YmcA9ZXIfN', 65, 3, 18, 34, 144, 4, 'hair_loss_hlth_q1', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(903, 'G2kXe4z6SK', 65, 3, 18, 34, 144, 4, 'hair_loss_hlth_q2', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(904, 'vt9Ykks2z1', 65, 3, 18, 34, 144, 4, 'hair_loss_hlth_q3', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(905, 'QyoU4D8UU0', 65, 3, 18, 34, 144, 4, 'hair_loss_med_q1', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(906, 'eTeQmCpxH3', 65, 3, 18, 34, 144, 4, 'hair_loss_agreement_q1', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(907, 'g14tGD6ryw', 65, 3, 18, 34, 144, 4, 'hair_loss_agreement_q2', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(908, 'UPMgGsSQIY', 65, 3, 18, 34, 144, 4, 'hair_loss_agreement_q3', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(909, 'T8irD3unYj', 65, 3, 18, 34, 144, 4, 'hair_loss_agreement_q4', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(910, 'MydKbpyVYk', 65, 3, 18, 34, 144, 4, 'hair_loss_agreement_q5', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(911, 'NvhRJbrO7z', 65, 3, 18, 34, 144, 4, 'hair_loss_agreement_q6', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(912, 'X5kgee3jMc', 65, 9, 11, 27, 133, 10, 'acid_reflux_smpt_q1', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(913, 'Gt5SFIhmql', 65, 9, 11, 27, 133, 10, 'acid_reflux_smpt_q2', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(914, '7VPVr2Be0m', 65, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q1', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(915, 'WxC0TXp7AJ', 65, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q2', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(916, '2ty3KaOWu1', 65, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q3', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(917, 'SvDXsoVf5G', 65, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q4', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(918, '92d6hmdeO2', 65, 9, 11, 27, 133, 10, 'acid_reflux_med_q1', 'N', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(919, 'gksmEYhWpR', 65, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q1', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(920, 'o5rNwqeUCN', 65, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q2', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(921, 'At4Gb68c6k', 65, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q3', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(922, 'J05OaqZLjX', 65, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q4', 'Y', NULL, NULL, '2021-10-05 14:32:53', '2021-10-05 14:32:53'),
(923, 'nh2TqsHm7z', 66, 9, 11, 27, 133, 10, 'acid_reflux_smpt_q1', 'Y', NULL, NULL, '2021-10-05 14:54:10', '2021-10-05 14:54:10'),
(924, 'IUTGkc7h50', 66, 9, 11, 27, 133, 10, 'acid_reflux_smpt_q2', 'N', NULL, NULL, '2021-10-05 14:54:10', '2021-10-05 14:54:10'),
(925, '41BU2tAIg9', 66, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q1', 'N', NULL, NULL, '2021-10-05 14:54:10', '2021-10-05 14:54:10'),
(926, 'G5jqNjPm2u', 66, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q2', 'N', NULL, NULL, '2021-10-05 14:54:10', '2021-10-05 14:54:10'),
(927, 'Lykz4j9AZu', 66, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q3', 'N', NULL, NULL, '2021-10-05 14:54:10', '2021-10-05 14:54:10'),
(928, 'k1sszA1ASa', 66, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q4', 'N', NULL, NULL, '2021-10-05 14:54:10', '2021-10-05 14:54:10'),
(929, 'c5HaOPqYeE', 66, 9, 11, 27, 133, 10, 'acid_reflux_med_q1', 'N', NULL, NULL, '2021-10-05 14:54:10', '2021-10-05 14:54:10'),
(930, 'qoAMlInxag', 66, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q1', 'Y', NULL, NULL, '2021-10-05 14:54:10', '2021-10-05 14:54:10'),
(931, 'mwD6ng8Q8L', 66, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q2', 'Y', NULL, NULL, '2021-10-05 14:54:10', '2021-10-05 14:54:10'),
(932, 'hQQYJEaSuH', 66, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q3', 'Y', NULL, NULL, '2021-10-05 14:54:10', '2021-10-05 14:54:10'),
(933, 'tIV6xlTFS2', 66, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q4', 'Y', NULL, NULL, '2021-10-05 14:54:10', '2021-10-05 14:54:10'),
(934, 'CveaVfASWV', 67, 9, 11, 27, 133, 10, 'acid_reflux_smpt_q1', 'Y', NULL, NULL, '2021-10-06 02:57:05', '2021-10-06 02:57:05'),
(935, 'RS1aQHaXy5', 67, 9, 11, 27, 133, 10, 'acid_reflux_smpt_q2', 'N', NULL, NULL, '2021-10-06 02:57:05', '2021-10-06 02:57:05'),
(936, 'd2gZwaBgPY', 67, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q1', 'N', NULL, NULL, '2021-10-06 02:57:05', '2021-10-06 02:57:05'),
(937, '2PeYKy4RNp', 67, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q2', 'N', NULL, NULL, '2021-10-06 02:57:05', '2021-10-06 02:57:05'),
(938, '7eyv4fyj9M', 67, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q3', 'N', NULL, NULL, '2021-10-06 02:57:05', '2021-10-06 02:57:05'),
(939, 'LspHNg5u2h', 67, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q4', 'N', NULL, NULL, '2021-10-06 02:57:05', '2021-10-06 02:57:05'),
(940, 'gMoYdp7SkS', 67, 9, 11, 27, 133, 10, 'acid_reflux_med_q1', 'N', NULL, NULL, '2021-10-06 02:57:05', '2021-10-06 02:57:05'),
(941, 'DnQgeODRvt', 67, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q1', 'Y', NULL, NULL, '2021-10-06 02:57:05', '2021-10-06 02:57:05'),
(942, 'ycsstDjgBG', 67, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q2', 'Y', NULL, NULL, '2021-10-06 02:57:05', '2021-10-06 02:57:05'),
(943, 'ejv7sBCq9e', 67, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q3', 'Y', NULL, NULL, '2021-10-06 02:57:05', '2021-10-06 02:57:05'),
(944, 'i0eVBcTiHq', 67, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q4', 'Y', NULL, NULL, '2021-10-06 02:57:05', '2021-10-06 02:57:05'),
(945, 'G2hRnWFEOc', 68, 9, 11, 27, 133, 10, 'acid_reflux_smpt_q1', 'Y', NULL, NULL, '2021-10-06 15:37:42', '2021-10-06 15:37:42'),
(946, 'ewH9gR3wwy', 68, 9, 11, 27, 133, 10, 'acid_reflux_smpt_q2', 'N', NULL, NULL, '2021-10-06 15:37:42', '2021-10-06 15:37:42'),
(947, 'DjYIQU2bWu', 68, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q1', 'N', NULL, NULL, '2021-10-06 15:37:42', '2021-10-06 15:37:42'),
(948, 'hu4uJnJNwh', 68, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q2', 'N', NULL, NULL, '2021-10-06 15:37:42', '2021-10-06 15:37:42'),
(949, 'tdAP3gnpLL', 68, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q3', 'N', NULL, NULL, '2021-10-06 15:37:42', '2021-10-06 15:37:42'),
(950, 'OTQLOHta2o', 68, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q4', 'N', NULL, NULL, '2021-10-06 15:37:42', '2021-10-06 15:37:42'),
(951, 'rtCJ12NUsp', 68, 9, 11, 27, 133, 10, 'acid_reflux_med_q1', 'N', NULL, NULL, '2021-10-06 15:37:42', '2021-10-06 15:37:42'),
(952, 'JxfHEAoqNi', 68, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q1', 'Y', NULL, NULL, '2021-10-06 15:37:42', '2021-10-06 15:37:42'),
(953, 'KilXGbp3MZ', 68, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q2', 'Y', NULL, NULL, '2021-10-06 15:37:42', '2021-10-06 15:37:42'),
(954, 'zbPNl79Owy', 68, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q3', 'Y', NULL, NULL, '2021-10-06 15:37:42', '2021-10-06 15:37:42'),
(955, 'S2I0oXmLie', 68, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q4', 'Y', NULL, NULL, '2021-10-06 15:37:42', '2021-10-06 15:37:42'),
(956, 'x0kB4kB33F', 69, 9, 11, 27, 133, 10, 'acid_reflux_smpt_q1', 'Y', NULL, NULL, '2021-10-06 16:02:36', '2021-10-06 16:02:36'),
(957, 'A5N3KVq9DH', 69, 9, 11, 27, 133, 10, 'acid_reflux_smpt_q2', 'N', NULL, NULL, '2021-10-06 16:02:36', '2021-10-06 16:02:36'),
(958, 'VvvrIUA6X6', 69, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q1', 'N', NULL, NULL, '2021-10-06 16:02:36', '2021-10-06 16:02:36'),
(959, 'Q45gM7be0r', 69, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q2', 'N', NULL, NULL, '2021-10-06 16:02:36', '2021-10-06 16:02:36'),
(960, 'uPmkF0eXta', 69, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q3', 'N', NULL, NULL, '2021-10-06 16:02:36', '2021-10-06 16:02:36'),
(961, 'T34Br0tcEk', 69, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q4', 'N', NULL, NULL, '2021-10-06 16:02:36', '2021-10-06 16:02:36'),
(962, '73uY6GsVZn', 69, 9, 11, 27, 133, 10, 'acid_reflux_med_q1', 'N', NULL, NULL, '2021-10-06 16:02:36', '2021-10-06 16:02:36'),
(963, 'HspfopWZmg', 69, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q1', 'Y', NULL, NULL, '2021-10-06 16:02:36', '2021-10-06 16:02:36'),
(964, '9jymNfO9SC', 69, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q2', 'Y', NULL, NULL, '2021-10-06 16:02:36', '2021-10-06 16:02:36'),
(965, 'eY3KtO9a20', 69, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q3', 'Y', NULL, NULL, '2021-10-06 16:02:36', '2021-10-06 16:02:36'),
(966, 'yrPMQLLH1E', 69, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q4', 'Y', NULL, NULL, '2021-10-06 16:02:36', '2021-10-06 16:02:36'),
(967, 'nS8wG4LW4w', 70, 9, 11, 27, 133, 10, 'acid_reflux_smpt_q1', 'Y', NULL, NULL, '2021-10-06 16:16:34', '2021-10-06 16:16:34'),
(968, 'NxOOUBn6aD', 70, 9, 11, 27, 133, 10, 'acid_reflux_smpt_q2', 'N', NULL, NULL, '2021-10-06 16:16:34', '2021-10-06 16:16:34'),
(969, '7FDNIr9GSS', 70, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q1', 'N', NULL, NULL, '2021-10-06 16:16:34', '2021-10-06 16:16:34'),
(970, 'YtXXoYxQyc', 70, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q2', 'N', NULL, NULL, '2021-10-06 16:16:34', '2021-10-06 16:16:34'),
(971, 'SfEAN5sX73', 70, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q3', 'N', NULL, NULL, '2021-10-06 16:16:34', '2021-10-06 16:16:34'),
(972, 'Nsb8oTNKL8', 70, 9, 11, 27, 133, 10, 'acid_reflux_hlth_q4', 'N', NULL, NULL, '2021-10-06 16:16:34', '2021-10-06 16:16:34'),
(973, '6M27CtPyhc', 70, 9, 11, 27, 133, 10, 'acid_reflux_med_q1', 'N', NULL, NULL, '2021-10-06 16:16:34', '2021-10-06 16:16:34'),
(974, 'J4oWSrXmtC', 70, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q1', 'Y', NULL, NULL, '2021-10-06 16:16:34', '2021-10-06 16:16:34'),
(975, 'u6QFB6IkQL', 70, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q2', 'Y', NULL, NULL, '2021-10-06 16:16:34', '2021-10-06 16:16:34'),
(976, 'qaDfnvVF0s', 70, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q3', 'Y', NULL, NULL, '2021-10-06 16:16:34', '2021-10-06 16:16:34'),
(977, 'dHT3JKMdhx', 70, 9, 11, 27, 133, 10, 'acid_reflux_agreement_q4', 'Y', NULL, NULL, '2021-10-06 16:16:34', '2021-10-06 16:16:34');

-- --------------------------------------------------------

--
-- Table structure for table `kod_global_settings`
--

CREATE TABLE `kod_global_settings` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `setting_title` varchar(255) DEFAULT NULL,
  `setting_value` varchar(255) NOT NULL,
  `setting_key` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_global_settings`
--

INSERT INTO `kod_global_settings` (`id`, `hash_id`, `setting_title`, `setting_value`, `setting_key`, `created_at`, `updated_at`) VALUES
(1, NULL, 'is delivery free', '0', 'is_delivery_free', NULL, '2021-06-10 07:07:31'),
(2, NULL, 'Minimum amount for free delivery', '45', 'minimum_amount_for_delivery', NULL, NULL),
(14, 'MGW6Ub1630994885', 'medicine medias limit', '5', 'medicine_medias_limit', '2021-09-07 05:08:05', '2021-09-07 05:23:15'),
(15, 'XgD7Z61630996534', 'recaptcha attempt', '2', 'recaptcha_attempt', '2021-09-07 05:35:34', '2021-09-07 05:35:34'),
(16, 'rSldFG1630996557', 'throttle attempt per minute', '1', 'throttle_attempt_per_minute', '2021-09-07 05:35:57', '2021-09-07 05:35:57'),
(17, 'IYkdto1630996583', 'throttle attempt', '4', 'throttle_attempt', '2021-09-07 05:36:23', '2021-09-07 05:36:23'),
(18, 'oHlHXc1631110358', 'For Local', '10', 'for_local', '2021-09-08 13:12:38', '2021-09-08 13:12:38'),
(19, 'GDz6LL1631110369', 'For International', '400', 'for_international', '2021-09-08 13:12:49', '2021-09-08 13:12:49'),
(20, 'q1XcNV1632740717', 'is_sunday_off', '0', 'is_sunday_off', '2021-09-27 10:05:17', '2021-09-27 10:05:17'),
(21, '3hbrGR1632740727', 'is_satureday_of', '0', 'is_satureday_of', '2021-09-27 10:05:27', '2021-09-27 10:05:27'),
(22, 'Nl3z4D1632740738', 'cut_off_time', '14', 'cut_off_time', '2021-09-27 10:05:38', '2021-09-27 10:05:38'),
(23, 'MuY78c1633423405', 'Is delivery free international', '1', 'Is_delivery_free_international', '2021-10-05 07:43:25', '2021-10-05 07:43:25'),
(24, 'U8RFFx1633423419', 'Is delivery free local', '1', 'Is_delivery_free_local', '2021-10-05 07:43:39', '2021-10-05 07:43:39'),
(25, 'B2kSeK1633423430', 'local delivery purchase limit', '50', 'local_delivery_purchase_limit', '2021-10-05 07:43:50', '2021-10-05 09:31:38'),
(26, '4JHt3i1633423442', 'International delivery purchase limit', '0', 'International_delivery_purchase_limit', '2021-10-05 07:44:02', '2021-10-05 07:44:02'),
(27, 'NkD7f81634041689', 'product medias limit', '4', 'product_medias_limit', '2021-10-12 07:28:09', '2021-10-12 07:28:09'),
(28, 'ZMUO6q1634129864', 'Lock website', '1234', 'website_lock_password', '2021-10-13 11:57:44', '2021-12-10 06:04:38'),
(29, 'VxD3h91634129942', 'website_under_maintenance', '0', 'website_under_maintenance', '2021-10-13 11:59:02', '2021-12-10 06:12:31'),
(30, 'mtB79A1635158513', 'No Payment || Reservation', '1', 'no_payment_or_reservation', '2021-10-25 05:41:53', '2021-10-25 05:41:53'),
(31, 'HKdftS1638534654', 'click and collect', '1', 'click_and_collect', '2021-12-03 07:30:54', '2021-12-06 08:09:00'),
(32, 'HFXjcD1638534676', 'home delivery', '1', 'home_delivery', '2021-12-03 07:31:16', '2021-12-06 08:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `kod_holidays`
--

CREATE TABLE `kod_holidays` (
  `id` int(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kod_maf`
--

CREATE TABLE `kod_maf` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_details_id` varchar(255) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `symptoms` varchar(255) DEFAULT NULL,
  `pregnant_status` tinyint(2) DEFAULT 0,
  `condition_status` tinyint(2) DEFAULT 0,
  `medicine_status` tinyint(2) DEFAULT 0,
  `conditions` varchar(255) DEFAULT NULL,
  `medicine` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_maf`
--

INSERT INTO `kod_maf` (`id`, `order_details_id`, `age`, `symptoms`, `pregnant_status`, `condition_status`, `medicine_status`, `conditions`, `medicine`, `created_at`, `updated_at`) VALUES
(8, '70', 1, 'symptoms', 0, 0, 0, NULL, NULL, '2021-11-24 07:43:14', '2021-11-24 07:43:14'),
(9, '69', 1, 'jkjjkkjkj', 0, 0, 0, NULL, NULL, '2021-11-24 07:47:05', '2021-11-24 07:47:05'),
(10, '77', 1, 'symptoms testing', 0, 1, 1, 'Insert conditions', 'Insert medicines', '2021-11-24 10:30:08', '2021-11-24 10:30:08'),
(11, '78', 6, 'symptoms', 0, 1, 1, 'Insert conditions 677667', 'Insert medicines', '2021-11-24 10:30:08', '2021-11-24 10:30:08'),
(12, '81', 1, 'symptoms', 0, 1, 1, 'Insert conditions', 'Insert medicines', '2021-11-24 11:29:50', '2021-11-24 11:29:50'),
(13, '129', 1, 'symptoms', 0, 1, 0, 'conditions', NULL, '2021-12-07 06:19:07', '2021-12-07 06:19:07'),
(14, '136', 1, 'symptoms', 0, 0, 0, NULL, NULL, '2021-12-08 11:11:10', '2021-12-08 11:11:10'),
(15, '141', 1, 'symptoms', 0, 0, 0, NULL, NULL, '2021-12-08 13:07:23', '2021-12-08 13:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `kod_medicine_medias`
--

CREATE TABLE `kod_medicine_medias` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `media` text DEFAULT NULL,
  `media_no` varchar(50) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_medicine_medias`
--

INSERT INTO `kod_medicine_medias` (`id`, `hash_id`, `medicine_id`, `media`, `media_no`, `display_order`, `status`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(1, 'xFY5ne1631012970', 1, 'media-1-1.jpg', NULL, 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:09:30', '2021-09-07 10:09:30'),
(2, 'yYODb61631016687', 2, 'media-1-2.jpg', NULL, 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:11:27', '2021-09-07 11:11:27'),
(3, 'SaXAUx1631016703', 2, 'media-1-3.jpg', NULL, 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:11:43', '2021-09-07 11:11:43'),
(4, '13jtvo1631018863', 3, 'media-1-4.jpg', NULL, 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:47:43', '2021-09-07 11:47:43'),
(5, '0jYh4I1631018875', 3, 'media-1-5.jpg', NULL, 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:47:55', '2021-09-07 11:47:55'),
(6, 'aMcjws1631018891', 3, 'media-1-6.jpg', NULL, 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:48:11', '2021-09-07 11:48:11'),
(9, 'xxifJm1631021293', 4, 'media-1-9.jpg', NULL, 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:28:13', '2021-09-07 12:28:13'),
(10, 'RJtlnG1631021315', 4, 'media-1-10.jpg', NULL, 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:28:35', '2021-09-07 12:28:35'),
(11, 'lrh9071631021338', 4, 'media-1-11.jpg', NULL, 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:28:58', '2021-09-07 12:28:58'),
(12, 'bGo9ku1631022989', 5, 'media-1-12.jpg', NULL, 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:56:29', '2021-09-07 12:56:29'),
(13, 'pDP44K1631080481', 6, 'media-1-13.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:54:41', '2021-09-08 04:54:41'),
(14, '1lLnou1631082146', 7, 'media-1-14.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:22:26', '2021-09-08 05:22:26'),
(15, 'yYYo6u1631082158', 7, 'media-1-15.jpg', NULL, 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:22:38', '2021-09-08 05:22:38'),
(16, 'VTKCjd1631086974', 8, 'media-1-16.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:42:54', '2021-09-08 06:42:54'),
(17, 'mnWSTD1631087882', 9, 'media-1-17.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:58:02', '2021-09-08 06:58:02'),
(18, 'BDTIEt1631088256', 10, 'media-1-18.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:04:16', '2021-09-08 07:04:16'),
(19, 'BT3hVH1631088901', 11, 'media-1-19.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:15:01', '2021-09-08 07:15:01'),
(20, 'N51utS1631090108', 12, 'media-1-20.png', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:35:08', '2021-09-08 07:35:08'),
(21, 'Yf8jNa1631090566', 13, 'media-1-21.png', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:42:46', '2021-09-08 07:42:46'),
(23, 'Wt1v8J1631091567', 15, 'media-1-23.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:59:27', '2021-09-08 07:59:27'),
(24, 'HDHE3l1631096033', 16, 'media-1-24.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:13:53', '2021-09-08 09:13:53'),
(25, 'S9ddjc1631096644', 17, 'media-1-25.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:24:04', '2021-09-08 09:24:04'),
(26, 'u7XqPJ1631097282', 18, 'media-1-26.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:34:42', '2021-09-08 09:34:42'),
(27, 'R0fsZl1631098733', 19, 'media-1-27.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:58:53', '2021-09-08 09:58:53'),
(28, '7fYDWm1631100026', 20, 'media-1-28.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:20:26', '2021-09-08 10:20:26'),
(29, 'MrJfnn1631100973', 21, 'media-1-29.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:36:13', '2021-09-08 10:36:13'),
(30, 'pk85lh1631102305', 22, 'media-1-30.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:58:25', '2021-09-08 10:58:25'),
(31, 'mBALFu1631102316', 22, 'media-1-31.jpg', NULL, 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:58:36', '2021-09-08 10:58:36'),
(32, '983m9V1631103171', 23, 'media-1-32.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:12:51', '2021-09-08 11:12:51'),
(33, '4l74Hw1631103215', 23, 'media-1-33.jpg', NULL, 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:13:35', '2021-09-08 11:13:35'),
(34, 'f6GxNw1631103813', 24, 'media-1-34.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:23:33', '2021-09-08 11:23:33'),
(35, 'lG3Ueq1631105167', 25, 'media-1-35.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:46:07', '2021-09-08 11:46:07'),
(36, 'AV6CZA1631105893', 26, 'media-1-36.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:58:13', '2021-09-08 11:58:13'),
(37, 'WnSFq51631106447', 27, 'media-1-37.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:07:27', '2021-09-08 12:07:27'),
(38, 'cnCZzS1631107336', 28, 'media-1-38.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:22:16', '2021-09-08 12:22:16'),
(39, 'EvkGM61631107355', 28, 'media-1-39.jpg', NULL, 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:22:35', '2021-09-08 12:22:35'),
(40, 'RVZoap1631108202', 29, 'media-1-40.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:36:42', '2021-09-08 12:36:42'),
(41, 'PfQ4d91631108919', 30, 'media-1-41.jpg', NULL, 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:48:39', '2021-09-08 12:48:39'),
(42, 'hzTaFc1631164258', 31, 'media-1-42.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:10:58', '2021-09-09 04:10:58'),
(43, 'g2gJPF1631164274', 31, 'media-1-43.jpg', NULL, 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:11:14', '2021-09-09 04:11:14'),
(44, 'uzlDoN1631164729', 32, 'media-1-44.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:18:49', '2021-09-09 04:18:49'),
(45, '7pWszM1631165547', 33, 'media-1-45.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:32:27', '2021-09-09 04:32:27'),
(46, 'RJKFN11631166142', 34, 'media-1-46.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:42:22', '2021-09-09 04:42:22'),
(47, '12rlNA1631166911', 35, 'media-1-47.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:55:11', '2021-09-09 04:55:11'),
(48, 'pTZwsG1631166928', 35, 'media-1-48.jpg', NULL, 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:55:28', '2021-09-09 04:55:28'),
(49, 'ju477A1631166943', 35, 'media-1-49.jpg', NULL, 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:55:43', '2021-09-09 04:55:43'),
(50, 'FaiZUO1631168758', 36, 'media-1-50.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:25:58', '2021-09-09 05:25:58'),
(51, 'flHhIT1631169397', 37, 'media-1-51.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:36:37', '2021-09-09 05:36:37'),
(52, 'X1sMUy1631169792', 38, 'media-1-52.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:43:12', '2021-09-09 05:43:12'),
(53, 'pssOgD1631170613', 39, 'media-1-53.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:56:53', '2021-09-09 05:56:53'),
(54, 'RnX5MM1631171440', 40, 'media-1-54.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:10:40', '2021-09-09 06:10:40'),
(55, 'ADuSAv1631172093', 41, 'media-1-55.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:21:33', '2021-09-09 06:21:33'),
(56, '25Ftp51631175771', 42, 'media-1-56.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:22:51', '2021-09-09 07:22:51'),
(57, 'vhOhgx1631176529', 43, 'media-1-57.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:35:29', '2021-09-09 07:35:29'),
(58, '603qE81631177066', 44, 'media-1-58.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:44:26', '2021-09-09 07:44:26'),
(59, 'ldst0J1631177503', 45, 'media-1-59.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:51:43', '2021-09-09 07:51:43'),
(60, 'Jedtz41631184364', 46, 'media-1-60.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 09:46:04', '2021-09-09 09:46:04'),
(61, 'BQvTLC1631184405', 46, 'media-1-61.jpg', NULL, 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 09:46:45', '2021-09-09 09:46:45'),
(62, 'AUTJg51631185645', 48, 'media-1-62.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:07:25', '2021-09-09 10:07:25'),
(63, 'RMAGu61631187326', 49, 'media-1-63.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:35:26', '2021-09-09 10:35:26'),
(64, 'iA0ozE1631188439', 50, 'media-1-64.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:53:59', '2021-09-09 10:53:59'),
(65, 'zinyJ61631189117', 51, 'media-1-65.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:05:17', '2021-09-09 11:05:17'),
(66, 'cnKhYp1631189847', 52, 'media-1-66.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:17:27', '2021-09-09 11:17:27'),
(67, 'fkOsnK1631190300', 53, 'media-1-67.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:25:00', '2021-09-09 11:25:00'),
(68, 'XoYjDi1631190643', 54, 'media-1-68.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:30:43', '2021-09-09 11:30:43'),
(69, 'DN0ALC1631190665', 54, 'media-1-69.jpg', NULL, 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:31:05', '2021-09-09 11:31:05'),
(70, 'sk7zSV1631190710', 54, 'media-1-70.jpg', NULL, 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:31:50', '2021-09-09 11:31:50'),
(72, 'UcUDQN1631191309', 55, 'media-1-72.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:41:49', '2021-09-09 11:41:49'),
(73, 'OR8Own1631191335', 55, 'media-1-73.jpg', NULL, 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:42:15', '2021-09-09 11:42:15'),
(74, 'wDzsFX1631191369', 55, 'media-1-74.jpg', NULL, 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:42:49', '2021-09-09 11:42:49'),
(75, 'K2Gxkd1631192267', 56, 'media-1-75.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:57:47', '2021-09-09 11:57:47'),
(76, 'bRLiJV1631192781', 57, 'media-1-76.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:06:21', '2021-09-09 12:06:21'),
(77, '3xXI0p1631193095', 58, 'media-1-77.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:11:35', '2021-09-09 12:11:35'),
(78, 'sFLbWt1631194465', 59, 'media-1-78.jpg', NULL, 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:34:25', '2021-09-09 12:34:25'),
(79, 'BnwdhO1631194482', 59, 'media-1-79.jpg', NULL, 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:34:42', '2021-09-09 12:34:42'),
(80, 'niGbyI1631512507', 60, 'media-1-80.jpg', NULL, 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 04:55:07', '2021-09-13 04:55:07'),
(81, 'zsMlcZ1631513362', 61, 'media-1-81.jpg', NULL, 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:09:22', '2021-09-13 05:09:22'),
(82, 'NE6zZk1631514246', 62, 'media-1-82.jpg', NULL, 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:24:06', '2021-09-13 05:24:06'),
(83, '2PzECr1631514264', 62, 'media-1-83.jpg', NULL, 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:24:24', '2021-09-13 05:24:24'),
(84, 'fLDdmQ1631514286', 62, 'media-1-84.jpg', NULL, 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:24:46', '2021-09-13 05:24:46'),
(85, 'UEkWra1631515133', 63, 'media-1-85.jpg', NULL, 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:38:53', '2021-09-13 05:38:53'),
(86, 'Wy4uDy1631515665', 64, 'media-1-86.jpg', NULL, 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:47:45', '2021-09-13 05:47:45'),
(87, 'yiPeUj1631516387', 65, 'media-1-87.jpg', NULL, 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:59:47', '2021-09-13 05:59:47'),
(88, 'LcUbGE1631516995', 66, 'media-1-88.jpg', NULL, 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:09:55', '2021-09-13 06:09:55'),
(89, 'IFcPfY1631517775', 67, 'media-1-89.jpg', NULL, 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:22:55', '2021-09-13 06:22:55'),
(90, 'ZTGDXr1631518800', 68, 'media-1-90.jpg', NULL, 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:40:00', '2021-09-13 06:40:00'),
(91, 'x1BzdH1631519574', 69, 'media-1-91.jpg', NULL, 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:52:54', '2021-09-13 06:52:54'),
(92, 'H2zX4F1631520752', 70, 'media-1-92.jpg', NULL, 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:12:32', '2021-09-13 07:12:32'),
(93, '3qEU6U1631523006', 14, 'media-1-93.png', NULL, 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:50:06', '2021-09-13 07:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `kod_med_categories`
--

CREATE TABLE `kod_med_categories` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT 2,
  `raf_id` int(11) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `seo_url_slug` varchar(500) DEFAULT NULL,
  `image_1` text DEFAULT NULL,
  `image_2` text DEFAULT NULL,
  `embed_video` text DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `advance_settings` enum('1','0') DEFAULT '0',
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_keywords` varchar(500) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_med_categories`
--

INSERT INTO `kod_med_categories` (`id`, `hash_id`, `section_id`, `position_id`, `raf_id`, `title`, `sub_heading`, `description`, `seo_url_slug`, `image_1`, `image_2`, `embed_video`, `display_order`, `status`, `advance_settings`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'tAwclX1631011923', 1, 1, 3, 'Erectile dysfunction', 'Safe and Effective Treatment', '<p>Erectile dysfunction (also known as impotence) is a very common condition, which affects the majority of men at some point in their lives. Up to 50% of men aged 40 - 70 and up to 70% of men over the age of 70 suffer from erectile dysfunction to some extent.</p>\r\n\r\n<p>There are several options, which are currently licensed for the treatment of erectile dysfunction in the UK. Modern treatments are safe, affordable and effective and can help up to 80% of men treat erectile dysfunction.</p>', 'erectile-dysfunction', 'image-1-tAwclX1631011923.jpg', 'image-2-tAwclX1631011923.jpg', '', 1, '1', NULL, 'Erectile Dysfunction Treatment', 'Erectile Dysfunction Treatment', 'Erectile Dysfunction Treatment', '2021-09-07 09:52:03', '2021-09-07 09:53:08'),
(2, 'iwRAmY1631082444', 1, 1, 24, 'Premature Ejaculation', 'Safe and Effective Treatment', '<p>Priligy is a modern medication that can treat premature ejaculation and help you last up to 3x longer.</p>', 'premature-ejaculation', 'image-1-iwRAmY1631082444.jpg', 'image-2-iwRAmY1631082444.jpg', '', 10, '1', '1', 'Premature Ejaculation Pills', 'Premature Ejaculation Pills', 'Premature Ejaculation Pills', '2021-09-08 05:27:24', '2021-09-08 07:19:35'),
(3, 'xGYEmR1631082577', 1, 2, 4, 'Hair Loss', 'Safe and effective treatment', '<p>Male Pattern Baldness is a very common condition affecting 6.5 million men in the UK.</p>\r\n\r\n<p>Modern treatments are very effective at helping to stop hair loss and even help to regrow hair. Up to 9/10 men find these treatments effective.</p>\r\n\r\n<p>We offer Regaine and Propecia (finestaride), the only two pharmacy medications proven to help with hair loss.</p>', 'hair-loss', 'image-1-xGYEmR1631082577.jpg', 'image-2-xGYEmR1631082577.jpg', '', 3, '1', '1', 'Hair Loss Treatment', 'Hair Loss Treatment', 'Hair Loss Treatment', '2021-09-08 05:29:37', '2021-09-08 05:29:37'),
(4, 'c1M6LY1631082720', 3, 1, 35, 'Weight Loss Pen', 'Weight Loss Pen', '<p>The treatment we provide is Saxenda. Saxenda® is an FDA-approved, prescription injectable medicine that, when used with a low-calorie meal plan and increased physical activity, may help some adults with excess weight who also have weight-related medical problems (such as high blood pressure, high cholesterol, or type 2 diabetes), or obesity,b to lose weight and keep it off.</p>', 'weight-loss-pen', 'image-1-c1M6LY1631082720.jpg', 'image-2-c1M6LY1631082720.jpg', '', 11, '1', NULL, 'Saxenda weight loss pens', 'Saxenda weight loss pens', 'Saxenda weight loss pens', '2021-09-08 05:32:00', '2021-09-08 07:23:36'),
(5, 'xRnYB61631082876', 3, 1, 7, 'Allergy', 'Safe and Effective Treatment', '<p>Hay fever (seasonal allergic rhinitis) is an allergic reaction caused by an allergen such as pollen, dust, mould or fungal spores that causes inflammation of the inside of the nose. It\'s a very common condition, estimated to affect around 1 in every 5 people in the UK.</p>\r\n\r\n<p>Allergic rhinitis typically causes cold-like symptoms, such as sneezing, itchiness and a blocked or runny nose. But unlike a cold, hay fever isn\'t caused by a virus.</p>', 'allergy', 'image-1-xRnYB61631082876.jpg', 'image-2-xRnYB61631082876.jpg', '', 6, '1', NULL, 'Hay Fever Treatment', 'Hay Fever Treatment', 'Hay Fever Treatment', '2021-09-08 05:34:36', '2021-09-08 07:21:55'),
(6, 'AsK8e81631083102', 2, 1, 8, 'Period Delay', 'Safe and effective treatment', '<p>Norethisterone can be used to delay your period by up to 17 days.</p>', 'period-delay', 'image-1-AsK8e81631083102.jpg', 'image-2-AsK8e81631083102.jpg', '', 13, '1', '1', 'Period Delay', 'Period Delay', 'Period Delay', '2021-09-08 05:38:22', '2021-09-08 07:24:58'),
(7, '6EtIl91631083213', 3, 1, 6, 'Acne Treatment', 'Prescription Strength Treatment', '<p>Acne is a common skin condition which affects most people at some point. Over 80% of people between the ages of 11 and 30 will be affected by acne.</p>\r\n\r\n<p>Acne causes spots, oily skin and can sometimes be painful to touch. It can affect your face, back and chest.</p>', 'acne-treatment', 'image-1-6EtIl91631083213.jpg', 'image-2-6EtIl91631083213.jpg', '', 5, '1', '1', 'Acne Treatment', 'Acne Treatment', 'Acne Treatment', '2021-09-08 05:40:13', '2021-09-08 07:20:24'),
(8, 'zuFNJ81631083444', 3, 2, 2, 'Weight Loss', 'Safe and Effective Treatment', '<p>Losing weight can be an extremely challenging task but the health and self-esteem benefits can be well worth the effort. We provide clinically proven weight loss medicine, which have been licensed in the UK for helping you lose weight safely and effectively.</p>', 'weight-loss', 'image-1-zuFNJ81631083444.jpg', 'image-2-zuFNJ81631083444.jpg', '', 12, '1', NULL, 'Weight Loss Treatment', 'Weight Loss Treatment', 'Weight Loss Treatment', '2021-09-08 05:44:04', '2021-09-08 07:23:43'),
(9, 'G61Vfa1631083776', 3, 1, 10, 'Acid Reflux', 'Safe and Effective Treatment', '<p>Gastro-oesophageal reflux disease (GORD) is a digestive condition that commonly occurs in one in five people. It can affect people of all ages, including children. It is most common in adults aged 40 and over and occurs more in men than in women.</p>', 'acid-reflux', 'image-1-G61Vfa1631083776.jpg', 'image-2-G61Vfa1631083776.jpg', '', 2, '1', '1', 'Acid Reflux', 'Acid Reflux', 'Acid Reflux', '2021-09-08 05:49:36', '2021-09-08 07:19:01'),
(10, 'Cv7cXn1631084036', 3, 2, 9, 'Migraine', 'Safe and Effective Treatment', '<p>Migraines are a common condition affecting up to 20% of women and 6% of men. Sufferers experience severe headaches with a throbbing pain felt at the front or side of the head.</p>\r\n\r\n<p>Migraine relief medications are safe and effective and can help treat the causes as well as the symptoms of migraines.</p>', 'migraine', 'image-1-Cv7cXn1631084036.jpg', 'image-2-Cv7cXn1631084036.jpg', '', 14, '1', '1', 'Migraine Treatment', 'Migraine Treatment', 'Migraine Treatment', '2021-09-08 05:53:56', '2021-09-08 07:25:06'),
(11, 'ygMeRW1631084395', 3, 1, 13, 'Stop Smoking', 'Safe and Effective Treatment', '<p>Champix is an effective medicine which can double your chance of quitting smoking.</p>', 'stop-smoking', 'image-1-ygMeRW1631084395.jpg', 'image-2-ygMeRW1631084395.jpg', '', 17, '1', '1', 'Stop Smoking', 'Stop Smoking', 'Stop Smoking', '2021-09-08 05:59:55', '2021-09-08 07:26:05'),
(12, 'FNCH7G1631084538', 3, 2, 5, 'Asthma Inhaler', 'Safe and Effective Treatment', '<p>Ventolin inhalers for the fast, effective treatment of asthma.</p>\r\n\r\n<p><strong>This service is not suitable for urgent asthma or breathing problems. If you are struggling with your breathing, having an asthma attack or have any chest pains or discomfort call 999 or go to A&amp;E immediately!</strong></p>', 'asthma-inhaler', 'image-1-FNCH7G1631084538.jpg', 'image-2-FNCH7G1631084538.jpg', '', 15, '1', '1', 'Asthma Inhaler', 'Asthma Inhaler', 'Asthma Inhaler', '2021-09-08 06:02:18', '2021-09-08 07:25:20'),
(13, 'HEWrEq1631084716', 3, 2, 19, 'Genital Herpes', 'Safe and Effective Treatment', '<p>Genital herpes is a sexual transmitted infection caused by the herpes simplex virus. Genital herpes is very common and affects as much as 30% of the population globally.</p>\r\n\r\n<p>Genital herpes is a lifelong disease which can cause painful blisters on the genitals and surrounding areas during an outbreak.</p>\r\n\r\n<p>Although there is no cure for genital herpes the symptoms can be effectively controlled using antiviral medications.</p>', 'genital-herpes', 'image-1-HEWrEq1631084716.jpg', 'image-2-HEWrEq1631084716.jpg', '', 4, '1', '1', 'Genital Herpes', 'Genital Herpes', 'Genital Herpes', '2021-09-08 06:05:16', '2021-09-08 07:20:10'),
(14, 'MecCfh1631084879', 3, 2, 31, 'Genital Warts', 'Safe and Effective Treatment', '<p>Genital warts are a very common sexually transmitted infection (STI). Genital warts are small, benign, fleshy growths or bumps that occur on or around the genital or anal area. Genital warts occur due to a viral skin infection that is caused by the human papillomavirus (HPV). Genital warts are usually painless and do not pose serious harm to a person\'s health. However, they can appear unsightly and may cause anxiety or distress.</p>\r\n\r\n<p>We offer several treatment options to help control genital warts. Treatments are safe, effective and affordable.</p>', 'genital-warts', 'image-1-MecCfh1631084879.jpg', 'image-2-MecCfh1631084879.jpg', '', 16, '1', '1', 'Genital Warts', 'Genital Warts', 'Genital Warts', '2021-09-08 06:07:59', '2021-09-08 07:25:40'),
(15, '6QEisM1631085007', 3, 2, 33, 'Flu Treatment', 'Safe and Effective Treatment', '<p>Tamiflu is an antiviral medication used to treat or prevent the flu (influenza virus). Tamiflu is currently the only licensed medication that has been clinically proven to reduce the duration of a flu outbreak. Please note, Tamiflu is not effective at treating or preventing Covid-19.</p>', 'flu-treatment', 'image-1-6QEisM1631085007.jpg', 'image-2-6QEisM1631085007.jpg', '', 9, '1', '1', 'Flu Treatment', 'Flu Treatment', 'Flu Treatment', '2021-09-08 06:10:07', '2021-09-08 07:23:18'),
(16, 'Awa8Mc1631085149', 3, 2, 32, 'Cold Sore', 'Safe and Effective Treatment', '<p>Cold sores are caused by a virus called the herpes simplex virus (HSV). This virus is very common and it’s estimated to affect approximately 67% of the world’s population. The virus is caught by coming into contact with other people with an active infection. This is often during childhood when children come into close contact through activities such as play.</p>\r\n\r\n<p>For most of your life, the virus will lie dormant in your skin, suppressed by your immune system. Occasionally the virus will reactivate causing a cold sore. This is often when your immune system is temporarily weakened, for example through stress or illness.</p>', 'cold-sore', 'image-1-Awa8Mc1631085149.jpg', 'image-2-Awa8Mc1631085149.jpg', '', 7, '1', '1', 'Cold Sore', 'Cold Sore', 'Cold Sore', '2021-09-08 06:12:29', '2021-09-08 07:22:02'),
(17, 'TGYU5c1631085316', 4, 2, 12, 'Anti-Malaria', 'Safe and Effective Treatment', '<p>Effective malaria medication with few side effects. Can start on short notice and finishes only one week after the trip. Also available in generic form.</p>', 'anti-malaria', 'image-1-TGYU5c1631085316.jpg', 'image-2-TGYU5c1631085316.jpg', '', 8, '1', '1', 'Anti-Malaria', 'Anti-Malaria', 'Anti-Malaria', '2021-09-08 06:15:16', '2021-09-08 07:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `kod_med_dosage`
--

CREATE TABLE `kod_med_dosage` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `dosage` mediumtext DEFAULT NULL,
  `status` enum('1','0') DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kod_med_long_description`
--

CREATE TABLE `kod_med_long_description` (
  `id` int(11) NOT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_med_long_description`
--

INSERT INTO `kod_med_long_description` (`id`, `medicine_id`, `hash_id`, `title`, `description`, `display_order`, `status`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(1, 1, 'BJrRfp1631012753', 'Viagra Info', '<h5>What is Viagra?</h5>\r\n\r\n<p>Viagra is the most well-known treatment for adult men with erectile dysfunction, sometimes known as impotence. This is when a man cannot get, or keep a hard, erect penis suitable for sexual activity. Viagra pills have been used to treat erectile dysfunction for over two decades and been proven to be very <a href=\"https://www.ncbi.nlm.nih.gov/pubmed/9886582\">effective</a> for more than 80% of men.</p>\r\n\r\n<p>When you take Viagra pills you may be able to:</p>\r\n\r\n<ul>\r\n	<li>Improve your ability to get and maintain an erection</li>\r\n	<li>Be more confident in your ability to get and maintain an erection</li>\r\n	<li>Be satisfied with the hardness of your erections</li>\r\n</ul>\r\n\r\n<h5>What is Sildenafil?</h5>\r\n\r\n<p>Sildenafil (also known as sildenafil citrate) is the generic version of the Viagra licensed since 2013 in the UK.</p>\r\n\r\n<h5>What is the difference between Viagra and Sildenafil?</h5>\r\n\r\n<p>Sildenafil citrate is the active ingredient in Viagra and is available in a generic, unbranded tablet. Sildenafil and Viagra are medically equivalent but Sildenafil is available at a much lower cost.</p>\r\n\r\n<p>Generic medicines contain the same active ingredient and are equally effective and medically equivalent as the branded products but are available at a lower price. Generic manufacturers have to demonstrate that they are medically identical to the branded product - i.e. they offer the same quality, strength, stability and effectiveness.</p>\r\n\r\n<p>Generic medicines are required meet the same standards of safety, quality and efficacy as the branded medication. To receive market approval from the <a href=\"https://www.ema.europa.eu/en\" rel=\"noreferrer noopener\" target=\"_blank\">European Medicines Agency</a> and <a href=\"https://www.gov.uk/government/organisations/medicines-and-healthcare-products-regulatory-agency\" rel=\"noreferrer noopener\" target=\"_blank\">MHRA</a>, a generic medicine must be \'bioequivalent\' to the originator product.</p>\r\n\r\n<h5>What is Viagra Connect</h5>\r\n\r\n<p>Viagra Connect is an over the counter medicine licensed by <a href=\"https://www.pfizer.com\">Pfizer</a> which is identical to Viagra. The medicine is available without prescription from pharmacies but the patient must complete a questionnaire which the pharmacist will check before dispensing.</p>\r\n\r\n<h5>How Can I Buy Viagra Online?</h5>\r\n\r\n<p>If you would like to order Viagra online. Our prescriber partners at Health Finder Pro LTD will review your responses to our medical questionnaire and ensure the medicine is appropriate for you. If the medication is appropriate, we will send the medicine to you in discreet packaging.</p>\r\n\r\n<p>Find a registered online pharmacy – there are many websites from which you can buy Viagra. However, many of them are neither legimate UK licensed online pharmacies, which means taking the medicines they sell could be dangerous. Before buying any medicine online, you should always check whether the company you are using has been approved by the General Pharmaceutical Council. You should also pay attention to the fact Viagra is prescription-only medication and any website selling it without the involvement of a UK licensed prescriber is not safe.</p>\r\n\r\n<h5>Choosing the Correct Viagra Dosage</h5>\r\n\r\n<p>The recommended starting dose for Viagra (sildenafil) is one 50mg pill taken 1 hour before sexual activity. If you achieve the desired effect but are suffering from side effects, try lowering the dose to 25mg. If after trying 50mg pills four times without the desired effect, and you are not experiencing side effects, increase the dose to 100mg. If after trying 100mg 8 separate times without effect you should cease treatment and consult your doctor. You should not take Viagra (sildenafil) more than once a day as this will have not increase the effectiveness and may increase the likelihood of experiencing side effects.</p>\r\n\r\n<h5>How To Take Viagra</h5>\r\n\r\n<p>You should take Viagra (Sildenafil) about one hour before you plan to have sex. Swallow the tablet whole with a glass of water.</p>\r\n\r\n<p>Viagra (Sildenafil) can be taken with or without food. However, you may find that Viagra (Sildenafil) takes longer to start working if you take it with a heavy meal.</p>\r\n\r\n<h5>How does Viagra work?</h5>\r\n\r\n<p>Viagra belongs to a class of medication known as PDE5 (Phosphodiesterase type 5) inhibitors. In the presence of sexual stimulation, PDE5 inhibitors such as Viagra relax smooth muscle and increase blood flow to the penis, helping to restore impaired erectile function.</p>\r\n\r\n<h5>How long does Viagra Last?</h5>\r\n\r\n<p>Viagra will stay in the body on average 4 hours after dosing. For some men it may remain as long as 5 hours, or a few as 3 hours.</p>\r\n\r\n<h5>Side Effects of Viagra</h5>\r\n\r\n<p>Viagra is generally well tolerated and comes in a variety of dosages so the strength can easily be decreased for men experiencing bothersome side effects. The most common side effects include headache, flushing, indigestion, nasal congestion, dizziness, nausea, hot flush and visual disturbances. These common side effects are all transient in nature and should not last more than a few hours. Studies have not shown any effect on sperm motility or morphology.</p>', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:05:53', '2021-09-07 10:11:53'),
(2, 1, 'rUZkdu1631012805', 'Side Effects', '<h5>Side Effects From Using Viagra</h5>\r\n\r\n<p>Viagra has been used by millions of men worldwide for over a decade and has been proven to be a safe and effective treatment for erectile dysfunction. For the majority of users no side effects are experienced. However, some men may experience mild side effects and less than 1% will experience serious side effects.</p>\r\n\r\n<h5>Very Common Side Effects (affects more than 10% of the population)</h5>\r\n\r\n<ul>\r\n	<li>Headache</li>\r\n</ul>\r\n\r\n<h5>Common Side Effects (affects between Than 1-10% of the population)</h5>\r\n\r\n<ul>\r\n	<li>Dizziness</li>\r\n	<li>Blurry Vision / Visual Disturbances</li>\r\n	<li>Hot flushes</li>\r\n	<li>Blocked nose</li>\r\n	<li>Nausea/Indigestion</li>\r\n</ul>', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:06:45', '2021-09-07 10:06:45'),
(3, 1, 'NbOsys1631012842', 'Alternatives', '<h5>Counselling</h5>\r\n\r\n<p>For many men suffering from erectile dysfunction the primary cause may be related to psychological issues and not physical ones.</p>\r\n\r\n<p>In these cases, counselling can prove to be a very effective form of treatment. Talking with a mental health professional will help to address issues of stress, anxiety or depression, which can all contribute to erectile dysfunction. For further information contact your GP.</p>\r\n\r\n<h5>Other ED Medications</h5>\r\n\r\n<p>We offer a range of ED medications.</p>', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:07:22', '2021-09-07 10:07:22'),
(4, 1, 'hNpvWl1631012880', 'Information Leaflet', '<p>Always read the patient information leaflet before commencing treatment.<a href=\"https://www.medicines.org.uk/emc/product/7980/pil\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"Patient Information Leaflet\">View patient information leaflet</a>.</p>', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:08:00', '2021-09-07 10:08:00'),
(5, 2, 'T0HBCo1631016472', 'Sildenafil Info', '<h5>What is Sildenafil?</h5>\r\n\r\n<p>Sildenafil citrate is the generic version of the Viagra, the most well known treatment for erectile dysfunction (ED).</p>\r\n\r\n<p>Sildenafil is an effective, modern medicine used to treat erectile dysfunction (ED). When you take Sildenafil you may be able to:</p>\r\n\r\n<ul>\r\n	<li>Improve your ability to get and maintain an erection</li>\r\n	<li>Be more confident in your ability to get and maintain an erection</li>\r\n	<li>Be satisfied with the hardness of your erections</li>\r\n</ul>\r\n\r\n<h5>What is the difference between Viagra and Sildenafil?</h5>\r\n\r\n<p>Sildenafil is the active ingredient in Viagra and is available in a generic, unbranded tablet. Sildenafil and Viagra are medically equivalent but Sildenafil is available at a much lower cost. Generic medicines contain the same active ingredient and are equally effective and medically equivalent as the branded products but are available at a lower price. Generic manufacturers have to demonstrate that they are medically identical to the branded product - i.e. they offer the same quality, strength, stability and effectiveness.</p>\r\n\r\n<h5>Choosing the Correct Dosage</h5>\r\n\r\n<p>The recommended starting dose for sildenafil is one 50mg tablet taken 1 hour before sexual activity. If you achieve the desired effect but are suffering from side effects, try lowering the dose to 25mg. If after trying 50mg tablets four times without the desired effect, and you are not experiencing side effects, increase the dose to 100mg. If after trying 100mg 8 separate times without effect you should cease treatment and consult your doctor. You should not take sildenafil more than once a day as this will have not increase the effectiveness and may increase the likelihood of experiencing side effects.</p>\r\n\r\n<h5>How To Take</h5>\r\n\r\n<p>You should take Sildenafil about one hour before you plan to have sex. Swallow the tablet whole with a glass of water. Sildenafil can be taken with or without food. However, you may find that Sildenafil takes longer to start working if you take it with a heavy meal.</p>\r\n\r\n<h5>Why is the Price of Sildenafil Lower Than Viagra?</h5>\r\n\r\n<p>As Sildenafil is a generic drug it is produced by several manufacturers, which helps to lower the price. Viagra is produced only by Pfizer who set the price. The two products are medically identical but because of the brand name of Viagra the product sells at a substantial premium.</p>', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:07:52', '2021-09-07 11:07:52'),
(6, 2, 'gmUdSy1631016511', 'Side Effects', '<h5>Common Side Effects</h5>\r\n\r\n<ul>\r\n	<li>pain in your back/muscles/head</li>\r\n	<li>migraines</li>\r\n	<li>getting flushed/going red</li>\r\n	<li>indigestion</li>\r\n	<li>feeling and or being sick</li>\r\n	<li>getting a blocked or runny nose</li>\r\n	<li>vision disturbances</li>\r\n</ul>', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:08:31', '2021-09-07 11:08:31'),
(7, 2, 'Rw3gMg1631016547', 'Alternatives', '<h5>Alternatives to Sildenafil</h5>\r\n\r\n<p><strong>Counselling</strong></p>\r\n\r\n<p>For many men suffering from erectile dysfunction the primary cause may be related to psychological issues and not physical ones. In these cases, counselling can prove to be a very effective form of treatment. Talking with a mental health professional will help to address issues of stress, anxiety or depression, which can all contribute to erectile dysfunction. For further information contact your GP.</p>\r\n\r\n<p><strong>Other ED Medications</strong></p>\r\n\r\n<p>We offer a range of ED medications.</p>', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:09:07', '2021-09-07 11:09:07'),
(8, 2, 'aRWBlJ1631016588', 'Information Leaflet', '<p><a href=\"http://products.tevauk.com/mediafile/id/50230.pdf\" target=\"_blank\">http://products.tevauk.com/mediafile/id/50230.pdf</a></p>', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:09:48', '2021-09-07 11:09:48'),
(9, 3, 'GEFQ5j1631018681', 'Cialis Info', '<h5>What is Cialis?</h5>\r\n\r\n<p>Cialis contains the active ingredient tadalafil and is a medication used to treat erectile dysfunction. It offers particularly long lasting effects in comparison to the other treatment options available and can produce results for up to 36 hours after taking a single pill in helping you to get and keep an erection.</p>\r\n\r\n<h5>What is Tadalafil?</h5>\r\n\r\n<p>Tadalafil is the generic version of the Cialis, one of the most popular erectile dysfunction treatments. Tadalafil is the name of the active ingredient in Cialis and is a medication used to treat erectile dysfunction. It offers particularly long lasting effects in comparison to the other treatment options available and can produce results for up to 36 hours after taking a single pill in helping you to get and keep an erection.</p>\r\n\r\n<h5>What is the difference between Cialis and Tadalafil?</h5>\r\n\r\n<p>Tadalafil is the active ingredient in Cialis and is available in a generic, unbranded tablet. Tadalafil and Cialis are medically equivalent but Tadalafil is available at a much lower cost. Generic medicines contain the same active ingredient and are equally effective and medically equivalent as the branded products but are available at a lower price. Generic manufacturers have to demonstrate that they are medically identical to the branded product - i.e. they offer the same quality, strength, stability and effectiveness.</p>\r\n\r\n<h5>How to take Cialis?</h5>\r\n\r\n<p>Cialis 36-Hour and Cialis Daily both contain the same medication but have different purposes and are there for taken differently.</p>\r\n\r\n<p><strong>How to take Cialis 36 Hour:</strong> Take 1 tablet whole with a glass of water 30 minutes to 1 hour before planning to be sexually active. You can take it with or without food, but keep in mind it may take longer to work if taken with a heavy meal. You only need to take Cialis when you are going to be sexually active.</p>\r\n\r\n<p><strong>How to take Cialis Daily:</strong> Take 1 tablet whole with a glass of water at the same time each day. You may take it with or without food, as it will not affect how well it works. It is important that you take it regularly every day to ensure you get the full benefit of the medication, so it can be helpful to incorporate it into your daily routine (e.g. with coffee at breakfast).</p>\r\n\r\n<h5>What dose should you take?</h5>\r\n\r\n<p>Cialis 36-Hour comes in two doses, either 10 mg or 20 mg. It is recommended to begin with the 10 mg tablet and continue if this is effective, as lower doses have less chance of side effects. If you find it is not having the desired effect on your erection after several separate attempts, you can try increasing the dose to 20 mg. If you are still not satisfied with the results, talk to your doctor about other medication solutions for you. Cialis Daily is available in two strengths of 2.5 mg and 5 mg. Usually men begin with the 5 mg dose and adjust as needed. If you find that you are experiencing side effects or the 5 mg seems to be too strong for you, you can try decreasing the dose to 2.5 mg.</p>\r\n\r\n<h5>How long does it take to work?</h5>\r\n\r\n<p>Cialis has a benefit over other erectile dysfunction medications because it is so quick to work, often effective enough to allow sexual intercourse just 20 minutes after taking the pill. This is because it is absorbed into the body more easily and goes into action sooner. While you can take Cialis with or without food, it may take slightly longer to work if you take it with or soon after a large meal. For Cialis Daily, it can take up to 5 days for the full effect to come into effect, as the low dose builds up gradually. However, after this time it will work continuously.</p>\r\n\r\n<h5>How long will it last?</h5>\r\n\r\n<p>Cialis has an extremely long duration of action in comparison to other erectile dysfunction medications and has been noted to work up to 36 hours after taking the pill. Cialis Daily goes one step further to provide you with a ceaseless solution to erectile dysfunction. As it is a daily medication, you will always be ready for sexual activity.</p>', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:44:41', '2021-09-07 11:44:41'),
(10, 3, 'F5X18w1631018737', 'Side Effects', '<h5>Cialis Side Effects</h5>\r\n\r\n<p>Like all medications, Cialis has side effects that affect some men that take this medication. Some common side effects of Cialis are:</p>\r\n\r\n<ul>\r\n	<li>Headaches</li>\r\n	<li>Face Flushing</li>\r\n	<li>Dyspepsia</li>\r\n</ul>\r\n\r\n<p>Notably, Cialis has fewer side effects than other medications used to treat erectile dysfunction. In fact, many men who experience nasal congestion, stomach pain, nausea and diarrhoea with other drugs find that Cialis doesn’t give them these symptoms.</p>', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:45:37', '2021-09-07 11:45:37'),
(11, 3, 'q0MKZl1631018777', 'Alternatives', '<h5>Alternatives to Cialis</h5>\r\n\r\n<p><strong>Counselling</strong></p>\r\n\r\n<p>For many men suffering from erectile dysfunction the primary cause may be related to psychological issues and not physical ones. In these cases, counselling can prove to be a very effective form of treatment. Talking with a mental health professional will help to address issues of stress, anxiety or depression, which can all contribute to erectile dysfunction. For further information contact your GP.</p>\r\n\r\n<p><strong>Other ED Medications</strong></p>\r\n\r\n<p>We offer a range of ED medications.</p>', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:46:17', '2021-09-07 11:46:17'),
(12, 3, 'eWtegS1631018814', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment.</p>\r\n\r\n<p><a href=\"https://www.medicines.org.uk/emc/files/pil.7431.pdf\" target=\"_blank\">https://www.medicines.org.uk/emc/files/pil.7431.pdf</a></p>', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:46:54', '2021-09-07 11:46:54'),
(13, 4, '67Z33E1631021034', 'Tadalafil Info', '<h5>What is Tadalafil?</h5>\r\n\r\n<p>Tadalafil is the generic version of the Cialis, one of the most popular erectile dysfunction treatments. Tadalafil is the name of the active ingredient in Cialis and is a medication used to treat erectile dysfunction. It offers particularly long lasting effects in comparison to the other treatment options available and can produce results for up to 36 hours after taking a single pill in helping you to get and keep an erection.</p>\r\n\r\n<h5>What is the difference between Cialis and Tadalafil?</h5>\r\n\r\n<p>Tadalafil is the active ingredient in Cialis and is available in a generic, unbranded tablet. Tadalafil and Cialis are medically equivalent but Tadalafil is available at a much lower cost. Generic medicines contain the same active ingredient and are equally effective and medically equivalent as the branded products but are available at a lower price. Generic manufacturers have to demonstrate that they are medically identical to the branded product - i.e. they offer the same quality, strength, stability and effectiveness.</p>\r\n\r\n<h5>What is Tadalafil Daily?</h5>\r\n\r\n<p>Tadalafil daily capitalises on the long duration of action of tadalafil to provide a regular solution to erectile dysfunction. It comes in lower doses but should be taken every day. This means that you don’t need to time the medication before you will be sexually active but simply take a pill every day and you will always be ready for action.</p>\r\n\r\n<h5>How does Tadalafil work?</h5>\r\n\r\n<p>The active ingredient in Tadalafil is a type of drug called a PDE-5 (phosphodiesterase type 5) inhibitor. The majority of drugs used to treat erectile dysfunction work in the same way and increase the blood flow needed to the penis that is needed for an erection to occur. Usually an enzyme in the body makes the muscles around the blood vessels in the penis stay tight and keeps the blood vessel thin. Tadalafil stops this enzyme from working properly, which allows the blood vessels to expand and more blood can pass through, resulting in an erection. Tadalafil is effective for many men, independent of what the cause of the condition is, because it works on the very last step of the process needed for an erection to occur. On the other hand, as it works only on a physical level, it won’t help to increase sexual desire.</p>\r\n\r\n<h5>How to take Tadalafil?</h5>\r\n\r\n<p>Tadalafil 36-Hour and Tadalafil Daily both contain the same medication but have different purposes and are there for taken differently.</p>\r\n\r\n<p><strong>How to take Tadalafil 36 Hour:</strong></p>\r\n\r\n<p>Take 1 tablet whole with a glass of water 30 minutes to 1 hour before planning to be sexually active. You can take it with or without food, but keep in mind it may take longer to work if taken with a heavy meal. You only need to take Tadalafil when you are going to be sexually active.</p>\r\n\r\n<p><strong>How to take Tadalafil Daily:</strong></p>\r\n\r\n<p>Take 1 tablet whole with a glass of water at the same time each day. You may take it with or without food, as it will not affect how well it works. It is important that you take it regularly every day to ensure you get the full benefit of the medication, so it can be helpful to incorporate it into your daily routine (e.g. with coffee at breakfast).</p>\r\n\r\n<h5>What dose should you take?</h5>\r\n\r\n<p>Tadalafil 36-Hour comes in two doses, either 10 mg or 20 mg. It is recommended to begin with the 10 mg tablet and continue if this is effective, as lower doses have less chance of side effects. If you find it is not having the desired effect on your erection after several separate attempts, you can try increasing the dose to 20 mg. If you are still not satisfied with the results, talk to your doctor about other medication solutions for you. Tadalafil Daily is available in two strengths of 2.5 mg and 5 mg. Usually men begin with the 5 mg dose and adjust as needed. If you find that you are experiencing side effects or the 5 mg seems to be too strong for you, you can try decreasing the dose to 2.5 mg.</p>\r\n\r\n<h5>How long does it take to work?</h5>\r\n\r\n<p>Tadalafil has a benefit over other erectile dysfunction medications because it is so quick to work, often effective enough to allow sexual intercourse just 20 minutes after taking the pill. This is because it is absorbed into the body more easily and goes into action sooner. While you can take Tadalafil with or without food, it may take slightly longer to work if you take it with or soon after a large meal. For Tadalafil Daily, it can take up to 5 days for the full effect to come into effect, as the low dose builds up gradually. However, after this time it will work continuously.</p>\r\n\r\n<h5>How long does Tadalafil last?</h5>\r\n\r\n<p>Tadalafil has an extremely long duration of action in comparison to other erectile dysfunction medications and has been noted to work up to 36 hours after taking the pill. Tadalafil Daily goes one step further to provide you with a ceaseless solution to erectile dysfunction. As it is a daily medication, you will always be ready for sexual activity.</p>', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:23:54', '2021-09-07 12:23:54'),
(14, 4, 'EWFdY21631021059', 'Side Effects', '<h5>Tadalafil Side Effects</h5>\r\n\r\n<p>Like all medications, Tadalafil has side effects that affect some men that take this medication. Some common side effects of Tadalafil are:</p>\r\n\r\n<ul>\r\n	<li>Headaches</li>\r\n	<li>Face Flushing</li>\r\n	<li>Dyspepsia</li>\r\n</ul>\r\n\r\n<p>Notably, Tadalafil has fewer side effects than other medications used to treat erectile dysfunction. In fact, many men who experience nasal congestion, stomach pain, nausea and diarrhoea with other drugs find that Tadalafil doesn’t give them these symptoms.</p>', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:24:19', '2021-09-07 12:24:19'),
(15, 4, '3gxHw71631021096', 'Alternatives', '<h5>Alternatives to Tadalafil</h5>\r\n\r\n<p><strong>Counselling</strong></p>\r\n\r\n<p>For many men suffering from erectile dysfunction the primary cause may be related to psychological issues and not physical ones. In these cases, counselling can prove to be a very effective form of treatment. Talking with a mental health professional will help to address issues of stress, anxiety or depression, which can all contribute to erectile dysfunction. For further information contact your GP.</p>\r\n\r\n<p><strong>Other ED Medications</strong></p>\r\n\r\n<p>We offer a range of ED medications.</p>', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:24:56', '2021-09-07 12:24:56'),
(16, 4, 'ogmanR1631021125', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment.</p>\r\n\r\n<p><a href=\"http://products.tevauk.com/mediafile/id/49675.pdf\" target=\"_blank\">http://products.tevauk.com/mediafile/id/49675.pdf</a></p>', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:25:25', '2021-09-07 12:25:25'),
(17, 5, 'MZXaqe1631022122', 'Viagra Connect Info', '<h5>What is Viagra Connect?</h5>\r\n\r\n<p>Viagra Connect is the first medicine to be licensed over the counter to treat erectile dysfunction. Viagra Connect is available in only 50mg and is identical to Viagra 50mg, which has been used by millions of men across the world since 1998. Viagra Connect contains the active ingredient sildenafil which belongs to a class of drugs known as PDE-5 (Phosphodiesterase type 5) inhibitors. Viagra Connect and the other PDE-5 inhibitors can help men with erectile dysfunction (male impotence) by enhancing the erectile response when a man is sexually stimulated.</p>\r\n\r\n<h5>What is Sildenafil?</h5>\r\n\r\n<p>Sildenafil citrate is the generic version of the Viagra, the most well known treatment for erectile dysfunction (ED).</p>\r\n\r\n<p>Sildenafil is an effective, modern medicine used to treat erectile dysfunction (ED). When you take Sildenafil you may be able to:</p>\r\n\r\n<ul>\r\n	<li>Improve your ability to get and maintain an erection</li>\r\n	<li>Be more confident in your ability to get and maintain an erection</li>\r\n	<li>Be satisfied with the hardness of your erections</li>\r\n</ul>\r\n\r\n<h5>What is the difference between Viagra Connect and Sildenafil?</h5>\r\n\r\n<p>Sildenafil citrate is the active ingredient in Viagra Connect and is available in a generic, unbranded tablet. Sildenafil and Viagra Connect are medically equivalent but Sildenafil is available at a much lower cost. Generic medicines contain the same active ingredient and are equally effective and medically equivalent as the branded products but are available at a lower price. Generic manufacturers have to demonstrate that they are medically identical to the branded product - i.e. they offer the same quality, strength, stability and effectiveness.</p>\r\n\r\n<h5>How To Take</h5>\r\n\r\n<p>You should take Viagra Connect (Sildenafil) about one hour before you plan to have sex. Swallow the tablet whole with a glass of water. Viagra Connect (Sildenafil) can be taken with or without food. However, you may find that Viagra Connect (Sildenafil) takes longer to start working if you take it with a heavy meal.</p>\r\n\r\n<h5>How does Viagra Connect work?</h5>\r\n\r\n<p>Viagra Connect belongs to a class of medication known as PDE5 inhibitors. In the presence of sexual stimulation, PDE5 inhibitors such as Viagra Connect relax smooth muscle and increase blood flow to the penis, helping to restore impaired erectile function.</p>\r\n\r\n<h5>How long does Viagra Connect Last?</h5>\r\n\r\n<p>Viagra Connect will stay in the body on average 4 hours after dosing. For some men it may remain as long as 5 hours, or a few as 3 hours.</p>\r\n\r\n<h5>Side Effects of Viagra Connect</h5>\r\n\r\n<p>Viagra Connect is generally well tolerated and the active ingredient sildenafil has been used by millions of men across the world. The most common side effects include headache, flushing, indigestion, nasal congestion, dizziness, nausea, hot flush and visual disturbances. These common side effects are all transient in nature and should not last more than a few hours. Studies have not shown any effect on sperm motility or morphology.</p>\r\n\r\n<h5>How Long Does Viagra Connect Take To Work?</h5>\r\n\r\n<p>When taken on an empty stomach, Viagra Connect is absorbed relatively rapidly and it will usually work within 30-60 minutes, although it may take up to 120 minutes in a small percentage of men. Taking Viagra Connect with food will decrease the rate of absorption and can significantly increase the time taken for Viagra Connect to work.</p>\r\n\r\n<h5>Can you buy Viagra Connect over the counter?</h5>\r\n\r\n<p>In the UK, Viagra Connect is an over the counter medicine and can be sold without prescription.</p>\r\n\r\n<h5>Is Viagra Connect safe?</h5>\r\n\r\n<p>Viagra Connect is registered and licensed for use in the UK and EU and can be safely taken by the majority of men with erectile dysfunction. Viagra was patented by Pfizer in 1996 and released onto the market a couple of years later. As a result, it has been safely used by millions of men around the world who have erectile dysfunction.</p>\r\n\r\n<h5>Viagra Connect and Alcohol</h5>\r\n\r\n<p>Clinical trials of healthy men taking Sildenafil 50mg did not show further decreases in blood pressure when taken with moderate amounts of alcohol. However, alcohol by itself has the ability to increase erection difficulties.</p>\r\n\r\n<h5>Alternatives to Viagra Connect</h5>\r\n\r\n<p>Clinical trials have shown that for 84% of men Viagra Connect helped to improve their erections. For those who find Viagra Connect less effective than hoped, or for whom planned dosing is difficult, there are other PDE5 inhibitors available in tablet form. These medications include Cialis (Tadalafil), Levitra (Verdenafil) and Spedra (Avanafil). These three medications have a slightly faster onset of action than Viagra Connect. Cialis also has a daily tablet for those engaging in sexual activity at least three times each week.</p>\r\n\r\n<h5>Best time to take Viagra Connect?</h5>\r\n\r\n<p>Viagra Connect should be taken approximately 30-60 minutes before intended sexual activity and on an empty stomach. Only 1 tablet should be taken in each 24 hour period.</p>', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:42:02', '2021-09-07 12:42:02'),
(18, 5, 'X2p7H81631022162', 'Side Effects', '<h5>Side Effects From Using Viagra Connect</h5>\r\n\r\n<p>Viagra Connect has been used by millions of men worldwide for over a decade and has been proven to be a safe and effective treatment for erectile dysfunction. For the majority of users no side effects are experienced. However, some men may experience mild side effects and less than 1% will experience serious side effects.</p>\r\n\r\n<p><strong>Very Common Side Effects (affects more than 10% of the population)</strong></p>\r\n\r\n<ul>\r\n	<li>Headache</li>\r\n</ul>\r\n\r\n<p><strong>Common Side Effects (affects between Than 1-10% of the population)</strong></p>\r\n\r\n<ul>\r\n	<li>Dizziness</li>\r\n	<li>Blurry Vision / Visual Disturbances</li>\r\n	<li>Hot flushes</li>\r\n	<li>Blocked nose</li>\r\n	<li>Nausea/Indigestion</li>\r\n</ul>', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:42:42', '2021-09-07 12:42:42'),
(19, 5, 'I9T3921631022193', 'Alternatives', '<h5>Alternatives to Viagra Connect</h5>\r\n\r\n<p><strong>Counselling</strong></p>\r\n\r\n<p>For many men suffering from erectile dysfunction the primary cause may be related to psychological issues and not physical ones. In these cases, counselling can prove to be a very effective form of treatment. Talking with a mental health professional will help to address issues of stress, anxiety or depression, which can all contribute to erectile dysfunction. For further information contact your GP.</p>\r\n\r\n<p><strong>Other ED Medications</strong></p>\r\n\r\n<p>We offer a range of ED medications.</p>', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:43:13', '2021-09-07 12:43:13'),
(20, 5, 'TumCz31631022226', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. Please check the <a href=\"https://www.medicines.org.uk/emc/files/pil.8725.pdf\">patient leaflet</a>.</p>', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:43:46', '2021-09-07 12:43:46'),
(21, 6, 'uQiLas1631080334', 'Spedra Info', '<h5>What is Spedra?</h5>\r\n\r\n<p>Spedra contains the active ingredient avanafil and is used to effectively treat erectile dysfunction. It has a quick onset of action in comparison to other treatment options available and many men find that it works effectively just 15 minutes after taking the pill. It is one of the most recent drugs to be released for use in the treatment of erectile dysfunction.</p>\r\n\r\n<h5>What is the difference between Viagra and Spedra?</h5>\r\n\r\n<p>Viagra contains the active ingredient sildenafil whereas Spedra contains avanafil. They are two completely different drugs, although they have a similar effect on the body. They both work by increasing blood flow to the penis for an erection to occur, are equally effective and last a comparable amount of time. However, Spedra is absorbed more quickly and hence begins to work faster.</p>\r\n\r\n<h5>What is erectile dysfunction?</h5>\r\n\r\n<p>Erectile dysfunction involves difficulty for men in getting and keeping an erection adequate for sexual activities. It is also sometimes known as impotence.</p>\r\n\r\n<p>Normally when you are sexually aroused your brain receives sensory messages - what you feel and see - and reacts by changing hormone levels and relaxing certain muscles around blood vessels in the penis. This allows more blood to flow through the enlarged vessels to allow an erection to occur.</p>\r\n\r\n<p>The most common cause of erectile dysfunction is cardiovascular disease because the blood vessels are particularly important in the final step of getting an erection. However, as it is such a complex process, there are many possible causes. For example, psychological causes like stress and anxiety can affect the brain\'s response to arousal and cause erectile problems.</p>\r\n\r\n<p>It is important to seek treatment early as sexual performance problems can cause further anxiety and set a pattern of failure. Treatment can help to remove the physical barriers and allow you to address the issues with your partner or therapist in the meantime.</p>\r\n\r\n<h5>How does Spedra work?</h5>\r\n\r\n<p>The active ingredient in Spedra, avanafil, is a type of drug called a PDE-5 (phosphodiesterase type 5) inhibitor, like the majority of drugs available for the treatment of erectile dysfunction.</p>\r\n\r\n<p>Spedra stops a particular enzyme in the body from working properly, preventing it from keeping the muscles surrounding the blood vessels in the penis tight. As a result, the blood vessels can widen and allow more blood to pass through and an erection to occur.</p>\r\n\r\n<p>Regardless of the cause of erectile dysfunction, Spedra can work effectively as it affects the very last step of the erection process. However, as it works specifically on the physical side of things, it won\'t help to increase sexual desire.</p>\r\n\r\n<h5>How do you take Spedra?</h5>\r\n\r\n<p>You should take 1 tablet whole with a glass of water 30 minutes to 1 hour before planning to have sex. Whilst some men find it is effective within 15 minutes, waiting this time will allow your body more time to experience the effects of the drug.</p>\r\n\r\n<p>You can take Spedra with or without food as desired, although if you take it with or soon after a large meal it may take slightly longer to work.</p>\r\n\r\n<h5>What dose should you take?</h5>\r\n\r\n<p>Spedra comes in three doses: 50, 100 and 200 mg. For people beginning treatment with Spedra, it is recommended to begin with the standard dose of 100mg. If this is effective for you and you do not experience any other problems, continue with this dose.</p>\r\n\r\n<p>However, if you experience side effects that bother you, you may prefer to try decreasing the dose to 50 mg. This helps many men to decrease unwanted effects whilst maintaining the desired effect.</p>\r\n\r\n<p>On the other hand, some men find that the standard dose is not powerful enough to give the results they desire. If after trying the standard dose on 4 separate occasions and you are not happy with the outcome, you may try increasing the dose to 200 mg. If this is still not effective and you have tried on 8 separate occasions, you should see your doctor for information on other treatment options for you.</p>\r\n\r\n<h5>Are there side effects?</h5>\r\n\r\n<p>All medications have an effect on the body and can also produce unwanted side effects. The most common side effects for Spedra are:</p>\r\n\r\n<ul>\r\n	<li>Headache</li>\r\n	<li>Facial flushing</li>\r\n	<li>Back pain</li>\r\n	<li>Nausea</li>\r\n	<li>Indigestion</li>\r\n	<li>Blurry vision</li>\r\n	<li>Nasal congestion</li>\r\n</ul>\r\n\r\n<p>If you notice these side effects and they bother you, you may be able to eliminate them by trying the lower dose of Spedra. If you still experience these effects, you should talk to your doctor about other treatment options.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:52:14', '2021-09-08 04:52:14'),
(22, 6, 'Qi6ABY1631080368', 'Side Effects', '<h5>Common Side Effects</h5>\r\n\r\n<ul>\r\n	<li>pain in your back/muscles/head</li>\r\n	<li>migraines</li>\r\n	<li>getting flushed/going red</li>\r\n	<li>indigestion</li>\r\n	<li>feeling and or being sick</li>\r\n	<li>getting a blocked or runny nose</li>\r\n	<li>vision disturbances</li>\r\n</ul>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:52:48', '2021-09-08 04:52:48'),
(23, 6, '4qUu4Z1631080428', 'Alternatives', '<h5>Alternatives to Spedra</h5>\r\n\r\n<p><strong>Counselling</strong></p>\r\n\r\n<p>For many men suffering from erectile dysfunction the primary cause may be related to psychological issues and not physical ones.</p>\r\n\r\n<p>In these cases, counselling can prove to be a very effective form of treatment. Talking with a mental health professional will help to address issues of stress, anxiety or depression, which can all contribute to erectile dysfunction. For further information contact your GP.</p>\r\n\r\n<p><strong>Other ED Medications</strong></p>\r\n\r\n<p>We offer a range of ED medications.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:53:48', '2021-09-08 04:53:48'),
(24, 6, 'r8nMap1631080452', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment.</p>\r\n\r\n<p><a href=\"https://www.medicines.org.uk/emc/product/5331/pil\" target=\"_blank\">https://www.medicines.org.uk/emc/product/5331/pil</a></p>', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:54:12', '2021-09-08 04:54:12'),
(25, 7, 'd4EZvM1631082009', 'Levitra Info', '', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:20:09', '2021-09-08 05:20:09'),
(26, 7, '8TCTlN1631082040', 'Side Effects', '<h5>Common Side Effects</h5>\r\n\r\n<ul>\r\n	<li>pain in your back/muscles/head</li>\r\n	<li>migraines</li>\r\n	<li>getting flushed/going red</li>\r\n	<li>indigestion</li>\r\n	<li>feeling and or being sick</li>\r\n	<li>getting a blocked or runny nose</li>\r\n	<li>vision disturbances</li>\r\n</ul>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:20:40', '2021-09-08 05:20:40'),
(27, 7, 'Ztcl4L1631082075', 'Alternatives', '<h5>Alternatives to</h5>\r\n\r\n<p><strong>Counselling</strong></p>\r\n\r\n<p>For many men suffering from erectile dysfunction the primary cause may be related to psychological issues and not physical ones.</p>\r\n\r\n<p>In these cases, counselling can prove to be a very effective form of treatment. Talking with a mental health professional will help to address issues of stress, anxiety or depression, which can all contribute to erectile dysfunction. For further information contact your GP.</p>\r\n\r\n<p><strong>Other ED Medications</strong></p>\r\n\r\n<p>We offer a range of ED medications.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:21:15', '2021-09-08 05:21:53'),
(28, 7, '26K39X1631082098', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment.</p>\r\n\r\n<p><a href=\"https://www.medicines.org.uk/emc/files/pil.6767.pdf\" target=\"_blank\">https://www.medicines.org.uk/emc/files/pil.6767.pdf</a></p>', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:21:38', '2021-09-08 05:21:38'),
(29, 8, 'u5RzQk1631086793', 'Vardenafil Info', '<h5>What is Vardenafil?</h5>\r\n\r\n<p>Vardenafil is a prescription medicine used for the treatment of erectile dysfunction (ED) in men. When you take Vardenafil you may be able to:</p>\r\n\r\n<ul>\r\n	<li>Improve your ability to get and maintain an erection</li>\r\n	<li>Be more confident in your ability to get and maintain an erection</li>\r\n	<li>Be satisfied with the hardness of your erections</li>\r\n</ul>\r\n\r\n<h5>Choosing the Correct Dosage</h5>\r\n\r\n<p><strong>Vardenafil</strong> is available in 5mg, 10mg, 20mg. Take one tablet 60 minutes before sexual activity. The recommended starting dose of Vardenafil is 10 mg.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:39:53', '2021-09-08 06:39:53'),
(30, 8, 'H7OLOg1631086820', 'Side Effects', '<h5>Common Side Effects</h5>\r\n\r\n<ul>\r\n	<li>pain in your back/muscles/head</li>\r\n	<li>migraines</li>\r\n	<li>getting flushed/going red</li>\r\n	<li>indigestion</li>\r\n	<li>feeling and or being sick</li>\r\n	<li>getting a blocked or runny nose</li>\r\n	<li>vision disturbances</li>\r\n</ul>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:40:20', '2021-09-08 06:40:20'),
(31, 8, 'pioyaY1631086845', 'Alternatives', '<h5>Alternatives to Vardenafil</h5>\r\n\r\n<p><strong>Counselling</strong></p>\r\n\r\n<p>For many men suffering from erectile dysfunction the primary cause may be related to psychological issues and not physical ones.</p>\r\n\r\n<p>In these cases, counselling can prove to be a very effective form of treatment. Talking with a mental health professional will help to address issues of stress, anxiety or depression, which can all contribute to erectile dysfunction. For further information contact your GP.</p>\r\n\r\n<p><strong>Other ED Medications</strong></p>\r\n\r\n<p>We offer a range of ED medications.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:40:45', '2021-09-08 06:40:45'),
(32, 8, 't8FCbX1631086873', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment.</p>\r\n\r\n<p><a href=\"https://www.medicines.org.uk/emc/files/pil.9667.pdf\" target=\"_blank\">https://www.medicines.org.uk/emc/files/pil.9667.pdf</a></p>', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:41:13', '2021-09-08 06:41:13'),
(33, 9, 'DOANZy1631087745', 'What is Vitaros (alprostadil) Cream?', '<h5>What is Vitaros (alprostadil) Cream?</h5>\r\n\r\n<p>ED treatment in the form of a cream. A good option for men who can\'t take other ED treatments.</p>\r\n\r\n<p><strong>How to use Vitaros:</strong></p>\r\n\r\n<ul>\r\n	<li>Works in 5 to 30mins. Do not use it with other ED treatments. Use no more than once a day and no more than 3 times a week. Must be stored in a fridge - do not freeze. Lasts only 3 days at room temperature - after that it may not work.</li>\r\n	<li>Hold your penis upright. Gently squeeze the tip of your penis to widen the opening. If you\'re uncircumcised, retract your foreskin.</li>\r\n	<li>Hold the tip of the applicator as close as possible to and directly over the opening of the penis (urethra). Do not insert the tip of the applicator into the urethra.</li>\r\n	<li>Carefully push down the plunger with your thumb or finger, until all the cream is in the opening of the urethra.</li>\r\n	<li>Gently push any excess cream on the surrounding skin into the urethral opening with a clean finger.</li>\r\n</ul>\r\n\r\n<h5>Can Vitaros cream be used everyday?</h5>\r\n\r\n<p>Vitaros cream should not be used more than 2 or 3 times each week, and it shouldn’t be used more than once in a 24 hour window. The effects of Vitaros can often be felt between 5 and 30 minutes of applying cream. The desired effects usually last for 1 or 2 hours, during which time you should be able to have successful intercourse.</p>\r\n\r\n<h5>How does Vitaros work?</h5>\r\n\r\n<p>Vitaros\' active ingredient (alprostadil) increases the levels of a naturally occurring chemical in the penis. This causes the blood vessels in the penis to swell and should give you a firmer and longer lasting erection. The treatment will not resolve the underlying physical cause of your ED or increase your sexual desire.</p>\r\n\r\n<h5>How effective is Vitaros?</h5>\r\n\r\n<p>Vitaros treats ED in 52% of cases. Urinating after applying Vitaros can reduce its effectiveness. We advise trying an ED treatment 8 times before giving up or seeking an alternative.</p>\r\n\r\n<h5>What is the suitable dosage for Vitaros?</h5>\r\n\r\n<p>Vitaros comes in as a cream in a strength of 3mg/g. Each individual 100mg container holds a full dose. All the cream should be applied to the opening of the urethra for best effect.</p>\r\n\r\n<h5>Are there any drug interactions with Vitaros?</h5>\r\n\r\n<p>It is important that you let us know which prescription, over-the-counter medicines and recreational drugs you are taking so that our doctors can prescribe you Vitaros safely.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:55:45', '2021-09-08 06:55:45'),
(34, 9, '2WRxxS1631087774', 'Side Effects', '<h5>What are the side effects of Vitaros?</h5>\r\n\r\n<p>Some men report irritation at the tip of the penis. Others experience pain or redness, flu-like symptoms, dizziness and headache.</p>\r\n\r\n<p>Inform your partner that you are using Vitaros. Female partners have reported vaginal itching or burning. There is a risk of abnormal pregnancy and you must use condoms if your partner is of childbearing age, pregnant or breastfeeding.</p>\r\n\r\n<h5>Can I drink alcohol when using Vitaros cream?</h5>\r\n\r\n<p>To get the most out of any ED treatment, it is advisable to cut back on drinking lots of alcohol. <a href=\"https://www.nhs.uk/conditions/erection-problems-erectile-dysfunction/\" target=\"_blank\">Alcohol can sometimes be the cause of ED</a>, while it might be fine to have a glass of beer or wine, it is best to avoid it for the best results.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:56:14', '2021-09-08 06:56:14'),
(35, 9, 'sYBrDU1631087803', 'Alternatives', '<p><span style=\"color: inherit; font-size: 1rem;\">Alternatives</span><br></p>\r\n\r\n<p>Some men find counselling helpful as a means of exploring and treating psychological causes for ED. If Vitaros does not work for you, contact us so that we can discuss your treatment options.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:56:43', '2021-09-08 06:56:43'),
(36, 9, 'oejf161631087838', 'Patient Information Leaflet', '<p>Always read the patient information leaflet before commencing treatment.<a href=\"https://www.medicines.org.uk/emc/product/5379/pil\" target=\"_blank\"> View patient information leaflet.</a></p>', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:57:18', '2021-09-08 06:57:18'),
(37, 10, '6ViXE81631088192', 'What is VaxAid?', '<p>VaxAid is the only vacuum system to tackle ED using both the power of water for penile vascular exercise in the shower or bath and also in air for generating and maintaining an erection prior to sexual activity. Made from high impact polycarbonate with a super Elastomer skin safe bellows pump, VaxAid when used in water is amongst the most powerful vacuum devices available yet operates within medical regulations. The product also undergoes extensive testing and is tough enough to withstand accidental dropping in the shower or bath.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:03:12', '2021-09-08 07:03:12'),
(38, 11, 'ZiK9Xj1631088733', 'Omeprazole', '<h5>What is Omeprazole?</h5>\r\n\r\n<p>Omeprazole is a generic drug used to treat certain conditions where there is too much acid in the stomach. It is used to treat gastric and duodenal ulcers, erosive esophagitis, and gastroesophageal reflux disease (GERD). GERD is a condition where the acid in the stomach washes back up into the esophagus</p>\r\n\r\n<h5>How To Take</h5>\r\n\r\n<p>One capsule daily. Try to take omeprazole at the same time each day to avoid missing any doses. The usual dose is once a day in the morning.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:12:13', '2021-09-08 07:12:13'),
(39, 11, '0rQC8h1631088759', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Antacids taken as required. Antacids are alkali liquids or tablets that can neutralise the stomach acid. A dose may give quick relief. There are many brands, which you can buy. You can also get some on prescription. If you have mild or infrequent bouts of dyspepsia you may find that antacids used as required are all that you need.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:12:39', '2021-09-08 07:12:39'),
(40, 11, 'ZyxCXt1631088794', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/5944/pil\">View patient information leaflet</a>.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:13:14', '2021-09-08 07:13:14');
INSERT INTO `kod_med_long_description` (`id`, `medicine_id`, `hash_id`, `title`, `description`, `display_order`, `status`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(41, 12, 'YdTJj41631089877', 'Losec', '<h5>What is Omeprazole?</h5>\r\n\r\n<p>Omeprazole is a generic drug used to treat certain conditions where there is too much acid in the stomach. It is used to treat gastric and duodenal ulcers, erosive esophagitis, and gastroesophageal reflux disease (GERD). GERD is a condition where the acid in the stomach washes back up into the esophagus.</p>\r\n\r\n<p>Omeprazole is a proton pump inhibitor (PPI). It works by decreasing the amount of acid produced by the stomach.</p>\r\n\r\n<h5>What is Losec?</h5>\r\n\r\n<p>Losec is the branded version of Omeprazole. Omeprazole is medically equivalent to Losec but is available at a lower price.</p>\r\n\r\n<h5>How To Take</h5>\r\n\r\n<p>One capsule daily. Try to take omeprazole at the same time each day to avoid missing any doses. The usual dose is once a day in the morning.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:31:17', '2021-09-08 07:31:17'),
(42, 12, 'ftJWZ81631089903', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Antacids taken as required. Antacids are alkali liquids or tablets that can neutralise the stomach acid. A dose may give quick relief. There are many brands, which you can buy. You can also get some on prescription. If you have mild or infrequent bouts of dyspepsia you may find that antacids used as required are all that you need.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:31:43', '2021-09-08 07:31:43'),
(43, 12, 'YOiuyX1631089942', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/1509/pil\">View patient information leaflet</a>.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:32:22', '2021-09-08 07:32:22'),
(44, 13, 'F2WUYF1631090447', 'Lansoprazole', '<h5>What is Lansoprazole</h5>\r\n\r\n<p>Lansoprazole is a generic drug used to treat certain conditions where there is too much acid in the stomach. It is used to treat gastric and duodenal ulcers, erosive esophagitis, and gastroesophageal reflux disease (GERD). GERD is a condition where the acid in the stomach washes back up into the esophagus.</p>\r\n\r\n<p>Lansoprazole is a proton pump inhibitor (PPI). It works by decreasing the amount of acid produced by the stomach.</p>\r\n\r\n<h5>How To Take</h5>\r\n\r\n<p>Swallow these capsules whole with a glass of water, preferably at the same time each day, in the morning before a meal. If the capsules are to be taken twice a day, then the second dose should be taken before the evening meal. Do not crush or chew the capsules.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:40:47', '2021-09-08 07:40:47'),
(45, 13, 'gh797t1631090490', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Antacids taken as required. Antacids are alkali liquids or tablets that can neutralise the stomach acid. A dose may give quick relief. There are many brands, which you can buy. You can also get some on prescription. If you have mild or infrequent bouts of dyspepsia you may find that antacids used as required are all that you need.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:41:30', '2021-09-08 07:41:30'),
(46, 13, 'W80u7Y1631090522', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/4164/pil\">View patient information leaflet</a>.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:42:02', '2021-09-08 07:42:02'),
(47, 14, '0FHX741631090993', 'Esomeprazole', '<h5>What is Esomeprazole?</h5>\r\n\r\n<p>Esomeprazole is a generic drug used to treat certain conditions where there is too much acid in the stomach. It is used to treat gastric and duodenal ulcers, erosive esophagitis, and gastroesophageal reflux disease (GERD). GERD is a condition where the acid in the stomach washes back up into the esophagus.</p>\r\n\r\n<p>Esomeprazole is a proton pump inhibitor (PPI). It works by decreasing the amount of acid produced by the stomach.</p>\r\n\r\n<h5>How To Take</h5>\r\n\r\n<p>Swallow your tablets whole with a drink of water. Do not chew or crush the tablets. This is because the tablets contain coated pellets which stop the medicine from being broken down by the acid in your stomach. It is important not to damage the pellets.</p>\r\n\r\n<ul>\r\n	<li>You can take your tablets at any time of the day.</li>\r\n	<li>You can take your tablets with food or on an empty stomach.</li>\r\n</ul>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:49:53', '2021-09-08 07:49:53'),
(48, 14, 'sOId6G1631091018', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Antacids taken as required. Antacids are alkali liquids or tablets that can neutralise the stomach acid. A dose may give quick relief. There are many brands, which you can buy. You can also get some on prescription. If you have mild or infrequent bouts of dyspepsia you may find that antacids used as required are all that you need.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:50:18', '2021-09-08 07:50:18'),
(49, 14, 'fkepcA1631091044', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/2968/pil\">View patient information leaflet</a>.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:50:44', '2021-09-08 07:50:44'),
(50, 15, '1qC8zd1631091479', 'Pantoprazole', '<h5>What is Pantoprazole?</h5>\r\n\r\n<p>Pantoprazole is a generic drug used to treat certain conditions where there is too much acid in the stomach. It is used to treat gastric and duodenal ulcers, erosive esophagitis, and gastroesophageal reflux disease (GERD). GERD is a condition where the acid in the stomach washes back up into the esophagus.</p>\r\n\r\n<p>Pantoprazole is a proton pump inhibitor (PPI). It works by decreasing the amount of acid produced by the stomach.</p>\r\n\r\n<h5>How To Take</h5>\r\n\r\n<p>Take the tablets 1 hour before a meal without chewing or breaking them and swallow them whole with some water.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:57:59', '2021-09-08 07:57:59'),
(51, 15, 'n9Msb21631091503', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Antacids taken as required. Antacids are alkali liquids or tablets that can neutralise the stomach acid. A dose may give quick relief. There are many brands, which you can buy. You can also get some on prescription. If you have mild or infrequent bouts of dyspepsia you may find that antacids used as required are all that you need.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:58:23', '2021-09-08 07:58:23'),
(52, 15, 'qrYH4G1631091528', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/7089/pil\">View patient information leaflet</a>.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:58:48', '2021-09-08 07:58:48'),
(53, 16, 'a80ecq1631095875', 'Pyrocalm', '<h5>What is Omeprazole?</h5>\r\n\r\n<p>Omeprazole is a generic drug used to treat certain conditions where there is too much acid in the stomach. It is used to treat gastric and duodenal ulcers, erosive esophagitis, and gastroesophageal reflux disease (GERD). GERD is a condition where the acid in the stomach washes back up into the esophagus.</p>\r\n\r\n<p>Omeprazole is a proton pump inhibitor (PPI). It works by decreasing the amount of acid produced by the stomach.</p>\r\n\r\n<h5>What is Pyrocalm?</h5>\r\n\r\n<p>Pyrocalm is the branded version of Omeprazole.</p>\r\n\r\n<h5>How To Take</h5>\r\n\r\n<p>One tablet daily. Try to take omeprazole at the same time each day to avoid missing any doses. The usual dose is once a day in the morning.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:11:15', '2021-09-08 09:11:15'),
(54, 16, 'LEli2F1631095896', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Antacids taken as required. Antacids are alkali liquids or tablets that can neutralise the stomach acid. A dose may give quick relief. There are many brands, which you can buy. You can also get some on prescription. If you have mild or infrequent bouts of dyspepsia you may find that antacids used as required are all that you need.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:11:36', '2021-09-08 09:11:36'),
(55, 16, '0l5IKI1631095926', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/9154/pil\">View patient information leaflet</a>.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:12:06', '2021-09-08 09:12:06'),
(56, 17, 'KkBMry1631096470', 'NEXIUM (Esomeprazole)', '<h5>What is Nexium?</h5>\r\n\r\n<p>Nexium is the brand made by AstraZeneca. Esomeprazole is the active ingredient in Nexium. It is used to treat certain conditions where there is too much acid in the stomach. It is used to treat gastric and duodenal ulcers, erosive esophagitis, and gastroesophageal reflux disease (GERD). GERD is a condition where the acid in the stomach washes back up into the esophagus.</p>\r\n\r\n<p>Nexium (Esomeprazole) is a proton pump inhibitor (PPI). It works by decreasing the amount of acid produced by the stomach.</p>\r\n\r\n<h5>How To Take</h5>\r\n\r\n<p>Swallow your tablets whole with a drink of water. Do not chew or crush the tablets. This is because the tablets contain coated pellets which stop the medicine from being broken down by the acid in your stomach. It is important not to damage the pellets. You can take your tablets at any time of the day.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:21:10', '2021-09-08 09:21:10'),
(57, 17, 'QY3whZ1631096500', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Antacids taken as required. Antacids are alkali liquids or tablets that can neutralise the stomach acid. A dose may give quick relief. There are many brands, which you can buy. You can also get some on prescription. If you have mild or infrequent bouts of dyspepsia you may find that antacids used as required are all that you need.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:21:40', '2021-09-08 09:21:40'),
(58, 17, 'Ah5RPY1631096524', 'Information Leaflet', '<h5>Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/files/pil.4657.pdf\" target=\"_blank\">View patient information leaflet.</a></p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:22:04', '2021-09-08 09:22:04'),
(59, 18, 'zff4vi1631097100', 'What is Propecia?', '<h5>What is Propecia?</h5>\r\n\r\n<p>Propecia is a drug used to treat male pattern hair loss, a common condition that involves hair thinning on the scalp that often leads to a receding hair line or balding on the crown of your head.</p>\r\n\r\n<p>Most men will experience male pattern baldness to some degree by the time they are in their 60s. Other men will experience it as early as their 20s and 30s. Finasteride is the generic name of the drug and is the active ingredient in the medication that works to reduce hair loss.</p>\r\n\r\n<h5>What is alopecia?</h5>\r\n\r\n<p>Alopecia is another name that refers to male pattern hair loss. The main symptom of male pattern baldness is thinning hair at the sides and the top of the head. It\'s not dangerous and, if the hair loss does not cause you distress, doesn\'t need to be treated. However, effective treatments are available that will slow hair loss and, in some cases, stimulate hair regrowth. Normally, one hair grows from each hair follicle for about three years. After this time, it is shed and is closely followed by a new hair growing from the same follicle.</p>\r\n\r\n<p>For men with male pattern hair loss, the hair follicles become smaller over time and each hair is thinner and falls out sooner than previously. Eventually, this can lead to hair follicles so small that the hair does not reach the skin surface.</p>\r\n\r\n<p>The main cause behind this change in the hair follicles is an androgenic hormone called dihydrotestosterone. It is for this reason that this hormone is the target for drugs to treat alopecia.</p>\r\n\r\n<p>When the hair has been gone for extended periods of time, the hair may become permanently lost hence timely treatment is beneficial.</p>\r\n\r\n<h5>How does Propecia work?</h5>\r\n\r\n<p>The main cause behind this change in the hair follicles is an androgenic hormone called dihydrotestosterone. It is for this reason that this hormone is the target for drugs to treat alopecia.</p>\r\n\r\n<p>The active component of Propecia, Finasteride, works to inhibit an enzyme in the body called 5-alpha-reductase. This enzyme usually converts testosterone into dihydrotestosterone, the more potent androgen that has a negative effect on hair growth.</p>\r\n\r\n<p>As a result of using Propecia, the levels of the dihydrotestosterone hormone are lower and a positive effect can be seen on the maintenance of hair and hair growth of men who suffer from male pattern hair loss.</p>\r\n\r\n<h5>How long does it take to see results?</h5>\r\n\r\n<p>Treatment with regular Propecia treatment comes as a daily tablet and it will take 3-6 months of constant use before you see an effect although it could take up to a year to notice the full benefit. This is because of the hair growth cycles in your follicles. It is important that you continue treatment long enough to see the results on male pattern hair loss, as the improvement won\'t occur overnight.</p>\r\n\r\n<p>If you haven\'t noticed a benefit after using Propecia regularly for one year or more, further treatment is unlikely to benefit and it is recommended to stop use.</p>\r\n\r\n<p>If you decide to stop treatment with Propecia, you will likely lose any hair growth gained in the previous 12 months of treatment. It is recommended to discuss your options and the best solution for you with your doctor.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:31:40', '2021-09-08 09:31:40'),
(60, 18, 'Znc0ip1631097126', 'How to take', '<h5>How do you take Propecia?</h5>\r\n\r\n<p>Timely treatment is crucial to avoid losing as much hair as possible and you should therefore talk to you doctor about treatment options as soon as you begin to notice signs.</p>\r\n\r\n<p>You should take Propecia at the same time every day with a full glass of water. It is important that you take it regularly to see the long-term benefits, so it is a good idea to incorporate it into your daily routine. You can take it with or without food, as desired.</p>\r\n\r\n<p>It is best to take it exactly as prescribed. You should talk to you doctor before taking larger doses or for a longer period than recommended.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:32:06', '2021-09-08 09:32:06'),
(61, 18, 'O7Lkuu1631097166', 'Effectiveness', '<h5>Is Propecia Effective?</h5>\r\n\r\n<p>This is the question everyone wants to know and fortunately the answer is positive, according to the clinical research data we have available.</p>\r\n\r\n<p>One 2-year study followed 535 men taking Propecia. Of these, 99% experienced visible results (66% with hair growth, 33% no additional hair loss), according to a photographic assessment by dermatologists.</p>\r\n\r\n<p>Another study followed 279 men for 5 years of treatment with Propecia and found that 99% had visible results (48% with hair growth and 42% no additional hair loss), according to the same dermatological photographic assessment.</p>\r\n\r\n<p>It was found that Propecia is more effective to cause hair regrowth on the crown of the head (the vertex), but there is little evidence to the receding frontal hairline.</p>\r\n\r\n<p>It is worth noting that neither of these studies compared the treatment directly to placebo, as the results were examined independently. However, this could improve the quality of the clinical research supporting the use of Propecia.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:32:46', '2021-09-08 09:32:46'),
(62, 18, 'Rn0v6V1631097199', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>All medicines have the potential to cause side effects on the body, although not everybody experiences them. Some common side effects for Propecia include:</p>\r\n\r\n<ul>\r\n	<li>Erectile Dysfunction</li>\r\n	<li>Decreased Sex Drive</li>\r\n</ul>\r\n\r\n<p>If you decide to continue using Propecia, these side effects may lessen after some time. If the symptoms are inhibiting and do not resolve, you can consider stopping the medication with your doctor.</p>\r\n\r\n<p>Some people can also have allergic reaction to this medication and the following symptoms are indicative of this:</p>\r\n\r\n<ul>\r\n	<li>Skin rash and itching</li>\r\n	<li>Swelling of lips, face, tongue or throat</li>\r\n	<li>Difficulty breathing or swallowing.</li>\r\n</ul>\r\n\r\n<p>If you experience these signs it is essential that you stop taking the medication and see your doctor immediately.</p>', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:33:19', '2021-09-08 09:33:19'),
(63, 18, 'yJnOlP1631097227', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Regaine (Minoxidil)</strong></p>\r\n\r\n<p>A topical hair loss lotion that needs to be applied twice a day. 52% effective in clinical trials compared to 90% for Propecia.</p>', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:33:47', '2021-09-08 09:33:47'),
(64, 18, 'Wjf1KV1631097260', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/2194/pil\">View patient information leaflet</a>.</p>', 6, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:34:20', '2021-09-08 09:34:20'),
(65, 19, 'uqu8bB1631098280', 'What is Finasteride?', '<h5>What is Finasteride?</h5>\r\n\r\n<p>Finasteride is a drug used to treat male pattern hair loss, a common condition that involves hair thinning on the scalp that often leads to a receding hair line or balding on the crown of your head. Most men will experience male pattern baldness to some degree by the time they are in their 60s. Other men will experience it as early as their 20s and 30s.</p>\r\n\r\n<p>Finasteride is the generic name of the drug and is the active ingredient in the medication that works to reduce hair loss.</p>\r\n\r\n<h5>What is alopecia?</h5>\r\n\r\n<p>Alopecia is another name that refers to male pattern hair loss. The main symptom of male pattern baldness is thinning hair at the sides and the top of the head. It\'s not dangerous and, if the hair loss does not cause you distress, doesn\'t need to be treated. However, effective treatments are available that will slow hair loss and, in some cases, stimulate hair regrowth. Normally, one hair grows from each hair follicle for about three years. After this time, it is shed and is closely followed by a new hair growing from the same follicle.</p>\r\n\r\n<p>For men with male pattern hair loss, the hair follicles become smaller over time and each hair is thinner and falls out sooner than previously. Eventually, this can lead to hair follicles so small that the hair does not reach the skin surface.</p>\r\n\r\n<p>The main cause behind this change in the hair follicles is an androgenic hormone called dihydrotestosterone. It is for this reason that this hormone is the target for drugs to treat alopecia.</p>\r\n\r\n<p>When the hair has been gone for extended periods of time, the hair may become permanently lost hence timely treatment is beneficial.</p>\r\n\r\n<h5>How does Finasteride work?</h5>\r\n\r\n<p>The main cause behind this change in the hair follicles is an androgenic hormone called dihydrotestosterone. It is for this reason that this hormone is the target for drugs to treat alopecia.</p>\r\n\r\n<p>Finasteride, works to inhibit an enzyme in the body called 5-alpha-reductase. This enzyme usually converts testosterone into dihydrotestosterone, the more potent androgen that has a negative effect on hair growth.</p>\r\n\r\n<p>As a result of using Finasteride, the levels of the dihydrotestosterone hormone are lower and a positive effect can be seen on the maintenance of hair and hair growth of men who suffer from male pattern hair loss.</p>\r\n\r\n<h5>How long does it take to see results?</h5>\r\n\r\n<p>Treatment with regular Finasteride treatment comes as a daily tablet and it will take 3-6 months of constant use before you see an effect although it could take up to a year to notice the full benefit. This is because of the hair growth cycles in your follicles. It is important that you continue treatment long enough to see the results on male pattern hair loss, as the improvement won\'t occur overnight.</p>\r\n\r\n<p>If you haven\'t noticed a benefit after using Finasteride regularly for one year or more, further treatment is unlikely to benefit and it is recommended to stop use.</p>\r\n\r\n<p>If you decide to stop treatment with Finasteride, you will likely lose any hair growth gained in the previous 12 months of treatment. It is recommended to discuss your options and the best solution for you with your doctor.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:51:20', '2021-09-08 09:51:20'),
(66, 19, '3LU6lG1631098308', 'How to take', '<h5>How do you take Finasteride?</h5>\r\n\r\n<p>Timely treatment is crucial to avoid losing as much hair as possible and you should therefore talk to you doctor about treatment options as soon as you begin to notice signs.</p>\r\n\r\n<p>You should take Finasteride at the same time every day with a full glass of water. It is important that you take it regularly to see the long-term benefits, so it is a good idea to incorporate it into your daily routine. You can take it with or without food, as desired.</p>\r\n\r\n<p>It is best to take it exactly as prescribed. You should talk to you doctor before taking larger doses or for a longer period than recommended.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:51:48', '2021-09-08 09:51:48'),
(67, 19, 'm9IByT1631098332', 'Effectiveness', '<h5>Is Finasteride Effective?</h5>\r\n\r\n<p>This is the question everyone wants to know and fortunately the answer is positive, according to the clinical research data we have available.</p>\r\n\r\n<p>One 2-year study followed 535 men taking Finasteride. Of these, 99% experienced visible results (66% with hair growth, 33% no additional hair loss), according to a photographic assessment by dermatologists.</p>\r\n\r\n<p>Another study followed 279 men for 5 years of treatment with Finasteride and found that 99% had visible results (48% with hair growth and 42% no additional hair loss), according to the same dermatological photographic assessment.</p>\r\n\r\n<p>It was found that Finasteride is more effective to cause hair regrowth on the crown of the head (the vertex), but there is little evidence to the receding frontal hairline.</p>\r\n\r\n<p>It is worth noting that neither of these studies compared the treatment directly to placebo, as the results were examined independently. However, this could improve the quality of the clinical research supporting the use of Finasteride.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:52:12', '2021-09-08 09:52:12'),
(68, 19, 'eFUWAX1631098413', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>All medicines have the potential to cause side effects on the body, although not everybody experiences them. Some common side effects for Finasteride include:</p>\r\n\r\n<ul>\r\n	<li>Erectile Dysfunction</li>\r\n	<li>Decreased Sex Drive</li>\r\n</ul>\r\n\r\n<p>If you decide to continue using Finasteride, these side effects may lessen after some time. If the symptoms are inhibiting and do not resolve, you can consider stopping the medication with your doctor.</p>\r\n\r\n<p>Some people can also have allergic reaction to this medication and the following symptoms are indicative of this:</p>\r\n\r\n<ul>\r\n	<li>Skin rash and itching</li>\r\n	<li>Swelling of lips, face, tongue or throat</li>\r\n	<li>Difficulty breathing or swallowing.</li>\r\n</ul>\r\n\r\n<p>If you experience these signs it is essential that you stop taking the medication and see your doctor immediately.</p>', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:53:33', '2021-09-08 09:54:13'),
(69, 19, 'OoG9uZ1631098442', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Regaine (Minoxidil)</strong></p>\r\n\r\n<p>A topical hair loss lotion that needs to be applied twice a day. 52% effective in clinical trials compared to 90% for Finasteride.</p>', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:54:02', '2021-09-08 10:01:08'),
(70, 19, 'aZ6M6O1631098682', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/6044/pil\" target=\"_blank\">View patient information leaflet</a>.</p>', 6, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:58:02', '2021-09-08 09:58:02'),
(71, 20, 'mJ9VGa1631099664', 'What is Regaine?', '<h5>What is Regaine (minoxidil)?</h5>\r\n\r\n<p>Regaine is an effective hair-loss pharmacy medicine, which has been proven to reduce hair loss and encourage hair growth. It has been proven to be effective for 60% of men. It is the first and only topical treatment licensed for hair loss in the UK.</p>\r\n\r\n<h5>How Does Regaine (minoxidil) Work?</h5>\r\n\r\n<p>Regaine (minoxidil) is the only over the counter medicinal treatment proven to help stop and even reverse hereditary hair loss. It comes as a topical formulation, which needs to be applied to the scalp twice a day. The cycle of hair growth undergoes three main phases: The growth phase, transitional phase and resting phase (when there is no hair growth). Hair loss is caused by changes to this cycle, whereby more hair is loss than it is replaced. This can occur when:</p>\r\n\r\n<ul>\r\n	<li>more hair follicles enter the resting phase</li>\r\n	<li>the resting phase lasts longer</li>\r\n	<li>the growth phase gets shorter</li>\r\n</ul>\r\n\r\n<p>Regaine works by stimulating hair follicles to move from resting phase to growth phase. It also increases the length of the growth phase. The resting phase normally lasts 6 weeks in a healthy hair follicle. Therefore, it is important to use Regaine regularly for at least that amount of time or longer in order to see results of hair growth. Results may be seen within 8 weeks, and may take up to 16 weeks to show.</p>\r\n\r\n<p>Regaine also dilates the blood vessels, allowing more oxygen, blood and nutrients to the hair follicle. This encourages hair to grow. Regaine increases the diameter of the hair shaft, which encourages the thickness of the follicles, so that hair growth is fuller.</p>\r\n\r\n<p>Regaine has proven to prevent hair loss in 4 out of 5 men and re-grows hair in 9 out of 10 men. The foam application can be part of men’s everyday grooming routine as it is easy to use, it is unscented and dissolves into the scalp quickly.</p>\r\n\r\n<h5>What is Male Pattern Baldness?</h5>\r\n\r\n<p>Male pattern baldness is a common condition, which affects over 6.5 million men in the UK.</p>\r\n\r\n<p>Is your brush or comb raking out more hair than usual? And are you also noticing thinning on top or perhaps a more pronounced hairline at the sides? Although it’s possible that this loss could be caused by a medical disorder, prescribed medication, poor nutrition, bad hair care techniques or severe stress, in 95% of cases the cause is hereditary – and is known as male pattern baldness, or androgenetic alopecia.</p>\r\n\r\n<p>In the case of hereditary hair loss, the genes and hormones in your body have a shrinking effect on your hair follicles, making them ineffective at growing new hairs. Over time, the progressive shrinking of certain scalp follicles leads to a shortening of the hair\'s growing cycle. Hair becomes thinner and shorter, until there is no growth at all.</p>\r\n\r\n<p>Fortunately, there is something you can do about it. Hereditary hair loss can be effectively treated using Regaine Foam.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:14:24', '2021-09-08 10:14:24'),
(72, 20, 'NUpMOx1631099690', 'Effectiveness', '<h5>How Effective is Regaine?</h5>\r\n\r\n<p>Regaine has been proven to reduce hair loss and even to encourage growth in clinical trial data. Based on clinical trial data around 60% of patients experienced and increase scalp coverage.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:14:50', '2021-09-08 10:14:50'),
(73, 20, 'SRZyWR1631099890', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Regaine for Men Extra Strength can have side effects, like all medicines, although these don\'t affect everyone and are usually mild. For a full list of side effects read the patient information leaflet.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:18:10', '2021-09-08 10:18:10'),
(74, 20, 'adw0Ou1631099923', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Propecia</strong></p>\r\n\r\n<p>Effective hair loss medication that works for up to 90% of men.</p>', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:18:43', '2021-09-08 10:18:43'),
(75, 20, '2xDQoC1631100004', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/5781/pil\">View patient information leaflet</a>.</p>', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:20:04', '2021-09-08 10:20:04'),
(76, 21, 'XUbZq91631100673', 'What is Regaine?', '<h5>What is Regaine (minoxidil)?</h5>\r\n\r\n<p>Regaine is an effective hair-loss pharmacy medicine, which has been proven to reduce hair loss and encourage hair growth. It has been proven to be effective for 60% of men. It is the first and only topical treatment licensed for hair loss in the UK.</p>\r\n\r\n<h5>How Does Regaine (minoxidil) Work?</h5>\r\n\r\n<p>Regaine (minoxidil) is the only over the counter medicinal treatment proven to help stop and even reverse hereditary hair loss. It comes as a topical formulation, which needs to be applied to the scalp twice a day. The cycle of hair growth undergoes three main phases: The growth phase, transitional phase and resting phase (when there is no hair growth). Hair loss is caused by changes to this cycle, whereby more hair is loss than it is replaced. This can occur when:</p>\r\n\r\n<ul>\r\n	<li>more hair follicles enter the resting phase</li>\r\n	<li>the resting phase lasts longer</li>\r\n	<li>the growth phase gets shorter</li>\r\n</ul>\r\n\r\n<p>Regaine works by stimulating hair follicles to move from resting phase to growth phase. It also increases the length of the growth phase. The resting phase normally lasts 6 weeks in a healthy hair follicle. Therefore, it is important to use Regaine regularly for at least that amount of time or longer in order to see results of hair growth. Results may be seen within 8 weeks, and may take up to 16 weeks to show.</p>\r\n\r\n<p>Regaine also dilates the blood vessels, allowing more oxygen, blood and nutrients to the hair follicle. This encourages hair to grow. Regaine increases the diameter of the hair shaft, which encourages the thickness of the follicles, so that hair growth is fuller.</p>\r\n\r\n<p>Regaine has proven to prevent hair loss in 4 out of 5 men and re-grows hair in 9 out of 10 men. The foam application can be part of men’s everyday grooming routine as it is easy to use, it is unscented and dissolves into the scalp quickly.</p>\r\n\r\n<h5>What is Male Pattern Baldness?</h5>\r\n\r\n<p>Male pattern baldness is a common condition, which affects over 6.5 million men in the UK.</p>\r\n\r\n<p>Is your brush or comb raking out more hair than usual? And are you also noticing thinning on top or perhaps a more pronounced hairline at the sides? Although it’s possible that this loss could be caused by a medical disorder, prescribed medication, poor nutrition, bad hair care techniques or severe stress, in 95% of cases the cause is hereditary – and is known as male pattern baldness, or androgenetic alopecia.</p>\r\n\r\n<p>In the case of hereditary hair loss, the genes and hormones in your body have a shrinking effect on your hair follicles, making them ineffective at growing new hairs. Over time, the progressive shrinking of certain scalp follicles leads to a shortening of the hair\'s growing cycle. Hair becomes thinner and shorter, until there is no growth at all.</p>\r\n\r\n<p>Fortunately, there is something you can do about it. Hereditary hair loss can be effectively treated using Regaine Foam.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:31:13', '2021-09-08 10:31:13'),
(77, 21, 'mFR3a31631100756', 'Effectiveness', '<h5>How Effective is Regaine?</h5>\r\n\r\n<p>Regaine has been proven to reduce hair loss and even to encourage growth in clinical trial data. Based on clinical trial data around 60% of patients experienced and increase scalp coverage.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:32:36', '2021-09-08 10:32:36'),
(78, 21, 'etlDqF1631100790', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Regaine for Men Extra Strength can have side effects, like all medicines, although these don\'t affect everyone and are usually mild. For a full list of side effects read the patient information leaflet.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:33:10', '2021-09-08 10:33:10'),
(79, 21, '6qzGHt1631100826', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Propecia</strong></p>\r\n\r\n<p>Effective hair loss medication that works for up to 90% of men.</p>', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:33:46', '2021-09-08 10:33:46'),
(80, 21, 'wNV7TI1631100864', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/5765/pil\">View patient information leaflet</a>.</p>', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:34:24', '2021-09-08 10:34:24'),
(81, 22, 'aXxrId1631101999', 'Aciclovir', '<h5>What is Aciclovir?</h5>\r\n\r\n<p>Aciclovir is an antiviral medicine. It stops the infecting virus from reproducing. Since the virus reproduces very early in the infection, you will benefit most from treatment if you take Aciclovir Tablets as soon as the first symptoms appear.</p>\r\n\r\n<p>Aciclovir Tablets are used to treat genital herpes viral infections in adults. Genital herpes is a viral infection caused by herpes simplex virus type 1 or 2. It is normally spread by sexual contact. It causes blisters and burning or itching around the genitals, which may be painful. Aciclovir is used to treat genital herpes infections in adults. People who have frequent episodes of genital herpes can also take Aciclovir to help to prevent the attacks.</p>\r\n\r\n<h5>What is suppression treatment?</h5>\r\n\r\n<p>If you suffer from six or more outbreaks a year suppression treatment may be suitable for you. Suppression treatment is taken everyday and helps to prevent recurrent outbreaks by 70-80% and can sometime prevent outbreaks all together. Studies also show that outbreaks are milder and shorter than without suppression treatment.</p>\r\n\r\n<h5>How to take Aciclovir</h5>\r\n\r\n<p>To treat an outbreak of genital herpes take one tablet three times a day for 5 days. For suppression treatment take one tablet twice a day.</p>\r\n\r\n<h5>What is the difference between Valaciclovir and Aciclovir?</h5>\r\n\r\n<p>Aciclovir and Valaciclovir are closely related. Valaciclovir is a prodrug of aciclovir which means that after it is taken, it is converted in the body to aciclovir. The advantage of taking valaciclovir over aciclovir is that it doesn’t have to be taken as frequently as so it is more convenient for the patient to comply with the regime. However, aciclovir is more cost-effective especially for suppression treatment. Both medicines are equally effective for treating genital herpes.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:53:19', '2021-09-08 10:53:19'),
(82, 22, 'LkSfx61631102024', 'Herpes Information', '<h5>What is Genital Herpes?</h5>\r\n\r\n<p>Genital herpes is a very common and highly contagious infection usually spread through sex. This infection is usually caused by the herpes simplex virus-2 (HSV-2) or the herpes simplex virus-1 (HSV-1), the virus usually responsible for cold sores.</p>\r\n\r\n<p>Most cases of genital herpes are caused by infection by the herpes simplex virus type 2 (HSV-2). Herpes simplex virus type 1 (HSV-1) is more often the cause of cold sores or fever blisters. It can also be a cause of genital herpes.</p>\r\n\r\n<p>Most people with genital herpes don\'t know they have it. That\'s because in most people it produces either no symptoms or very mild ones.</p>\r\n\r\n<ul>\r\n	<li>Genital herpes is caused by the herpes simplex virus (HSV).</li>\r\n	<li>Genital herpes is very similar to the herpes that appear on the hands and face (\'cold sores\'), but is found on or around the penis, anus or vagina.</li>\r\n	<li>There are two types of herpes virus, HSV-1 and HSV-2. Both types can cause genital herpes. The first episode of infection (primary) with genital herpes is often quite severe. There are blisters and inflammation at the site of infection and the sufferer may feel generally unwell. It is common to have symptoms of burning when passing urine.</li>\r\n	<li>After the first episode of infection with HSV the virus enters into a dormant phase in the nerve, which supplies feeling to the area where infection occurred.</li>\r\n	<li>The dormant virus reactivates from time to time to cause recurrences.</li>\r\n	<li>Some people get symptoms warning them that a recurrence is about to occur, such as itching, tingling or pain in the genital area; blisters or sores may then develop. These tend to be less severe than the symptoms that occurred at the time of the first episode of infection.</li>\r\n	<li>From time to time the virus may reactivate without causing any symptoms of infection at all.</li>\r\n</ul>\r\n\r\n<h5>Who gets Genital Herpes?</h5>\r\n\r\n<p>Anyone who has sex can catch genital herpes. The people at most risk are those having unprotected sexual intercourse (i.e. not using condoms), especially those with more than one sexual partner and those who change sexual partners.</p>\r\n\r\n<h5>How do you get infected with Genital Herpes?</h5>\r\n\r\n<ul>\r\n	<li>Genital herpes is spread by direct contact with the infectious virus, via unprotected vaginal or anal sex, genital contact or through oral sex with someone who gets cold sores.</li>\r\n	<li>Genital herpes and cold sores are both very infectious when an infected person has blisters or sores.</li>\r\n	<li>It is possible for an infected person to transmit the virus when they have no symptoms of infection. The risk of this happening is probably reduced by using condoms.</li>\r\n</ul>\r\n\r\n<h5>What Are the Symptoms of Genital Herpes?</h5>\r\n\r\n<p>Even though you can still pass the infection, you may never notice symptoms from an HSV infection. On the other hand, you might notice symptoms within a few days to a couple of weeks after the initial contact. Or, you might not have an initial outbreak of symptoms until months or even years after becoming infected.</p>\r\n\r\n<p>When symptoms occur soon after a person is infected, they tend to be severe. They may start as small blisters that eventually break open and produce raw, painful sores that scab and heal over within a few weeks. The blisters and sores may be accompanied by flu-like symptoms with fever and swollen lymph nodes.</p>\r\n\r\n<p>Any of the following symptoms of a genital HSV infection can occur in a man or a woman:</p>\r\n\r\n<ul>\r\n	<li>Cracked, raw, or red areas around your genitals without pain, itching, or tingling</li>\r\n	<li>Itching or tingling around your genitals or your anal region</li>\r\n	<li>Small blisters that break open and cause painful sores. These may be on or around your genitals (penis or vagina) or on your buttocks, thighs, or rectal area. More rarely, blisters may occur inside the urethra -- the tube urine passes through on its way out of your body.</li>\r\n	<li>Pain from urine passing over the sores -- this is especially a problem in women.</li>\r\n	<li>Headaches</li>\r\n	<li>Backaches</li>\r\n	<li>Flu-like symptoms, including fever, swollen lymph nodes, and fatigue</li>\r\n</ul>\r\n\r\n<h5>How Serious is Genital Herpes</h5>\r\n\r\n<ul>\r\n	<li>The majority of people with genital herpes experience mild and infrequent symptoms. Some people may experience more frequent and severe recurrent episodes.</li>\r\n	<li>The risk of transmission from a mother to her baby is greatest for babies born to a woman with first episode genital herpes around the time of delivery. Neonatal herpes is potentially life threatening but occurs very rarely in the UK.</li>\r\n	<li>Women with recurrent herpes prior to pregnancy are at very low risk of transmitting the infection to their babies.</li>\r\n</ul>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:53:44', '2021-09-08 10:53:44'),
(83, 22, 'xMRWXE1631102064', 'Side Effects', '<h5>Side effects</h5>\r\n\r\n<p>As with all medicines, aciclovir should only be taken after carefully weighing the potential positives and negatives in conjunction with a qualified healthcare professional. Aciclovir is known to cause side effects.</p>\r\n\r\n<p>Common sides effects (occurring in one or more people out of one hundred):</p>\r\n\r\n<ul>\r\n	<li>Headache</li>\r\n	<li>Dizziness</li>\r\n	<li>Nausea</li>\r\n	<li>Vomiting</li>\r\n	<li>Diarrhoea</li>\r\n	<li>Abdominal pains</li>\r\n	<li>Pruritis</li>\r\n	<li>Rashes (including increased photosensitivity)</li>\r\n	<li>Fatigue</li>\r\n	<li>Fever</li>\r\n</ul>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:54:24', '2021-09-08 10:54:24'),
(84, 22, 'Bfl9Qp1631102090', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Self-care measures may be helpful for some people:</p>\r\n\r\n<ul>\r\n	<li>Clean the affected area with plain or salt water to help prevent secondary infection and promote healing of lesions.</li>\r\n	<li>Apply vaseline or a topical anaesthetic (e.g. lidocaine 5%) to lesions to help with painful micturition, if required.</li>\r\n	<li>Increase fluid intake to produce dilute urine (which is less painful to void). Urinate in a bath or with water flowing over the area to reduce stinging.</li>\r\n	<li>Avoid wearing tight clothing (which may irritate lesions) and use adequate pain relief (e.g. oral paracetamol).</li>\r\n	<li>Avoid sharing towels and flannels with household members (although it is very unlikely that the virus would survive on an object long enough to be passed on, it is sensible to take steps to prevent this).</li>\r\n	<li>Try to avoid identified trigger factors (e.g. ultraviolet light, excess alcohol).</li>\r\n</ul>\r\n\r\n<p>Find out more about <a href=\"http://www.herpes.org.uk\">genital herpes treatment</a></p>', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:54:50', '2021-09-08 10:54:50'),
(85, 22, 'znFIYd1631102119', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/5692/pil\">View patient information leaflet</a>.</p>', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:55:19', '2021-09-08 10:55:19'),
(86, 23, 'XTok1d1631102908', 'Valaciclovir', '<h5>What is Valaciclovir?</h5>\r\n\r\n<p>Valaciclovir is an antiviral medicine. It stops the infecting virus from reproducing. Since the virus reproduces very early in the infection, you will benefit most from treatment if you take Valaciclovir Tablets as soon as the first symptoms appear.</p>\r\n\r\n<p>Valaciclovir Tablets are used to treat genital herpes viral infections in adults. Genital herpes is a viral infection caused by herpes simplex virus type 1 or 2. It is normally spread by sexual contact. It causes blisters and burning or itching around the genitals, which may be painful. Valaciclovir is used to treat genital herpes infections in adults. People who have frequent episodes of genital herpes can also take Valaciclovir to help to prevent the attacks.</p>\r\n\r\n<h5>What is suppression treatment?</h5>\r\n\r\n<p>If you suffer from six or more outbreaks a year suppression treatment may be suitable for you. Suppression treatment is taken everyday and helps to prevent recurrent outbreaks by 70-80% and can sometime prevent outbreaks all together. Studies also show that outbreaks are milder and shorter than without suppression treatment.</p>\r\n\r\n<h5>How to take Valaciclovir</h5>\r\n\r\n<p>To treat an outbreak of genital herpes take one tablet twice times a day for 5 days. For suppression treatment take one tablet once a day.</p>\r\n\r\n<h5>What is the difference between Aciclovir and Valaciclovir?</h5>\r\n\r\n<p>Aciclovir and Valaciclovir are closely related. Valaciclovir is a prodrug of aciclovir which means that after it is taken, it is converted in the body to aciclovir. The advantage of taking valaciclovir over aciclovir is that it doesn’t have to be taken as frequently as so it is more convenient for the patient to comply with the regime. However, aciclovir is more cost-effective especially for suppression treatment. Both medicines are equally effective for treating genital herpes.</p>\r\n\r\n<h5>What is the difference between Valtrex and Valaciclovir?</h5>\r\n\r\n<p>Valaciclovir is the active ingredient in Valtrex and is available in a generic, unbranded tablet. Valaciclovir and Valtrex are medically equivalent but Valaciclovir is available at a much lower cost.</p>\r\n\r\n<p>Generic medicines contain the same active ingredient and are equally effective and medically equivalent as the branded products but are available at a lower price. Generic manufacturers have to demonstrate that they are medically identical to the branded product - i.e. they offer the same quality, strength, stability and effectiveness.</p>\r\n\r\n<p>Generic medicines are required meet the same standards of safety, quality and efficacy as the branded medication. To receive market approval from the <a href=\"https://www.ema.europa.eu/en\">European Medicines Agency </a>and <a href=\"https://www.gov.uk/government/organisations/medicines-and-healthcare-products-regulatory-agency\">MHRA</a>, a generic medicine must be \'bioequivalent\' to the originator product.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:08:28', '2021-09-08 11:08:28');
INSERT INTO `kod_med_long_description` (`id`, `medicine_id`, `hash_id`, `title`, `description`, `display_order`, `status`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(87, 23, 'jIu8eR1631102933', 'Herpes Information', '<h5>What is Genital Herpes?</h5>\r\n\r\n<p>Genital herpes is a very common and highly contagious infection usually spread through sex. This infection is usually caused by the herpes simplex virus-2 (HSV-2) or the herpes simplex virus-1 (HSV-1), the virus usually responsible for cold sores</p>\r\n\r\n<p>Most cases of genital herpes are caused by infection by the herpes simplex virus type 2 (HSV-2). Herpes simplex virus type 1 (HSV-1) is more often the cause of cold sores or fever blisters. It can also be a cause of genital herpes.</p>\r\n\r\n<p>Most people with genital herpes don\'t know they have it. That\'s because in most people it produces either no symptoms or very mild ones.</p>\r\n\r\n<ul>\r\n	<li>Genital herpes is caused by the herpes simplex virus (HSV).</li>\r\n	<li>Genital herpes is very similar to the herpes that appear on the hands and face (\'cold sores\'), but is found on or around the penis, anus or vagina.</li>\r\n	<li>There are two types of herpes virus, HSV-1 and HSV-2. Both types can cause genital herpes. The first episode of infection (primary) with genital herpes is often quite severe. There are blisters and inflammation at the site of infection and the sufferer may feel generally unwell. It is common to have symptoms of burning when passing urine.</li>\r\n	<li>After the first episode of infection with HSV the virus enters into a dormant phase in the nerve, which supplies feeling to the area where infection occurred.</li>\r\n	<li>The dormant virus reactivates from time to time to cause recurrences.</li>\r\n	<li>Some people get symptoms warning them that a recurrence is about to occur, such as itching, tingling or pain in the genital area; blisters or sores may then develop. These tend to be less severe than the symptoms that occurred at the time of the first episode of infection.</li>\r\n	<li>From time to time the virus may reactivate without causing any symptoms of infection at all.</li>\r\n</ul>\r\n\r\n<h5>Who gets Genital Herpes?</h5>\r\n\r\n<p>Anyone who has sex can catch genital herpes. The people at most risk are those having unprotected sexual intercourse (i.e. not using condoms), especially those with more than one sexual partner and those who change sexual partners.</p>\r\n\r\n<h5>How do you get infected with Genital Herpes?</h5>\r\n\r\n<ul>\r\n	<li>Genital herpes is spread by direct contact with the infectious virus, via unprotected vaginal or anal sex, genital contact or through oral sex with someone who gets cold sores.</li>\r\n	<li>Genital herpes and cold sores are both very infectious when an infected person has blisters or sores.</li>\r\n	<li>It is possible for an infected person to transmit the virus when they have no symptoms of infection. The risk of this happening is probably reduced by using condoms.</li>\r\n</ul>\r\n\r\n<h5>What Are the Symptoms of Genital Herpes?</h5>\r\n\r\n<p>Even though you can still pass the infection, you may never notice symptoms from an HSV infection. On the other hand, you might notice symptoms within a few days to a couple of weeks after the initial contact. Or, you might not have an initial outbreak of symptoms until months or even years after becoming infected.</p>\r\n\r\n<p>When symptoms occur soon after a person is infected, they tend to be severe. They may start as small blisters that eventually break open and produce raw, painful sores that scab and heal over within a few weeks. The blisters and sores may be accompanied by flu-like symptoms with fever and swollen lymph nodes.</p>\r\n\r\n<p>Any of the following symptoms of a genital HSV infection can occur in a man or a woman:</p>\r\n\r\n<ul>\r\n	<li>Cracked, raw, or red areas around your genitals without pain, itching, or tingling</li>\r\n	<li>Itching or tingling around your genitals or your anal region</li>\r\n	<li>Small blisters that break open and cause painful sores. These may be on or around your genitals (penis or vagina) or on your buttocks, thighs, or rectal area. More rarely, blisters may occur inside the urethra -- the tube urine passes through on its way out of your body.</li>\r\n	<li>Pain from urine passing over the sores -- this is especially a problem in women.</li>\r\n	<li>Headaches</li>\r\n	<li>Backaches</li>\r\n	<li>Flu-like symptoms, including fever, swollen lymph nodes, and fatigue</li>\r\n</ul>\r\n\r\n<h5>How Serious is Genital Herpes</h5>\r\n\r\n<ul>\r\n	<li>The majority of people with genital herpes experience mild and infrequent symptoms. Some people may experience more frequent and severe recurrent episodes.</li>\r\n	<li>The risk of transmission from a mother to her baby is greatest for babies born to a woman with first episode genital herpes around the time of delivery. Neonatal herpes is potentially life threatening but occurs very rarely in the UK.</li>\r\n	<li>Women with recurrent herpes prior to pregnancy are at very low risk of transmitting the infection to their babies.</li>\r\n</ul>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:08:53', '2021-09-08 11:08:53'),
(88, 23, 'NVn47H1631102964', 'Side Effects', '<h5>Side Effects of Anti-Viral Herpes Treatment</h5>\r\n\r\n<p>Common side effects include:</p>\r\n\r\n<ul>\r\n	<li>headache</li>\r\n	<li>nausea</li>\r\n	<li>diarrhoea</li>\r\n	<li>fatigue</li>\r\n	<li>abdominal pain</li>\r\n</ul>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:09:24', '2021-09-08 11:09:24'),
(89, 23, 'i6BHhr1631102988', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Self-care measures may be helpful for some people:</p>\r\n\r\n<ul>\r\n	<li>Clean the affected area with plain or salt water to help prevent secondary infection and promote healing of lesions.</li>\r\n	<li>Apply vaseline or a topical anaesthetic (e.g. lidocaine 5%) to lesions to help with painful micturition, if required.</li>\r\n	<li>Increase fluid intake to produce dilute urine (which is less painful to void). Urinate in a bath or with water flowing over the area to reduce stinging.</li>\r\n	<li>Avoid wearing tight clothing (which may irritate lesions) and use adequate pain relief (e.g. oral paracetamol).</li>\r\n	<li>Avoid sharing towels and flannels with household members (although it is very unlikely that the virus would survive on an object long enough to be passed on, it is sensible to take steps to prevent this).</li>\r\n	<li>Try to avoid identified trigger factors (e.g. ultraviolet light, excess alcohol).</li>\r\n</ul>\r\n\r\n<p>Find out more about <a href=\"http://www.herpes.org.uk\">genital herpes treatment</a></p>', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:09:48', '2021-09-08 11:09:48'),
(90, 23, 'GJj47p1631103009', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/4349/pil\">View patient information leaflet</a>.</p>', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:10:09', '2021-09-08 11:10:09'),
(91, 24, 'fIAPVk1631103693', 'Famciclovir', '<h5>What is Famciclovir?</h5>\r\n\r\n<p>Famciclovir is an antiviral medicine. It stops the infecting virus from reproducing. Since the virus reproduces very early in the infection, you will benefit most from treatment if you take Famciclovir Tablets as soon as the first symptoms appear.</p>\r\n\r\n<p>Famciclovir Tablets are used to treat genital herpes viral infections in adults. Genital herpes is a viral infection caused by herpes simplex virus type 1 or 2. It is normally spread by sexual contact. It causes blisters and burning or itching around the genitals, which may be painful. Famciclovir is used to treat genital herpes infections in adults. People who have frequent episodes of genital herpes can also take famciclovir to help to prevent the attacks.</p>\r\n\r\n<h5>How to take Famciclovir</h5>\r\n\r\n<p>To treat an outbreak of genital herpes take one tablet twice a day for 5 days.</p>\r\n\r\n<h5>What is the difference between Famvir and Famciclovir?</h5>\r\n\r\n<p>Famciclovir is the active ingredient in Famvir and is available in a generic, unbranded tablet. Famciclovir and Famvir are medically equivalent but Famciclovir is available at a much lower cost.</p>\r\n\r\n<p>Generic medicines contain the same active ingredient and are equally effective and medically equivalent as the branded products but are available at a lower price. Generic manufacturers have to demonstrate that they are medically identical to the branded product - i.e. they offer the same quality, strength, stability and effectiveness.</p>\r\n\r\n<p>Generic medicines are required meet the same standards of safety, quality and efficacy as the branded medication. To receive market approval from the <a href=\"https://www.ema.europa.eu/en\">European Medicines Agency </a>and <a href=\"https://www.gov.uk/government/organisations/medicines-and-healthcare-products-regulatory-agency\">MHRA</a>, a generic medicine must be \'bioequivalent\' to the originator product.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:21:33', '2021-09-08 11:21:33'),
(92, 24, '05Q0BB1631103712', 'Herpes Information', '<h5>What is Genital Herpes?</h5>\r\n\r\n<p>Genital herpes is a very common and highly contagious infection usually spread through sex. This infection is usually caused by the herpes simplex virus-2 (HSV-2) or the herpes simplex virus-1 (HSV-1), the virus usually responsible for cold sores.</p>\r\n\r\n<p>Most cases of genital herpes are caused by infection by the herpes simplex virus type 2 (HSV-2). Herpes simplex virus type 1 (HSV-1) is more often the cause of cold sores or fever blisters. It can also be a cause of genital herpes.</p>\r\n\r\n<p>Most people with genital herpes don\'t know they have it. That\'s because in most people it produces either no symptoms or very mild ones.</p>\r\n\r\n<ul>\r\n	<li>Genital herpes is caused by the herpes simplex virus (HSV).</li>\r\n	<li>Genital herpes is very similar to the herpes that appear on the hands and face (\'cold sores\'), but is found on or around the penis, anus or vagina.</li>\r\n	<li>There are two types of herpes virus, HSV-1 and HSV-2. Both types can cause genital herpes. The first episode of infection (primary) with genital herpes is often quite severe. There are blisters and inflammation at the site of infection and the sufferer may feel generally unwell. It is common to have symptoms of burning when passing urine.</li>\r\n	<li>After the first episode of infection with HSV the virus enters into a dormant phase in the nerve, which supplies feeling to the area where infection occurred.</li>\r\n	<li>The dormant virus reactivates from time to time to cause recurrences.</li>\r\n	<li>Some people get symptoms warning them that a recurrence is about to occur, such as itching, tingling or pain in the genital area; blisters or sores may then develop. These tend to be less severe than the symptoms that occurred at the time of the first episode of infection.</li>\r\n	<li>From time to time the virus may reactivate without causing any symptoms of infection at all.</li>\r\n</ul>\r\n\r\n<h5>Who gets Genital Herpes?</h5>\r\n\r\n<p>Anyone who has sex can catch genital herpes. The people at most risk are those having unprotected sexual intercourse (i.e. not using condoms), especially those with more than one sexual partner and those who change sexual partners.</p>\r\n\r\n<h5>How do you get infected with Genital Herpes?</h5>\r\n\r\n<ul>\r\n	<li>Genital herpes is spread by direct contact with the infectious virus, via unprotected vaginal or anal sex, genital contact or through oral sex with someone who gets cold sores.</li>\r\n	<li>Genital herpes and cold sores are both very infectious when an infected person has blisters or sores.</li>\r\n	<li>It is possible for an infected person to transmit the virus when they have no symptoms of infection. The risk of this happening is probably reduced by using condoms.</li>\r\n</ul>\r\n\r\n<h5>What Are the Symptoms of Genital Herpes?</h5>\r\n\r\n<p>Even though you can still pass the infection, you may never notice symptoms from an HSV infection. On the other hand, you might notice symptoms within a few days to a couple of weeks after the initial contact. Or, you might not have an initial outbreak of symptoms until months or even years after becoming infected.</p>\r\n\r\n<p>When symptoms occur soon after a person is infected, they tend to be severe. They may start as small blisters that eventually break open and produce raw, painful sores that scab and heal over within a few weeks. The blisters and sores may be accompanied by flu-like symptoms with fever and swollen lymph nodes.</p>\r\n\r\n<p>Any of the following symptoms of a genital HSV infection can occur in a man or a woman:</p>\r\n\r\n<ul>\r\n	<li>Cracked, raw, or red areas around your genitals without pain, itching, or tingling</li>\r\n	<li>Itching or tingling around your genitals or your anal region</li>\r\n	<li>Small blisters that break open and cause painful sores. These may be on or around your genitals (penis or vagina) or on your buttocks, thighs, or rectal area. More rarely, blisters may occur inside the urethra -- the tube urine passes through on its way out of your body.</li>\r\n	<li>Pain from urine passing over the sores -- this is especially a problem in women.</li>\r\n	<li>Headaches</li>\r\n	<li>Backaches</li>\r\n	<li>Flu-like symptoms, including fever, swollen lymph nodes, and fatigue</li>\r\n</ul>\r\n\r\n<h5>How Serious is Genital Herpes</h5>\r\n\r\n<ul>\r\n	<li>The majority of people with genital herpes experience mild and infrequent symptoms. Some people may experience more frequent and severe recurrent episodes.</li>\r\n	<li>The risk of transmission from a mother to her baby is greatest for babies born to a woman with first episode genital herpes around the time of delivery. Neonatal herpes is potentially life threatening but occurs very rarely in the UK.</li>\r\n	<li>Women with recurrent herpes prior to pregnancy are at very low risk of transmitting the infection to their babies.</li>\r\n</ul>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:21:52', '2021-09-08 11:21:52'),
(93, 24, 'TQETX01631103742', 'Side Effects', '<h5>Side Effects of Anti-Viral Herpes Treatment</h5>\r\n\r\n<p>Common side effects include:</p>\r\n\r\n<ul>\r\n	<li>headache</li>\r\n	<li>nausea</li>\r\n	<li>diarrhoea</li>\r\n	<li>fatigue</li>\r\n	<li>abdominal pain</li>\r\n</ul>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:22:22', '2021-09-08 11:22:22'),
(94, 24, 'eGHCBo1631103765', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Self-care measures may be helpful for some people:</p>\r\n\r\n<ul>\r\n	<li>Clean the affected area with plain or salt water to help prevent secondary infection and promote healing of lesions.</li>\r\n	<li>Apply vaseline or a topical anaesthetic (e.g. lidocaine 5%) to lesions to help with painful micturition, if required.</li>\r\n	<li>Increase fluid intake to produce dilute urine (which is less painful to void). Urinate in a bath or with water flowing over the area to reduce stinging.</li>\r\n	<li>Avoid wearing tight clothing (which may irritate lesions) and use adequate pain relief (e.g. oral paracetamol).</li>\r\n	<li>Avoid sharing towels and flannels with household members (although it is very unlikely that the virus would survive on an object long enough to be passed on, it is sensible to take steps to prevent this).</li>\r\n	<li>Try to avoid identified trigger factors (e.g. ultraviolet light, excess alcohol).</li>\r\n</ul>\r\n\r\n<p>Find out more about <a href=\"http://www.herpes.org.uk\">genital herpes treatment</a></p>', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:22:45', '2021-09-08 11:22:45'),
(95, 24, 'JUxu021631103787', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/8815/pil\">View patient information leaflet</a>.</p>', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:23:07', '2021-09-08 11:23:07'),
(96, 25, 'ZAS8oB1631104358', 'Valtrex', '<h5>What is Valtrex?</h5>\r\n\r\n<p>Valtrex is an antiviral medicine. It stops the infecting virus from reproducing. Since the virus reproduces very early in the infection, you will benefit most from treatment if you take Valtrex Tablets as soon as the first symptoms appear.</p>\r\n\r\n<p>Valtrex Tablets are used to treat genital herpes viral infections in adults. Genital herpes is a viral infection caused by herpes simplex virus type 1 or 2. It is normally spread by sexual contact. It causes blisters and burning or itching around the genitals, which may be painful. Valtrex is used to treat genital herpes infections in adults. People who have frequent episodes of genital herpes can also take Valtrex to help to prevent the attacks.</p>\r\n\r\n<h5>What is suppression treatment?</h5>\r\n\r\n<p>If you suffer from six or more outbreaks a year suppression treatment may be suitable for you. Suppression treatment is taken everyday and helps to prevent recurrent outbreaks by 70-80% and can sometime prevent outbreaks all together. Studies also show that outbreaks are milder and shorter than without suppression treatment.</p>\r\n\r\n<h5>How to take Valtrex</h5>\r\n\r\n<p>To treat an outbreak of genital herpes take one tablet twice times a day for 5 days. For suppression treatment take one tablet once a day.</p>\r\n\r\n<h5>What is the difference between Aciclovir and Valaciclovir?</h5>\r\n\r\n<p>Aciclovir and Valaciclovir are closely related. Valaciclovir is a prodrug of aciclovir which means that after it is taken, it is converted in the body to aciclovir. The advantage of taking valaciclovir over aciclovir is that it doesn’t have to be taken as frequently as so it is more convenient for the patient to comply with the regime. However, aciclovir is more cost-effective especially for suppression treatment. Both medicines are equally effective for treating genital herpes.</p>\r\n\r\n<h5>What is the difference between Valtrex and Valaciclovir?</h5>\r\n\r\n<p>Valaciclovir is the active ingredient in Valtrex and is available in a generic, unbranded tablet. Valaciclovir and Valtrex are medically equivalent but Valtrex is available at a much lower cost.</p>\r\n\r\n<p>Generic medicines contain the same active ingredient and are equally effective and medically equivalent as the branded products but are available at a lower price. Generic manufacturers have to demonstrate that they are medically identical to the branded product - i.e. they offer the same quality, strength, stability and effectiveness.</p>\r\n\r\n<p>Generic medicines are required meet the same standards of safety, quality and efficacy as the branded medication. To receive market approval from the <a href=\"https://www.ema.europa.eu/en\">European Medicines Agency</a> and <a href=\"https://www.gov.uk/government/organisations/medicines-and-healthcare-products-regulatory-agency\">MHRA</a>, a generic medicine must be \'bioequivalent\' to the originator product.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:32:38', '2021-09-08 11:32:38'),
(97, 25, 'xlpdSf1631104381', 'Herpes Information', '<h5>What is Genital Herpes?</h5>\r\n\r\n<p>Genital herpes is a very common and highly contagious infection usually spread through sex. This infection is usually caused by the herpes simplex virus-2 (HSV-2) or the herpes simplex virus-1 (HSV-1), the virus usually responsible for cold sores.</p>\r\n\r\n<p>Most cases of genital herpes are caused by infection by the herpes simplex virus type 2 (HSV-2). Herpes simplex virus type 1 (HSV-1) is more often the cause of cold sores or fever blisters. It can also be a cause of genital herpes.</p>\r\n\r\n<p>Most people with genital herpes don\'t know they have it. That\'s because in most people it produces either no symptoms or very mild ones.</p>\r\n\r\n<ul>\r\n	<li>Genital herpes is caused by the herpes simplex virus (HSV).</li>\r\n	<li>Genital herpes is very similar to the herpes that appear on the hands and face (\'cold sores\'), but is found on or around the penis, anus or vagina.</li>\r\n	<li>There are two types of herpes virus, HSV-1 and HSV-2. Both types can cause genital herpes. The first episode of infection (primary) with genital herpes is often quite severe. There are blisters and inflammation at the site of infection and the sufferer may feel generally unwell. It is common to have symptoms of burning when passing urine.</li>\r\n	<li>After the first episode of infection with HSV the virus enters into a dormant phase in the nerve, which supplies feeling to the area where infection occurred.</li>\r\n	<li>The dormant virus reactivates from time to time to cause recurrences.</li>\r\n	<li>Some people get symptoms warning them that a recurrence is about to occur, such as itching, tingling or pain in the genital area; blisters or sores may then develop. These tend to be less severe than the symptoms that occurred at the time of the first episode of infection.</li>\r\n	<li>From time to time the virus may reactivate without causing any symptoms of infection at all.</li>\r\n</ul>\r\n\r\n<h5>Who gets Genital Herpes?</h5>\r\n\r\n<p>Anyone who has sex can catch genital herpes. The people at most risk are those having unprotected sexual intercourse (i.e. not using condoms), especially those with more than one sexual partner and those who change sexual partners.</p>\r\n\r\n<h5>How do you get infected with Genital Herpes?</h5>\r\n\r\n<ul>\r\n	<li>Genital herpes is spread by direct contact with the infectious virus, via unprotected vaginal or anal sex, genital contact or through oral sex with someone who gets cold sores.</li>\r\n	<li>Genital herpes and cold sores are both very infectious when an infected person has blisters or sores.</li>\r\n	<li>It is possible for an infected person to transmit the virus when they have no symptoms of infection. The risk of this happening is probably reduced by using condoms.</li>\r\n</ul>\r\n\r\n<h5>What Are the Symptoms of Genital Herpes?</h5>\r\n\r\n<p>Even though you can still pass the infection, you may never notice symptoms from an HSV infection. On the other hand, you might notice symptoms within a few days to a couple of weeks after the initial contact. Or, you might not have an initial outbreak of symptoms until months or even years after becoming infected.</p>\r\n\r\n<p>When symptoms occur soon after a person is infected, they tend to be severe. They may start as small blisters that eventually break open and produce raw, painful sores that scab and heal over within a few weeks. The blisters and sores may be accompanied by flu-like symptoms with fever and swollen lymph nodes.</p>\r\n\r\n<p>Any of the following symptoms of a genital HSV infection can occur in a man or a woman:</p>\r\n\r\n<ul>\r\n	<li>Cracked, raw, or red areas around your genitals without pain, itching, or tingling</li>\r\n	<li>Itching or tingling around your genitals or your anal region</li>\r\n	<li>Small blisters that break open and cause painful sores. These may be on or around your genitals (penis or vagina) or on your buttocks, thighs, or rectal area. More rarely, blisters may occur inside the urethra -- the tube urine passes through on its way out of your body.</li>\r\n	<li>Pain from urine passing over the sores -- this is especially a problem in women.</li>\r\n	<li>Headaches</li>\r\n	<li>Backaches</li>\r\n	<li>Flu-like symptoms, including fever, swollen lymph nodes, and fatigue</li>\r\n</ul>\r\n\r\n<h5>How Serious is Genital Herpes</h5>\r\n\r\n<ul>\r\n	<li>The majority of people with genital herpes experience mild and infrequent symptoms. Some people may experience more frequent and severe recurrent episodes.</li>\r\n	<li>The risk of transmission from a mother to her baby is greatest for babies born to a woman with first episode genital herpes around the time of delivery. Neonatal herpes is potentially life threatening but occurs very rarely in the UK.</li>\r\n	<li>Women with recurrent herpes prior to pregnancy are at very low risk of transmitting the infection to their babies.</li>\r\n</ul>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:33:01', '2021-09-08 11:33:01'),
(98, 25, 'swEUkL1631104410', 'Side Effects', '<h5>Side Effects of Anti-Viral Herpes Treatment</h5>\r\n\r\n<p>Common side effects include:</p>\r\n\r\n<ul>\r\n	<li>headache</li>\r\n	<li>nausea</li>\r\n	<li>diarrhoea</li>\r\n	<li>fatigue</li>\r\n	<li>abdominal pain</li>\r\n</ul>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:33:30', '2021-09-08 11:33:30'),
(99, 25, 'nlBz9y1631104440', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Self-care measures may be helpful for some people:</p>\r\n\r\n<ul>\r\n	<li>Clean the affected area with plain or salt water to help prevent secondary infection and promote healing of lesions.</li>\r\n	<li>Apply vaseline or a topical anaesthetic (e.g. lidocaine 5%) to lesions to help with painful micturition, if required.</li>\r\n	<li>Increase fluid intake to produce dilute urine (which is less painful to void). Urinate in a bath or with water flowing over the area to reduce stinging.</li>\r\n	<li>Avoid wearing tight clothing (which may irritate lesions) and use adequate pain relief (e.g. oral paracetamol).</li>\r\n	<li>Avoid sharing towels and flannels with household members (although it is very unlikely that the virus would survive on an object long enough to be passed on, it is sensible to take steps to prevent this).</li>\r\n	<li>Try to avoid identified trigger factors (e.g. ultraviolet light, excess alcohol).</li>\r\n</ul>\r\n\r\n<p>Find out more about <a href=\"http://www.herpes.org.uk\">genital herpes treatment</a></p>', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:34:00', '2021-09-08 11:34:08'),
(100, 25, 'f2itcH1631104473', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/5467/pil\">View patient information leaflet</a>.</p>', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:34:33', '2021-09-08 11:34:33'),
(101, 26, '2wUKSg1631105815', 'What is Epiduo?', '<h5>What is Epiduo?</h5>\r\n\r\n<p>Epiduo is a gel that is used in the treatment of moderate to severe acne. It contains two active ingredients; benzoyl peroxide and adapalene. These ingredients are both used to treat acne and they work in different ways.</p>\r\n\r\n<p>Benzoyl peroxide is an antimicrobial agent and works by killing bacteria on the skin.</p>\r\n\r\n<p>Adapalene belongs to a group of medicines called retinoids (which includes tretinoin) and helps to reduce inflammation and black and white head formation on the outer layer of the skin. Adapalene is an advanced third generation retinoid which exhibits many of the same effects as previous generation medicines like tretinoin but is often tolerated better.</p>\r\n\r\n<h5>How do I apply Epiduo?</h5>\r\n\r\n<p>Apply a thin layer of gel evenly over the acne affected areas only once daily at bedtime. Do not apply near or to the eyes, lips, nostrils or other sensitive areas. The gel should be applied to clean, dry skin and take care to wash your hands thoroughly before and after use.</p>\r\n\r\n<p>Do not apply to broken skin.</p>\r\n\r\n<h5>How do I buy Epiduo?</h5>\r\n\r\n<p>Epiduo is a prescription only medicine and cannot be bought over the counter. If you are interested in this medicine, why not fill out our consultation questionnaire? This will be reviewed by one of our expert prescribers who will advise if this medicine is suitable and safe for you.</p>\r\n\r\n<h5>How long does it take to see results?</h5>\r\n\r\n<p>As with all medicines applied to the skin in the treatment of acne, you may not see results for up to eight weeks. It is important to be consistent in your application of this gel in order for it to work properly.</p>\r\n\r\n<h5>How effective is Epiduo?</h5>\r\n\r\n<p>One study compared the efficacy of Epiduo to a placebo and showed that after 12 weeks of treatment, 27.5% of patients using Epiduo were clear or almost clear of acne compared to 9.9% of patients who used a placebo. The same study also compared Epiduo to each single active ingredient that is in it. After 12 weeks, adapalene had a success rate of 15.5% and benzoyl peroxide was 15.4%.</p>\r\n\r\n<h5>Is there anybody who cannot use Epiduo?</h5>\r\n\r\n<p>Epiduo is not suitable for those with a hypersensitivity to any of the ingredients. Do not use in pregnancy. Avoid sunlight and UV lamps while using this medicine. Do not use other acne products containing retinoids or benzoyl peroxide while using this medicine or products that are irritating, drying or exfoliating to the skin.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:56:55', '2021-09-08 11:56:55'),
(102, 26, 'SQZBWo1631105837', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Some people can experience stinging sensation, dryness, scaling and burning sensitivity when they first use this medicine. This presents worst during the first week of use and then tends to settle.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:57:17', '2021-09-08 11:57:17'),
(103, 26, 'NMK07x1631105867', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/451/pil\">View patient information leaflet</a>.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:57:47', '2021-09-08 11:57:47'),
(104, 27, 'gShKCV1631106339', 'Isotrex Information', '<h3>What is Isotrex?</h3>\r\n\r\n<p>Isotrex Gel is a prescription only acne treatment. Isotrex Gel contains the active ingredient isotretinoin. Isotretinoin is similar to Vitamin A. It works by helping the skin so that blocked pores are less likely. This helps to prevent spots.</p>\r\n\r\n<p>Isotrex Gel is used to treat acne (spots) in young people who are going through or have gone through puberty, and in adults. It is not for use by children who have not started puberty. Isotrex helps to:</p>\r\n\r\n<ul>\r\n	<li>loosen blackheads and whiteheads so that they come out more easily</li>\r\n	<li>stop new blackheads, whiteheads and spots from forming</li>\r\n	<li>lower the number of red, swollen acne spots.</li>\r\n</ul>\r\n\r\n<h3>What is the difference between tretinoin and isotretinoin?</h3>\r\n\r\n<p>Isotretinoin is very similar to the active ingredient tretinoin. It is known as an isomer which means that the chemical structure is very similar. Clinical studies have shown that isotretinoin is as effective as tretinoin for treating acne but for some individuals has less side effects.</p>\r\n\r\n<h3>How to Use Isotrex Gel</h3>\r\n\r\n<ol>\r\n	<li>Wash your hands.</li>\r\n	<li>Completely remove any make-up.</li>\r\n	<li>Wash the area with a mild soap and warm water, and dry gently.</li>\r\n	<li>Wash the area with a mild soap and warm water, and dry gently.Put a thin layer of gel on the affected skin, using your fingertips, and smooth in.</li>\r\n	<li>Apply to all of the area of your skin which has acne, not just each spot.</li>\r\n	<li>Wash your hands after using the gel.</li>\r\n</ol>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:05:39', '2021-09-08 12:05:39'),
(105, 27, 'Az56Kf1631106361', 'Side Effects', '<h3>Side Effects</h3>\r\n\r\n<p>These effects can occur on the area of skin where you use the gel. If they cause you a problem, try using Isotrex less often, or stop using it for a few days until the irritation goes away, then start again. Stop using Isotrex if the irritation does not go away:</p>\r\n\r\n<ul>\r\n	<li>redness or peeling of your skin, especially during the first few weeks of use</li>\r\n	<li>slight stinging or skin pain</li>\r\n	<li>skin irritation or tenderness</li>\r\n	<li>skin burning sensation</li>\r\n	<li>dry skin</li>\r\n	<li>itching</li>\r\n</ul>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:06:01', '2021-09-08 12:06:01'),
(106, 27, '6VGEPi1631106381', 'Information Leaflet', '<h3>Patient Information Leaflet</h3>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment.</p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:06:21', '2021-09-08 12:06:21'),
(107, 28, 'iw6RyP1631107253', 'What is Differin?', '<h5>What is Differin?</h5>\r\n\r\n<p>Differin is a cream (sensitive or dry skin) or gel (normal or oily skin) that is used in the treatment of moderate to severe acne. It contains the active ingredients adapalene.</p>\r\n\r\n<p>Adapalene belongs to a group of medicines called retinoids (which includes tretinoin) and helps to reduce inflammation and black and white head formation on the outer layer of the skin. Adapalene is an advanced third generation retinoid which exhibits many of the same effects as previous generation medicines like tretinoin but is often tolerated better.</p>\r\n\r\n<h5>How do I apply Differin?</h5>\r\n\r\n<p>Apply a thin layer of gel evenly over the acne affected areas only once daily at bedtime. Do not apply near or to the eyes, lips, nostrils or other sensitive areas. The gel should be applied to clean, dry skin and take care to wash your hands thoroughly before and after use.</p>\r\n\r\n<p>Do not apply to broken skin.</p>\r\n\r\n<h5>How do I buy Differin?</h5>\r\n\r\n<p>Differin is a prescription only medicine and cannot be bought over the counter. If you are interested in this medicine, why not fill out our consultation questionnaire? This will be reviewed by one of our expert prescribers who will advise if this medicine is suitable and safe for you.</p>\r\n\r\n<h5>How long does it take to see results?</h5>\r\n\r\n<p>As with all medicines applied to the skin in the treatment of acne, you may not see results for up to eight weeks. It is important to be consistent in your application of this gel in order for it to work properly.</p>\r\n\r\n<h5>Is there anybody who cannot use Differin?</h5>\r\n\r\n<p>Differin is not suitable for those with a hypersensitivity to any of the ingredients. Do not use in pregnancy. Avoid sunlight and UV lamps while using this medicine. Do not use other acne products containing retinoids or benzoyl peroxide while using this medicine or products that are irritating, drying or exfoliating to the skin.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:20:53', '2021-09-08 12:20:53'),
(108, 28, 'QnniXm1631107278', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Some people can experience stinging sensation, dryness, scaling and burning sensitivity when they first use this medicine. This presents worst during the first week of use and then tends to settle.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:21:18', '2021-09-08 12:21:18'),
(109, 28, 'VGqWc21631107299', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment.</p>\r\n\r\n<p>Cream <a href=\"https://www.medicines.org.uk/emc/product/920/pil\" target=\"_blank\">https://www.medicines.org.uk/emc/product/920/pil</a></p>\r\n\r\n<p>Gel <a href=\"https://www.medicines.org.uk/emc/product/921/smpc\" target=\"_blank\">https://www.medicines.org.uk/emc/product/921/smpc</a></p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:21:39', '2021-09-08 12:21:39'),
(110, 29, 'wwNlzG1631108092', 'What is Treclin?', '<h5>What is Treclin?</h5>\r\n\r\n<p>Treclin contains tretinoin and an antibiotic known as Clindamycin. It limits the growth of bacteria associated with acne and the inflammation caused by these bacteria. Tretinoin normalizes the growth of superficial skin cells and causes normal shedding of the cells that clog the hair follicles in areas with acne. This prevents the build-up of sebum and the formation of early acne lesions (blackheads and whiteheads).</p>\r\n\r\n<p>Treclin Gel is used to treat acne (spots) in young people who are going through or have gone through puberty and in adults.</p>\r\n\r\n<p>Treclin helps to:</p>\r\n\r\n<ul>\r\n	<li>loosen blackheads and whiteheads so that they come out more easily</li>\r\n	<li>stop new blackheads, whiteheads and spots from forming</li>\r\n	<li>lower the number of red, swollen acne spots.</li>\r\n</ul>\r\n\r\n<h5>What is Tretinoin?</h5>\r\n\r\n<p>Tretinoin is a vitamin A derivative that belongs to a class of medicines known as retinoids. Tretinoin was patented in 1957 and approved for medical use in 1962. It is on the World Health Organization\'s List of Essential Medicines, the most important medications needed in a basic health system. Tretinoin is an effective treatment for acne and has also been licensed for the treatment of fine wrinkles from sun-aged skin. It works to treat acne by helping the skin so that blocked pores are less likely. This helps to prevent spots.</p>\r\n\r\n<h5>What is the difference between Treclin and Retin-A?</h5>\r\n\r\n<p>Retin-A is a brand name version of a tretinoin gel manufactured by Janssen. This product is no longer available in Europe. Treclin contains the same active ingredient Tretinoin as well as the antibiotic Clindamycin.</p>\r\n\r\n<h5>How to Use Treclin Gel</h5>\r\n\r\n<ul>\r\n	<li>Wash your hands.</li>\r\n	<li>Completely remove any make-up.</li>\r\n	<li>Wash the area with a mild soap and warm water, and dry gently.</li>\r\n	<li>Put a thin layer of gel on the affected skin, using your fingertips, and smooth in.</li>\r\n	<li>Apply to all of the area of your skin which has acne, not just each spot.</li>\r\n	<li>Wash your hands after using the gel.</li>\r\n</ul>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:34:52', '2021-09-08 12:34:52'),
(111, 29, 'E5PEHz1631108116', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>These effects can occur on the area of skin where you use the gel. If they cause you a problem, try using Isotrex less often, or stop using it for a few days until the irritation goes away, then start again. Stop using Isotrex if the irritation does not go away:</p>\r\n\r\n<ul>\r\n	<li>redness or peeling of your skin, especially during the first few weeks of use</li>\r\n	<li>slight stinging or skin pain</li>\r\n	<li>skin irritation or tenderness</li>\r\n	<li>skin burning sensation</li>\r\n	<li>dry skin</li>\r\n	<li>itching</li>\r\n</ul>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:35:16', '2021-09-08 12:35:16'),
(112, 29, 'soCqL01631108143', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/5371/pil#gref\" target=\"_blank\">View patient information leaflet.</a></p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:35:43', '2021-09-08 12:35:43'),
(113, 30, 'EIqu4c1631108630', 'What is Acnecide?', '<h5>What is Acnecide?</h5>\r\n\r\n<p>Acnecide contains Benzoyl Peroxide which is a topical gel used to treat mild to moderate acne and it aims to counteract the build-up of oils, inflammation and triggers of acne.</p>\r\n\r\n<h5>How is Benzoyl Peroxide gel applied?</h5>\r\n\r\n<p>After washing the affected area with warm water and a mild cleanser, apply a thin layer of the gel each evening, or twice a day if you have been advised to do so.</p>\r\n\r\n<h5>How does Benzoyl Peroxide gel work?</h5>\r\n\r\n<p>Acne is often caused by a build-up of oil in the pores causing the pores to become blocked. Benzoyl Peroxide gel (often branded Acnecide) helps to reduce the production of this oil and works by breaking down keratin in the skin structure. This in turn breaks down blackheads and whiteheads, unblocking acne-causing pores and shedding dead cells from the skin surface. Benzoyl Peroxide gel also works by killing the bacteria that cause acne, so it can therefore help prevent future acne flare ups and reduce inflammation to the affected area.</p>\r\n\r\n<h5>Is Benzoyl Peroxide gel effective?</h5>\r\n\r\n<p>It can sometimes take up to 4 weeks to see an improvement in your skin, so it is important to continue the treatment and monitor your progress. Trying the acne treatment for 12 weeks will help you to determine if it has made a real difference to your acne. As the gel can dry out the affected area, if you have sensitive skin it may be best to apply the gel only at night. It may also be worth altering the number of times you apply to once every other day until your skin adjusts.</p>\r\n\r\n<h5>Is it safe to apply Benzoyl Peroxide gel during pregnancy or breastfeeding?</h5>\r\n\r\n<p>You should not use Benzoyl Peroxide gel while pregnant or breastfeeding.</p>\r\n\r\n<h5>Will Benzoyl Peroxide gel react with other medication?</h5>\r\n\r\n<p>Any product that contains tretinoin, isotretinoin or tazarotene should not be used at the same time as Benzoyl Peroxide gel, they may decrease effectiveness and increase irritation. If you are using a combination of topical treatments, one should be applied in the morning and one in the evening. Any other topical acne treatments, cosmetics or toiletries, particularly those with high concentrations of alcohol or astringents, should be avoided while using Benzoyl Peroxide gel. The interactions between these and Benzoyl Peroxide gel may increase the likelihood of dryness, peeling or irritation to the affected area.</p>\r\n\r\n<h5>Alternative treatments for acne</h5>\r\n\r\n<p>There are a variety of other acne treatments that can be taken, including a range of other acne creams, as well as combination packages of oral antibiotics and gels or creams.</p>', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:43:50', '2021-09-08 12:43:50'),
(114, 30, 'mUvKXo1631108659', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like many medications some patients may experience side effects with Benzoyl Peroxide gel. The most common side effects are a mild burning sensation, dryness, redness and peeling of the treated areas of skin. It is also worth noting the gel may also bleach the hair (as well as towels and bed linen). The treatment is also likely to increase sensitivity to sunlight, sunbeds or sunlamps, it is important to use a suitable factor sunscreen.</p>', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:44:19', '2021-09-08 12:44:32'),
(115, 30, 'ZWcg2Q1631108868', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/files/pil.2225.pdf\" target=\"_blank\">View patient information leaflet.</a></p>', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:47:48', '2021-09-08 12:47:48'),
(116, 31, 'BYXVui1631164166', 'What is Duac gel (3%, 1%) or (5%,1%)', '<h5>What is Duac gel (3%,1%) or (5%,1%)</h5>\r\n\r\n<p>Duac gel is an acne-preparation that gets rid of spots by reducing whiteheads and blackheads as well as stopping bacteria that encourages the formation of acne.</p>\r\n\r\n<h5>How is Duac gel applied?</h5>\r\n\r\n<p>After removing any makeup and washing the face, apply a thin film of Duac gel each evening to the affected area. Avoid any contact with the eyes, mouth, lips and nostrils and wash your hands after applying the gel.</p>\r\n\r\n<h5>How does Duac gel work?</h5>\r\n\r\n<p>Duac gel contains two active ingredients, clindamycin phosphate (1%) and Benzoyl Peroxide (3%) or (5%) which work together to combat acne in two different ways. Clindamycin is an antibiotic which stops the bacteria that cause acne. Benzoyl Peroxide kills these bacteria too, but also breaks down blackheads and whiteheads reducing acne and inflammation across the affected area.</p>\r\n\r\n<h5>Is Duac gel effective?</h5>\r\n\r\n<p>The combination of the two active ingredients in Duac gel can make it an effective treatment for acne. It can take 2-6 weeks before you start to see any effect of the acne treatment, but it should not be used for more than 12 weeks at a time.</p>\r\n\r\n<h5>Is it safe to use Duac gel during pregnancy or breastfeeding?</h5>\r\n\r\n<p>You should not use Duac gel if you think you might be pregnant, are pregnant or breastfeeding.</p>\r\n\r\n<h5>Will Duac gel interact with other medications?</h5>\r\n\r\n<p>Duac gel should not be used at the same time as products that contain the antibiotic erythromycin, any products applied to the skin that contain tretinoin, isotretinoin or tazarotene. The same applies for medications taken orally that contain isotretinoin (such as the branded product Roaccutane).</p>\r\n\r\n<h5>Alternative treatments for acne</h5>\r\n\r\n<p>There are a variety of other acne treatments that can be taken, including a range of other acne creams, as well as combination packages of oral antibiotics and gels or creams.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:09:26', '2021-09-09 04:09:26'),
(117, 31, 'DLEGmb1631164194', 'Side effects', '<h5>Side effects</h5>\r\n\r\n<p>There is a chance that using Duac gel you may experience side effects such as peeling, itching, dry skin and redness, particularly when you first begin to apply the gel. Duac gel also makes the skin more sensitive to the sun so it is important to expose the affected area to too much sunlight or use sunbeds. For full information on side effects and correct use, see the patient information leaflet.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:09:54', '2021-09-09 04:09:54'),
(118, 31, 'hL9xX01631164225', 'Information leaflet', '<h5>Information leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. View patient information leaflet.</p>\r\n\r\n<p>Duac 3%,1% (<a href=\"https://www.medicines.org.uk/emc/product/3238/pil\" target=\"_blank\">https://www.medicines.org.uk/emc/product/3238/pil</a>)</p>\r\n\r\n<p>Duac 5%,1% (<a href=\"https://www.medicines.org.uk/emc/files/pil.6.pdf\" target=\"_blank\">https://www.medicines.org.uk/emc/files/pil.6.pdf</a>)</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:10:25', '2021-09-09 04:10:25'),
(119, 32, 'gQER2K1631164646', 'What is Finacea?', '<h5>What is Finacea?</h5>\r\n\r\n<p>Finacea (Azelaic Acid) gel is an anti-acne preparation gel and is generally used on mild to moderate acne. Azelaic Acid gel can reduce the redness and inflammation caused by acne.</p>\r\n\r\n<h5>How is Azelaic Acid gel applied?</h5>\r\n\r\n<p>Apply 2.5cm (0.5g) of the gel to the face twice daily (once in the morning and once in the evening). Make sure you clean the skin thoroughly with a mild cleanser prior to applying the gel and wash your hands straight after use.</p>\r\n\r\n<h5>How does Azelaic Acid gel work?</h5>\r\n\r\n<p>Like a lot of acne treatments, Azelaic Acid gel (widely known as the branded product Finacea) works to break down blockages in the pores that cause acne. It works as a chemical exfoliator and aims to remove blockages that have already formed in the pores. In addition to this exfoliating quality, the bacteria that cause acne, P.acnes is killed by Azelaic Acid gel. This bacteria is what often causes inflammation and a build up of pus, so by killing this, the appearance of acne can be reduced.</p>\r\n\r\n<h5>Is Azelaic Acid gel effective?</h5>\r\n\r\n<p>It may take up to 4 weeks for you to see if the Azelaic Acid gel is working to clear your acne. Azelaic Acid gel is a good treatment option for those with more sensitive skin or whose skin will not withstand harsh acne treatments.</p>\r\n\r\n<h5>Will Azelaic Acid gel interact with other medication?</h5>\r\n\r\n<p>It is best to avoid using other topical medications on the affected area at the same time as Azelaic Acid gel. You should make your clinician aware of any other medicines you are taking, particularly those for other skin conditions.</p>\r\n\r\n<h5>Alternative treatments for acne</h5>\r\n\r\n<p>There are a variety of other acne treatments that can be taken, including a range of other acne creams, as well as combination packages of oral antibiotics and gels or creams.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:17:26', '2021-09-09 04:17:26'),
(120, 32, 'RP3bBD1631164668', 'Side effects', '<h5>Side effects</h5>\r\n\r\n<p>Azelaic Acid gel is generally much gentler on the skin than other acne treatments, however some people may still experience side effects. The most common side effects are itching, burning and pain to the application site, or some patients may experience a rash, feelings of tingling, dry skin and numbness to the affected area. In a very small number of cases patients may experience a more adverse skin reaction.</p>\r\n\r\n<p>For full information on side effects and correct use, see the patient leaflet information.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:17:48', '2021-09-09 04:17:48'),
(121, 32, 'HRaAgK1631164686', 'Patient Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/240/pil\" target=\"_blank\">View patient information leaflet</a>.</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:18:06', '2021-09-09 04:18:21');
INSERT INTO `kod_med_long_description` (`id`, `medicine_id`, `hash_id`, `title`, `description`, `display_order`, `status`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(122, 33, 'FPcilc1631165435', 'What is Doxycyline?', '<h5>What is Doxycyline?</h5>\r\n\r\n<p>Doxycyline is an antibiotic that works to kill the bacteria that cause acne and reduce the appearance of spots.</p>\r\n\r\n<h5>How do I take Doxycycline</h5>\r\n\r\n<p>You should take Doxycycline once a day with a meal, lots of water and make sure you are sitting or standing. It is important to also leave some time between taking the tablet and going to bed.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:30:35', '2021-09-09 04:30:35'),
(123, 33, 'EOOWN61631165474', 'Side effects', '<h5>Side effects</h5>\r\n\r\n<p>Doxycycline is likely to make the skin more sensitive to sunlight, sunbeds and sun lamps should be avoided and a suitable SPF should be worn.</p>\r\n\r\n<p>Doxycycline can, for some people, cause nausea, abdominal pain, dizziness and shortness of breath.</p>\r\n\r\n<h5>Is it safe to take Doxycycline during pregnancy or breastfeeding?</h5>\r\n\r\n<p>Doxycycline should be used while pregnant or breastfeeding.</p>\r\n\r\n<h5>Will either of these medications interact with other medicines?</h5>\r\n\r\n<p>Doxycycline can interfere with the effectiveness of other medications, so it is important you let us know about any medications you may be taking when you request this treatment.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:31:14', '2021-09-09 04:31:14'),
(124, 33, '3iCMby1631165496', 'Information leaflet', '<h5>Patient information leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/5778/pil\" target=\"_blank\">View patient information leaflet.</a></p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:31:36', '2021-09-09 04:31:36'),
(125, 34, 'W7KFeh1631166010', 'What is Telfast?', '<h5>What is Telfast (fexofenadine hydrochloride)?</h5>\r\n\r\n<p>Telfast (fexofenadine) is a prescription medication for fast, non drowsy relief of the symptoms of Hay Fever allergies. Telfast 120mg tablets contain the active ingredient fexofenadine hydrochloride, which is a type of medicine called a non-sedating antihistamine.</p>\r\n\r\n<h5>What is Allegra?</h5>\r\n\r\n<p>Allegra is another brand name, which is popular in USA for fexofenadine hydrochloride. In the UK, Allegra is not available but fexofenadine is sold under the brand name Telfast.</p>\r\n\r\n<h5>How To Take</h5>\r\n\r\n<p>The recommended dose is one tablet (120 mg) daily. Take your tablet with water before a meal.</p>\r\n\r\n<p>If you take too many tablets, contact your doctor or the nearest hospital emergency department immediately. Symptoms of an overdose in adults are dizziness, drowsiness, fatigue and dry mouth. If you forget to take Telfast do not take a double dose to make up for a forgotten tablet.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:40:10', '2021-09-09 04:40:10'),
(126, 34, 'aOh4811631166033', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like all medicines, this medicine can cause side effects, although not everybody gets them.</p>\r\n\r\n<p>Common side effects (may affect up to 1 in 10 people):</p>\r\n\r\n<ul>\r\n	<li>headache</li>\r\n	<li>drowsiness</li>\r\n	<li>feeling sick (nausea)</li>\r\n	<li>dizziness</li>\r\n</ul>\r\n\r\n<p>Uncommon side effects (may affect up to 1 in 100 people):</p>\r\n\r\n<ul>\r\n	<li>tiredness</li>\r\n	<li>sleepiness</li>\r\n</ul>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:40:33', '2021-09-09 04:40:33'),
(127, 34, 'ZTI6s81631166056', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Over the counter anti-histamines</strong></p>\r\n\r\n<p>There are a large number of over the counter anti-histamines which can be effective for relieving the symptoms of Hay Fever. Speak to your pharmacist for more information.</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:40:56', '2021-09-09 04:40:56'),
(128, 34, 'XsCK8g1631166079', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/8069/pil\">View patient information leaflet</a>.</p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:41:19', '2021-09-09 04:41:19'),
(129, 35, '1DD36S1631166713', 'What is fexofenadine?', '<h5>What is fexofenadine hydrochloride?</h5>\r\n\r\n<p>Fexofenadine is the active ingredient in Telfast and is available in a generic, unbranded tablet. It is a prescription medication for fast, non drowsy relief of the symptoms of Hay Fever allergies.</p>\r\n\r\n<p>Fexofenadine and Telfast are medically equivalent but Fexofenadine is available at a lower cost. Generic medicines contain the same active ingredient and are equally effective and medically equivalent as the branded products but are available at a lower price. Generic manufacturers have to demonstrate that they are medically identical to the branded product - i.e. they offer the same quality, strength, stability and effectiveness.</p>\r\n\r\n<p>Telfast 120mg tablets contain the active ingredient fexofenadine hydrochloride, which is a type of medicine called a non-sedating antihistamine.</p>\r\n\r\n<h5>What is Allegra?</h5>\r\n\r\n<p>Allegra is another brand name, which is popular in USA for fexofenadine hydrochloride. In the UK, Allegra is not available but fexofenadine is sold under the brand name Telfast.</p>\r\n\r\n<h5>How To Take</h5>\r\n\r\n<p>The recommended dose is one tablet (120 mg) daily. Take your tablet with water before a meal.</p>\r\n\r\n<p>If you take too many tablets, contact your doctor or the nearest hospital emergency department immediately. Symptoms of an overdose in adults are dizziness, drowsiness, fatigue and dry mouth. If you forget to take Telfast do not take a double dose to make up for a forgotten tablet.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:51:53', '2021-09-09 04:51:53'),
(130, 35, 'EKWHdK1631166735', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like all medicines, this medicine can cause side effects, although not everybody gets them.</p>\r\n\r\n<p>Common side effects (may affect up to 1 in 10 people):</p>\r\n\r\n<ul>\r\n	<li>headache</li>\r\n	<li>drowsiness</li>\r\n	<li>feeling sick (nausea)</li>\r\n	<li>dizziness</li>\r\n</ul>\r\n\r\n<p>Uncommon side effects (may affect up to 1 in 100 people):</p>\r\n\r\n<ul>\r\n	<li>tiredness</li>\r\n	<li>sleepiness</li>\r\n</ul>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:52:15', '2021-09-09 04:52:15'),
(131, 35, 'yaTXSa1631166761', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Over the counter anti-histamines</strong></p>\r\n\r\n<p>There are a large number of over the counter anti-histamines which can be effective for relieving the symptoms of Hay Fever. Speak to your pharmacist for more information.</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:52:41', '2021-09-09 04:52:41'),
(132, 35, 'B7P1IL1631166877', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"http://products.tevauk.com/mediafile/id/48810.pdf\" target=\"_blank\">View patient information leaflet</a>.</p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:54:37', '2021-09-09 04:54:37'),
(133, 36, 'MuvGIM1631168608', 'What is Nasonex?', '<h5>What is Nasonex?</h5>\r\n\r\n<p>Nasonex is the brand of Mometasone furoate and it is a steroid nasal spray indicated for use in adults to treat the symptoms of hayfever (seasonal allergic rhinitis).</p>\r\n\r\n<p>The generic nasal spray contains the active ingredient mometasone furoate monohydrate, which is a topical glucocorticosteroid with anti-allergic effects and local anti-inflammatory properties. It reduces the irritation and swelling in the nose caused by hayfever.</p>\r\n\r\n<h5>What is the difference between Nasonex and generic mometasone?</h5>\r\n\r\n<p>Mometasone furoate is the active ingredient in Nasonex and is available in a generic, unbranded nasal spray. They are medically equivalent but generic mometasone spray is available at a much lower cost.</p>\r\n\r\n<p>Generic medicines contain the same active ingredient and are equally effective and medically equivalent as the branded products but are available at a lower price. Generic manufacturers have to demonstrate that they are medically identical to the branded product - i.e. they offer the same quality, strength, stability and effectiveness.</p>\r\n\r\n<h5>How to use?</h5>\r\n\r\n<p>The usual recommended dose is two sprays (50 micrograms/spray) into each nostril once a day (total dose 200 micrograms). Once symptoms are controlled, the dose should be reduced to one spray in each nostril (total dose 100 micrograms) for maintenance. It\'s important to use your spray regularly, even if you\'re feeling better. It will only help if it\'s used every day.</p>\r\n\r\n<p>As it can take between a few days and a few weeks to gain benefit from using nasal steroid treatment, mometasone nasal spray should be initiated 1-2 weeks before the hayfever season starts for maximum effectiveness. You should not use it for more than 3 months each year without speaking to your doctor.</p>\r\n\r\n<p>If you miss taking your dose on time, do not worry; take a dose if you remember within an hour or so. However, if you do not remember until later, skip the missed dose and go back to your regular dosing schedule. Do not double the dose.</p>\r\n\r\n<p>When using the medication for the first time, you need to ‘prime’ the bottle. You should do this by gently shaking the bottle and pumping the spray 10 times in the air until a fine mist is seen. If the pump is not used for 14 days or longer, reprime the pump with 2 sprays until a uniform spray is observed, before next use. Do not pierce the nasal applicator.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:23:28', '2021-09-09 05:23:28'),
(134, 36, 'nXjqUr1631168636', 'Hay Fever Information', '<p>Hay fever (seasonal allergic rhinitis) is an allergic reaction caused by an allergen, such as pollen, dust, mould or fungal spores that causes inflammation of the inside of the nose. It\'s a very common condition, estimated to affect around 1 in every 5 people in the UK.</p>\r\n\r\n<p>Allergic rhinitis typically causes cold-like symptoms, such as sneezing, itchiness and a blocked or runny nose. But unlike a cold, hay fever isn\'t caused by a virus.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:23:56', '2021-09-09 05:23:56'),
(135, 36, 'xWoj9d1631168662', 'Side Effects', '<p>Like all medicines, this medicine can cause side effects, although not everybody gets them.</p>\r\n\r\n<p>Side effects which may occur are headache, nose-bleed or blood-tinged mucus, burning or irritation inside the nose, sneezing or sore throat.</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:24:22', '2021-09-09 05:24:22'),
(136, 36, 'epjwna1631168688', 'Alternatives', '<h5>Steroid Nasal Sprays</h5>\r\n\r\n<p>Some steroid nasal sprays are available to buy from pharmacies and shops, while others are only available on prescription. Steroid nasal drops are also available.</p>\r\n\r\n<h5>Over the counter anti-histamines</h5>\r\n\r\n<p>There are a large number of over the counter anti-histamines which can be effective for relieving the symptoms of hay fever. Speak to your pharmacist for more information.</p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:24:48', '2021-09-09 05:24:48'),
(137, 36, 'YVPfZ81631168725', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/files/pil.1663.pdf\">View patient information leaflet</a>.</p>', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:25:25', '2021-09-09 05:25:25'),
(138, 37, 'WbgP5m1631169249', 'What is generic mometasone furoate nasal spray?', '<h5>What is generic mometasone furoate nasal spray?</h5>\r\n\r\n<p>Mometasone is the generic version of Nasonex and is a steroid nasal spray indicated for use in adults to treat the symptoms of hayfever (seasonal allergic rhinitis).</p>\r\n\r\n<p>The generic nasal spray contains the active ingredient mometasone furoate monohydrate, which is a topical glucocorticosteroid with anti-allergic effects and local anti-inflammatory properties. It reduces the irritation and swelling in the nose caused by hayfever.</p>\r\n\r\n<h5>What is the difference between Nasonex and generic mometasone?</h5>\r\n\r\n<p>Mometasone furoate is the active ingredient in Nasonex and is available in a generic, unbranded nasal spray. They are medically equivalent but generic mometasone spray is available at a much lower cost.</p>\r\n\r\n<p>Generic medicines contain the same active ingredient and are equally effective and medically equivalent as the branded products but are available at a lower price. Generic manufacturers have to demonstrate that they are medically identical to the branded product - i.e. they offer the same quality, strength, stability and effectiveness.</p>\r\n\r\n<h5>How to use?</h5>\r\n\r\n<p>The usual recommended dose is two sprays (50 micrograms/spray) into each nostril once a day (total dose 200 micrograms). Once symptoms are controlled, the dose should be reduced to one spray in each nostril (total dose 100 micrograms) for maintenance. It\'s important to use your spray regularly, even if you\'re feeling better. It will only help if it\'s used every day.</p>\r\n\r\n<p>As it can take between a few days and a few weeks to gain benefit from using nasal steroid treatment, mometasone nasal spray should be initiated 1-2 weeks before the hayfever season starts for maximum effectiveness. You should not use it for more than 3 months each year without speaking to your doctor.</p>\r\n\r\n<p>If you miss taking your dose on time, do not worry; take a dose if you remember within an hour or so. However, if you do not remember until later, skip the missed dose and go back to your regular dosing schedule. Do not double the dose.</p>\r\n\r\n<p>When using the medication for the first time, you need to ‘prime’ the bottle. You should do this by gently shaking the bottle and pumping the spray 10 times in the air until a fine mist is seen. If the pump is not used for 14 days or longer, reprime the pump with 2 sprays until a uniform spray is observed, before next use. Do not pierce the nasal applicator.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:34:09', '2021-09-09 05:34:09'),
(139, 37, 'OEqkRw1631169271', 'Hay Fever Information', '<h5>Hay Fever Information</h5>\r\n\r\n<p>Hay fever (seasonal allergic rhinitis) is an allergic reaction caused by an allergen, such as pollen, dust, mould or fungal spores that causes inflammation of the inside of the nose. It\'s a very common condition, estimated to affect around 1 in every 5 people in the UK.</p>\r\n\r\n<p>Allergic rhinitis typically causes cold-like symptoms, such as sneezing, itchiness and a blocked or runny nose. But unlike a cold, hay fever isn\'t caused by a virus.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:34:31', '2021-09-09 05:34:31'),
(140, 37, 'FN4V1t1631169300', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like all medicines, this medicine can cause side effects, although not everybody gets them.</p>\r\n\r\n<p>Side effects which may occur are headache, nose-bleed or blood-tinged mucus, burning or irritation inside the nose, sneezing or sore throat.</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:35:00', '2021-09-09 05:35:00'),
(141, 37, 'IEOaAF1631169336', 'Alternatives', '<h5>Steroid Nasal Sprays</h5>\r\n\r\n<p>Some steroid nasal sprays are available to buy from pharmacies and shops, while others are only available on prescription. Steroid nasal drops are also available.</p>\r\n\r\n<h5>Over the counter anti-histamines</h5>\r\n\r\n<p>There are a large number of over the counter anti-histamines which can be effective for relieving the symptoms of hay fever. Speak to your pharmacist for more information.</p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:35:36', '2021-09-09 05:35:36'),
(142, 37, 'qd70lC1631169367', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/10299/pil\">View patient information leaflet</a>.</p>', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:36:07', '2021-09-09 05:36:07'),
(143, 38, 'lHYVMF1631169687', 'What is Epipen?', '<h5>What is Epipen?</h5>\r\n\r\n<p>EpiPens contain a dose of adrenaline, a life-saving medicine delivered to people who are suffering from a severe allergic reaction. If you have been prescribed an adrenaline pen in the past, you can order two securely through our online clinic, and have it delivered the next day.</p>\r\n\r\n<h5>When to use an EpiPen?</h5>\r\n\r\n<p>You should only use an EpiPen if you can recognise that you are experiencing symptoms of a severe allergic reaction. Typical symptoms include tingling and swelling of the lips, eyes and face, itching and skin rash, tightening of the throat and difficulty breathing. If you ever need to use an EpiPen you must also call 999 for an ambulance so that you have access to further medical assistance while you recover from the allergic reaction.</p>\r\n\r\n<h5>How to use an EpiPen?</h5>\r\n\r\n<p>Follow the instructions given to you when you were first prescribed an EpiPen. Each EpiPen also comes with full instructions on how to use it. You should familiarise yourself with how to use an EpiPen regularly.</p>\r\n\r\n<h5>Effectiveness</h5>\r\n\r\n<p>Your EpiPen should take effect as soon as it is injected into the body. However, you should also call 999 when you have a severe allergic reaction, to ensure that you get medical attention as quickly as possible. EpiPen can be life-saving for people who experience severe allergic reactions (anaphylaxis).</p>\r\n\r\n<h5>How does the EpiPen work?</h5>\r\n\r\n<p>All adrenaline pens contain epinephrine (commonly known as adrenaline), and each auto-injector contains a single dose of the medicine. You should be trained in the correct use of your EpiPen, as should your close friends, family, and colleagues (or teachers) so that they can administer it if you are unable to do so yourself.</p>\r\n\r\n<h5>Important information about EpiPen</h5>\r\n\r\n<p>EpiPen is a brand of adrenaline pen, used to administer life-saving medicine to someone suffering a severe allergic reaction (anaphylaxis). It is therefore essential if you have been prescribed an EpiPen that you carry two of them with you at all times.</p>\r\n\r\n<p>In order to purchase EpiPen\'s from our online service, you need to have already been issued an initial EpiPen prescription by your doctor. You must also have been shown how to use an EpiPen, and have a history of anaphylactic shock. The EpiPens we supply with this service have an 8-10 month shelf life.</p>\r\n\r\n<h5>Safety: taking other medicines</h5>\r\n\r\n<p>You should be able to use EpiPen alongside other medicines in an emergency. However, it is important that you let us know which prescription, over-the-counter medicines and recreational drugs you are taking so that we can prescribe EpiPen safely.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:41:27', '2021-09-09 05:41:27'),
(144, 38, 'mY7JYS1631169712', 'Side effects', '<h5>Side effects</h5>\r\n\r\n<p>Side effects include palpitations (racing heartbeat), sweating, nausea (feeling sick) and vomiting, dizziness, weakness, tremor, headaches, nervousness and anxiety. For full information on side effects and correct use, see the <a href=\"https://www.medicines.org.uk/emc/files/pil.4289.pdf\" target=\"_blank\">patient information leaflet.</a> If any side effects concern you, contact us via your Patient Record.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:41:52', '2021-09-09 05:41:52'),
(145, 38, 'WkzJgz1631169740', 'Information Leaflet', '<h5>Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/4289/pil\" target=\"_blank\">View patient information leaflet.</a></p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:42:20', '2021-09-09 05:42:20'),
(146, 39, 'UfIVAR1631170449', 'Cold Sores', '<h5>What are cold sores?</h5>\r\n\r\n<p>Cold sores are small fluid filled blisters that appear on parts of the face, usually around the lips and mouth. Cold sores have several typical stages of progression:</p>\r\n\r\n<ul>\r\n	<li>Stage 1 -you will feel a tingling, itching or burning feeling</li>\r\n	<li>Stage 2 -small fluid filled blister(s) appear</li>\r\n	<li>Stage 3 -blisters will burst and scab over</li>\r\n	<li>Stage 4 -scabs will slowly heal until the cold sore is no longer visible</li>\r\n</ul>\r\n\r\n<p>For most people, cold sores will begin to heal within ten days and often don’t require treatment. For some people, cold sores can be bigger than normal or take longer to heal than expected, in these cases it may be appropriate to seek treatment.</p>\r\n\r\n<h5>How do you catch cold sores?</h5>\r\n\r\n<p>Cold sores are caused by a virus called the herpes simplex virus (HSV). This virus is very common, in 2012 it was estimated that 67% of the world’s population were infected with this virus. The virus is caught by coming into contact with other people with an active infection. This is often during childhood when children come into close contact through activities such as play.</p>\r\n\r\n<p>For most of your life, the virus will lie dormant in your skin, suppressed by your immune system. Occasionally the virus will reactivate causing a cold sore. This is often when your immune system is temporarily weakened, by example through stress or illness.</p>\r\n\r\n<p>As cold sores are caused by a viral infection which currently can’t be cured, many people will experience repeated cold sores. This is because the virus repeats the cycle of reactivation over and over again.</p>\r\n\r\n<h5>When are cold sores contagious?</h5>\r\n\r\n<p>Cold sores are contagious as soon as you feel a tingling, itching or burning sensation on your face, until the blister has burst, scabbed over and fully healed.</p>\r\n\r\n<p>If you or your child has a cold sore, it is a good idea to avoid sharing eating utensils, drinking bottles or other items that regularly come into contact with your mouth and face. You should also avoid touching the cold sore directly and regularly wash your hands – this will help prevent the virus from being passed from one person to another.</p>\r\n\r\n<h5>Cold sores and genital herpes</h5>\r\n\r\n<p>The virus which causes cold sores can also be transmitted to the genitals and anus, potentially causing genital herpes, but this is not as common. If you are worried, you should avoid touching your cold sores with your hands, regularly wash your hands and consider treating your cold sore with an oral medicine or cream.</p>\r\n\r\n<p>You should not engage in oral sex while you have a cold sore as this can increase the risk of passing the virus to a partner. You should also use a condom during sex as this can reduce your risk of contracting or passing on HSV infection of the genitals.</p>\r\n\r\n<h5>When do cold sores need treatment?</h5>\r\n\r\n<p>Most cold sores will not require treatment and cold sores are very common, particularly in children.</p>\r\n\r\n<p>However, some people may experience particularly large, painful or prolonged cold sores and in these scenarios, treatment may be appropriate. Treatment can be discussed with your GP, Pharmacist or accessed online through a registered online Doctor and Pharmacy service.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:54:09', '2021-09-09 05:54:09'),
(147, 39, 'WZe8JI1631170493', 'What is Aciclovir?', '<h5>What is Aciclovir?</h5>\r\n\r\n<p>Aciclovir is an ‘antiviral’ medicine which means it is designed to act against viruses. Aciclovir is specifically designed to treat the herpes simplex virus, as well as some other closely related viruses, such as the virus that caused chicken pox.</p>\r\n\r\n<p>Aciclovir works by interrupting the normal process of viral replication – when viruses copy themselves inside your cells. This helps reduce the number of viruses in your body and in turn helps reduce the severity of symptoms experienced.</p>\r\n\r\n<h5>How to take aciclovir?</h5>\r\n\r\n<p>Aciclovir is an oral medicine which should be swallowed with or without water. You should only take aciclovir at the prescribed dose.</p>\r\n\r\n<p>Aciclovir is most effective when used as early as possible, i.e. at the onset of symptoms.</p>\r\n\r\n<p>You should remain well hydrated while you are taking aciclovir.</p>\r\n\r\n<p>Aciclovir can be used for the treatment of HSV infections, in this case cold sores.</p>\r\n\r\n<p>Usual dose:</p>\r\n\r\n<ul>\r\n	<li>Treatment of an active infection:\r\n	<ul>\r\n		<li>One tablet (400mg) three times daily (usually every four hours while awake), for five days.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h5>Do I need medical advice before taking aciclovir?</h5>\r\n\r\n<p>If you are elderly, renally impaired (damaged kidneys/reduced kidney function), pregnant or breast feeding, you should seek medical advice before taking aciclovir.</p>\r\n\r\n<p>Aciclovir is suitable for children over the age of two years old at the same dose as adults. For children under two years old, the dose should be half of the adult dose. If at all unsure about how to do this, you should seek medical advice.</p>\r\n\r\n<p>If you have a damaged or weakened immune system (immunocompromised) you should seek medical advice before taking aciclovir and at any time you experience a cold sore or other infection.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:54:53', '2021-09-09 05:54:53'),
(148, 39, 'eLIknf1631170526', 'Side effects', '<h5>Side effects</h5>\r\n\r\n<p>As with all medicines, aciclovir should only be taken after carefully weighing the potential positives and negatives in conjunction with a qualified healthcare professional. Aciclovir is known to cause side effects.</p>\r\n\r\n<p>Common sides effects (occurring in one or more people out of one hundred):</p>\r\n\r\n<ul>\r\n	<li>Headache</li>\r\n	<li>Dizziness</li>\r\n	<li>Nausea</li>\r\n	<li>Vomiting</li>\r\n	<li>Diarrhoea</li>\r\n	<li>Abdominal pains</li>\r\n	<li>Pruritis</li>\r\n	<li>Rashes (including increased photosensitivity)</li>\r\n	<li>Fatigue</li>\r\n	<li>Fever</li>\r\n</ul>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:55:26', '2021-09-09 05:55:26'),
(149, 39, 'NLKy0N1631170552', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Cold sores are common and for most people they will naturally heal and disappear after approximately ten days. You should carefully consider whether you need treatment, noting that treatment will have little or no effect unless used as early as possible.</p>\r\n\r\n<p>Antiviral creams containing aciclovir and penciclovir, non-antiviral creams and cold sore patches are available in most chemists as over the counter options.</p>\r\n\r\n<p>Additional steps you can do yourself:</p>\r\n\r\n<ul>\r\n	<li>eat cool, soft foods</li>\r\n	<li>use an antiseptic mouthwash if it hurts to brush your teeth</li>\r\n	<li>wash your hands with soap and water before and after applying cream</li>\r\n	<li>avoid anything that triggers your cold sores</li>\r\n	<li>use sunblock lip balm (SPF 15 or above) if sunshine is the trigger</li>\r\n	<li>take paracetamol or ibuprofen to ease pain and swelling (liquid paracetamol is available for children)</li>\r\n	<li>drink plenty of fluids to avoid dehydration</li>\r\n	<li>wash your hands with soap and water before and after applying cream</li>\r\n</ul>\r\n\r\n<p>Always remember:</p>\r\n\r\n<p>Do not kiss babies if you have a cold sore. It can lead to neonatal herpes, which is very dangerous to newborn babies.</p>\r\n\r\n<p>Find out more about cold sores and alternatives to treatment <a href=\"https://www.nhs.uk/conditions/cold-sores/\" target=\"_blank\">here.</a></p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:55:52', '2021-09-09 05:55:52'),
(150, 39, 'Bmaxad1631170575', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/5692/pil\">View patient information leaflet.</a></p>', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:56:15', '2021-09-09 05:56:15'),
(151, 40, 'ExiMe01631171256', 'Cold Sores', '<h5>What are cold sores?</h5>\r\n\r\n<p>Cold sores are small fluid filled blisters that appear on parts of the face, usually around the lips and mouth. Cold sores have several typical stages of progression:</p>\r\n\r\n<ul>\r\n	<li>Stage 1 -you will feel a tingling, itching or burning feeling</li>\r\n	<li>Stage 2 -small fluid filled blister(s) appear</li>\r\n	<li>Stage 3 -blisters will burst and scab over</li>\r\n	<li>Stage 4 -scabs will slowly heal until the cold sore is no longer visible</li>\r\n</ul>\r\n\r\n<p>For most people, cold sores will begin to heal within ten days and often don’t require treatment. For some people, cold sores can be bigger than normal or take longer to heal than expected, in these cases it may be appropriate to seek treatment.</p>\r\n\r\n<h5>How do you catch cold sores?</h5>\r\n\r\n<p>Cold sores are caused by a virus called the herpes simplex virus (HSV). This virus is very common, in 2012 it was estimated that 67% of the world’s population were infected with this virus. The virus is caught by coming into contact with other people with an active infection. This is often during childhood when children come into close contact through activities such as play.</p>\r\n\r\n<p>For most of your life, the virus will lie dormant in your skin, suppressed by your immune system. Occasionally the virus will reactivate causing a cold sore. This is often when your immune system is temporarily weakened, by example through stress or illness.</p>\r\n\r\n<p>As cold sores are caused by a viral infection which currently can’t be cured, many people will experience repeated cold sores. This is because the virus repeats the cycle of reactivation over and over again.</p>\r\n\r\n<h5>When are cold sores contagious?</h5>\r\n\r\n<p>Cold sores are contagious as soon as you feel a tingling, itching or burning sensation on your face, until the blister has burst, scabbed over and fully healed.</p>\r\n\r\n<p>If you or your child has a cold sore, it is a good idea to avoid sharing eating utensils, drinking bottles or other items that regularly come into contact with your mouth and face. You should also avoid touching the cold sore directly and regularly wash your hands – this will help prevent the virus from being passed from one person to another.</p>\r\n\r\n<h5>Cold sores and genital herpes</h5>\r\n\r\n<p>The virus which causes cold sores can also be transmitted to the genitals and anus, potentially causing genital herpes, but this is not as common. If you are worried, you should avoid touching your cold sores with your hands, regularly wash your hands and consider treating your cold sore with an oral medicine or cream.</p>\r\n\r\n<p>You should not engage in oral sex while you have a cold sore as this can increase the risk of passing the virus to a partner. You should also use a condom during sex as this can reduce your risk of contracting or passing on HSV infection of the genitals.</p>\r\n\r\n<h5>When do cold sores need treatment?</h5>\r\n\r\n<p>Most cold sores will not require treatment and cold sores are very common, particularly in children.</p>\r\n\r\n<p>However, some people may experience particularly large, painful or prolonged cold sores and in these scenarios, treatment may be appropriate. Treatment can be discussed with your GP, Pharmacist or accessed online through a registered online Doctor and Pharmacy service.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:07:36', '2021-09-09 06:07:36'),
(152, 40, 'zikYJy1631171280', 'What is Valaciclovir?', '<h5>What is Valaciclovir?</h5>\r\n\r\n<p>Valaciclovir is an antiviral medicine. It stops the infecting virus from reproducing. Since the virus reproduces very early in the infection, you will benefit most from treatment if you take Valaciclovir Tablets as soon as the first symptoms appear, ideally within 5 days of their appearance.</p>\r\n\r\n<p>Valaciclovir Tablets are used to treat Herpes simplex severe infections as they require a systemic antiviral drug and they are licensed for the treatment of herpes simplex infections of the skin and mucous membranes causing herpes labialis (cold sores).</p>\r\n\r\n<h5>How to take Valaciclovir?</h5>\r\n\r\n<p>In order to treat Cold sores the regime is 2000 mg (4 tabs of 500 mg each) twice a day for one day only. The second dose should be taken about 12 hours after the first dose. You should remain well hydrated while you are taking Valaciclovir.</p>\r\n\r\n<h5>Do I need medical advice before taking Valaciclovir?</h5>\r\n\r\n<p>If you are elderly, renally impaired (damaged kidneys/reduced kidney function), pregnant or breastfeeding, you should seek medical advice before taking Valaciclovir.</p>\r\n\r\n<p>If you have a damaged or weakened immune system (immunocompromised) you should seek medical advice before taking Valaciclovir and at any time you experience a cold sore or other infection.</p>\r\n\r\n<h5>What is the difference between Valtrex and Valaciclovir?</h5>\r\n\r\n<p>Valaciclovir is the active ingredient in Valtrex and is available in a generic, unbranded tablet. Valaciclovir and Valtrex are medically equivalent but Valaciclovir is available at a lower cost.</p>\r\n\r\n<p>Generic medicines contain the same active ingredient and are equally effective and medically equivalent as the branded products but are available at a lower price. Generic manufacturers have to demonstrate that they are medically identical to the branded product - i.e. they offer the same quality, strength, stability and effectiveness.</p>\r\n\r\n<p>Generic medicines are required to meet the same standards of safety, quality and efficacy as the branded medication. To receive market approval from the European Medicines Agency and MHRA, a generic medicine must be \'bioequivalent\' to the originator product.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:08:00', '2021-09-09 06:08:00'),
(153, 40, 'f0Wkfi1631171301', 'Side effects', '<h5>Side effects</h5>\r\n\r\n<p>As with all medicines, Valaciclovir should only be taken after carefully weighing the potential positives and negatives in conjunction with a qualified healthcare professional. The most common adverse reactions (ARs) reported by patients treated with Valaciclovir were headache and nausea.</p>\r\n\r\n<p>The following side effects have also been reported:</p>\r\n\r\n<p>Common (affects less than 1 in 10 patients receiving the medicine):</p>\r\n\r\n<ul>\r\n	<li>Feeling sick</li>\r\n	<li>Dizziness</li>\r\n	<li>Vomiting</li>\r\n	<li>Diarrhoea</li>\r\n	<li>Skin reaction after exposure to sunlight (photosensitivity)</li>\r\n	<li>Rash</li>\r\n</ul>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:08:21', '2021-09-09 06:08:21'),
(154, 40, 's6KAbO1631171322', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Cold sores are common and for most people they will naturally heal and disappear after approximately ten days. You should carefully consider whether you need treatment, noting that treatment will have little or no effect unless used as early as possible.</p>\r\n\r\n<p>Antiviral creams containing aciclovir and penciclovir, non-antiviral creams and cold sore patches are available in most chemists as over the counter options.</p>\r\n\r\n<p>Additional steps you can do yourself:</p>\r\n\r\n<ul>\r\n	<li>eat cool, soft foods</li>\r\n	<li>use an antiseptic mouthwash if it hurts to brush your teeth</li>\r\n	<li>wash your hands with soap and water before and after applying cream</li>\r\n	<li>avoid anything that triggers your cold sores</li>\r\n	<li>use sunblock lip balm (SPF 15 or above) if sunshine is the trigger</li>\r\n	<li>take paracetamol or ibuprofen to ease pain and swelling (liquid paracetamol is available for children)</li>\r\n	<li>drink plenty of fluids to avoid dehydration</li>\r\n	<li>wash your hands with soap and water before and after applying cream</li>\r\n</ul>\r\n\r\n<p>And always remember:</p>\r\n\r\n<p><strong>Do not kiss babies if you have a cold sore. It can lead to neonatal herpes, which is very dangerous to newborn babies.</strong></p>\r\n\r\n<p>Find out more about cold sores and alternatives to treatment <a href=\"https://www.nhs.uk/conditions/cold-sores/\" target=\"_blank\">here</a>.</p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:08:42', '2021-09-09 06:08:42'),
(155, 40, 'yO15bw1631171343', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/4349/pil\">View patient information leaflet</a>.</p>', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:09:03', '2021-09-09 06:09:03'),
(156, 41, 'oB9smH1631171955', 'Cold Sores', '<h5>What are cold sores?</h5>\r\n\r\n<p>Cold sores are small fluid filled blisters that appear on parts of the face, usually around the lips and mouth. Cold sores have several typical stages of progression:</p>\r\n\r\n<ul>\r\n	<li>Stage 1 -you will feel a tingling, itching or burning feeling</li>\r\n	<li>Stage 2 -small fluid filled blister(s) appear</li>\r\n	<li>Stage 3 -blisters will burst and scab over</li>\r\n	<li>Stage 4 -scabs will slowly heal until the cold sore is no longer visible</li>\r\n</ul>\r\n\r\n<p>For most people, cold sores will begin to heal within ten days and often don’t require treatment. For some people, cold sores can be bigger than normal or take longer to heal than expected, in these cases it may be appropriate to seek treatment.</p>\r\n\r\n<h5>How do you catch cold sores?</h5>\r\n\r\n<p>Cold sores are caused by a virus called the herpes simplex virus (HSV). This virus is very common, in 2012 it was estimated that 67% of the world’s population were infected with this virus. The virus is caught by coming into contact with other people with an active infection. This is often during childhood when children come into close contact through activities such as play.</p>\r\n\r\n<p>For most of your life, the virus will lie dormant in your skin, suppressed by your immune system. Occasionally the virus will reactivate causing a cold sore. This is often when your immune system is temporarily weakened, by example through stress or illness.</p>\r\n\r\n<p>As cold sores are caused by a viral infection which currently can’t be cured, many people will experience repeated cold sores. This is because the virus repeats the cycle of reactivation over and over again.</p>\r\n\r\n<h5>When are cold sores contagious?</h5>\r\n\r\n<p>Cold sores are contagious as soon as you feel a tingling, itching or burning sensation on your face, until the blister has burst, scabbed over and fully healed.</p>\r\n\r\n<p>If you or your child has a cold sore, it is a good idea to avoid sharing eating utensils, drinking bottles or other items that regularly come into contact with your mouth and face. You should also avoid touching the cold sore directly and regularly wash your hands – this will help prevent the virus from being passed from one person to another.</p>\r\n\r\n<h5>Cold sores and genital herpes</h5>\r\n\r\n<p>The virus which causes cold sores can also be transmitted to the genitals and anus, potentially causing genital herpes, but this is not as common. If you are worried, you should avoid touching your cold sores with your hands, regularly wash your hands and consider treating your cold sore with an oral medicine or cream.</p>\r\n\r\n<p>You should not engage in oral sex while you have a cold sore as this can increase the risk of passing the virus to a partner. You should also use a condom during sex as this can reduce your risk of contracting or passing on HSV infection of the genitals.</p>\r\n\r\n<h5>When do cold sores need treatment?</h5>\r\n\r\n<p>Most cold sores will not require treatment and cold sores are very common, particularly in children.</p>\r\n\r\n<p>However, some people may experience particularly large, painful or prolonged cold sores and in these scenarios, treatment may be appropriate. Treatment can be discussed with your GP, Pharmacist or accessed online through a registered online Doctor and Pharmacy service.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:19:15', '2021-09-09 06:19:15'),
(157, 41, 'FItwL61631171981', 'What is Valtrex?', '<h5>What is Valtrex?</h5>\r\n\r\n<p>Valtrex is an antiviral medicine. It stops the infecting virus from reproducing. Since the virus reproduces very early in the infection, you will benefit most from treatment if you take Valtrex Tablets as soon as the first symptoms appear, ideally within 5 days of their appearance.</p>\r\n\r\n<p>Valtrex Tablets are used to treat Herpes simplex severe infections as they require a systemic antiviral #drug and they are licensed for the treatment of herpes simplex infections of the skin and mucous membranes causing herpes labialis (cold sores).</p>\r\n\r\n<h5>How to take Valtrex?</h5>\r\n\r\n<p>In order to treat Cold sores the regime is 2000 mg (4 tabs of 500 mg each) twice a day for one day only. The second dose should be taken about 12 hours after the first dose. You should remain well hydrated while you are taking Valtrex.</p>\r\n\r\n<h5>Do I need medical advice before taking Valtrex?</h5>\r\n\r\n<p>If you are elderly, renally impaired (damaged kidneys/reduced kidney function), pregnant or breastfeeding, you should seek medical advice before taking Valtrex.</p>\r\n\r\n<p>If you have a damaged or weakened immune system (immunocompromised) you should seek medical advice before taking Valtrex and at any time you experience a cold sore or other infection.</p>\r\n\r\n<h5>What is the difference between Aciclovir and Valaciclovir?</h5>\r\n\r\n<p>Aciclovir and Valaciclovir are closely related. Valaciclovir is a pro-drug of aciclovir which means that after it is taken, it is converted in the body to aciclovir. The advantage of taking valaciclovir over aciclovir is that it doesn’t have to be taken as frequently as so it is more convenient for the patient to comply with the regime.</p>\r\n\r\n<h5>What is the difference between Valtrex and Valaciclovir?</h5>\r\n\r\n<p>Valaciclovir is the active ingredient in Valtrex and is available in a generic, unbranded tablet. Valaciclovir and Valtrex are medically equivalent but Valaciclovir is available at a much lower cost.</p>\r\n\r\n<p>Generic medicines contain the same active ingredient and are equally effective and medically equivalent as the branded products but are available at a lower price. Generic manufacturers have to demonstrate that they are medically identical to the branded product - i.e. they offer the same quality, strength, stability and effectiveness.</p>\r\n\r\n<p>Generic medicines are required to meet the same standards of safety, quality and efficacy as the branded medication. To receive market approval from the European Medicines Agency and MHRA, a generic medicine must be \'bioequivalent\' to the originator product.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:19:41', '2021-09-09 06:19:41'),
(158, 41, 'sBGZkN1631172004', 'Side effects', '<h5>Side effects</h5>\r\n\r\n<p>As with all medicines, Valtrex should only be taken after carefully weighing the potential positives and negatives in conjunction with a qualified healthcare professional. The most common adverse reactions (ARs) reported by patients treated with Valtrex were headache and nausea.</p>\r\n\r\n<p>The following side effects have also been reported:</p>\r\n\r\n<p>Common (affects less than 1 in 10 patients receiving the medicine):</p>\r\n\r\n<ul>\r\n	<li>Feeling sick</li>\r\n	<li>Dizziness</li>\r\n	<li>Vomiting</li>\r\n	<li>Diarrhoea</li>\r\n	<li>Skin reaction after exposure to sunlight (photosensitivity)</li>\r\n	<li>Rash</li>\r\n</ul>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:20:04', '2021-09-09 06:20:04'),
(159, 41, '8QW56M1631172025', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>Cold sores are common and for most people they will naturally heal and disappear after approximately ten days. You should carefully consider whether you need treatment, noting that treatment will have little or no effect unless used as early as possible.</p>\r\n\r\n<p>Antiviral creams containing aciclovir and penciclovir, non-antiviral creams and cold sore patches are available in most chemists as over the counter options.</p>\r\n\r\n<p>Additional steps you can do yourself:</p>\r\n\r\n<ul>\r\n	<li>eat cool, soft foods</li>\r\n	<li>use an antiseptic mouthwash if it hurts to brush your teeth</li>\r\n	<li>wash your hands with soap and water before and after applying cream</li>\r\n	<li>avoid anything that triggers your cold sores</li>\r\n	<li>use sunblock lip balm (SPF 15 or above) if sunshine is the trigger</li>\r\n	<li>take paracetamol or ibuprofen to ease pain and swelling (liquid paracetamol is available for children)</li>\r\n	<li>drink plenty of fluids to avoid dehydration</li>\r\n	<li>wash your hands with soap and water before and after applying cream</li>\r\n</ul>\r\n\r\n<p>And always remember:</p>\r\n\r\n<p><strong>Do not kiss babies if you have a cold sore. It can lead to neonatal herpes, which is very dangerous to newborn babies.</strong></p>\r\n\r\n<p>Find out more about cold sores and alternatives to treatment <a href=\"https://www.nhs.uk/conditions/cold-sores/\" target=\"_balnk\">here</a>.</p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:20:25', '2021-09-09 06:20:25'),
(160, 41, 'NKYMoL1631172055', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/5467/pil\">View patient information leaflet</a>.</p>', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:20:55', '2021-09-09 06:20:55'),
(161, 42, 'jTzqri1631175655', 'Malarone', '<h5>How To Take</h5>\r\n\r\n<p>One tablet daily with food or a milky drink at about the same time each day.</p>\r\n\r\n<p>Start taking the tablets 1-2 days before you enter the malaria area and continue until one week after you leave.</p>\r\n\r\n<h5>Side Effects of Malarone</h5>\r\n\r\n<p>Side effects with Malarone are less common and severe than other anti-malaria drugs.</p>\r\n\r\n<p>Side effects may include: rashes, abdominal pain, headaches, anorexia, nausea, diarrhoea, dizziness, change in sleep pattern, coughing and mouth ulcers.</p>\r\n\r\n<h5>How Does Malarone Work:</h5>\r\n\r\n<ul>\r\n	<li>It contains two medicines, atovaquone and proguanil hydrochloride, which both work in different ways to stop infection with the malaria parasite (Plasmodium falciparum).</li>\r\n	<li>Malaria is spread by the bite of an infected mosquito, which passes the malaria parasite into the bloodstream.</li>\r\n	<li>Malarone prevents malaria by killing this parasite.</li>\r\n	<li>For people who are already infected with malaria, Malarone also kills these parasites.</li>\r\n</ul>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:20:55', '2021-09-09 07:20:55'),
(162, 42, 'fOpXSA1631175681', 'Malaria Information', '<h5>Malaria Information</h5>\r\n\r\n<p>Malaria is a serious tropical disease spread by mosquitoes. If malaria is not diagnosed and treated promptly, it can be fatal.</p>\r\n\r\n<h5>Malaria risk areas</h5>\r\n\r\n<p>Malaria is found in more than 100 countries, mainly in tropical regions of the world including:</p>\r\n\r\n<ul>\r\n	<li>Malaria is found in more than 100 countries, mainly in tropical regions of the world including:</li>\r\n	<li>large areas of Africa and Asia</li>\r\n	<li>Central and South America</li>\r\n	<li>Haiti and the Dominican Republic</li>\r\n	<li>parts of the Middle East</li>\r\n	<li>some Pacific islands, such as Papua New Guinea</li>\r\n</ul>\r\n\r\n<p>Malaria is not a problem in the UK. More information about the <a href=\"https://www.fitfortravel.nhs.uk/destinations.aspx\">risk of malaria in specific countries</a> can be found on the Fit for Travel website.</p>\r\n<h5>Malaria Information</h5>\r\n\r\n<p>Malaria is a serious tropical disease spread by mosquitoes. If malaria is not diagnosed and treated promptly, it can be fatal.</p>\r\n\r\n<h5>Malaria risk areas</h5>\r\n\r\n<p>Malaria is found in more than 100 countries, mainly in tropical regions of the world including:</p>\r\n\r\n<ul>\r\n	<li>Malaria is found in more than 100 countries, mainly in tropical regions of the world including:</li>\r\n	<li>large areas of Africa and Asia</li>\r\n	<li>Central and South America</li>\r\n	<li>Haiti and the Dominican Republic</li>\r\n	<li>parts of the Middle East</li>\r\n	<li>some Pacific islands, such as Papua New Guinea</li>\r\n</ul>\r\n\r\n<p>Malaria is not a problem in the UK. More information about the <a href=\"https://www.fitfortravel.nhs.uk/destinations.aspx\">risk of malaria in specific countries</a> can be found on the Fit for Travel website.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:21:21', '2021-09-09 07:21:21');
INSERT INTO `kod_med_long_description` (`id`, `medicine_id`, `hash_id`, `title`, `description`, `display_order`, `status`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(163, 42, 'oHomPV1631175703', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>There may be alternative anti-malarial tablets that are suitable for your trip.</p>\r\n\r\n<p>Always check your destination(s) on <a href=\"http://www.fitfortravel.nhs.uk/\">http://www.fitfortravel.nhs.uk/ </a>to determine which malaria tablets are suitable for your trip.</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:21:43', '2021-09-09 07:21:43'),
(164, 42, 'n8QTy91631175736', 'Information Leaflet', '<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/947/pil\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"Patient Information Leaflet\">View patient information leaflet</a>.</p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:22:16', '2021-09-09 07:22:16'),
(165, 43, 'iBA6gn1631176441', 'Malarone', '<h5>How To Take</h5>\r\n\r\n<p>One tablet daily with food or a milky drink at about the same time each day.</p>\r\n\r\n<p>Start taking the tablets 1-2 days before you enter the malaria area and continue until one week after you leave.</p>\r\n\r\n<h5>Side Effects of Malarone</h5>\r\n\r\n<p>Side effects with Malarone are less common and severe than other anti-malaria drugs.</p>\r\n\r\n<p>Side effects may include: rashes, abdominal pain, headaches, anorexia, nausea, diarrhoea, dizziness, change in sleep pattern, coughing and mouth ulcers.</p>\r\n\r\n<h5>How Does Malarone Work:</h5>\r\n\r\n<ul>\r\n	<li>It contains two medicines, atovaquone and proguanil hydrochloride, which both work in different ways to stop infection with the malaria parasite (Plasmodium falciparum).</li>\r\n	<li>Malaria is spread by the bite of an infected mosquito, which passes the malaria parasite into the bloodstream.</li>\r\n	<li>Malarone prevents malaria by killing this parasite.</li>\r\n	<li>For people who are already infected with malaria, Malarone also kills these parasites.</li>\r\n</ul>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:34:01', '2021-09-09 07:34:01'),
(166, 43, '7IjNlX1631176465', 'Malaria Information', '<h5>Malaria Information</h5>\r\n\r\n<p>Malaria is a serious tropical disease spread by mosquitoes. If malaria is not diagnosed and treated promptly, it can be fatal.</p>\r\n\r\n<h5>Malaria risk areas</h5>\r\n\r\n<p>Malaria is found in more than 100 countries, mainly in tropical regions of the world including:</p>\r\n\r\n<ul>\r\n	<li>Malaria is found in more than 100 countries, mainly in tropical regions of the world including:</li>\r\n	<li>large areas of Africa and Asia</li>\r\n	<li>Central and South America</li>\r\n	<li>Haiti and the Dominican Republic</li>\r\n	<li>parts of the Middle East</li>\r\n	<li>some Pacific islands, such as Papua New Guinea</li>\r\n</ul>\r\n\r\n<p>Malaria is not a problem in the UK. More information about the <a href=\"https://www.fitfortravel.nhs.uk/destinations.aspx\">risk of malaria in specific countries</a> can be found on the Fit for Travel website.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:34:25', '2021-09-09 07:34:25'),
(167, 43, 'uF0SdZ1631176488', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>There may be alternative anti-malarial tablets that are suitable for your trip.</p>\r\n\r\n<p>Always check your destination(s) on <a href=\"http://www.fitfortravel.nhs.uk/\">http://www.fitfortravel.nhs.uk/ </a>to determine which malaria tablets are suitable for your trip.</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:34:48', '2021-09-09 07:34:48'),
(168, 43, 'w7wXjm1631176510', 'Information Leaflet', '<h5>Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/638/pil\">View patient information leaflet.</a></p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:35:10', '2021-09-09 07:35:10'),
(169, 44, 'E9RyIu1631176988', 'What is Tamiflu?', '<h5>What is Tamiflu?</h5>\r\n\r\n<p>Tamiflu is an anti-viral medication used to treat or prevent flu (the influenza virus). Tamiflu is currently the only licensed medication that has been clinically proven to reduce the duration of a flu outbreak.</p>\r\n\r\n<h5>How Effective is Tamiflu</h5>\r\n\r\n<p>Tamiflu has been clinically proven to reduce the duration of flu by up to 30% compared to people who don\'t take Tamiflu in the first 48 hours. You should take Tamiflu as soon as possible for the maximum effect.</p>\r\n\r\n<h5>How does Tamiflu Work?</h5>\r\n\r\n<p>Tamiflu belongs to a group of medicines known as neuraminidase inhibitors. Tamiflu blocks the effects of a chemical called neuraminidase that is created by the influenza virus. As the flu virus needs neuraminidase to spread in the airways. By blocking the effects of neuraminidase, Tamiflu reduces the spread of the influenza virus in the airways. This makes it easier for the body\'s immune system to clear up the infection.</p>\r\n\r\n<h5>When Should I take Tamiflu</h5>\r\n\r\n<p>Tamiflu can be taken to treat a current outbreak of flu if you start taking within 48 hours of flu symptoms appearing. Alternatively Tamiflu can be taken to prevent the flu if you have been in contact with someone with the flu or for up to six weeks as seasonal protection.</p>\r\n\r\n<h5>How to Take Tamiflu</h5>\r\n\r\n<p><strong>To treat a current outbreak:</strong> The recommended oral dose is one tablet of Tamiflu (75mg) twice daily for 5 days for adolescents (13 to 17 years of age) and adults.</p>\r\n\r\n<p><strong>To prevent catching the flu from someone who is infected:</strong>The recommended dose for prevention of influenza following close contact with an infected individual is one tablet (75mg) daily for 10 days</p>\r\n\r\n<p><strong>Seasonal Protection:</strong>The recommended dose for prevention of influenza during a community outbreak is Tamiflu (75mg) once daily for up to 6 weeks.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:43:08', '2021-09-09 07:43:08'),
(170, 44, 'hyj9S51631177005', 'Side Effects', '<h5>Side Effects of Tamiflu</h5>\r\n\r\n<p>Like all medicines, this medicine can cause side effects, although not everybody gets them. Many of the side effects listed below may also be caused by influenza.</p>\r\n\r\n<p>The following serious side effects have been rarely reported since oseltamivir has been marketed:</p>\r\n\r\n<ul>\r\n	<li>Anaphylactic and anaphylactoid reactions: severe allergic reactions, with face and skin swelling, itchy rashes, low blood pressure and breathing difficulties</li>\r\n	<li>Hepatic disorders (fulminant hepatitis, hepatic function disorder and jaundice): yellowing of the skin and white of the eyes, change in stool color, changes in behaviour</li>\r\n	<li>Angioneurotic oedema: sudden onset of severe swelling of the skin mainly around the head and neck area, including eyes and tongue, with difficulties breathing</li>\r\n	<li>Stevens-Johnson syndrome and toxic epidermal necrolysis: complicated, possibly life-threatening allergic reaction, severe inflammation of the outer and possibly inner skin, initially with fever, sore throat, and fatigue, skin rashes, leading to blisters, peeling, shedding of larger areas of skin, possible breathing difficulties and low blood pressure</li>\r\n	<li>Gastrointestinal bleeding: prolonged bleeding from the large bowel or spitting up blood</li>\r\n	<li>Neuropsychiatric disorders</li>\r\n</ul>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:43:25', '2021-09-09 07:43:25'),
(171, 44, 'ssokHk1631177029', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Flu Vaccination</strong></p>\r\n\r\n<p>Flu vaccination by injection is available to protect adults at risk of flu and its complications. It\'s not 100% guaranteed to stop all flu viruses and the level of protection may vary between people, however, if you do get flu after vaccination it\'s likely to be milder and not last as long than it would otherwise have been.</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:43:49', '2021-09-09 07:43:49'),
(172, 44, 'nVd9Iu1631177047', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/1194/pil\">View patient information leaflet</a>.</p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:44:07', '2021-09-09 07:44:07'),
(173, 45, '28UP4M1631177265', 'Information', '<h5>What is Paracetamol?</h5>\r\n\r\n<p>Paracetamol is used to relieve sore throat and fever, and aches and pains of cold and flu. It is also used to relieve mild to moderate pain for headaches, migraines, backache, muscle pain, toothache and period pain.</p>\r\n\r\n<h5>How to take Paracetamol?</h5>\r\n\r\n<p>It is important that you take paracetamol exactly as directed. If you are unsure, please contact your GP or Callthedoc. Do not take more than 2 tablets at a time every four to six hours if needed. Do not take more than 8 tablets in 24 hours. Do not take anything else containing paracetamol while taking this medicine. Talk to a doctor immediately if you take too much of this medicine, even if you feel well.</p>\r\n\r\n<p>For oral use only. Swallow the tablets with a drink of water.</p>\r\n\r\n<p>Store paracetamol tablets in a dry place below 25°C, out of the reach and sight of children.</p>\r\n\r\n<p>Paracetamol 500mg is not for use in children.</p>\r\n\r\n<h5>Will paracetamol help with symptoms of Covid-19?</h5>\r\n\r\n<p>One of the main symptoms of COVID-19 is a high temperature. The NHS has advised that paracetamol can be used to lower a high temperature caused by COVID-19. Remember, for the most up to date information, check the <a href=\"https://www.nhs.uk/\">NHS website</a> and <a href=\"https://www.gov.uk/\">gov.uk</a>. If you cannot manage your symptoms at home use <a href=\"https://111.nhs.uk/covid-19\">the 111 coronavirus service</a>, or call 111 if you cannot get help online. For life-threatening emergencies, call 999 for an ambulance.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:47:45', '2021-09-09 07:47:45'),
(174, 45, 'hxppm21631177293', 'Side effects', '<h5>What are the side effects of Paracetamol?</h5>\r\n\r\n<p>Side effects of Paracetamol are rare and it is usually very well tolerated when taken as prescribed. Avoid alcohol while taking this medicine so as to reduce the risk of side effects. It is gentle on the stomach.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:48:13', '2021-09-09 07:48:13'),
(175, 45, 'izYzwd1631177321', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/1958/pil\">View patient information leaflet</a>.</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:48:41', '2021-09-09 07:48:41'),
(176, 46, 'ckjwjk1631184204', 'Priligy Information', '<h5>What is Premature Ejaculation?</h5>\r\n\r\n<p>Premature ejaculation (PE) is a distressing male sexual dysfunction that can be present from the first sexual encounter or can develop later in life. Men with premature ejaculation appear to go through the same process of ejaculation as other men, but it happens more quickly and with a reduced feeling of control. A combination of physiological and psychological factors is believed to impact on ejaculatory latency, and research suggests that serotonin plays a central role. The negative consequences of premature ejaculation are significant they cause: sexual dissatisfaction, personal distress, interpersonal difficulty, low self-esteem, and they may affect partner satisfaction.</p>\r\n\r\n<h5>What is Priligy (dapoxetine)?</h5>\r\n\r\n<p>Priligy (dapoxetine) is the first oral medication approved for \"on-demand\" premature ejaculation treatment. Priligy is a unique, short-acting, selective serotonin reuptake inhibitor designed to be taken only when needed - one to three hours before sexual intercourse is anticipated - rather than every day. Priligy was originally developed by Janssen, and is specifically indicated for the on-demand premature ejaculation treatment. Over 15,000 men have received Priligy in pre-marketing and post-marketing clinical studies, where it was well tolerated and demonstrated to have a favourable safety profile. This is the largest and most comprehensive clinical trial program to date for a drug therapy to treat premature ejaculation.</p>\r\n\r\n<h5>Priligy Dosage</h5>\r\n\r\n<p>The recommended starting dose for premature ejaculation treatment is 30 mg. If after taking 30mg you do not experience the desired effect and you do not experience side effects you can increase the dosage up to 60mg.</p>\r\n\r\n<h5>How To Take</h5>\r\n\r\n<p>Tablets should be swallowed whole to avoid the bitter taste. It is recommended that tablets be taken with at least one full glass of water. Priligy may be taken with or without food.</p>\r\n\r\n<p>Taken as needed approximately 1 to 3 hours prior to sexual activity.</p>\r\n\r\n<p>Priligy is not intended for continuous daily use. Priligy should be taken only when sexual activity is anticipated. Priligy must not be taken more frequently than once every 24 hours.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 09:43:24', '2021-09-09 09:43:24'),
(177, 46, 'VozhqK1631184236', 'Side Effects', '<p>The most common side effects are nausea, dizziness, headache and diarrhoea.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 09:43:56', '2021-09-09 09:43:56'),
(178, 46, 'QqKywr1631184280', 'Alternatives', '<p>EMLA cream, anti-depressant medication and Behavioural Techniques or exercises can train the body to delay ejaculation.</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 09:44:40', '2021-09-09 09:44:40'),
(179, 46, '4Qxcgx1631184314', 'Patient Information Leaflet', '<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/1269/pil\">View patient information leaflet.</a></p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 09:45:14', '2021-09-09 09:45:14'),
(180, 48, 'Vu62wl1631185566', 'EMLA Cream', '<h5>What is EMLA cream</h5>\r\n\r\n<p>EMLA is an anaesthetic (numbing) cream that is applied directly to the penis before sex. For men living with premature ejaculation (PE) it can increase the time between gaining an erection and ejaculating.</p>\r\n\r\n<p>EMLA Cream is oil based so it can weaken latex condoms, increasing the risk of them splitting. It is therefore even more important that suitable precautions are taken to avoid pregnancy or transmission of a sexually transmitted infection (STI). You might want to invest in polyurethane condoms, which will not be weakened by EMLA.</p>\r\n\r\n<h5>Using EMLA cream</h5>\r\n\r\n<p>15-30mins before you plan on having sex, apply a small, pea-sized amount of EMLA cream to the underside of the penis near the frenulum (commonly known as the ‘banjo string’). Before intercourse, wipe away any excess cream to ensure it does not rub off on your partner, and apply further if you do not feel it working (across a slightly wider area – not on a focused point). Exact instructions are given when you receive your treatment in the information leaflet.</p>\r\n\r\n<h5>How to use EMLA cream</h5>\r\n\r\n<p>EMLA cream contains the active ingredients prilocaine and lidocaine, which are local anaesthetics. This means that the cream reduces sensitivity in the area to which it\'s applied. Reduced sensitivity at the tip of the penis can delay ejaculation for some men.</p>\r\n\r\n<h5>How long does EMLA last?</h5>\r\n\r\n<p>There is evidence to suggest that EMLA cream has been effective in up to 77% of cases. In these studies, it was shown to significantly increase the time between gaining and erection and ejaculation.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:06:06', '2021-09-09 10:06:06'),
(181, 48, 'rM1igi1631185585', 'Side effects', '<h5>Side effects</h5>\r\n\r\n<p>EMLA cream can cause redness, slight swelling, tingling or turn the skin pale where it is used. Rarely, it can cause mild burning or itching. For a full list of side effects please read the manufacturer\'s product information leaflet that accompanies your medicine.</p>\r\n\r\n<p>For full information on side effects and correct use, see the <a href=\"https://www.medicines.org.uk/emc/files/pil.871.pdf\" target=\"_blank\">patient information leaflet</a>. If any side effects cause you concern, contact us via your Patient Record.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:06:25', '2021-09-09 10:06:25'),
(182, 48, '18WVx91631185607', 'ALTERNATIVES', '<h5>ALTERNATIVES</h5>\r\n\r\n<p>Some men find counselling or hypnotherapy helpful as a means of exploring and treating psychological causes for PE. Others use behavioural techniques to manage their PE with success.</p>\r\n\r\n<p>We can also prescribe Priligy, which affects the way your brain receives information. This can cause a delayed reaction in the areas of the brain that cause ejaculation, meaning you last longer during sex.</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:06:47', '2021-09-09 10:12:13'),
(183, 48, 'RYrugF1631185626', 'Patient Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment.&nbsp;<a href=\"https://www.medicines.org.uk/emc/files/pil.871.pdf\" target=\"_blank\">View patient information leaflet.</a></p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:07:06', '2021-09-09 10:07:06'),
(184, 49, 'gvoL7q1631187285', 'How it work?', '<p>Saxenda (liraglutide 6mg/ml) is a self-injectable weight loss treatment. It contains the active ingredient liraglutide which is very similar to a naturally occurring hormone in your body called GLP-1.</p>\r\n\r\n<p>After a meal GLP-1 is naturally released from your intestines to help regulate your blood sugar levels and reduce the amount of glucagon in your body. Glucagon is a naturally occurring hormone which works by inhibiting the action of insulin. As a result, it makes you feel less hungry, slows down the emptying of your stomach and makes you feel \'fuller\' for longer.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:34:45', '2021-09-09 10:34:45'),
(185, 50, 'OIZls81631188258', 'Orlistat Q&A', '<h5>What Is Orlistat?</h5>\r\n\r\n<p>Orlistat 120mg is used in the treatment of obesity. Orlistat prevents your body from absorbing the fat from the food you eat. By reducing the amount of fat that is absorbed, Orlistat can help you to lose weight more easily.</p>\r\n\r\n<h5>What is Xenical</h5>\r\n\r\n<p>Xenical is a brand name for generic Orlistat 120mg. Xenical is manufactured by Roche and contains the active ingredient Orlistat 120mg. Medically there is no difference between generic Orlistat and Xenical although Orlistat is generally available at a lower price.</p>\r\n\r\n<h5>What is Alli?</h5>\r\n\r\n<p>Alli is a brand name for Orlistat 60mg and is an over the counter medication. Alli is half the strength of the prescription-only medication Orlistat 120mg and Xenical.</p>\r\n\r\n<h5>When should you use Orlistat?</h5>\r\n\r\n<p>If you have previously tried losing weight through diet and exercise and have not had the desired results you may wish to consider trying to use Orlistat. Orlistat is clinically proven to help you lose 50% more weight than through dieting alone. Orlistat is only suitable for people with a BMI over 30 or for people with a BMI over 28 who have conditions related to weight such as diabetes or high blood pressure.</p>\r\n\r\n<p>Use <a href=\"https://www.nhs.uk/live-well/healthy-weight/bmi-calculator/\">online BMI calculator</a> to calculate your BMI.</p>\r\n\r\n<h5>How does Orlistat Work?</h5>\r\n\r\n<p>Orlistat works in a unique way. The active ingredient, Orlistat, attaches itself to some of the body’s natural enzymes that break down fat, so you don’t absorb it. This prevents some of the fat you eat from being absorbed.</p>\r\n\r\n<p>If you eat an excessive amount of fat or calories, the excess is stored as fat by the body, resulting in weight gain. When you eat fat, your body breaks it down into its simplest components so that it can be digested.</p>\r\n\r\n<p>Orlistat works in your digestive system to block about one-third of the fat in the food you eat from being digested.</p>\r\n\r\n<p>Enzymes in your digestive system, called lipases, help digest (or break down) fat. When taken with meals, Orlistat attaches to the lipases and blocks them from breaking down some of the fat you have eaten.</p>\r\n\r\n<p>The undigested fat cannot be absorbed and is eliminated in your bowel movements. By working this way, Orlistat helps block about one-third of the fat in the foods you eat from being absorbed by your body.</p>\r\n\r\n<p>Orlistat isn’t a stimulant or an appetite suppressant. It\'s formulated to work only in your digestive system and should not affect your heart rate, your brain or cause sleeplessness. The safety and efficacy of Orlistat, has been established in more than 100 clinical studies with data from over 30,000 people.</p>\r\n\r\n<h5>Targets</h5>\r\n\r\n<p>When you start taking Orlistat you will be given a weight loss target for the first 3 months. This target is 5% of your weight. If you succeed in losing 5% of your weight, you will be eligible to continue taking Orlistat. Pharmacists can supply Orlistat for up to two years.</p>\r\n\r\n<p>Each time Orlistat is supplied you will need to supply your pharmacist with your current weight. If your weight goes up in any three months, Orlistat will need to be stopped. If you lose enough weight for your BMI to fall below 28, Orlistat can no longer be supplied.</p>\r\n\r\n<p>Some people do not succeed in losing weight with Orlistat. These people should not be disheartened. They can have a break of 6 months and try again later, or see a doctor or a weight loss clinic as alternatives. Losing weight, like many things that are hard to achieve, takes perseverance and resolve, so do not give up.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:50:58', '2021-09-09 10:50:58'),
(186, 50, 'k6VVoC1631188289', 'How to take', '<h5>How To Take</h5>\r\n\r\n<p>The recommended dose is one Orlistat 120mg capsule by mouth with liquid at each main meal that contains fat. You should take Orlistat up to three times a day in conjunction with a reduced-calorie diet. Each time you take Orlistat, your nutritionally balanced meal should contain no more than about 30% of calories from fat.</p>\r\n\r\n<p>You should evenly divide your daily intake of fat, carbohydrates and protein over three main meals. Take Orlistat during meals or up to 1 hour after a meal. If you occasionally miss a meal or have a meal without fat, you can omit your dose of Orlistat. Doses above 120 mg three times daily have not been shown to provide an additional weight-loss benefit. You should try to follow a healthy eating plan, such as one from which no more than 30% of calories come from fat. Following this eating plan will help you lose weight while decreasing some of the possible gastrointestinal effects you may experience while taking Orlistat.</p>\r\n\r\n<p>Because Orlistat interferes with your body\'s absorption of some fat-soluble vitamins, you should take a daily multivitamin supplement that contains vitamins A, D, E and K and beta carotene once a day at least 2 hours before or after taking Orlistat, such as at bedtime.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:51:29', '2021-09-09 10:51:29'),
(187, 50, 'FCmCfG1631188320', 'Effectiveness', '<h5>How Effective is Orlistat?</h5>\r\n\r\n<p>Orlistat has been extensively studied. In clinical trials, almost twice as many patients who received Orlistat, an average weight loss of 10 percent or more of their body weight in one year, compared to those on diet alone.</p>\r\n\r\n<p>People treated with Orlistat and a reduced-calorie diet with no more than 30% of calories from fat achieved significantly greater weight loss than people who were treated with diet alone. The studies were designed with all participants eating a reduced-calorie diet for 4 weeks, followed by the diet plus Orlistat or the diet alone for 52 weeks. After 52 weeks, those taking Orlistat plus diet lost an average of twice as much weight as those who used the diet alone (approximately 13.4 lbs versus 5.8 lbs). There is clear scientific evidence that if you are overweight, losing as little as 5% to 10% of your body weight can result in improved health. In studies of Orlistat, almost 40% of people treated with Orlistat plus diet successfully lost at least 5% of their body weight after 2 years. In comparison, 24% of the people treated with diet alone managed to lose 5% of their weight. Weight loss with Orlistat and a healthy diet also improves a number of weight-related health risks. Weight loss with Orlistat and a healthy diet also improves a number of weight-related health risks.</p>\r\n\r\n<p>Studies show that weight loss with Orlistat can:</p>\r\n\r\n<ul>\r\n	<li>Decrease total and LDL cholesterol (level of low-density lipoprotein-also known as bad cholesterol) total: -2.0% Orlistat vs. +5.0% placebo, LDL: -4.0% vs. +5.0%</li>\r\n	<li>Improve ratio of bad to good cholesterol (LDL/HDL cholesterol): -0.37 Orlistat vs. -0.20 placebo</li>\r\n	<li>Reduce blood pressure: systolic -1.01 vs +0.58 mmHg, diastolic -1.19 vs +0.46 mmHg</li>\r\n	<li>Reduce levels of insulin (hormone that allows glucose or sugar to enter the body\'s cells), high levels of which are associated with coronary heart disease: -6.7 vs +5.2 pmol/L</li>\r\n	<li>Reduce the risk or delay the progression to type 2 diabetes in patients: incidence rate of 5.5% for Orlistat vs 8.3% for placebo</li>\r\n</ul>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:52:00', '2021-09-09 10:52:00'),
(188, 50, 'ytprCv1631188344', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like all medicines, Orlistat can cause side effects, although not everybody gets them. The most common side effects associated with Orlistat are wind with or without oily spotting, sudden or more frequent bowel motions and soft stools. These are caused by the way the capsules work and result from some of the fat being passed out of your body. Such effects typically occur within the first few weeks of using the capsules, before you may have learnt to limit the amount of fat in your diet. Such diet-related treatment effects may be a signal that you have eaten more fat than you should have done.</p>\r\n\r\n<p>These diet-related treatment effects are largely due to what you eat, so eat lower-fat meals to help manage them. The following tips will help:</p>\r\n\r\n<ul>\r\n	<li>Find out more about how much fat your favourite foods typically contain and the size of your portions (check the labels). By getting used to the recommended portions, you’ll be less likely to accidentally go over your daily fat target.</li>\r\n	<li>Distribute your fat evenly across your meals. Don’t ‘save’ fat grams from lunch and ‘spend’ them at dinner - each meal and snack must be within your fat target.</li>\r\n	<li>Be patient. It may take a little time to familiarise yourself with your fat and calorie targets. Most users who experience diet-related treatment effects at the start learn how to manage them.</li>\r\n	<li>Keeping a food diary is an invaluable tool to help you recognise which foods can lead to diet-related treatment effects. An example of how to keep a food diary together with some blank diary pages are included in this booklet so you can jot down helpful notes and favourite recipes – you’ll soon get into the swing of things.</li>\r\n</ul>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:52:24', '2021-09-09 10:52:24'),
(189, 50, 'iR8p0G1631188382', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>There are typically two different kinds of weight-loss prescription medications. Some medications are appetite suppressants. Orlistat is another form of weight-loss medication that works in your digestive system to block about one third of the fat in the food you eat from being digested. There are hundreds of weight loss products on the market, but few have been clinically proven to be safe and effective. Orlistat is the only pharmacy-only medication licensed for weight-loss treatment in the UK.</p>\r\n\r\n<p>You may want to consider counselling for <a href=\"https://www.thelondoncentre.co.uk/\">The London Centre</a>.</p>', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:53:02', '2021-09-09 10:53:02'),
(190, 50, 'qrFb3b1631188408', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/8703/pil\">View patient information leaflet</a>.</p>', 6, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:53:28', '2021-09-09 10:53:28'),
(191, 51, 'Fw7pgU1631188969', 'Xenical Q & A', '<h5>What is Xenical</h5>\r\n\r\n<p>Xenical is a brand name for generic Orlistat 120mg. Xenical is manufactured by Roche and contains the active ingredient Orlistat 120mg. Medically there is no difference between generic Orlistat and Xenical although Orlistat is generally available at a lower price.</p>\r\n\r\n<h5>What Is Orlistat?</h5>\r\n\r\n<p>Orlistat 120mg is used in the treatment of obesity. Orlistat prevents your body from absorbing the fat from the food you eat. By reducing the amount of fat that is absorbed, Orlistat can help you to lose weight more easily.</p>\r\n\r\n<h5>What is Alli?</h5>\r\n\r\n<p>Alli is a brand name for Orlistat 60mg and is an over-the- counter medication. Alli is half the strength of the prescription-only medication Orlistat 120mg and Xenical.</p>\r\n\r\n<h5>When should you use Xenical (Orlistat)?</h5>\r\n\r\n<p>If you have previously tried losing weight through diet and exercise and have not had the desired results you may wish to consider trying to use Orlistat. Orlistat is clinically proven to help you lose 50% more weight than through dieting alone. Orlistat is only suitable for people with a BMI over 30 or for people with a BMI over 28 who have conditions related to weight such as diabetes or high blood pressure.</p>\r\n\r\n<p>Use <a href=\"https://www.nhs.uk/live-well/healthy-weight/bmi-calculator/\" target=\"_blank\">online BMI calculator</a> to calculate your BMI.</p>\r\n\r\n<h5>How does Xenical (Orlistat) Work?</h5>\r\n\r\n<p>Orlistat works in a unique way. The active ingredient, Orlistat, attaches itself to some of the body’s natural enzymes that break down fat, so you don’t absorb it. This prevents some of the fat you eat from being absorbed.</p>\r\n\r\n<p>If you eat an excessive amount of fat or calories, the excess is stored as fat by the body, resulting in weight gain. When you eat fat, your body breaks it down into its simplest components so that it can be digested.</p>\r\n\r\n<p>Orlistat works in your digestive system to block about one-third of the fat in the food you eat from being digested.</p>\r\n\r\n<p>Enzymes in your digestive system, called lipases, help digest (or break down) fat. When taken with meals, Orlistat attaches to the lipases and blocks them from breaking down some of the fat you have eaten.</p>\r\n\r\n<p>The undigested fat cannot be absorbed and is eliminated in your bowel movements. By working this way, Orlistat helps block about one-third of the fat in the foods you eat from being absorbed by your body.</p>\r\n\r\n<p>Orlistat isn’t a stimulant or an appetite suppressant. It\'s formulated to work only in your digestive system and should not affect your heart rate, your brain or cause sleeplessness. The safety and efficacy of Orlistat, has been established in more than 100 clinical studies with data from over 30,000 people.</p>\r\n\r\n<h5>Targets</h5>\r\n\r\n<p>When you start taking Orlistat you will be given a weight loss target for the first 3 months. This target is 5% of your weight. If you succeed in losing 5% of your weight, you will be eligible to continue taking Orlistat. Pharmacists can supply Orlistat for up to two years.</p>\r\n\r\n<p>Each time Orlistat is supplied you will need to supply your pharmacist with your current weight. If your weight goes up in any three months, Orlistat will need to be stopped. If you lose enough weight for your BMI to fall below 28, Orlistat can no longer be supplied.</p>\r\n\r\n<p>Some people do not succeed in losing weight with Orlistat. These people should not be disheartened. They can have a break of 6 months and try again later, or see a doctor or a weight loss clinic as alternatives. Losing weight, like many things that are hard to achieve, takes perseverance and resolve, so do not give up.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:02:49', '2021-09-09 11:02:49'),
(192, 51, 'qj8KTC1631188988', 'How To Take Xenical', '<h5>How To Take Xenical</h5>\r\n\r\n<p>The recommended dose is one Xenical (Orlistat) 120mg capsule by mouth with liquid at each main meal that contains fat. You should take Orlistat up to three times a day in conjunction with a reduced-calorie diet. Each time you take Orlistat, your nutritionally balanced meal should contain no more than about 30% of calories from fat.</p>\r\n\r\n<p>You should evenly divide your daily intake of fat, carbohydrates and protein over three main meals. Take Orlistat during meals or up to 1 hour after a meal. If you occasionally miss a meal or have a meal without fat, you can omit your dose of Orlistat. Doses above 120 mg three times daily have not been shown to provide an additional weight-loss benefit. You should try to follow a healthy eating plan, such as one from which no more than 30% of calories come from fat. Following this eating plan will help you lose weight while decreasing some of the possible gastrointestinal effects you may experience while taking Orlistat.</p>\r\n\r\n<p>Because Orlistat interferes with your body\'s absorption of some fat-soluble vitamins, you should take a daily multivitamin supplement that contains vitamins A, D, E and K and beta carotene once a day at least 2 hours before or after taking Orlistat, such as at bedtime.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:03:08', '2021-09-09 11:03:08'),
(193, 51, 'tJAUXx1631189010', 'Effectiveness', '<h5>How Effective is Xenical (Orlistat)?</h5>\r\n\r\n<p>Xenical (Orlistat) has been extensively studied. In clinical trials, almost twice as many patients who received Orlistat, an average weight loss of 10 percent or more of their body weight in one year, compared to those on diet alone.</p>\r\n\r\n<p>People treated with Orlistat and a reduced-calorie diet with no more than 30% of calories from fat achieved significantly greater weight loss than people who were treated with diet alone. The studies were designed with all participants eating a reduced-calorie diet for 4 weeks, followed by the diet plus Orlistat or the diet alone for 52 weeks. After 52 weeks, those taking Orlistat plus diet lost an average of twice as much weight as those who used the diet alone (approximately 13.4 lbs versus 5.8 lbs). There is clear scientific evidence that if you are overweight, losing as little as 5% to 10% of your body weight can result in improved health. In studies of Orlistat, almost 40% of people treated with Orlistat plus diet successfully lost at least 5% of their body weight after 2 years. In comparison, 24% of the people treated with diet alone managed to lose 5% of their weight. Weight loss with Orlistat and a healthy diet also improves a number of weight-related health risks. Weight loss with Orlistat and a healthy diet also improves a number of weight-related health risks.</p>\r\n\r\n<p>Studies show that weight loss with Orlistat can:</p>\r\n\r\n<ul>\r\n	<li>Decrease total and LDL cholesterol (level of low-density lipoprotein-also known as bad cholesterol) total: -2.0% Orlistat vs. +5.0% placebo, LDL: -4.0% vs. +5.0%</li>\r\n	<li>Improve ratio of bad to good cholesterol (LDL/HDL cholesterol): -0.37 Orlistat vs. -0.20 placebo</li>\r\n	<li>Reduce blood pressure: systolic -1.01 vs +0.58 mmHg, diastolic -1.19 vs +0.46 mmHg</li>\r\n	<li>Reduce levels of insulin (hormone that allows glucose or sugar to enter the body\'s cells), high levels of which are associated with coronary heart disease: -6.7 vs +5.2 pmol/L Reduce the risk or delay the progression to type 2 diabetes in patients: incidence rate of 5.5% for Orlistat vs 8.3% for placebo</li>\r\n</ul>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:03:30', '2021-09-09 11:03:30'),
(194, 51, 'AJHT1j1631189038', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like all medicines, Orlistat can cause side effects, although not everybody gets them. The most common side effects associated with Orlistat are wind with or without oily spotting, sudden or more frequent bowel motions and soft stools. These are caused by the way the capsules work and result from some of the fat being passed out of your body. Such effects typically occur within the first few weeks of using the capsules, before you may have learnt to limit the amount of fat in your diet. Such diet-related treatment effects may be a signal that you have eaten more fat than you should have done.</p>\r\n\r\n<p>These diet-related treatment effects are largely due to what you eat, so eat lower-fat meals to help manage them. The following tips will help:</p>\r\n\r\n<ul>\r\n	<li>Find out more about how much fat your favourite foods typically contain and the size of your portions (check the labels). By getting used to the recommended portions, you’ll be less likely to accidentally go over your daily fat target.</li>\r\n	<li>Distribute your fat evenly across your meals. Don’t ‘save’ fat grams from lunch and ‘spend’ them at dinner - each meal and snack must be within your fat target.</li>\r\n	<li>Be patient. It may take a little time to familiarise yourself with your fat and calorie targets. Most users who experience diet-related treatment effects at the start learn how to manage them.</li>\r\n	<li>Keeping a food diary is an invaluable tool to help you recognise which foods can lead to diet-related treatment effects. An example of how to keep a food diary together with some blank diary pages are included in this booklet so you can jot down helpful notes and favourite recipes – you’ll soon get into the swing of things.</li>\r\n</ul>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:03:58', '2021-09-09 11:03:58'),
(195, 51, 'eG9P5t1631189060', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>There are typically two different kinds of weight-loss prescription medications. Some medications are appetite suppressants. Orlistat is another form of weight-loss medication that works in your digestive system to block about one third of the fat in the food you eat from being digested. There are hundreds of weight loss products on the market, but few have been clinically proven to be safe and effective. Orlistat is the only pharmacy-only medication licensed for weight-loss treatment in the UK.</p>\r\n\r\n<p>You may want to consider counselling for <a href=\"https://www.thelondoncentre.co.uk/\">The London Centre</a>.</p>', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:04:20', '2021-09-09 11:04:20'),
(196, 51, 'HbJd4c1631189098', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/2592/pil\">View patient information leaflet.</a></p>', 6, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:04:58', '2021-09-09 11:04:58'),
(197, 52, 'l7oNEt1631189692', 'Information', '<h5>How Do Period Delay Tablets Work?</h5>\r\n\r\n<p>Utovlan also known as Norethisterone period delay pills work in a similar way to the hormone progesterone, which occurs naturally in the body. It delays your period until the tablets are stopped. You will need to take one tablet three times a day, starting three days before your period is due to start and continuing for no more than 14 days afterwards (17 days in total). Your period will be delayed while you are taking the tablets and should start within three days of stopping the tablets.</p>\r\n\r\n<h5>What do Utovlan period delay tablets contain?</h5>\r\n\r\n<p>Utovlan period delay tablets contain Norethisterone which is a form of progesterone, a female hormone, which prevents your uterus from getting rid of its lining as it usually does, when menstruation begins. It comes in the form of a tablet and the dosage strength to delay periods is 5 mg three times daily. You are required to start taking the tablet at least three days before your period is due and to continue taking it for the duration that you would like to delay your period.</p>\r\n\r\n<h5>How long can you take period delay tablets for?</h5>\r\n\r\n<p>It is recommended that Norethisterone 5mg tablets should be taken to delay your period for a maximum of 17 days. It is perfectly safe to delay your period for this amount of time. After you stop taking the tablets, your period is likely to start after two or three days, however the time scale may be different for every individual. This dose of Norethisterone is not recommended for prolonged use, as it can cause side effects and affect your hormone balance.</p>\r\n\r\n<h5>How do I take the treatment?</h5>\r\n\r\n<p>Norethisterone 5mg tablets should be taken three times a day, usually at the same time each day. If you forget to take a tablet on one day, you may continue taking the regular dose on the following day, or when the next dose is due. Do not take two doses together. Read the patient information leaflet, as this will give you more information about the medicine.</p>\r\n\r\n<h5>Will I get any side effects?</h5>\r\n\r\n<p>Norethisterone does not normally cause side effects as it is taken for such a short period of time. However, the most common side effects which some women may experience are rashes, itching, dizziness and headaches, nausea or depression. More serious side effects can include thrombosis or jaundice, fluid retention (which can lead to high blood pressure) and migraines.</p>\r\n\r\n<h5>Will the tablets protect me against pregnancy?</h5>\r\n\r\n<p>Norethisterone cannot protect against pregnancy, as it is not a contraceptive. You may wish you consider taking the combined oral contraceptive pill to prevent pregnancy. The combined oral contraceptive can also be used to delay periods, when the ‘tablet free’ interval is omitted.</p>\r\n\r\n<h5>What do I do if I don’t get my period after I stop taking these?</h5>\r\n\r\n<p>Some women may not observe their period a few days after they stop treatment with Norethisterone, but it may be slightly delayed whilst your body takes time to re-adjust to the hormone changes. However, its recommended to take a pregnancy test if you do not get your period within a week of ceasing treatment, to rule out the possibility of pregnancy. The period delay tablets are not a contraceptive and you should always use extra contraceptive methods during treatment. If you still do not observe your period, you should seek medical advice.</p>\r\n\r\n<h5>On what day of my cycle should I start taking them?</h5>\r\n\r\n<p>You can take one Norethisterone tablet three times a day, starting three days before you expect to start your next period. You should keep taking the tablets until you are ready to re-start your period (maximum treatment is 17 days).</p>\r\n\r\n<p>Norethisterone is safe to take with a lot of medicines. However, there are some medicines, which are unsuitable when taken with it. The following medicines are unsuitable to take with Norethisterone:</p>\r\n\r\n<ul>\r\n	<li>Phenytoin</li>\r\n	<li>Carbamazepine</li>\r\n	<li>Tetracyclines, rifampicin, co-trimoxazole</li>\r\n	<li>Antiviral medicines to treat HIV</li>\r\n	<li>Anticancer medicines</li>\r\n	<li>Herbal preparations containing St John\'s Wort (Hypericum perforatum)</li>\r\n	<li>Ciclosporin (for suppressing the immune system)</li>\r\n	<li>Medicines for high blood pressure</li>\r\n	<li>Rifamycin</li>\r\n	<li>Warfarin</li>\r\n	<li>Sex hormones</li>\r\n	<li>A statin for high cholesterol</li>\r\n	<li>Griseofulvin</li>\r\n</ul>\r\n\r\n<p>The above is not an exhaustive list of medicines that interact with Norethisterone, and women should seek medical advice or speak to your pharmacist before taking the tablets.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:14:52', '2021-09-09 11:14:52'),
(198, 52, 'QwZo5A1631189712', 'How to take', '<h5>How To Take</h5>\r\n\r\n<p>Three days before your period is due, take one tablet three times daily. Norethisterone tablets can be used to delay a period for a maximum of 17 days and needs to be started 3 days before your period (a total of 20 days). Norethisterone should not be used to delay your period more than once every 6 months. Your period should occur 2-3 days after you have stopped taking the medicine.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:15:12', '2021-09-09 11:15:12'),
(199, 52, 'wqCjlU1631189730', 'Effectiveness', '<h5>Effectiveness</h5>\r\n\r\n<p>Norethisterone will almost always delay your period when taken as advised. After you stop taking it, your period will return in 2-3 days. The majority of women will have no vaginal bleeding whilst taking Norethisterone although a small number may experience light bleeding.</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:15:30', '2021-09-09 11:15:30'),
(200, 52, 'x1v0ge1631189761', 'Side Effects', '<h5>Side Effects of Norethisterone</h5>\r\n\r\n<p>Norethisterone can cause side effects, although not everyone will experience them. The side effects are rare and include nausea and skin problems. If you suffer from asthma, epilepsy, migraines or heart or kidney problems, you may find your symptoms are worse while taking Norethisterone.</p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:16:01', '2021-09-09 11:16:01'),
(201, 52, 'CZiTLj1631189799', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p>The contraceptive pill can be used to stop periods, but needs to be taken for at least a month beforehand. We recommend you speak to your doctor if you want to know about other options for managing your period, or if you are currently taking the contraceptive pill.</p>', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:16:39', '2021-09-09 11:16:39'),
(202, 52, '0h2U431631189821', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/files/pil.1717.pdf\" target=\"_blank\">View patient information leaflet</a>.</p>', 6, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:17:01', '2021-09-09 11:17:01');
INSERT INTO `kod_med_long_description` (`id`, `medicine_id`, `hash_id`, `title`, `description`, `display_order`, `status`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(203, 53, 'OmM1oS1631190221', 'What is Ventolin?', '<h5>What is a Ventolin asthma inhaler?</h5>\r\n\r\n<p>The Ventolin asthma inhaler contains the active drug, salbutamol, and helps to relieve symptoms of asthma attack or difficulty breathing. It is very effective and works quickly, making it extremely useful for people that suffer from asthma. It is an inhaled drug and helps by relaxing the airways to enable easier breathing and can help to relieve an acute asthma attack.</p>\r\n\r\n<h5>What is Asthma?</h5>\r\n\r\n<p>Asthma is a common condition involving the airways and produces symptoms related to difficulty breathing, such as:</p>\r\n\r\n<ul>\r\n	<li>Shortness of breath</li>\r\n	<li>Coughing</li>\r\n	<li>Chest tightness</li>\r\n	<li>Wheezing (rattle-like sound with each breath)</li>\r\n</ul>\r\n\r\n<p>Asthma is caused by inflammation of the airways, making it difficult for air to pass through and for you to breathe normally. The lining becomes red and inflamed, sometimes with mucous and the airways become narrower. This makes breathing difficult and can lead to an asthma attack, which can sometimes be fatal.</p>\r\n\r\n<h5>How does Ventolin work?</h5>\r\n\r\n<p>The active ingredient in Ventolin, salbutamol, is called a bronchodilator, which means it works by relaxing the muscles around the airways. As it is an inhaled drug, you breathe it in and it works directly on the airways in a short amount of time. As a result, it is a great medication to help when you are suffering from bad asthma symptoms. The main action of Ventolin is to relax the airways to allow you to breathe easily again. This is perfect to relieve symptoms when they worsen, but Ventolin will not help to prevent your symptoms from returning. If you suffer from symptoms regularly, you should talk to your doctor about how to prevent asthma symptoms.</p>\r\n\r\n<h5>How do you take Ventolin?</h5>\r\n\r\n<p>Ventolin is a drug that should be inhaled to help you breathe when you are suffering from asthma symptoms. It can take some coordination in order to use the inhaler properly and get the most out of the drug, but it is essential you know how to do it and practice to do it right. This is a guide of how to use your Ventolin asthma inhaler:</p>\r\n\r\n<ol>\r\n	<li>Remove the cap and shake inhaler before use.</li>\r\n	<li>Take a normal breath and breathe out completely.</li>\r\n	<li>Put your mouth over the mouthpiece and seal with your lips to prevent air escaping.</li>\r\n	<li>Start taking a slow deep breath in, then press down the canister button at the top of the inhaler and continue to breathe in as deeply as you can.</li>\r\n	<li>Hold your breath for 10 seconds to allow the drug time to work in your airways and then exhale slowly</li>\r\n</ol>\r\n\r\n<p>This is how to take one puff - usually people will need more than one puff to relieve their symptoms. You should talk to you doctor about how many puffs you will need to take to relieve your symptoms. Ventolin does not need to be taken regularly every day, as it is designed to provide relief of symptoms when they affect you, not to prevent asthma.</p>\r\n\r\n<h5>What is a spacer?</h5>\r\n\r\n<p>A spacer is a device that you can use with your Ventolin asthma inhaler to help you take the medication and allow it to work in your airways. It can be difficult for some people to coordinate the timing of the drug with breathing in when using the Ventolin inhaler and a spacer is designed to help you with this. This is how to use a spacer with your Ventolin asthma inhaler:</p>\r\n\r\n<ol>\r\n	<li>Remove cap and shake inhaler before use.</li>\r\n	<li>Insert inhaler into end of spacer and breathe out away from spacer.</li>\r\n	<li>Put your mouth over the mouthpiece and seal with your lips to prevent air escaping.</li>\r\n	<li>Press down the canister button at top of inhaler to release medication into the inhaler.</li>\r\n	<li>Breathe in slowly and deeply.</li>\r\n	<li>Hold your breath for 10 seconds to allow the drug time to work in your airways and then exhale slowly.</li>\r\n</ol>\r\n\r\n<p>Once again, these are the instructions for one puff and you will usually need more than one to relieve symptoms. You should talk to you doctor about how many puffs you should take.</p>\r\n\r\n<h5>Does Ventolin have side effects?</h5>\r\n\r\n<p>Like all drugs, some people can experience side effects when taking Ventolin. These may include:</p>\r\n\r\n<ul>\r\n	<li>Increased heart rate or palpitations</li>\r\n	<li>Muscle tremor (shaking hands)</li>\r\n	<li>Anxiety</li>\r\n</ul>\r\n\r\n<p>It is important to realise that these side effects are not particularly severe in comparison to the results an asthma attack can have if someone is not treated. As such, do not be afraid to use Ventolin in the event of someone having an asthma attack, as it is more likely to do good than harm.</p>\r\n\r\n<h5>Do you need preventative medication for asthma?</h5>\r\n\r\n<p>Ventolin works to relieve asthma symptoms but will not help to protect your airways and prevent asthma from affecting you. There are other medications available that have a long-term effect on your airways to help control your symptoms and prevent you from experiencing symptoms. If you experience asthma symptoms regularly, you should talk to you doctor about whether you should take preventative medication. Even if you have preventative medication, you still need to have the Ventolin inhaler with you, just in case your asthma symptoms get worse.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:23:41', '2021-09-09 11:23:41'),
(204, 53, '3QfVIT1631190244', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Possible side effects include:</p>\r\n\r\n<ul>\r\n	<li>increased heart rate, sometimes felt as palpitations</li>\r\n	<li>muscle tremor (shaking, especially in the hands), and/or</li>\r\n	<li>slight feelings of anxiety or nervousness</li>\r\n</ul>\r\n\r\n<p>These effects generally pass quickly, and are less likely to occur after the medication has been used a few times. They may occur when you take higher doses of the medication, such as during an asthma emergency.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:24:04', '2021-09-09 11:24:04'),
(205, 53, '5yqEx01631190267', 'Information Leaflet', '<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/850/pil\">View patient information leaflet.</a></p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:24:27', '2021-09-09 11:24:27'),
(206, 54, 'bfJzGm1631190561', 'What is Symbicort Turbohaler?', '<h5>What is Symbicort Turbohaler</h5>\r\n\r\n<p>An easy-to-use inhaler designed for people with moderate to severe asthma. Used correctly as prescribed, Symbicort Turbohaler can alleviate asthma symptoms and prevent asthma attacks.</p>\r\n\r\n<h5>Taking Symbicort Turbohaler</h5>\r\n\r\n<p>Usually, you will be prescribed 1-2 puffs twice a day. Symbicort Turbohaler comes in 3 different strengths. We will advise which strength you need. Always use this medicine exactly as your doctor has told you. If you have any questions, contact us via your Patient Record.</p>\r\n\r\n<h5>How it works</h5>\r\n\r\n<p>Symbicort Turbohaler works as both a reliever and a preventer. It contains 2 active ingredients: formoterol fumarate dihydrate and budesonide. Formoterol fumarate dihydrate is a long-acting bronchodilator. Bronchodilators are a type of medication that makes breathing easier by relaxing the muscles in the lungs and widening the airways. Budesonide is one of a group of medicines called corticosteroids, which are often referred to simply as steroids. Steroids have an anti-inflammatory action, reducing the irritation and swelling in the airways, and so ease breathing problems like asthma.</p>\r\n\r\n<h5>Effectiveness</h5>\r\n\r\n<p>Symbicort Turbohaler should help control breathing immediately. Used daily, Symbicort Turbohaler can help prevent asthma attacks and control symptoms, such as wheeze or a night-time cough. Some use the Symbicort Turbohaler when they need extra doses for relief of asthma symptoms, whereas others have a reliever inhaler like Ventolin (salbutamol) to hand in case of sudden breathing problems.</p>\r\n\r\n<h5>Correct inhaler use</h5>\r\n\r\n<p>Unscrew the white cover and remove. Hold your Symbicort Turbohaler upright with the red grip at the bottom. Do not shake the inhaler. To load a dose, turn the red grip as far as it will go in one direction, then turn it as far as it will go in the other direction until you hear a click. Hold your Symbicort Turbohaler away from your mouth and breathe out gently as far as is comfortable. Place the mouthpiece between your teeth (do not bite it) and close your lips to make a seal. Breathe in as deeply and as hard as you can through your mouth. Remove the inhaler from your mouth and breathe out gently. Repeat if you are taking another dose. Once you have taken your prescribed dose, replace the cover and rinse your mouth out.</p>\r\n\r\n<h5>Safety: taking other medicines</h5>\r\n\r\n<p>You should be able to use Symbicort Turbohaler alongside other medicines. However, it is important that you let us know which prescription, over-the-counter medicines and recreational drugs you are taking so that we can prescribe Symbicort Turbohaler safely.</p>\r\n\r\n<p>If you are pregnant or breastfeeding, have ever needed intensive care treatment for your asthma, or have been admitted to hospital because of your symptoms in the last year, we will be unable to prescribe you Symbicort Turbohaler.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:29:21', '2021-09-09 11:29:21'),
(207, 54, 'sZE1Nd1631190582', 'Side effects', '<h5>Side effects</h5>\r\n\r\n<p>Can cause throat irritation or thrush in the mouth. The risk of these side effects can be reduced by using a spacer device with your inhaler. You can also help by brushing your teeth, gargling, and/or rinsing your mouth out with water after each use. Some people also experience heart racing, tremors or headaches when taking Symbicort Turbohaler.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:29:42', '2021-09-09 11:29:42'),
(208, 54, 'x7Shdp1631190604', 'Patient Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. View patient information leaflet.</p>\r\n\r\n<p><a href=\"https://www.medicines.org.uk/emc/product/1326/pil\" target=\"_blank\">https://www.medicines.org.uk/emc/product/1326/pil</a></p>\r\n\r\n<p><a href=\"https://www.medicines.org.uk/emc/product/1327/pil\" target=\"_blank\">https://www.medicines.org.uk/emc/product/1327/pil</a></p>\r\n\r\n<p><a href=\"https://www.medicines.org.uk/emc/product/6775/pil\" target=\"_blank\">https://www.medicines.org.uk/emc/product/6775/pil</a></p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:30:04', '2021-09-09 11:30:04'),
(209, 55, 'RUlnIx1631191084', 'What is Seretide Evohaler?', '<h5>What is Seretide Evohaler?</h5>\r\n\r\n<p>A standard inhaler designed for people with moderate to severe asthma. Used regularly and correctly, Seretide Evohaler can ease asthma symptoms and prevent asthma attacks.</p>\r\n\r\n<h5>Taking Seretide Evohaler</h5>\r\n\r\n<p>Usually, you will be prescribed 2 puffs twice a day. Seretide Evohaler comes in 3 different strengths. We will advise which strength you need. Always use this medicine exactly as your doctor has told you. If you have any questions, contact us via your Patient Record.</p>\r\n\r\n<h5>How it works</h5>\r\n\r\n<p>Seretide Evohaler works as both a reliever and a preventer. It contains 2 active ingredients: salmeterol and fluticasone propionate. Salmeterol is a long-acting bronchodilator. Bronchodilators are a type of medication that makes breathing easier by relaxing the muscles in the lungs and widening the airways. Fluticasone propionate is one of a group of medicines called corticosteroids, which are often referred to simply as steroids. Steroids have an anti-inflammatory action, reducing the irritation and swelling in the airways, and so ease breathing problems like asthma.</p>\r\n\r\n<h5>Effectiveness</h5>\r\n\r\n<p>Seretide Evohaler helps control breathing immediately. Used daily, Seretide Evohaler can help prevent asthma attacks and control symptoms, such as wheeze or a night-time cough. You should notice a difference in a few days. You should also have a reliever inhaler like Ventolin (salbutamol) to hand in case of sudden breathing problems.</p>\r\n\r\n<h5>Correct inhaler use</h5>\r\n\r\n<p>Stand or sit upright when using your inhaler. Remove the mouthpiece cover and check inside to ensure it\'s clean. Shake the inhaler 4-5 times. Hold the inhaler upright with your thumb on the base and fingers on the top of the canister – your hand should make a C shape. Breathe out as far as is comfortable and place the mouthpiece in your mouth, between your teeth. Close your lips around it and don\'t bite. Breathe in through your mouth - just after you start to breathe in, press down on the top of the canister to release a puff of medicine. Continue breathing in steadily and deeply. Hold your breath for as long as is comfortable. Wait 30 seconds and repeat to take another puff. Replace the mouthpiece cover after use.</p>\r\n\r\n<h5>Taking other medicines</h5>\r\n\r\n<p>You should be able to use Seretide Evohaler alongside other medicines. However, it is important that you let us know which prescription, over-the-counter medicines and recreational drugs you are taking so that we can prescribe Seretide Evohaler safely.</p>\r\n\r\n<p>If you are pregnant or breastfeeding, have ever needed intensive care treatment for your asthma, or have been admitted to hospital because of your symptoms in the last year, we will be unable to prescribe you Seretide Evohaler.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:38:04', '2021-09-09 11:38:04'),
(210, 55, 'HvWUYL1631191114', 'Side effects', '<h5>Side effects</h5>\r\n\r\n<p>Can cause throat irritation or thrush in the mouth. You can help by brushing your teeth, gargling, and/or rinsing your mouth out with water after each use. Some people also experience headaches, muscle pain and aching joints when taking Seretide Evohaler.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:38:34', '2021-09-09 11:38:34'),
(211, 55, 'yNMrlf1631191135', 'Patient Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/files/pil.7599.pdf\" target=\"_blank\">View patient information leaflet.</a></p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:38:55', '2021-09-09 11:38:55'),
(212, 56, 'Lzeklr1631192160', 'What is Aldara?', '<p>Aldara 5% Cream contains the active ingredient imiquimod. Imiquimod is used to treat external genital and peri-anal warts in adults. Imiquimod is an immune response modifier. This means that it stimulates a person’s immune system to release cytokines and works to attack the virus that causes genital warts- human papillomavirus. Imiquimod works towards clearing genital warts.</p>\r\n\r\n<h5>How often should Aldara cream be used?</h5>\r\n\r\n<p>A thin layer of Aldara cream should be applied 3 times a week (for example Monday, Wednesday and Friday; or Tuesday, Thursday, and Saturday) at bedtime and should remain on the skin for 6 to 10 hours. After this period, Aldara cream should be washed off with mild soap and water</p>\r\n\r\n<ul>\r\n	<li>Treatment should continue until the clearance of visible genital or perianal warts, or for a maximum of 16 weeks per episode of warts.</li>\r\n	<li>If your genital warts are still present after this, please visit your GP or sexual health clinic for other treatment options.</li>\r\n</ul>\r\n\r\n<h5>How do I apply Aldara cream?</h5>\r\n\r\n<ul>\r\n	<li>Before going to bed, wash your hands and the treatment area with mild soap and water. Dry thoroughly.</li>\r\n	<li>Open a new sachet and squeeze some cream onto your fingertip.</li>\r\n	<li>Apply a thin layer of Aldara cream onto clean, dry wart area and rub gently into the skin until cream vanishes.</li>\r\n	<li>After application of the cream, throw away the opened sachet and wash hands with soap and water.</li>\r\n	<li>Leave Aldara cream on the warts for 6 to 10 hours. Do not shower or bathe during this time.</li>\r\n	<li>After 6 to 10 hours wash the area where Aldara cream was applied with mild soap and water.</li>\r\n</ul>\r\n\r\n<h5>What else should I know about using Aldara cream?</h5>\r\n\r\n<ul>\r\n	<li>Read the patient information leaflet provided with your treatment</li>\r\n	<li>Avoid getting the cream on normal or broken skin and open wounds</li>\r\n	<li>Hands should be washed thoroughly before and after applying the cream</li>\r\n	<li>Avoid unprotected sexual contact soon after application because of a possible irritant effect on the partner</li>\r\n	<li>Latex condoms and diaphragms may be weakened if in contact with Aldara</li>\r\n	<li>Response to treatment and adverse effects may be delayed by some weeks</li>\r\n	<li>Inflammation may occur within a few applications of Aldara</li>\r\n	<li>Permanent hypopigmentation and hyperpigmentation may occur</li>\r\n</ul>\r\n\r\n<h5>If I use Aldara more often than recommended, will I see faster results?</h5>\r\n\r\n<p>Excess cream or prolonged contact with the skin may result in a severe reaction at the application site.</p>\r\n\r\n<h5>Should I cover the area treated with a dressing after applying my treatment?</h5>\r\n\r\n<p>The use of an occlusive dressing is not recommended with Aldara.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:56:00', '2021-09-09 11:56:00'),
(213, 56, 'FsRP8v1631192181', 'Side effects', '<h5>I have applied Aldara and now my skin is really irritated. What should I do?</h5>\r\n\r\n<p>Local skin reactions such as erythema (redness), erosion, excoriation (wearing off the skin), flaking and oedema are common. Other local reactions such as induration (hardening), ulceration, scabbing, and vesicles have also been reported. Should an intolerable skin reaction occur, the cream should be removed by washing the area with mild soap and water. Treatment with Aldara cream can be resumed after the skin reaction has improved.</p>\r\n\r\n<h5>What are the side effects of Aldara?</h5>\r\n\r\n<p>Like all medications, Aldara has side effects that affect some people that take this medication. Some very common side effects of Aldara include redness (61% patients), wearing away of the skin (30% patients), flakiness and swelling. Hardening under the skin, small open sores, a crust that forms during healing, and small bubbles under the skin may also occur. You might also feel itching (32% patients), a burning sensation (26% patients) or pain in areas where you have applied Aldara cream (8% patients). Most of these skin reactions are mild and the skin will return to normal within about 2 weeks after stopping treatment.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:56:21', '2021-09-09 11:56:21'),
(214, 56, 'aMLfpI1631192206', 'Alternatives', '<ul>\r\n	<li>Callthedoc provides two topical treatments (treatments that are applied to the skin)- Aldara and Warticon.</li>\r\n	<li>A sexual health clinic sometimes offers surgery to remove the warts or a treatment to freeze the warts.</li>\r\n</ul>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" class=\"bg-white table table-bordered\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"row\">&nbsp;</th>\r\n			<th scope=\"col\">Aldara cream</th>\r\n			<th scope=\"col\">Warticon solution</th>\r\n			<th scope=\"col\">Warticon cream</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Onset of action</th>\r\n			<td>Can take up to 16 weeks to work</td>\r\n			<td>Can take up to four weeks to work</td>\r\n			<td>Can take up to four weeks to work</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Efficacy</th>\r\n			<td>Comparable with Warticon Solution</td>\r\n			<td>Comparable with Aldara Cream</td>\r\n			<td>Inferior to Warticon Solution</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Price</th>\r\n			<td>From £69.95</td>\r\n			<td>From £31.99</td>\r\n			<td>From £34.99</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:56:46', '2021-09-09 11:56:46'),
(215, 56, 'qOhVew1631192230', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment.</p>\r\n\r\n<p><a href=\"https://www.medicines.org.uk/emc/product/823/pil\" target=\"_blank\">View patient information leaflet.</a></p>', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:57:10', '2021-09-09 11:57:10'),
(216, 57, 'jwVuSw1631192571', 'What is Warticon?', '<h5>What is Warticon?</h5>\r\n\r\n<p>Warticon is available as a cream and as a solution. The active ingredient is podophyllotoxin.</p>\r\n\r\n<p>The action of podophyllotoxin is thought to be due to inhibition of growth and the ability to invade the tissue of the viral infected cells.</p>\r\n\r\n<h5>How is Warticon used?</h5>\r\n\r\n<p>Warticon cream or solution should be applied twice a day (every 12 hours) for 3 consecutive days, followed by 4 days of no application. This should be repeated weekly if necessary for a maximum of four 3–day courses. If the warts have not cleared after this, you should see your GP or sexual health clinic for other treatment options.</p>\r\n\r\n<h5>How do I apply Warticon Solution?</h5>\r\n\r\n<ol>\r\n	<li>Wash the affected areas with soap and water. Dry the area gently with a clean towel.</li>\r\n	<li>Use a new applicator each time you apply Warticon Solution.</li>\r\n	<li>Dip the ‘Loop’ end of the applicator into the Warticon Solution. If you have a large wart (no larger than a postage stamp) or lots of warts in a small area, dip the ‘Spatula’ end of the applicator into the solution.</li>\r\n	<li>Apply the solution to a wart until it is just covered and allow to dry. Be careful not to get the Warticon onto healthy skin. If this happens, wash the solution off with soap and water.</li>\r\n	<li>Repeat steps 3 and 4 for each wart. Allow all the skin treated with Warticon Solution to dry before letting other skin touch the affected area.</li>\r\n	<li>Wash your hands thoroughly after using Warticon Solution.</li>\r\n	<li>Make sure you screw the lid back on tightly.</li>\r\n</ol>\r\n\r\n<h5>Is there anything else I should know about Warticon solution?</h5>\r\n\r\n<ul>\r\n	<li>Avoid unprotected sexual contact soon after application because of a possible irritant effect on your partner</li>\r\n	<li>Warticon solution is blue and may leave a blue stain after application which is temporary.</li>\r\n	<li>Warticon solution is flammable. Keep your body away from fire or flames after you have put on the medicine.</li>\r\n</ul>\r\n\r\n<h5>Should I choose the cream or the solution? Which is more effective?</h5>\r\n\r\n<p>Cream may be easier to apply. In an active-controlled trial, podophyllotoxin 0.15% cream was inferior to podophyllotoxin 0.5% solution</p>\r\n\r\n<h5>I have applied Warticon and now my skin is really irritated. What should I do?</h5>\r\n\r\n<p>Warticon can cause local irritation of the treated area. This may occur on the second or third day of application and decreases after treatment is discontinued. In most cases, the reactions are mild. If severe local skin reactions occur (bleeding, swelling, excessive pain, burning, itching) the solution should be washed immediately from the treatment area with mild soap and water. Treatment should be discontinued and you should visit your GP or GUM clinic.</p>\r\n\r\n<h5>If I use Warticon more often than recommended, will I see faster results?</h5>\r\n\r\n<p>No. Excess cream or solution, or prolonged contact with the skin may result in a severe reaction at the application site. Excessive application may cause severe systemic toxicity, including gastrointestinal, renal, haematological and central nervous system effect.</p>\r\n\r\n<h5>Should I cover the area treated with a dressing after applying my treatment?</h5>\r\n\r\n<p>The use of an occlusive dressing is not recommended with Warticon.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:02:51', '2021-09-09 12:02:51'),
(217, 57, '3vdzcy1631192594', 'Alternatives', '<ul>\r\n	<li>CalltheDoc provides two topical treatments (treatments that are applied to the skin)- Aldara and Warticon.</li>\r\n	<li>A sexual health clinic sometimes offers surgery to remove the warts or a treatment to freeze the warts.</li>\r\n</ul>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:500px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"row\">&nbsp;</th>\r\n			<th scope=\"col\">Aldara cream</th>\r\n			<th scope=\"col\">Warticon solution</th>\r\n			<th scope=\"col\">Warticon cream</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Onset of action</th>\r\n			<td>Can take up to 16 weeks to work</td>\r\n			<td>Can take up to four weeks to work</td>\r\n			<td>Can take up to four weeks to work</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Efficacy</th>\r\n			<td>Comparable with Warticon Solution</td>\r\n			<td>Comparable with Aldara Cream</td>\r\n			<td>Inferior to Warticon Solution</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Price</th>\r\n			<td>From £68.00</td>\r\n			<td>From £29.00</td>\r\n			<td>From £33.00</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:03:14', '2021-09-09 12:03:14'),
(218, 57, 'yMtSWk1631192635', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment.</p>\r\n\r\n<p>View patient information leaflets:</p>\r\n\r\n<p><strong id=\"docs-internal-guid-a510983f-7fff-0b16-e9b0-a8cf844fa422\">Cream - <a href=\"https://www.medicines.org.uk/emc/product/1507/pil\">https://www.medicines.org.uk/emc/product/1507/pil</a></strong></p>\r\n\r\n<p><strong id=\"docs-internal-guid-ee5a89d1-7fff-28c8-bc7b-8c846c14abae\">Solution <a href=\"https://www.medicines.org.uk/emc/product/1506/pil\">https://www.medicines.org.uk/emc/product/1506/pil</a></strong></p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:03:55', '2021-09-09 12:03:55'),
(219, 58, 'e1I9m21631193023', 'What is Warticon?', '<h5>What is Warticon?</h5>\r\n\r\n<p>Warticon is available as a cream and as a solution. The active ingredient is podophyllotoxin.</p>\r\n\r\n<p>The action of podophyllotoxin is thought to be due to inhibition of growth and the ability to invade the tissue of the viral infected cells.</p>\r\n\r\n<h5>How is Warticon used?</h5>\r\n\r\n<p>Warticon cream or solution should be applied twice a day (every 12 hours) for 3 consecutive days, followed by 4 days of no application. This should be repeated weekly if necessary for a maximum of four 3–day courses. If the warts have not cleared after this, you should see your GP or sexual health clinic for other treatment options.</p>\r\n\r\n<h5>How do I apply Warticon Cream?</h5>\r\n\r\n<ul>\r\n	<li>Wash the affected areas with soap and water. Dry the area gently with a clean towel.</li>\r\n	<li>It may help you to view the area to be treated, if you sit down and place the mirror as shown in the diagram below.</li>\r\n	<li>Using a fingertip, apply Warticon Cream to cover each wart. Use only enough cream to cover each wart.</li>\r\n	<li>Rub the cream into the wart. Be careful not to get the cream onto healthy skin. If this happens, wash the cream off with soap and water.</li>\r\n	<li>Wash your hands thoroughly.</li>\r\n	<li>Make sure you have screwed the lid back on tightly</li>\r\n</ul>\r\n\r\n<h5>Is there anything else I should know about Warticon Cream?</h5>\r\n\r\n<ul>\r\n	<li>Avoid getting the cream onto normal skin and open wounds.</li>\r\n	<li>Avoid unprotected sexual contact soon after application because of a possible irritant effect on your partner</li>\r\n	<li>Warticon cream is white and disappears after application.</li>\r\n</ul>\r\n\r\n<h5>Should I choose the cream or the solution? Which is more effective?</h5>\r\n\r\n<p>Cream may be easier to apply. In an active-controlled trial, podophyllotoxin 0.15% cream was inferior to podophyllotoxin 0.5% solution</p>\r\n\r\n<h5>I have applied Warticon and now my skin is really irritated. What should I do?</h5>\r\n\r\n<p>Warticon can cause local irritation of the treated area. This may occur on the second or third day of application and decreases after treatment is discontinued. In most cases, the reactions are mild. If severe local skin reactions occur (bleeding, swelling, excessive pain, burning, itching) the solution should be washed immediately from the treatment area with mild soap and water. Treatment should be discontinued and you should visit your GP or GUM clinic.</p>\r\n\r\n<h5>If I use Warticon more often than recommended, will I see faster results?</h5>\r\n\r\n<p>No. Excess cream or solution, or prolonged contact with the skin may result in a severe reaction at the application site. Excessive application may cause severe systemic toxicity, including gastrointestinal, renal, haematological and central nervous system effect.</p>\r\n\r\n<h5>Should I cover the area treated with a dressing after applying my treatment?</h5>\r\n\r\n<p>The use of an occlusive dressing is not recommended with Warticon.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:10:23', '2021-09-09 12:10:23'),
(220, 58, 'vaUtKS1631193043', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<ul>\r\n	<li>CalltheDoc provides two topical treatments (treatments that are applied to the skin)- Aldara and Warticon.</li>\r\n	<li>A sexual health clinic sometimes offers surgery to remove the warts or a treatment to freeze the warts.</li>\r\n</ul>\r\n\r\n<table class=\"table table-bordered\">\r\n	<thead>\r\n		<tr>\r\n			<th>&nbsp;</th>\r\n			<th>Aldara cream</th>\r\n			<th>Warticon solution</th>\r\n			<th>Warticon cream</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<th>Onset of action</th>\r\n			<td>Can take up to 16 weeks to work</td>\r\n			<td>Can take up to four weeks to work</td>\r\n			<td>Can take up to four weeks to work</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Efficacy</th>\r\n			<td>Comparable with Warticon Solution</td>\r\n			<td>Comparable with Aldara Cream</td>\r\n			<td>Inferior to Warticon Solution</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Price</th>\r\n			<td>From £68.00</td>\r\n			<td>From £29.00</td>\r\n			<td>From £33.00</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:10:43', '2021-09-09 12:10:43'),
(221, 58, 'C762gS1631193064', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment.<a href=\"https://www.medicines.org.uk/emc/product/1507/pil\" target=\"_blank\"> View patient information leaflets:</a></p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:11:04', '2021-09-09 12:11:04'),
(222, 59, 'OifKp01631194370', 'What is Champix?', '<h5>What is Champix?</h5>\r\n\r\n<p>Champix (varenicline tartrate) is based on a plant extract, which is found in a variety of plants. It doesn’t contain nicotine and isn’t addictive.</p>\r\n\r\n<dl class=\"dl-normal\">\r\n	<dt>It’s designed to do two things:</dt>\r\n	<dd>1. Reduce cravings and withdrawal symptoms that happen when you give up smoking.</dd>\r\n	<dd>2. Block the effect of nicotine - so if you do smoke while on Champix, you may get reduced feelings of satisfaction and not enjoy it as much. This can help remind you why you are stopping and reduce the desire to have another cigarette in the future.</dd>\r\n</dl>\r\n\r\n<h5>How Does Champix Work?</h5>\r\n\r\n<p>Champix contains no nicotine. You may wonder how a non-nicotine pill could help you quit smoking. Well, first you have to know how nicotine works.</p>\r\n\r\n<p>There are receptors for nicotine in your brain. When you smoke, the nicotine you inhale attaches to these receptors. This sends a message to a different part of your brain to release a chemical called dopamine. Dopamine gives you a feeling of pleasure. But it does not last long. That\'s why your body craves more nicotine. This can become a vicious cycle.</p>\r\n\r\n<h5>How To Take Champix</h5>\r\n\r\n<p><strong>A 12-Week Prescription:</strong></p>\r\n\r\n<ul>\r\n	<li>Champix should be taken after eating and with a full glass (8 ounces) of water.</li>\r\n	<li>A 12-week Champix prescription includes 1 Starting Month Box and 2 Continuing Month Boxes.</li>\r\n	<li>Within each one-month Box are 4 Weekly doses of Champix.</li>\r\n</ul>\r\n\r\n<p><strong>The first week:</strong></p>\r\n\r\n<ul>\r\n	<li>In the first week of Champix, white pills are taken.</li>\r\n	<li>During days 1-3, take 1 white pill every day.</li>\r\n	<li>During days 4-7, take 2 white pills every day: one in the morning and one in the evening.</li>\r\n</ul>\r\n\r\n<p><strong>The remaining weeks:</strong></p>\r\n\r\n<ul>\r\n	<li>During weeks 2-12, take 2 blue pills every day: one in the morning and one in the evening.</li>\r\n	<li>Remember, you should always take Champix as prescribed by your doctor.</li>\r\n</ul>\r\n\r\n<h5>How Effective is Champix?</h5>\r\n\r\n<p>In studies, 44% of Champix users were quit during weeks 9 to 12 of treatment (compared to 18% on sugar pill). Champix also helped reduce the urge to smoke.</p>\r\n\r\n<h5>Helping Smokers Quit</h5>\r\n\r\n<p>Champix has been proven to be more effective in helping smokers quit than Zyban® (bupropion hydrochloride). The average person in these smoking cessation studies had been a smoker for more than 24 years. The trials involved a mix of men and women who smoked an average of 10 or more cigarettes a day.</p>\r\n\r\n<h5>Champix is proven to work. Learn about the study.</h5>\r\n\r\n<p>1,022 patients were enrolled in this study, and results were duplicated in another identically designed clinical trial.</p>\r\n\r\n<p>Patients received either Champix 1 mg twice a day, Zyban 150 mg twice a day, or sugar pills twice a day for 12 weeks. In addition to the pills, patients were given a booklet on quitting smoking and received brief counselling at each visit.</p>\r\n\r\n<p>In weeks 9 through 12 in the study, the smoking status of each patient was checked, and the information was compared among the 3 groups. Patients were considered quit if they did not smoke a cigarette (not even a puff) or use other nicotine products for the final 4 weeks of treatment. Champix was proven to be more effective than the sugar pill or Zyban.</p>\r\n\r\n<h5>Side Effects</h5>\r\n\r\n<p>Smoking cessation with or without the support of a medicine such as Champix can be associated with side effects.</p>\r\n\r\n<p>Common side effects of Champix include feeling sick (nausea), difficulty sleeping, headache and changes in dreams. Around 3 in 10 people feel sick while taking Champix and it often goes away after a few days. Some people find it helpful to take Champix with food and water. Talk to your doctor, nurse or pharmacist about these side effects and how they can be managed.</p>\r\n\r\n<p>Smokers who used Champix have reported changes in mood, behaviour or thinking, and sometimes these changes have been serious. It is not known if those changes are related to the medicine or to stopping smoking. If you or your family notice changes in your behaviour, mood or thinking, stop taking Champix and see your doctor.</p>\r\n\r\n<p>There have been reports of heart attack and strokes in some people taking Champix. Heart attacks and strokes can also be caused by smoking. If you have any of these conditions tell your doctor.</p>', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:32:50', '2021-09-09 12:32:50'),
(223, 59, 'nIknEp1631194391', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Zyban (Bupropion Hydrochloride)</strong></p>\r\n\r\n<p>Zyban is a tablet that helps you to stop smoking. It has more side effects and is less effective than Champix and therefore is not generally prescribed.</p>\r\n\r\n<p><strong>Nicotine Replacement Therapy</strong></p>\r\n\r\n<p>Reduces craving from cigarettes but still contains nicotine. Not as effective as Champix.</p>\r\n\r\n<p><strong>Non-Medical</strong></p>\r\n\r\n<p>Counselling, hypnotherapy, acupuncture are alternative treatments to help quit smoking.</p>', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:33:11', '2021-09-09 12:33:11'),
(224, 59, 'c75AMr1631194412', 'Information', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/7944/pil\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"Patient Information Leaflet\">View patient information leaflet</a>.</p>', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:33:32', '2021-09-09 12:33:32'),
(225, 60, 'hl5aZC1631512190', 'Imigran', '<h5>What Is Imigran?</h5>\r\n\r\n<p>Imigran contains the active ingredient sumatriptan succinate and is a popular migraine treatment. It belongs to a class of medications known as triptans. Triptans are not the same as painkillers, instead they work by reversing the changes in the brain which can cause migraines. Reversing these changes helps to relieve the symptoms of migraine.</p>\r\n\r\n<h5>What is the difference between Imigran and Sumatriptan?</h5>\r\n\r\n<p>Imigran and Sumatriptan Generic are medically equivalent. Imigran is a brand name and contains the active ingredient Sumatriptan succinate. Imigran is made by GlaxoSmithKline and was the first medication containing sumatriptan succinate available in the UK and Europe (and the rest of the world). Sumatriptan succinate is now available as a generic version that is medically equivalent to Imigran, but Sumatriptan Generic is available at a much lower cost.</p>\r\n\r\n<h5>How does Imigran Work?</h5>\r\n\r\n<p>It is thought that the symptoms associated with a migraine might be due to the temporary widening of blood vessels in the brain. Imigran works by stimulating receptors called serotonin (or 5HT) receptors that are found in the brain, which causes the blood vessels in the brain to contract. By reversing the widening of these blood vessels, Imigran works to treat the cause of the migraine.</p>\r\n\r\n<h5>When should I take Imigran?</h5>\r\n\r\n<p>The triptan class of medications are used when simple analgesics are not effective and when migraines are experienced less frequently than 10 episodes each month. There are a number of different triptans available, and as each person is different, some triptans will work better than others for each individual. Imigran should be taken at the onset of a migraine. It should not be taken as a preventative medication, as it does not help to prevent migraines, rather it only treats them.</p>\r\n\r\n<h5>How do I take Imigran?</h5>\r\n\r\n<p>Imigran is not affected by food, so you can take it irrespective of your last meal. Take Imigran with some water. Take one dose of Imigran tablets at the onset of a migraine. Do not take another dose until at least two hours have passed, and only take a second dose if the first dose does not completely relieve your symptoms or your headache comes back. Do not take another dose if the first dose did not work at all, but you may take Imigran again for a future migraine.</p>\r\n\r\n<h5>Will I experience any side effects when I take Imigran?</h5>\r\n\r\n<p>All medications have the potential to cause side effects. However, the side effects experienced differ from individual to individual. Fortunately, Imigran is safe and effective for the majority of people who are eligible for treatment with it. Some common side effects, affecting less than 1 in 10 people, can include nausea, vomiting, tiredness or drowsiness, or dizziness. Speak to your doctor or pharmacist if you have any concerns about side effects.</p>', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 04:49:50', '2021-09-13 04:49:50'),
(226, 60, 'A6lY8a1631512255', 'Migraine Information', '<h5>What is a Migraine?</h5>\r\n\r\n<p>A migraine is a common condition, which affects millions of people across the UK. A migraine is characterized by a severe throbbing headache. Pain is usually felt at the front or side of the head. Approximately 20% of women and 7% of men experience migraines.</p>', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 04:50:55', '2021-09-13 04:50:55'),
(227, 60, '9ofq2L1631512283', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like any medicines, Imigran can cause side effects, but not everybody may experience them. Some symptoms may be caused by the migraine itself.</p>\r\n\r\n<p>Common side effects of Imigran include pain, heaviness, pressure or tightness in the chest, throat or other parts of the body, or unusual sensations, including numbness, tingling and warmth or cold. These effects may be intense but generally pass quickly. Some people also experience nausea, dry mouth and drowsiness. These side effects are usually mild and improve on their own.</p>', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 04:51:23', '2021-09-13 04:57:49'),
(228, 60, 'VgY1VS1631512311', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Pain-Killers</strong></p>\r\n\r\n<p>Over the counter pain-killers such as paracetamol, aspirin or nurofen may help to reduce the symptoms of migraines. They are most effective when taken as soon as the migraine starts.</p>\r\n\r\n<p><strong>Triptans</strong></p>\r\n\r\n<p>Triptans are medications that can help to reverse the changes in the brain that may cause migraines.</p>', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 04:51:51', '2021-09-13 04:51:51'),
(229, 60, 'sV7sHz1631512341', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/945/pil\">View patient information leaflet</a>.</p>', 5, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 04:52:21', '2021-09-13 04:52:21'),
(230, 61, '1GXXfG1631513145', 'Imigran Nasal Spray', '<h5>What Is Imigran Nasal Spray?</h5>\r\n\r\n<p>Imigran Nasal Spray is a popular migraine treatment, which belongs to a class of medications known as triptans. Triptans are not the same as pain killers, instead they work by reversing the changes in the brain which can cause migraines. By reversing these changes, Imigran Nasal Spray works to treat the cause of the migraine as well as reducing the symptoms.</p>\r\n\r\n<h5>How does Imigran Nasal Spray Work?</h5>\r\n\r\n<p>Imigran Nasal Spray works by stimulating receptors called serotonin (or 5HT) receptors that are found in the brain, which causes the blood vessels in the brain to contract. The narrowing of the blood vessels reverses the widening, which is thought to be one of the causes of migraines.</p>', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:05:45', '2021-09-13 05:05:45'),
(231, 61, 'JtG6Sl1631513179', 'Migraine Information', '<h5>What is a Migraine?</h5>\r\n\r\n<p>A migraine is a common condition, which affects millions of people across the UK. A migraine is characterized by a severe throbbing headache. Pain is usually felt at the front or side of the head. Approximately 20% of women and 7% of men experience migraines.</p>', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:06:19', '2021-09-13 05:06:19'),
(232, 61, 'CpKRMT1631513217', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like any medicines, Imigran Nasal Spray can cause side effects, but not everybody may experience them. Some symptoms may be caused by the migraine itself.</p>\r\n\r\n<p>Common side effects of Imigran Nasal Spray include pain, heaviness, pressure or tightness in the chest, throat or other parts of the body, or unusual sensations, including numbness, tingling and warmth or cold. These effects may be intense but generally pass quickly. Some people also experience nausea, dry mouth and drowsiness. These side effects are usually mild and improve on their own.</p>', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:06:57', '2021-09-13 05:06:57'),
(233, 61, '3U6rO21631513241', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Pain-Killers</strong></p>\r\n\r\n<p>Over the counter pain-killers such as paracetamol, aspirin or nurofen may help to reduce the symptoms of migraines. They are most effective when taken as soon as the migraine starts.</p>\r\n\r\n<p><strong>Triptans</strong></p>\r\n\r\n<p>Triptans are medications that can help to reverse the changes in the brain that may cause migraines.</p>', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:07:21', '2021-09-13 05:07:21'),
(234, 61, 'HPO2iU1631513265', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/7609/pil\">View patient information leaflet</a>.</p>', 5, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:07:45', '2021-09-13 05:07:45'),
(235, 62, '9a1Enw1631514077', 'Sumatriptan', '<h5>What Is Sumatriptan?</h5>\r\n\r\n<p>Sumatriptan Generic is a popular migraine treatment. It is the generic version of Imigran, and like Imigran it contains the active ingredient sumatriptan succinate. Sumatriptan belongs to a class of medications known as triptans. Triptans are different to painkilling medications, as they work to reverse the changes in the brain that are thought to induce a migraine attack. They also work to alleviate the symptoms associated with a migraine.</p>\r\n\r\n<h5>What is the difference between Imigran and Sumatriptan?</h5>\r\n\r\n<p>Imigran is the branded version of the generic medicine Sumatriptan. Generic medicines are medically equivalent to their branded version but are available at a lower price.</p>\r\n\r\n<h5>How does Sumatriptan Work?</h5>\r\n\r\n<p>Sumatriptan succinate is thought to reverse the temporary widening of blood vessels in the brain. The widening of these blood vessels is thought to contribute to a migraine attack. By stimulating receptors called serotonin (or 5HT) receptors found in the brain and therefore contracting the blood vessels, sumatriptan succinate works to treat the cause of a migraine, as well as helping to reduce any associated symptoms such as headache, nausea, vomiting and sensitivity to light or sound.</p>\r\n\r\n<h5>When should I take Sumatriptan?</h5>\r\n\r\n<p>Sumatriptan should be used when simple analgesics such as paracetamol, aspirin, ibuprofen or these simple analgesics combined with codeine are not effective. Sumatriptan can be used by people who experience less than 10 episodes of migraine each month. Sumatriptan should be taken at the beginning of a migraine, but it should not be taken to prevent a migraine, rather only to treat one.</p>\r\n\r\n<h5>How do I take Sumatriptan?</h5>\r\n\r\n<p>It does not matter if you take Sumatriptan with or without food. Take Sumatriptan with some water. One dose of Sumatriptan should be taken at the beginning of migraine onset. Wait for at least two hours after the first dose before taking a second dose. You should only take a second dose if the first dose was at least somewhat effective, but it did not completely relieve your migraine symptoms or your headache came back. You should not take a second Sumatriptan dose if the first dose did not work, but you can try taking Sumatriptan again for a future migraine.</p>\r\n\r\n<h5>Will I experience any side effects when I take Sumatriptan?</h5>\r\n\r\n<p>There is the potential for all medications to cause side effects. However, the particular side effects experienced will vary from person to person. Sumatriptan is safe and effective for the majority of people who are eligible for treatment with it. Some common side effects that may be associated with Sumatriptan can include nausea, vomiting, tiredness/drowsiness, or dizziness. These side effects affect less than 1 in 10 people. If you have any concerns about side effects, please talk to your doctor or pharmacist.</p>\r\n\r\n<h5>What is an Overuse headache and what should I do?</h5>\r\n\r\n<p>A medication overuse headache, or a rebound headache, can be caused by the overuse of the drugs used to treat migraines. This is why it is very important that you speak to your doctor if you need to take more than 10 doses of Sumatriptan tablets in a month. Your doctor may instead need to discuss prescribing you preventative medication that you can take regularly to help prevent migraines.</p>', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:21:17', '2021-09-13 05:21:17'),
(236, 62, 'ZunvPg1631514100', 'Migraine Information', '<h5>What is a Migraine?</h5>\r\n\r\n<p>A migraine is a common condition, which affects millions of people across the UK. A migraine is characterized by a severe throbbing headache. Pain is usually felt at the front or side of the head. Approximately 20% of women and 7% of men experience migraines.</p>', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:21:40', '2021-09-13 05:21:40');
INSERT INTO `kod_med_long_description` (`id`, `medicine_id`, `hash_id`, `title`, `description`, `display_order`, `status`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(237, 62, 'fpyDmF1631514133', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like any medicines, Imigran can cause side effects, but not everybody may experience them. Some symptoms may be caused by the migraine itself.</p>\r\n\r\n<p>Common side effects of Imigran include pain, heaviness, pressure or tightness in the chest, throat or other parts of the body, or unusual sensations, including numbness, tingling and warmth or cold. These effects may be intense but generally pass quickly. Some people also experience nausea, dry mouth and drowsiness. These side effects are usually mild and improve on their own.</p>', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:22:13', '2021-09-13 05:22:13'),
(238, 62, 'w0tvkC1631514162', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Pain-Killers</strong></p>\r\n\r\n<p>Over the counter pain-killers such as paracetamol, aspirin or nurofen may help to reduce the symptoms of migraines. They are most effective when taken as soon as the migraine starts.</p>\r\n\r\n<p><strong>Triptans</strong></p>\r\n\r\n<p>Triptans are medications that can help to reverse the changes in the brain that may cause migraines.</p>', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:22:42', '2021-09-13 05:22:42'),
(239, 62, '2hHGcY1631514184', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/1258/pil\">View patient information leaflet</a>.</p>', 5, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:23:04', '2021-09-13 05:23:04'),
(240, 63, 'GJMZ5g1631515029', 'Rizatriptan', '<h5>When should I take Rizatriptan?</h5>\r\n\r\n<p>Rizatriptan should be used when simple analgesics such as paracetamol, aspirin, ibuprofen or these simple analgesics combined with codeine are not effective. Rizatriptan can be used by people who experience less than 10 episodes of migraine each month. Rizatriptan should be taken at the beginning of a migraine, but it should not be taken to prevent a migraine, rather only to treat one.</p>\r\n\r\n<h5>How do I take Rizatriptan?</h5>\r\n\r\n<p>It does not matter if you take Rizatriptan with or without food. Take Rizatriptan with some water. One dose of Rizatriptan should be taken at the beginning of migraine onset. Taking this treatment with fizzy water can help it to work faster. If you experience an aura (visual disturbance), wait until this is over before taking Rizatriptan.</p>\r\n\r\n<p>If after 2 hours your migraine is not completely better, or has come back, you can take another tablet. Do not take more than 20mg Rizatriptan in 24 hours.</p>\r\n\r\n<p>You should only take a second dose if the first dose was at least somewhat effective, but it did not completely relieve your migraine symptoms or your headache came back. You should not take a second Rizatriptan dose if the first dose did not work, but you can try taking Rizatriptan again for a future migraine.</p>\r\n\r\n<h5>Will I experience any side effects when I take Rizatriptan?</h5>\r\n\r\n<p>There is the potential for all medications to cause side effects. However, the particular side effects experienced will vary from person to person. Rizatriptan is safe and effective for the majority of people who are eligible for treatment with it. Some common side effects that may be associated with Rizatriptan can include nausea, vomiting, tiredness/drowsiness, or dizziness. If you have any concerns about side effects, please talk to your doctor or pharmacist.</p>\r\n\r\n<h5>What is an Overuse headache and what should I do?</h5>\r\n\r\n<p>A medication overuse headache, or a rebound headache, can be caused by the overuse of the drugs used to treat migraines. This is why it is very important that you speak to your doctor if you need to take more than 10 doses of Rizatriptan tablets in a month. Your doctor may instead need to discuss prescribing you preventative medication that you can take regularly to help prevent migraines.</p>', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:37:09', '2021-09-13 05:37:09'),
(241, 63, '1vQ3o01631515053', 'Migraine Information', '<h5>What is a Migraine?</h5>\r\n\r\n<p>A migraine is a common condition, which affects millions of people across the UK. A migraine is characterized by a severe throbbing headache. Pain is usually felt at the front or side of the head. Approximately 20% of women and 7% of men experience migraines.</p>', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:37:33', '2021-09-13 05:37:33'),
(242, 63, 'IBakVY1631515071', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like any medicines, Imigran can cause side effects, but not everybody may experience them. Some symptoms may be caused by the migraine itself.</p>\r\n\r\n<p>Common side effects of Imigran include pain, heaviness, pressure or tightness in the chest, throat or other parts of the body, or unusual sensations, including numbness, tingling and warmth or cold. These effects may be intense but generally pass quickly. Some people also experience nausea, dry mouth and drowsiness. These side effects are usually mild and improve on their own.</p>', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:37:51', '2021-09-13 05:37:51'),
(243, 63, 'yFM68k1631515089', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Pain-Killers</strong></p>\r\n\r\n<p>Over the counter pain-killers such as paracetamol, aspirin or nurofen may help to reduce the symptoms of migraines. They are most effective when taken as soon as the migraine starts.</p>\r\n\r\n<p><strong>Triptans</strong></p>\r\n\r\n<p>Triptans are medications that can help to reverse the changes in the brain that may cause migraines.</p>', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:38:09', '2021-09-13 05:38:09'),
(244, 63, 'QpG0ul1631515111', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/9893/pil\">View patient information leaflet</a>.</p>', 5, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:38:31', '2021-09-13 05:38:31'),
(245, 64, '3CBGHa1631515546', 'Maxalt', '<h5>What Is Maxalt?</h5>\r\n\r\n<p>Maxalt belongs to a class of medicines called selective serotonin 5-HT1B/1D receptor agonists. Maxalt contains the active ingredient rizatriptan which is a type of triptan medication used for treating migraines. Maxalt is used to treat the headache phase of the migraine attack in adults.</p>\r\n\r\n<h5>How does Maxalt Work?</h5>\r\n\r\n<p>Maxalt works by stimulating receptors called serotonin (or 5HT) receptors that are found in the brain, which causes the blood vessels in the brain to contract. The narrowing of the blood vessels reverses the widening, which is thought to be one of the causes of migraines.</p>\r\n\r\n<h5>When should I take Maxalt?</h5>\r\n\r\n<p>Maxalt (Rizatriptan) should be used when simple analgesics such as paracetamol, aspirin, ibuprofen or these simple analgesics combined with codeine are not effective. Maxalt can be used by people who experience less than 10 episodes of migraine each month. Maxalt should be taken at the beginning of a migraine, but it should not be taken to prevent a migraine, rather only to treat one.</p>\r\n\r\n<h5>How do I take Maxalt?</h5>\r\n\r\n<p>It does not matter if you take Maxalt with or without food. Take Maxalt with some water. One dose of Maxalt should be taken at the beginning of migraine onset. Taking this treatment with fizzy water can help it to work faster. If you experience an aura (visual disturbance), wait until this is over before taking Maxalt.</p>\r\n\r\n<p>If after 2 hours your migraine is not completely better, or has come back, you can take another tablet. Do not take more than 20mg Maxalt in 24 hours.</p>\r\n\r\n<p>You should only take a second dose if the first dose was at least somewhat effective, but it did not completely relieve your migraine symptoms or your headache came back. You should not take a second Maxalt dose if the first dose did not work, but you can try taking Maxalt again for a future migraine.</p>\r\n\r\n<h5>Will I experience any side effects when I take Maxalt (Rizatriptan)?</h5>\r\n\r\n<p>There is the potential for all medications to cause side effects. However, the particular side effects experienced will vary from person to person. Maxalt is safe and effective for the majority of people who are eligible for treatment with it. Some common side effects that may be associated with Maxalt can include nausea, vomiting, tiredness/drowsiness, or dizziness. If you have any concerns about side effects, please talk to your doctor or pharmacist.</p>\r\n\r\n<h5>What is an Overuse headache and what should I do?</h5>\r\n\r\n<p>A medication overuse headache, or a rebound headache, can be caused by the overuse of the drugs used to treat migraines. This is why it is very important that you speak to your doctor if you need to take more than 10 doses of Maxalt tablets in a month. Your doctor may instead need to discuss prescribing you preventative medication that you can take regularly to help prevent migraines.</p>', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:45:46', '2021-09-13 05:45:46'),
(246, 64, 'U1r6gd1631515572', 'Migraine Information', '<h5>What is a Migraine?</h5>\r\n\r\n<p>A migraine is a common condition, which affects millions of people across the UK. A migraine is characterized by a severe throbbing headache. Pain is usually felt at the front or side of the head. Approximately 20% of women and 7% of men experience migraines.</p>', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:46:12', '2021-09-13 05:46:12'),
(247, 64, 'GPbkTQ1631515592', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like any medicines, Imigran can cause side effects, but not everybody may experience them. Some symptoms may be caused by the migraine itself.</p>\r\n\r\n<p>Common side effects of Imigran include pain, heaviness, pressure or tightness in the chest, throat or other parts of the body, or unusual sensations, including numbness, tingling and warmth or cold. These effects may be intense but generally pass quickly. Some people also experience nausea, dry mouth and drowsiness. These side effects are usually mild and improve on their own.</p>', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:46:32', '2021-09-13 05:46:32'),
(248, 64, 'SHdYue1631515613', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Pain-Killers</strong></p>\r\n\r\n<p>Over the counter pain-killers such as paracetamol, aspirin or nurofen may help to reduce the symptoms of migraines. They are most effective when taken as soon as the migraine starts.</p>\r\n\r\n<p><strong>Triptans</strong></p>\r\n\r\n<p>Triptans are medications that can help to reverse the changes in the brain that may cause migraines.</p>', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:46:53', '2021-09-13 05:46:53'),
(249, 64, 'oucf0P1631515639', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/7797/pil\" target=\"_blank\">View patient information leaflet</a>.</p>', 5, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:47:19', '2021-09-13 05:47:19'),
(250, 65, 'fyD3q51631516260', 'Maxalt Melt', '<h5>What Is Maxalt Melt?</h5>\r\n\r\n<p>Maxalt Melt&nbsp;belongs to a class of medicines called selective serotonin 5-HT1B/1D receptor agonists. Maxalt&nbsp;Melt contains the active ingredient rizatriptan which is a type of triptan medication used for treating migraines. Maxalt Melt is used to treat the headache phase of the migraine attack in adults.</p>\r\n\r\n<h5>How does Maxalt Melt Work?</h5>\r\n\r\n<p>Maxalt Melt works by stimulating receptors called serotonin (or 5HT) receptors that are found in the brain, which causes the blood vessels in the brain to contract. The narrowing of the blood vessels reverses the widening, which is thought to be one of the causes of migraines.</p>\r\n\r\n<h5>When should I take Maxalt Melt?</h5>\r\n\r\n<p>Maxalt Melt (Rizatriptan) should be used when simple analgesics such as paracetamol, aspirin, ibuprofen or these simple analgesics combined with codeine are not effective. Maxalt Melt can be used by people who experience less than 10 episodes of migraine each month. Maxalt Melt should be taken at the beginning of a migraine, but it should not be taken to prevent a migraine, rather only to treat one.</p>\r\n\r\n<h5>How do I take Maxalt Melt?</h5>\r\n\r\n<p>It does not matter if you take Maxalt Melt with or without food. Maxalt Melt (Rizatriptan lyophilisate) melts in the mouth so doesn’t need to be taken with water. One dose of Maxalt Melt should be taken at the beginning of migraine onset. If you experience an aura (visual disturbance), wait until this is over before taking Maxalt Melt.</p>\r\n\r\n<p>If after 2 hours your migraine is not completely better, or has come back, you can take another tablet. Do not take more than 20mg Maxalt Melt in 24 hours.</p>\r\n\r\n<p>You should only take a second dose if the first dose was at least somewhat effective, but it did not completely relieve your migraine symptoms or your headache came back. You should not take a second Maxalt Melt dose if the first dose did not work, but you can try taking Maxalt Melt again for a future migraine.</p>\r\n\r\n<h5>Will I experience any side effects when I take Maxalt Melt (Rizatriptan)?</h5>\r\n\r\n<p>There is the potential for all medications to cause side effects. However, the particular side effects experienced will vary from person to person. Maxalt Melt is safe and effective for the majority of people who are eligible for treatment with it. Some common side effects that may be associated with Maxalt Melt can include nausea, vomiting, tiredness/drowsiness, or dizziness. If you have any concerns about side effects, please talk to your doctor or pharmacist.</p>\r\n\r\n<h5>What is an Overuse headache and what should I do?</h5>\r\n\r\n<p>A medication overuse headache, or a rebound headache, can be caused by the overuse of the drugs used to treat migraines. This is why it is very important that you speak to your doctor if you need to take more than 10 doses of Maxalt Melt tablets in a month. Your doctor may instead need to discuss prescribing you preventative medication that you can take regularly to help prevent migraines.</p>', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:57:40', '2021-09-13 05:57:40'),
(251, 65, 'XPsQ2D1631516286', 'MIGRAINE INFORMATION', '<h5>What is a Migraine?</h5>\r\n\r\n<p>A migraine is a common condition, which affects millions of people across the UK. A migraine is characterized by a severe throbbing headache. Pain is usually felt at the front or side of the head. Approximately 20% of women and 7% of men experience migraines.</p>', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:58:06', '2021-09-13 05:58:06'),
(252, 65, 'MKMs5A1631516310', 'SIDE EFFECTS', '<h5>Side Effects</h5>\r\n\r\n<p>Like any medicines, Imigran can cause side effects, but not everybody may experience them. Some symptoms may be caused by the migraine itself.</p>\r\n\r\n<p>Common side effects of Imigran include pain, heaviness, pressure or tightness in the chest, throat or other parts of the body, or unusual sensations, including numbness, tingling and warmth or cold. These effects may be intense but generally pass quickly. Some people also experience nausea, dry mouth and drowsiness. These side effects are usually mild and improve on their own.</p>', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:58:30', '2021-09-13 05:58:30'),
(253, 65, 'DHhNvg1631516332', 'ALTERNATIVES', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Pain-Killers</strong></p>\r\n\r\n<p>Over the counter pain-killers such as paracetamol, aspirin or nurofen may help to reduce the symptoms of migraines. They are most effective when taken as soon as the migraine starts.</p>\r\n\r\n<p><strong>Triptans</strong></p>\r\n\r\n<p>Triptans are medications that can help to reverse the changes in the brain that may cause migraines.</p>', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:58:52', '2021-09-13 05:58:52'),
(254, 65, 'kciOP81631516350', 'INFORMATION LEAFLET', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/2781/pil\" target=\"_blank\">View patient information leaflet</a>.</p>', 5, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:59:10', '2021-09-13 05:59:10'),
(255, 66, 'L1gOS71631516795', 'Zomig', '<h5>What Is Zomig?</h5>\r\n\r\n<p>Zomig is a popular migraine treatment, which belongs to a class of medications known as triptans. Triptans are not the same as pain killers, instead they work by reversing the changes in the brain which can cause migraines. By reversing these changes, Zomig works to treat the cause of the migraine as well as reducing the symptoms.</p>\r\n\r\n<h5>How does Zomig Work?</h5>\r\n\r\n<p>Zomig works by stimulating receptors called serotonin (or 5HT) receptors that are found in the brain, which causes the blood vessels in the brain to contract. The narrowing of the blood vessels reverses the widening, which is thought to be one of the causes of migraines.</p>\r\n\r\n<h5>When should I take Zomig?</h5>\r\n\r\n<p>Zomig should be used when simple analgesics such as paracetamol, aspirin, ibuprofen or these simple analgesics combined with codeine are not effective. Zomig can be used by people who experience less than 10 episodes of migraine each month. Zomig should be taken at the beginning of a migraine, but it should not be taken to prevent a migraine, rather only to treat one.</p>\r\n\r\n<h5>How do I take Zomig?</h5>\r\n\r\n<p>It does not matter if you take Zomig with or without food. Take Zomig with some water. One dose of Zomig should be taken at the beginning of migraine onset. Taking this treatment with fizzy water can help it to work faster. If you experience an aura (visual disturbance), wait until this is over before taking Zomig.</p>\r\n\r\n<p>If after 2 hours your migraine is not completely better, or has come back, you can take another tablet. Do not take more than 10mg Zomig in 24 hours.</p>\r\n\r\n<p>You should only take a second dose if the first dose was at least somewhat effective, but it did not completely relieve your migraine symptoms or your headache came back. You should not take a second Zomig dose if the first dose did not work, but you can try taking Zomig again for a future migraine.</p>\r\n\r\n<h5>Will I experience any side effects when I take Zomig (Zolmitriptan)?</h5>\r\n\r\n<p>There is the potential for all medications to cause side effects. However, the particular side effects experienced will vary from person to person. Zomig is safe and effective for the majority of people who are eligible for treatment with it. Some common side effects that may be associated with Zomig can include nausea, vomiting, tiredness/drowsiness, or dizziness. If you have any concerns about side effects, please talk to your doctor or pharmacist.</p>\r\n\r\n<h5>What is an Overuse headache and what should I do?</h5>\r\n\r\n<p>A medication overuse headache, or a rebound headache, can be caused by the overuse of the drugs used to treat migraines. This is why it is very important that you speak to your doctor if you need to take more than 10 doses of Zomig tablets in a month. Your doctor may instead need to discuss prescribing you preventative medication that you can take regularly to help prevent migraines.</p>', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:06:35', '2021-09-13 06:06:35'),
(256, 66, '5SVe521631516858', 'Migraine Information', '<h5>What is a Migraine?</h5>\r\n\r\n<p>A migraine is a common condition, which affects millions of people across the UK. A migraine is characterized by a severe throbbing headache. Pain is usually felt at the front or side of the head. Approximately 20% of women and 7% of men experience migraines.</p>', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:07:38', '2021-09-13 06:07:38'),
(257, 66, 'EBtkfj1631516904', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like any medicines, Imigran can cause side effects, but not everybody may experience them. Some symptoms may be caused by the migraine itself.</p>\r\n\r\n<p>Common side effects of Imigran include pain, heaviness, pressure or tightness in the chest, throat or other parts of the body, or unusual sensations, including numbness, tingling and warmth or cold. These effects may be intense but generally pass quickly. Some people also experience nausea, dry mouth and drowsiness. These side effects are usually mild and improve on their own.</p>', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:08:24', '2021-09-13 06:08:24'),
(258, 66, 'tr1JbF1631516927', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Pain-Killers</strong></p>\r\n\r\n<p>Over the counter pain-killers such as paracetamol, aspirin or nurofen may help to reduce the symptoms of migraines. They are most effective when taken as soon as the migraine starts.</p>\r\n\r\n<p><strong>Triptans</strong></p>\r\n\r\n<p>Triptans are medications that can help to reverse the changes in the brain that may cause migraines.</p>', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:08:47', '2021-09-13 06:08:47'),
(259, 66, 'C4ZNTz1631516966', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/files/pil.1372.pdf\">View patient information leaflet</a>.</p>', 5, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:09:26', '2021-09-13 06:09:26'),
(260, 67, 'cSTukC1631517631', 'What is Zomig Rapimelt?', '<h5>What Is Zomig Rapimelt?</h5>\r\n\r\n<p>Zomig Rapimelt is a popular migraine treatment, which belongs to a class of medications known as triptans. Triptans are not the same as painkillers, instead they work by reversing the changes in the brain which can cause migraines. By reversing these changes, Zomig Rapimelt works to treat the cause of the migraine as well as reducing the symptoms.</p>\r\n\r\n<h5>How does Zomig Rapimelt Work?</h5>\r\n\r\n<p>Zomig Rapimelt works by stimulating receptors called serotonin (or 5HT) receptors that are found in the brain, which causes the blood vessels in the brain to contract. The narrowing of the blood vessels reverses the widening, which is thought to be one of the causes of migraines.</p>\r\n\r\n<h5>When should I take Zomig Rapimelt?</h5>\r\n\r\n<p>Zomig Rapimelt should be used when simple analgesics such as paracetamol, aspirin, ibuprofen or these simple analgesics combined with codeine are not effective. Zomig Rapimelt can be used by people who experience less than 10 episodes of migraine each month. Zomig Rapimelt should be taken at the beginning of a migraine, but it should not be taken to prevent a migraine, rather only to treat one.</p>\r\n\r\n<h5>How do I take Zomig Rapimelt?</h5>\r\n\r\n<p>Zomig Rapimelt- melts in the mouth so does not need to be taken with water. It does not matter if you take Zomig Rapimelt with or without food. One dose of Zomig Rapimelt should be taken at the beginning of migraine onset. If you experience an aura (visual disturbance), wait until this is over before taking Zomig Rapimelt.</p>\r\n\r\n<p>If after 2 hours your migraine is not completely better, or has come back, you can take another tablet. Do not take more than 10mg Zomig Rapimelt in 24 hours.</p>\r\n\r\n<p>You should only take a second dose if the first dose was at least somewhat effective, but it did not completely relieve your migraine symptoms or your headache came back. You should not take a second Zomig dose if the first dose did not work, but you can try taking Zomig Rapimelt again for a future migraine.</p>\r\n\r\n<h5>Will I experience any side effects when I take Zomig Rapimelt (Zolmitriptan)?</h5>\r\n\r\n<p>There is the potential for all medications to cause side effects. However, the particular side effects experienced will vary from person to person. Zomig Rapimelt is safe and effective for the majority of people who are eligible for treatment with it. Some common side effects that may be associated with Zomig Rapimelt can include nausea, vomiting, tiredness/drowsiness, or dizziness. If you have any concerns about side effects, please talk to your doctor or pharmacist.</p>\r\n\r\n<h5>What is an Overuse headache and what should I do?</h5>\r\n\r\n<p>A medication overuse headache, or a rebound headache, can be caused by the overuse of the drugs used to treat migraines. This is why it is very important that you speak to your doctor if you need to take more than 10 doses of Zomig Rapimelt tablets in a month. Your doctor may instead need to discuss prescribing you preventative medication that you can take regularly to help prevent migraines.</p>', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:20:31', '2021-09-13 06:20:31'),
(261, 67, 'uqW7D91631517652', 'Migraine Information', '<h5>What is a Migraine?</h5>\r\n\r\n<p>A migraine is a common condition, which affects millions of people across the UK. A migraine is characterized by a severe throbbing headache. Pain is usually felt at the front or side of the head. Approximately 20% of women and 7% of men experience migraines.</p>', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:20:52', '2021-09-13 06:20:52'),
(262, 67, 'ISSTOe1631517675', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like any medicines, Zomig Rapimelt can cause side effects, but not everybody may experience them. Some symptoms may be caused by the migraine itself.</p>\r\n\r\n<p>Common side effects of Zomig Rapimelt include pain, heaviness, pressure or tightness in the chest, throat or other parts of the body, or unusual sensations, including numbness, tingling and warmth or cold. These effects may be intense but generally pass quickly. Some people also experience nausea, dry mouth and drowsiness. These side effects are usually mild and improve on their own.</p>', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:21:15', '2021-09-13 06:21:15'),
(263, 67, '7q0W8l1631517703', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Pain-Killers</strong></p>\r\n\r\n<p>Over the counter pain-killers such as paracetamol, aspirin or nurofen may help to reduce the symptoms of migraines. They are most effective when taken as soon as the migraine starts.</p>\r\n\r\n<p><strong>Triptans</strong></p>\r\n\r\n<p>Triptans are medications that can help to reverse the changes in the brain that may cause migraines.</p>', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:21:43', '2021-09-13 06:21:43'),
(264, 67, 'hjxEZH1631517738', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/1531/pil\" target=\"_blank\">View patient information leaflet.</a></p>', 5, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:22:18', '2021-09-13 06:22:18'),
(265, 68, 'ry0Wqy1631518615', 'Zolmitriptan', '<h5>What Is Zolmitriptan?</h5>\r\n\r\n<p>Zolmitriptan is a popular migraine treatment, which belongs to a class of medications known as triptans. Triptans are not the same as pain killers, instead they work by reversing the changes in the brain which can cause migraines. By reversing these changes, Zolmitriptan works to treat the cause of the migraine as well as reducing the symptoms.</p>\r\n\r\n<h5>How does Zolmitriptan Work?</h5>\r\n\r\n<p>Zolmitriptan works by stimulating receptors called serotonin (or 5HT) receptors that are found in the brain, which causes the blood vessels in the brain to contract. The narrowing of the blood vessels reverses the widening, which is thought to be one of the causes of migraines.</p>\r\n\r\n<h5>When should I take Zolmitriptan?</h5>\r\n\r\n<p>Zolmitriptan should be used when simple analgesics such as paracetamol, aspirin, ibuprofen or these simple analgesics combined with codeine are not effective. Zolmitriptan can be used by people who experience less than 10 episodes of migraine each month. Zolmitriptan should be taken at the beginning of a migraine, but it should not be taken to prevent a migraine, rather only to treat one.</p>\r\n\r\n<h5>How do I take Zolmitriptan?</h5>\r\n\r\n<p>It does not matter if you take Zolmitriptan with or without food. Take Zolmitriptan with some water. One dose of Zolmitriptan should be taken at the beginning of migraine onset. Taking this treatment with fizzy water can help it to work faster. If you experience an aura (visual disturbance), wait until this is over before taking Zolmitriptan.</p>\r\n\r\n<p>If after 2 hours your migraine is not completely better, or has come back, you can take another tablet. Do not take more than 10mg Zolmitriptan in 24 hours.</p>\r\n\r\n<p>You should only take a second dose if the first dose was at least somewhat effective, but it did not completely relieve your migraine symptoms or your headache came back. You should not take a second Zolmitriptan dose if the first dose did not work, but you can try taking Zolmitriptan again for a future migraine.</p>\r\n\r\n<h5>Will I experience any side effects when I take Zolmitriptan?</h5>\r\n\r\n<p>There is the potential for all medications to cause side effects. However, the particular side effects experienced will vary from person to person. Zolmitriptan is safe and effective for the majority of people who are eligible for treatment with it. Some common side effects that may be associated with Zolmitriptan can include nausea, vomiting, tiredness/drowsiness, or dizziness. If you have any concerns about side effects, please talk to your doctor or pharmacist.</p>\r\n\r\n<h5>What is an Overuse headache and what should I do?</h5>\r\n\r\n<p>A medication overuse headache, or a rebound headache, can be caused by the overuse of the drugs used to treat migraines. This is why it is very important that you speak to your doctor if you need to take more than 10 doses of Zolmitriptan tablets in a month. Your doctor may instead need to discuss prescribing you preventative medication that you can take regularly to help prevent migraines.</p>', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:36:55', '2021-09-13 06:36:55'),
(266, 68, 'tpuWMt1631518641', 'Migraine Information', '<h5>What is a Migraine?</h5>\r\n\r\n<p>A migraine is a common condition, which affects millions of people across the UK. A migraine is characterized by a severe throbbing headache. Pain is usually felt at the front or side of the head. Approximately 20% of women and 7% of men experience migraines.</p>', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:37:21', '2021-09-13 06:37:21'),
(267, 68, 'H0XPV21631518671', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like any medicines, Imigran can cause side effects, but not everybody may experience them. Some symptoms may be caused by the migraine itself.</p>\r\n\r\n<p>Common side effects of Imigran include pain, heaviness, pressure or tightness in the chest, throat or other parts of the body, or unusual sensations, including numbness, tingling and warmth or cold. These effects may be intense but generally pass quickly. Some people also experience nausea, dry mouth and drowsiness. These side effects are usually mild and improve on their own.</p>', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:37:51', '2021-09-13 06:37:51'),
(268, 68, 'qEjWiK1631518698', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Pain-Killers</strong></p>\r\n\r\n<p>Over the counter pain-killers such as paracetamol, aspirin or nurofen may help to reduce the symptoms of migraines. They are most effective when taken as soon as the migraine starts.</p>\r\n\r\n<p><strong>Triptans</strong></p>\r\n\r\n<p>Triptans are medications that can help to reverse the changes in the brain that may cause migraines.</p>', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:38:18', '2021-09-13 06:39:08'),
(269, 68, 'szaojI1631518739', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/3968/pil\">View patient information leaflet</a>.</p>', 5, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:38:59', '2021-09-13 06:38:59'),
(270, 69, 'TObYQ81631519309', 'Zomig Nasal Spray', '<h5>What is Zomig Nasal Spray?</h5>\r\n\r\n<p>Zomig, or Zolmitriptan, is a branded medication for migraine relief. It contains the active ingredient sumatriptan succinate, making it similarly effective and fast-acting to other migraine treatments like Imigran and Sumatriptan.</p>\r\n\r\n<p>Zomig belongs to a group of medicines called triptans (5-HT receptor agonists). Triptans actively work to reverse changes in the brain which can cause migraines. Unlike painkillers such as Ibuprofen and Paracetamol, triptans like Zomig tackle the underlying issue rather than simply masking the pain of a migraine.</p>\r\n\r\n<h5>Why Zomig Nasal Spray?</h5>\r\n\r\n<p>It is thought that one of the causes of migraine attacks is a swelling of the blood vessels in the brain. Zomig Nasal Spray works by stimulating the serotonin receptors (or 5-HT receptors) found in the brain in order to narrow the blood vessels and ease pressure.</p>\r\n\r\n<p>This process allows Zomig Nasal Spray to treat migraines at the source whilst also treating symptoms such as nausea, light and noise sensitivity and shoulder stiffness.</p>\r\n\r\n<p>The use of a nasal spray means that Zomig is available for even those individuals who have trouble taking tablets. Relying too much on oral head pain medication for extended periods of time can result in ‘rebound headaches’ — head pain caused by the medication. The use of a nasal spray can help lower your risk of suffering these.</p>', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:48:29', '2021-09-13 06:50:30'),
(271, 69, 'QT03M71631519463', 'How to use', '<h5>How to use Zomig Nasal Spray</h5>\r\n\r\n<p>5mg or 0.1ml is considered one dose of Zomig Nasal Spray. The maximum daily dose of Zomig Nasal Spray is 10 milligrams, meaning the spray should not be used more than twice in a 24 hour period.</p>\r\n\r\n<p>Spray 5mg of Zomig Nasal Spray into one nostril as soon as possible after the onset of your migraine symptoms. Do not use the spray before symptoms have appeared as it is not a preventative medication.</p>\r\n\r\n<p>If your migraine symptoms persist or recur after some time, repeat the dose of the spray. This should be done a minimum of two hours after your initial dose of Zomig Nasal Spray.</p>\r\n\r\n<p>Before taking Zomig Nasal Spray, please consult the enclosed patient information leaflet.</p>\r\n\r\n<h5>Choosing strength</h5>\r\n\r\n<p>When using Zomig Nasal Spray, it is advised that you start with a lower dose of 2.5mg. If necessary, this dose may be doubled. You may require the standard 5mg dose of Zomig Nasal Spray if you feel like the lower strength dose is not controlling your symptoms sufficiently.</p>', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:51:03', '2021-09-13 06:51:03'),
(272, 69, '9xDVTV1631519490', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Not everybody will experience side effects when using Zomig Nasal Spray, but in a small number of cases side effects do occur. These side effects are usually mild and improve on their own without any intervention.</p>\r\n\r\n<p>Common side effects from Zomig Nasal Spray include pain, heaviness, pressure or tightness in the throat or chest, and sensations such as numbness or tingling. You may also experience flushing, dizziness and short term increases in blood pressure.</p>\r\n\r\n<p>For complete information regarding the possible side effects of Zolmitriptan, consult the patient information leaflet included.</p>\r\n\r\n<h5>Precautions</h5>\r\n\r\n<p>If you are taking any other non-prescription or prescription medication, consult your GP before taking Zomig Nasal Spray. You should also avoid drinking moderate to excessive amounts of alcohol whilst using the migraine relief medication, as this can increase your chances of suffering side effects from the treatment.</p>', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:51:30', '2021-09-13 06:56:53'),
(273, 69, 'vjuJ6V1631519533', 'information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/product/6712/pil\" target=\"_blank\">View patient information leaflet.</a></p>', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:52:13', '2021-09-13 06:52:13'),
(274, 70, '9ASqdB1631520438', 'Zolmitriptan orodispersible', '<h5>What Is Zolmitriptan ?</h5>\r\n\r\n<p>Zolmitriptan is a popular migraine treatment, which belongs to a class of medications known as triptans. Triptans are not the same as painkillers, instead they work by reversing the changes in the brain which can cause migraines. By reversing these changes, Zolmitriptan works to treat the cause of the migraine as well as reducing the symptoms.</p>\r\n\r\n<h5>How does Zolmitriptan Work?</h5>\r\n\r\n<p>Zolmitriptan works by stimulating receptors called serotonin (or 5HT) receptors that are found in the brain, which causes the blood vessels in the brain to contract. The narrowing of the blood vessels reverses the widening, which is thought to be one of the causes of migraines.</p>\r\n\r\n<h5>When should I take Zolmitriptan?</h5>\r\n\r\n<p>Zolmitriptan should be used when simple analgesics such as paracetamol, aspirin, ibuprofen or these simple analgesics combined with codeine are not effective. Zolmitriptan can be used by people who experience less than 10 episodes of migraine each month. Zolmitriptan should be taken at the beginning of a migraine, but it should not be taken to prevent a migraine, rather only to treat one.</p>\r\n\r\n<h5>How do I take Zolmitriptan?</h5>\r\n\r\n<p>Zomig Orodispersible - melts in the mouth so does not need to be taken with water. It does not matter if you take Zolmitriptan with or without food. One dose of Zolmitriptan should be taken at the beginning of migraine onset. If you experience an aura (visual disturbance), wait until this is over before taking Zolmitriptan.</p>\r\n\r\n<p>If after 2 hours your migraine is not completely better, or has come back, you can take another tablet. Do not take more than 10mg Zolmitriptan in 24 hours.</p>\r\n\r\n<p>You should only take a second dose if the first dose was at least somewhat effective, but it did not completely relieve your migraine symptoms or your headache came back. You should not take a second Zolmitriptan dose if the first dose did not work, but you can try taking Zolmitriptan again for a future migraine.</p>\r\n\r\n<h5>Will I experience any side effects when I take Zolmitriptan?</h5>\r\n\r\n<p>There is the potential for all medications to cause side effects. However, the particular side effects experienced will vary from person to person. Zolmitriptan is safe and effective for the majority of people who are eligible for treatment with it. Some common side effects that may be associated with Zolmitriptan can include nausea, vomiting, tiredness/drowsiness, or dizziness. If you have any concerns about side effects, please talk to your doctor or pharmacist.</p>\r\n\r\n<h5>What is an Overuse headache and what should I do?</h5>\r\n\r\n<p>A medication overuse headache, or a rebound headache, can be caused by the overuse of the drugs used to treat migraines. This is why it is very important that you speak to your doctor if you need to take more than 10 doses of Zolmitriptan tablets in a month. Your doctor may instead need to discuss prescribing you preventative medication that you can take regularly to help prevent migraines.</p>', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:07:18', '2021-09-13 07:07:18'),
(275, 70, 'dA101r1631520460', 'Migraine Information', '<h5>What is a Migraine?</h5>\r\n\r\n<p>A migraine is a common condition, which affects millions of people across the UK. A migraine is characterized by a severe throbbing headache. Pain is usually felt at the front or side of the head. Approximately 20% of women and 7% of men experience migraines.</p>', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:07:40', '2021-09-13 07:07:40'),
(276, 70, '96AX6X1631520485', 'Side Effects', '<h5>Side Effects</h5>\r\n\r\n<p>Like any medicines, Zolmitriptan orodispersible can cause side effects, but not everybody may experience them. Some symptoms may be caused by the migraine itself.</p>\r\n\r\n<p>Common side effects of Zolmitriptan orodispersible include pain, heaviness, pressure or tightness in the chest, throat or other parts of the body, or unusual sensations, including numbness, tingling and warmth or cold. These effects may be intense but generally pass quickly. Some people also experience nausea, dry mouth and drowsiness. These side effects are usually mild and improve on their own.</p>', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:08:05', '2021-09-13 07:08:05'),
(277, 70, 'M8rkIm1631520513', 'Alternatives', '<h5>Alternatives</h5>\r\n\r\n<p><strong>Pain-Killers</strong></p>\r\n\r\n<p>Over the counter pain-killers such as paracetamol, aspirin or nurofen may help to reduce the symptoms of migraines. They are most effective when taken as soon as the migraine starts.</p>\r\n\r\n<p><strong>Triptans</strong></p>\r\n\r\n<p>Triptans are medications that can help to reverse the changes in the brain that may cause migraines.</p>', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:08:33', '2021-09-13 07:08:33'),
(278, 70, 'aiyztk1631520539', 'Information Leaflet', '<h5>Patient Information Leaflet</h5>\r\n\r\n<p>Always read the patient information leaflet before commencing treatment. <a href=\"https://www.medicines.org.uk/emc/files/pil.9926.pdf\" target=\"_blank\">View patient information leaflet.</a></p>', 5, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:08:59', '2021-09-13 07:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `kod_med_medicines`
--

CREATE TABLE `kod_med_medicines` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `raf_id` int(11) DEFAULT NULL,
  `raf_type` enum('MEDR','CATR') DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `seo_url_slug` varchar(255) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `price_guarantee_note` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` enum('OTC','POM') DEFAULT NULL,
  `generic_branded` enum('G','B') DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_med_medicines`
--

INSERT INTO `kod_med_medicines` (`id`, `hash_id`, `category_id`, `raf_id`, `raf_type`, `title`, `seo_url_slug`, `sub_heading`, `price_guarantee_note`, `description`, `type`, `generic_branded`, `display_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bgwzsX1631012176', 1, NULL, NULL, 'Viagra', 'viagra', 'Buy Viagra Online', '', 'Buy Viagra Online', NULL, 'B', 1, '1', '2021-09-07 09:56:16', '2021-09-14 07:00:51'),
(2, '1E81Rk1631013367', 1, NULL, NULL, 'Generic sildenafil', 'generic-sildenafil', 'Safe, Effective Treatment', '', 'Sildenafil is an affordable treatment used for the treatment of erectile dysfunction.', NULL, 'G', 2, '1', '2021-09-07 10:16:07', '2021-09-14 07:00:39'),
(3, 'OywURw1631017105', 1, NULL, NULL, 'Cialis', 'cialis', 'Safe, Effective Treatment', '', 'Safe, Effective Treatment', NULL, 'G', 3, '1', '2021-09-07 11:18:25', '2021-09-14 07:00:22'),
(4, 'UVlZ0L1631019512', 1, NULL, NULL, 'Tadalafil (Generic Cialis)', 'tadalafil-generic-cialis', 'Safe, Effective Treatment', '', 'Safe, Effective Treatment', NULL, 'G', 4, '1', '2021-09-07 11:58:32', '2021-09-14 07:00:03'),
(5, 'H83QF41631021713', 1, NULL, NULL, 'Viagra Connect', 'viagra-connect', 'Safe, Effective Treatment', '', 'Viagra Connect is an affordable treatment used for the treatment of erectile dysfunction.', NULL, 'B', 5, '1', '2021-09-07 12:35:13', '2021-09-14 07:01:24'),
(6, '1jHUNC1631078768', 1, NULL, NULL, 'Spedra', 'spedra', 'Safe, Effective Treatment', '', 'Spedra is a modern medication for the fast treatment of erectile dysfunction.', NULL, 'G', 6, '1', '2021-09-08 04:26:08', '2021-09-14 06:59:52'),
(7, '3OQBwl1631080850', 1, NULL, NULL, 'Levitra', 'levitra', 'Safe, Effective Treatment', '', 'Levitra is an effective medicine for treating erectile dysfunction.', NULL, 'B', 7, '0', '2021-09-08 05:00:50', '2021-09-14 06:59:38'),
(8, 'cDM10J1631085586', 1, NULL, NULL, 'Vardenafil (Generic Levitra)', 'vardenafil-generic-levitra', 'Safe, Effective Treatment', '', 'Vardenafil is an effective medicine for treating erectile dysfunction.', NULL, 'G', 8, '1', '2021-09-08 06:19:46', '2021-09-14 06:59:26'),
(9, 'qcxq2B1631087400', 1, NULL, NULL, 'Vitaros', 'vitaros', 'Vitaros Cream', '', '', NULL, 'G', 8, '1', '2021-09-08 06:50:00', '2021-09-08 06:50:33'),
(10, 'WmerA21631088008', 1, NULL, NULL, 'VaxAid Vacuum Pump', 'vaxaid-vacuum-pump', 'Safe, Effective Treatment', '', 'New hydrotherapy system for men suffering from erectile dysfunction', NULL, 'G', 9, '0', '2021-09-08 07:00:08', '2021-09-14 06:59:13'),
(11, 'ElqyWC1631088557', 9, NULL, NULL, 'Omeprazole', 'omeprazole', 'Effective Acid Reflux Treatment', '', 'Omeprazole is an effective medicine for the treatment of acid reflux.', NULL, 'G', 1, '1', '2021-09-08 07:09:17', '2021-09-14 07:03:31'),
(12, '0HpNd61631089648', 9, NULL, NULL, 'Losec', 'losec', 'Effective Acid Reflux Treatment', '', 'Losec is an effective medicine for the treatment of acid reflux.', NULL, 'B', 2, '1', '2021-09-08 07:27:28', '2021-09-14 07:03:12'),
(13, 'fOQSEo1631090204', 9, NULL, NULL, 'Lansoprazole', 'lansoprazole', 'Effective Acid Reflux Treatment', '', 'Lansoprazole is an effective medicine for the treatment of acid reflux.', NULL, 'G', 3, '1', '2021-09-08 07:36:44', '2021-09-14 07:03:00'),
(14, '55PgWO1631090780', 9, NULL, NULL, 'Esomeprazole', 'esomeprazole', 'Effective Acid Reflux Treatment', '', 'Esomeprazole is an effective medicine for the treatment of acid reflux.', NULL, 'B', 4, '1', '2021-09-08 07:46:20', '2021-09-14 07:02:46'),
(15, '3ogoCW1631091287', 9, NULL, NULL, 'Pantoprazole', 'pantoprazole', 'Effective Acid Reflux Treatment', '', 'Pantoprazole is an effective medicine for the treatment of acid reflux.', NULL, 'G', 5, '1', '2021-09-08 07:54:47', '2021-09-14 07:02:24'),
(16, 'LYas3N1631095757', 9, NULL, NULL, 'Pyrocalm', 'pyrocalm', 'Effective Acid Reflux Treatment', '', 'Pyrocalm is an effective medicine for the treatment of acid reflux.', NULL, 'B', 6, '1', '2021-09-08 09:09:17', '2021-09-14 07:02:12'),
(17, 'JQZYLx1631096233', 9, NULL, NULL, 'Nexium', 'nexium', 'Acid Reflux Nexium', '', '', NULL, 'G', 7, '1', '2021-09-08 09:17:13', '2021-09-08 09:17:39'),
(18, 'c1DgIc1631096782', 3, NULL, NULL, 'Propecia', 'propecia', 'Hair Loss Treatment', '', 'Propecia is clinically proven to effectively treat male pattern baldness.', NULL, 'B', 1, '1', '2021-09-08 09:26:22', '2021-09-14 07:04:47'),
(19, '0HvS3P1631097674', 3, NULL, NULL, 'Finasteride', 'finasteride', 'Hair Loss Treatment', '', 'Propecia is clinically proven to effectively treat male pattern baldness.', NULL, 'G', 2, '1', '2021-09-08 09:41:14', '2021-09-14 07:04:34'),
(20, 'W6QRHk1631099210', 3, NULL, NULL, 'Regaine Extra Strength Foam', 'regaine-extra-strength-foam', 'Minoxidil 5% foam', '', 'Effective treatment for male pattern hair loss', NULL, 'G', 3, '1', '2021-09-08 10:06:50', '2021-09-14 07:04:24'),
(21, 'VunGlL1631100229', 3, NULL, NULL, 'Regaine Extra Strength Solution', 'regaine-extra-strength-solution', 'Regaine Extra Strength Solution', '', 'Effective treatment for male pattern hair loss', NULL, 'G', 4, '1', '2021-09-08 10:23:49', '2021-09-14 07:04:14'),
(22, 'pinRV81631101769', 13, NULL, NULL, 'Aciclovir', 'aciclovir', 'Genital Herpes Treatment', '', 'Fast, Effective treatment for current and future outbreaks of herpes.', NULL, 'G', 1, '1', '2021-09-08 10:49:29', '2021-09-14 07:06:06'),
(23, '1IzNaX1631102508', 13, NULL, NULL, 'Valaciclovir (Generic Valtrex)', 'valaciclovir-generic-valtrex', 'Genital Herpes Treatment', '', 'Fast, Effective treatment for current and future outbreaks of herpes.', NULL, 'G', 2, '1', '2021-09-08 11:01:48', '2021-09-14 07:05:56'),
(24, 'DVRRRB1631103447', 13, NULL, NULL, 'Famciclovir', 'famciclovir', 'Genital Herpes Treatment', '', 'Fast, effective treatment for current and future outbreaks of herpes.', NULL, 'G', 3, '1', '2021-09-08 11:17:27', '2021-09-14 07:05:46'),
(25, 'EkdSJV1631104147', 13, NULL, NULL, 'Valtrex', 'valtrex', 'Genital Herpes Treatment', '', 'Fast, Effective treatment for current and future outbreaks of herpes.', NULL, 'B', 4, '1', '2021-09-08 11:29:07', '2021-09-14 07:05:35'),
(26, 'cMD9hJ1631105510', 7, NULL, NULL, 'Epiduo Gel', 'epiduo-gel', 'Acne Treatment', '', 'Epiduo is a dual action prescription acne treatment containing benzoyl peroxide and adaplene.', NULL, 'G', 1, '1', '2021-09-08 11:51:50', '2021-09-14 07:07:27'),
(27, '5FdbHp1631106089', 7, NULL, NULL, 'Isotrex (Isotretinoin)', 'isotrex-isotretinoin', 'Acne Treatment', '', '<p>Isotretinoin is a topical retinoid that is used in the treatment of acne.</p>', NULL, 'G', 2, '0', '2021-09-08 12:01:29', '2021-09-08 12:02:26'),
(28, 'p7PZiE1631106746', 7, NULL, NULL, 'Differin', 'differin', 'Acne Treatment', '', 'Differin (Adapalene) is a gel that is used in the treatment of moderate to severe acne.', NULL, 'G', 3, '1', '2021-09-08 12:12:26', '2021-09-14 07:07:17'),
(29, 'wfYvRj1631107544', 7, NULL, NULL, 'Treclin', 'treclin', '', '', '', NULL, NULL, 4, '1', '2021-09-08 12:25:44', '2021-09-08 12:37:44'),
(30, 'D32KYS1631108345', 7, NULL, NULL, 'Acnecide', 'acnecide', 'Acne Treatment', '', '', NULL, 'G', 5, '1', '2021-09-08 12:39:05', '2021-09-08 12:40:35'),
(31, 'NZRLre1631163834', 7, NULL, NULL, 'Duac', 'duac', 'Duac', '', '', NULL, 'G', 6, '1', '2021-09-09 04:03:54', '2021-09-09 04:12:09'),
(32, 'HUdoJy1631164499', 7, NULL, NULL, 'Finacea', 'finacea', 'Finacea', '', '', NULL, 'G', 6, '1', '2021-09-09 04:14:59', '2021-09-09 04:15:23'),
(33, 'z6NACZ1631165337', 7, NULL, NULL, 'Doxycyline', 'doxycyline', 'Doxycyline', '', '', NULL, 'G', 7, '1', '2021-09-09 04:28:57', '2021-09-09 04:29:18'),
(34, 'XQ8Szl1631165712', 5, NULL, NULL, 'Telfast', 'telfast', 'Prescription Strength Anti-Histamines', '', 'Telfast (fexofenadine) is a fast effective treatment for hayfever symptoms.', NULL, 'B', 1, '1', '2021-09-09 04:35:12', '2021-09-14 07:08:50'),
(35, 'u68gtO1631166492', 5, NULL, NULL, 'Fexofenadine', 'fexofenadine', 'Prescription Strength Anti-Histamines', '', 'Telfast (fexofenadine) is a fast effective treatment for hayfever symptoms.', NULL, 'G', 2, '1', '2021-09-09 04:48:12', '2021-09-14 07:08:24'),
(36, 'VFL4si1631168449', 5, NULL, NULL, 'Nasonex', 'nasonex', 'Hay Fever Treatment', '', 'Nasonex is a nasal spray that contains that active ingredient mometasone furoate and is used to help reduce the symptoms of hay fever.', NULL, 'B', 3, '1', '2021-09-09 05:20:49', '2021-09-14 07:08:34'),
(37, 'hSE2OD1631169032', 5, NULL, NULL, 'Mometasone Furoate', 'mometasone-furoate', 'Hay Fever Treatment', '', 'Mometasone is the generic version of Nasonex and is a steroid nasal spray indicated for use in adults to treat the symptoms of hayfever (seasonal allergic rhinitis).', NULL, 'G', 4, '1', '2021-09-09 05:30:32', '2021-09-14 07:08:08'),
(38, '6WZs5M1631169459', 5, NULL, NULL, 'EpiPen', 'epipen', 'EpiPen', '', '', NULL, 'G', 5, '1', '2021-09-09 05:37:39', '2021-09-09 05:38:04'),
(39, 'gtmsIG1631170139', 16, NULL, NULL, 'Aciclovir', 'aciclovir', 'Cold Sore Treatment', '', 'Aciclovir is an ‘antiviral’ medicine which means it is designed to act against viruses. Aciclovir is specifically designed to treat the herpes simplex virus, as well as some other closely related viruses, such as the virus that caused chicken pox.', NULL, 'G', 1, '1', '2021-09-09 05:48:59', '2021-09-14 07:32:08'),
(40, 'Aw5A161631171039', 16, NULL, NULL, 'Valaciclovir', 'valaciclovir', 'Cold Sore Treatment', '', 'Valaciclovir is an antiviral medicine which stops the infecting virus from reproducing.', NULL, 'G', 2, '1', '2021-09-09 06:03:59', '2021-09-14 07:09:37'),
(41, 'Hxpky81631171614', 16, NULL, NULL, 'Valtrex', 'valtrex', 'Cold Sore Treatment', '', 'Valaciclovir is an antiviral medicine which stops the infecting virus from reproducing.', NULL, 'B', 3, '1', '2021-09-09 06:13:34', '2021-09-14 07:09:28'),
(42, 'orXyAz1631172236', 17, NULL, NULL, 'Malarone', 'malarone', 'Anti-Malaria Tablets', '', 'Malarone is a modern, effective medicine for preventing malaria.', NULL, 'G', 1, '1', '2021-09-09 06:23:56', '2021-09-14 07:10:44'),
(43, 'k06OTi1631175985', 17, NULL, NULL, 'Generic Malarone', 'generic-malarone', 'Anti-Malaria Tablets', '<p>Malarone is a modern, effective medicine for preventing malaria.</p>', '', NULL, 'G', 2, '1', '2021-09-09 07:26:25', '2021-09-09 07:26:59'),
(44, 'lwcoY51631176818', 15, NULL, NULL, 'Tamiflu', 'tamiflu', 'Flu Treatment and Prevention', '', 'Tamiflu is an anti-viral medication used to treat or prevent the flu (influenza virus). Tamiflu is currently the only licensed medication that has been clinically proven to reduce the duration of a flu outbreak. Please note, Tamiflu is not effective at treating or preventing Covid-19.', NULL, 'G', 1, '1', '2021-09-09 07:40:18', '2021-09-14 07:11:26'),
(45, 'daUdxc1631177136', 15, NULL, NULL, 'Paracetamol', 'paracetamol', 'Safe, Effective Treatment', '', 'Paracetamol is used to treat mild to moderate pain, such as headache, toothache, colds, and period pain. It can also be used to help lower a high temperature.', NULL, 'G', 2, '1', '2021-09-09 07:45:36', '2021-09-14 07:11:17'),
(46, 'h11O3v1631177649', 2, NULL, NULL, 'Priligy', 'priligy', 'Premature Ejaculation Pills', '', 'Priligy is a modern medication that can treat premature ejaculation and help you last up to 3x longer.', NULL, 'G', 1, '1', '2021-09-09 07:54:09', '2021-09-14 07:11:58'),
(47, 'mOJ5Tl1631184747', 2, NULL, NULL, 'Priligy test', 'priligy-test', '', '', '', NULL, NULL, 1, '0', '2021-09-09 09:52:27', '2021-09-09 09:55:46'),
(48, 'Le0te31631185186', 2, NULL, NULL, 'EMLA', 'emla', 'EMLA CREAM', '', '', NULL, 'G', 2, '1', '2021-09-09 09:59:46', '2021-09-09 10:00:11'),
(49, 'OxpqSW1631186231', 4, NULL, NULL, 'Saxenda', 'saxenda', 'saxenda', '', 'Saxenda', NULL, 'G', 1, '1', '2021-09-09 10:17:11', '2021-09-14 07:12:32'),
(50, 'ksb7G51631187642', 8, NULL, NULL, 'Orlistat', 'orlistat', 'Buy Weight Loss Treatment', '', 'Orlistat is the only medicine currently licensed in the EU to help you lose weight. Orlistat prevents your body from absorbing the fat from the food you eat. By reducing the amount of fat that is absorbed, Orlistat is clinically proven to help you lose up to 50% more weight than with dieting alone.', NULL, 'G', 1, '1', '2021-09-09 10:40:42', '2021-09-14 07:13:32'),
(51, 'tFkR4C1631188777', 8, NULL, NULL, 'Xenical', 'xenical', 'Effective Weight Loss Pills', '', 'Xenical is a prescription medication which has been clinically proven to help you lose weight.', NULL, 'B', 2, '1', '2021-09-09 10:59:37', '2021-09-14 07:13:22'),
(52, 'QDcV4v1631189508', 6, NULL, NULL, 'Norethisterone', 'norethisterone', 'Delay your Period up to 17 days', '', 'Norethisterone can be used to delay your period by up to 17 days.', NULL, 'G', 1, '1', '2021-09-09 11:11:48', '2021-09-14 07:14:23'),
(53, '9LNeGi1631190106', 12, NULL, NULL, 'Ventolin Asthma Inhaler', 'ventolin-asthma-inhaler', 'Asthma Reliever Inhaler', '', 'Ventolin inhalers for the fast, effective treatment of asthma.', NULL, 'G', 1, '1', '2021-09-09 11:21:46', '2021-09-14 07:18:04'),
(54, 'UBISK01631190343', 12, NULL, NULL, 'Symbicort Turbohaler', 'symbicort-turbohaler', 'Symbicort Turbohaler', '', '', NULL, 'G', 2, '1', '2021-09-09 11:25:43', '2021-09-09 11:26:06'),
(55, 'ACHTcE1631190852', 12, NULL, NULL, 'Seretide Evohaler', 'seretide-evohaler', 'Seretide Evohaler', '', '', NULL, 'G', 3, '1', '2021-09-09 11:34:12', '2021-09-09 11:34:35'),
(56, '1yLgoI1631191925', 14, NULL, NULL, 'Aldara', 'aldara', 'Fast-Acting Genital Warts Treatment', '', 'Fast-Acting Genital Warts Treatment', NULL, 'G', 1, '1', '2021-09-09 11:52:05', '2021-09-14 06:57:44'),
(57, 'ep8l3A1631192328', 14, NULL, NULL, 'Warticon Solution', 'warticon-solution', 'Fast-Acting Genital Warts Treatment', '', 'Fast-Acting Genital Warts Treatment', NULL, 'G', 2, '1', '2021-09-09 11:58:48', '2021-09-14 06:57:34'),
(58, 'Mj65PD1631192827', 14, NULL, NULL, 'Warticon Cream', 'warticon-cream', 'Warticon Cream', '', '', NULL, 'G', 3, '1', '2021-09-09 12:07:07', '2021-09-09 12:12:48'),
(59, 'EQZfAZ1631193677', 11, NULL, NULL, 'Champix', 'champix', 'Stop Smoking Treatment', '', 'Champix is an effective medicine which can double your chance of quitting smoking.', NULL, 'G', 1, '1', '2021-09-09 12:21:17', '2021-09-14 09:32:38'),
(60, '9BKqvQ1631511789', 10, NULL, NULL, 'Imigran', 'imigran', 'Fast, Effective Migraine Treatment', '', 'Fast, Effective Migraine Treatment', NULL, 'B', 1, '1', '2021-09-13 04:43:09', '2021-09-14 07:17:25'),
(61, 'DnhoTy1631512755', 10, NULL, NULL, 'Imigran Nasal Spray', 'imigran-nasal-spray', 'Fast-Acting Migraine Treatment', '', 'Fast, Effective Migraine Treatment', NULL, 'G', 2, '1', '2021-09-13 04:59:15', '2021-09-14 07:17:16'),
(62, '9aZA4t1631513545', 10, NULL, NULL, 'Sumatriptan', 'sumatriptan', 'Fast-Acting Migraine Treatment', '', 'Fast, Effective Migraine Treatment', NULL, 'G', 3, '1', '2021-09-13 05:12:25', '2021-09-14 07:16:13'),
(63, '4swwGn1631514701', 10, NULL, NULL, 'Rizatriptan', 'rizatriptan', 'Fast-Acting Migraine Treatment', '', 'Fast, Effective Migraine Treatment', NULL, 'G', 4, '1', '2021-09-13 05:31:41', '2021-09-14 07:15:58'),
(64, 'crRjyz1631515336', 10, NULL, NULL, 'Maxalt', 'maxalt', 'Fast-Acting Migraine Treatment', '', 'Fast, Effective Migraine Treatment', NULL, 'G', 5, '1', '2021-09-13 05:42:16', '2021-09-14 07:15:48'),
(65, 'U9f6B71631516040', 10, NULL, NULL, 'Maxalt melt', 'maxalt-melt', 'Maxalt melt', '', '', NULL, 'G', 6, '1', '2021-09-13 05:54:00', '2021-09-13 05:54:23'),
(66, 'l5R9ee1631516524', 10, NULL, NULL, 'Zomig', 'zomig', 'Fast-Acting Migraine Treatment', '', 'Fast-Acting Migraine Treatment', NULL, 'G', 7, '1', '2021-09-13 06:02:04', '2021-09-14 07:15:36'),
(67, 'kFAAGf1631517271', 10, NULL, NULL, 'Zomig Rapimelt', 'zomig-rapimelt', 'Zomig Rapimelt', '', '', NULL, 'G', 8, '1', '2021-09-13 06:14:31', '2021-09-13 06:14:54'),
(68, 'nXMwx91631518042', 10, NULL, NULL, 'Zolmitriptan', 'zolmitriptan', 'Zolmitriptan', '', '', NULL, 'G', 9, '1', '2021-09-13 06:27:22', '2021-09-13 06:28:12'),
(69, '8gqJ7i1631519156', 10, NULL, NULL, 'Zomig Nasal Spray', 'zomig-nasal-spray', 'Zomig 5mg Nasal Spray', '', '', NULL, 'G', 10, '1', '2021-09-13 06:45:56', '2021-09-13 06:46:36'),
(70, 'WL5Akr1631520016', 10, NULL, NULL, 'Zolmitriptan orodispersible', 'zolmitriptan-orodispersible', 'Zolmitriptan orodispersible', '', '', NULL, 'G', 11, '1', '2021-09-13 07:00:16', '2021-09-13 07:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `kod_med_meta_tags`
--

CREATE TABLE `kod_med_meta_tags` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_keywords` varchar(500) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_med_meta_tags`
--

INSERT INTO `kod_med_meta_tags` (`id`, `hash_id`, `medicine_id`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`, `created_by_ip`, `modified_by_ip`) VALUES
(1, 'luXEg51631013002', 1, 'Viagra', 'Viagra', 'Viagra', '2021-09-07 10:10:02', '2021-09-07 10:10:02', '115.186.141.51', '115.186.141.51'),
(2, 'TK4wzy1631016774', 2, 'Generic sildenafil', 'Generic sildenafil', 'Generic sildenafil', '2021-09-07 11:12:54', '2021-09-07 11:12:54', '115.186.141.51', '115.186.141.51'),
(3, '8i353A1631018970', 3, 'Cialis', 'Cialis', 'Cialis', '2021-09-07 11:49:30', '2021-09-07 11:49:30', '115.186.141.51', '115.186.141.51'),
(4, 'dT8Qto1631021358', 4, 'Tadalafil (Generic Cialis)', 'Tadalafil (Generic Cialis)', 'Tadalafil (Generic Cialis)', '2021-09-07 12:29:18', '2021-09-07 12:29:18', '115.186.141.51', '115.186.141.51'),
(5, 'fwNhIc1631023001', 5, 'Viagra Connect', 'Viagra Connect', 'Viagra Connect', '2021-09-07 12:56:41', '2021-09-07 12:56:41', '115.186.141.51', '115.186.141.51'),
(6, 'YEDjLi1631080499', 6, 'Spedra', 'Spedra', 'Spedra', '2021-09-08 04:54:59', '2021-09-08 04:54:59', '101.50.109.72', '101.50.109.72'),
(7, 'Wv5rBp1631082178', 7, 'Levitra', 'Levitra', 'Levitra', '2021-09-08 05:22:58', '2021-09-08 05:22:58', '101.50.109.72', '101.50.109.72'),
(8, 'cH3klk1631087014', 8, 'Vardenafil (Generic Levitra)', 'Vardenafil (Generic Levitra)', 'Vardenafil (Generic Levitra)', '2021-09-08 06:43:34', '2021-09-08 06:43:34', '101.50.109.72', '101.50.109.72'),
(9, 'kmtfHB1631088913', 11, 'Omeprazole', 'Omeprazole', 'Omeprazole', '2021-09-08 07:15:13', '2021-09-08 07:15:13', '101.50.109.72', '101.50.109.72'),
(10, 'o3Om041631090126', 12, 'Losec', 'Losec', 'Losec', '2021-09-08 07:35:26', '2021-09-08 07:35:26', '101.50.109.72', '101.50.109.72'),
(11, 'SzVSnN1631090584', 13, 'Zoton Fastab/Lansoprazole', 'Zoton Fastab/Lansoprazole', 'Zoton Fastab/Lansoprazole', '2021-09-08 07:43:04', '2021-09-08 07:43:04', '101.50.109.72', '101.50.109.72'),
(12, 'bIG8bq1631091088', 14, 'Nexium (Esomeprazole)', 'Nexium (Esomeprazole)', 'Nexium (Esomeprazole)', '2021-09-08 07:51:28', '2021-09-08 07:51:28', '101.50.109.72', '101.50.109.72'),
(13, 'Fs8jkV1631091583', 15, 'Pantoprazole', 'Pantoprazole', 'Pantoprazole', '2021-09-08 07:59:43', '2021-09-08 07:59:43', '101.50.109.72', '101.50.109.72'),
(14, '7Ueboh1631096054', 16, 'Pyrocalm', 'Pyrocalm', 'Pyrocalm', '2021-09-08 09:14:14', '2021-09-08 09:14:14', '101.50.109.72', '101.50.109.72'),
(15, 'hAh6jj1631097315', 18, 'Propecia', 'Propecia', 'Propecia', '2021-09-08 09:35:15', '2021-09-08 09:35:15', '101.50.109.72', '101.50.109.72'),
(16, 'bENcHk1631098748', 19, 'Finasteride', 'Finasteride', 'Finasteride', '2021-09-08 09:59:08', '2021-09-08 09:59:08', '101.50.109.72', '101.50.109.72'),
(17, 'PrqSAs1631100044', 20, 'Regaine Foam', 'Regaine Foam', 'Regaine Foam', '2021-09-08 10:20:44', '2021-09-08 10:20:44', '101.50.109.72', '101.50.109.72'),
(18, 'ARvLoJ1631100990', 21, 'Regaine Extra Strength Solution', 'Regaine Extra Strength Solution', 'Regaine Extra Strength Solution', '2021-09-08 10:36:30', '2021-09-08 10:36:30', '101.50.109.72', '101.50.109.72'),
(19, 'cmf2xp1631102352', 22, 'Aciclovir', 'Aciclovir', 'Aciclovir', '2021-09-08 10:59:12', '2021-09-08 10:59:12', '101.50.109.72', '101.50.109.72'),
(20, 'vvEFAD1631103278', 23, 'Valaciclovir (Generic Valtrex)', 'Valaciclovir (Generic Valtrex)', 'Valaciclovir (Generic Valtrex)', '2021-09-08 11:14:38', '2021-09-08 11:14:38', '101.50.109.72', '101.50.109.72'),
(21, 'Rgclju1631103828', 24, 'Famciclovir', 'Famciclovir', 'Famciclovir', '2021-09-08 11:23:48', '2021-09-08 11:23:48', '101.50.109.72', '101.50.109.72'),
(22, 'PWNKBw1631105180', 25, 'Valtrex', 'Valtrex', 'Valtrex', '2021-09-08 11:46:20', '2021-09-08 11:46:20', '101.50.109.72', '101.50.109.72'),
(23, 'qE3Hlf1631105904', 26, 'Epiduo Gel', 'Epiduo Gel', 'Epiduo Gel', '2021-09-08 11:58:24', '2021-09-08 11:58:24', '101.50.109.72', '101.50.109.72'),
(24, 'kntN6q1631106458', 27, 'Isotrex (Isotretinoin)', 'Isotrex (Isotretinoin)', 'Isotrex (Isotretinoin)', '2021-09-08 12:07:38', '2021-09-08 12:07:38', '101.50.109.72', '101.50.109.72'),
(25, '4vIrP61631107372', 28, 'Differin', 'Differin', 'Differin', '2021-09-08 12:22:52', '2021-09-08 12:22:52', '101.50.109.72', '101.50.109.72'),
(26, 'D8wXAV1631108222', 29, 'Treclin', 'Treclin', 'Treclin', '2021-09-08 12:37:02', '2021-09-08 12:37:02', '101.50.109.72', '101.50.109.72'),
(27, '2Dw7Fy1631164747', 32, 'Finacea', 'Finacea', 'Finacea', '2021-09-09 04:19:07', '2021-09-09 04:19:07', '115.186.141.11', '115.186.141.11'),
(28, '4q52jP1631165561', 33, 'Doxycyline', 'Doxycyline', 'Doxycyline', '2021-09-09 04:32:41', '2021-09-09 04:32:41', '115.186.141.11', '115.186.141.11'),
(29, 'XMJn5t1631166157', 34, 'Telfast', 'Telfast', 'Telfast', '2021-09-09 04:42:37', '2021-09-09 04:42:37', '115.186.141.11', '115.186.141.11'),
(30, 'rX4oie1631166957', 35, 'Fexofenadine', 'Fexofenadine', 'Fexofenadine', '2021-09-09 04:55:57', '2021-09-09 04:55:57', '115.186.141.11', '115.186.141.11'),
(31, '9jUQ2o1631168773', 36, 'Nasonex', 'Nasonex', 'Nasonex', '2021-09-09 05:26:13', '2021-09-09 05:26:13', '115.186.141.11', '115.186.141.11'),
(32, 'SoFP9k1631169415', 37, 'Mometasone Furoate', 'Mometasone Furoate', 'Mometasone Furoate', '2021-09-09 05:36:55', '2021-09-09 05:36:55', '115.186.141.11', '115.186.141.11'),
(33, '2hQ8J61631169811', 38, 'EpiPen', 'EpiPen', 'EpiPen', '2021-09-09 05:43:31', '2021-09-09 05:43:31', '115.186.141.11', '115.186.141.11'),
(34, 'aMSuqy1631170626', 39, 'Aciclovir', 'Aciclovir', 'Aciclovir', '2021-09-09 05:57:06', '2021-09-09 05:57:06', '115.186.141.11', '115.186.141.11'),
(35, 'rW8wig1631171462', 40, 'Valaciclovir', 'Valaciclovir', 'Valaciclovir', '2021-09-09 06:11:02', '2021-09-09 06:11:02', '115.186.141.11', '115.186.141.11'),
(36, 'O3yi1V1631172103', 41, 'Valtrex', 'Valtrex', 'Valtrex', '2021-09-09 06:21:43', '2021-09-09 06:21:43', '115.186.141.11', '115.186.141.11'),
(37, '0qphsG1631175787', 42, 'Malarone', 'Malarone', 'Malarone', '2021-09-09 07:23:07', '2021-09-09 07:23:07', '115.186.141.11', '115.186.141.11'),
(38, '1GwnGa1631176543', 43, 'Generic Malarone', 'Generic Malarone', 'Generic Malarone', '2021-09-09 07:35:43', '2021-09-09 07:35:43', '115.186.141.11', '115.186.141.11'),
(39, '2BP7F91631177078', 44, 'Tamiflu', 'Tamiflu', 'Tamiflu', '2021-09-09 07:44:38', '2021-09-09 07:44:38', '115.186.141.11', '115.186.141.11'),
(40, 'PxZ16P1631177513', 45, 'Paracetamol', 'Paracetamol', 'Paracetamol', '2021-09-09 07:51:53', '2021-09-09 07:51:53', '115.186.141.11', '115.186.141.11'),
(41, 'Y9rW2L1631184425', 46, 'Premature Ejaculation Pills', 'Premature Ejaculation Pills', 'Premature Ejaculation Pills', '2021-09-09 09:47:05', '2021-09-09 09:47:05', '115.186.141.11', '115.186.141.11'),
(42, 'yYslH21631186039', 48, 'EMLA', 'EMLA', 'EMLA', '2021-09-09 10:13:59', '2021-09-09 10:13:59', '115.186.141.11', '115.186.141.11'),
(43, 'FGpsZz1631187340', 49, 'Saxenda weight loss pens', 'Saxenda weight loss pens', 'Saxenda weight loss pens', '2021-09-09 10:35:40', '2021-09-09 10:35:40', '115.186.141.11', '115.186.141.11'),
(44, '59BjC81631188462', 50, 'Orlistat', 'Orlistat', 'Orlistat', '2021-09-09 10:54:22', '2021-09-09 10:54:22', '115.186.141.11', '115.186.141.11'),
(45, 'Ly6b7E1631189142', 51, 'xenical', 'xenical', 'xenical', '2021-09-09 11:05:42', '2021-09-09 11:05:42', '115.186.141.11', '115.186.141.11'),
(46, 'QmlhG81631189877', 52, 'Norethisterone', 'Norethisterone', 'Norethisterone', '2021-09-09 11:17:57', '2021-09-09 11:17:57', '115.186.141.11', '115.186.141.11'),
(47, '2fmDaN1631190311', 53, 'Ventolin Asthma Inhaler', 'Ventolin Asthma Inhaler', 'Ventolin Asthma Inhaler', '2021-09-09 11:25:11', '2021-09-09 11:25:11', '115.186.141.11', '115.186.141.11'),
(48, '2CV22q1631190729', 54, 'Symbicort Turbohaler', 'Symbicort Turbohaler', 'Symbicort Turbohaler', '2021-09-09 11:32:09', '2021-09-09 11:32:09', '115.186.141.11', '115.186.141.11'),
(49, 'RC9nG31631191388', 55, 'Seretide Evohaler', 'Seretide Evohaler', 'Seretide Evohaler', '2021-09-09 11:43:08', '2021-09-09 11:43:08', '115.186.141.11', '115.186.141.11'),
(50, 'YQ7UaJ1631192286', 56, 'Aldara', 'Aldara', 'Aldara', '2021-09-09 11:58:06', '2021-09-09 11:58:06', '115.186.141.11', '115.186.141.11'),
(51, 'xBqA4j1631192793', 57, 'Warticon', 'Warticon', 'Warticon', '2021-09-09 12:06:33', '2021-09-09 12:06:33', '115.186.141.11', '115.186.141.11'),
(52, 'OsxfdP1631193110', 58, 'Warticon Cream', 'Warticon Cream', 'Warticon Cream', '2021-09-09 12:11:50', '2021-09-09 12:11:50', '115.186.141.11', '115.186.141.11'),
(53, 'zToQzd1631194498', 59, 'Champix', 'Champix', 'Champix', '2021-09-09 12:34:58', '2021-09-09 12:34:58', '115.186.141.11', '115.186.141.11'),
(54, 'K4JG5g1631512524', 60, 'Imigran', 'Imigran', 'Imigran', '2021-09-13 04:55:24', '2021-09-13 04:55:24', '101.50.108.104', '101.50.108.104'),
(55, 'vcEvFA1631513374', 61, 'Imigran Nasal Spray', 'Imigran Nasal Spray', 'Imigran Nasal Spray', '2021-09-13 05:09:34', '2021-09-13 05:09:34', '101.50.108.104', '101.50.108.104'),
(56, '4tBbHr1631514306', 62, 'Sumatriptan', 'Sumatriptan', 'Sumatriptan', '2021-09-13 05:25:06', '2021-09-13 05:25:06', '101.50.108.104', '101.50.108.104'),
(57, 'MPi9g61631515145', 63, 'Rizatriptan', 'Rizatriptan', 'Rizatriptan', '2021-09-13 05:39:05', '2021-09-13 05:39:05', '101.50.108.104', '101.50.108.104'),
(58, 'I52ZPq1631515677', 64, 'Maxalt', 'Maxalt', 'Maxalt', '2021-09-13 05:47:57', '2021-09-13 05:47:57', '101.50.108.104', '101.50.108.104'),
(59, 'wUDOyq1631516405', 65, 'Maxalt melt', 'Maxalt melt', 'Maxalt melt', '2021-09-13 06:00:05', '2021-09-13 06:00:05', '101.50.108.104', '101.50.108.104'),
(60, 'LJt4id1631517023', 66, 'Zomig', 'Zomig', 'Zomig', '2021-09-13 06:10:23', '2021-09-13 06:10:23', '101.50.108.104', '101.50.108.104'),
(61, 'MOtl3T1631517842', 67, 'Zomig Rapimelt', 'Zomig Rapimelt', 'Zomig Rapimelt', '2021-09-13 06:24:02', '2021-09-13 06:24:02', '101.50.108.104', '101.50.108.104'),
(62, 'pmomlq1631518817', 68, 'Zolmitriptan', 'Zolmitriptan', 'Zolmitriptan', '2021-09-13 06:40:17', '2021-09-13 06:40:17', '101.50.108.104', '101.50.108.104'),
(63, 'q3QwqX1631519599', 69, 'Zomig Nasal Spray', 'Zomig Nasal Spray', 'Zomig Nasal Spray', '2021-09-13 06:53:19', '2021-09-13 06:53:19', '101.50.108.104', '101.50.108.104'),
(64, 'lrjpdi1631520770', 70, 'Zolmitriptan orodispersible', 'Zolmitriptan orodispersible', 'Zolmitriptan orodispersible', '2021-09-13 07:12:50', '2021-09-13 07:12:50', '101.50.108.104', '101.50.108.104');

-- --------------------------------------------------------

--
-- Table structure for table `kod_med_pricing`
--

CREATE TABLE `kod_med_pricing` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `strength_id` int(11) DEFAULT NULL,
  `quantity_id` int(11) DEFAULT NULL,
  `qty_allowed` int(11) DEFAULT 1,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `discount_price` double(10,2) DEFAULT 0.00,
  `created_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_ip` varchar(60) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_med_pricing`
--

INSERT INTO `kod_med_pricing` (`id`, `hash_id`, `medicine_id`, `strength_id`, `quantity_id`, `qty_allowed`, `price`, `discount_price`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(1, '6ChGv91631012569', 1, 1, 1, 1, 25.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:02:49', '2021-09-07 10:02:49'),
(2, 'iOsywK1631012598', 1, 1, 2, 2, 45.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:03:18', '2021-09-07 10:03:18'),
(3, 'lEocIO1631012617', 1, 1, 3, 3, 60.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:03:37', '2021-09-07 10:03:37'),
(4, 'slzdtw1631012649', 1, 1, 4, 1, 75.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:04:09', '2021-09-07 10:04:09'),
(5, '0rZcxF1631014213', 2, 4, 5, 1, 10.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:30:13', '2021-09-07 10:30:13'),
(6, 'JOPllf1631014323', 2, 4, 6, 1, 19.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:32:03', '2021-09-07 10:32:03'),
(7, 'ySkqeU1631014340', 2, 4, 7, 1, 28.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:32:20', '2021-09-07 10:32:20'),
(8, 'QO0How1631014354', 2, 4, 8, 1, 37.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:32:34', '2021-09-07 10:32:34'),
(9, 'OyHmc61631014395', 2, 4, 9, 1, 55.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:33:15', '2021-09-07 10:33:15'),
(10, '9BrH8z1631014418', 2, 4, 10, 1, 64.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:33:38', '2021-09-07 10:33:38'),
(11, 'O64hnP1631014439', 2, 4, 11, 1, 73.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:33:59', '2021-09-07 10:33:59'),
(12, 'cXZby51631014453', 2, 4, 12, 1, 87.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:34:13', '2021-09-07 10:34:13'),
(13, 'K4pKrr1631014486', 2, 5, 13, 1, 15.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:34:46', '2021-09-07 10:34:46'),
(14, 'Sls0lx1631014506', 2, 5, 14, 1, 28.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:35:06', '2021-09-07 10:35:06'),
(15, 'RdBtSb1631014529', 2, 5, 15, 1, 37.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 10:35:29', '2021-09-07 10:35:29'),
(16, 'kIt1um1631016111', 2, 5, 16, 1, 46.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:01:51', '2021-09-07 11:01:51'),
(17, 'BJ34jf1631016126', 2, 5, 17, 1, 55.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:02:06', '2021-09-07 11:02:06'),
(18, 'WZdGjk1631016154', 2, 5, 18, 1, 64.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:02:34', '2021-09-07 11:02:34'),
(19, 'dlEgjx1631016169', 2, 5, 19, 1, 73.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:02:49', '2021-09-07 11:02:49'),
(20, '5hZfhM1631016222', 2, 5, 20, 1, 110.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:03:42', '2021-09-07 11:03:42'),
(21, 'MQg5IF1631016266', 2, 6, 21, 1, 20.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:04:26', '2021-09-07 11:04:26'),
(22, 'w5LM3Q1631016278', 2, 6, 22, 1, 35.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:04:38', '2021-09-07 11:04:38'),
(23, 'M4X6q01631016292', 2, 6, 23, 1, 48.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:04:52', '2021-09-07 11:04:52'),
(24, 'OF2Kxo1631016310', 2, 6, 24, 1, 57.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:05:10', '2021-09-07 11:05:10'),
(25, 'iFpbQD1631016333', 2, 6, 25, 1, 66.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:05:33', '2021-09-07 11:05:33'),
(26, 'mRoTW51631016347', 2, 6, 26, 1, 75.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:05:47', '2021-09-07 11:05:47'),
(27, 'QKei7z1631016368', 2, 6, 27, 1, 84.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:06:08', '2021-09-07 11:06:08'),
(28, 'HiqwiZ1631016387', 2, 6, 28, 1, 120.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:06:27', '2021-09-07 11:06:27'),
(29, 'R7SSNR1631018060', 3, 7, 29, 1, 70.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:34:20', '2021-09-07 11:34:20'),
(30, 'M2rGc11631018081', 3, 7, 31, 1, 136.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:34:41', '2021-09-07 11:34:41'),
(31, 'ejASty1631018094', 3, 7, 32, 1, 195.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:34:54', '2021-09-07 11:34:54'),
(32, 'UeeBHq1631018134', 3, 8, 30, 1, 70.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:35:34', '2021-09-07 11:35:34'),
(33, 'UyGHAP1631018147', 3, 8, 33, 1, 136.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:35:47', '2021-09-07 11:35:47'),
(34, 'TCbAmP1631018168', 3, 8, 34, 1, 195.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:36:08', '2021-09-07 11:36:08'),
(35, 'MQffQ31631018214', 3, 9, 35, 1, 40.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:36:54', '2021-09-07 11:36:54'),
(36, 'g9NYXo1631018227', 3, 9, 36, 1, 80.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:37:07', '2021-09-07 11:37:07'),
(37, 'BsqIYl1631018238', 3, 9, 37, 1, 120.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:37:18', '2021-09-07 11:37:18'),
(38, 'SZQJ2r1631018259', 3, 9, 38, 1, 160.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:37:39', '2021-09-07 11:37:39'),
(39, '2376TP1631018294', 3, 9, 39, 1, 230.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:38:14', '2021-09-07 11:38:14'),
(40, 'EiRG6P1631018308', 3, 9, 40, 1, 270.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:38:28', '2021-09-07 11:38:28'),
(41, 'i406lJ1631018332', 3, 9, 41, 1, 300.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:38:52', '2021-09-07 11:38:52'),
(42, 'zEdByV1631018349', 3, 9, 42, 1, 590.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:39:09', '2021-09-07 11:39:09'),
(43, 'Xxk4U91631018465', 3, 10, 43, 1, 40.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:41:05', '2021-09-07 11:41:05'),
(44, 'Wl2sUz1631018479', 3, 10, 44, 1, 80.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:41:19', '2021-09-07 11:41:19'),
(45, 'dFGdSo1631018490', 3, 10, 45, 1, 120.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:41:30', '2021-09-07 11:41:30'),
(46, 'QKrhvA1631018503', 3, 10, 46, 1, 160.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:41:43', '2021-09-07 11:41:43'),
(47, 'ZgqDYY1631018516', 3, 10, 47, 1, 230.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:41:56', '2021-09-07 11:41:56'),
(48, 'ggvSdE1631018538', 3, 10, 48, 1, 270.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:42:18', '2021-09-07 11:42:18'),
(49, 'edLKVz1631018559', 3, 10, 49, 1, 300.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:42:39', '2021-09-07 11:42:39'),
(50, 'DNDYMQ1631018570', 3, 10, 50, 1, 590.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 11:42:50', '2021-09-07 11:42:50'),
(51, 'aYWlv61631020347', 4, 11, 51, 1, 25.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:12:27', '2021-09-07 12:12:27'),
(52, '0ei9RE1631020358', 4, 11, 52, 1, 50.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:12:38', '2021-09-07 12:12:38'),
(53, 'pMClbN1631020371', 4, 11, 53, 1, 70.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:12:51', '2021-09-07 12:12:51'),
(54, 'aKsQEd1631020410', 4, 12, 54, 1, 30.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:13:30', '2021-09-07 12:13:30'),
(55, 'LMrkD51631020425', 4, 12, 55, 1, 60.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:13:45', '2021-09-07 12:13:45'),
(56, 'NiYCVs1631020440', 4, 12, 56, 1, 85.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:14:00', '2021-09-07 12:14:00'),
(57, 'N4vOSp1631020502', 4, 13, 58, 1, 20.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:15:02', '2021-09-07 12:15:02'),
(58, '6omnDZ1631020516', 4, 13, 59, 1, 30.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:15:16', '2021-09-07 12:15:16'),
(59, 'TSteDL1631020527', 4, 13, 60, 1, 40.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:15:27', '2021-09-07 12:15:27'),
(60, 'ZQ6zSD1631020538', 4, 13, 61, 1, 50.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:15:38', '2021-09-07 12:15:38'),
(61, 'mIbIE81631020553', 4, 13, 62, 1, 70.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:15:53', '2021-09-07 12:15:53'),
(62, 'ROeEHe1631020569', 4, 13, 63, 1, 80.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:16:09', '2021-09-07 12:16:09'),
(63, 'H6BLSu1631020579', 4, 13, 64, 1, 90.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:16:19', '2021-09-07 12:16:19'),
(64, 'nIfxjH1631020588', 4, 13, 65, 1, 135.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:16:28', '2021-09-07 12:17:05'),
(65, 'OpGsis1631020894', 4, 14, 57, 1, 20.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:21:34', '2021-09-07 12:21:34'),
(66, '0zS9iq1631020919', 4, 14, 66, 1, 30.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:21:59', '2021-09-07 12:21:59'),
(67, '1WVIec1631020929', 4, 14, 67, 1, 50.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:22:09', '2021-09-07 12:22:09'),
(68, 'qfLzEz1631020945', 4, 14, 68, 1, 70.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:22:25', '2021-09-07 12:22:25'),
(69, 'oJnnDy1631020956', 4, 14, 69, 1, 90.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:22:36', '2021-09-07 12:22:36'),
(70, 'mSH7am1631020968', 4, 14, 70, 1, 135.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:22:48', '2021-09-07 12:23:09'),
(71, 'IG5MiH1631021966', 5, 15, 71, 1, 20.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:39:26', '2021-09-07 12:39:26'),
(72, 'xOeI9S1631021975', 5, 15, 72, 1, 35.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:39:35', '2021-09-07 12:39:35'),
(73, 'uxPoh61631021990', 5, 15, 73, 1, 52.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:39:50', '2021-09-07 12:39:50'),
(74, 'buK4QW1631022001', 5, 15, 74, 1, 65.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:40:01', '2021-09-07 12:40:01'),
(75, 'WfUvnZ1631022019', 5, 15, 75, 1, 95.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:40:19', '2021-09-07 12:40:19'),
(76, 'Ol2I4e1631022030', 5, 15, 76, 1, 113.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:40:30', '2021-09-07 12:40:30'),
(77, 'r1zRBM1631022049', 5, 15, 77, 1, 120.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:40:49', '2021-09-07 12:40:49'),
(78, 'lOVAUZ1631022065', 5, 15, 78, 1, 220.00, 0.00, '115.186.141.51', '115.186.141.51', '2021-09-07 12:41:05', '2021-09-07 12:41:05'),
(79, 'cM8t2q1631079452', 6, 16, 79, 1, 24.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:37:32', '2021-09-08 04:37:32'),
(80, 'ZxdSfw1631079461', 6, 16, 80, 1, 48.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:37:41', '2021-09-08 04:37:41'),
(81, 'YPtDCh1631079470', 6, 16, 81, 1, 64.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:37:50', '2021-09-08 04:37:50'),
(82, 'Z1mlQo1631079490', 6, 16, 82, 1, 85.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:38:10', '2021-09-08 04:38:10'),
(83, '43Kveb1631079503', 6, 16, 83, 1, 127.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:38:23', '2021-09-08 04:38:23'),
(84, 'svOHif1631079539', 6, 16, 84, 1, 160.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:38:59', '2021-09-08 04:38:59'),
(85, 'x8fqrq1631079619', 6, 17, 85, 1, 28.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:40:19', '2021-09-08 04:40:19'),
(86, 'ZoPuhO1631079635', 6, 17, 86, 1, 54.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:40:35', '2021-09-08 04:43:24'),
(87, 'Wolenc1631079647', 6, 17, 87, 1, 79.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:40:47', '2021-09-08 04:40:47'),
(88, 'VwxdR51631079668', 6, 17, 88, 1, 99.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:41:08', '2021-09-08 04:41:08'),
(89, 'jShiMw1631079680', 6, 17, 89, 1, 147.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:41:20', '2021-09-08 04:41:20'),
(90, 'iQZwBg1631079692', 6, 17, 90, 1, 190.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:41:32', '2021-09-08 04:41:32'),
(91, 'bDqZ4f1631079726', 6, 18, 91, 1, 36.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:42:06', '2021-09-08 04:42:06'),
(92, 'IRzMnk1631079736', 6, 18, 92, 1, 69.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:42:16', '2021-09-08 04:42:16'),
(93, 'F9goct1631079746', 6, 18, 93, 1, 100.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:42:26', '2021-09-08 04:42:26'),
(94, 'eXanfk1631079757', 6, 18, 94, 1, 130.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:42:37', '2021-09-08 04:42:37'),
(95, 'P95zrt1631079767', 6, 18, 95, 1, 195.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:42:47', '2021-09-08 04:42:47'),
(96, '3OdC2J1631079777', 6, 18, 96, 1, 255.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 04:42:57', '2021-09-08 04:42:57'),
(97, '0bm2FJ1631081519', 7, 19, 97, 1, 36.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:11:59', '2021-09-08 05:11:59'),
(98, 'FfCLyb1631081533', 7, 19, 98, 1, 62.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:12:13', '2021-09-08 05:12:13'),
(99, 'SwvAHw1631081545', 7, 19, 99, 1, 95.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:12:25', '2021-09-08 05:12:25'),
(100, 'dqvLUV1631081561', 7, 19, 100, 1, 120.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:12:41', '2021-09-08 05:12:41'),
(101, 'gIYECi1631081571', 7, 19, 101, 1, 209.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:12:51', '2021-09-08 05:12:51'),
(102, 'YssCmj1631081626', 7, 20, 102, 1, 42.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:13:46', '2021-09-08 05:13:46'),
(103, 'RFurjQ1631081639', 7, 20, 103, 1, 69.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:13:59', '2021-09-08 05:13:59'),
(104, 'GOgbVv1631081653', 7, 20, 104, 1, 107.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:14:13', '2021-09-08 05:14:13'),
(105, 'FCmkIe1631081680', 7, 20, 105, 1, 132.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:14:40', '2021-09-08 05:14:40'),
(106, '6P5Kow1631081691', 7, 20, 106, 1, 254.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:14:51', '2021-09-08 05:14:51'),
(107, 'k2nyC81631081735', 7, 21, 107, 1, 46.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:15:35', '2021-09-08 05:15:35'),
(108, 'ZeYVbA1631081750', 7, 21, 108, 1, 89.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:15:50', '2021-09-08 05:15:50'),
(109, 'Y4RL301631081761', 7, 21, 109, 1, 134.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:16:01', '2021-09-08 05:16:01'),
(110, 'T6QBZw1631081776', 7, 21, 110, 1, 169.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:16:16', '2021-09-08 05:16:16'),
(111, 'I5smCw1631081788', 7, 21, 111, 1, 309.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 05:16:28', '2021-09-08 05:16:28'),
(112, 'DRWpC91631086441', 8, 22, 112, 1, 30.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:34:01', '2021-09-08 06:34:01'),
(113, 'e1rXIS1631086470', 8, 22, 113, 1, 40.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:34:30', '2021-09-08 06:34:30'),
(114, 'KTVcHM1631086488', 8, 22, 114, 1, 60.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:34:48', '2021-09-08 06:34:48'),
(115, 'N7eXiQ1631086518', 8, 22, 115, 1, 70.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:35:18', '2021-09-08 06:35:18'),
(116, 'jlrddb1631086535', 8, 22, 116, 1, 110.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:35:35', '2021-09-08 06:35:35'),
(117, 'jADIe61631086589', 8, 23, 117, 1, 35.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:36:29', '2021-09-08 06:36:29'),
(118, 'YjNnnQ1631086608', 8, 23, 118, 1, 50.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:36:48', '2021-09-08 06:36:48'),
(119, 'XpzQGq1631086620', 8, 23, 119, 1, 75.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:37:00', '2021-09-08 06:37:00'),
(120, '4WsmmB1631086632', 8, 23, 120, 1, 95.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:37:12', '2021-09-08 06:37:12'),
(121, '3cgX781631086641', 8, 23, 121, 1, 175.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:37:21', '2021-09-08 06:37:21'),
(122, 'toubwe1631086670', 8, 24, 122, 1, 40.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:37:50', '2021-09-08 06:37:50'),
(123, 'MSDK451631086679', 8, 24, 123, 1, 75.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:37:59', '2021-09-08 06:37:59'),
(124, 'B8VXPs1631086695', 8, 24, 124, 1, 110.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:38:15', '2021-09-08 06:38:15'),
(125, 'OgFfgm1631086710', 8, 24, 125, 1, 140.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:38:30', '2021-09-08 06:38:30'),
(126, 'fOWqMv1631086723', 8, 24, 126, 1, 260.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:38:43', '2021-09-08 06:38:43'),
(127, 'CITpS71631087595', 9, 25, 127, 3, 65.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:53:15', '2021-09-08 06:53:15'),
(128, 'cjNAxE1631087608', 9, 25, 128, 4, 125.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:53:28', '2021-09-08 06:53:28'),
(129, 'ypurBI1631087627', 9, 25, 129, 3, 180.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:53:47', '2021-09-08 06:54:12'),
(130, 'JQOyDs1631087672', 9, 25, 130, 3, 230.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 06:54:32', '2021-09-08 06:54:32'),
(131, 'CgpvpA1631088157', 10, 26, 131, 1, 189.99, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 07:02:37', '2021-09-08 07:02:37'),
(132, 'N8psNU1631088667', 11, 27, 132, 1, 9.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 07:11:07', '2021-09-08 07:11:07'),
(133, 'TnjL5R1631088681', 11, 27, 133, 1, 15.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 07:11:21', '2021-09-08 07:11:21'),
(134, '2fTq761631089845', 12, 28, 134, 1, 29.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 07:30:45', '2021-09-08 07:30:45'),
(135, 'yGQaKk1631090364', 13, 29, 135, 3, 9.00, 0.00, '101.50.109.72', '88.108.61.109', '2021-09-08 07:39:24', '2021-09-27 15:36:12'),
(136, 'moZjw21631090374', 13, 29, 136, 6, 16.00, 0.00, '101.50.109.72', '88.108.61.109', '2021-09-08 07:39:34', '2021-09-27 15:35:43'),
(137, 'VozWUz1631090882', 14, 30, 137, 1, 22.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 07:48:02', '2021-09-08 07:48:02'),
(138, 'ST0Jzn1631090890', 14, 30, 138, 4, 40.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 07:48:10', '2021-09-08 07:48:10'),
(139, 'ATnsJ01631091430', 15, 31, 139, 1, 13.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 07:57:10', '2021-09-08 07:57:10'),
(140, 'sEjOSA1631091438', 15, 31, 140, 1, 20.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 07:57:18', '2021-09-08 07:57:18'),
(141, 'dN2PEQ1631095842', 16, 32, 141, 1, 10.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 09:10:42', '2021-09-08 09:10:42'),
(142, 'gtKlSJ1631096407', 17, 33, 142, 3, 38.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 09:20:07', '2021-09-08 09:20:07'),
(143, 'W80zbr1631096427', 17, 33, 143, 3, 70.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 09:20:27', '2021-09-08 09:20:27'),
(144, 'V6UaC61631097036', 18, 34, 144, 1, 48.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 09:30:36', '2021-09-08 09:30:36'),
(145, 'c7XzX91631097048', 18, 34, 145, 1, 86.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 09:30:48', '2021-09-08 09:30:48'),
(146, 'EFipde1631097057', 18, 34, 146, 1, 128.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 09:30:57', '2021-09-08 09:30:57'),
(147, 'TjbAKL1631097068', 18, 34, 147, 1, 235.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 09:31:08', '2021-09-08 09:31:08'),
(148, 'CaNxJr1631097993', 19, 35, 148, 1, 15.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 09:46:33', '2021-09-08 09:46:33'),
(149, '4c4Ybk1631098107', 19, 35, 149, 1, 28.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 09:48:27', '2021-09-08 09:48:27'),
(150, 'eH3RFg1631098119', 19, 35, 150, 1, 40.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 09:48:39', '2021-09-08 09:48:39'),
(151, 'eF4M291631098130', 19, 35, 151, 1, 75.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 09:48:50', '2021-09-08 09:48:50'),
(152, 'ds69qt1631099496', 20, 36, 152, 1, 65.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 10:11:36', '2021-09-08 10:11:36'),
(153, 'FFubib1631099510', 20, 36, 153, 1, 120.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 10:11:50', '2021-09-08 10:11:50'),
(154, 'rj5PGr1631099519', 20, 36, 154, 1, 145.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 10:11:59', '2021-09-08 10:12:14'),
(155, 'gOejPE1631099550', 20, 36, 155, 1, 180.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 10:12:30', '2021-09-08 10:12:30'),
(156, 'tpbcbL1631100563', 21, 37, 156, 1, 55.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 10:29:23', '2021-09-08 10:29:23'),
(157, 'ytD82l1631100585', 21, 37, 157, 1, 99.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 10:29:45', '2021-09-08 10:29:45'),
(158, 'ALFAHd1631100596', 21, 37, 158, 1, 140.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 10:29:56', '2021-09-08 10:29:56'),
(159, 'X1mOT71631100607', 21, 37, 159, 1, 185.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 10:30:07', '2021-09-08 10:30:07'),
(160, '0eaZGt1631101940', 22, 38, 160, 1, 20.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 10:52:20', '2021-09-08 10:52:20'),
(161, 'ATrUFY1631101948', 22, 38, 161, 1, 25.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 10:52:28', '2021-09-08 10:52:28'),
(162, 'wtsO8b1631101955', 22, 38, 162, 1, 30.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 10:52:35', '2021-09-08 10:52:35'),
(163, 'YZc6R41631101965', 22, 38, 163, 1, 49.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 10:52:45', '2021-09-08 10:52:45'),
(164, 'WymHO21631102746', 23, 39, 164, 1, 30.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 11:05:46', '2021-09-08 11:05:46'),
(165, 'g3TKEa1631102753', 23, 39, 165, 1, 55.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 11:05:53', '2021-09-08 11:05:53'),
(166, 'iGWC5J1631102762', 23, 39, 166, 1, 80.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 11:06:02', '2021-09-08 11:06:02'),
(167, 'm6RXM81631102770', 23, 39, 167, 1, 210.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 11:06:10', '2021-09-08 11:06:10'),
(168, 'bLT1Vn1631103638', 24, 40, 168, 1, 110.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 11:20:38', '2021-09-08 11:20:38'),
(169, '0aOWwo1631103647', 24, 40, 169, 1, 210.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 11:20:47', '2021-09-08 11:20:47'),
(170, '7TdPb21631103658', 24, 40, 170, 1, 300.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 11:20:58', '2021-09-08 11:20:58'),
(171, 'wTksHV1631104284', 25, 41, 171, 1, 35.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 11:31:24', '2021-09-08 11:31:24'),
(172, 'HgLyHa1631104294', 25, 41, 172, 1, 65.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 11:31:34', '2021-09-08 11:31:34'),
(173, 'NMlY4a1631104309', 25, 41, 173, 1, 105.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 11:31:49', '2021-09-08 11:31:49'),
(174, 'ZepcvD1631104319', 25, 41, 174, 1, 220.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 11:31:59', '2021-09-08 11:31:59'),
(175, 'HaLab51631105763', 26, 42, 175, 1, 32.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 11:56:03', '2021-09-08 11:56:03'),
(176, '6OLAh71631105776', 26, 42, 176, 1, 60.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 11:56:16', '2021-09-08 11:56:16'),
(177, 'VmbSjo1631106295', 27, 43, 177, 1, 24.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 12:04:55', '2021-09-08 12:04:55'),
(178, 'kTuP3k1631106307', 27, 43, 178, 1, 47.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 12:05:07', '2021-09-08 12:05:07'),
(179, 'FOWI9k1631106315', 27, 43, 179, 1, 70.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 12:05:15', '2021-09-08 12:05:15'),
(180, 'YvPIge1631107076', 28, 44, 180, 1, 33.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 12:17:56', '2021-09-08 12:17:56'),
(181, 'oZ6qPd1631107097', 28, 44, 181, 1, 62.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 12:18:17', '2021-09-08 12:18:17'),
(182, 'Ra8CNX1631107116', 28, 44, 182, 1, 85.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 12:18:36', '2021-09-08 12:18:36'),
(183, 'G9OCSi1631107151', 28, 44, 183, 3, 33.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 12:19:11', '2021-09-08 12:19:11'),
(184, 'eQQMHD1631107177', 28, 44, 184, 3, 62.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 12:19:37', '2021-09-08 12:19:37'),
(185, 'FBpg0p1631107189', 28, 44, 185, 3, 85.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 12:19:49', '2021-09-08 12:19:49'),
(186, 'QlW0bP1631107714', 29, 45, 186, 3, 25.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 12:28:34', '2021-09-08 12:28:34'),
(187, 'l17nEw1631107723', 29, 45, 187, 3, 48.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 12:28:43', '2021-09-08 12:28:43'),
(188, 'cFCImd1631107735', 29, 45, 188, 3, 70.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 12:28:55', '2021-09-08 12:28:55'),
(189, 'tawtJG1631108597', 30, 46, 189, 3, 20.00, 0.00, '101.50.109.72', '101.50.109.72', '2021-09-08 12:43:17', '2021-09-08 12:43:17'),
(190, '0acIov1631164077', 31, 47, 190, 3, 30.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 04:07:57', '2021-09-09 04:07:57'),
(191, 'FtUghp1631164095', 31, 47, 191, 3, 55.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 04:08:15', '2021-09-09 04:08:15'),
(192, 'GjB8381631164120', 31, 48, 192, 3, 30.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 04:08:40', '2021-09-09 04:08:40'),
(193, 'FHJe1F1631164130', 31, 48, 193, 3, 55.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 04:08:50', '2021-09-09 04:08:50'),
(194, 'NVusr31631164607', 32, 49, 194, 3, 15.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 04:16:47', '2021-09-09 04:16:47'),
(195, 'y1hQcf1631164616', 32, 49, 195, 3, 25.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 04:16:56', '2021-09-09 04:16:56'),
(196, 'T3fyUu1631165405', 33, 50, 196, 3, 33.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 04:30:05', '2021-09-09 04:30:05'),
(197, 'SYFpvn1631165889', 34, 51, 197, 1, 18.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 04:38:09', '2021-09-09 04:38:09'),
(198, 'r9tkyI1631165910', 34, 51, 198, 1, 29.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 04:38:30', '2021-09-09 04:38:30'),
(199, '49ElLy1631165927', 34, 51, 199, 1, 38.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 04:38:47', '2021-09-09 04:38:47'),
(200, 'iruyhY1631166654', 35, 52, 200, 1, 15.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 04:50:54', '2021-09-09 04:50:54'),
(201, '4LVUxn1631166662', 35, 52, 201, 1, 26.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 04:51:02', '2021-09-09 04:51:02'),
(202, '78XWmc1631166672', 35, 52, 202, 1, 35.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 04:51:12', '2021-09-09 04:51:12'),
(203, 'HQFygj1631168555', 36, 53, 203, 1, 25.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 05:22:35', '2021-09-09 05:22:35'),
(204, '2ehxvX1631169197', 37, 54, 204, 1, 10.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 05:33:17', '2021-09-09 05:33:17'),
(205, '2jnoEe1631169608', 38, 55, 205, 3, 45.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 05:40:08', '2021-09-09 05:40:08'),
(206, '1IA3iX1631169616', 38, 55, 206, 3, 90.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 05:40:16', '2021-09-09 05:40:16'),
(207, '6RUIse1631170345', 39, 56, 207, 1, 20.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 05:52:25', '2021-09-09 05:52:25'),
(208, 'aqg51m1631170355', 39, 56, 208, 1, 25.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 05:52:35', '2021-09-09 05:52:35'),
(209, 'hZUG6D1631170367', 39, 56, 209, 1, 30.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 05:52:47', '2021-09-09 05:57:54'),
(210, 'gbm4ay1631171193', 40, 57, 210, 1, 24.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 06:06:33', '2021-09-09 06:06:33'),
(211, 'ryT47U1631171201', 40, 57, 211, 1, 48.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 06:06:41', '2021-09-09 06:06:41'),
(212, '8F0ECY1631171212', 40, 57, 212, 1, 66.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 06:06:52', '2021-09-09 06:07:02'),
(213, 'Ww3t1v1631171778', 41, 58, 213, 1, 28.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 06:16:18', '2021-09-09 06:16:18'),
(214, 'wIFvjc1631171787', 41, 58, 214, 1, 54.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 06:16:27', '2021-09-09 06:16:27'),
(215, 'AR3aLc1631171797', 41, 58, 215, 1, 84.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 06:16:37', '2021-09-09 06:16:37'),
(216, '0MU0MR1631175400', 42, 59, 216, 1, 48.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:16:40', '2021-09-09 07:16:40'),
(217, 'Y48qH41631175410', 42, 59, 217, 1, 57.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:16:50', '2021-09-09 07:16:50'),
(218, 'xmNu6W1631175425', 42, 59, 218, 1, 68.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:17:05', '2021-09-09 07:17:05'),
(219, '9Pok4B1631175434', 42, 59, 219, 1, 83.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:17:14', '2021-09-09 07:17:14'),
(220, 'tezQHS1631175444', 42, 59, 220, 1, 99.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:17:24', '2021-09-09 07:17:24'),
(221, 'VEVmnA1631175499', 42, 59, 221, 1, 125.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:18:19', '2021-09-09 07:18:19'),
(222, 'WlTNxu1631175511', 42, 59, 222, 1, 155.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:18:31', '2021-09-09 07:18:31'),
(223, 'mP988m1631175523', 42, 59, 223, 1, 187.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:18:43', '2021-09-09 07:18:43'),
(224, 'sYcFGx1631175535', 42, 59, 224, 1, 218.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:18:55', '2021-09-09 07:18:55'),
(225, 'viYeOh1631175545', 42, 59, 225, 1, 435.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:19:05', '2021-09-09 07:19:05'),
(226, 'omg0GZ1631175556', 42, 59, 226, 1, 795.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:19:16', '2021-09-09 07:19:16'),
(227, 'OM1FlH1631176261', 43, 60, 227, 1, 40.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:31:01', '2021-09-09 07:31:01'),
(228, 'JYTGyp1631176272', 43, 60, 228, 1, 47.50, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:31:12', '2021-09-09 07:31:12'),
(229, '5giKLf1631176284', 43, 60, 229, 1, 57.50, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:31:24', '2021-09-09 07:31:24'),
(230, 'ODanbw1631176311', 43, 60, 230, 1, 75.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:31:51', '2021-09-09 07:31:51'),
(231, 'QzsRfD1631176322', 43, 60, 231, 1, 90.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:32:02', '2021-09-09 07:32:02'),
(232, '5i3U2Z1631176336', 43, 60, 232, 1, 119.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:32:16', '2021-09-09 07:32:16'),
(233, 'RR5Fku1631176346', 43, 60, 233, 1, 146.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:32:26', '2021-09-09 07:32:26'),
(234, 'LfGRkk1631176358', 43, 60, 234, 1, 172.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:32:38', '2021-09-09 07:32:38'),
(235, 'urGNK81631176369', 43, 60, 235, 1, 200.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:32:49', '2021-09-09 07:32:49'),
(236, 'IpM4551631176379', 43, 60, 236, 1, 400.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:32:59', '2021-09-09 07:32:59'),
(237, 'gMQX331631176389', 43, 60, 237, 1, 768.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:33:09', '2021-09-09 07:33:09'),
(238, '6Enkl61631176926', 44, 61, 238, 1, 35.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:42:06', '2021-09-09 07:42:06'),
(239, 'HPdPUw1631176932', 44, 61, 239, 1, 65.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:42:12', '2021-09-09 07:42:12'),
(240, 'P2UrBp1631176942', 44, 61, 240, 1, 85.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:42:22', '2021-09-09 07:42:22'),
(241, '6whFa11631176950', 44, 61, 241, 1, 110.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:42:30', '2021-09-09 07:42:30'),
(242, 'Q3TIQg1631177230', 45, 62, 242, 1, 1.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:47:10', '2021-09-09 07:47:10'),
(243, '50Pzan1631177885', 46, 63, 243, 1, 23.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:58:05', '2021-09-09 07:58:05'),
(244, 'M14ORi1631177893', 46, 63, 244, 1, 45.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:58:13', '2021-09-09 07:58:13'),
(245, '4fk1HW1631177905', 46, 63, 245, 1, 66.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:58:25', '2021-09-09 07:58:25'),
(246, 'YhzK0F1631177919', 46, 63, 246, 1, 87.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:58:39', '2021-09-09 07:58:39'),
(247, 'OUkSYs1631177930', 46, 63, 247, 1, 108.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:58:50', '2021-09-09 07:58:50'),
(248, 'oLM4m11631177945', 46, 63, 248, 1, 129.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:59:05', '2021-09-09 07:59:31'),
(249, 'jwj6fl1631177991', 46, 64, 249, 1, 30.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 07:59:51', '2021-09-09 08:00:05'),
(250, 'hjkySd1631184046', 46, 64, 250, 1, 54.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 09:40:46', '2021-09-09 09:40:46'),
(251, 'H8xoBe1631184091', 46, 64, 251, 1, 84.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 09:41:31', '2021-09-09 09:41:31'),
(252, 'XjduTa1631184115', 46, 64, 252, 1, 107.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 09:41:55', '2021-09-09 09:41:55'),
(253, 'mPC2b01631184130', 46, 64, 253, 1, 133.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 09:42:10', '2021-09-09 09:42:10'),
(254, 'QJbAfr1631184151', 46, 64, 254, 1, 158.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 09:42:31', '2021-09-09 09:42:31'),
(255, '29Kt6d1631185416', 48, 65, 255, 3, 6.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:03:36', '2021-09-09 10:03:36'),
(256, 'PoKJMW1631185486', 48, 65, 257, 3, 12.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:04:46', '2021-09-09 10:04:46'),
(257, 'ZfXN1t1631185502', 48, 65, 256, 3, 15.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:05:02', '2021-09-09 10:05:02'),
(258, 'SPg6Ej1631185511', 48, 65, 258, 3, 20.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:05:11', '2021-09-09 10:05:11'),
(259, 'Ejst8j1631186994', 49, 66, 259, 1, 53.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:29:54', '2021-09-09 10:29:54'),
(260, '3DnVDF1631187006', 49, 66, 260, 1, 106.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:30:06', '2021-09-09 10:30:06'),
(261, 'qRlJ4h1631187016', 49, 66, 261, 1, 159.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:30:16', '2021-09-09 10:30:16'),
(262, '2tXWiC1631187062', 49, 66, 262, 1, 212.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:31:02', '2021-09-09 10:31:02'),
(263, 'LYBvWk1631187073', 49, 66, 263, 1, 265.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:31:13', '2021-09-09 10:31:13'),
(264, 'x3SR5V1631187134', 49, 67, 264, 1, 58.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:32:14', '2021-09-09 10:32:14'),
(265, '6edEFl1631187145', 49, 67, 265, 1, 111.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:32:25', '2021-09-09 10:32:25'),
(266, 'pJmZzD1631187168', 49, 67, 266, 1, 164.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:32:48', '2021-09-09 10:32:48'),
(267, '0QmID81631187179', 49, 67, 267, 1, 217.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:32:59', '2021-09-09 10:32:59'),
(268, 'xItSwv1631187193', 49, 67, 268, 1, 270.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:33:13', '2021-09-09 10:33:13'),
(269, '8qV06B1631187205', 49, 68, 269, 1, 63.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:33:25', '2021-09-09 10:33:25'),
(270, 'B2uZBn1631187218', 49, 68, 270, 1, 275.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:33:38', '2021-09-09 10:33:38'),
(271, 'VNZS4r1631188190', 50, 69, 271, 1, 35.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:49:50', '2021-09-09 10:49:50'),
(272, 'HTDj3t1631188203', 50, 69, 272, 1, 50.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:50:03', '2021-09-09 10:50:03'),
(273, 'JlOMDz1631188213', 50, 69, 273, 1, 90.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:50:13', '2021-09-09 10:50:13'),
(274, 'EQD2x71631188230', 50, 69, 274, 1, 135.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 10:50:30', '2021-09-09 10:50:30'),
(275, 'vT3SPK1631188911', 51, 71, 275, 1, 45.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:01:51', '2021-09-09 11:01:51'),
(276, '50gdrS1631188922', 51, 71, 276, 1, 65.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:02:02', '2021-09-09 11:02:02'),
(277, 'm7TOw41631188932', 51, 71, 277, 1, 110.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:02:12', '2021-09-09 11:02:12'),
(278, 'tAEfSQ1631188941', 51, 71, 278, 1, 150.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:02:21', '2021-09-09 11:02:21'),
(279, '5duEXF1631189630', 52, 72, 279, 1, 18.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:13:50', '2021-09-09 11:13:50'),
(280, 'CBxhQx1631189639', 52, 72, 280, 1, 26.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:13:59', '2021-09-09 11:13:59'),
(281, 'N0UrJc1631190192', 53, 73, 281, 1, 14.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:23:12', '2021-09-09 11:23:12'),
(282, 'rPnubT1631190201', 53, 73, 282, 1, 23.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:23:21', '2021-09-09 11:23:21'),
(283, 'Qm18P01631190508', 54, 74, 283, 3, 52.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:28:28', '2021-09-09 11:28:28'),
(284, 'bgnC3q1631190520', 54, 75, 284, 3, 54.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:28:40', '2021-09-09 11:28:40'),
(285, 'dWmNIB1631190535', 54, 76, 285, 3, 54.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:28:55', '2021-09-09 11:28:55'),
(286, 'l85MaP1631191016', 55, 77, 286, 3, 35.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:36:56', '2021-09-09 11:36:56'),
(287, 'sru6of1631191028', 55, 78, 287, 3, 55.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:37:08', '2021-09-09 11:37:08'),
(288, 'II4SVy1631191046', 55, 79, 288, 3, 78.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:37:26', '2021-09-09 11:37:26'),
(289, 'p9ldxt1631192083', 56, 80, 289, 1, 68.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:54:43', '2021-09-09 11:54:43'),
(290, 'TFYsJM1631192095', 56, 80, 290, 1, 130.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:54:55', '2021-09-09 11:54:55'),
(291, 'oQazMy1631192107', 56, 80, 291, 1, 190.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:55:07', '2021-09-09 11:55:07'),
(292, 'RNbK4t1631192119', 56, 80, 292, 1, 250.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 11:55:19', '2021-09-09 11:55:19'),
(293, 'ZBjL7A1631192505', 57, 81, 293, 1, 29.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 12:01:45', '2021-09-09 12:01:45'),
(294, 'XNWNWL1631192517', 57, 81, 294, 1, 56.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 12:01:57', '2021-09-09 12:01:57'),
(295, 'cK8R0K1631192540', 57, 81, 295, 1, 80.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 12:02:20', '2021-09-09 12:02:20'),
(296, 'YO1mru1631192961', 58, 83, 296, 3, 33.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 12:09:21', '2021-09-09 12:09:21'),
(297, 'JO7AhH1631192971', 58, 83, 297, 3, 60.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 12:09:31', '2021-09-09 12:09:31'),
(298, '1FZ4rc1631192980', 58, 83, 298, 3, 88.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 12:09:40', '2021-09-09 12:09:40'),
(299, 'd7XMb51631193940', 59, 84, 300, 2, 90.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 12:25:40', '2021-09-09 12:30:28'),
(300, 'hkpWqF1631193953', 59, 85, 303, 3, 42.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 12:25:53', '2021-09-09 12:31:11'),
(301, 'TZyODv1631193964', 59, 84, 299, 4, 44.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 12:26:04', '2021-09-09 12:30:04'),
(302, 'KB1aTs1631193975', 59, 85, 304, 3, 75.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 12:26:15', '2021-09-09 12:31:28'),
(303, 'b1VrvQ1631194310', 59, 85, 305, 3, 145.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 12:31:50', '2021-09-09 12:31:50'),
(304, 'zVcB6w1631194323', 59, 85, 306, 3, 220.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 12:32:03', '2021-09-09 12:32:03'),
(305, 'zxGSBl1631194334', 59, 85, 307, 2, 235.00, 0.00, '115.186.141.11', '115.186.141.11', '2021-09-09 12:32:14', '2021-09-09 12:32:14'),
(306, 'xW1Lso1631511989', 60, 86, 308, 1, 40.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 04:46:29', '2021-09-13 04:46:29'),
(307, '6bVAwx1631512000', 60, 86, 309, 1, 75.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 04:46:40', '2021-09-13 04:46:40'),
(308, 'PBU6cX1631512011', 60, 86, 310, 1, 110.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 04:46:51', '2021-09-13 04:46:51'),
(309, 'BGw1Zc1631512022', 60, 86, 311, 1, 145.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 04:47:02', '2021-09-13 04:47:02'),
(310, 'EKjqlW1631513026', 61, 87, 312, 1, 23.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:03:46', '2021-09-13 05:03:46'),
(311, 'cvzkzB1631513034', 61, 87, 313, 1, 50.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:03:54', '2021-09-13 05:03:54'),
(312, '0qwoiz1631513043', 61, 87, 314, 1, 95.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:04:03', '2021-09-13 05:04:03'),
(313, 'Skipig1631513940', 62, 88, 315, 1, 15.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:19:00', '2021-09-13 05:19:00'),
(314, 'iM31Tj1631513949', 62, 88, 316, 1, 30.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:19:09', '2021-09-13 05:19:09'),
(315, '7wPESc1631513957', 62, 88, 317, 1, 45.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:19:17', '2021-09-13 05:19:17'),
(316, 'bSIbq81631513967', 62, 88, 318, 1, 55.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:19:27', '2021-09-13 05:19:27'),
(317, 'Nu2BSV1631513987', 62, 89, 319, 1, 19.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:19:47', '2021-09-13 05:19:47'),
(318, 'DTDZIh1631513999', 62, 89, 320, 1, 38.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:19:59', '2021-09-13 05:19:59'),
(319, 'cdF4Hn1631514011', 62, 89, 321, 1, 57.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:20:11', '2021-09-13 05:20:11'),
(320, 'G4IJSO1631514024', 62, 89, 322, 1, 70.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:20:24', '2021-09-13 05:20:24'),
(321, 'xDn5qN1631514955', 63, 90, 323, 1, 11.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:35:55', '2021-09-13 05:35:55'),
(322, 'MGmKKF1631514963', 63, 90, 324, 1, 19.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:36:03', '2021-09-13 05:36:03'),
(323, 'vDpO9f1631514976', 63, 90, 325, 1, 25.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:36:16', '2021-09-13 05:36:16'),
(324, 'hvCypD1631514986', 63, 90, 326, 1, 32.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:36:26', '2021-09-13 05:36:26'),
(325, 'ilcSM51631515481', 64, 91, 327, 1, 27.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:44:41', '2021-09-13 05:44:41'),
(326, 'NtCqkN1631515489', 64, 91, 328, 1, 44.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:44:49', '2021-09-13 05:44:49'),
(327, 'U8Vc9b1631515497', 64, 91, 329, 1, 62.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:44:57', '2021-09-13 05:44:57'),
(328, 'qn7TPs1631515507', 64, 91, 330, 1, 80.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:45:07', '2021-09-13 05:45:07'),
(329, 'B5MAIx1631516142', 65, 92, 331, 3, 27.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:55:42', '2021-09-13 05:55:42'),
(330, 'mZl0Qm1631516158', 65, 92, 332, 3, 44.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:55:58', '2021-09-13 05:55:58'),
(331, 'iw0PYg1631516168', 65, 92, 333, 3, 62.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:56:08', '2021-09-13 05:56:08'),
(332, 'fHT6PT1631516180', 65, 92, 334, 3, 80.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 05:56:20', '2021-09-13 05:56:20'),
(333, 'sOeqxq1631516752', 66, 93, 335, 1, 30.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 06:05:52', '2021-09-13 06:05:52'),
(334, 'cdL15C1631516760', 66, 93, 336, 1, 58.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 06:06:00', '2021-09-13 06:06:00'),
(335, 'MxeyEX1631517471', 67, 95, 339, 3, 30.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 06:17:51', '2021-09-13 06:17:51'),
(336, 'qH9Ngz1631517493', 67, 95, 340, 3, 58.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 06:18:13', '2021-09-13 06:18:13'),
(337, 'KKwGMF1631517545', 67, 96, 341, 3, 30.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 06:19:05', '2021-09-13 06:19:05'),
(338, 'PjBDhp1631517563', 67, 96, 342, 3, 58.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 06:19:23', '2021-09-13 06:19:23'),
(339, 'vo2Z9U1631518374', 68, 97, 343, 1, 14.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 06:32:54', '2021-09-13 06:32:54'),
(340, 'CcYW7m1631518388', 68, 97, 344, 1, 28.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 06:33:08', '2021-09-13 06:33:08'),
(341, 'kX2JoK1631518464', 68, 98, 345, 1, 58.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 06:34:24', '2021-09-13 06:34:24'),
(342, 'ZGkPCw1631518475', 68, 98, 346, 1, 110.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 06:34:35', '2021-09-13 06:34:35'),
(343, 'WszsT01631519272', 69, 99, 349, 3, 55.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 06:47:52', '2021-09-13 06:47:52'),
(344, 'zHFSjA1631520298', 70, 100, 350, 3, 15.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 07:04:58', '2021-09-13 07:04:58'),
(345, 'ceUywH1631520306', 70, 100, 351, 3, 30.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 07:05:06', '2021-09-13 07:05:23'),
(346, 'lgj5px1631520338', 70, 100, 352, 3, 45.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 07:05:38', '2021-09-13 07:05:38'),
(347, '6q4ls51631520349', 70, 100, 353, 3, 53.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 07:05:49', '2021-09-13 07:05:49'),
(348, 'jtmMcY1631520368', 70, 101, 354, 3, 15.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 07:06:08', '2021-09-13 07:06:08'),
(349, 'vbgKUl1631520379', 70, 101, 355, 3, 30.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 07:06:19', '2021-09-13 07:06:19'),
(350, 'NeAyDV1631520392', 70, 101, 356, 3, 45.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 07:06:32', '2021-09-13 07:06:32'),
(351, 'jy1ozT1631520403', 70, 101, 357, 3, 53.00, 0.00, '101.50.108.104', '101.50.108.104', '2021-09-13 07:06:43', '2021-09-13 07:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `kod_med_quantity`
--

CREATE TABLE `kod_med_quantity` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `strength_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT 1,
  `form` varchar(60) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_ip` varchar(60) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_med_quantity`
--

INSERT INTO `kod_med_quantity` (`id`, `hash_id`, `medicine_id`, `strength_id`, `qty`, `form`, `display_order`, `status`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(1, '6jqxdf1631012421', 1, 1, 4, 'Tablets', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:00:21', '2021-09-07 10:00:21'),
(2, 'qkdq211631012434', 1, 1, 8, 'Tablets', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:00:34', '2021-09-07 10:00:34'),
(3, 'zb2inq1631012443', 1, 1, 12, 'Tablets', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:00:43', '2021-09-07 10:00:43'),
(4, '5S8NRp1631012455', 1, 1, 16, 'Tablets', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:00:55', '2021-09-07 10:00:55'),
(5, 'tiYQHe1631013578', 2, 4, 4, 'Tablets', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:19:38', '2021-09-07 10:19:38'),
(6, 'Ngcv5m1631013592', 2, 4, 8, 'Tablets', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:19:52', '2021-09-07 10:19:52'),
(7, '0ZbwHL1631013614', 2, 4, 12, 'Tablets', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:20:14', '2021-09-07 10:20:14'),
(8, 'uQXZWm1631013633', 2, 4, 16, 'Tablets', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:20:33', '2021-09-07 10:20:33'),
(9, 'WWbo8B1631013654', 2, 4, 24, 'Tablets', 5, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:20:54', '2021-09-07 10:20:54'),
(10, 'GTaxbI1631013667', 2, 4, 28, 'Tablets', 6, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:21:07', '2021-09-07 10:21:07'),
(11, 'QBP3Vi1631013684', 2, 4, 32, 'Tablets', 7, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:21:24', '2021-09-07 10:21:24'),
(12, 'FSFzmy1631013696', 2, 4, 64, 'Tablets', 8, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:21:36', '2021-09-07 10:21:36'),
(13, 'U3igLM1631013722', 2, 5, 4, 'Tablets', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:22:02', '2021-09-07 10:22:02'),
(14, 'yXh7Ay1631013735', 2, 5, 8, 'Tablets', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:22:15', '2021-09-07 10:22:15'),
(15, 'Oif50A1631013747', 2, 5, 12, 'Tablets', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:22:27', '2021-09-07 10:22:27'),
(16, 'lWiYDe1631013757', 2, 5, 16, 'Tablets', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:22:37', '2021-09-07 10:22:37'),
(17, 'lZIa1D1631013773', 2, 5, 24, 'Tablets', 5, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:22:53', '2021-09-07 10:22:53'),
(18, 'ZpSYgQ1631013785', 2, 5, 28, 'Tablets', 6, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:23:05', '2021-09-07 10:23:05'),
(19, 'CtEwsD1631013795', 2, 5, 32, 'Tablets', 7, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:23:15', '2021-09-07 10:23:39'),
(20, 'kRSNag1631013865', 2, 5, 64, 'Tablets', 8, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:24:25', '2021-09-07 10:24:25'),
(21, 'NRltaX1631013900', 2, 6, 4, 'Tablets', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:25:00', '2021-09-07 10:25:00'),
(22, 'qZwBe21631013914', 2, 6, 8, 'Tablets', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:25:14', '2021-09-07 10:25:14'),
(23, 'gqW3z11631013926', 2, 6, 12, 'Tablets', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:25:26', '2021-09-07 10:25:26'),
(24, 'FBrU4n1631013964', 2, 6, 16, 'Tablets', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:26:04', '2021-09-07 10:26:04'),
(25, 'ZZj0Pe1631013978', 2, 6, 24, 'Tablets', 5, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:26:18', '2021-09-07 10:26:18'),
(26, 'mLQuB61631014015', 2, 6, 28, 'Tablets', 6, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:26:55', '2021-09-07 10:26:55'),
(27, 'auP8Si1631014030', 2, 6, 32, 'Tablets', 7, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:27:10', '2021-09-07 10:27:10'),
(28, 'm2ZPqB1631014044', 2, 6, 64, 'Tablets', 8, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:27:24', '2021-09-07 10:27:24'),
(29, '1TkupW1631017434', 3, 7, 28, 'Tablets', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:23:54', '2021-09-07 11:23:54'),
(30, 'BGZEaS1631017450', 3, 8, 28, 'Tablets', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:24:10', '2021-09-07 11:26:42'),
(31, 'kSqfW01631017474', 3, 7, 56, 'Tablets', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:24:34', '2021-09-07 11:24:34'),
(32, 'O31Os61631017487', 3, 7, 84, 'Tablets', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:24:47', '2021-09-07 11:24:47'),
(33, 'EWR5481631017545', 3, 8, 56, 'Tablets', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:25:45', '2021-09-07 11:26:31'),
(34, 'PzqyAX1631017558', 3, 8, 84, 'Tablets', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:25:58', '2021-09-07 11:25:58'),
(35, 'ONktGz1631017694', 3, 9, 4, 'Tablets', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:28:14', '2021-09-07 11:28:14'),
(36, 'kFmN9h1631017707', 3, 9, 8, 'Tablets', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:28:27', '2021-09-07 11:28:27'),
(37, 'dHEIj91631017722', 3, 9, 12, 'Tablets', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:28:42', '2021-09-07 11:28:42'),
(38, 'FQ9szv1631017737', 3, 9, 16, 'Tablets', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:28:57', '2021-09-07 11:28:57'),
(39, 'xFLjZi1631017748', 3, 9, 24, 'Tablets', 5, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:29:08', '2021-09-07 11:29:08'),
(40, 'IRvb0z1631017770', 3, 9, 28, 'Tablets', 6, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:29:30', '2021-09-07 11:29:30'),
(41, 'onyXmn1631017783', 3, 9, 32, 'Tablets', 7, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:29:43', '2021-09-07 11:29:43'),
(42, '6QW1Gx1631017795', 3, 9, 64, 'Tablets', 8, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:29:55', '2021-09-07 11:29:55'),
(43, 'DCbplt1631017839', 3, 10, 4, 'Tablets', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:30:39', '2021-09-07 11:30:39'),
(44, 'e5GSY41631017851', 3, 10, 8, 'Tablets', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:30:51', '2021-09-07 11:30:51'),
(45, 'HxsqvC1631017863', 3, 10, 12, 'Tablets', 3, '0', '115.186.141.51', '115.186.141.51', '2021-09-07 11:31:03', '2021-09-13 07:24:48'),
(46, 'vvk34I1631017875', 3, 10, 16, 'Tablets', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:31:15', '2021-09-07 11:31:15'),
(47, 'F5EzSc1631017890', 3, 10, 24, 'Tablets', 5, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:31:30', '2021-09-07 11:31:30'),
(48, 'q0GRZ01631017902', 3, 10, 28, 'Tablets', 6, '0', '115.186.141.51', '115.186.141.51', '2021-09-07 11:31:42', '2021-09-13 07:25:48'),
(49, 'gUiMr51631017932', 3, 10, 32, 'Tablets', 7, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:32:12', '2021-09-07 11:32:12'),
(50, '0ZiZOu1631017951', 3, 10, 64, 'Tablets', 8, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:32:31', '2021-09-07 11:32:31'),
(51, 'QttKI91631019828', 4, 11, 28, 'Tablets', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:03:48', '2021-09-07 12:03:48'),
(52, '2bRksI1631019837', 4, 11, 56, 'Tablets', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:03:57', '2021-09-07 12:03:57'),
(53, 'RsqT3h1631019848', 4, 11, 84, 'Tablets', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:04:08', '2021-09-07 12:04:08'),
(54, 'PVv7351631019885', 4, 12, 28, 'Tablets', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:04:45', '2021-09-07 12:04:45'),
(55, 'fefxrm1631019892', 4, 12, 56, 'Tablets', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:04:52', '2021-09-07 12:05:01'),
(56, 'vIpWob1631019922', 4, 12, 84, 'Tablets', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:05:22', '2021-09-07 12:05:22'),
(57, 'cgzFuW1631019961', 4, 14, 4, 'Tablets', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:06:01', '2021-09-07 12:06:01'),
(58, 'EddWst1631019976', 4, 13, 4, 'Tablets', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:06:16', '2021-09-07 12:06:16'),
(59, 'ZcG29A1631019985', 4, 13, 8, 'Tablets', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:06:25', '2021-09-07 12:06:55'),
(60, 'rmEurz1631020041', 4, 13, 12, 'Tablets', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:07:21', '2021-09-07 12:07:21'),
(61, 'y9OyTe1631020053', 4, 13, 16, 'Tablets', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:07:33', '2021-09-07 12:07:33'),
(62, 'KKMhN41631020065', 4, 13, 24, 'Tablets', 5, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:07:45', '2021-09-07 12:07:45'),
(63, 'JFkN161631020075', 4, 13, 28, 'Tablets', 6, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:07:55', '2021-09-07 12:07:55'),
(64, '8pYaUv1631020086', 4, 13, 32, 'Tablets', 7, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:08:06', '2021-09-07 12:08:06'),
(65, 'mkqrNU1631020097', 4, 13, 64, 'Tablets', 8, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:08:17', '2021-09-07 12:08:17'),
(66, 'NI3YLl1631020192', 4, 14, 8, 'Tablets', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:09:52', '2021-09-07 12:09:52'),
(67, 'flVoJZ1631020203', 4, 14, 16, 'Tablets', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:10:03', '2021-09-07 12:10:03'),
(68, '1UBi0j1631020216', 4, 14, 24, 'Tablets', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:10:16', '2021-09-07 12:10:16'),
(69, 'lldEHV1631020229', 4, 14, 32, 'Tablets', 5, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:10:29', '2021-09-07 12:10:29'),
(70, 'zMBcqB1631020241', 4, 14, 64, 'Tablets', 6, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:10:41', '2021-09-07 12:10:41'),
(71, 'A2rOUS1631021826', 5, 15, 4, 'Tablets', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:37:06', '2021-09-07 12:37:06'),
(72, 'ZmHcNm1631021836', 5, 15, 8, 'Tablets', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:37:16', '2021-09-07 12:37:16'),
(73, '1iPCmi1631021850', 5, 15, 12, 'Tablets', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:37:30', '2021-09-07 12:37:30'),
(74, 'nRIFCG1631021868', 5, 15, 16, 'Tablets', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:37:48', '2021-09-07 12:37:48'),
(75, '6zdynB1631021886', 5, 15, 24, 'Tablets', 5, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:38:06', '2021-09-07 12:38:06'),
(76, '9yuvdV1631021901', 5, 15, 28, 'Tablets', 6, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:38:21', '2021-09-07 12:38:21'),
(77, '5EcjQ51631021912', 5, 15, 32, 'Tablets', 7, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:38:32', '2021-09-07 12:38:32'),
(78, 'BpaNiz1631021927', 5, 15, 64, 'Tablets', 8, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:38:47', '2021-09-07 12:38:47'),
(79, 'UO4U9F1631079023', 6, 16, 4, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:30:23', '2021-09-08 04:30:23'),
(80, 'Aes1Uu1631079032', 6, 16, 8, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:30:32', '2021-09-08 04:30:48'),
(81, 'qnONdg1631079068', 6, 16, 12, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:31:08', '2021-09-08 04:31:08'),
(82, 'El9KN41631079081', 6, 16, 16, 'Tablets', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:31:21', '2021-09-08 04:32:22'),
(83, 'lhuk9d1631079103', 6, 16, 24, 'Tablets', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:31:43', '2021-09-08 04:31:43'),
(84, 'DNqLHl1631079113', 6, 16, 32, 'Tablets', 6, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:31:53', '2021-09-08 04:31:53'),
(85, 'WxIchF1631079159', 6, 17, 4, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:32:39', '2021-09-08 04:32:39'),
(86, '1Uc97d1631079169', 6, 17, 8, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:32:49', '2021-09-08 04:32:49'),
(87, 'wZXj4t1631079178', 6, 17, 12, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:32:58', '2021-09-08 04:32:58'),
(88, 'UKgRn41631079188', 6, 17, 16, 'Tablets', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:33:08', '2021-09-08 04:33:08'),
(89, 'AyrRW51631079216', 6, 17, 24, 'Tablets', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:33:36', '2021-09-08 04:33:36'),
(90, 'DFAYBm1631079237', 6, 17, 32, 'Tablets', 6, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:33:57', '2021-09-08 04:33:57'),
(91, 'sRaOtf1631079324', 6, 18, 4, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:35:24', '2021-09-08 04:35:24'),
(92, 'ypy5w91631079336', 6, 18, 8, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:35:36', '2021-09-08 04:35:36'),
(93, 'Od7dyP1631079348', 6, 18, 12, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:35:48', '2021-09-08 04:35:48'),
(94, 'ZkOOep1631079359', 6, 18, 16, 'Tablets', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:35:59', '2021-09-08 04:35:59'),
(95, 'yA9rnq1631079373', 6, 18, 24, 'Tablets', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:36:13', '2021-09-08 04:36:13'),
(96, 'qc1snJ1631079384', 6, 18, 32, 'Tablets', 6, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:36:24', '2021-09-08 04:36:24'),
(97, 'CxT3k71631081073', 7, 19, 4, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:04:33', '2021-09-08 05:04:33'),
(98, 'KsR1Vq1631081084', 7, 19, 8, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:04:44', '2021-09-08 05:04:44'),
(99, 'NYiD7S1631081099', 7, 19, 12, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:04:59', '2021-09-08 05:04:59'),
(100, '9vGDqf1631081115', 7, 19, 16, 'Tablets', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:05:15', '2021-09-08 05:05:15'),
(101, 'lNPzof1631081151', 7, 19, 32, 'Tablets', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:05:51', '2021-09-08 05:05:51'),
(102, 'OKWg7N1631081255', 7, 20, 4, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:07:35', '2021-09-08 05:07:35'),
(103, 'nWwRYL1631081280', 7, 20, 8, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:08:00', '2021-09-08 05:08:00'),
(104, 'eerjd01631081289', 7, 20, 12, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:08:09', '2021-09-08 05:08:09'),
(105, '9lRczF1631081332', 7, 20, 16, 'Tablets', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:08:52', '2021-09-08 05:08:52'),
(106, 'kb30dk1631081344', 7, 20, 32, 'Tablets', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:09:04', '2021-09-08 05:09:04'),
(107, '0INeLR1631081354', 7, 21, 4, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:09:14', '2021-09-08 05:09:14'),
(108, 'G7PIAp1631081365', 7, 21, 8, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:09:25', '2021-09-08 05:09:25'),
(109, 'IkmNWt1631081374', 7, 21, 12, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:09:34', '2021-09-08 05:09:34'),
(110, 'kLXPxF1631081393', 7, 21, 16, 'Tablets', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:09:53', '2021-09-08 05:09:53'),
(111, 'WzndPm1631081410', 7, 21, 32, 'Tablets', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:10:10', '2021-09-08 05:10:10'),
(112, 'c2gSTL1631085869', 8, 22, 4, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:24:29', '2021-09-08 06:24:29'),
(113, 'fwVCsI1631085888', 8, 22, 8, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:24:48', '2021-09-08 06:24:48'),
(114, 'fb8Q7p1631085929', 8, 22, 12, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:25:29', '2021-09-08 06:25:29'),
(115, 'Wg5I7A1631085945', 8, 22, 16, 'Tablets', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:25:45', '2021-09-08 06:25:45'),
(116, 'DGt0dt1631085970', 8, 22, 32, 'Tablets', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:26:10', '2021-09-08 06:26:10'),
(117, 'WxRmUF1631086037', 8, 23, 4, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:27:17', '2021-09-08 06:27:17'),
(118, 'OAs7P21631086055', 8, 23, 8, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:27:35', '2021-09-08 06:27:35'),
(119, 'VRVxkM1631086082', 8, 23, 12, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:28:02', '2021-09-08 06:28:02'),
(120, 'l5bOSR1631086097', 8, 23, 16, 'Tablets', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:28:17', '2021-09-08 06:28:17'),
(121, 'v4dDOC1631086112', 8, 23, 32, 'Tablets', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:28:32', '2021-09-08 06:28:32'),
(122, 'vGfHQU1631086168', 8, 24, 4, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:29:28', '2021-09-08 06:29:28'),
(123, 'A8DsjA1631086179', 8, 24, 8, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:29:39', '2021-09-08 06:29:39'),
(124, 'CqBrtX1631086228', 8, 24, 12, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:30:28', '2021-09-08 06:30:28'),
(125, 'WJzpHb1631086260', 8, 24, 16, 'Tablets', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:31:00', '2021-09-08 06:31:00'),
(126, '6RFYtb1631086278', 8, 24, 32, 'Tablets', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:31:18', '2021-09-08 06:31:18'),
(127, 'eRZTyb1631087473', 9, 25, 4, 'Cream', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:51:13', '2021-09-08 06:51:13'),
(128, '3YDnwz1631087487', 9, 25, 8, 'Cream', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:51:27', '2021-09-08 06:51:27'),
(129, 'WzHP811631087498', 9, 25, 12, 'Cream', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:51:38', '2021-09-08 06:51:38'),
(130, 'HhmLgN1631087508', 9, 25, 16, 'Cream', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:51:48', '2021-09-08 06:51:48'),
(131, 'abmldw1631088133', 10, 26, 1, 'pump', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:02:13', '2021-09-08 07:02:13'),
(132, '9OFzjt1631088625', 11, 27, 14, 'Capsules', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:10:25', '2021-09-08 07:10:25'),
(133, 'Ir0bbb1631088635', 11, 27, 28, 'Capsules', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:10:35', '2021-09-08 07:10:35'),
(134, 'ji5dF81631089827', 12, 28, 28, 'Capsules', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:30:27', '2021-09-08 07:30:27'),
(135, 'QgQCLw1631090286', 13, 29, 14, 'Capsules', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:38:06', '2021-09-08 07:38:06'),
(136, 'zIaahp1631090308', 13, 29, 28, 'Capsules', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:38:28', '2021-09-08 07:38:28'),
(137, 'VmNWsi1631090851', 14, 30, 28, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:47:31', '2021-09-08 07:47:31'),
(138, 'bGrvCg1631090860', 14, 30, 58, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:47:40', '2021-09-08 07:47:40'),
(139, 'qRz2Uu1631091409', 15, 31, 14, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:56:49', '2021-09-08 07:56:49'),
(140, 'JrXwgJ1631091415', 15, 31, 28, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:56:55', '2021-09-08 07:56:55'),
(141, 'CDYwgt1631095819', 16, 32, 14, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:10:19', '2021-09-08 09:10:19'),
(142, 'xKAfaA1631096299', 17, 33, 28, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:18:19', '2021-09-08 09:18:19'),
(143, 'GzVrx11631096363', 17, 33, 56, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:19:23', '2021-09-08 09:19:23'),
(144, 'sIRMBA1631096938', 18, 34, 28, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:28:58', '2021-09-08 09:28:58'),
(145, 'eKu06q1631096946', 18, 34, 56, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:29:06', '2021-09-08 09:29:15'),
(146, 'Z0oUlD1631096965', 18, 34, 84, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:29:25', '2021-09-08 09:29:25'),
(147, '726eXI1631096975', 18, 34, 168, 'Tablets', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:29:35', '2021-09-08 09:29:35'),
(148, 'E0F85c1631097824', 19, 35, 28, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:43:44', '2021-09-08 09:45:50'),
(149, 'z5qECX1631097874', 19, 35, 56, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:44:34', '2021-09-08 09:45:59'),
(150, 'cCX6KU1631097896', 19, 35, 84, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:44:56', '2021-09-08 09:44:56'),
(151, 'alAk0n1631098010', 19, 35, 168, 'Tablets', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:46:50', '2021-09-08 09:46:58'),
(152, '9IPF4v1631099337', 20, 36, 3, 'x73ml', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:08:57', '2021-09-08 10:09:09'),
(153, 'FCwFtu1631099364', 20, 36, 6, 'x73ml', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:09:24', '2021-09-08 10:09:35'),
(154, 'O4w3mw1631099457', 20, 36, 9, 'x73ml', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:10:57', '2021-09-08 10:10:57'),
(155, '7CLOW81631099466', 20, 36, 12, 'x73ml', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:11:06', '2021-09-08 10:11:06'),
(156, '0PFjHy1631100425', 21, 37, 3, 'X60ml', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:27:05', '2021-09-08 10:27:05'),
(157, 'BkwNDY1631100479', 21, 37, 6, 'X60ml', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:27:59', '2021-09-08 10:27:59'),
(158, 'fKH3ts1631100490', 21, 37, 9, 'X60ml', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:28:10', '2021-09-08 10:28:10'),
(159, 'D6ClzA1631100501', 21, 37, 12, 'X60ml', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:28:21', '2021-09-08 10:28:21'),
(160, 'D2xzjM1631101852', 22, 38, 15, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:50:52', '2021-09-08 10:50:52'),
(161, 'd6q5Na1631101862', 22, 38, 30, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:51:02', '2021-09-08 10:51:02'),
(162, 'PwdKQr1631101872', 22, 38, 45, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:51:12', '2021-09-08 10:51:12'),
(163, 'h6PEfs1631101888', 22, 38, 168, 'Tablets', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:51:28', '2021-09-08 10:51:28'),
(164, '6t8Y5i1631102630', 23, 39, 10, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:03:50', '2021-09-08 11:03:50'),
(165, 'QNOLiJ1631102639', 23, 39, 20, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:03:59', '2021-09-08 11:03:59'),
(166, 'BC4v3v1631102647', 23, 39, 30, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:04:07', '2021-09-08 11:04:07'),
(167, '2KR9an1631102654', 23, 39, 84, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:04:14', '2021-09-08 11:04:14'),
(168, 'rjzesb1631103595', 24, 40, 10, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:19:55', '2021-09-08 11:19:55'),
(169, 'xm4RHb1631103605', 24, 40, 20, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:20:05', '2021-09-08 11:20:05'),
(170, 'UzXKRB1631103614', 24, 40, 30, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:20:14', '2021-09-08 11:20:14'),
(171, 'VjFs4X1631104227', 25, 41, 10, 'Tablets', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:30:27', '2021-09-08 11:30:27'),
(172, 'GRk3Ky1631104238', 25, 41, 20, 'Tablets', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:30:38', '2021-09-08 11:30:38'),
(173, 'WuAS8L1631104247', 25, 41, 30, 'Tablets', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:30:47', '2021-09-08 11:30:47'),
(174, 'g7o3IQ1631104256', 25, 41, 84, 'Tablets', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:30:56', '2021-09-08 11:30:56'),
(175, 'dFrjaG1631105596', 26, 42, 1, 'X 45g', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:53:16', '2021-09-08 11:53:16'),
(176, '395aL51631105611', 26, 42, 2, 'X 45g', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:53:31', '2021-09-08 11:53:44'),
(177, 'jxZEOi1631106184', 27, 43, 1, 'X 30g', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:03:04', '2021-09-08 12:03:04'),
(178, 'Xoua2R1631106195', 27, 43, 2, 'X 30g', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:03:15', '2021-09-08 12:03:15'),
(179, '9qPp1y1631106205', 27, 43, 3, 'X 30g', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:03:25', '2021-09-08 12:03:25'),
(180, 'm6rZQw1631106958', 28, 44, 1, 'Cream', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:15:58', '2021-09-08 12:15:58'),
(181, 'icWgAP1631106972', 28, 44, 2, 'Cream', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:16:12', '2021-09-08 12:16:12'),
(182, '8CDpJG1631106984', 28, 44, 3, 'Cream', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:16:24', '2021-09-08 12:16:24'),
(183, 'WTmNmR1631107002', 28, 44, 1, 'Gel', 4, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:16:42', '2021-09-08 12:16:42'),
(184, 'Dhwpt01631107016', 28, 44, 2, 'Gel', 5, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:16:56', '2021-09-08 12:16:56'),
(185, 'HHn1fG1631107025', 28, 44, 3, 'Gel', 6, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:17:05', '2021-09-08 12:17:05'),
(186, '15oF5m1631107641', 29, 45, 1, 'Gel', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:27:21', '2021-09-08 12:27:21'),
(187, 's6tzxQ1631107652', 29, 45, 2, 'Gel', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:27:32', '2021-09-08 12:27:32'),
(188, 'up4p3X1631107666', 29, 45, 3, 'Gel', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:27:46', '2021-09-08 12:27:46'),
(189, 'fRdKFo1631108551', 30, 46, 1, 'Gel', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:42:31', '2021-09-08 12:42:40'),
(190, 'AZLuPf1631163983', 31, 47, 1, 'Gel', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:06:23', '2021-09-09 04:06:23'),
(191, 'FSILS91631163995', 31, 47, 2, 'Gel', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:06:35', '2021-09-09 04:06:35'),
(192, 'sawGqO1631164014', 31, 48, 1, 'Gel', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:06:54', '2021-09-09 04:06:54'),
(193, 'GUoBoO1631164023', 31, 48, 2, 'Gel', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:07:03', '2021-09-09 04:07:15'),
(194, 'n0TMyJ1631164562', 32, 49, 1, 'Gel', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:16:02', '2021-09-09 04:16:02'),
(195, 'mkkt4X1631164575', 32, 49, 2, 'Gel', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:16:15', '2021-09-09 04:16:15'),
(196, 'FsV7R91631165389', 33, 50, 84, 'Tablets', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:29:49', '2021-09-09 04:29:49'),
(197, 'om0Z3V1631165821', 34, 51, 30, 'Tablets', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:37:01', '2021-09-09 04:37:01'),
(198, 'ceHyjv1631165838', 34, 51, 60, 'Tablets', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:37:18', '2021-09-09 04:37:30'),
(199, 'wxYrJU1631165861', 34, 51, 90, 'Tablets', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:37:41', '2021-09-09 04:37:41'),
(200, 'goUqhN1631166583', 35, 52, 30, 'Tablets', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:49:43', '2021-09-09 04:49:43'),
(201, 'Q6QmGI1631166599', 35, 52, 60, 'Tablets', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:49:59', '2021-09-09 04:49:59'),
(202, 'HvJfCI1631166610', 35, 52, 90, 'Tablets', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:50:10', '2021-09-09 04:50:10'),
(203, 'qKY2MX1631168532', 36, 53, 1, 'Spary', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:22:12', '2021-09-09 05:22:12'),
(204, 'OS3YYl1631169135', 37, 54, 1, 'Spary', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:32:15', '2021-09-09 05:32:15'),
(205, 'AhKOpl1631169522', 38, 55, 1, 'Pen', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:38:42', '2021-09-09 05:38:42'),
(206, '59PzKu1631169543', 38, 55, 2, 'Pen', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:39:03', '2021-09-09 05:39:03'),
(207, 'r76Mf71631170295', 39, 56, 15, 'Tablets', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:51:35', '2021-09-09 05:51:35'),
(208, 'G5kVvE1631170307', 39, 56, 30, 'Tablets', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:51:47', '2021-09-09 05:51:47'),
(209, 'BBjzFg1631170315', 39, 56, 45, 'Tablets', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:51:55', '2021-09-09 05:51:55'),
(210, 'hgaCD01631171110', 40, 57, 8, 'Tablets', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:05:10', '2021-09-09 06:05:10'),
(211, 'YY21MX1631171119', 40, 57, 16, 'Tablets', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:05:19', '2021-09-09 06:05:29'),
(212, 'R1Kn5a1631171139', 40, 57, 24, 'Tablets', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:05:39', '2021-09-09 06:05:39'),
(213, 'Cck1pm1631171697', 41, 58, 8, 'Tablets', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:14:57', '2021-09-09 06:15:31'),
(214, 'i79VmK1631171708', 41, 58, 16, 'Tablets', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:15:08', '2021-09-09 06:15:08'),
(215, '9qASeQ1631171719', 41, 58, 24, 'Tablets', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:15:19', '2021-09-09 06:15:19'),
(216, '5ck1Pe1631172312', 42, 59, 16, 'Tablets (1 Week)', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:25:12', '2021-09-09 06:25:12'),
(217, '6QKX5S1631172325', 42, 59, 19, 'Tablets (19 Days)', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:25:25', '2021-09-09 07:13:55'),
(218, 'WC6uAs1631175185', 42, 59, 23, 'Tablets (2 Weeks)', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:13:05', '2021-09-09 07:13:05'),
(219, 'Jzgh8z1631175199', 42, 59, 30, 'Tablets (3 Weeks)', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:13:19', '2021-09-09 07:13:19'),
(220, 'fy9c3E1631175210', 42, 59, 37, 'Tablets (4 Weeks)', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:13:30', '2021-09-09 07:14:05'),
(221, 'oB95771631175257', 42, 59, 51, 'Tablets (6 Weeks)', 6, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:14:17', '2021-09-09 07:14:17'),
(222, 'iMj2Gj1631175271', 42, 59, 65, 'Tablets (8 Weeks)', 7, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:14:31', '2021-09-09 07:14:31'),
(223, 'ALymR61631175283', 42, 59, 79, 'Tablets (10 Weeks)', 8, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:14:43', '2021-09-09 07:14:43'),
(224, 'ccojtw1631175300', 42, 59, 93, 'Tablets (12 Weeks)', 9, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:15:00', '2021-09-09 07:15:00'),
(225, 'dAcMoA1631175313', 42, 59, 193, 'Tablets (193 Days)', 10, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:15:13', '2021-09-09 07:15:13'),
(226, 'Y2yB9w1631175331', 42, 59, 374, 'Tablets (374 Days)', 11, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:15:31', '2021-09-09 07:15:31'),
(227, 'dDlpYq1631176047', 43, 60, 16, 'Tablets (1 Week)', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:27:27', '2021-09-09 07:27:27'),
(228, '1ancfg1631176062', 43, 60, 19, 'Tablets (19 Days)', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:27:42', '2021-09-09 07:27:42'),
(229, 'o6MSUX1631176072', 43, 60, 23, 'Tablets (2 Weeks)', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:27:52', '2021-09-09 07:27:52'),
(230, '1XlJCg1631176083', 43, 60, 30, 'Tablets (3 Weeks)', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:28:03', '2021-09-09 07:28:03'),
(231, 'kLMBTG1631176097', 43, 60, 37, 'Tablets (4 Weeks)', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:28:17', '2021-09-09 07:28:17'),
(232, 'sYwZRM1631176109', 43, 60, 51, 'Tablets (6 Weeks)', 6, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:28:29', '2021-09-09 07:28:29'),
(233, 'BT9uM51631176121', 43, 60, 65, 'Tablets (8 Weeks)', 7, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:28:41', '2021-09-09 07:28:41'),
(234, '2TaAJW1631176131', 43, 60, 79, 'Tablets (10 weeks)', 8, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:28:51', '2021-09-09 07:28:51'),
(235, 'HDwr3F1631176145', 43, 60, 93, 'Tablets (12 Weeks)', 9, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:29:05', '2021-09-09 07:29:05'),
(236, 'zBQsUh1631176159', 43, 60, 193, 'Tablets (193 Days)', 10, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:29:19', '2021-09-09 07:29:19'),
(237, 'Pp2R5o1631176172', 43, 60, 374, 'Tablets (374 Days)', 11, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:29:32', '2021-09-09 07:29:32'),
(238, 'wE7KgH1631176874', 44, 61, 10, 'Capsules', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:41:14', '2021-09-09 07:41:14'),
(239, 'bhSC0r1631176885', 44, 61, 20, 'Capsules', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:41:25', '2021-09-09 07:41:25'),
(240, 'SNKrz71631176893', 44, 61, 30, 'Capsules', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:41:33', '2021-09-09 07:41:33'),
(241, '7QnIW51631176901', 44, 61, 40, 'Capsules', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:41:41', '2021-09-09 07:41:41'),
(242, 'iICidu1631177201', 45, 62, 40, 'Tablets', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:46:41', '2021-09-09 07:46:41'),
(243, 'lxAHx41631177746', 46, 63, 3, 'Tablets', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:55:46', '2021-09-09 07:55:46'),
(244, 'j2ofKx1631177755', 46, 63, 6, 'Tablets', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:55:55', '2021-09-09 07:55:55'),
(245, 'iHyizS1631177762', 46, 63, 9, 'Tablets', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:56:02', '2021-09-09 07:56:02'),
(246, 'ibOmvV1631177770', 46, 63, 12, 'Tablets', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:56:10', '2021-09-09 07:56:10'),
(247, 'ja9XjR1631177782', 46, 63, 15, 'Tablets', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:56:22', '2021-09-09 07:56:22'),
(248, 'S4L6g61631177792', 46, 63, 18, 'Tablets', 6, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:56:32', '2021-09-09 07:56:32'),
(249, 'PbZv1h1631177808', 46, 64, 3, 'Tablets', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:56:48', '2021-09-09 07:56:48'),
(250, 'PVAplX1631177816', 46, 64, 6, 'Tablets', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:56:56', '2021-09-09 07:56:56'),
(251, '4Oiah61631177827', 46, 64, 9, 'Tablets', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:57:07', '2021-09-09 07:57:07'),
(252, '6s0sn21631177842', 46, 64, 12, 'Tablets', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:57:22', '2021-09-09 07:57:22'),
(253, 'U3DLMA1631177851', 46, 64, 15, 'Tablets', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:57:31', '2021-09-09 07:57:31'),
(254, 'tH2Vgo1631177861', 46, 64, 18, 'Tablets', 6, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:57:41', '2021-09-09 07:57:41'),
(255, '2Z34cd1631185271', 48, 65, 1, 'Cream', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:01:11', '2021-09-09 10:01:11'),
(256, 'lGWljL1631185281', 48, 65, 3, 'Cream', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:01:21', '2021-09-09 10:02:40'),
(257, 'FXxGSx1631185301', 48, 65, 2, 'Cream', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:01:41', '2021-09-09 10:03:03'),
(258, 'hUnFQW1631185443', 48, 65, 4, 'Cream', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:04:03', '2021-09-09 10:04:03'),
(259, 'giaNnR1631186402', 49, 66, 1, 'Injection', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:20:02', '2021-09-09 10:20:02'),
(260, 'VZaLQo1631186412', 49, 66, 2, 'Injections', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:20:12', '2021-09-09 10:23:03'),
(261, 'nLGPn51631186429', 49, 66, 3, 'Injections', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:20:29', '2021-09-09 10:23:14'),
(262, 'OVUFDP1631186441', 49, 66, 4, 'Injections', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:20:41', '2021-09-09 10:23:24'),
(263, 'Ku70z71631186452', 49, 66, 5, 'Injections', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:20:52', '2021-09-09 10:23:34'),
(264, '45TCg11631186465', 49, 67, 1, 'Injections', 6, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:21:05', '2021-09-09 10:27:00'),
(265, 'h27F3Y1631186474', 49, 67, 2, 'Injections', 7, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:21:14', '2021-09-09 10:27:09'),
(266, '2CJiTG1631186485', 49, 67, 3, 'Injections', 8, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:21:25', '2021-09-09 10:27:20'),
(267, 'JfU7E91631186497', 49, 67, 4, 'Injections', 9, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:21:37', '2021-09-09 10:27:31'),
(268, 'qf1gWb1631186506', 49, 67, 5, 'Injections', 10, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:21:46', '2021-09-09 10:27:40'),
(269, 'DI9unc1631186520', 49, 68, 1, 'Injections', 11, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:22:00', '2021-09-09 10:27:54'),
(270, 'HhR6m91631186560', 49, 68, 5, 'Injections', 12, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:22:40', '2021-09-09 10:28:09'),
(271, '1Duk0d1631187772', 50, 69, 42, 'Capsules', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:42:52', '2021-09-09 10:42:52'),
(272, 'EYWzmO1631187789', 50, 69, 84, 'Capsules', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:43:09', '2021-09-09 10:43:09'),
(273, 'pAgznu1631187805', 50, 69, 168, 'Capsules', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:43:25', '2021-09-09 10:43:25'),
(274, 'SP13SB1631187821', 50, 69, 252, 'Capsules', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:43:41', '2021-09-09 10:43:41'),
(275, '0EM3in1631188850', 51, 71, 42, 'Capsules', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:00:50', '2021-09-09 11:00:50'),
(276, 'aL6VvC1631188864', 51, 71, 84, 'Capsules', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:01:04', '2021-09-09 11:01:04'),
(277, 'tjsYcP1631188875', 51, 71, 168, 'Capsules', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:01:15', '2021-09-09 11:01:15'),
(278, 'UIfLL91631188885', 51, 71, 252, 'Capsules', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:01:25', '2021-09-09 11:01:25'),
(279, 'reYco61631189589', 52, 72, 30, 'Tablets', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:13:09', '2021-09-09 11:13:09'),
(280, 'DzVLWo1631189604', 52, 72, 60, 'Tablets', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:13:24', '2021-09-09 11:13:24'),
(281, 'cdZgVD1631190164', 53, 73, 1, 'Inhaler', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:22:44', '2021-09-09 11:22:44'),
(282, 'JisVry1631190176', 53, 73, 2, 'Inhaler', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:22:56', '2021-09-09 11:22:56'),
(283, 'TQJoGF1631190443', 54, 74, 1, 'Turbohaler', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:27:23', '2021-09-09 11:27:23'),
(284, 'V31Ol51631190461', 54, 75, 1, 'Turbohaler', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:27:41', '2021-09-09 11:27:41'),
(285, 'erFXjb1631190483', 54, 76, 1, 'Turbohaler', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:28:03', '2021-09-09 11:28:03'),
(286, 'UCnuMp1631190962', 55, 77, 1, 'Inhaler', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:36:02', '2021-09-09 11:36:02'),
(287, 'adQuQh1631190976', 55, 78, 1, 'Inhaler', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:36:16', '2021-09-09 11:36:16'),
(288, 'h2KUBZ1631190987', 55, 79, 1, 'Inhaler', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:36:27', '2021-09-09 11:36:39'),
(289, 'xOMrJ41631192016', 56, 80, 12, 'Sachets', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:53:36', '2021-09-09 11:53:36'),
(290, 'ozuaNP1631192029', 56, 80, 24, 'Sachets', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:53:49', '2021-09-09 11:53:49'),
(291, 'Hku3aw1631192042', 56, 80, 36, 'Sachets', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:54:02', '2021-09-09 11:54:02'),
(292, 'v5lfb31631192054', 56, 80, 48, 'Sachets', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:54:14', '2021-09-09 11:54:14'),
(293, 'sTK0no1631192434', 57, 81, 1, 'X3ml', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:00:34', '2021-09-09 12:00:34'),
(294, 'PrlbFi1631192447', 57, 81, 2, 'X3ml', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:00:47', '2021-09-09 12:01:24'),
(295, 'OzslCy1631192457', 57, 81, 3, 'X3ml', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:00:57', '2021-09-09 12:00:57'),
(296, 'x4qUTl1631192896', 58, 83, 1, 'Cream', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:08:16', '2021-09-09 12:08:16'),
(297, '0i7nKW1631192909', 58, 83, 2, 'Cream', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:08:29', '2021-09-09 12:08:29'),
(298, 'KYsvf61631192922', 58, 83, 3, 'Cream', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:08:42', '2021-09-09 12:08:53'),
(299, '45mp461631193767', 59, 84, 28, 'Tablets (2 Week Supply)', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:22:47', '2021-09-09 12:22:47'),
(300, 'f0lWMH1631193778', 59, 84, 56, 'Tablets (4 Week Supply)', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:22:58', '2021-09-09 12:22:58'),
(301, 'j5PUyD1631193791', 59, 84, 112, 'Tablets (8 Week Supply)', 3, '0', '115.186.141.11', '115.186.141.11', '2021-09-09 12:23:11', '2021-09-13 04:34:20'),
(302, 'xWa6zO1631193802', 59, 84, 168, 'Tablets (12 Week Supply)', 4, '0', '115.186.141.11', '115.186.141.11', '2021-09-09 12:23:22', '2021-09-13 04:34:31'),
(303, 'EusqFu1631193861', 59, 85, 28, 'Tablets ( Continuation Pack - 2 weeks Supply)', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:24:21', '2021-09-09 12:24:21'),
(304, 'yqgw171631193872', 59, 85, 56, 'Tablets (Continuation Pack - 4 weeks Supply)', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:24:32', '2021-09-09 12:24:32'),
(305, 'sXfIio1631193885', 59, 85, 112, 'Tablets (Continuation Pack - 8 weeks Supply)', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:24:45', '2021-09-09 12:24:45'),
(306, 'Ycixie1631193895', 59, 85, 168, 'Tablets (Continuation Pack - 12 weeks Supply)', 4, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:24:55', '2021-09-09 12:24:55'),
(307, 'fFkwH51631193922', 59, 85, 168, 'Tablets 12 week full Course (includes starter pack)', 5, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:25:22', '2021-09-09 12:25:22'),
(308, 'WcXrx51631511918', 60, 86, 6, 'Tablets', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 04:45:18', '2021-09-13 04:45:18'),
(309, 'HEf7Qi1631511935', 60, 86, 12, 'Tablets', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 04:45:35', '2021-09-13 04:45:35'),
(310, 'UtPFum1631511950', 60, 86, 18, 'Tablets', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 04:45:50', '2021-09-13 04:45:50'),
(311, 'is3JJ81631511959', 60, 86, 24, 'Tablets', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 04:45:59', '2021-09-13 04:45:59'),
(312, 'NpJg6L1631512862', 61, 87, 2, 'Nasal Sprays', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:01:02', '2021-09-13 05:01:02'),
(313, '71gbyt1631512877', 61, 87, 6, 'Nasal Sprays', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:01:17', '2021-09-13 05:01:17'),
(314, 'v2LF441631512895', 61, 87, 12, 'Nasal Sprays', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:01:35', '2021-09-13 05:02:14'),
(315, 'ppjI6r1631513741', 62, 88, 6, 'Tablets', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:15:41', '2021-09-13 05:15:41'),
(316, 'etLdxY1631513767', 62, 88, 12, 'Tablets', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:16:07', '2021-09-13 05:16:07'),
(317, 'XzsT711631513775', 62, 88, 18, 'Tablets', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:16:15', '2021-09-13 05:16:15'),
(318, 'Oy4Lvl1631513786', 62, 88, 24, 'Tablets', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:16:26', '2021-09-13 05:16:26'),
(319, 'eObNyo1631513812', 62, 89, 6, 'Tablets', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:16:52', '2021-09-13 05:16:52'),
(320, 'nvcWEm1631513821', 62, 89, 12, 'Tablets', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:17:01', '2021-09-13 05:17:01'),
(321, 'JEUwIP1631513831', 62, 89, 18, 'Tablets', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:17:11', '2021-09-13 05:17:11'),
(322, 'nhBPgN1631513840', 62, 89, 24, 'Tablets', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:17:20', '2021-09-13 05:17:20'),
(323, 'sQ7SVP1631514893', 63, 90, 3, 'Tablets', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:34:53', '2021-09-13 05:34:53'),
(324, '5szH6O1631514902', 63, 90, 6, 'Tablets', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:35:02', '2021-09-13 05:35:02'),
(325, 'tykpVF1631514911', 63, 90, 9, 'Tablets', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:35:11', '2021-09-13 05:35:11'),
(326, 'QVEXGB1631514919', 63, 90, 12, 'Tablets', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:35:19', '2021-09-13 05:35:31'),
(327, 'pEgb8H1631515422', 64, 91, 3, 'Tablets', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:43:42', '2021-09-13 05:43:42'),
(328, 'Bz0aA11631515431', 64, 91, 6, 'Tablets', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:43:51', '2021-09-13 05:43:51'),
(329, '8h8N0R1631515441', 64, 91, 9, 'Tablets', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:44:01', '2021-09-13 05:44:01'),
(330, 'dw5wu81631515453', 64, 91, 12, 'Tablets', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:44:13', '2021-09-13 05:44:13'),
(331, 'Uzxcmm1631516084', 65, 92, 3, 'Tablets', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:54:44', '2021-09-13 05:54:44'),
(332, 'yQdIsT1631516093', 65, 92, 6, 'Tablets', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:54:53', '2021-09-13 05:54:53'),
(333, 'uaiHay1631516108', 65, 92, 9, 'Tablets', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:55:08', '2021-09-13 05:55:08'),
(334, 'Ku8pgD1631516118', 65, 92, 12, 'Tablets', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:55:18', '2021-09-13 05:55:18'),
(335, 'B0i5gj1631516616', 66, 93, 6, 'Tablets', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:03:36', '2021-09-13 06:03:36'),
(336, 'Oht3R21631516626', 66, 93, 12, 'Tablets', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:03:46', '2021-09-13 06:03:46'),
(337, 'GaT8Ew1631516655', 66, 94, 6, 'Tablets', 3, '0', '101.50.108.104', '101.50.108.104', '2021-09-13 06:04:15', '2021-09-13 06:12:15'),
(338, 'BQ9heL1631516668', 66, 94, 12, 'Tablets', 4, '0', '101.50.108.104', '101.50.108.104', '2021-09-13 06:04:28', '2021-09-13 06:12:27'),
(339, 'vzguZh1631517365', 67, 95, 6, 'Tablets', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:16:05', '2021-09-13 06:16:05'),
(340, 't9eFU11631517372', 67, 95, 12, 'Tablets', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:16:12', '2021-09-13 06:16:12'),
(341, '4JLPEl1631517389', 67, 96, 6, 'Tablets', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:16:29', '2021-09-13 06:16:29'),
(342, 'zGaHjz1631517402', 67, 96, 12, 'Tablets', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:16:42', '2021-09-13 06:16:42'),
(343, '1tNyNd1631518226', 68, 97, 6, 'Tablets', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:30:26', '2021-09-13 06:30:26'),
(344, 'G3Aud41631518240', 68, 97, 12, 'Tablets', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:30:40', '2021-09-13 06:30:40'),
(345, 'hdPYUM1631518262', 68, 98, 6, 'Tablets', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:31:02', '2021-09-13 06:31:02'),
(346, 'qNTtjD1631518277', 68, 98, 12, 'Tablets', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:31:17', '2021-09-13 06:31:17'),
(347, 'ngIVBm1631518293', 68, 98, 18, 'Tablets', 5, '0', '101.50.108.104', '101.50.108.104', '2021-09-13 06:31:33', '2021-09-13 06:35:05'),
(348, 'mpHFli1631518305', 68, 98, 24, 'Tablets', 6, '0', '101.50.108.104', '101.50.108.104', '2021-09-13 06:31:45', '2021-09-13 06:35:20'),
(349, 'EGmCAy1631519233', 69, 99, 1, 'Spray (pack size of 6)', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:47:13', '2021-09-13 06:47:13'),
(350, 'Ej8OJd1631520129', 70, 100, 6, 'Tablets', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:02:09', '2021-09-13 07:02:09'),
(351, 'YvXCMr1631520138', 70, 100, 12, 'Tablets', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:02:18', '2021-09-13 07:02:18'),
(352, 'hcqWZm1631520147', 70, 100, 18, 'Tablets', 3, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:02:27', '2021-09-13 07:02:27'),
(353, 'Jpc11u1631520156', 70, 100, 24, 'Tablets', 4, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:02:36', '2021-09-13 07:02:36'),
(354, '7nbJgH1631520187', 70, 101, 6, 'Tablets', 5, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:03:07', '2021-09-13 07:03:07'),
(355, 'O2YfTg1631520200', 70, 101, 12, 'Tablets', 6, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:03:20', '2021-09-13 07:03:53'),
(356, 'fS85871631520211', 70, 101, 18, 'Tablets', 7, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:03:31', '2021-09-13 07:04:04'),
(357, 'AgodQl1631520266', 70, 101, 24, 'Tablets', 8, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:04:26', '2021-09-13 07:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `kod_med_sections`
--

CREATE TABLE `kod_med_sections` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_med_sections`
--

INSERT INTO `kod_med_sections` (`id`, `hash_id`, `title`, `slug`, `display_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DEERCF1631011164', 'Men\'s health', 'mens-health', 1, '1', '2021-09-07 09:39:24', '2021-10-05 09:54:18'),
(2, 'KhVkna1631011221', 'Women\'s health', 'womens-health', 2, '1', '2021-09-07 09:40:21', '2021-09-07 09:40:30'),
(3, 'EgMaKy1631011309', 'General health', 'general-health', 3, '1', '2021-09-07 09:41:49', '2021-09-07 09:42:00'),
(4, '03psa61631011373', 'Travel health', 'travel-health', 4, '1', '2021-09-07 09:42:53', '2021-09-07 09:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `kod_med_stock`
--

CREATE TABLE `kod_med_stock` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `strength_id` int(11) DEFAULT NULL,
  `quantity_id` int(11) DEFAULT NULL,
  `stock_level` int(11) NOT NULL DEFAULT 1,
  `in_stock` enum('1','0') NOT NULL DEFAULT '1',
  `created_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_med_stock`
--

INSERT INTO `kod_med_stock` (`id`, `hash_id`, `medicine_id`, `strength_id`, `quantity_id`, `stock_level`, `in_stock`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(1, 'bLZVJL1631110316', 18, 34, 147, 9, '1', '101.50.109.72', NULL, '2021-09-08 13:11:56', '2021-10-01 11:16:29'),
(2, 'Aj50QZ1631608956', 9, 25, 129, 25, '1', '101.50.108.5', NULL, '2021-09-14 07:42:36', '2021-09-14 07:42:36'),
(3, 's0sN2v1631608959', 9, 25, 130, 25, '1', '101.50.108.5', NULL, '2021-09-14 07:42:39', '2021-09-14 07:42:39'),
(4, 'Myqq4n1631608961', 9, 25, 127, 24, '1', '101.50.108.5', NULL, '2021-09-14 07:42:41', '2021-09-14 07:42:41'),
(5, 'ntzGEB1631608964', 9, 25, 128, 25, '1', '101.50.108.5', NULL, '2021-09-14 07:42:44', '2021-09-14 07:42:44'),
(6, 'Ka26n71631609008', 1, 1, 3, 6, '1', '101.50.108.5', NULL, '2021-09-14 07:43:28', '2021-09-14 07:43:28'),
(7, 'grLqKZ1631609010', 1, 1, 4, 10, '1', '101.50.108.5', NULL, '2021-09-14 07:43:30', '2021-09-14 07:43:30'),
(8, 'GGOSVc1631609013', 1, 1, 1, 15, '1', '101.50.108.5', NULL, '2021-09-14 07:43:33', '2021-10-01 13:56:26'),
(9, 'oLt91r1631609016', 1, 1, 2, 20, '1', '101.50.108.5', NULL, '2021-09-14 07:43:36', '2021-09-14 07:43:36'),
(10, 'Ygibca1631609016', 5, 15, 73, 20, '1', '101.50.108.5', NULL, '2021-09-14 07:43:36', '2021-09-14 07:43:39'),
(11, 'mAa5nn1631609021', 5, 15, 74, 20, '1', '101.50.108.5', NULL, '2021-09-14 07:43:41', '2021-09-14 07:43:41'),
(12, '3xv9jD1631609023', 5, 15, 75, 20, '1', '101.50.108.5', NULL, '2021-09-14 07:43:43', '2021-09-14 07:43:43'),
(13, 'qEH0bY1631609024', 5, 15, 76, 19, '1', '101.50.108.5', NULL, '2021-09-14 07:43:44', '2021-09-14 07:43:44'),
(14, 'nxXYW41631609026', 5, 15, 77, 20, '1', '101.50.108.5', NULL, '2021-09-14 07:43:46', '2021-09-14 07:43:46'),
(15, 'sI8mFS1631609028', 5, 15, 71, 20, '1', '101.50.108.5', NULL, '2021-09-14 07:43:48', '2021-09-14 07:43:48'),
(16, 'wi5Z2O1631615858', 22, 38, 160, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:37:38', '2021-09-28 11:54:17'),
(17, 'N1VYeb1631615858', 39, 56, 207, 0, '1', '101.50.108.5', NULL, '2021-09-14 09:37:38', '2021-09-29 09:49:29'),
(18, 'VDoLDO1631615862', 22, 38, 163, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:37:42', '2021-10-01 11:16:29'),
(19, 'kDvlz31631615865', 22, 38, 161, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:37:45', '2021-09-14 09:37:45'),
(20, 'Gq3eQ31631615867', 39, 56, 208, 5, '1', '101.50.108.5', NULL, '2021-09-14 09:37:47', '2021-10-01 13:41:35'),
(21, 'UGmk6O1631615871', 22, 38, 162, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:37:51', '2021-09-14 09:37:51'),
(22, 'HBwbEc1631615874', 39, 56, 209, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:37:54', '2021-09-14 09:37:54'),
(23, 'U4xp7j1631615876', 30, 46, 189, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:37:56', '2021-09-14 09:37:56'),
(24, 'y1qyw71631615879', 56, 80, 289, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:37:59', '2021-09-29 17:27:12'),
(25, 'C0lM0m1631615881', 56, 80, 290, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:38:01', '2021-09-29 18:00:48'),
(26, 'msak1E1631615887', 56, 80, 291, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:38:07', '2021-09-14 09:38:07'),
(27, 'LFEBfN1631615889', 56, 80, 292, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:38:09', '2021-09-30 15:43:45'),
(28, 'gtpPga1631615890', 59, 84, 301, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:38:10', '2021-09-14 09:38:10'),
(29, 'xaSH1A1631615892', 59, 84, 302, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:38:12', '2021-09-14 09:38:12'),
(30, 'mbKFrf1631615895', 59, 84, 299, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:38:15', '2021-09-30 09:42:35'),
(31, 'gJKcrO1631615897', 59, 84, 300, 5, '1', '101.50.108.5', NULL, '2021-09-14 09:38:17', '2021-09-14 09:38:17'),
(32, 'sNq2HD1631615906', 59, 85, 305, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:38:26', '2021-09-14 09:38:26'),
(33, 'pq8oYO1631615909', 59, 85, 306, 5, '1', '101.50.108.5', NULL, '2021-09-14 09:38:29', '2021-09-14 09:38:29'),
(34, 'C7SKeg1631615913', 59, 85, 307, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:38:33', '2021-09-14 09:38:33'),
(35, 'LInHv11631615917', 59, 85, 303, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:38:37', '2021-09-30 15:51:36'),
(36, 'lDrccf1631615924', 59, 85, 304, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:38:44', '2021-09-14 09:38:44'),
(37, '4yJwPn1631615926', 3, 9, 37, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:38:46', '2021-09-14 09:38:46'),
(38, 'PID0TQ1631615928', 3, 9, 38, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:38:48', '2021-09-14 09:38:48'),
(39, 'yPhWUy1631615932', 3, 9, 39, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:38:52', '2021-09-14 09:38:52'),
(40, 'LmAAvL1631615934', 3, 9, 40, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:38:54', '2021-09-14 09:38:54'),
(41, 'unqiJs1631615937', 3, 9, 41, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:38:57', '2021-09-14 09:38:57'),
(42, 'yMuMQs1631615938', 3, 9, 35, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:38:58', '2021-09-14 09:38:58'),
(43, 'FjGEnT1631615940', 3, 9, 42, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:39:00', '2021-09-14 09:39:00'),
(44, 'Yj3vep1631615943', 3, 9, 36, 5, '1', '101.50.108.5', NULL, '2021-09-14 09:39:03', '2021-09-14 09:39:03'),
(45, 'D6VhBH1631615946', 3, 7, 29, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:39:06', '2021-09-14 09:39:06'),
(46, 'YveTCa1631615952', 3, 7, 31, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:39:12', '2021-09-14 09:39:12'),
(47, 'Nc11K11631615955', 3, 7, 32, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:39:15', '2021-09-14 09:39:18'),
(48, 'wl4Xzo1631615960', 3, 10, 45, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:39:20', '2021-09-14 09:39:20'),
(49, 'eEQ5oa1631615963', 3, 10, 46, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:39:23', '2021-09-14 09:39:23'),
(50, 'BWOQGW1631615964', 3, 10, 47, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:39:24', '2021-09-14 09:39:24'),
(51, 'dLpHIH1631615966', 3, 10, 48, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:39:26', '2021-09-14 09:39:26'),
(52, 'MRp18V1631615969', 3, 10, 49, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:39:29', '2021-09-14 09:39:29'),
(53, 'DhmrDt1631615971', 3, 10, 43, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:39:31', '2021-09-14 09:39:31'),
(54, 'k8SGkA1631615973', 3, 10, 50, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:39:33', '2021-09-14 09:39:33'),
(55, '2aF4tb1631615978', 3, 10, 44, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:39:38', '2021-09-14 09:39:38'),
(56, 'pudnWp1631615984', 3, 8, 30, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:39:44', '2021-09-14 09:39:44'),
(57, 'nOKxnj1631615985', 3, 8, 33, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:39:45', '2021-09-14 09:39:45'),
(58, 'uCCmZ11631615988', 28, 44, 180, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:39:48', '2021-09-29 09:15:13'),
(59, 'dBsMez1631615990', 3, 8, 34, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:39:50', '2021-09-14 09:39:50'),
(60, 'sx0VlF1631615992', 28, 44, 183, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:39:52', '2021-09-14 09:39:52'),
(61, 'J7zis11631615995', 28, 44, 181, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:39:55', '2021-09-14 09:39:55'),
(62, 'GzAgU01631615998', 28, 44, 184, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:39:58', '2021-09-14 09:39:58'),
(63, '7OeIBA1631616001', 28, 44, 182, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:40:01', '2021-09-14 09:40:01'),
(64, 'WtdWQL1631616003', 28, 44, 185, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:40:03', '2021-09-14 09:40:03'),
(65, 'RgZf261631616005', 33, 50, 196, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:40:05', '2021-09-14 09:40:05'),
(66, 'AXWTYz1631616010', 31, 47, 190, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:40:10', '2021-09-14 09:40:10'),
(67, 'kqyggl1631616012', 31, 47, 191, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:40:12', '2021-09-14 09:40:12'),
(68, 'AXFuHc1631616015', 31, 48, 192, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:40:15', '2021-09-14 09:40:15'),
(69, 'cLKlqf1631616018', 31, 48, 193, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:40:18', '2021-09-14 09:40:18'),
(70, 'MjrRzI1631616020', 48, 65, 255, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:40:20', '2021-09-14 09:40:20'),
(71, '9luySr1631616022', 48, 65, 257, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:40:22', '2021-09-14 09:40:22'),
(72, 'bd2vmi1631616024', 48, 65, 256, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:40:24', '2021-09-14 09:40:24'),
(73, 'wNQUXZ1631616026', 48, 65, 258, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:40:26', '2021-09-14 09:40:26'),
(74, 'TIbT9S1631616030', 26, 42, 175, 0, '1', '101.50.108.5', NULL, '2021-09-14 09:40:30', '2021-09-29 09:14:07'),
(75, 'uRLbpx1631616032', 26, 42, 176, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:40:32', '2021-10-01 11:39:59'),
(76, 'CR7uzY1631616040', 38, 55, 205, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:40:40', '2021-09-14 09:40:40'),
(77, 'kMYTTN1631616042', 38, 55, 206, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:40:42', '2021-09-14 09:40:42'),
(78, 'jwKI6V1631616045', 14, 30, 137, 6, '1', '101.50.108.5', NULL, '2021-09-14 09:40:45', '2021-09-14 09:40:49'),
(79, 'SS7ZvI1631616051', 14, 30, 138, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:40:51', '2021-09-14 09:40:51'),
(80, 'yvpEla1631616054', 24, 40, 168, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:40:54', '2021-09-14 09:40:54'),
(81, 'd49gmk1631616056', 24, 40, 169, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:40:56', '2021-09-14 09:40:56'),
(82, 'wm7RZp1631616059', 24, 40, 170, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:40:59', '2021-09-14 09:40:59'),
(83, 'oNgpLv1631616061', 35, 52, 200, 1, '1', '101.50.108.5', NULL, '2021-09-14 09:41:01', '2021-10-01 11:52:35'),
(84, 'ZVKD8U1631616063', 35, 52, 201, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:41:03', '2021-09-29 09:30:20'),
(85, 'b2PpPW1631616065', 35, 52, 202, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:05', '2021-09-14 09:41:05'),
(86, '0kVixa1631616072', 32, 49, 194, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:12', '2021-09-14 09:41:12'),
(87, 'XU86yg1631616073', 32, 49, 195, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:13', '2021-09-14 09:41:13'),
(88, 'orDXfm1631616075', 19, 35, 151, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:15', '2021-09-14 09:41:15'),
(89, 'Qyy9yW1631616078', 19, 35, 148, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:18', '2021-09-14 09:41:18'),
(90, '89fb3p1631616089', 19, 35, 149, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:29', '2021-09-14 09:41:29'),
(91, 'JcPbxW1631616091', 19, 35, 150, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:31', '2021-09-14 09:41:31'),
(92, 'xNu8x61631616093', 43, 60, 227, 6, '1', '101.50.108.5', NULL, '2021-09-14 09:41:33', '2021-09-14 09:41:38'),
(93, 'vSEjC31631616098', 43, 60, 228, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:38', '2021-09-14 09:41:38'),
(94, 'uOOfDE1631616102', 43, 60, 236, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:42', '2021-09-14 09:41:42'),
(95, 'R0JfaE1631616103', 43, 60, 229, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:43', '2021-09-14 09:41:43'),
(96, 'ZQ2Lty1631616108', 43, 60, 230, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:48', '2021-09-14 09:41:48'),
(97, 'NzC5Nq1631616110', 43, 60, 231, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:50', '2021-09-14 09:41:50'),
(98, 'alNGMd1631616110', 43, 60, 237, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:50', '2021-09-14 09:41:50'),
(99, 'afbsU41631616114', 43, 60, 232, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:54', '2021-09-14 09:41:54'),
(100, 'LeyDDE1631616115', 43, 60, 233, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:55', '2021-09-14 09:41:55'),
(101, 'bU7Mv91631616118', 43, 60, 234, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:58', '2021-09-14 09:41:58'),
(102, 'ARDYYL1631616119', 43, 60, 235, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:41:59', '2021-09-14 09:41:59'),
(103, 'faSdsi1631616122', 2, 6, 23, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:02', '2021-09-14 09:42:02'),
(104, 'IaoQbq1631616124', 2, 6, 24, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:42:04', '2021-09-14 09:42:04'),
(105, 'LPfRBA1631616125', 2, 6, 25, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:05', '2021-09-14 09:42:05'),
(106, '2K8RG11631616129', 2, 6, 26, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:09', '2021-09-14 09:42:09'),
(107, 'z1W3MX1631616133', 2, 6, 27, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:42:13', '2021-09-14 09:42:13'),
(108, '2DrIuo1631616135', 2, 6, 21, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:15', '2021-09-14 09:42:15'),
(109, 'CTlIte1631616137', 2, 6, 28, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:42:17', '2021-09-14 09:42:17'),
(110, 'AcDB5G1631616139', 2, 6, 22, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:42:19', '2021-09-14 09:42:19'),
(111, '6Lpggo1631616141', 2, 4, 7, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:21', '2021-09-14 09:42:21'),
(112, 'npS1ut1631616143', 2, 4, 8, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:23', '2021-09-14 09:42:23'),
(113, 'DKxn7k1631616144', 2, 4, 9, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:42:24', '2021-09-14 09:42:24'),
(114, 'P4COUE1631616146', 2, 4, 10, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:26', '2021-09-14 09:42:26'),
(115, '0mc5qS1631616147', 2, 4, 11, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:27', '2021-09-14 09:42:27'),
(116, 'CTAgnL1631616152', 2, 4, 5, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:32', '2021-09-14 09:42:32'),
(117, 'AgZ4gX1631616155', 2, 4, 12, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:35', '2021-09-14 09:42:35'),
(118, '5u0qZC1631616157', 2, 4, 6, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:37', '2021-09-14 09:42:37'),
(119, 'SWNduq1631616159', 2, 5, 15, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:39', '2021-09-14 09:42:39'),
(120, 'plTOg31631616161', 2, 5, 16, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:41', '2021-09-14 09:42:41'),
(121, 's8SzBZ1631616164', 2, 5, 17, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:44', '2021-09-14 09:42:44'),
(122, 'k7gVvD1631616166', 2, 5, 18, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:46', '2021-09-14 09:42:46'),
(123, 'VoMd8S1631616168', 2, 5, 19, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:48', '2021-09-14 09:42:48'),
(124, 'GydTPU1631616172', 2, 5, 13, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:52', '2021-09-14 09:42:52'),
(125, 'gkSFld1631616173', 2, 5, 20, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:53', '2021-09-14 09:42:53'),
(126, 'zkrLIy1631616179', 2, 5, 14, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:42:59', '2021-09-14 09:42:59'),
(127, 'sqxws31631616181', 60, 86, 309, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:01', '2021-09-14 09:43:01'),
(128, 'ENdar31631616182', 60, 86, 310, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:43:02', '2021-09-29 11:38:10'),
(129, 'W4Nj1r1631616184', 60, 86, 311, 0, '1', '101.50.108.5', NULL, '2021-09-14 09:43:04', '2021-09-30 15:05:39'),
(130, 'kT9yJH1631616186', 60, 86, 308, 0, '1', '101.50.108.5', NULL, '2021-09-14 09:43:06', '2021-09-29 11:55:18'),
(131, 'eh9iug1631616187', 61, 87, 314, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:07', '2021-09-14 09:43:07'),
(132, 'gBZtdT1631616189', 61, 87, 312, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:09', '2021-09-14 09:43:09'),
(133, 'KYqI731631616191', 61, 87, 313, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:43:11', '2021-09-14 09:43:11'),
(134, '6jU0hH1631616193', 27, 43, 177, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:13', '2021-09-14 09:43:13'),
(135, 'puiZq81631616193', 27, 43, 178, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:13', '2021-09-14 09:43:13'),
(136, '0oFVm01631616200', 27, 43, 179, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:43:20', '2021-09-14 09:43:20'),
(137, 'kBnkm81631616200', 13, 29, 135, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:20', '2021-09-14 09:43:20'),
(138, 'UKA0XK1631616202', 13, 29, 136, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:22', '2021-09-14 09:43:22'),
(139, 'UmyQFq1631616203', 7, 20, 104, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:43:23', '2021-09-14 09:43:23'),
(140, 'Mkxrcr1631616205', 7, 20, 105, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:43:25', '2021-09-14 09:43:25'),
(141, 'VpLwyb1631616207', 7, 20, 106, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:43:27', '2021-09-14 09:43:27'),
(142, 'HmGQ2k1631616208', 7, 20, 102, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:28', '2021-09-14 09:43:28'),
(143, 'XaeEWZ1631616210', 7, 20, 103, 1, '1', '101.50.108.5', NULL, '2021-09-14 09:43:30', '2021-09-14 09:43:30'),
(144, 'ZrMjSD1631616211', 7, 21, 109, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:31', '2021-09-14 09:43:31'),
(145, 'Oyg5ue1631616213', 7, 21, 110, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:43:33', '2021-09-14 09:43:33'),
(146, 'EpEX431631616216', 7, 21, 111, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:36', '2021-09-14 09:43:36'),
(147, '81wKOK1631616219', 7, 21, 107, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:39', '2021-09-14 09:43:39'),
(148, 'yOzTOq1631616221', 7, 21, 108, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:41', '2021-09-14 09:43:41'),
(149, '3gc4h31631616222', 7, 19, 99, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:42', '2021-09-14 09:43:42'),
(150, 'blwGoX1631616224', 7, 19, 100, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:43:44', '2021-09-14 09:43:44'),
(151, '2Hmx9X1631616225', 7, 19, 101, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:45', '2021-09-14 09:43:45'),
(152, 'h6eMT01631616227', 7, 19, 97, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:43:47', '2021-09-14 09:43:47'),
(153, 'ySjet11631616229', 7, 19, 98, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:43:49', '2021-09-14 09:43:49'),
(154, 'VhJgOQ1631616230', 12, 28, 134, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:43:50', '2021-09-14 09:43:50'),
(155, '89rUVH1631616231', 42, 59, 216, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:43:51', '2021-10-01 13:53:24'),
(156, '1LSr5W1631616237', 42, 59, 217, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:43:57', '2021-09-29 10:04:55'),
(157, 'rifw2R1631616239', 42, 59, 225, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:43:59', '2021-09-14 09:43:59'),
(158, 'QHKjRl1631616241', 42, 59, 218, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:01', '2021-09-14 09:44:01'),
(159, 'WEM4S81631616242', 42, 59, 219, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:44:02', '2021-09-14 09:44:02'),
(160, 'tmLVm91631616244', 42, 59, 220, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:04', '2021-09-14 09:44:04'),
(161, 'icxYIS1631616245', 42, 59, 226, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:05', '2021-09-14 09:44:05'),
(162, 'uOjsn81631616248', 42, 59, 221, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:44:08', '2021-09-14 09:44:12'),
(163, 'ioubpp1631616249', 42, 59, 222, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:44:09', '2021-09-14 09:44:09'),
(164, 'hlIXXA1631616251', 42, 59, 223, 4, '1', '101.50.108.5', NULL, '2021-09-14 09:44:11', '2021-09-14 09:44:11'),
(165, 'a0RlPN1631616254', 42, 59, 224, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:14', '2021-09-14 09:44:14'),
(166, 'aPXTEB1631616259', 64, 91, 330, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:44:19', '2021-09-14 09:44:19'),
(167, 'vEuwFX1631616260', 64, 91, 327, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:20', '2021-09-14 09:44:20'),
(168, '4grFeI1631616262', 64, 91, 328, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:44:22', '2021-09-14 09:44:22'),
(169, '4Xi4zm1631616263', 64, 91, 329, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:23', '2021-09-14 09:44:23'),
(170, 'vNgFVa1631616264', 65, 92, 334, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:44:24', '2021-09-14 09:44:24'),
(171, 'drcPq51631616266', 65, 92, 331, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:26', '2021-09-14 09:44:26'),
(172, 'e7Ke2y1631616267', 65, 92, 332, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:27', '2021-09-14 09:44:27'),
(173, 'K5nZqH1631616269', 65, 92, 333, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:29', '2021-09-14 09:44:31'),
(174, 'LMXVYG1631616272', 37, 54, 204, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:32', '2021-09-14 09:44:32'),
(175, 'aV1aAv1631616273', 36, 53, 203, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:33', '2021-09-29 09:42:41'),
(176, 'wpgUhj1631616277', 17, 33, 142, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:44:37', '2021-09-14 09:44:37'),
(177, 'O7NFLz1631616278', 17, 33, 143, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:44:38', '2021-09-14 09:44:38'),
(178, 'VMbEo11631616279', 52, 72, 279, 9, '1', '101.50.108.5', NULL, '2021-09-14 09:44:39', '2021-09-30 14:53:50'),
(179, 'sRZ9r21631616280', 52, 72, 280, 10, '1', '101.50.108.5', NULL, '2021-09-14 09:44:40', '2021-09-30 09:53:38'),
(180, 'CMLzeb1631616282', 11, 27, 132, 0, '1', '101.50.108.5', NULL, '2021-09-14 09:44:42', '2021-10-01 11:00:27'),
(181, 'CQD5xu1631616284', 11, 27, 133, 24, '1', '101.50.108.5', NULL, '2021-09-14 09:44:44', '2021-10-06 16:16:34'),
(182, 'CfQZm51631616284', 50, 69, 273, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:44:44', '2021-09-14 09:44:44'),
(183, 'GGODnE1631616286', 50, 69, 274, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:46', '2021-09-14 09:44:46'),
(184, 'Y2NfUD1631616287', 50, 69, 271, 1, '1', '101.50.108.5', NULL, '2021-09-14 09:44:47', '2021-09-30 10:40:49'),
(185, 'hV5Wyj1631616289', 50, 69, 272, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:49', '2021-09-30 14:40:44'),
(186, 'QtYrUn1631616293', 15, 31, 139, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:44:53', '2021-09-14 09:44:53'),
(187, 'TfwWkr1631616294', 15, 31, 140, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:44:54', '2021-09-14 09:44:54'),
(188, 'w2t6SQ1631616296', 45, 62, 242, 0, '1', '101.50.108.5', NULL, '2021-09-14 09:44:56', '2021-09-29 10:34:57'),
(189, 'RcO4eN1631616297', 46, 63, 246, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:44:57', '2021-09-30 14:28:38'),
(190, 'bykqr71631616298', 46, 63, 247, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:44:58', '2021-09-14 09:44:58'),
(191, 'J3KU9I1631616299', 46, 63, 248, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:44:59', '2021-09-14 09:44:59'),
(192, 'up8SMS1631616300', 46, 63, 243, 1, '1', '101.50.108.5', NULL, '2021-09-14 09:45:00', '2021-09-29 10:55:32'),
(193, 'Dqcb0U1631616302', 46, 63, 244, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:45:02', '2021-09-14 09:45:02'),
(194, 'UaGyRy1631616303', 46, 63, 245, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:03', '2021-09-14 09:45:03'),
(195, 'xvMFdW1631616304', 46, 64, 252, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:04', '2021-09-14 09:45:04'),
(196, '6fBa211631616308', 46, 64, 253, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:08', '2021-09-14 09:45:08'),
(197, 'lT3jNW1631616309', 46, 64, 254, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:09', '2021-09-14 09:45:09'),
(198, 'l6Y4M51631616310', 46, 64, 249, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:45:10', '2021-09-14 09:45:10'),
(199, '1faGIj1631616311', 46, 64, 250, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:11', '2021-09-14 09:45:11'),
(200, 'VLS4o61631616313', 46, 64, 251, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:13', '2021-09-14 09:45:13'),
(201, 'd82BMI1631616314', 18, 34, 144, 8, '1', '101.50.108.5', NULL, '2021-09-14 09:45:14', '2021-10-05 14:32:53'),
(202, 'M4Uiki1631616316', 18, 34, 145, 12, '1', '101.50.108.5', NULL, '2021-09-14 09:45:16', '2021-10-05 09:19:34'),
(203, 'E9CKay1631616316', 18, 34, 146, 13, '1', '101.50.108.5', NULL, '2021-09-14 09:45:16', '2021-10-05 09:19:36'),
(204, 'ZSUPXA1631616317', 16, 32, 141, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:17', '2021-09-14 09:45:17'),
(205, '4Zoegy1631616321', 20, 36, 155, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:21', '2021-09-14 09:45:21'),
(206, 'krM5sW1631616322', 20, 36, 152, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:22', '2021-09-14 09:45:22'),
(207, 'E0M3Q71631616323', 20, 36, 153, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:45:23', '2021-09-14 09:45:23'),
(208, 'CrCyFb1631616325', 20, 36, 154, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:45:25', '2021-09-14 09:45:25'),
(209, 'qG6A0b1631616326', 21, 37, 159, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:45:26', '2021-09-14 09:45:26'),
(210, 'R9Ma1q1631616327', 21, 37, 156, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:27', '2021-09-14 09:45:27'),
(211, '0jTPSr1631616328', 21, 37, 157, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:28', '2021-09-14 09:45:28'),
(212, 'rWJnMX1631616329', 21, 37, 158, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:29', '2021-09-14 09:45:29'),
(213, 'yWlVho1631616330', 63, 90, 326, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:45:30', '2021-09-14 09:45:30'),
(214, 'wmfF041631616331', 63, 90, 323, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:31', '2021-09-14 09:45:31'),
(215, 'csMgRl1631616335', 63, 90, 324, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:35', '2021-09-14 09:45:35'),
(216, 'ARB5lI1631616336', 63, 90, 325, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:36', '2021-09-14 09:45:36'),
(217, 'OfFkxE1631616337', 49, 66, 259, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:45:37', '2021-09-30 10:00:49'),
(218, '7gsYGR1631616338', 49, 66, 260, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:38', '2021-09-14 09:45:38'),
(219, 'DNP3S31631616339', 49, 66, 261, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:45:39', '2021-09-14 09:45:39'),
(220, 'r5ycbf1631616340', 49, 66, 262, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:45:40', '2021-09-14 09:45:40'),
(221, '8i2ih81631616342', 49, 66, 263, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:42', '2021-09-14 09:45:42'),
(222, 'k0shKh1631616343', 49, 67, 264, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:43', '2021-09-14 09:45:43'),
(223, 'Ru78iW1631616344', 49, 67, 265, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:44', '2021-09-14 09:45:44'),
(224, 'CezF2H1631616345', 49, 67, 266, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:45', '2021-09-14 09:45:45'),
(225, 'hx2og01631616348', 49, 67, 267, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:45:48', '2021-09-14 09:45:48'),
(226, 'XF67Bp1631616349', 49, 67, 268, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:49', '2021-09-14 09:45:49'),
(227, '7Xobqm1631616350', 49, 68, 269, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:45:50', '2021-09-14 09:45:50'),
(228, '0GDQ8h1631616352', 49, 68, 270, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:45:52', '2021-09-14 09:45:52'),
(229, 'Q6xZYz1631616353', 55, 78, 287, 1, '1', '101.50.108.5', NULL, '2021-09-14 09:45:53', '2021-09-29 17:21:35'),
(230, 'qXQOEB1631616355', 55, 79, 288, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:55', '2021-09-14 09:45:55'),
(231, 'w5Knnn1631616356', 55, 77, 286, 1, '1', '101.50.108.5', NULL, '2021-09-14 09:45:56', '2021-09-30 15:22:34'),
(232, '16QyUF1631616358', 6, 17, 87, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:58', '2021-09-14 09:45:58'),
(233, '2yHhmS1631616358', 6, 17, 88, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:45:58', '2021-09-14 09:45:58'),
(234, '3Fdx0O1631616360', 6, 17, 89, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:46:00', '2021-09-14 09:46:00'),
(235, 'lkTo2k1631616367', 6, 17, 90, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:46:07', '2021-09-14 09:46:07'),
(236, 'uU0Mjc1631616367', 6, 17, 85, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:46:07', '2021-09-14 09:46:07'),
(237, 'S5f5s61631616368', 6, 17, 86, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:46:08', '2021-09-14 09:46:08'),
(238, '83CsiQ1631616369', 6, 18, 93, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:46:09', '2021-09-14 09:46:09'),
(239, 'BE3UeL1631616370', 6, 18, 94, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:46:10', '2021-09-14 09:46:10'),
(240, 'gUFxtx1631616371', 6, 18, 95, 3, '1', '101.50.108.5', NULL, '2021-09-14 09:46:11', '2021-09-14 09:46:11'),
(241, 'aIhQif1631616373', 6, 18, 96, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:46:13', '2021-09-14 09:46:13'),
(242, '0Aipkz1631616374', 6, 18, 91, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:46:14', '2021-09-14 09:46:14'),
(243, 'NhgLYr1631616376', 6, 18, 92, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:46:16', '2021-09-14 09:46:16'),
(244, 'Xg9oeI1631616377', 6, 16, 81, 2, '1', '101.50.108.5', NULL, '2021-09-14 09:46:17', '2021-09-14 09:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `kod_med_strengths`
--

CREATE TABLE `kod_med_strengths` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `strength` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_med_strengths`
--

INSERT INTO `kod_med_strengths` (`id`, `hash_id`, `medicine_id`, `strength`, `display_order`, `status`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(1, 'SLu8yi1631012273', 1, '25mg', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 09:57:53', '2021-09-07 09:57:53'),
(2, 'XFPIcF1631012284', 1, '50mg', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 09:58:04', '2021-09-07 09:59:20'),
(3, 'Zhl4zH1631012292', 1, '100mg', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 09:58:12', '2021-09-07 09:59:04'),
(4, 'mCT7mB1631013440', 2, '25mg', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:17:20', '2021-09-07 10:17:20'),
(5, 'dKoGeJ1631013447', 2, '50mg', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:17:27', '2021-09-07 10:17:34'),
(6, 'NimO4K1631013482', 2, '100mg', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 10:18:02', '2021-09-07 10:18:02'),
(7, 'MMT7Jl1631017320', 3, '2.5mg', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:22:00', '2021-09-07 11:22:00'),
(8, 'kzbFxK1631017331', 3, '5mg', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:22:11', '2021-09-07 11:22:11'),
(9, 'ijWca51631017343', 3, '10mg', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:22:23', '2021-09-07 11:22:51'),
(10, 'PffjyX1631017360', 3, '20mg', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 11:22:40', '2021-09-07 11:22:40'),
(11, 'kuopHt1631019733', 4, '2.5mg', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:02:13', '2021-09-07 12:02:13'),
(12, 'Dfz6Sp1631019743', 4, '5mg', 2, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:02:23', '2021-09-07 12:02:23'),
(13, 'eWQVMJ1631019755', 4, '10mg', 3, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:02:35', '2021-09-07 12:02:35'),
(14, 'QA5Y9C1631019766', 4, '20mg', 4, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:02:46', '2021-09-07 12:02:46'),
(15, 'Esy5sP1631021799', 5, '50mg', 1, '1', '115.186.141.51', '115.186.141.51', '2021-09-07 12:36:39', '2021-09-07 12:36:39'),
(16, 'Q1MPui1631078861', 6, '50mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:27:41', '2021-09-08 04:28:48'),
(17, 'juSunR1631078872', 6, '100mg', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:27:52', '2021-09-08 04:28:22'),
(18, 'UA8U061631078880', 6, '200mg', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 04:28:00', '2021-09-08 04:29:03'),
(19, 'MLUAyz1631081008', 7, '5mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:03:28', '2021-09-08 05:03:28'),
(20, 'i8cgSP1631081015', 7, '10mg', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:03:35', '2021-09-08 05:03:35'),
(21, '9pqoU01631081023', 7, '20mg', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 05:03:43', '2021-09-08 05:03:43'),
(22, 'BElyba1631085740', 8, '5mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:22:20', '2021-09-08 06:22:20'),
(23, 'eN5KKZ1631085759', 8, '10mg', 2, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:22:39', '2021-09-08 06:22:49'),
(24, 'S3Eat01631085783', 8, '20mg', 3, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:23:03', '2021-09-08 06:23:03'),
(25, 'xwwPt91631087446', 9, '3mg/g', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 06:50:46', '2021-09-08 06:50:46'),
(26, 'zjoFxp1631088106', 10, '1 pump', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:01:46', '2021-09-08 07:01:46'),
(27, 'bkcYC61631088607', 11, '20mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:10:07', '2021-09-08 07:10:07'),
(28, 'pZkiEO1631089807', 12, '20mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:30:07', '2021-09-08 07:30:07'),
(29, '6nJnJc1631090269', 13, '15mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:37:49', '2021-09-08 07:37:49'),
(30, 'MDqlJ91631090834', 14, '20mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:47:14', '2021-09-08 07:47:14'),
(31, 'rA6tzl1631091361', 15, '20mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 07:56:01', '2021-09-08 07:56:01'),
(32, 'CKCWoF1631095802', 16, '20mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:10:02', '2021-09-08 09:10:02'),
(33, 'BSd6KZ1631096273', 17, '20mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:17:53', '2021-09-08 09:17:53'),
(34, 'elK9YL1631096911', 18, '1mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:28:31', '2021-09-08 09:28:31'),
(35, 'OVmEIw1631097733', 19, '1mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 09:42:13', '2021-09-08 09:42:13'),
(36, 'H3NRRD1631099300', 20, '5% Foam', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:08:20', '2021-09-08 10:08:20'),
(37, 'XjZVFW1631100358', 21, '5% Solution', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:25:58', '2021-09-08 10:25:58'),
(38, 'eF8scF1631101828', 22, '400mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 10:50:28', '2021-09-08 10:50:28'),
(39, 'VjBBUg1631102601', 23, '500mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:03:21', '2021-09-08 11:03:21'),
(40, 'LCIMbY1631103578', 24, '125mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:19:38', '2021-09-08 11:19:38'),
(41, 'FOqVu91631104202', 25, '500mg', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:30:02', '2021-09-08 11:30:02'),
(42, 'IsGQHD1631105574', 26, '0.1%/2.5%', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 11:52:54', '2021-09-08 11:52:54'),
(43, 'hUwKmS1631106163', 27, '0.05%', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:02:43', '2021-09-08 12:02:43'),
(44, 'GbIblf1631106913', 28, '0.1%', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:15:13', '2021-09-08 12:15:13'),
(45, 'Z0WCrL1631107578', 29, '1%/0.025%', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:26:18', '2021-09-08 12:26:18'),
(46, 'qny2431631108455', 30, '60g', 1, '1', '101.50.109.72', '101.50.109.72', '2021-09-08 12:40:55', '2021-09-08 12:40:55'),
(47, 'W2o9pK1631163881', 31, '3%', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:04:41', '2021-09-09 04:04:41'),
(48, 'soUlEW1631163890', 31, '5%', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:04:50', '2021-09-09 04:05:47'),
(49, 'XRwHXV1631164541', 32, '30g', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:15:41', '2021-09-09 04:15:41'),
(50, 'HpCq6s1631165372', 33, '100mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:29:32', '2021-09-09 04:29:32'),
(51, 'ZlVqq61631165801', 34, '120mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:36:41', '2021-09-09 04:36:41'),
(52, 'tgQgBQ1631166558', 35, '120mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 04:49:18', '2021-09-09 04:49:18'),
(53, 'TBJjHB1631168505', 36, '50 micrograms', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:21:45', '2021-09-09 05:21:45'),
(54, 'emLUrv1631169112', 37, '50 micrograms', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:31:52', '2021-09-09 05:31:52'),
(55, '8UzLrZ1631169499', 38, '300mcg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:38:19', '2021-09-09 05:38:19'),
(56, 'jObWBE1631170275', 39, '400mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 05:51:15', '2021-09-09 05:51:15'),
(57, 'TpT2c71631171094', 40, '500mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:04:54', '2021-09-09 06:04:54'),
(58, 'qJEGZD1631171685', 41, '500mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:14:45', '2021-09-09 06:14:45'),
(59, 'ozPG1A1631172275', 42, '250mg/100mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 06:24:35', '2021-09-09 06:24:35'),
(60, 'dHGfio1631176031', 43, '250mg/100mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:27:11', '2021-09-09 07:27:11'),
(61, 'MGgmJi1631176859', 44, '75mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:40:59', '2021-09-09 07:40:59'),
(62, '9R06ru1631177185', 45, '500mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:46:25', '2021-09-09 07:46:25'),
(63, 'w9py5S1631177713', 46, '30mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:55:13', '2021-09-09 07:55:13'),
(64, 'BBeIY51631177724', 46, '60mg', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 07:55:24', '2021-09-09 07:55:24'),
(65, '4FoPJQ1631185233', 48, '5g', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:00:33', '2021-09-09 10:00:33'),
(66, 'YpJgpO1631186284', 49, '6mg/ml', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:18:04', '2021-09-09 10:18:04'),
(67, 'zqfNcU1631186290', 49, '6mg/ml with 100 needles', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:18:10', '2021-09-09 10:18:30'),
(68, 'vCPqmw1631186302', 49, '6mg/ml with needles and Sharps Container', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:18:22', '2021-09-09 10:18:22'),
(69, 'Hh7jDQ1631187714', 50, '120mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 10:41:54', '2021-09-09 10:41:54'),
(70, 'V77jtx1631187745', 50, '42', 1, '0', '115.186.141.11', '115.186.141.11', '2021-09-09 10:42:25', '2021-09-09 10:42:37'),
(71, 'pX3gvI1631188827', 51, '120mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:00:27', '2021-09-09 11:00:27'),
(72, 'Fa5UTR1631189569', 52, '5mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:12:49', '2021-09-09 11:12:49'),
(73, 'ZTqVB71631190151', 53, '100 micrograms', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:22:31', '2021-09-09 11:22:31'),
(74, 'nQr1981631190376', 54, '100/6 (120 doses)', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:26:16', '2021-09-09 11:26:16'),
(75, 'OMHGFQ1631190385', 54, '200/6 (120 doses)', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:26:25', '2021-09-09 11:26:25'),
(76, 'rjMv4C1631190396', 54, '400/12 (60 doses)', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:26:36', '2021-09-09 11:26:36'),
(77, '0JMGbC1631190897', 55, '50mcg - 25 mcg/50 mcg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:34:57', '2021-09-09 11:34:57'),
(78, 'rLNrfN1631190913', 55, '125mcg - 25 mcg/125 mcg', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:35:13', '2021-09-09 11:35:13'),
(79, 'nPSRwp1631190924', 55, '250mcg - 25mcg/250mcg', 3, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:35:24', '2021-09-09 11:35:24'),
(80, 'TNcHI81631191979', 56, '5% Cream', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:52:59', '2021-09-09 11:52:59'),
(81, '7LzOsZ1631192372', 57, '0.5% Solution', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:59:32', '2021-09-09 11:59:32'),
(82, 'ZFHt2T1631192379', 57, '0.15% Cream', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 11:59:39', '2021-09-09 12:00:00'),
(83, 'Wz5oOz1631192882', 58, '0.15%', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:08:02', '2021-09-09 12:08:02'),
(84, '0M6wn21631193718', 59, '0.5mg/1mg', 1, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:21:58', '2021-09-09 12:21:58'),
(85, 'arpj0P1631193730', 59, '1mg', 2, '1', '115.186.141.11', '115.186.141.11', '2021-09-09 12:22:10', '2021-09-14 07:28:50'),
(86, 'UZJThU1631511852', 60, '50mg', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 04:44:12', '2021-09-13 04:44:12'),
(87, 'DLbV461631512831', 61, '20mg', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:00:31', '2021-09-13 05:00:31'),
(88, 'jTF1oa1631513621', 62, '50mg', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:13:41', '2021-09-13 05:13:41'),
(89, '4GKjho1631513628', 62, '100mg', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:13:48', '2021-09-13 05:13:48'),
(90, 'XjUQCE1631514850', 63, '10mg', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:34:10', '2021-09-13 05:34:36'),
(91, 'yceFeY1631515406', 64, '10mg', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:43:26', '2021-09-13 05:43:26'),
(92, 'Yyb5PR1631516074', 65, '10mg', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 05:54:34', '2021-09-13 05:54:34'),
(93, 'dw4RSM1631516577', 66, '2.5mg', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:02:57', '2021-09-13 06:02:57'),
(94, 'V3CU3d1631516592', 66, '5mg', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:03:12', '2021-09-13 06:03:12'),
(95, 'cxED2o1631517326', 67, '2.5mg', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:15:26', '2021-09-13 06:15:26'),
(96, '78ic7Q1631517341', 67, '5mg', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:15:41', '2021-09-13 06:15:41'),
(97, '8IxLKG1631518109', 68, '2.5mg', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:28:29', '2021-09-13 06:28:29'),
(98, '4I6RSh1631518131', 68, '5mg', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:28:51', '2021-09-13 06:28:51'),
(99, 'ukuMsV1631519214', 69, '5mg', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 06:46:54', '2021-09-13 06:46:54'),
(100, '6RhtmI1631520093', 70, '2.5mg', 1, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:01:33', '2021-09-13 07:01:33'),
(101, 'REV8TA1631520104', 70, '5mg', 2, '1', '101.50.108.104', '101.50.108.104', '2021-09-13 07:01:44', '2021-09-13 07:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `kod_menus`
--

CREATE TABLE `kod_menus` (
  `id` int(11) NOT NULL,
  `position_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT '',
  `updated_at` datetime DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='FAQ ' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kod_menus`
--

INSERT INTO `kod_menus` (`id`, `position_id`, `title`, `description`, `display_order`, `status`, `created_at`, `created_by_ip`, `updated_at`, `modified_by_ip`) VALUES
(1, 1, 'Top Menu', 'Top Menu', NULL, '1', '2021-09-02 07:59:27', '', '2021-09-02 08:03:39', ''),
(2, 2, 'Useful Links', 'Useful Links', NULL, '1', '2021-09-02 08:00:33', '', '2021-09-02 08:00:33', ''),
(3, 4, 'Privacy Policy', '', NULL, '1', '2021-09-27 12:29:45', '', '2021-09-27 12:29:45', ''),
(4, 3, 'POPULAR TREATMENTS', '', NULL, '1', '2021-10-06 11:44:24', '', '2021-10-06 11:44:24', ''),
(5, 5, 'Customer Menu', '', NULL, '1', '2021-10-06 11:44:24', '', '2021-10-06 11:44:24', '');

-- --------------------------------------------------------

--
-- Table structure for table `kod_menu_links`
--

CREATE TABLE `kod_menu_links` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `reference_url` varchar(255) DEFAULT NULL,
  `new_tab` enum('1','0') DEFAULT NULL,
  `reference_type` enum('SERVICE','PAGE','STATIC_PAGE','URL','OPEN') DEFAULT NULL,
  `title` text DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT '',
  `updated_at` datetime DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='FAQ ' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kod_menu_links`
--

INSERT INTO `kod_menu_links` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_url`, `new_tab`, `reference_type`, `title`, `display_order`, `status`, `created_at`, `created_by_ip`, `updated_at`, `modified_by_ip`) VALUES
(2, 2, NULL, 58, 'https://callthedoc.co.uk/pages/about-us', '0', 'PAGE', 'About Us', 1, '1', '2021-09-02 08:03:14', '', '2021-10-06 14:05:31', ''),
(4, 3, NULL, 68, '', NULL, 'PAGE', 'Privacy Policy', 1, '1', '2021-09-27 12:30:07', '', '2021-09-27 12:30:07', ''),
(5, 3, NULL, 67, '', NULL, 'PAGE', 'Cookie Policy', 2, '1', '2021-09-27 12:30:20', '', '2021-09-27 12:30:20', ''),
(6, 3, NULL, 66, '', NULL, 'PAGE', 'Terms and Conditions', 3, '1', '2021-09-27 12:30:30', '', '2021-09-27 12:30:30', ''),
(8, 2, NULL, 70, '', NULL, 'PAGE', 'Delivery', 2, '1', '2021-10-06 11:13:48', '', '2021-10-06 11:13:48', ''),
(9, 2, NULL, 71, '', NULL, 'PAGE', 'How it works', 3, '1', '2021-10-06 11:14:07', '', '2021-10-06 11:14:07', ''),
(10, 2, NULL, NULL, 'https://onlinepharmacyshop.co.uk/faqs', '0', 'URL', 'FAQs', 4, '1', '2021-10-06 11:15:21', '', '2021-10-13 17:34:57', ''),
(11, 2, NULL, 72, '', NULL, 'PAGE', 'Complaints', 5, '1', '2021-10-06 11:15:44', '', '2021-10-06 11:15:44', ''),
(12, 2, NULL, 73, '', NULL, 'PAGE', 'Returns and refund', 6, '1', '2021-10-06 11:16:02', '', '2021-10-06 11:16:02', ''),
(13, 1, NULL, 71, '', NULL, 'PAGE', 'How it works', 1, '1', '2021-10-06 11:22:18', '', '2021-10-06 11:22:18', ''),
(14, 1, NULL, NULL, 'https://0-1pharmatests.co.uk/faqs', '0', 'URL', 'FAQS', 3, '1', '2021-10-06 11:23:01', '', '2021-10-06 12:49:42', ''),
(15, 4, NULL, NULL, 'https://onlinepharmacyshop.co.uk/chemist/baby', '0', 'URL', 'Baby', 1, '1', '2021-10-06 11:45:00', '', '2021-11-05 17:24:57', ''),
(16, 4, NULL, NULL, 'https://onlinepharmacyshop.co.uk/chemist/medicines', '0', 'URL', 'Medicines', 2, '1', '2021-10-06 11:46:23', '', '2021-11-05 17:25:33', ''),
(17, 4, NULL, NULL, 'https://onlinepharmacyshop.co.uk/chemist/vitamins', '0', 'URL', 'Vitamins', 3, '1', '2021-10-06 11:47:11', '', '2021-11-05 17:26:00', ''),
(18, 4, NULL, NULL, 'https://onlinepharmacyshop.co.uk/chemist/beauty', '0', 'URL', 'Beauty', 4, '1', '2021-10-06 11:47:45', '', '2021-11-05 17:26:36', ''),
(19, 4, NULL, NULL, 'https://onlinepharmacyshop.co.uk/chemist/fragrances', '0', 'URL', 'Fragrances', 5, '1', '2021-10-06 11:48:18', '', '2021-11-05 17:27:04', ''),
(20, 4, NULL, NULL, 'https://onlinepharmacyshop.co.uk/chemist/mobility', '0', 'URL', 'Mobility', 6, '1', '2021-10-06 11:49:00', '', '2021-11-05 17:28:02', ''),
(21, 4, NULL, NULL, 'https://onlinepharmacyshop.co.uk/chemist/ppe', '0', 'URL', 'PPE', 7, '1', '2021-10-06 11:49:41', '', '2021-11-05 17:28:25', ''),
(22, 1, NULL, 70, '', NULL, 'PAGE', 'Delivery', 2, '1', '2021-10-06 12:49:58', '', '2021-10-06 12:49:58', ''),
(23, 5, NULL, 3, '', NULL, 'STATIC_PAGE', 'Contact Us', 1, '1', '2021-10-13 10:50:08', '', '2021-10-13 10:50:08', '');

-- --------------------------------------------------------

--
-- Table structure for table `kod_menu_positions`
--

CREATE TABLE `kod_menu_positions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT '',
  `updated_at` datetime DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='FAQ ' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kod_menu_positions`
--

INSERT INTO `kod_menu_positions` (`id`, `title`, `display_order`, `status`, `created_at`, `created_by_ip`, `updated_at`, `modified_by_ip`) VALUES
(1, 'Top Menu', 1, '1', '2021-02-24 12:57:21', '::1', NULL, ''),
(2, 'Quick Links Menu', 2, '1', '2021-02-24 12:57:21', '::1', NULL, ''),
(3, 'Pharmacy Menu', 3, '1', '2021-02-24 12:57:21', '::1', NULL, ''),
(4, 'Privacy Menu', 4, '1', '2021-02-24 12:57:21', '::1', NULL, ''),
(5, 'Customer Menu', 5, '1', '2021-02-24 12:57:21', '::1', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `kod_notes`
--

CREATE TABLE `kod_notes` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `type` enum('Patient','Order') DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains Pharamcies Cleaning Areas' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kod_notes`
--

INSERT INTO `kod_notes` (`id`, `hash_id`, `type`, `module_id`, `user_id`, `note`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(16, 'xSZyKQ1637588278', 'Order', 21, 1, 'wahij fff fgf', '127.0.0.1', NULL, '2021-11-22 08:37:58', '2021-11-23 03:54:04'),
(17, 'hiY3bK1637649476', 'Order', 21, 1, 'jjj kjkk', '127.0.0.1', NULL, '2021-11-23 01:37:56', '2021-11-23 02:18:16'),
(18, 'iMytOz1637651888', 'Order', 21, 1, 'ii iiki', '127.0.0.1', NULL, '2021-11-23 02:18:08', '2021-11-23 02:18:08'),
(19, 'EgIlHn1637844130', 'Patient', 25, 1, 'ntess', '127.0.0.1', NULL, '2021-11-25 07:42:10', '2021-11-25 07:42:10'),
(20, 'lq9oUc1637845211', 'Patient', 26, 1, 'Testing', '127.0.0.1', NULL, '2021-11-25 08:00:11', '2021-11-25 08:00:11'),
(21, 'xypM2z1638777685', 'Order', 95, 1, 'testing', '127.0.0.1', NULL, '2021-12-06 03:01:25', '2021-12-06 03:01:25'),
(22, 'Rpugco1638777999', 'Order', 94, 6, 'wadd', '127.0.0.1', NULL, '2021-12-06 03:06:39', '2021-12-06 03:06:39'),
(23, 'DscIHJ1638778007', 'Order', 94, 6, 'wadd', '127.0.0.1', NULL, '2021-12-06 03:06:47', '2021-12-06 03:06:47'),
(24, 'rJMPST1638778743', 'Order', 94, 1, 'i am testing', '127.0.0.1', NULL, '2021-12-06 03:19:03', '2021-12-06 03:19:03'),
(25, 'UvVY621639122938', 'Order', 119, 8, 'jjjj', '127.0.0.1', NULL, '2021-12-10 02:55:38', '2021-12-10 02:55:38'),
(26, 'sYVz841639122944', 'Order', 119, 8, 'jjjj', '127.0.0.1', NULL, '2021-12-10 02:55:44', '2021-12-10 02:55:44'),
(27, 'p4Y46s1639122958', 'Order', 119, 8, 'jjjj', '127.0.0.1', NULL, '2021-12-10 02:55:58', '2021-12-10 02:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `kod_offers`
--

CREATE TABLE `kod_offers` (
  `id` bigint(20) NOT NULL,
  `type` enum('Quantity','Percent','Price') DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `products` text DEFAULT NULL,
  `categories` text DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image_1` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `display_order` int(5) DEFAULT 1,
  `free` decimal(14,2) DEFAULT NULL,
  `max` decimal(14,2) DEFAULT NULL,
  `off` decimal(14,2) DEFAULT NULL,
  `status` tinyint(2) DEFAULT 0,
  `expiry` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_offers`
--

INSERT INTO `kod_offers` (`id`, `type`, `name`, `slug`, `products`, `categories`, `short_description`, `description`, `image_1`, `image_2`, `display_order`, `free`, `max`, `off`, `status`, `expiry`, `created_at`, `updated_at`) VALUES
(2, 'Percent', 'Better than Half', 'test-patient', ',1', '', '<p>xcc</p>', '<p>cxx</p>', NULL, NULL, 2, '0.00', '0.00', '52.00', 1, '2021-12-30 19:00:00', '2021-10-15 00:40:34', '2021-12-22 05:38:27'),
(3, 'Quantity', 'Buy 1 Get 1 Free', 'buy-1-get-1-free', ',2', ',1', NULL, NULL, NULL, NULL, 1, '1.00', '2.00', '0.00', 1, '2022-01-27 19:00:00', '2021-10-15 05:26:25', '2021-12-22 08:35:10'),
(4, 'Quantity', 'Buy 1 second Half Price', 'buy-1-second-half-price', '', '', '<p>Buy 1 second Half Price<br></p>', '<p>Buy 1 second Half Price<br></p>', NULL, NULL, 1, '0.50', '2.00', '0.00', 1, '2021-12-23 19:00:00', '2021-10-21 03:33:44', '2021-12-22 00:18:53'),
(5, 'Quantity', '3 At Cost of 2', '3-at-cost-of-2', '', '', '<p>3 At Cost of 2<br></p>', '<p>3 At Cost of 2<br></p>', NULL, NULL, 1, '1.00', '3.00', '0.00', 1, '2021-12-28 19:00:00', '2021-10-21 07:08:20', '2021-12-22 05:08:37'),
(6, 'Price', 'Golden Offer', 'golden-offer', '', '', NULL, NULL, NULL, NULL, 1, '0.00', '0.00', '2.00', 1, '2021-12-30 19:00:00', '2021-11-19 02:35:35', '2021-12-07 01:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `kod_op_orders`
--

CREATE TABLE `kod_op_orders` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `order_reference_no` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT 1,
  `price` double(14,2) DEFAULT 0.00,
  `delivery_method_id` int(11) DEFAULT NULL,
  `delivery_method_title` varchar(255) DEFAULT NULL,
  `delivery_method_short_desc` text DEFAULT NULL,
  `delivery_method_type` enum('Local','International') DEFAULT NULL,
  `delivery_method_type_id` int(11) DEFAULT NULL,
  `coupon_code_id` int(11) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_title` varchar(255) DEFAULT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `coupon_type_percent_value` double(10,2) NOT NULL DEFAULT 0.00,
  `delivery_price_charged` double(10,2) DEFAULT NULL,
  `coupon_code_discount_amount` double(10,2) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `tracking_code` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `transaction_id` mediumtext DEFAULT NULL,
  `receipt_id` varchar(255) DEFAULT NULL,
  `card_token` text DEFAULT NULL,
  `reference` text DEFAULT NULL,
  `your_consumer_reference` varchar(255) DEFAULT NULL,
  `inform_my_gp` enum('1','0') DEFAULT NULL,
  `status` enum('P','D','C','DECLINED','DISPENSED') NOT NULL DEFAULT 'P',
  `txn_cart` longtext DEFAULT NULL,
  `accept_note` text DEFAULT NULL,
  `decline_note` text DEFAULT NULL,
  `approved_declined_by_user_id` int(11) DEFAULT NULL,
  `approved_declined_date` datetime DEFAULT NULL,
  `dispense_by_user_id` varchar(255) DEFAULT NULL,
  `dispense_by_user_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `delivered_by_id` int(11) DEFAULT NULL,
  `pharmacy_id` varchar(255) DEFAULT NULL,
  `payment_transaction_response` longtext DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_op_orders`
--

INSERT INTO `kod_op_orders` (`id`, `hash_id`, `patient_id`, `order_reference_no`, `qty`, `price`, `delivery_method_id`, `delivery_method_title`, `delivery_method_short_desc`, `delivery_method_type`, `delivery_method_type_id`, `coupon_code_id`, `coupon_code`, `coupon_title`, `coupon_type`, `coupon_type_percent_value`, `delivery_price_charged`, `coupon_code_discount_amount`, `invoice_no`, `tracking_code`, `payment_method`, `transaction_id`, `receipt_id`, `card_token`, `reference`, `your_consumer_reference`, `inform_my_gp`, `status`, `txn_cart`, `accept_note`, `decline_note`, `approved_declined_by_user_id`, `approved_declined_date`, `dispense_by_user_id`, `dispense_by_user_date`, `delivery_date`, `delivered_by_id`, `pharmacy_id`, `payment_transaction_response`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(127, 'amT1Y2Hyi4', 33, '2112161639640262481', 5, 22.00, 32, 'Royal Mail Standard', 'Please note our shipment days are Monday - Wednesday. Royal Mail Standard', 'Local', 1, NULL, NULL, NULL, NULL, 0.00, 5.00, NULL, '43844636', NULL, 'Square', 't2EkfNKAXLL3WF6kyMFL1PmgddbZY', NULL, NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":3,\"discount_price\":8,\"price\":8,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":41,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-16T06:14:12.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}},\"5\":{\"qty\":1,\"discount_price\":10,\"price\":10,\"item\":{\"id\":5,\"hash_id\":\"jmcw7I1634126817\",\"category_id\":19,\"title\":\"Woodward\'s Gripe Water 150ml\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/baby-colic-remedies\\/woodwards-gripe-water-150ml\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"<p>Woodward\'s Gripe Water relieves griping pain and waves of severe abdominal discomfort (infant colic) due to trapped air in the tummy in babies aged one month to one year.<\\/p>\",\"price\":\"10.00\",\"discount_price\":\"10.00\",\"stock_level\":399,\"quantity_allowe_to_buy\":3,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T11:06:57.000000Z\",\"updated_at\":\"2021-12-08T13:07:23.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":19,\"hash_id\":\"Z3T0up1634124675\",\"parent_id\":4,\"title\":\"Baby Colic Remedies\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"baby-colic-remedies\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":2,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:31:15.000000Z\",\"updated_at\":\"2021-10-13T10:31:15.000000Z\"},\"media\":[{\"id\":5,\"hash_id\":\"Vg8dU51634126827\",\"product_id\":5,\"media\":\"media-1-5.jpeg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"88.108.61.109\",\"modified_by_ip\":\"88.108.61.109\",\"created_at\":\"2021-10-13T11:07:07.000000Z\",\"updated_at\":\"2021-10-13T11:07:07.000000Z\"}]}},\"3\":{\"qty\":1,\"discount_price\":4,\"price\":6,\"item\":{\"id\":3,\"hash_id\":\"mH7GuP1634126429\",\"category_id\":12,\"title\":\"Dispersible Aspirin 75mg Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/dispersible-aspirin-75mg-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"<p><span style=\\\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\\\">Dispersible Aspirin 75mg Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.<\\/span><br><\\/p>\",\"price\":\"6.00\",\"discount_price\":\"4.00\",\"stock_level\":45,\"quantity_allowe_to_buy\":10,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":2,\"status\":\"1\",\"created_at\":\"2021-10-13T11:00:29.000000Z\",\"updated_at\":\"2021-12-08T13:15:41.000000Z\",\"save_percent\":33.33333333333334,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":3,\"hash_id\":\"Y1Lyf61634126587\",\"product_id\":3,\"media\":\"media-1-3.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T11:03:07.000000Z\",\"updated_at\":\"2021-10-13T11:03:07.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":5,\"discountPrice\":22,\"totalPrice\":24,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, '2021-12-16 07:37:42', '2021-12-16 07:37:42'),
(128, 'VMamyxHJWv', 33, '2112161639641061270', 2, 6.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '72562147', NULL, 'Square', 'BAmTq3j9PKYTAc1ol1x97Kfp69UZY', 'lmeENON0MjeBmMKJ2JkjV0TaFI6YY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":1,\"discount_price\":2,\"price\":2,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":38,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-16T07:37:42.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}},\"3\":{\"qty\":1,\"discount_price\":4,\"price\":6,\"item\":{\"id\":3,\"hash_id\":\"mH7GuP1634126429\",\"category_id\":12,\"title\":\"Dispersible Aspirin 75mg Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/dispersible-aspirin-75mg-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"<p><span style=\\\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\\\">Dispersible Aspirin 75mg Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.<\\/span><br><\\/p>\",\"price\":\"6.00\",\"discount_price\":\"4.00\",\"stock_level\":44,\"quantity_allowe_to_buy\":10,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":2,\"status\":\"1\",\"created_at\":\"2021-10-13T11:00:29.000000Z\",\"updated_at\":\"2021-12-16T07:37:42.000000Z\",\"save_percent\":33.33333333333334,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":3,\"hash_id\":\"Y1Lyf61634126587\",\"product_id\":3,\"media\":\"media-1-3.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T11:03:07.000000Z\",\"updated_at\":\"2021-10-13T11:03:07.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":2,\"discountPrice\":6,\"totalPrice\":8,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '127.0.0.1', NULL, '2021-12-16 07:51:01', '2021-12-16 07:51:01'),
(129, 'iQfgceQqFf', 33, '2112161639641180136', 2, 6.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '44983080', NULL, 'Square', 'TRaTIEeXPR3Uvn1LrblshNwmPCXZY', '3TaTApGcSt2aDSPiDEUjSRrhtqLZY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":2,\"discount_price\":6,\"price\":6,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":37,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-16T07:51:02.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":2,\"discountPrice\":6,\"totalPrice\":6,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":0,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '127.0.0.1', NULL, '2021-12-16 07:53:00', '2021-12-16 07:53:00'),
(130, 'vpe3To3Hhr', 33, '2112161639641322499', 3, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '45104466', NULL, 'Square', 'hC1Q3HIJOP0TmeBpJXIb8cCPhVQZY', '7ztNgfEWdzAZddALbeB2fA4Dp1QZY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":1,\"discount_price\":4,\"price\":4,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":35,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-16T07:53:00.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}},\"2\":{\"qty\":1,\"discount_price\":6,\"price\":6,\"item\":{\"id\":2,\"hash_id\":\"QYHABz1634126334\",\"category_id\":4,\"title\":\"MAM Anti-Colic 160ml Bottle\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/baby\\/mam-anti-colic-160ml-bottle\",\"sub_heading\":\"Baby Anti Colic\",\"special_note\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"description\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"price\":\"6.00\",\"discount_price\":\"6.00\",\"stock_level\":48,\"quantity_allowe_to_buy\":3,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:58:54.000000Z\",\"updated_at\":\"2021-12-16T06:14:12.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":4,\"hash_id\":\"vzgS3z1634124108\",\"parent_id\":0,\"title\":\"Baby\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"page\",\"seo_url_slug\":\"baby\",\"image_1\":\"image-1-4.jpg\",\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:21:48.000000Z\",\"updated_at\":\"2021-10-13T13:02:49.000000Z\"},\"media\":[{\"id\":2,\"hash_id\":\"9doKZE1634126349\",\"product_id\":2,\"media\":\"media-1-2.jpeg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"88.108.61.109\",\"modified_by_ip\":\"88.108.61.109\",\"created_at\":\"2021-10-13T10:59:09.000000Z\",\"updated_at\":\"2021-10-13T10:59:09.000000Z\"}]}},\"5\":{\"qty\":1,\"discount_price\":10,\"price\":10,\"item\":{\"id\":5,\"hash_id\":\"jmcw7I1634126817\",\"category_id\":19,\"title\":\"Woodward\'s Gripe Water 150ml\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/baby-colic-remedies\\/woodwards-gripe-water-150ml\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"<p>Woodward\'s Gripe Water relieves griping pain and waves of severe abdominal discomfort (infant colic) due to trapped air in the tummy in babies aged one month to one year.<\\/p>\",\"price\":\"10.00\",\"discount_price\":\"10.00\",\"stock_level\":398,\"quantity_allowe_to_buy\":3,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T11:06:57.000000Z\",\"updated_at\":\"2021-12-16T07:37:42.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":19,\"hash_id\":\"Z3T0up1634124675\",\"parent_id\":4,\"title\":\"Baby Colic Remedies\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"baby-colic-remedies\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":2,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:31:15.000000Z\",\"updated_at\":\"2021-10-13T10:31:15.000000Z\"},\"media\":[{\"id\":5,\"hash_id\":\"Vg8dU51634126827\",\"product_id\":5,\"media\":\"media-1-5.jpeg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"88.108.61.109\",\"modified_by_ip\":\"88.108.61.109\",\"created_at\":\"2021-10-13T11:07:07.000000Z\",\"updated_at\":\"2021-10-13T11:07:07.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":3,\"discountPrice\":20,\"totalPrice\":20,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '127.0.0.1', NULL, '2021-12-16 07:55:22', '2021-12-16 07:55:22'),
(131, '45sPFSeOuB', 33, '2112161639642355661', 2, 16.00, 32, 'Royal Mail Standard', 'Please note our shipment days are Monday - Wednesday. Royal Mail Standard', 'Local', 1, 23, 'MC20', 'MC20 Title', 'FIXED_PRICE', 0.00, 5.00, 5.00, '80222514', NULL, 'Square', 'ztUJ07W3Q2i95Ck5W45Lmp9EtxcZY', 'N2mPsSTtPqc2NpSL8rl87bthFh7YY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"2\":{\"qty\":1,\"discount_price\":6,\"price\":6,\"item\":{\"id\":2,\"hash_id\":\"QYHABz1634126334\",\"category_id\":4,\"title\":\"MAM Anti-Colic 160ml Bottle\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/baby\\/mam-anti-colic-160ml-bottle\",\"sub_heading\":\"Baby Anti Colic\",\"special_note\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"description\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"price\":\"6.00\",\"discount_price\":\"6.00\",\"stock_level\":47,\"quantity_allowe_to_buy\":3,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:58:54.000000Z\",\"updated_at\":\"2021-12-16T07:55:22.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":4,\"hash_id\":\"vzgS3z1634124108\",\"parent_id\":0,\"title\":\"Baby\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"page\",\"seo_url_slug\":\"baby\",\"image_1\":\"image-1-4.jpg\",\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:21:48.000000Z\",\"updated_at\":\"2021-10-13T13:02:49.000000Z\"},\"media\":[{\"id\":2,\"hash_id\":\"9doKZE1634126349\",\"product_id\":2,\"media\":\"media-1-2.jpeg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"88.108.61.109\",\"modified_by_ip\":\"88.108.61.109\",\"created_at\":\"2021-10-13T10:59:09.000000Z\",\"updated_at\":\"2021-10-13T10:59:09.000000Z\"}]}},\"5\":{\"qty\":1,\"discount_price\":10,\"price\":10,\"item\":{\"id\":5,\"hash_id\":\"jmcw7I1634126817\",\"category_id\":19,\"title\":\"Woodward\'s Gripe Water 150ml\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/baby-colic-remedies\\/woodwards-gripe-water-150ml\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"<p>Woodward\'s Gripe Water relieves griping pain and waves of severe abdominal discomfort (infant colic) due to trapped air in the tummy in babies aged one month to one year.<\\/p>\",\"price\":\"10.00\",\"discount_price\":\"10.00\",\"stock_level\":397,\"quantity_allowe_to_buy\":3,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T11:06:57.000000Z\",\"updated_at\":\"2021-12-16T07:55:22.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":19,\"hash_id\":\"Z3T0up1634124675\",\"parent_id\":4,\"title\":\"Baby Colic Remedies\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"baby-colic-remedies\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":2,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:31:15.000000Z\",\"updated_at\":\"2021-10-13T10:31:15.000000Z\"},\"media\":[{\"id\":5,\"hash_id\":\"Vg8dU51634126827\",\"product_id\":5,\"media\":\"media-1-5.jpeg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"88.108.61.109\",\"modified_by_ip\":\"88.108.61.109\",\"created_at\":\"2021-10-13T11:07:07.000000Z\",\"updated_at\":\"2021-10-13T11:07:07.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":2,\"discountPrice\":16,\"totalPrice\":16,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":5}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, '2021-12-16 08:12:35', '2021-12-16 08:12:35'),
(132, '1b9zl7K1yX', 33, '2112161639642835420', 2, 39.99, NULL, NULL, NULL, NULL, NULL, 23, 'MC20', 'MC20 Title', 'PERCENTAGE', 5.00, NULL, 2.00, '92732566', NULL, 'Square', 'BYwkvhxh4As3FSSQjvSEk0vsBrIZY', 'PtXWkboPlRCnZqn8rEoidAR2kC6YY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"7\":{\"qty\":1,\"discount_price\":31.99,\"price\":44.98,\"item\":{\"id\":7,\"hash_id\":\"KC8wnD1634128513\",\"category_id\":16,\"title\":\"Aciferol D3 30000iu Capsules 10s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/bone-health\\/aciferol-d3-30000iu-capsules-10s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"<p>Aciferol D3 is a vitamin D3 (colecalciferol) supplement.<\\/p>\",\"price\":\"44.98\",\"discount_price\":\"31.99\",\"stock_level\":51,\"quantity_allowe_to_buy\":4,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":3,\"status\":\"1\",\"created_at\":\"2021-10-13T11:35:13.000000Z\",\"updated_at\":\"2021-12-06T10:58:02.000000Z\",\"save_percent\":28.879502000889275,\"offer\":null,\"category\":{\"id\":16,\"hash_id\":\"FPe1Dx1634124569\",\"parent_id\":2,\"title\":\"Bone Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"bone-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":2,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:29:29.000000Z\",\"updated_at\":\"2021-10-13T10:29:29.000000Z\"},\"media\":[{\"id\":7,\"hash_id\":\"NRfXZO1634128521\",\"product_id\":7,\"media\":\"media-1-7.jpeg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"88.108.61.109\",\"modified_by_ip\":\"88.108.61.109\",\"created_at\":\"2021-10-13T11:35:21.000000Z\",\"updated_at\":\"2021-10-13T11:35:21.000000Z\"}]}},\"4\":{\"qty\":1,\"discount_price\":8,\"price\":10,\"item\":{\"id\":4,\"hash_id\":\"3ycMba1634126681\",\"category_id\":19,\"title\":\"Colief Infant Drops 7ml\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/baby-colic-remedies\\/colief-infant-drops-7ml\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"<p>Colief Infant Drops help to relieve colic in babies from birth onwards.<\\/p>\",\"price\":\"10.00\",\"discount_price\":\"8.00\",\"stock_level\":50,\"quantity_allowe_to_buy\":10,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":3,\"status\":\"1\",\"created_at\":\"2021-10-13T11:04:41.000000Z\",\"updated_at\":\"2021-12-08T11:11:10.000000Z\",\"save_percent\":20,\"offer\":null,\"category\":{\"id\":19,\"hash_id\":\"Z3T0up1634124675\",\"parent_id\":4,\"title\":\"Baby Colic Remedies\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"baby-colic-remedies\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":2,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:31:15.000000Z\",\"updated_at\":\"2021-10-13T10:31:15.000000Z\"},\"media\":[{\"id\":4,\"hash_id\":\"kPgLN81634126690\",\"product_id\":4,\"media\":\"media-1-4.jpeg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"88.108.61.109\",\"modified_by_ip\":\"88.108.61.109\",\"created_at\":\"2021-10-13T11:04:50.000000Z\",\"updated_at\":\"2021-10-13T11:04:50.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":2,\"discountPrice\":39.989999999999995,\"totalPrice\":54.98,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":1.9995000000000003}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, '127.0.0.1', NULL, '2021-12-16 08:20:35', '2021-12-16 08:20:35'),
(133, '61kD4XhJ10', 33, '2112161639650338212', 3, 16.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '57948522', NULL, 'Square', 'fzgXib48o6Oq7yAxktokC4SAS15YY', 'TLrdE6iYWGaTQiYsNzeoo01LDFPZY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"2\":{\"qty\":2,\"discount_price\":12,\"price\":12,\"item\":{\"id\":2,\"hash_id\":\"QYHABz1634126334\",\"category_id\":4,\"title\":\"MAM Anti-Colic 160ml Bottle\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/baby\\/mam-anti-colic-160ml-bottle\",\"sub_heading\":\"Baby Anti Colic\",\"special_note\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"description\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"price\":\"6.00\",\"discount_price\":\"6.00\",\"stock_level\":46,\"quantity_allowe_to_buy\":3,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:58:54.000000Z\",\"updated_at\":\"2021-12-16T08:12:35.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":4,\"hash_id\":\"vzgS3z1634124108\",\"parent_id\":0,\"title\":\"Baby\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"page\",\"seo_url_slug\":\"baby\",\"image_1\":\"image-1-4.jpg\",\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:21:48.000000Z\",\"updated_at\":\"2021-10-13T13:02:49.000000Z\"},\"media\":[{\"id\":2,\"hash_id\":\"9doKZE1634126349\",\"product_id\":2,\"media\":\"media-1-2.jpeg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"88.108.61.109\",\"modified_by_ip\":\"88.108.61.109\",\"created_at\":\"2021-10-13T10:59:09.000000Z\",\"updated_at\":\"2021-10-13T10:59:09.000000Z\"}]}},\"1\":{\"qty\":1,\"discount_price\":4,\"price\":4,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":34,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-16T07:55:22.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":3,\"discountPrice\":16,\"totalPrice\":16,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":0,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '127.0.0.1', NULL, '2021-12-16 10:25:38', '2021-12-16 10:25:38'),
(134, 'ww3LPY9Bmw', 33, '211216163965526655', 5, 24.00, 32, 'Royal Mail Standard', 'Please note our shipment days are Monday - Wednesday. Royal Mail Standard', 'Local', 1, NULL, NULL, NULL, NULL, 0.00, 5.00, NULL, '44656795', NULL, 'Square', 'N49WCco7ifGYumRKZ3Pey5AqBibZY', '5QWsFhZjsAJfPWlsgRFprQsaRxIZY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":2,\"discount_price\":6,\"price\":6,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":33,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-16T10:25:38.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}},\"2\":{\"qty\":3,\"discount_price\":18,\"price\":18,\"item\":{\"id\":2,\"hash_id\":\"QYHABz1634126334\",\"category_id\":4,\"title\":\"MAM Anti-Colic 160ml Bottle\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/baby\\/mam-anti-colic-160ml-bottle\",\"sub_heading\":\"Baby Anti Colic\",\"special_note\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"description\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"price\":\"6.00\",\"discount_price\":\"6.00\",\"stock_level\":44,\"quantity_allowe_to_buy\":3,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:58:54.000000Z\",\"updated_at\":\"2021-12-16T10:25:38.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":4,\"hash_id\":\"vzgS3z1634124108\",\"parent_id\":0,\"title\":\"Baby\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"page\",\"seo_url_slug\":\"baby\",\"image_1\":\"image-1-4.jpg\",\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:21:48.000000Z\",\"updated_at\":\"2021-10-13T13:02:49.000000Z\"},\"media\":[{\"id\":2,\"hash_id\":\"9doKZE1634126349\",\"product_id\":2,\"media\":\"media-1-2.jpeg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"88.108.61.109\",\"modified_by_ip\":\"88.108.61.109\",\"created_at\":\"2021-10-13T10:59:09.000000Z\",\"updated_at\":\"2021-10-13T10:59:09.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":5,\"discountPrice\":24,\"totalPrice\":24,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, '2021-12-16 11:47:46', '2021-12-16 11:47:46'),
(135, 'fNVkTL0i47', 33, '2112161639657257630', 1, 4.00, 36, 'Royal Mail Special Delivery', 'Royal Mail Special Delivery', 'Local', 1, NULL, NULL, NULL, NULL, 0.00, 7.50, NULL, '99386741', NULL, 'Square', 'Joa6xBHQp1Z8kDN7jf4iSuI6gHXZY', 'Bil2MpLTDF2Vv91GsxSCqjpah5dZY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":1,\"discount_price\":4,\"price\":4,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":31,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-16T11:47:46.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":1,\"discountPrice\":4,\"totalPrice\":4,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":7.5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, '2021-12-16 12:20:57', '2021-12-16 12:20:57'),
(136, 'aVT37e8cyN', 33, '2112161639658850894', 1, 4.00, 32, 'Royal Mail Standard', 'Please note our shipment days are Monday - Wednesday. Royal Mail Standard', 'Local', 1, NULL, NULL, NULL, NULL, 0.00, 5.00, NULL, '29075711', NULL, 'Square', '50woXMjCIEZuqT599V4HVwNqg9HZY', '7N8SWh86ZyO7J25YPgFr1C3DxmWZY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":1,\"discount_price\":4,\"price\":4,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":30,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-16T12:20:57.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":1,\"discountPrice\":4,\"totalPrice\":4,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, '2021-12-16 12:47:30', '2021-12-16 12:47:30'),
(137, 'wziSJjSjyJ', 33, '2112161639659851868', 2, 6.00, 32, 'Royal Mail Standard', 'Please note our shipment days are Monday - Wednesday. Royal Mail Standard', 'Local', 1, NULL, NULL, NULL, NULL, 0.00, 5.00, NULL, '14405600', NULL, 'Square', 'XpRHDyQwoCOpRwYy5ZwRLvg3udcZY', 'b7xztd9cE84XNwAxV5kWZFxKe3DZY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":2,\"discount_price\":6,\"price\":6,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":29,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-16T12:47:30.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":2,\"discountPrice\":6,\"totalPrice\":6,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, '2021-12-16 13:04:11', '2021-12-16 13:04:11');
INSERT INTO `kod_op_orders` (`id`, `hash_id`, `patient_id`, `order_reference_no`, `qty`, `price`, `delivery_method_id`, `delivery_method_title`, `delivery_method_short_desc`, `delivery_method_type`, `delivery_method_type_id`, `coupon_code_id`, `coupon_code`, `coupon_title`, `coupon_type`, `coupon_type_percent_value`, `delivery_price_charged`, `coupon_code_discount_amount`, `invoice_no`, `tracking_code`, `payment_method`, `transaction_id`, `receipt_id`, `card_token`, `reference`, `your_consumer_reference`, `inform_my_gp`, `status`, `txn_cart`, `accept_note`, `decline_note`, `approved_declined_by_user_id`, `approved_declined_date`, `dispense_by_user_id`, `dispense_by_user_date`, `delivery_date`, `delivered_by_id`, `pharmacy_id`, `payment_transaction_response`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(138, 'lUhUzHF0Fk', 33, '2112171639721829997', 2, 10.00, 32, 'Royal Mail Standard', 'Please note our shipment days are Monday - Wednesday. Royal Mail Standard', 'Local', 1, NULL, NULL, NULL, NULL, 0.00, 5.00, NULL, '26333164', NULL, 'Square', 'H1VeEgUz9rkhDqCbF3zaLn78Xc9YY', 'RwexgBuwRK2VQGpaWxHe7rzgLOAZY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":1,\"discount_price\":4,\"price\":4,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":27,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-16T13:04:11.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}},\"2\":{\"qty\":1,\"discount_price\":6,\"price\":6,\"item\":{\"id\":2,\"hash_id\":\"QYHABz1634126334\",\"category_id\":4,\"title\":\"MAM Anti-Colic 160ml Bottle\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/baby\\/mam-anti-colic-160ml-bottle\",\"sub_heading\":\"Baby Anti Colic\",\"special_note\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"description\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"price\":\"6.00\",\"discount_price\":\"6.00\",\"stock_level\":41,\"quantity_allowe_to_buy\":3,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:58:54.000000Z\",\"updated_at\":\"2021-12-16T11:47:46.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":4,\"hash_id\":\"vzgS3z1634124108\",\"parent_id\":0,\"title\":\"Baby\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"page\",\"seo_url_slug\":\"baby\",\"image_1\":\"image-1-4.jpg\",\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:21:48.000000Z\",\"updated_at\":\"2021-10-13T13:02:49.000000Z\"},\"media\":[{\"id\":2,\"hash_id\":\"9doKZE1634126349\",\"product_id\":2,\"media\":\"media-1-2.jpeg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"88.108.61.109\",\"modified_by_ip\":\"88.108.61.109\",\"created_at\":\"2021-10-13T10:59:09.000000Z\",\"updated_at\":\"2021-10-13T10:59:09.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":2,\"discountPrice\":10,\"totalPrice\":10,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, '2021-12-17 06:17:09', '2021-12-17 06:17:09'),
(139, 'PU2TSORh1i', 33, '2112171639726028885', 1, 4.00, 32, 'Royal Mail Standard', 'Please note our shipment days are Monday - Wednesday. Royal Mail Standard', 'Local', 1, NULL, NULL, NULL, NULL, 0.00, 5.00, NULL, '91841787', NULL, 'Square', 'ZQaAaQ0kRtPSGx0J49L4th6ri0EZY', 'BEgdnwKHzE82W4tkcE1mkTwtkPZZY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":1,\"discount_price\":4,\"price\":4,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":26,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-17T06:17:09.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":1,\"discountPrice\":4,\"totalPrice\":4,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"{\\\"payment\\\": {\\\"id\\\": \\\"ZQaAaQ0kRtPSGx0J49L4th6ri0EZY\\\",\\\"created_at\\\": \\\"2021-12-17T07:27:07.871Z\\\",\\\"updated_at\\\": \\\"2021-12-17T07:27:08.084Z\\\",\\\"amount_money\\\": {\\\"amount\\\": 900,\\\"currency\\\": \\\"GBP\\\"},\\\"status\\\": \\\"COMPLETED\\\",\\\"delay_duration\\\": \\\"PT168H\\\",\\\"source_type\\\": \\\"CARD\\\",\\\"card_details\\\": {\\\"status\\\": \\\"CAPTURED\\\",\\\"card\\\": {\\\"card_brand\\\": \\\"VISA\\\",\\\"last_4\\\": \\\"1111\\\",\\\"exp_month\\\": 12,\\\"exp_year\\\": 2025,\\\"fingerprint\\\": \\\"sq-1-QNAttPW90MIlwiyiazQjsyuz7Hca8pZqK7LBPchrLVHTCQQ3a9dljEacRDXelhEtgg\\\",\\\"card_type\\\": \\\"CREDIT\\\",\\\"prepaid_type\\\": \\\"NOT_PREPAID\\\",\\\"bin\\\": \\\"411111\\\"},\\\"entry_method\\\": \\\"KEYED\\\",\\\"cvv_status\\\": \\\"CVV_ACCEPTED\\\",\\\"avs_status\\\": \\\"AVS_ACCEPTED\\\",\\\"statement_description\\\": \\\"SQ *DEFAULT TEST ACCOUNT\\\",\\\"card_payment_timeline\\\": {\\\"authorized_at\\\": \\\"2021-12-17T07:27:08.014Z\\\",\\\"captured_at\\\": \\\"2021-12-17T07:27:08.084Z\\\"}},\\\"location_id\\\": \\\"L5GBFR21JJH90\\\",\\\"order_id\\\": \\\"BEgdnwKHzE82W4tkcE1mkTwtkPZZY\\\",\\\"risk_evaluation\\\": {\\\"created_at\\\": \\\"2021-12-17T07:27:08.014Z\\\",\\\"risk_level\\\": \\\"NORMAL\\\"},\\\"total_money\\\": {\\\"amount\\\": 900,\\\"currency\\\": \\\"GBP\\\"},\\\"approved_money\\\": {\\\"amount\\\": 900,\\\"currency\\\": \\\"GBP\\\"},\\\"receipt_number\\\": \\\"ZQaA\\\",\\\"receipt_url\\\": \\\"https:\\/\\/squareupsandbox.com\\/receipt\\/preview\\/ZQaAaQ0kRtPSGx0J49L4th6ri0EZY\\\",\\\"delay_action\\\": \\\"CANCEL\\\",\\\"delayed_until\\\": \\\"2021-12-24T07:27:07.871Z\\\",\\\"application_details\\\": {\\\"square_product\\\": \\\"ECOMMERCE_API\\\",\\\"application_id\\\": \\\"sandbox-sq0idb-7jVC6KYpuroYjHVR-Q6bRg\\\"},\\\"version_token\\\": \\\"OquYjRPwfBXamCzdgaKB3nx2HpEPJwb00ceoqMg0Bnp6o\\\"}}\\n\"', '127.0.0.1', NULL, '2021-12-17 07:27:08', '2021-12-17 07:27:08'),
(140, 'qDfHdH7SC4', 33, '211217163972611890', 1, 6.00, 32, 'Royal Mail Standard', 'Please note our shipment days are Monday - Wednesday. Royal Mail Standard', 'Local', 1, NULL, NULL, NULL, NULL, 0.00, 5.00, NULL, '53608786', NULL, 'Square', 'lAjQdg8AuSD8IAWNjgK7zvzY8eAZY', 'rPReWUqnSfowkMWVJu2oSW97d9XZY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"2\":{\"qty\":1,\"discount_price\":6,\"price\":6,\"item\":{\"id\":2,\"hash_id\":\"QYHABz1634126334\",\"category_id\":4,\"title\":\"MAM Anti-Colic 160ml Bottle\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/baby\\/mam-anti-colic-160ml-bottle\",\"sub_heading\":\"Baby Anti Colic\",\"special_note\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"description\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"price\":\"6.00\",\"discount_price\":\"6.00\",\"stock_level\":40,\"quantity_allowe_to_buy\":3,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:58:54.000000Z\",\"updated_at\":\"2021-12-17T06:17:10.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":4,\"hash_id\":\"vzgS3z1634124108\",\"parent_id\":0,\"title\":\"Baby\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"page\",\"seo_url_slug\":\"baby\",\"image_1\":\"image-1-4.jpg\",\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:21:48.000000Z\",\"updated_at\":\"2021-10-13T13:02:49.000000Z\"},\"media\":[{\"id\":2,\"hash_id\":\"9doKZE1634126349\",\"product_id\":2,\"media\":\"media-1-2.jpeg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"88.108.61.109\",\"modified_by_ip\":\"88.108.61.109\",\"created_at\":\"2021-10-13T10:59:09.000000Z\",\"updated_at\":\"2021-10-13T10:59:09.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":1,\"discountPrice\":6,\"totalPrice\":6,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"payment\": {\"id\": \"lAjQdg8AuSD8IAWNjgK7zvzY8eAZY\",\"created_at\": \"2021-12-17T07:28:38.325Z\",\"updated_at\": \"2021-12-17T07:28:38.509Z\",\"amount_money\": {\"amount\": 1100,\"currency\": \"GBP\"},\"status\": \"COMPLETED\",\"delay_duration\": \"PT168H\",\"source_type\": \"CARD\",\"card_details\": {\"status\": \"CAPTURED\",\"card\": {\"card_brand\": \"VISA\",\"last_4\": \"1111\",\"exp_month\": 12,\"exp_year\": 2025,\"fingerprint\": \"sq-1-QNAttPW90MIlwiyiazQjsyuz7Hca8pZqK7LBPchrLVHTCQQ3a9dljEacRDXelhEtgg\",\"card_type\": \"CREDIT\",\"prepaid_type\": \"NOT_PREPAID\",\"bin\": \"411111\"},\"entry_method\": \"KEYED\",\"cvv_status\": \"CVV_ACCEPTED\",\"avs_status\": \"AVS_ACCEPTED\",\"statement_description\": \"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\": {\"authorized_at\": \"2021-12-17T07:28:38.435Z\",\"captured_at\": \"2021-12-17T07:28:38.509Z\"}},\"location_id\": \"L5GBFR21JJH90\",\"order_id\": \"rPReWUqnSfowkMWVJu2oSW97d9XZY\",\"risk_evaluation\": {\"created_at\": \"2021-12-17T07:28:38.436Z\",\"risk_level\": \"NORMAL\"},\"total_money\": {\"amount\": 1100,\"currency\": \"GBP\"},\"approved_money\": {\"amount\": 1100,\"currency\": \"GBP\"},\"receipt_number\": \"lAjQ\",\"receipt_url\": \"https://squareupsandbox.com/receipt/preview/lAjQdg8AuSD8IAWNjgK7zvzY8eAZY\",\"delay_action\": \"CANCEL\",\"delayed_until\": \"2021-12-24T07:28:38.325Z\",\"application_details\": {\"square_product\": \"ECOMMERCE_API\",\"application_id\": \"sandbox-sq0idb-7jVC6KYpuroYjHVR-Q6bRg\"},\"version_token\": \"7Dgo5ZgZ9WnUM9UUReGyktJwb3IHnOBoeYjBuuQypLE6o\"}}\n', '127.0.0.1', NULL, '2021-12-17 07:28:38', '2021-12-17 07:28:38'),
(141, '25HkOs6Rh2', 33, '2112171639738890557', 2, 10.00, 32, 'Royal Mail Standard', 'Please note our shipment days are Monday - Wednesday. Royal Mail Standard', 'Local', 1, NULL, NULL, NULL, NULL, 0.00, 5.00, NULL, '99958327', NULL, 'Square', 'Vg3IBQctI2TkE39QPJqMz5dyn7KZY', 'nbMEs4wbbbscnPIdkt3fOjxf08QZY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":1,\"discount_price\":4,\"price\":4,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":25,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-17T07:27:08.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}},\"2\":{\"qty\":1,\"discount_price\":6,\"price\":6,\"item\":{\"id\":2,\"hash_id\":\"QYHABz1634126334\",\"category_id\":4,\"title\":\"MAM Anti-Colic 160ml Bottle\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/baby\\/mam-anti-colic-160ml-bottle\",\"sub_heading\":\"Baby Anti Colic\",\"special_note\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"description\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"price\":\"6.00\",\"discount_price\":\"6.00\",\"stock_level\":39,\"quantity_allowe_to_buy\":3,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:58:54.000000Z\",\"updated_at\":\"2021-12-17T07:28:38.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":4,\"hash_id\":\"vzgS3z1634124108\",\"parent_id\":0,\"title\":\"Baby\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"page\",\"seo_url_slug\":\"baby\",\"image_1\":\"image-1-4.jpg\",\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:21:48.000000Z\",\"updated_at\":\"2021-10-13T13:02:49.000000Z\"},\"media\":[{\"id\":2,\"hash_id\":\"9doKZE1634126349\",\"product_id\":2,\"media\":\"media-1-2.jpeg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"88.108.61.109\",\"modified_by_ip\":\"88.108.61.109\",\"created_at\":\"2021-10-13T10:59:09.000000Z\",\"updated_at\":\"2021-10-13T10:59:09.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":2,\"discountPrice\":10,\"totalPrice\":10,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"payment\": {\"id\": \"Vg3IBQctI2TkE39QPJqMz5dyn7KZY\",\"created_at\": \"2021-12-17T11:01:29.446Z\",\"updated_at\": \"2021-12-17T11:01:29.624Z\",\"amount_money\": {\"amount\": 1500,\"currency\": \"GBP\"},\"status\": \"COMPLETED\",\"delay_duration\": \"PT168H\",\"source_type\": \"CARD\",\"card_details\": {\"status\": \"CAPTURED\",\"card\": {\"card_brand\": \"VISA\",\"last_4\": \"1111\",\"exp_month\": 12,\"exp_year\": 2025,\"fingerprint\": \"sq-1-QNAttPW90MIlwiyiazQjsyuz7Hca8pZqK7LBPchrLVHTCQQ3a9dljEacRDXelhEtgg\",\"card_type\": \"CREDIT\",\"prepaid_type\": \"NOT_PREPAID\",\"bin\": \"411111\"},\"entry_method\": \"KEYED\",\"cvv_status\": \"CVV_ACCEPTED\",\"avs_status\": \"AVS_ACCEPTED\",\"statement_description\": \"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\": {\"authorized_at\": \"2021-12-17T11:01:29.556Z\",\"captured_at\": \"2021-12-17T11:01:29.625Z\"}},\"location_id\": \"L5GBFR21JJH90\",\"order_id\": \"nbMEs4wbbbscnPIdkt3fOjxf08QZY\",\"risk_evaluation\": {\"created_at\": \"2021-12-17T11:01:29.556Z\",\"risk_level\": \"NORMAL\"},\"total_money\": {\"amount\": 1500,\"currency\": \"GBP\"},\"approved_money\": {\"amount\": 1500,\"currency\": \"GBP\"},\"receipt_number\": \"Vg3I\",\"receipt_url\": \"https://squareupsandbox.com/receipt/preview/Vg3IBQctI2TkE39QPJqMz5dyn7KZY\",\"delay_action\": \"CANCEL\",\"delayed_until\": \"2021-12-24T11:01:29.446Z\",\"application_details\": {\"square_product\": \"ECOMMERCE_API\",\"application_id\": \"sandbox-sq0idb-7jVC6KYpuroYjHVR-Q6bRg\"},\"version_token\": \"6qSGDUQQ89UWmud374dLlAAaCKSIeoa5BqlFOn2IK7B6o\"}}\n', '127.0.0.1', NULL, '2021-12-17 11:01:30', '2021-12-17 11:01:30'),
(142, 'euwTe6f6q3', 33, '2112171639739609159', 1, 4.00, 32, 'Royal Mail Standard', 'Please note our shipment days are Monday - Wednesday. Royal Mail Standard', 'Local', 1, NULL, NULL, NULL, NULL, 0.00, 5.00, NULL, '94950707', NULL, 'Square', 'lghNUIphGBRZ2W6dPX1saAkEjk7YY', 'rjTUDYMxt237PFVFzuZU39AUdoNZY', NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":1,\"discount_price\":4,\"price\":4,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/localhost:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":24,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-17T11:01:30.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":1,\"discountPrice\":4,\"totalPrice\":4,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"payment\": {\"id\": \"lghNUIphGBRZ2W6dPX1saAkEjk7YY\",\"created_at\": \"2021-12-17T11:13:28.558Z\",\"updated_at\": \"2021-12-17T11:13:28.742Z\",\"amount_money\": {\"amount\": 900,\"currency\": \"GBP\"},\"status\": \"COMPLETED\",\"delay_duration\": \"PT168H\",\"source_type\": \"CARD\",\"card_details\": {\"status\": \"CAPTURED\",\"card\": {\"card_brand\": \"VISA\",\"last_4\": \"1111\",\"exp_month\": 12,\"exp_year\": 2025,\"fingerprint\": \"sq-1-QNAttPW90MIlwiyiazQjsyuz7Hca8pZqK7LBPchrLVHTCQQ3a9dljEacRDXelhEtgg\",\"card_type\": \"CREDIT\",\"prepaid_type\": \"NOT_PREPAID\",\"bin\": \"411111\"},\"entry_method\": \"KEYED\",\"cvv_status\": \"CVV_ACCEPTED\",\"avs_status\": \"AVS_ACCEPTED\",\"statement_description\": \"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\": {\"authorized_at\": \"2021-12-17T11:13:28.671Z\",\"captured_at\": \"2021-12-17T11:13:28.742Z\"}},\"location_id\": \"L5GBFR21JJH90\",\"order_id\": \"rjTUDYMxt237PFVFzuZU39AUdoNZY\",\"risk_evaluation\": {\"created_at\": \"2021-12-17T11:13:28.671Z\",\"risk_level\": \"NORMAL\"},\"total_money\": {\"amount\": 900,\"currency\": \"GBP\"},\"approved_money\": {\"amount\": 900,\"currency\": \"GBP\"},\"receipt_number\": \"lghN\",\"receipt_url\": \"https://squareupsandbox.com/receipt/preview/lghNUIphGBRZ2W6dPX1saAkEjk7YY\",\"delay_action\": \"CANCEL\",\"delayed_until\": \"2021-12-24T11:13:28.558Z\",\"application_details\": {\"square_product\": \"ECOMMERCE_API\",\"application_id\": \"sandbox-sq0idb-7jVC6KYpuroYjHVR-Q6bRg\"},\"version_token\": \"j15rsIZOc9futcVpQ27H7svQBBuy4J0jO7vYt2Za9Pf6o\"}}\n', '127.0.0.1', NULL, '2021-12-17 11:13:29', '2021-12-17 11:13:29'),
(143, 'f5bGICauVP', 33, '2112211640073539776', 2, 10.00, 32, 'Royal Mail Standard', 'Please note our shipment days are Monday - Wednesday. Royal Mail Standard', 'Local', 1, NULL, NULL, NULL, NULL, 0.00, 5.00, NULL, '14442036', NULL, 'Square', '9CIjm7fXoryt8c823czMKq6T43RZY', NULL, NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":1,\"discount_price\":4,\"price\":4,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/127.0.0.1:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":23,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-17T11:13:29.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}},\"2\":{\"qty\":1,\"discount_price\":6,\"price\":6,\"item\":{\"id\":2,\"hash_id\":\"QYHABz1634126334\",\"category_id\":4,\"title\":\"MAM Anti-Colic 160ml Bottle\",\"seo_url_slug\":\"http:\\/\\/127.0.0.1:8000\\/chemist\\/baby\\/mam-anti-colic-160ml-bottle\",\"sub_heading\":\"Baby Anti Colic\",\"special_note\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"description\":\"The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.\",\"price\":\"6.00\",\"discount_price\":\"6.00\",\"stock_level\":38,\"quantity_allowe_to_buy\":3,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:58:54.000000Z\",\"updated_at\":\"2021-12-17T11:01:30.000000Z\",\"save_percent\":0,\"offer\":null,\"category\":{\"id\":4,\"hash_id\":\"vzgS3z1634124108\",\"parent_id\":0,\"title\":\"Baby\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"page\",\"seo_url_slug\":\"baby\",\"image_1\":\"image-1-4.jpg\",\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:21:48.000000Z\",\"updated_at\":\"2021-10-13T13:02:49.000000Z\"},\"media\":[{\"id\":2,\"hash_id\":\"9doKZE1634126349\",\"product_id\":2,\"media\":\"media-1-2.jpeg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"88.108.61.109\",\"modified_by_ip\":\"88.108.61.109\",\"created_at\":\"2021-10-13T10:59:09.000000Z\",\"updated_at\":\"2021-10-13T10:59:09.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[]},\"4\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":2,\"discountPrice\":10,\"totalPrice\":10,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, '2021-12-21 07:58:59', '2021-12-21 07:58:59'),
(144, 'NBufqQPv69', 33, '2112231640257807250', 1, 1.92, 32, 'Royal Mail Standard', 'Please note our shipment days are Monday - Wednesday. Royal Mail Standard', 'Local', 1, NULL, NULL, NULL, NULL, 0.00, 5.00, NULL, '91430924', NULL, 'Square', '5yvAnUCfpjhruBnJzBhHxuCFvlWZY', NULL, NULL, NULL, NULL, '0', 'P', '{\"items\":{\"1\":{\"qty\":1,\"discount_price\":1.92,\"price\":1.92,\"item\":{\"id\":1,\"hash_id\":\"kNKUwH1634125279\",\"category_id\":12,\"title\":\"Aspirin 75mg Gastro-Resistant Tablets 28s\",\"seo_url_slug\":\"http:\\/\\/127.0.0.1:8000\\/chemist\\/angina-and-heart-health\\/aspirin-75mg-gastro-resistant-tablets-28s\",\"sub_heading\":\"\",\"special_note\":\"\",\"description\":\"Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.\",\"price\":\"4.00\",\"discount_price\":\"4.00\",\"stock_level\":22,\"quantity_allowe_to_buy\":7,\"position\":\"featured\",\"type\":\"GSL\",\"generic_branded\":\"G\",\"display_order\":1,\"status\":\"1\",\"created_at\":\"2021-10-13T10:41:19.000000Z\",\"updated_at\":\"2021-12-21T07:59:00.000000Z\",\"save_percent\":0,\"offer\":{\"id\":2,\"type\":\"Percent\",\"name\":\"Better than Half\",\"slug\":\"test-patient\",\"products\":\",1\",\"categories\":\"\",\"short_description\":\"<p>xcc<\\/p>\",\"description\":\"<p>cxx<\\/p>\",\"image_1\":null,\"image_2\":null,\"display_order\":2,\"free\":\"0.00\",\"max\":\"0.00\",\"off\":\"52.00\",\"status\":1,\"expiry\":\"2021-12-31 00:00:00\",\"created_at\":\"2021-10-15T00:40:34.000000Z\",\"updated_at\":\"2021-12-22T05:38:27.000000Z\"},\"category\":{\"id\":12,\"hash_id\":\"Rv57mn1634124396\",\"parent_id\":1,\"title\":\"Angina and Heart Health\",\"sub_heading\":\"\",\"description\":\"\",\"category_position\":\"all\",\"seo_url_slug\":\"angina-and-heart-health\",\"image_1\":null,\"image_2\":null,\"embed_video\":\"\",\"display_order\":1,\"status\":\"1\",\"advance_settings\":null,\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"created_at\":\"2021-10-13T10:26:36.000000Z\",\"updated_at\":\"2021-10-13T10:26:36.000000Z\"},\"media\":[{\"id\":1,\"hash_id\":\"8f5OZ21634126039\",\"product_id\":1,\"media\":\"media-1-1.jpg\",\"media_no\":null,\"display_order\":1,\"status\":\"1\",\"created_by_ip\":\"115.186.169.86\",\"modified_by_ip\":\"115.186.169.86\",\"created_at\":\"2021-10-13T10:53:59.000000Z\",\"updated_at\":\"2021-10-13T10:53:59.000000Z\"}]}}},\"offers\":{\"2\":{\"products\":[1],\"categories\":[]},\"3\":{\"products\":[],\"categories\":[1,12,13,14,34,33]},\"4\":{\"products\":[],\"categories\":[]},\"5\":{\"products\":[],\"categories\":[]},\"6\":{\"products\":[],\"categories\":[]}},\"totalQty\":1,\"discountPrice\":1.92,\"totalPrice\":1.92,\"addresses\":{\"b_address_1\":\"196 poplar grove\",\"b_address_2\":null,\"b_address_3\":null,\"b_town\":\"London\",\"b_county\":null,\"b_postcode\":\"N113NX\",\"d_address_1\":\"196 poplar grove\",\"d_address_2\":null,\"d_address_3\":null,\"d_town\":\"London\",\"d_county\":null,\"d_postcode\":\"N113NX\",\"b_first_name\":\"Janice M\",\"b_last_name\":\"Cuevas\",\"d_first_name\":\"Janice M\",\"d_last_name\":\"Cuevas\"},\"deliveryFee\":5,\"couponFree\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, '2021-12-23 11:10:08', '2021-12-23 11:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `kod_op_order_details`
--

CREATE TABLE `kod_op_order_details` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price_charged` double(11,2) DEFAULT NULL COMMENT 'Per item price',
  `raf_read_status` enum('1','0') DEFAULT '0',
  `status` enum('P','D','C') DEFAULT NULL,
  `agree_to_terms_and_conditions` enum('1','0') DEFAULT NULL,
  `approved_declined_note` text DEFAULT NULL,
  `approved_declined_date` datetime DEFAULT NULL,
  `approved_declined_by_user_id` int(11) DEFAULT NULL,
  `dosage` int(11) DEFAULT NULL,
  `dosage_label` text DEFAULT NULL,
  `user_rating` enum('1','2','3','4','5') DEFAULT NULL,
  `user_rating_text` text DEFAULT NULL,
  `review_status` enum('PENDING','APPROVED') DEFAULT NULL,
  `review_date_time` datetime DEFAULT NULL,
  `created_by_ip` varchar(50) NOT NULL DEFAULT '',
  `is_reviewed` enum('1','0') DEFAULT NULL,
  `modified_by_ip` varchar(50) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains Invoices' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kod_op_order_details`
--

INSERT INTO `kod_op_order_details` (`id`, `hash_id`, `order_id`, `product_id`, `qty`, `price_charged`, `raf_read_status`, `status`, `agree_to_terms_and_conditions`, `approved_declined_note`, `approved_declined_date`, `approved_declined_by_user_id`, `dosage`, `dosage_label`, `user_rating`, `user_rating_text`, `review_status`, `review_date_time`, `created_by_ip`, `is_reviewed`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(153, 'IgfH8jwgoy', 127, 1, 3, 8.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 07:37:42', '2021-12-16 07:37:42'),
(154, 'xB8R8ElQjd', 127, 5, 1, 10.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 07:37:42', '2021-12-16 07:37:42'),
(155, 'avIIi1ARP6', 127, 3, 1, 4.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 07:37:42', '2021-12-16 07:37:42'),
(156, 'uGsw7T7U5J', 128, 1, 1, 2.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 07:51:02', '2021-12-16 07:51:02'),
(157, '8GDWfsOpMp', 128, 3, 1, 4.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 07:51:02', '2021-12-16 07:51:02'),
(158, 'wmSRTbPNvh', 129, 1, 2, 6.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 07:53:00', '2021-12-16 07:53:00'),
(159, 'oEr24vUfdb', 130, 1, 1, 4.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 07:55:22', '2021-12-16 07:55:22'),
(160, 'bSI7QpUkRC', 130, 2, 1, 6.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 07:55:22', '2021-12-16 07:55:22'),
(161, 'WxDBSvXfvn', 130, 5, 1, 10.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 07:55:22', '2021-12-16 07:55:22'),
(162, 'Ei3tnLyfOJ', 131, 2, 1, 6.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 08:12:35', '2021-12-16 08:12:35'),
(163, 'lodKhvGNyh', 131, 5, 1, 10.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 08:12:35', '2021-12-16 08:12:35'),
(164, 'yffJ9cYQGT', 132, 7, 1, 31.99, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 08:20:35', '2021-12-16 08:20:35'),
(165, 'vrC6K0hU5q', 132, 4, 1, 8.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 08:20:35', '2021-12-16 08:20:35'),
(166, 'tsfHJ3KZop', 133, 2, 2, 12.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 10:25:38', '2021-12-16 10:25:38'),
(167, 'adiVqrUJTX', 133, 1, 1, 4.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 10:25:38', '2021-12-16 10:25:38'),
(168, 'OBrVa04WRG', 134, 1, 2, 6.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 11:47:46', '2021-12-16 11:47:46'),
(169, '6eUI7ni7Zp', 134, 2, 3, 18.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 11:47:47', '2021-12-16 11:47:47'),
(170, 'viW6JYMVO3', 135, 1, 1, 4.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 12:20:57', '2021-12-16 12:20:57'),
(171, 'wZcOG7jeVs', 136, 1, 1, 4.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 12:47:30', '2021-12-16 12:47:30'),
(172, 'Zm0t1adM1M', 137, 1, 2, 6.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-16 13:04:11', '2021-12-16 13:04:11'),
(173, 'NSLZByvXpC', 138, 1, 1, 4.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-17 06:17:09', '2021-12-17 06:17:09'),
(174, '8j7XYx3g5b', 138, 2, 1, 6.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-17 06:17:10', '2021-12-17 06:17:10'),
(175, 'guTAWELVzC', 139, 1, 1, 4.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-17 07:27:08', '2021-12-17 07:27:08'),
(176, 'kiklAJoRhi', 140, 2, 1, 6.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-17 07:28:38', '2021-12-17 07:28:38'),
(177, 'K0Xb3P607m', 141, 1, 1, 4.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-17 11:01:30', '2021-12-17 11:01:30'),
(178, 'BOe1Az4G0v', 141, 2, 1, 6.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-17 11:01:30', '2021-12-17 11:01:30'),
(179, 'ckxNA1Agh8', 142, 1, 1, 4.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-17 11:13:29', '2021-12-17 11:13:29'),
(180, 'UCgvr3hveK', 143, 1, 1, 4.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-21 07:59:00', '2021-12-21 07:59:00'),
(181, 'BZjmcTfxfi', 143, 2, 1, 6.00, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-21 07:59:00', '2021-12-21 07:59:00'),
(182, 'f54Dq3H3lh', 144, 1, 1, 1.92, '0', 'P', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2021-12-23 11:10:08', '2021-12-23 11:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `kod_pages`
--

CREATE TABLE `kod_pages` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `url_slug` varchar(500) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `advanced_settings` enum('1','0') DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains Pharamcies Cleaning Areas' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kod_pages`
--

INSERT INTO `kod_pages` (`id`, `hash_id`, `title`, `url_slug`, `description`, `image`, `meta_title`, `meta_keywords`, `meta_description`, `display_order`, `status`, `advanced_settings`, `created_at`, `created_by_ip`, `updated_at`, `modified_by_ip`) VALUES
(58, 'xawvLw1630570910', 'About Us', 'about-us', '<p>An independent University of Sussex campus Pharmacy serving students, staff and surrounding areas of Brighton, Hove, and Lewes. Friendly pharmacy with experienced staff giving a high quality service.</p>\r\n<p>We are a new business with lots of ideas to progress the pharmacy into a new league. We are already making a positive impact on the skills, convenience and a wide range of pharmacy products.</p>', NULL, 'About Us', 'About Us', 'About Us', 1, '1', '0', '2021-09-02 07:21:50', '101.50.108.97', '2021-10-13 16:01:52', NULL),
(66, '7qE5cF1632745030', 'Terms and Conditions', 'terms-and-conditions', '<p><strong>Limitations of use</strong></p> <p>This website is for personal use only. The website and its content should not be used for commercial use. You may not copy, modify, display, distribute the content of this website. For any such activity, written consent must be obtained from the website owner.</p> <p><strong>Third party website Links</strong></p> <p>This website contains links from a third party website, run by other organisations. These links are provided for reference purposes. We do not have control over the content of third party websites and do not accept any responsibility or liability for any damages incurred due to their content. By providing their links on our website is not an endorsement of the content of any third party website or source. Written consent is required from this website owner for any links to/from this website by any individual/organisation.</p> <p><strong>Liability</strong></p> <p>We take care in selecting the information sources and contents for this website but we can not exclude the possibilities of errors or mistakes in the content. We can not provide any assurances and we do not accept any responsibility or liability for any damages incurred from use or misuse of the content, negligence, loss to service, data or business, incurred from using this website, to the fullest extent permitted by law without limitations. This does not affect any statutory rights you may have as a consumer.</p> <p><strong>Prohibited and unlawful use of the website</strong></p> <p>You may only use this website for your personal use and you agree that you will not use this website for a prohibited or unlawful use as set out in the terms and conditions. You may not access the code for this website or attempt to copy, modify or publish content of this website in any capacity.</p> <p><strong>Modification of terms and conditions</strong></p> <p>We as the owner of this website reserve the right to make modifications to the terms and conditions of this website at any time. It is the responsibility of the user to check the updated terms and conditions before they use the website.</p> <p><strong>Agreement</strong></p> <p>The agreement between the user of the website and us is governed by the laws of England. By using this website or its content, you consent to the exclusive jurisdiction of English courts in all issues coming from the use of this website. In case if any part of this agreement is deemed to be unenforceable or unlawful, that specific part of the agreement may be superseded by an enforceable provision that is most close to the original intended provision, with affecting the rest of the agreement.</p> <p>This agreement in its entirety forms the legal agreement between the user of this website and us and supersedes all communications and proposals in all forms to this date. This agreement in its electronic form is the same standing as a paper contract. By using this website, the user is agreeing to the terms and conditions in its entirety. Rights that are not expressly granted herein are reserved.</p>', NULL, 'Terms and Conditions', 'Terms and Conditions', 'Terms and Conditions', 1, '1', '0', '2021-09-27 11:17:10', '88.108.61.109', '2021-11-08 09:00:20', NULL),
(67, 'aKJsmJ1632745287', 'Cookie Policy', 'cookie-policy', '<p><strong>Introduction:</strong></p> <p> Like the majority of other websites, our website uses cookies to enhance your experience of using our website and to enable us to improve our website. </p> <p> Cookies are small data files that are placed on your computer, laptop or mobile device when you visit our website. </p> <p> <strong>What information do we collect?</strong> </p> <p>We use cookies for the following purposes,</p> <ul> <li>To understand which part of our website needs improvement.</li> <li>To enable us to collect information about how you use our website.</li> <li>To improve your experience of using our website by personalising your experience.</li> <li>To link functionalities of other websites with our website in order to maintain sessions.</li> </ul> <p><strong>Which type of cookies do we use?</strong></p> <p> Essential cookies: these types of cookies are required to the functioning of the website. They are required for the safety, security, and integrity of the website. For example, this would include cookies that will maintain a session, to allow you to navigate through different pages. These cookies are usually deleted after the session automatically. </p> <p> Analytic/performance cookies: these cookies allow us to monitor the number of visitors to different sections of the websites and to allow us to analyse user browsing patterns. </p> <p> Functional cookies: these cookies are used to recognise users when they return to use the system. This enables the system to remember their preferences so the user does not have to enter their preferences each time. If a user clears their cookies, they would have to enter their preferences again. </p> <p> Targeting cookies: these cookies record the user visits to our website and to specific sections of the website, and the links that the user follows. These cookies are placed by us or carefully selected marketing partners. For the purpose of analytics and website performance, our website contains cookies from respected website analytics providers. These are likely to be Analytic/performance cookies are Targeting cookies. </p> <p> Advertising cookies: We use cookies to help us show adverts to you for other websites across the internet based on your actions on our website and elsewhere. If you have viewed a page about erectile dysfunction on our website, we may advertise our prescribing services to you on other websites. </p> <p><strong>How to set cookies preferences?</strong></p> <p> You can block some or all cookies from the setting of your browser at any time. Please note, by blocking cookies through your browser, it may also block the “Essential Cookies” which may result in some parts of the website not functionally fully. </p> <p><strong>Changes to this Policy</strong></p> <p> We reserve the right to make changes to this cookie policy at any time to reflect the way we handle data at our organisation. </p> <p><strong>Contact Us</strong></p> <p> We welcome any questions, comments, and requests about this cookie policy and you can reach us on our contact details below: </p> <p>Online Pharmacy Shop<br>\r\nUniversity of Sussex, Health Centre Building, Falmer, Brighton, BN1 9RW<br>\r\n<strong>T:&nbsp;</strong><a href=\"tel:01273 699883\">01273 699883</a><br>\r\n<strong>E:&nbsp;</strong><a href=\"mailto:support@onlinepharmacyshop.co.uk\">support@onlinepharmacyshop.co.uk</a></p>', NULL, 'Cookie Policy', 'Cookie Policy', 'Cookie Policy', 1, '1', '0', '2021-09-27 11:21:27', '88.108.61.109', '2021-10-13 16:29:53', NULL),
(68, 'KctqiC1632745339', 'Privacy Policy', 'privacy-policy', '<p>This privacy policy covers (Online Pharmacy Shop) collection, use, and disclosure of information practices while on our website (www.onlinepharmacyshop.co.uk). This privacy policy together with our terms and conditions and other agreements with you forms the basis on which we will collect and process your data. This policy (University Pharmacy) is referred to as, we, us, our. The policy describes how we collect, store and process your data on this website.</p>\r\n\r\n<strong>The collection and use of information by us</strong>\r\n\r\n<p><strong>What information we may collect from you (the user) when you use our website or services?</strong></p>\r\n\r\n<ul>\r\n	<li>Contact details such as name, email address, mailing address, phone number.</li>\r\n	<li>For pharmacy services we collect information such as your medical history, medication history, gender, NHS number, date of birth, GP details.</li>\r\n	<li>Your preferences information such as product wish lists, order history, marketing preferences, reviews.</li>\r\n	<li>Information that you provide by filling in the forms on this website.</li>\r\n	<li>Information you provide when you report a problem or query.</li>\r\n	<li>Payment details</li>\r\n</ul>\r\n\r\n<p>We try to reduce holding and use of sensitive information.</p>\r\n\r\n<p><strong>How we may use your data?</strong></p>\r\n\r\n<ul>\r\n	<li>To provide you with our services</li>\r\n	<li>To process your EPS nominations and repeat prescription requests. This will involve send your request to your GP surgery with your personal details. We may provide some services on our website which are supplied by a third party, such as online doctor or travel clinic booking system. By using these services, the third party providers will have access to your personal details.</li>\r\n	<li>Send you alerts about booked service such as vaccinations, medication review and other private services</li>\r\n	<li>Respond to requests.</li>\r\n	<li>Process your payments for such products and services</li>\r\n	<li>Create and maintain your account</li>\r\n	<li>Send you a newsletter if you have consented</li>\r\n	<li>Respond to your questions and concerns</li>\r\n	<li>Review and enhance the quality of our services and products</li>\r\n	<li>Assist in the detection of fraud.</li>\r\n	<li>To process your booking</li>\r\n</ul>\r\n\r\n<p><strong>Why do we collect, process and store your data?</strong></p>\r\n\r\n<p>We need to collect, process and store your data to enable efficient and legally compliant delivery of services and products to you (all users).</p>\r\n\r\n<p><strong>Legal bases for processing data</strong></p>\r\n\r\n<p>We rely on the following legal bases to process your information in line with legal requirements.</p>\r\n\r\n<ul>\r\n	<li>Consent: When you register on our website, you agree and give us consent to process your data for the delivery of products and services to you by us.</li>\r\n	<li>Legitimate interests: To enable us to conduct our necessary business but not when our interests are overridden by your interests or rights.</li>\r\n	<li>Allowing us to fulfill a contract: We are required to process your personal information in order to provide you with one of our products or services.</li>\r\n	<li>Vital interests: When processing of your personal data is vital to protect you or someone else’s life.</li>\r\n	<li>Legal obligation: When we are required by law to process your personal information. We will always try to contact you unless we are restricted by law.</li>\r\n</ul>\r\n\r\n<p><strong>How long do we hold your data?</strong></p>\r\n\r\n<p>We may hold your data for as long as it\'s legally required and to enable us to maintain your account. The user can request to delete their personal data from our system, please refer to the “User access and choices section” of the policy for details.</p>\r\n\r\n<strong>Data Security</strong>\r\n\r\n<p>We take the security of user data very seriously and take appropriate steps to keep it secure. At no point, we will sell your personal data to another company.</p>\r\n\r\n<p><strong>Where is the user data stored and who has access?</strong></p>\r\n\r\n<p>The user data is saved on secured dedicated servers in the United Kingdom. With industry level security and firewalls to stop any external threats accessing information. The information is accessed by us and our IT services providers (Tech Developer Ltd) in European Economic Area (EEA) and outside of EEA, to ensure that the website runs smoothly and to carry out administrative tasks. To provide certain services, such as repeat prescription requests and EPS nomination, we will need to share your personal details with your GP surgery. By using this website and our services, you agree to the collection, storing and processing of your personal data by us. Also, we may host carefully selected third party service provider on our websites, such as online doctor providers and vaccination booking providers. If you decided to use this service, your personal data will be shared with them to enable them to provide you with the service.</p>\r\n\r\n<p><strong>How do we protect your data?</strong></p>\r\n\r\n<p>We take the security of your personal information seriously. When you enter sensitive information, we encrypt the transmission of that using secure socket layer technology (SSL). We do not store any credit or debit card information. Payments are processed via a third party payment provider that is fully compliant with Level 1 Payment Card Industry (PCI) data security standards. Any payment transactions are encrypted using SSL technology. We follow generally accepted standards to protect your personal information submitted to us. We take at least a monthly backup of the data stored on our system and is stored in UK based dedicated servers.</p>\r\n\r\n<p><strong>Commercial sale of your data?</strong></p>\r\n\r\n<p>Under no circumstances will we make your personal data available to a third party company for sale. Your data is used to provide products and services to you.</p>\r\n\r\n<p><strong>Limitations of internet based systems</strong></p>\r\n\r\n<p>We follow generally accepted standards to protect your personal information submitted to us. Due to the nature of digital information transmission, no method of transmission over the Internet, or method of electronic storage, is 100% secure. Therefore, we cannot guarantee its absolute security.</p>\r\n\r\n<strong>User Access and Choice</strong>\r\n\r\n<p>As a user, under the GDPR rules, you have the following rights over your data that we store and hold.</p>\r\n\r\n<ul>\r\n	<li><strong>Right to be informed:</strong> we will explain to you in our privacy policy as to how we use your personal data.</li>\r\n	<li><strong>Right to correction and completion:</strong> you have the right to ask us to correct any of your data which might be inaccurate and complete any data that is incomplete.</li>\r\n	<li><strong>Right to restrict:</strong> In some cases you may request to restrict the processing of your personal data. We reserve the right to store enough data to respect your data restriction request in future.</li>\r\n	<li><strong>Right to data portability:</strong> You have the right to request your data to be provided to you for your own use. This request applies to when processing is based on consent or performance of contract and where when processing is done through an automated system.</li>\r\n	<li><strong>Right to object:</strong> you may object to the processing of your personal data.</li>\r\n	<li><strong>Right to erasure:</strong> You may request to have your personal data erased where its not stopping us from complying with legal requirements.</li>\r\n</ul>\r\n\r\n<p>Right to withdraw consent: you have the right to withdraw your consent at any point by contacting us through the details below. In some circumstances, this might not be always possible or you might have to wait for a period of time for this to take place. Contact us for if you would like to discuss this in detail.</p>\r\n\r\n<p><strong>Opt-out Preferences</strong></p>\r\n\r\n<p>If you wish to subscribe to our newsletter(s), you can do at the time of registration. We will use your contact details to send the newsletter and other relevant materials that we believe are of benefit to you. You may choose to stop receiving our newsletter by sending us an email request.</p>\r\n\r\n<strong>Additional Information</strong>\r\n\r\n<p><strong>Links to 3rd Party Sites</strong></p>\r\n\r\n<p>Our website may contain links to other 3rd party websites. The privacy policies of these third party websites will differ from that of ours. It\'s your responsibility to read the privacy policy and rules for any 3rd party websites that are linked to us. Your information is governed by their privacy policy. We recommend that you read the privacy policy of any 3rd party website before submitting any personal information.</p>\r\n\r\n<p><strong>Testimonials</strong></p>\r\n\r\n<p>We ask our customers to provide us with feedback in the form of rating and a comment about their experience. This information will be displayed on our website, with the customer first name, in the form of a testimonial. If you wish to update or delete your testimonial, you can request this by emailing us.</p>\r\n\r\n<p><strong>Social media widgets</strong></p>\r\n\r\n<p>This website includes social media widgets and buttons which are linked to our accounts on the respective social media platforms. These platforms are governed by their own set of privacy policies and terms of use, please check before using any of these platforms.</p>\r\n\r\n<strong>General Privacy Information</strong>\r\n\r\n<p><strong>Tracking Technologies / Cookies</strong></p>\r\n\r\n<p>A cookie is a small text file that is stored on your computer when you open our website. The information we collect through the cookies is used to find out about your preferences and make your browsing experience more personalised. Please refer to our Cookie Policy for details.</p>\r\n\r\n<p><strong>Changes to this Policy</strong></p>\r\n\r\n<p>We reserve the right to make changes to this privacy policy at any time to reflect the way we handle data at our organisation.</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>We welcome any questions, comments, and requests about this privacy policy and you can reach us on our contact details below.</p>\r\n\r\n<p>Online Pharmacy Shop<br>\r\nUniversity of Sussex, Health Centre Building, Falmer, Brighton, BN1 9RW<br>\r\n<strong>T:&nbsp;</strong><a href=\"tel:01273 699883\">01273 699883</a><br>\r\n<strong>E:&nbsp;</strong><a href=\"mailto:support@onlinepharmacyshop.co.uk\">support@onlinepharmacyshop.co.uk</a></p>', NULL, 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', 1, '1', '0', '2021-09-27 11:22:19', '88.108.61.109', '2021-10-13 16:21:05', NULL),
(69, 'WMTk0W1632745378', 'Pharmacy Regulation', 'pharmacy-regulation', '<p><br></p>', NULL, 'Pharmacy Regulation', 'Pharmacy Regulation', 'Pharmacy Regulation', 1, '0', '0', '2021-09-27 11:22:58', '88.108.61.109', '2021-10-13 16:31:22', NULL),
(70, 'uBlomM1633517283', 'Delivery', 'delivery', '<h3><span style=\"font-size: 14px;\">UK Delivery</span><br></h3> <div class=\"alert alert-danger\"> <p><strong>Delivery update</strong></p> <p>Royal Mail have been experiencing delays with parcel deliveries, please allow additional time for your parcel to get to you.<br> We’re working with Royal Mail and our customer services team to deal with enquiries as quickly as possible. We’re sorry for any inconvenience caused.</p> </div> <p><strong>Postage and packing costs</strong></p> <p>Postage and packing costs will be added to the cost of your order and will depend on the total cost of the items you order and, where delivery options are provided, the option you choose. The postage and packing charge you will pay will be displayed on screen before you confirm your order to us. Where multiple items are included in one order, we may dispatch the items separately, in which case, you will only be charged one postage and packing charge.</p> <p>List all the delivery methods</p> <p>This is a Royal Mail tracked service and does not require a doorstep signature. Delivery timescales are estimates only.</p> <p>(Same Day Courier is not Royal Mail)</p>              \r\n                            \r\n              <table class=\"table table-bordered\">\r\n            	<thead>\r\n            		<tr>\r\n            			<th width=\"25%\">Delivery Service</th>\r\n            			<th>Description</th>\r\n            			<th width=\"10%\">Price(£)</th>\r\n            		</tr>\r\n            	</thead>\r\n            	<tbody>\r\n            	    \r\n            	                        	    \r\n                    		<tr>\r\n                			    \r\n                			    <td>\r\n                			    \r\n                			        <strong>\r\n                			    \r\n                			            Standard Delivery                			            \r\n                			        </strong>\r\n                			        \r\n                			        <br>\r\n                			        \r\n                			        Standard Delivery Service                			    \r\n                			    </td>\r\n                    			   \r\n                    			<td>\r\n                    			    \r\n                    			    Delivered by Royal Mail. Delivered in 3-5 working days (Saturday included). Must be signed for by someone at the address.                    			    \r\n                    			</td>\r\n                    			\r\n                    			<td>\r\n                    			    \r\n                    			    0.00                    			    \r\n                    			</td>\r\n                    			\r\n                    		</tr>\r\n                    	\r\n                	                            	    \r\n                    		<tr>\r\n                			    \r\n                			    <td>\r\n                			    \r\n                			        <strong>\r\n                			    \r\n                			            Next Day Delivery                			            \r\n                			        </strong>\r\n                			        \r\n                			        <br>\r\n                			        \r\n                			        Next Day Delivery Service                			    \r\n                			    </td>\r\n                    			   \r\n                    			<td>\r\n                    			    \r\n                    			    Orders placed before 4pm on weekdays will be dispatched the same day. Guaranteed Delivery Before 1pm Next Working Day (including Saturdays)                    			    \r\n                    			</td>\r\n                    			\r\n                    			<td>\r\n                    			    \r\n                    			    4.95                    			    \r\n                    			</td>\r\n                    			\r\n                    		</tr>\r\n                    	\r\n                	                        	\r\n            	</tbody>\r\n            </table>', NULL, 'Delivery', 'Delivery', 'Delivery', 2, '1', '0', '2021-10-06 09:48:03', '115.186.141.77', '2021-10-06 11:50:53', NULL),
(71, 'Wzjx7N1633517340', 'How it works', 'how-it-works', '<p><strong>Order Online:</strong></p> \r\n<p> You can order your required products online by visiting <a href=\"https://onlinepharmacyshop.co.uk\">www.onlinepharmacyshop.co.uk</a></p> \r\n\r\n<p><strong>Processing the Order:</strong></p> \r\n<p> After we have recieved your order we will process the order. </p> \r\n\r\n<p><strong>Delivery:</strong></p> \r\n<p> Your products, you can collect from the pharmacy or delivered to your doorstep from our Pharmacy. </p>', NULL, 'How it works', 'How it works', 'How it works', 3, '1', '0', '2021-10-06 09:49:00', '115.186.141.77', '2021-10-13 15:40:26', NULL),
(72, 'TDIGBK1633518694', 'Complaints', 'complaints', '<p> The website <a href=\"https://onlinepharmacyshop.co.uk/\">www.onlinepharmacyshop.co.uk</a> has a written complaints policy and procedures. We wish to offer people an explanation for any concern they have and use feedback constructively to improve the services provided by the pharmacy. We aim to acknowledge all formal written complaints within two working days of receiving them and to respond to all formal written complaints within five working days of receiving them. To lodge a formal complaint, please send an email to <a href=\"mailto:support@onlinepharmacyshop.co.uk\">support@onlinepharmacyshop.co.uk</a> </p> <p> Or </p> <p> Please write to us at: </p> <p> <strong>Online Pharmacy Shop</strong><br> Health Centre Building, Falmer<br> The Broadway<br> Brighton<br> BN1 9RW<br> </p>', NULL, 'Complaints', 'Complaints', 'Complaints', 5, '1', '0', '2021-10-06 10:11:34', '115.186.141.77', '2021-10-13 15:34:15', NULL),
(73, 'fX8ZmL1633518772', 'Returns and refund', 'returns-and-refund', '<p><strong>My medication hasn\'t worked as expected or I no longer need it. Can I return it?</strong></p>\r\n<p>\r\nTo keep our patients safe, we cannot accept returns of any opened orders. If you are unhappy with a medication then you can get in touch with us and we may be able to recommend a suitable alternative for you to order next time.\r\n</p>\r\n\r\n<p><strong>How long does it take for an order to be returned?</strong></p>\r\n<p>\r\nThe return time generally depends on how you send them back and what service you use. Please bear in mind that not all orders are eligible to be returned and you should check our returns policy before attempting to send anything back to us.\r\n</p>\r\n\r\n<p><strong>My order has been returned to sender. What do I do now?</strong></p>\r\n<p>\r\nOnce returned to sender, please advise our customer service team by email about whether you require a refund or a re-send, and the reason for returning.\r\n</p>\r\n\r\n<p><strong>How long does it take before I receive my refund?</strong></p>\r\n<p>\r\nOnce we have received and processed your returned order (which can take up to 1 week), it can take 3-5 working days for you to receive a refund. The amount of time can vary and is dependent on your bank.\r\n</p>', NULL, 'Returns and refund', 'Returns and refund', 'Returns and refund', 6, '1', '0', '2021-10-06 10:12:52', '115.186.141.77', '2021-10-13 15:17:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kod_page_sections`
--

CREATE TABLE `kod_page_sections` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `url_slug` varchar(500) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains Pharamcies Cleaning Areas' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kod_page_sections`
--

INSERT INTO `kod_page_sections` (`id`, `hash_id`, `title`, `url_slug`, `description`, `status`, `created_at`, `created_by_ip`, `updated_at`, `modified_by_ip`) VALUES
(27, 'O0VwFxI38v', 'test', 'test-page-sectionsss', '<p>dasdasasdasdsd<b>asdsa&nbsp; &nbsp;asdasd</b></p>', 1, '2021-06-23 07:46:31', '127.0.0.1', '2021-06-23 07:47:07', '127.0.0.1'),
(28, 'GLvXF2Z0GD', 'Price Guarantee Note', 'price-guarantee-note', '<h5 class=\"text-danger\">Price Promise</h5> <p>You will not find your treatment cheaper. However, if you do we will refund the difference. <a href=\"https://callthedoc.co.uk/pages/price-promise\">Find out more.</a></p>', 1, '2021-06-25 08:11:52', '127.0.0.1', '2021-06-25 08:29:37', '127.0.0.1'),
(29, 'O0Vwsssssdw', 'Low level stock', 'low-level-stock-limit', '5', 1, '2021-06-23 07:46:31', '127.0.0.1', '2021-06-23 07:47:07', '127.0.0.1'),
(30, 'G1bWfs1630678093', 'Payment Cancel Text', 'payment-cancel-text', '<p>Page sec</p>', 1, '2021-09-03 13:08:13', '115.186.141.10', '2021-09-07 05:14:51', '115.186.141.10'),
(31, 'VMUhdW1630678629', 'Test Page Sectionsss', 'test-page-sectionsss', '<p>123</p>', 1, '2021-09-03 13:17:09', '115.186.141.10', '2021-09-03 13:17:09', '115.186.141.10'),
(35, 'Mr1B6m1630679799', 'Section A', 'section-a', '<p>123</p>', 1, '2021-09-03 13:36:39', '115.186.141.10', '2021-09-03 13:36:39', '115.186.141.10'),
(36, 'Kl3Z1z1630679808', 'Section Z', 'section-b', '<p>123</p>', 1, '2021-09-03 13:36:48', '115.186.141.10', '2021-09-03 13:37:28', '115.186.141.10'),
(38, 'jSx6uc1630679955', 'Section Aaa', 'section-aaa', '<p>asd</p>', 1, '2021-09-03 13:39:15', '115.186.141.10', '2021-09-03 13:39:15', '115.186.141.10'),
(39, 'xO0hTo1630995248', 'Privacy Policy 1', 'privacy-policy-1', '<p>privacy-policy Testning 1<br></p>', 1, '2021-09-07 05:14:08', '115.186.141.51', '2021-09-07 05:14:47', '115.186.141.51'),
(40, 'cgPHzb1633526773', 'uk registered pharmacy', 'uk-registered-pharmacy', '<div class=\"row\">\r\n                        <div class=\"col\">\r\n                            <ul>\r\n                                <li><i class=\"ti-check-box\"></i></li>\r\n                                <li>UK registered<br> Pharmacy</li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"col\">\r\n                            <ul>\r\n                                <li><i class=\"ti-check-box\"></i></li>\r\n                                <li>Authentic &amp;<br> safe medication</li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"col text-center\">\r\n                            <ul>\r\n                                <li><i class=\"ti-check-box\"></i></li>\r\n                                <li>Lowest Price<br> Guarantee</li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"col text-center\">\r\n                            <ul>\r\n                                <li><i class=\"ti-check-box\"></i></li>\r\n                                <li>Discreet &amp;<br> Confidential</li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"col text-center\">\r\n                            <ul>\r\n                                <li><i class=\"ti-check-box\"></i></li>\r\n                                <li>Fast, express,<br> next day delivery</li>\r\n                            </ul>\r\n                        </div>\r\n                    </div>', 1, '2021-10-06 12:26:13', '115.186.141.77', '2021-10-06 12:26:13', '115.186.141.77'),
(41, 'hd1qrg1633526825', 'How it works', 'how-it-works', '<div class=\"row justify-content-center \">\r\n                            <div class=\"col-md-12 text-white text-center wow\" style=\"visibility: hidden; animation-name: none;\">\r\n                                <h3 class=\"mb-5\">How it works</h3>\r\n                            </div>\r\n                        </div>\r\n\r\n                        <div class=\"row justify-content-center justify-content-md-start\">\r\n\r\n\r\n\r\n                            <div class=\"col-md-4 col-sm-12 mb-2 text-center howitworks wow\" style=\"visibility: hidden; animation-name: none;\">\r\n\r\n                                <div class=\"row\">\r\n                                    <div class=\"col-lg-12 col-4\">\r\n                                        <img src=\"assets/images/onlineconsultaion-blue.png\" class=\"img-fluid\">\r\n                                    </div>\r\n                                    <div class=\"col-lg-12 col-8  mt-3\">\r\n                                        <p>Select a treatment and answer a few simple questions which are quick and\r\n                                            easy.</p>\r\n                                    </div>\r\n                                </div>\r\n\r\n                            </div>\r\n\r\n                            <div class=\"col-md-4 col-sm-12 mb-2 text-center howitworks  wow\" style=\"visibility: hidden; animation-name: none;\">\r\n\r\n                                <div class=\"row\">\r\n                                    <div class=\"col-lg-12 col-4\">\r\n                                        <img src=\"assets/images/prescriber-blue.png\" class=\"img-fluid\">\r\n                                    </div>\r\n                                    <div class=\"col-lg-12 col-8 mt-3\">\r\n                                        <p>Our Doctor will confirm suitability of treatment and issue a private\r\n                                            prescription at no extra cost.</p>\r\n                                    </div>\r\n                                </div>\r\n\r\n                            </div>\r\n\r\n                            <div class=\"col-md-4 col-sm-12 mb-2 text-center howitworks wow\" style=\"visibility: hidden; animation-name: none;\">\r\n\r\n                                <div class=\"row\">\r\n                                    <div class=\"col-lg-12 col-4\">\r\n                                        <img src=\"assets/images/treatment-delivery-blue.png\" class=\"img-fluid\">\r\n                                    </div>\r\n                                    <div class=\"col-lg-12 col-8  mt-3\">\r\n                                        <p>Your treatment you can collect from the pharmacy or delivered to your\r\n                                            doorstep from our Pharmacy in discreet packaging.</p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n\r\n\r\n\r\n                        </div>', 1, '2021-10-06 12:27:05', '115.186.141.77', '2021-10-06 12:27:05', '115.186.141.77'),
(42, 'O7twR91633526857', 'Latest Blog', 'latest-blog', '<h2>Latest Blog</h2>\r\n                <span>Blog</span>\r\n                <p>Popular blogs from our website blog section.</p>', 1, '2021-10-06 12:27:37', '115.186.141.77', '2021-10-06 12:27:37', '115.186.141.77'),
(43, 'iU7BoR1633526893', 'Popular Treatments', 'popular-treatments', '<h2>Popular Treatments</h2>\r\n                    <p>Discover our range of safe and regulated treatments.</p>', 1, '2021-10-06 12:28:13', '115.186.141.77', '2021-10-06 12:28:13', '115.186.141.77'),
(44, 'yaZdzn1634129981', 'maintenance mode', 'maintenance-mode', '<p>Website Under Maintenance</p>', 1, '2021-10-13 11:59:41', '127.0.0.1', '2021-12-10 06:11:18', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `kod_patients`
--

CREATE TABLE `kod_patients` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT 235,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `nsh_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `town_city` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `address_1` text DEFAULT NULL,
  `address_2` text DEFAULT NULL,
  `address_3` text DEFAULT NULL,
  `mobile_no` varchar(60) DEFAULT NULL,
  `is_verified` enum('1','0') DEFAULT '0',
  `reason` text DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_patients`
--

INSERT INTO `kod_patients` (`id`, `hash_id`, `country_id`, `first_name`, `last_name`, `gender`, `dob`, `nsh_no`, `email`, `password`, `town_city`, `county`, `postcode`, `address_1`, `address_2`, `address_3`, `mobile_no`, `is_verified`, `reason`, `status`, `created_at`, `updated_at`) VALUES
(33, 'quoSFCbAMg', 235, 'Jany', 'Weissnat', 'male', '2008-11-12', NULL, 'sugimusif@abyssmail.com', '$2y$10$inZ24iYVGnRu/3GFRkzNR.RfQItRIt87nlcWd21ECgCvQT8G72fQG', NULL, NULL, NULL, NULL, NULL, NULL, '03410200605', '1', NULL, '1', '2021-12-16 07:09:25', '2021-12-16 07:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `kod_patients_addresses`
--

CREATE TABLE `kod_patients_addresses` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `b_first_name` varchar(255) DEFAULT NULL,
  `b_last_name` varchar(255) DEFAULT NULL,
  `b_address_1` varchar(255) DEFAULT NULL,
  `b_address_2` varchar(255) DEFAULT NULL,
  `b_address_3` varchar(255) DEFAULT NULL,
  `b_town` varchar(255) DEFAULT NULL,
  `b_county` varchar(255) DEFAULT NULL,
  `b_postcode` varchar(255) DEFAULT NULL,
  `d_address_1` varchar(255) DEFAULT NULL,
  `d_first_name` varchar(255) DEFAULT NULL,
  `d_last_name` varchar(255) DEFAULT NULL,
  `d_address_2` varchar(255) DEFAULT NULL,
  `d_address_3` varchar(255) DEFAULT NULL,
  `d_town` varchar(255) DEFAULT NULL,
  `d_county` varchar(255) DEFAULT NULL,
  `d_postcode` varchar(255) DEFAULT NULL,
  `gp_surgery_name` varchar(255) DEFAULT NULL,
  `gp_surgery_email` varchar(255) DEFAULT NULL,
  `gp_surgery_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_patients_addresses`
--

INSERT INTO `kod_patients_addresses` (`id`, `hash_id`, `patient_id`, `b_first_name`, `b_last_name`, `b_address_1`, `b_address_2`, `b_address_3`, `b_town`, `b_county`, `b_postcode`, `d_address_1`, `d_first_name`, `d_last_name`, `d_address_2`, `d_address_3`, `d_town`, `d_county`, `d_postcode`, `gp_surgery_name`, `gp_surgery_email`, `gp_surgery_address`, `created_at`, `updated_at`) VALUES
(28, 'SojZYB02fu', 33, 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', '196 poplar grove', 'Janice M', 'Cuevas', NULL, NULL, 'London', NULL, 'N113NX', NULL, NULL, NULL, '2021-12-16 07:09:37', '2021-12-16 07:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `kod_patients_orders_addresses`
--

CREATE TABLE `kod_patients_orders_addresses` (
  `id` int(255) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `b_address_1` varchar(255) DEFAULT NULL,
  `b_address_2` varchar(255) DEFAULT NULL,
  `b_address_3` varchar(255) DEFAULT NULL,
  `b_town` varchar(255) DEFAULT NULL,
  `b_county` varchar(255) DEFAULT NULL,
  `b_postcode` varchar(255) DEFAULT NULL,
  `b_first_name` varchar(255) DEFAULT NULL,
  `b_last_name` varchar(255) DEFAULT NULL,
  `d_address_1` varchar(255) DEFAULT NULL,
  `d_address_2` varchar(255) DEFAULT NULL,
  `d_address_3` varchar(255) DEFAULT NULL,
  `d_town` varchar(255) DEFAULT NULL,
  `d_county` varchar(255) DEFAULT NULL,
  `d_postcode` varchar(255) DEFAULT NULL,
  `d_first_name` varchar(255) DEFAULT NULL,
  `d_last_name` varchar(255) DEFAULT NULL,
  `created_by_ip` varchar(255) DEFAULT NULL,
  `updated_by_ip` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_patients_orders_addresses`
--

INSERT INTO `kod_patients_orders_addresses` (`id`, `hash_id`, `order_id`, `b_address_1`, `b_address_2`, `b_address_3`, `b_town`, `b_county`, `b_postcode`, `b_first_name`, `b_last_name`, `d_address_1`, `d_address_2`, `d_address_3`, `d_town`, `d_county`, `d_postcode`, `d_first_name`, `d_last_name`, `created_by_ip`, `updated_by_ip`, `created_at`, `updated_at`) VALUES
(42, '4WxSU1bYH0', '127', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-16 12:37:42', '2021-12-16 12:37:42'),
(43, 'oC8XE34SWS', '128', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-16 12:51:02', '2021-12-16 12:51:02'),
(44, 'VyY3M99Jyk', '129', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-16 12:53:00', '2021-12-16 12:53:00'),
(45, 'wGNCa4WzWs', '130', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-16 12:55:22', '2021-12-16 12:55:22'),
(46, 'ohmNdtLgwF', '131', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-16 13:12:35', '2021-12-16 13:12:35'),
(47, 'zFHmAg9B9P', '132', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-16 13:20:35', '2021-12-16 13:20:35'),
(48, '5yI23Qi3WE', '133', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-16 15:25:38', '2021-12-16 15:25:38'),
(49, 'oz0C2cOjZF', '134', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-16 16:47:47', '2021-12-16 16:47:47'),
(50, 'SPd71ZcOMa', '135', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-16 17:20:57', '2021-12-16 17:20:57'),
(51, 'kSp9CfMFWf', '136', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-16 17:47:30', '2021-12-16 17:47:30'),
(52, 'eJmqywftQB', '137', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-16 18:04:11', '2021-12-16 18:04:11'),
(53, 'nHAkvKgk3U', '138', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-17 11:17:10', '2021-12-17 11:17:10'),
(54, 'cHjK9n3Cm4', '139', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-17 12:27:08', '2021-12-17 12:27:08'),
(55, '47gFxbptfc', '140', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-17 12:28:38', '2021-12-17 12:28:38'),
(56, '0jhV6n3N1y', '141', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-17 16:01:30', '2021-12-17 16:01:30'),
(57, 'Ngv7mKWu5Q', '142', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-17 16:13:29', '2021-12-17 16:13:29'),
(58, 'ROXVLbNpkw', '143', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-21 12:59:00', '2021-12-21 12:59:00'),
(59, 'celOBTHh1E', '144', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', '196 poplar grove', NULL, NULL, 'London', NULL, 'N113NX', 'Janice M', 'Cuevas', NULL, NULL, '2021-12-23 16:10:08', '2021-12-23 16:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `kod_pharmacy_branches`
--

CREATE TABLE `kod_pharmacy_branches` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `pharmacy_name` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `fax_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) NOT NULL,
  `address_3` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `display_order` varchar(255) DEFAULT NULL,
  `created_by_ip` varchar(255) DEFAULT NULL,
  `modified_by_ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_pharmacy_branches`
--

INSERT INTO `kod_pharmacy_branches` (`id`, `hash_id`, `first_name`, `last_name`, `pharmacy_name`, `mobile_number`, `fax_number`, `email`, `password`, `address_1`, `address_2`, `address_3`, `city`, `county`, `postcode`, `status`, `display_order`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(6, 'lHyrlm1638527358', 'wajid', 'iqbal', 'Tarik Clarke', '03410200605', '+1 (611) 461-6778', 'cytiji@robot-mail.com', '$2y$10$t64EWtiONOCP/mZ3w1yBx.K91UyanRIxtoRtpjJjyPi1I0oGiSc9G', '196 poplar grove', '123 poplar frt', '13 poplar fix', 'London', '', 'N113NX', 1, '3', '127.0.0.1', '127.0.0.1', '2021-12-03 05:29:19', '2021-12-07 05:51:48'),
(7, '7Eddto1638785738', 'treat', 'local', 'treatlocal', '034156085995', '+1 (611) 461-6778', 'vomoke@zetmail.com', '$2y$10$HtG9FwdcwdPf5/wrmjH2b.hnsgTSEjE6mW8e2RFqGxD33NAAvg/2K', '198 poplar Street', '', '', 'london', '', 'N117HX', 1, '2', '127.0.0.1', '127.0.0.1', '2021-12-06 05:15:38', '2021-12-06 05:15:38'),
(8, 'TJapDk1638965705', 'Cindy', 'Miller', 'perdeparture', '052456258', '+1 (611) 461-6778', 'kafomo@abyssmail.com', '$2y$10$Lrn/yanF7v5wJIm0uN0PQ.eAObcBLVsY0WnwGLGnfhBTlGIf4.GVO', '198 poplar Street', '', '', 'london', '', 'N117HX', 1, '1', '127.0.0.1', '127.0.0.1', '2021-12-08 07:15:06', '2021-12-08 07:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `kod_pharmacy_opening_hours`
--

CREATE TABLE `kod_pharmacy_opening_hours` (
  `id` int(11) NOT NULL,
  `sat_open_time` varchar(100) DEFAULT NULL,
  `sat_close_time` varchar(100) DEFAULT NULL,
  `sun_open_time` varchar(100) DEFAULT NULL,
  `sun_close_time` varchar(100) DEFAULT NULL,
  `mon_open_time` varchar(100) DEFAULT NULL,
  `mon_close_time` varchar(100) DEFAULT NULL,
  `tue_open_time` varchar(100) DEFAULT NULL,
  `tue_close_time` varchar(100) DEFAULT NULL,
  `wed_open_time` varchar(100) DEFAULT NULL,
  `wed_close_time` varchar(100) DEFAULT NULL,
  `thu_open_time` varchar(100) DEFAULT NULL,
  `thu_close_time` varchar(100) DEFAULT NULL,
  `fri_open_time` varchar(100) DEFAULT NULL,
  `fri_close_time` varchar(100) DEFAULT NULL,
  `is_sat_closed` tinyint(1) DEFAULT 0,
  `is_sun_closed` tinyint(1) DEFAULT 0,
  `is_mon_closed` tinyint(1) DEFAULT 0,
  `is_tue_closed` tinyint(1) DEFAULT 0,
  `is_wed_closed` tinyint(1) DEFAULT 0,
  `is_thu_closed` tinyint(1) DEFAULT 0,
  `is_fri_closed` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kod_pharmacy_opening_hours`
--

INSERT INTO `kod_pharmacy_opening_hours` (`id`, `sat_open_time`, `sat_close_time`, `sun_open_time`, `sun_close_time`, `mon_open_time`, `mon_close_time`, `tue_open_time`, `tue_close_time`, `wed_open_time`, `wed_close_time`, `thu_open_time`, `thu_close_time`, `fri_open_time`, `fri_close_time`, `is_sat_closed`, `is_sun_closed`, `is_mon_closed`, `is_tue_closed`, `is_wed_closed`, `is_thu_closed`, `is_fri_closed`, `created_at`, `created_by_ip`, `updated_at`, `modified_by_ip`) VALUES
(3, '9:00 AM', '1:30 PM', '2:00 AM', '1:00 AM', '9:00 AM', '5:30 PM', '9:00 AM', '5:30 PM', '9:00 AM', '5:30 PM', '9:00 AM', '5:30 PM', '9:00 AM', '5:30 PM', 0, 1, 0, 0, 0, 0, 0, '2021-06-09 06:33:31', '88.108.49.25', '2021-11-05 17:18:18', '88.108.49.25');

-- --------------------------------------------------------

--
-- Table structure for table `kod_pharmacy_profile`
--

CREATE TABLE `kod_pharmacy_profile` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `pharmacy_name` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `contact_number_p` varchar(255) DEFAULT NULL,
  `contact_number_s` varchar(255) DEFAULT NULL,
  `email_address_primary` varchar(255) DEFAULT NULL,
  `email_address_secondary` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `whats_number` varchar(255) DEFAULT NULL,
  `fax_number` varchar(255) DEFAULT NULL,
  `company_number` varchar(255) DEFAULT NULL,
  `gphc_reg_number` varchar(255) DEFAULT NULL,
  `vat_number` varchar(255) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) NOT NULL,
  `address_3` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `created_by_ip` varchar(255) DEFAULT NULL,
  `modified_by_ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_pharmacy_profile`
--

INSERT INTO `kod_pharmacy_profile` (`id`, `hash_id`, `pharmacy_name`, `business_name`, `contact_number_p`, `contact_number_s`, `email_address_primary`, `email_address_secondary`, `mobile_number`, `whats_number`, `fax_number`, `company_number`, `gphc_reg_number`, `vat_number`, `address_1`, `address_2`, `address_3`, `city`, `county`, `post_code`, `facebook_url`, `instagram_url`, `twitter_url`, `linkedin_url`, `youtube_url`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(2, 'UcH3Ry1636132813', 'Online Pharmacy Shop', 'Online Pharmacy Shop', '01273699883', '', 'supprot@onlinepharmacyshop.co.uk', 'no-reply@predeparture.co.uk', '', '034102006016', '', '', '', '', 'Health Centre Building', 'Falmer', '', 'Brighton', '', 'BN1 9RW', 'https://www.facebook.com/pg/University-Pharmacy-2289195781340444', '', '', '', '', '88.108.49.25', '88.108.49.25', '2021-06-08 08:55:54', '2021-11-05 17:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `kod_pharmacy_settings`
--

CREATE TABLE `kod_pharmacy_settings` (
  `id` int(11) NOT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `recaptcha` text DEFAULT NULL,
  `nhs_url` text DEFAULT NULL,
  `script_1` text DEFAULT NULL,
  `script_2` text DEFAULT NULL,
  `script_3` text DEFAULT NULL,
  `script_4` text DEFAULT NULL,
  `logo_1` text DEFAULT NULL,
  `logo_2` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `nhs_logo` text DEFAULT NULL,
  `created_by_ip` varchar(255) DEFAULT NULL,
  `modified_by_ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_pharmacy_settings`
--

INSERT INTO `kod_pharmacy_settings` (`id`, `meta_title`, `meta_keywords`, `meta_description`, `recaptcha`, `nhs_url`, `script_1`, `script_2`, `script_3`, `script_4`, `logo_1`, `logo_2`, `favicon`, `nhs_logo`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(1, 'Online Pharmacy Shop', 'Online Pharmacy Shop 1', 'Online Pharmacy Shop', '6LfUm0EcAAAAAI_WyfpvM7d8yG7aCmHxVFouG2_W', 'https://nhs.org.uk/', '', '', '', '', 'logo-1-1.png', 'logo-2-1.png', 'favicon-1.png', 'nhs-logo-1.png', '127.0.0.1', '127.0.0.1', '2021-06-09 08:15:18', '2021-11-26 06:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `kod_products`
--

CREATE TABLE `kod_products` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `seo_url_slug` varchar(255) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `special_note` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(14,2) DEFAULT NULL,
  `discount_price` decimal(14,2) DEFAULT NULL,
  `stock_level` varchar(255) DEFAULT NULL,
  `quantity_allowe_to_buy` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `type` enum('GSL','POM','POM+GSL') DEFAULT NULL,
  `generic_branded` enum('G','B') DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_products`
--

INSERT INTO `kod_products` (`id`, `hash_id`, `category_id`, `title`, `seo_url_slug`, `sub_heading`, `special_note`, `description`, `price`, `discount_price`, `stock_level`, `quantity_allowe_to_buy`, `position`, `type`, `generic_branded`, `display_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kNKUwH1634125279', 12, 'Aspirin 75mg Gastro-Resistant Tablets 28s', 'aspirin-75mg-gastro-resistant-tablets-28s', '', '', 'Aspirin 75mg Gastro-Resistant Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.', '4.00', '0.00', '21', '7', 'featured', 'GSL', 'G', 1, '1', '2021-10-13 10:41:19', '2021-12-23 11:10:08'),
(2, 'QYHABz1634126334', 4, 'MAM Anti-Colic 160ml Bottle', 'mam-anti-colic-160ml-bottle', 'Baby Anti Colic', 'The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.', 'The MAM Anti-Colic 160ml Bottle is self-sterilising, so there is no need for a seperate steriliser. It is available in both blue and pink.', '6.00', '0.00', '37', '3', 'featured', 'GSL', 'G', 1, '1', '2021-10-13 10:58:54', '2021-12-21 07:59:00'),
(3, 'mH7GuP1634126429', 12, 'Dispersible Aspirin 75mg Tablets 28s', 'dispersible-aspirin-75mg-tablets-28s', '', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\">Dispersible Aspirin 75mg Tablets can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.</span><br></p>', '6.00', '4.00', '43', '10', 'featured', 'GSL', 'G', 2, '1', '2021-10-13 11:00:29', '2021-12-16 07:51:02'),
(4, '3ycMba1634126681', 19, 'Colief Infant Drops 7ml', 'colief-infant-drops-7ml', '', '', '<p>Colief Infant Drops help to relieve colic in babies from birth onwards.</p>', '10.00', '8.00', '49', '10', 'featured', 'GSL', 'G', 3, '1', '2021-10-13 11:04:41', '2021-12-16 08:20:35'),
(5, 'jmcw7I1634126817', 19, 'Woodward\'s Gripe Water 150ml', 'woodwards-gripe-water-150ml', '', '', '<p>Woodward\'s Gripe Water relieves griping pain and waves of severe abdominal discomfort (infant colic) due to trapped air in the tummy in babies aged one month to one year.</p>', '10.00', '10.00', '396', '3', 'featured', 'GSL', 'G', 1, '1', '2021-10-13 11:06:57', '2021-12-16 08:12:35'),
(6, 'luBL1q1634127879', 16, 'Calcichew Forte Chewable Tablets 60s', 'calcichew-forte-chewable-tablets-60s', '', '', '<p>Calcichew Forte Chewable Tablets are orange flavoured chewable tablets for the treatment and prevention of calcium deficiency which may occur if your diet or lifestyle does not provide enough, or when body requirements are increased.</p>', '13.00', '12.00', '119', '5', 'featured', 'POM', 'G', 1, '1', '2021-10-13 11:24:39', '2021-12-08 13:07:23'),
(7, 'KC8wnD1634128513', 16, 'Aciferol D3 30000iu Capsules 10s', 'aciferol-d3-30000iu-capsules-10s', '', '', '<p>Aciferol D3 is a vitamin D3 (colecalciferol) supplement.</p>', '44.98', '31.99', '50', '4', 'featured', 'GSL', 'G', 3, '1', '2021-10-13 11:35:13', '2021-12-16 08:20:35'),
(8, 'cFT8g91634128621', 15, 'Vitabiotics Wellman Sport 30s', 'vitabiotics-wellman-sport-30s', '', '', '<p>The all-round comprehensive multivitamin tablet for men involved in sport and fitness.</p>', '3.00', '2.00', '100', '10', 'featured', 'POM', 'G', 8, '1', '2021-10-13 11:37:01', '2021-12-08 06:46:45'),
(9, '4vjDDU1634129023', 15, 'Phizz Hydration + Vitamins and Minerals Effervescent Tablets (Orange or Apple & Blackcurrant / 10s or 20s)', 'phizz-hydration-vitamins-and-minerals-effervescent-tablets-orange-or-apple-blackcurrant-10s-or-20s', '', '', '<p>\r\nPhizz Hydration + Vitamins and Minerals Effervescent Tablets combine a rehydration formula with a mix of essential vitamins</p>', '4.00', '1.00', '100', '10', 'featured', 'POM', 'G', 9, '1', '2021-10-13 11:43:43', '2021-12-08 06:46:24'),
(10, 'Myvumq1637578765', 34, 'Benylin Children\'s Chesty Coughs 125ml', 'benylin-childrens-chesty-coughs-125ml', 'Benylin Children\'s Chesty Coughs 125ml', '', 'Benylin Children\'s Chesty Cough\r\n\r\nBenylin Children\'s Chesty Cough is a sugar free, strawberry flavoured cough medicine for children aged 6-12 years that contains guaifenesin to help thin and loosen mucus, providing effective relief from chesty coughs without causing drowsiness.', '40.00', '40.00', '119', '3', '', 'GSL', 'G', 1, '1', '2021-11-22 05:59:25', '2021-12-08 12:52:12'),
(11, 'YTI6N81639030452', 20, 'Colief Infant Drops 7ml 1', 'colief-infant-drops-7ml1', 'Colief Infant Drops help to relieve colic in babies from birth onwards.1', '', 'Colief Infant Drops help to relieve colic in babies from birth onwards.1', '11.29', '5.00', '15', '5', 'featured', 'GSL', 'G', 18, '1', '2021-12-09 01:14:12', '2021-12-09 03:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `kod_product_long_description`
--

CREATE TABLE `kod_product_long_description` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_product_long_description`
--

INSERT INTO `kod_product_long_description` (`id`, `product_id`, `hash_id`, `title`, `description`, `display_order`, `status`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(279, 83, 'AEarrF1634107462', 'Description', '<p>O.R.S Oral Rehydration Salts Lemon Flavour Soluble Tablets 12s.&nbsp;O.R.S Oral Rehydration Salts Lemon Flavour Soluble Tablets 12s.&nbsp;O.R.S Oral Rehydration Salts Lemon Flavour Soluble Tablets 12s. O.R.S Oral Rehydration Salts Lemon Flavour Soluble Tablets 12s.&nbsp;O.R.S Oral Rehydration Salts Lemon Flavour Soluble Tablets 12s.&nbsp;O.R.S Oral Rehydration Salts Lemon Flavour Soluble Tablets 12s. O.R.S Oral Rehydration Salts Lemon Flavour Soluble Tablets 12s.&nbsp;O.R.S Oral Rehydration Salts Lemon Flavour Soluble Tablets 12s.&nbsp;O.R.S Oral Rehydration Salts Lemon Flavour Soluble Tablets 12s.<br></p>', 1, '1', '127.0.0.1', '127.0.0.1', '2021-10-13 01:44:22', '2021-10-13 01:44:22'),
(280, 83, '4VDW331634108202', 'Reviews', '<!-- Reviews Start -->\r\n                                <div class=\"review border-default universal-padding\">\r\n                                    <div class=\"group-title\">\r\n                                        <h2>customer review</h2>\r\n                                    </div>\r\n                                    <h4 class=\"review-mini-title\">Hastech</h4>\r\n                                    <ul class=\"review-list\">\r\n                                        <!-- Single Review List Start -->\r\n                                        <li>\r\n                                            <span>Quality</span>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star-o\"></i>\r\n                                            <i class=\"fa fa-star-o\"></i>\r\n                                            <label>Hastech</label>\r\n                                        </li>\r\n                                        <!-- Single Review List End -->\r\n                                        <!-- Single Review List Start -->\r\n                                        <li>\r\n                                            <span>price</span>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star-o\"></i>\r\n                                            <i class=\"fa fa-star-o\"></i>\r\n                                            <i class=\"fa fa-star-o\"></i>\r\n                                            <label>Review by <a href=\"https://themeforest.net/user/hastech\">Hastech</a></label>\r\n                                        </li>\r\n                                        <!-- Single Review List End -->\r\n                                        <!-- Single Review List Start -->\r\n                                        <li>\r\n                                            <span>value</span>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star-o\"></i>\r\n                                            <label>Posted on 7/20/18</label>\r\n                                        </li>\r\n                                        <!-- Single Review List End -->\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- Reviews End -->\r\n                                <!-- Reviews Start -->\r\n                                <div class=\"review border-default universal-padding mt-30\">\r\n                                    <h2 class=\"review-title mb-30\">You\'re reviewing: <br><span>Faded Short Sleeves T-shirt</span></h2>\r\n                                    <p class=\"review-mini-title\">your rating</p>\r\n                                    <ul class=\"review-list\">\r\n                                        <!-- Single Review List Start -->\r\n                                        <li>\r\n                                            <span>Quality</span>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star-o\"></i>\r\n                                            <i class=\"fa fa-star-o\"></i>\r\n                                        </li>\r\n                                        <!-- Single Review List End -->\r\n                                        <!-- Single Review List Start -->\r\n                                        <li>\r\n                                            <span>price</span>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star-o\"></i>\r\n                                            <i class=\"fa fa-star-o\"></i>\r\n                                            <i class=\"fa fa-star-o\"></i>\r\n                                        </li>\r\n                                        <!-- Single Review List End -->\r\n                                        <!-- Single Review List Start -->\r\n                                        <li>\r\n                                            <span>value</span>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star\"></i>\r\n                                            <i class=\"fa fa-star-o\"></i>\r\n                                        </li>\r\n                                        <!-- Single Review List End -->\r\n                                    </ul>\r\n                                    <!-- Reviews Field Start -->\r\n                                    <div class=\"riview-field mt-40\">\r\n                                        \r\n                                            <div class=\"form-group\">\r\n                                                <label class=\"req\" for=\"sure-name\">Nickname</label>\r\n                                                <input type=\"text\" class=\"form-control\" id=\"sure-name\">\r\n                                            </div>\r\n                                            <div class=\"form-group\">\r\n                                                <label class=\"req\" for=\"subject\">Summary</label>\r\n                                                <input type=\"text\" class=\"form-control\" id=\"subject\">\r\n                                            </div>\r\n                                            <div class=\"form-group\">\r\n                                                <label class=\"req\" for=\"comments\">Review</label>\r\n                                                <textarea class=\"form-control\" rows=\"5\" id=\"comments\"></textarea>\r\n                                            </div>\r\n                                            <button type=\"submit\" class=\"customer-btn\">Submit Review</button>\r\n                                        \r\n                                    </div>\r\n                                    <!-- Reviews Field Start -->\r\n                                </div>\r\n                                <!-- Reviews End -->', 1, '1', '127.0.0.1', '127.0.0.1', '2021-10-13 01:56:42', '2021-10-13 01:56:42'),
(281, 1, 'HEQd9o1634125902', 'Description', '<p><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 13px;\"><u><b><span style=\"font-family: Verdana;\">Aspirin 75mg Gastro-Resistant Tablets</span></b></u></span><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 12px;\"><span style=\"font-family: Verdana;\"><br><br><b>Aspirin 75mg Gastro-Resistant Tablets</b>&nbsp;can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.</span></span><br></p>', 1, '1', '115.186.169.86', '115.186.169.86', '2021-10-13 10:51:42', '2021-10-13 10:51:42'),
(282, 1, 'PXbGsw1634125922', 'Directions', '<p><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 12px;\"><span style=\"font-family: Verdana;\">Do not take these tablets without discussing it with your doctor first.<br><br><b>Adults, the elderly and children over the age of 16 years</b>:</span></span></p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Take one or two tablets once daily.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Swallow the tablet(s) with a small glass of water&nbsp;and do not cut, chew or crush it.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Do not take any medications for indigestion either&nbsp;immediately before or after taking this medicine.</span></span></li></ul>', 1, '1', '115.186.169.86', '115.186.169.86', '2021-10-13 10:52:02', '2021-10-13 10:52:02'),
(283, 1, '2aSOYz1634125945', 'Integrents', '<ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Active Ingredient</span></span></b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">: Aspirin 75mg.</span></span></li><li><b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Other Ingredients</span></span></b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">: Dependent on brand.</span></span></li></ul>', 3, '1', '115.186.169.86', '115.186.169.86', '2021-10-13 10:52:25', '2021-10-13 10:52:25'),
(284, 1, 'zFoTrB1634125974', 'Cautions', '<ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Do not give this medicine to children under the age of 16 unless your doctor tells you.&nbsp;This is because there is a possible association between Aspirin and Reye\'s Syndrome when given&nbsp;to children. Reye\'s syndrome is a very rare disease, which can be fatal.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Before starting long term use of aspirin you must consult your doctor who will discuss&nbsp;the benefits and risks of this therapy with you.&nbsp;Inform your doctor about the medicines you are taking.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">If you are using&nbsp;aspirin regularly seek advice of your doctor before taking any other medicine (including other&nbsp;medicines that you have bought).</span></span></li></ul><p><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 12px;\"><span style=\"font-family: Verdana;\">Do not take Aspirin 75mg Gastro-Resistant Tablets if you:</span></span></p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Are allergic to Aspirin, NSAIDs which includes those when in attacks of asthma, angioedema,&nbsp;uticaria or rhinitis have been precipitated by aspirin or any other NSAID or any of the other&nbsp;ingredients.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Suffer from gout or had in the past.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Have a stomach ulcer or have had problems with ulcers in the past.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Suffer from haemophilia or any other bleeding condition.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Are taking blood thinning (anti-coagulant) medication.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Are in the last 3 months of pregnancy or are breastfeeding.</span></span></li></ul><p><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 12px;\"><span style=\"font-family: Verdana;\">Take special care and tell your doctor before taking Aspirin 75mg Gastro-Resistant Tablets if you:</span></span></p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Have liver or kidney disease.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Have asthma or have ever had it in the past.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Are suffering from dehydration (feeling constantly thirsty).</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Are intolerant to some sugars as these tablets contain lactose.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Have been told you are deficient in glucose-6-phosphate dehydrogenase.</span></span></li></ul><p><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 12px;\"><span style=\"font-family: Verdana;\">Tell your doctor or pharmacist before taking Aspirin 75mg Gastro-Resistant Tablets&nbsp;if you are already taking any of the following medicines,&nbsp;as their effectiveness may be influenced by aspirin if they are taken at the same time:</span></span></p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Metoclopramide (for sickness and digestive disorders).</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Blood thinning medicines such as Heparin, Warfarin or nicoumalone.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Corticosteroids e.g. hydrocortisone (which can be used for arthritis, asthma and inflammatory&nbsp;conditions).</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Anti-inflammatory medicines or steroids for pain and inflammation e.g. ibuprofen.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">High blood pressure medicines e.g diuretic/water tablets, Angio-ll receptor antagonists or ACE&nbsp;inhibitors.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Epilepsy medicines e.g. Phenytoin, Sodium valproate.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Methotrexate (for psoriasis, arthritis or tumours).</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Antacids for indigestion.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Probenecid or sulphinpyrazone for gout.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Anti depressants e.g. citalopram.</span></span></li></ul><p><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 12px;\"><span style=\"font-family: Verdana;\">Ask your doctor or pharmacist for advice before taking&nbsp;Dispersible Aspirin 75mg Tablets:</span></span></p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">If you are pregnant or breastfeeding.&nbsp;Aspirin should not be taken&nbsp;in the last three months of pregnancy. Do not take this medicine if you are breastfeeding.</span></span></li></ul>', 4, '1', '115.186.169.86', '115.186.169.86', '2021-10-13 10:52:54', '2021-10-13 10:52:54'),
(285, 3, 'Qs0Z6C1634126451', 'Description', '<p><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 13px;\"><u><b><span style=\"font-family: Verdana;\">Dispersible Aspirin 75mg Tablets</span></b></u></span><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 12px;\"><span style=\"font-family: Verdana;\"><br><br><b>Dispersible Aspirin 75mg Tablets</b>&nbsp;can be used to help prevent heart attacks and strokes in people who have previously suffered these conditions or who have under gone by-pass surgery.</span></span><br></p>', 1, '1', '115.186.169.86', '115.186.169.86', '2021-10-13 11:00:51', '2021-10-13 11:00:51'),
(286, 3, 'XnyQz31634126474', 'Directions', '<p><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 12px;\"><span style=\"font-family: Verdana;\">Do not take these tablets without discussing it with your doctor first.<br><br><b>Adults, the elderly and children over the age of 16 years</b>:</span></span></p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">The usual dosage is 1 to 2 tablets dissolved in water, once a day.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">In some people a higher dose of up to 4 tablets a day may be prescribed - do not take this many tablets unless told to by your doctor.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">When taking this medicine, it is important to remember the following:</span></span><ul><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">The tablets must be dissolved in a glass of water before taking.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Do not give to children aged under 16 years unless told to by your doctor.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Seek medical attention immediately if you accidentally take too many tablets.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">If you miss a dose, do not take a double dose to make up for the missed dose.</span></span></li></ul></li></ul>', 2, '1', '115.186.169.86', '115.186.169.86', '2021-10-13 11:01:14', '2021-10-13 11:01:14'),
(287, 2, 'kOmmmJ1634126493', 'Descriptions', 'New MAM self-sterilising bottles - 3 minutes in the microwave, no need for a steriliser.  \r\n<p>\r\nWith the Anti-Colic bottle babies feel relaxed and happy from day one. This is because they don\'t swallow any air while drinking. This makes the switch between Mum and MAM particularly easy.</p>', 1, '1', '88.108.61.109', '88.108.61.109', '2021-10-13 11:01:33', '2021-10-13 11:02:18'),
(288, 3, '9DRU0h1634126502', 'Ingredients', '<ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Active Ingredient</span></span></b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">: Aspirin 75mg.</span></span></li><li><b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Other Ingredients</span></span></b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">: Dependent on brand.</span></span></li></ul>', 3, '1', '115.186.169.86', '115.186.169.86', '2021-10-13 11:01:42', '2021-10-13 11:01:42'),
(289, 3, 'x3cDvP1634126539', 'Cautions', '<ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Do not give this medicine to children under the age of 16 unless your doctor tells you.&nbsp;This is because there is a possible association between Aspirin and Reye\'s Syndrome when given&nbsp;to children. Reye\'s syndrome is a very rare disease, which can be fatal.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Before starting long term use of aspirin you must consult your doctor who will discuss&nbsp;the benefits and risks of this therapy with you.&nbsp;Inform your doctor about the medicines you are taking.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">If you are using&nbsp;aspirin regularly seek advice of your doctor before taking any other medicine (including other&nbsp;medicines that you have bought).</span></span></li></ul><p><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 12px;\"><span style=\"font-family: Verdana;\">Do not take these Dispersible Aspirin 75mg Tablets if you:</span></span></p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Are allergic to Aspirin, NSAIDs which includes those when in attacks of asthma, angioedema,&nbsp;uticaria or rhinitis have been precipitated by aspirin or any other NSAID or any of the other&nbsp;ingredients.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Suffer from gout or had in the past.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Have a stomach ulcer or have had problems with ulcers in the past.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Suffer from haemophilia or any other bleeding condition.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Are taking blood thinning (anti-coagulant) medication.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Are in the last 3 months of pregnancy or are breastfeeding.</span></span></li></ul><p><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 12px;\"><span style=\"font-family: Verdana;\">Take special care and tell your doctor before taking Dispersible Aspirin 75mg Tablets if you:</span></span></p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Have liver or kidney disease.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Have asthma or have ever had it in the past.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Are suffering from dehydration (feeling constantly thirsty).</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Are intolerant to some sugars as these tablets contain lactose.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Have been told you are deficient in glucose-6-phosphate dehydrogenase.</span></span></li></ul><p><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 12px;\"><span style=\"font-family: Verdana;\">Tell your doctor or pharmacist before taking Dispersible Aspirin 75mg Tablets&nbsp;if you are already taking any of the following medicines,&nbsp;as their effectiveness may be influenced by aspirin if they are taken at the same time:</span></span></p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Metoclopramide (for sickness and digestive disorders).</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Blood thinning medicines such as Heparin, Warfarin or nicoumalone.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Corticosteroids e.g. hydrocortisone (which can be used for arthritis, asthma and inflammatory&nbsp;conditions).</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Anti-inflammatory medicines or steroids for pain and inflammation e.g. ibuprofen.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">High blood pressure medicines e.g diuretic/water tablets, Angio-ll receptor antagonists or ACE&nbsp;inhibitors.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Epilepsy medicines e.g. Phenytoin, Sodium valproate.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Methotrexate (for psoriasis, arthritis or tumours).</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Antacids for indigestion.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Probenecid or sulphinpyrazone for gout.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Anti depressants e.g. citalopram.</span></span></li></ul><p><span style=\"color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif; font-size: 12px;\"><span style=\"font-family: Verdana;\">Ask your doctor or pharmacist for advice before taking&nbsp;Dispersible Aspirin 75mg Tablets:</span></span></p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: varela_roundregular, Arial, Helvetica, sans-serif;\"><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">If you are pregnant or breastfeeding.&nbsp;Aspirin should not be taken&nbsp;in the last three months of pregnancy. Do not take this medicine if you are breastfeeding.</span></span></li></ul>', 4, '1', '115.186.169.86', '115.186.169.86', '2021-10-13 11:02:19', '2021-10-13 11:02:19'),
(290, 6, 'Ugf2ai1634128386', 'Descriptions', '<p>Calcichew Forte Chewable Tablets are orange flavoured chewable tablets for the treatment and prevention of calcium deficiency which may occur if your diet or lifestyle does not provide enough, or when body requirements are increased. They may be prescribed or recommended for certain bone conditions, for example osteoporosis, or during pregnancy and may also be given to patients receiving renal dialysis to remove the phosphate from the blood that cannot be removed by dialysis.</p>\r\n<p>Calcium is found in the diet and is an important substance in bone formation. Requirements for calcium increase with age and, although many people obtain enough calcium from their diet, some people may require a supplement in order that their body has all the calcium it needs to maintain healthy bones. People with diets and lifestyles that mean they will obtain less than the recommended intake of calcium are at risk of weakened bones. Prolonged lack of adequate calcium intake can lead to the development of osteoporosis, a condition where bones become weak to a level that minimal trauma (for example, a fall) can result in a fracture, most typically at the hip, spine or wrist.</p>', 1, '1', '88.108.61.109', '88.108.61.109', '2021-10-13 11:33:06', '2021-10-13 11:33:06'),
(291, 9, '2q2sO41634130435', 'Description', '<p>Phizz Hydration + Vitamins and Minerals Effervescent Tablets combine a World Health Organisation (WHO) inspired rehydration formula with a mix of essential vitamins and minerals to help unlock your body\'s energy, reduce tiredness &amp; fatigue, support mental performance, combat muscle fatigue, recharge your electrolytes &amp; maintain a healthy immune system. The mix of B vitamins, calcium, copper, glucose, magnesium, potassium, sodium, selenium, vitamin A, vitamin C, vitamin E and zinc is ideal for travelling, active lifestyles, after a big night out or during a hard day\'s work, for example:</p>', 1, '1', '88.108.61.109', '88.108.61.109', '2021-10-13 12:07:15', '2021-10-13 12:07:15'),
(292, 10, 'revMDi1637578792', 'Description', 'Benylin Children\'s Chesty Cough\r\n\r\nBenylin Children\'s Chesty Cough is a sugar free, strawberry flavoured cough medicine for children aged 6-12 years that contains guaifenesin to help thin and loosen mucus, providing effective relief from chesty coughs without causing drowsiness.', 1, '1', '127.0.0.1', '127.0.0.1', '2021-11-22 05:59:52', '2021-11-22 05:59:52'),
(293, 11, 'G5p01x1639030510', 'Description', '<span style=\"font-family: Verdana;\"><b>Colief Infant Drops</b> help to relieve colic in babies from birth onwards. The active ingredient is lactase, a naturally occurring enzyme that we all need to break down lactose, found in breast milk and most infant milk formulas, into the simple sugars glucose and galactose which can then be absorbed as part of the normal digestive process.<br><br>Lactase deficiency in newborn babies can lead to temporary digestive discomfort (bloatedness, wind and griping pain), which results from undigested lactose in food. This can be an important factor in some babies with colic.<br><br><b>Colief Infant Drops</b> compensate for a possible temporary lactase deficiency in the baby\'s digestive system, by breaking down most of the lactose before the baby is fed to make it more digestible. Studies have shown that the hours of crying may be greatly reduced when a baby\'s usual milk is treated with <b>Colief Infant Drops</b>.<br><br><b>Colief Infant Drops</b> are sugar free and are suitable for vegetarians.&nbsp;</span>', 1, '1', '127.0.0.1', '127.0.0.1', '2021-12-09 01:15:10', '2021-12-09 04:56:40'),
(294, 11, '35j8RZ1639030581', 'Directions', '<span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Always add the drops to your baby\'s milk - never give the drops to your baby directly. Colief works best in milk that is warm (room temperature).<br></span></span><ul><li><b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Breastfeeding</span></span></b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">: Express a few tablespoons of milk into a sterilised container. Add four drops of Colief. Feed to baby on a sterilised, plastic spoon. Breastfeed as normal.1</span></span></li><li><b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Infant Formula</span></span></b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">: Make up feed as normal, according to manufacturer\'s instructions. Add 4 drops of Colief to formula that is warm, but not hot. Shake the feed occasionally and feed the baby after half an hour, ensuring the feed is at the correct temperature. Discard any unused feed.</span></span></li><li><b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Ready to Feed Formula</span></span></b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">: Warm the feed. Add 4 drops of Colief. Shake the feed occasionally and feed the baby after half an hour, ensuring the feed is at the correct temperature. Discard any unused feed.</span></span></li><li><b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Making a Formula Feed in Advance</span></span></b><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">: Make up the feed according to manufacturer\'s instructions. Add 2 drops of Colief to formula that is warm, not hot. Store in the refrigerator for a minimum of 4 hours and use within 12 hours of make-up. Warm to feeding temperature when needed and feed as normal. Discard any unused formula.</span></span></li></ul>', 2, '1', '127.0.0.1', '127.0.0.1', '2021-12-09 01:16:21', '2021-12-09 03:59:15'),
(295, 11, 'TePmfr1639030667', 'Cautions', '<ul><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Never give the drops to your baby directly, only in its milk.</span></span></li><li><span style=\"font-size: 12px;\"><span style=\"font-family: Verdana;\">Once opened, refrigerate and discard three weeks after opening.1</span></span></li></ul>', 3, '1', '127.0.0.1', '127.0.0.1', '2021-12-09 01:17:47', '2021-12-09 04:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `kod_product_medias`
--

CREATE TABLE `kod_product_medias` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `media` text DEFAULT NULL,
  `media_no` varchar(50) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_product_medias`
--

INSERT INTO `kod_product_medias` (`id`, `hash_id`, `product_id`, `media`, `media_no`, `display_order`, `status`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(1, '8f5OZ21634126039', 1, 'media-1-1.jpg', NULL, 1, '1', '115.186.169.86', '115.186.169.86', '2021-10-13 10:53:59', '2021-10-13 10:53:59'),
(2, '9doKZE1634126349', 2, 'media-1-2.jpeg', NULL, 1, '1', '88.108.61.109', '88.108.61.109', '2021-10-13 10:59:09', '2021-10-13 10:59:09'),
(3, 'Y1Lyf61634126587', 3, 'media-1-3.jpg', NULL, 1, '1', '115.186.169.86', '115.186.169.86', '2021-10-13 11:03:07', '2021-10-13 11:03:07'),
(4, 'kPgLN81634126690', 4, 'media-1-4.jpeg', NULL, 1, '1', '88.108.61.109', '88.108.61.109', '2021-10-13 11:04:50', '2021-10-13 11:04:50'),
(5, 'Vg8dU51634126827', 5, 'media-1-5.jpeg', NULL, 1, '1', '88.108.61.109', '88.108.61.109', '2021-10-13 11:07:07', '2021-10-13 11:07:07'),
(6, 'p3UDhZ1634127941', 6, 'media-1-6.jpeg', NULL, 1, '1', '88.108.61.109', '88.108.61.109', '2021-10-13 11:25:41', '2021-10-13 11:25:41'),
(7, 'NRfXZO1634128521', 7, 'media-1-7.jpeg', NULL, 1, '1', '88.108.61.109', '88.108.61.109', '2021-10-13 11:35:21', '2021-10-13 11:35:21'),
(8, 'OOVNAI1634128633', 8, 'media-1-8.jpeg', NULL, 1, '1', '88.108.61.109', '88.108.61.109', '2021-10-13 11:37:13', '2021-10-13 11:37:13'),
(9, '2buFGc1634129069', 9, 'media-1-9.jpeg', NULL, 1, '1', '88.108.61.109', '88.108.61.109', '2021-10-13 11:44:29', '2021-10-13 11:44:29'),
(10, 'Mbm1UL1637578807', 10, 'media-1-10.jpg', NULL, 1, '1', '127.0.0.1', '127.0.0.1', '2021-11-22 06:00:07', '2021-11-22 06:00:07'),
(11, 'vnkQmy1639030724', 11, 'media-1-11.jpg', NULL, 1, '1', '127.0.0.1', '127.0.0.1', '2021-12-09 01:18:44', '2021-12-09 01:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `kod_product_meta_tags`
--

CREATE TABLE `kod_product_meta_tags` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_product_meta_tags`
--

INSERT INTO `kod_product_meta_tags` (`id`, `hash_id`, `product_id`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'lI6QlI1637578821', '10', 'Benylin Children\'s Chesty Coughs 125ml', 'Benylin Children\'s Chesty Coughs 125ml', 'Benylin Children\'s Chesty Coughs 125ml', '2021-11-22 06:00:21', '2021-11-22 06:00:21'),
(2, '6d5Y1W1639030783', '11', 'Colief Infant Drops 7ml | Baby Colic Remedies | Chemist.net online pharmacy', 'Colief Infant Drops 7ml', 'Colief Infant Drops help to relieve colic in babies from birth onwards', '2021-12-09 01:19:43', '2021-12-09 01:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `kod_product_reg_no`
--

CREATE TABLE `kod_product_reg_no` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `pip_code` varchar(255) DEFAULT NULL,
  `ean` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_product_reg_no`
--

INSERT INTO `kod_product_reg_no` (`id`, `hash_id`, `product_id`, `sku`, `pip_code`, `ean`, `created_at`, `updated_at`) VALUES
(1, 'JnajnK1634126002', '1', 'GASP75EC28', NULL, NULL, '2021-10-13 10:53:22', '2021-10-13 10:53:22'),
(2, 'UHQrfX1634126559', '3', 'OTCASP7528', '', '5012252103243', '2021-10-13 11:02:39', '2021-10-13 11:02:39'),
(3, 'NSN4JX1637578802', '10', 'CHN4066999', '4066999', '3574661412672', '2021-11-22 06:00:02', '2021-11-22 06:00:02'),
(4, '53FZin1639030709', '11', 'OTCCOLIEF', '2668721', '5017807003511', '2021-12-09 01:18:29', '2021-12-09 01:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `kod_product_reviews`
--

CREATE TABLE `kod_product_reviews` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `product_id` int(255) DEFAULT NULL,
  `type` enum('Website','Product') DEFAULT NULL,
  `rating` enum('1','2','3','4','5') DEFAULT NULL,
  `rating_text` text DEFAULT NULL,
  `status` enum('PENDING','APPROVED') DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT NULL,
  `updated_by_ip` varchar(50) DEFAULT NULL,
  `updated_by_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_product_reviews`
--

INSERT INTO `kod_product_reviews` (`id`, `hash_id`, `order_id`, `patient_id`, `product_id`, `type`, `rating`, `rating_text`, `status`, `created_by_ip`, `updated_by_ip`, `updated_by_user_id`, `created_at`, `updated_at`) VALUES
(32, 'ZyFzN7Pkyd', 115, 30, 10, 'Product', '3', 'Good Product', 'APPROVED', '127.0.0.1', NULL, NULL, '2021-12-08 13:00:27', '2021-12-08 08:01:00'),
(33, '6wq6uEWO2k', 118, 32, 11, 'Product', '4', 'i am satifseid this product', 'APPROVED', '127.0.0.1', NULL, NULL, '2021-12-09 07:03:48', '2021-12-09 02:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `kod_pro_categories`
--

CREATE TABLE `kod_pro_categories` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category_position` varchar(255) DEFAULT 'all',
  `seo_url_slug` varchar(500) DEFAULT NULL,
  `image_1` text DEFAULT NULL,
  `image_2` text DEFAULT NULL,
  `embed_video` text DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `advance_settings` enum('1','0') DEFAULT '0',
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_keywords` varchar(500) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_pro_categories`
--

INSERT INTO `kod_pro_categories` (`id`, `hash_id`, `parent_id`, `title`, `sub_heading`, `description`, `category_position`, `seo_url_slug`, `image_1`, `image_2`, `embed_video`, `display_order`, `status`, `advance_settings`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'JheVJX1634124062', 0, 'Medicines', '', '', 'page', 'medicines', 'image-1-1.jpg', NULL, '', 1, '1', NULL, '', '', '', '2021-10-13 10:21:02', '2021-10-13 13:32:43'),
(2, 'MqvmSW1634124083', 0, 'Vitamins', '', '', 'all', 'vitamins', NULL, NULL, '', 2, '1', NULL, '', '', '', '2021-10-13 10:21:23', '2021-10-13 10:23:30'),
(3, 'gTW2kz1634124098', 0, 'Food & Drink', '', '', 'all', 'food-drink', NULL, NULL, '', 3, '0', NULL, '', '', '', '2021-10-13 10:21:38', '2021-10-13 10:25:40'),
(4, 'vzgS3z1634124108', 0, 'Baby', '', '', 'page', 'baby', 'image-1-4.jpg', NULL, '', 1, '1', NULL, '', '', '', '2021-10-13 10:21:48', '2021-10-13 13:02:49'),
(5, 'YfZ1dO1634124131', 0, 'Beauty', '', '', 'page', 'beauty', 'image-1-5.jpg', NULL, '', 2, '1', NULL, '', '', '', '2021-10-13 10:22:11', '2021-10-13 13:03:00'),
(6, 'HEtGFT1634124170', 0, 'Fragrances', '', '', 'banner', 'fragrances', 'image-1-6.jpg', NULL, '', 2, '1', NULL, '', '', '', '2021-10-13 10:22:50', '2021-10-13 14:49:31'),
(7, 'w5GbDp1634124232', 0, 'Pets', '', '', 'all', 'pets', NULL, NULL, '', 7, '0', NULL, '', '', '', '2021-10-13 10:23:52', '2021-10-13 13:18:36'),
(8, 'mCnOQL1634124256', 0, 'Mobility', '', '', 'all', 'mobility', NULL, NULL, '', 8, '1', NULL, '', '', '', '2021-10-13 10:24:16', '2021-10-13 10:24:16'),
(9, 'TuMLHS1634124274', 0, 'Sexual', '', '', 'all', 'sexual', NULL, NULL, '', 9, '0', NULL, '', '', '', '2021-10-13 10:24:34', '2021-10-13 14:55:31'),
(10, 'NlPgOp1634124289', 0, 'Gifts', '', '', 'page', 'gifts', 'image-1-10.jpg', NULL, '', 10, '1', NULL, '', '', '', '2021-10-13 10:24:49', '2021-10-13 13:33:35'),
(11, 'GNLaKI1634124309', 0, 'PPE', '', '', 'page', 'ppe', 'image-1-11.jpg', NULL, '', 11, '1', NULL, '', '', '', '2021-10-13 10:25:09', '2021-10-13 13:34:59'),
(12, 'Rv57mn1634124396', 1, 'Angina and Heart Health', '', '', 'all', 'angina-and-heart-health', NULL, NULL, '', 1, '1', NULL, '', '', '', '2021-10-13 10:26:36', '2021-10-13 10:26:36'),
(13, 'hO4gmk1634124426', 1, 'Baby & Infant Medicines', '', '', 'all', 'baby-infant-medicines', NULL, NULL, '', 2, '1', NULL, '', '', '', '2021-10-13 10:27:06', '2021-10-13 10:27:29'),
(14, 'bBnxRO1634124474', 1, 'Children\'s Healthcare', '', '', 'all', 'childrens-healthcare', NULL, NULL, '', 3, '1', NULL, '', '', '', '2021-10-13 10:27:54', '2021-10-13 10:27:54'),
(15, 'c10SPR1634124526', 2, 'Active Lifestyle Vitamins', '', '', 'all', 'active-lifestyle-vitamins', NULL, NULL, '', 1, '1', NULL, '', '', '', '2021-10-13 10:28:46', '2021-10-13 10:28:46'),
(16, 'FPe1Dx1634124569', 2, 'Bone Health', '', '', 'all', 'bone-health', NULL, NULL, '', 2, '1', NULL, '', '', '', '2021-10-13 10:29:29', '2021-10-13 10:29:29'),
(17, '1c0TJ11634124611', 2, 'CBD Oil Supplements', '', '', 'all', 'cbd-oil-supplements', NULL, NULL, '', 3, '1', NULL, '', '', '', '2021-10-13 10:30:11', '2021-10-13 10:30:11'),
(18, 'RAw3FG1634124652', 4, 'Baby Bottles & Teats', '', '', 'all', 'baby-bottles-teats', NULL, NULL, '', 1, '1', NULL, '', '', '', '2021-10-13 10:30:52', '2021-10-13 10:30:52'),
(19, 'Z3T0up1634124675', 4, 'Baby Colic Remedies', '', '', 'all', 'baby-colic-remedies', NULL, NULL, '', 2, '1', NULL, '', '', '', '2021-10-13 10:31:15', '2021-10-13 10:31:15'),
(20, '8Tn67W1634124718', 4, 'Baby Food', '', '', 'all', 'baby-food', 'image-1-20.jpg', NULL, '', 3, '1', NULL, '', '', '', '2021-10-13 10:31:58', '2021-10-13 13:15:28'),
(21, 'Fs5kCc1634124751', 5, 'Children\'s Toiletries', '', '', 'all', 'childrens-toiletries', NULL, NULL, '', 1, '1', NULL, '', '', '', '2021-10-13 10:32:31', '2021-10-13 10:32:31'),
(22, 'Ygcb1P1634124772', 11, 'Cleaning Products', '', '', 'banner', 'cleaning-products', 'image-1-22.jpg', NULL, '', 3, '1', NULL, '', '', '', '2021-10-13 10:32:52', '2021-10-13 14:55:02'),
(23, 'BfVdIT1634124811', 5, 'Cosmetics', '', '', 'all', 'cosmetics', NULL, NULL, '', 3, '1', NULL, '', '', '', '2021-10-13 10:33:31', '2021-10-13 10:33:31'),
(24, 'phWZts1634124842', 6, 'Fragrances for Men', '', '', 'all', 'fragrances-for-men', NULL, NULL, '', 1, '1', NULL, '', '', '', '2021-10-13 10:34:02', '2021-10-13 10:34:02'),
(25, '84GGh11634124860', 6, 'Fragrances for Women', '', '', 'all', 'fragrances-for-women', NULL, NULL, '', 2, '1', NULL, '', '', '', '2021-10-13 10:34:20', '2021-10-13 10:34:20'),
(26, 'ygguAu1634124896', 7, 'Cat Supplies', '', '', 'all', 'cat-supplies', NULL, NULL, '', 1, '1', NULL, '', '', '', '2021-10-13 10:34:56', '2021-10-13 10:36:23'),
(27, 'r560nI1634124929', 7, 'Dog Supplies', '', '', 'all', 'dog-supplies', NULL, NULL, '', 2, '1', NULL, '', '', '', '2021-10-13 10:35:29', '2021-10-13 10:35:29'),
(28, 'J0ahJt1634124953', 7, 'Horse Supplies', '', '', 'all', 'horse-supplies', NULL, NULL, '', 2, '1', NULL, '', '', '', '2021-10-13 10:35:53', '2021-10-13 10:35:53'),
(29, '3sKfZU1634125024', 8, 'Bedroom Aids', '', '', 'all', 'bedroom-aids', NULL, NULL, '', 1, '1', NULL, '', '', '', '2021-10-13 10:37:04', '2021-10-13 10:37:04'),
(30, '2yomO21634125043', 8, 'Compression Hosiery', '', '', 'all', 'compression-hosiery', NULL, NULL, '', 2, '1', NULL, '', '', '', '2021-10-13 10:37:23', '2021-10-13 10:37:23'),
(31, 'Y8qQ4Z1634125069', 8, 'Incontinence', '', '', 'all', 'incontinence', NULL, NULL, '', 3, '1', NULL, '', '', '', '2021-10-13 10:37:49', '2021-10-13 10:37:49'),
(32, 'HrYtzb1634125127', 9, 'Condoms', '', '', 'all', 'condoms', NULL, NULL, '', 1, '0', NULL, '', '', '', '2021-10-13 10:38:47', '2021-10-13 14:55:37'),
(33, 'srirOO1634134013', 1, 'Coughs, Cold and Flu', '', 'Coughs, Cold and Flu', 'banner', 'coughs-cold-and-flu', 'image-1-srirOO1634134013.jpg', NULL, '', 1, '1', NULL, '', '', '', '2021-10-13 13:06:53', '2021-10-13 13:06:53'),
(34, 'OWJoMK1637578641', 14, 'Children\'s Cough, Cold & Flu Remedies', 'Children\'s Cough, Cold & Flu Remedies', '', 'all', 'childrens-cough-cold-flu-remedies', NULL, NULL, '', 1, '1', NULL, '', '', '', '2021-11-22 05:57:21', '2021-11-22 05:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `kod_raf_list`
--

CREATE TABLE `kod_raf_list` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `raf_title` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `is_active` enum('1','0') DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains Pharamcies Cleaning Areas' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kod_raf_list`
--

INSERT INTO `kod_raf_list` (`id`, `hash_id`, `raf_title`, `file_name`, `is_active`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'taxjetfvogr', 'Sample Raf', 'sample_raf.php', '1', '0', 'Test ', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(2, 'sjrjtqzzzxp', 'Weight Loss', 'weight_loss', '1', '1', 'Weight Loss', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(3, 'jxnumzougvl', 'Erectile Dysfunction', 'erectile_dysfunction', '1', '1', 'Erectile Dysfunction', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(4, 'shhnscfxwqm', 'Hair Loss', 'hair_loss', '1', '1', 'Hair Loss', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(5, 'pmokinnapwn', 'Asthma', 'asthma', '1', '1', 'Asthma', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(6, 'zkbazvgtbyq', 'Acne', 'acne', '1', '1', 'Acne', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(7, 'iqiqeammwwv', 'Hayfever', 'hayfever', '1', '1', 'Hayfever', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(8, 'lvvruasnkkw', 'Period Delay', 'period_delay', '1', '1', 'Period Delay', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(9, 'eekolrysskx', 'Migraine', 'migraine', '1', '1', 'Migraine', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(10, 'iytylkrfzip', 'Acid Reflux', 'acid_reflux', '1', '1', 'Acid Reflux', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(11, 'zdtjqywpgmq', 'Jet Lag', 'jet_lag.php', '1', '1', 'Jet Lag', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(12, 'sqbjqblzovo', 'Malaria', 'malaria', '1', '1', 'Malaria', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(13, 'fkinqowsaxm', 'Smoking Cessation', 'stop_smoking', '1', '1', 'Smoking Cessation', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(14, 'tetepoxwoee', 'Pain', 'pain.php', '1', '1', 'Pain', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(15, 'lpstpubbazu', 'Thrush', 'thrush.php', '1', '1', 'Thrush', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(16, 'zpajriougzc', 'Female Facial Hair', 'female_facial_hair.php', '1', '1', 'Female Facial Hair', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(17, 'provjmemvuj', 'Contraceptive Pill', 'contraceptive_pill.php', '1', '1', 'Contraceptive Pill', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(18, 'lftawhuekpu', 'Eczema', 'eczema.php', '1', '1', 'Eczema', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(19, 'bztuqwievrw', 'Genetil Herpes', 'genetil_herpes', '1', '1', 'Genetil Herpes', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(20, 'htawgstqzyu', 'Travellers Diarrhoea', 'travellers_diarrhoea.php', '1', '1', 'Travellers Diarrhoea', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(21, 'difbskvxbnk', 'Travel Sickness', 'travel_sickness.php', '1', '1', 'Travel Sickness', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(22, 'kynuightxfk', 'Morning After Pills', 'morning_after_pills.php', '1', '1', 'Morning After Pills', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(23, 'hhqhntfugyx', 'Anxiety', 'anxiety.php', '1', '1', 'Anxiety', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(24, 'rqdwvndbauy', 'Premature Ejaculation', 'premature_ejaculation', '1', '1', 'Premature Ejaculation', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(25, 'ivddjipyaew', 'Urine Infection', 'urine_infection.php', '1', '1', 'Urine Infection', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(26, 'wrtskuupnya', 'Testosterone', 'testosterone.php', '1', '1', 'Testosterone', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(27, 'hkeqspviexx', 'Cystitis', 'cystitis.php', '1', '1', 'Cystitis', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(28, 'xugvjkzqean', 'IBS', 'ibs.php', '1', '1', 'IBS', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(29, 'qpdwxxtchdu', 'Chlamadia treatment', 'chlamadia_treatment.php', '1', '1', 'Chlamadia treatment', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(30, 'mdfrqfcwbqz', 'Menopause', 'menopause.php', '1', '1', 'Menopause', '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(31, 'afyajtpstpu', 'Genital warts', 'genital_warts', '1', '1', NULL, '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(32, 'fsvarfcuscl', 'Cold Sores', 'cold_sore', '1', '1', NULL, '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(33, 'wcuraaazzxq', 'Flu', 'flu', '1', '1', NULL, '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(34, 'ligfjfziqey', 'Nail Infection', 'nail_infection.php', '1', '1', NULL, '2021-06-10 11:29:52', '2021-06-10 11:29:52'),
(35, 'fhtxfjescij', 'Saxanda', 'saxanda', '1', '1', NULL, '2021-06-10 11:29:52', '2021-06-10 11:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `kod_services`
--

CREATE TABLE `kod_services` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `price` double(10,2) DEFAULT 0.00,
  `thumbnail` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `service_position_id` int(20) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `fa_icon` varchar(255) DEFAULT NULL,
  `service_url` text DEFAULT NULL,
  `service_category_id` int(20) DEFAULT NULL,
  `bookable` enum('1','0') DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_services`
--

INSERT INTO `kod_services` (`id`, `hash_id`, `title`, `short_description`, `long_description`, `price`, `thumbnail`, `image`, `service_position_id`, `display_order`, `status`, `slug`, `meta_title`, `meta_keywords`, `meta_description`, `fa_icon`, `service_url`, `service_category_id`, `bookable`, `created_at`, `updated_at`) VALUES
(1, 'biEF3V1630996339', 'Rapid Antigen test 1', '<ul class=\"packageslist\">\r\n  <li>Testing Take it on your trip and use it for return to the UK</li><li>Use it as fit to fly* or for entry to events and venues</li>\r\n  <li>Simply register the kit online and upload results</li>\r\n  <li>Doctor-signed certificate included</li>\r\n  <li>Free next-day delivery or instant local collection</li>\r\n  <li>Avoid the stress of looking for a test in another country</li>\r\n</ul>', '<ul class=\"packageslist\">\r\n  <li>Testing Take it on your trip and use it for return to the UK</li><li>Use it as fit to fly* or for entry to events and venues</li>\r\n  <li>Simply register the kit online and upload results</li>\r\n  <li>Doctor-signed certificate included</li>\r\n  <li>Free next-day delivery or instant local collection</li>\r\n  <li>Avoid the stress of looking for a test in another country</li>\r\n</ul>', 10.00, 'rapid-antigen-test-1-1.jpg', 'rapid-antigen-test-1-1.jpg', 2, 1, 1, 'rapid-antigen-test-1', 'Meta Title 1', 'Meta Keywords 1', 'Meta Description 1', 'https://predeparture.co.uk/home1', 'https://predeparture.co.uk/home1', 2, '1', '2021-09-07 06:32:19', '2021-09-07 06:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `kod_service_category`
--

CREATE TABLE `kod_service_category` (
  `id` int(20) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `display_order` int(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_service_category`
--

INSERT INTO `kod_service_category` (`id`, `hash_id`, `title`, `display_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ZExTdC1630996006', 'NHS Pharmacy Services', 1, 1, '2021-09-07 05:26:46', '2021-09-07 05:27:40'),
(2, 'bzjNlM1630996017', 'Private Pharmacy Services', 2, 1, '2021-09-07 05:26:57', '2021-09-07 05:27:08');

-- --------------------------------------------------------

--
-- Table structure for table `kod_service_position`
--

CREATE TABLE `kod_service_position` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `display_order` int(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_service_position`
--

INSERT INTO `kod_service_position` (`id`, `hash_id`, `title`, `display_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MNktGS1630995960', 'All', 1, 1, '2021-09-07 05:26:00', '2021-09-07 05:28:27'),
(2, '988CJZ1630995976', 'Under Banner Services', 2, 1, '2021-09-07 05:26:16', '2021-09-07 05:26:16'),
(3, 'r8uBQQ1630995986', 'Page Services', 3, 1, '2021-09-07 05:26:26', '2021-09-07 05:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `kod_static_pages`
--

CREATE TABLE `kod_static_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT '',
  `updated_at` datetime DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='FAQ ' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kod_static_pages`
--

INSERT INTO `kod_static_pages` (`id`, `title`, `url`, `display_order`, `status`, `created_at`, `created_by_ip`, `updated_at`, `modified_by_ip`) VALUES
(1, 'Home', 'home', 1, '1', '2021-02-24 12:57:21', '::1', NULL, ''),
(2, 'Blog', 'blog', 2, '1', '2021-02-24 12:57:21', '::1', NULL, ''),
(3, 'Contact Us', 'contact-us', 3, '1', '2021-02-24 12:57:21', '::1', NULL, ''),
(4, 'Services', 'services', 4, '1', '2021-02-24 12:57:21', '::1', NULL, ''),
(5, 'Downloads', 'downloads', 5, '1', '2021-02-24 12:57:21', '::1', NULL, ''),
(6, 'New Module', 'new-module', 5, '1', '2021-02-24 12:57:21', '::1', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `kod_users`
--

CREATE TABLE `kod_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hash_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `professional_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `mob_no` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tele_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_logged_in` datetime DEFAULT NULL,
  `last_logged_in` datetime DEFAULT NULL,
  `login_attempts` int(11) DEFAULT NULL,
  `created_by_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kod_users`
--

INSERT INTO `kod_users` (`id`, `hash_id`, `user_type_id`, `first_name`, `last_name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `contact_no`, `phone_no`, `reg_no`, `professional_title`, `address_1`, `address_2`, `address_3`, `city`, `country`, `postcode`, `fax_no`, `signature`, `profile_image`, `status`, `mob_no`, `qualification`, `tele_no`, `county`, `biography`, `first_logged_in`, `last_logged_in`, `login_attempts`, `created_by_ip`, `modified_by_ip`, `created_at`, `updated_at`) VALUES
(1, 'ewd234', 3, 'jenaa test1', 'khantest1', 'admin@gmail.com', 1, NULL, '$2y$10$z50HIKlbLj.CLy71xavKk.e72qLIqsekFSONCTsCUAQi.y13gkz9y', NULL, '234234234234test12', '034698577411', '123456test1', '', '195 North west, london, NW10 3GB1test1', 'asdeasdasd1987', 'asdasdasd1pol', '12test1', NULL, '123456test1', 'asd1test1', 'jenaa-ewd234.jpg', 'jenaa-ewd234.jpg', '1', '89234234234test1654', '1Doctor of Ptest1', '234234234234test123', 'asdasdasd1test1', '1simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries nchanged.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n\r\npleasure rationally encounter but because pursue consequences that are extremely painful.occur in which toil and pain can procure him some great pleasure', '2021-12-23 13:18:40', '2021-12-23 13:18:40', NULL, '127.0.0.1', '127.0.0.1', '2021-06-02 11:17:34', '2021-12-23 08:18:40'),
(59, 'd5K2jx1637845810', 3, 'wajid', 'iqbal', 'shakeel@gmail.com', 1, NULL, '$2y$10$Fh3JM0jz1mlheq1nN0j4F.De.cNAJMSJmWrwxxoZ0cQxpo7dXspOa', NULL, NULL, '+18369999409', '123456', 'MBChB1', '517 Oak Lane', '', '', 'Exercitation mollit', NULL, 'Quaerat et quisquam', '', 'wajid-59.jpg', 'wajid-59.jfif', '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2021-11-25 08:10:10', '2021-11-25 08:22:24'),
(60, '60OCgM1637846018', 1, 'amjid', 'khan', 'amjidkhan@gmail.com', 3, NULL, '$2y$10$kRRGhM3eMhbkrP6Dm73byusnA.ziyejanJJvhIGE7dT5iRr0VbecS', NULL, NULL, '+18369999409', '', '', '73 North Milton Court', 'Atque aute animi cu', 'Voluptatem sed excep', 'Est mollitia et et e', NULL, 'In delectus laudant', '', NULL, NULL, '1', NULL, NULL, NULL, 'Ut qui facere omnis', NULL, '2022-05-11 12:35:04', '2022-05-11 12:35:04', NULL, '127.0.0.1', NULL, '2021-11-25 08:13:38', '2022-05-11 07:35:04'),
(61, 'Od3TVR1637846306', 1, 'shakee', 'kahn', 's454hakeel@gmail.com', 4, NULL, '$2y$10$hJSbv43wLjlGC6mfEHT5vOu5crtfYxxhAa.bHJuQnaAkoVrRr38kO', NULL, NULL, '+18369999409', '123456', 'hjhjhjhj', '517 Oak Lane', '', '', 'Exercitation mollit', NULL, 'Quaerat et quisquam', '', NULL, NULL, '1', NULL, NULL, NULL, '', NULL, '2021-11-25 13:50:41', '2021-11-25 13:50:41', NULL, '127.0.0.1', NULL, '2021-11-25 08:18:26', '2021-11-25 08:50:41'),
(62, 'ced13N1637926928', 6, 'Test', 'khan', 'admin@admin.com', 1, NULL, '$2y$10$MJ6HcKd94AvjA/DJbfgX0OOu0nO36ZY8apzM3tWFTIRpkxvFMOJiq', NULL, NULL, '+18369999409', '123456', 'MBChB1', NULL, NULL, NULL, NULL, NULL, NULL, '5565656565', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '2021-12-16 11:48:10', '2021-12-16 11:48:10', NULL, '127.0.0.1', '127.0.0.1', '2021-11-26 06:42:08', '2021-12-16 06:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `kod_user_attempts`
--

CREATE TABLE `kod_user_attempts` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kod_user_roles`
--

CREATE TABLE `kod_user_roles` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `display_order` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_user_roles`
--

INSERT INTO `kod_user_roles` (`id`, `hash_id`, `role`, `status`, `display_order`, `created_at`, `updated_at`) VALUES
(1, '2laaf91630671673', 'Admin', 1, '1', '2021-09-03 11:21:13', '2021-09-03 11:21:13'),
(3, 'UkUw071630671687', 'Dispenser', 1, '3', '2021-09-03 11:21:27', '2021-09-03 11:21:27'),
(4, 'vIoC6x1633948049', 'Manager', 1, '4', '2021-10-11 05:27:29', '2021-10-11 05:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `kod_user_types`
--

CREATE TABLE `kod_user_types` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `is_prescriber` enum('1','0') DEFAULT NULL,
  `description` text DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `created_by_ip` varchar(50) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_ip` varchar(50) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kod_user_types`
--

INSERT INTO `kod_user_types` (`id`, `hash_id`, `title`, `code`, `is_prescriber`, `description`, `display_order`, `status`, `created_by_ip`, `created_by_id`, `modified_by_ip`, `modified_by_id`, `created_at`, `updated_at`) VALUES
(1, 'dqd', 'Doctor', 'das', '1', 'asdas', NULL, '1', NULL, NULL, NULL, NULL, '2021-06-03 10:33:53', '2021-06-03 10:33:53'),
(3, 'adswewq3242', 'Nurse', 'das', '1', 'asdas', 1, '1', NULL, NULL, NULL, NULL, '2021-06-03 10:33:53', '2021-10-11 05:28:58'),
(5, 'adswe32112', 'Pharmacist', 'das', '1', 'asdas', 1, '1', NULL, NULL, NULL, NULL, '2021-06-03 10:33:53', '2021-10-11 05:29:02'),
(6, 'we342rfrfds', 'Dispenser', 'das', '1', 'asdas', NULL, '1', NULL, NULL, NULL, NULL, '2021-06-03 10:33:53', '2021-06-03 10:33:53'),
(7, '1OjkYZ1633948179', 'Counter Assistant', NULL, NULL, NULL, 5, '1', NULL, NULL, NULL, NULL, '2021-10-11 05:29:39', '2021-10-11 05:29:39'),
(8, 'szmLVI1633948198', 'Pre-reg', NULL, NULL, NULL, 6, '1', NULL, NULL, NULL, NULL, '2021-10-11 05:29:58', '2021-10-11 05:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `medical_assessment_form`
--

CREATE TABLE `medical_assessment_form` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `age` varchar(255) DEFAULT NULL,
  `symptoms` varchar(255) DEFAULT NULL,
  `conditions` varchar(255) DEFAULT NULL,
  `medicine` varchar(255) DEFAULT NULL,
  `pregnant_status` tinyint(2) DEFAULT 0,
  `condition_status` tinyint(2) DEFAULT 0,
  `medicine_status` tinyint(2) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_assessment_form`
--

INSERT INTO `medical_assessment_form` (`id`, `order_id`, `product_id`, `age`, `symptoms`, `conditions`, `medicine`, `pregnant_status`, `condition_status`, `medicine_status`, `created_at`, `updated_at`) VALUES
(1, 14, 6, '1', 'sadfsa', 'sdf', NULL, 0, 1, 0, '2021-10-27 07:37:36', '2021-10-27 07:37:36'),
(2, 16, 8, '1', 'sdfas', 'asdfs', NULL, 0, 1, 0, '2021-10-27 07:55:09', '2021-10-27 07:55:09'),
(3, 23, 6, '1', 'What are your symptoms?', NULL, NULL, 0, 0, 0, '2021-11-23 10:02:45', '2021-11-23 10:02:45'),
(4, 25, 6, '1', 'ffff', NULL, NULL, 0, 0, 0, '2021-11-23 12:12:19', '2021-11-23 12:12:19'),
(5, 29, 6, '1', 'testing', 'testing', 'jjjj', 0, 1, 1, '2021-11-23 12:15:13', '2021-11-23 12:15:13'),
(6, 30, 6, '1', 'testing', 'testing', 'jjjj', 0, 1, 1, '2021-11-23 12:15:54', '2021-11-23 12:15:54'),
(7, 31, 6, '1', 'testing', 'testing', 'jjjj', 0, 1, 1, '2021-11-23 12:16:30', '2021-11-23 12:16:30'),
(8, 32, 6, '1', 'testing', 'testing', 'jjjj', 0, 1, 1, '2021-11-23 12:16:49', '2021-11-23 12:16:49'),
(9, 33, 6, '1', 'testing', 'testing', 'jjjj', 0, 1, 1, '2021-11-23 12:17:38', '2021-11-23 12:17:38'),
(10, 34, 6, '1', 'What are your symptoms?', 'Insert conditions', 'Insert medicines', 0, 1, 1, '2021-11-23 12:19:39', '2021-11-23 12:19:39'),
(11, 35, 6, '1', 'hjhjhjhj', 'hjhjjh', 'hjjhjh', 0, 1, 1, '2021-11-23 13:53:09', '2021-11-23 13:53:09'),
(12, 36, 6, '1', 'sdgf sdfg', 'jkjk', 'jkhh', 0, 1, 1, '2021-11-23 13:54:28', '2021-11-23 13:54:28'),
(13, 37, 6, '1', 'What are your symptoms?', NULL, 'Do you currently take any medication?', 0, 0, 1, '2021-11-24 06:27:20', '2021-11-24 06:27:20');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_pharmacy_transfers`
--

CREATE TABLE `order_pharmacy_transfers` (
  `id` int(255) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `to_pharmacy_id` varchar(255) DEFAULT NULL,
  `from_pharmacy_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('de04aaecc4-e2e3f6@inbox.mailtrap.io', 'NJaEbBS3c3ZFaiPMtBSDrcfDaMjiOw5onG2OMwsbL2P0IymP5cGAm08Ff6M46kXy', '2021-07-01 01:34:41'),
('wijamoja@getairmail.com', 'mvfrRRrL5qhrBUBQUofHrpc57UavES52JVEuCjNtzrwOziBn7I51MlohGVaOCnuH', '2021-10-05 17:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `data` mediumint(9) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_allowe_reviews`
--
ALTER TABLE `kod_allowe_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_banners`
--
ALTER TABLE `kod_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_brands`
--
ALTER TABLE `kod_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_category_positions`
--
ALTER TABLE `kod_category_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_countries`
--
ALTER TABLE `kod_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_coupons`
--
ALTER TABLE `kod_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_delivery_methods`
--
ALTER TABLE `kod_delivery_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_delivery_method_types`
--
ALTER TABLE `kod_delivery_method_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_email_templates`
--
ALTER TABLE `kod_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_faqs`
--
ALTER TABLE `kod_faqs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kod_faq_categories`
--
ALTER TABLE `kod_faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_filled_raf`
--
ALTER TABLE `kod_filled_raf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_global_settings`
--
ALTER TABLE `kod_global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_holidays`
--
ALTER TABLE `kod_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_maf`
--
ALTER TABLE `kod_maf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_medicine_medias`
--
ALTER TABLE `kod_medicine_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_med_categories`
--
ALTER TABLE `kod_med_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_med_dosage`
--
ALTER TABLE `kod_med_dosage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_med_long_description`
--
ALTER TABLE `kod_med_long_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_med_medicines`
--
ALTER TABLE `kod_med_medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_med_meta_tags`
--
ALTER TABLE `kod_med_meta_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_med_pricing`
--
ALTER TABLE `kod_med_pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_med_quantity`
--
ALTER TABLE `kod_med_quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_med_sections`
--
ALTER TABLE `kod_med_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_med_stock`
--
ALTER TABLE `kod_med_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_med_strengths`
--
ALTER TABLE `kod_med_strengths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_menus`
--
ALTER TABLE `kod_menus`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kod_menu_links`
--
ALTER TABLE `kod_menu_links`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_mc_pharmacy_menus_mc_menu_positions` (`menu_id`) USING BTREE;

--
-- Indexes for table `kod_menu_positions`
--
ALTER TABLE `kod_menu_positions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kod_notes`
--
ALTER TABLE `kod_notes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kod_offers`
--
ALTER TABLE `kod_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_op_orders`
--
ALTER TABLE `kod_op_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_op_order_details`
--
ALTER TABLE `kod_op_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_pages`
--
ALTER TABLE `kod_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_page_sections`
--
ALTER TABLE `kod_page_sections`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kod_patients`
--
ALTER TABLE `kod_patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_patients_addresses`
--
ALTER TABLE `kod_patients_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_patients_orders_addresses`
--
ALTER TABLE `kod_patients_orders_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_pharmacy_branches`
--
ALTER TABLE `kod_pharmacy_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_pharmacy_opening_hours`
--
ALTER TABLE `kod_pharmacy_opening_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_pharmacy_profile`
--
ALTER TABLE `kod_pharmacy_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_pharmacy_settings`
--
ALTER TABLE `kod_pharmacy_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_products`
--
ALTER TABLE `kod_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_product_long_description`
--
ALTER TABLE `kod_product_long_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_product_medias`
--
ALTER TABLE `kod_product_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_product_meta_tags`
--
ALTER TABLE `kod_product_meta_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_product_reg_no`
--
ALTER TABLE `kod_product_reg_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_product_reviews`
--
ALTER TABLE `kod_product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_pro_categories`
--
ALTER TABLE `kod_pro_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_raf_list`
--
ALTER TABLE `kod_raf_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_services`
--
ALTER TABLE `kod_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_service_category`
--
ALTER TABLE `kod_service_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_service_position`
--
ALTER TABLE `kod_service_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_static_pages`
--
ALTER TABLE `kod_static_pages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kod_users`
--
ALTER TABLE `kod_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `kod_user_attempts`
--
ALTER TABLE `kod_user_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kod_user_roles`
--
ALTER TABLE `kod_user_roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kod_user_types`
--
ALTER TABLE `kod_user_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_assessment_form`
--
ALTER TABLE `medical_assessment_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_pharmacy_transfers`
--
ALTER TABLE `order_pharmacy_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kod_allowe_reviews`
--
ALTER TABLE `kod_allowe_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kod_banners`
--
ALTER TABLE `kod_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `kod_brands`
--
ALTER TABLE `kod_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kod_category_positions`
--
ALTER TABLE `kod_category_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kod_countries`
--
ALTER TABLE `kod_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `kod_coupons`
--
ALTER TABLE `kod_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `kod_delivery_methods`
--
ALTER TABLE `kod_delivery_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `kod_delivery_method_types`
--
ALTER TABLE `kod_delivery_method_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kod_email_templates`
--
ALTER TABLE `kod_email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kod_faqs`
--
ALTER TABLE `kod_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `kod_faq_categories`
--
ALTER TABLE `kod_faq_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kod_filled_raf`
--
ALTER TABLE `kod_filled_raf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=978;

--
-- AUTO_INCREMENT for table `kod_global_settings`
--
ALTER TABLE `kod_global_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `kod_holidays`
--
ALTER TABLE `kod_holidays`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kod_maf`
--
ALTER TABLE `kod_maf`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kod_medicine_medias`
--
ALTER TABLE `kod_medicine_medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `kod_med_categories`
--
ALTER TABLE `kod_med_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kod_med_dosage`
--
ALTER TABLE `kod_med_dosage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kod_med_long_description`
--
ALTER TABLE `kod_med_long_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `kod_med_medicines`
--
ALTER TABLE `kod_med_medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `kod_med_meta_tags`
--
ALTER TABLE `kod_med_meta_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `kod_med_pricing`
--
ALTER TABLE `kod_med_pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `kod_med_quantity`
--
ALTER TABLE `kod_med_quantity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `kod_med_sections`
--
ALTER TABLE `kod_med_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kod_med_stock`
--
ALTER TABLE `kod_med_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `kod_med_strengths`
--
ALTER TABLE `kod_med_strengths`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `kod_menus`
--
ALTER TABLE `kod_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kod_menu_links`
--
ALTER TABLE `kod_menu_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kod_menu_positions`
--
ALTER TABLE `kod_menu_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kod_notes`
--
ALTER TABLE `kod_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kod_offers`
--
ALTER TABLE `kod_offers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kod_op_orders`
--
ALTER TABLE `kod_op_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `kod_op_order_details`
--
ALTER TABLE `kod_op_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `kod_pages`
--
ALTER TABLE `kod_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `kod_page_sections`
--
ALTER TABLE `kod_page_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `kod_patients`
--
ALTER TABLE `kod_patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `kod_patients_addresses`
--
ALTER TABLE `kod_patients_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `kod_patients_orders_addresses`
--
ALTER TABLE `kod_patients_orders_addresses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `kod_pharmacy_branches`
--
ALTER TABLE `kod_pharmacy_branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kod_pharmacy_opening_hours`
--
ALTER TABLE `kod_pharmacy_opening_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kod_pharmacy_profile`
--
ALTER TABLE `kod_pharmacy_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kod_pharmacy_settings`
--
ALTER TABLE `kod_pharmacy_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kod_products`
--
ALTER TABLE `kod_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kod_product_long_description`
--
ALTER TABLE `kod_product_long_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `kod_product_medias`
--
ALTER TABLE `kod_product_medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kod_product_meta_tags`
--
ALTER TABLE `kod_product_meta_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kod_product_reg_no`
--
ALTER TABLE `kod_product_reg_no`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kod_product_reviews`
--
ALTER TABLE `kod_product_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `kod_pro_categories`
--
ALTER TABLE `kod_pro_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `kod_raf_list`
--
ALTER TABLE `kod_raf_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `kod_services`
--
ALTER TABLE `kod_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kod_service_category`
--
ALTER TABLE `kod_service_category`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kod_service_position`
--
ALTER TABLE `kod_service_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kod_static_pages`
--
ALTER TABLE `kod_static_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kod_users`
--
ALTER TABLE `kod_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `kod_user_attempts`
--
ALTER TABLE `kod_user_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=534;

--
-- AUTO_INCREMENT for table `kod_user_roles`
--
ALTER TABLE `kod_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kod_user_types`
--
ALTER TABLE `kod_user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medical_assessment_form`
--
ALTER TABLE `medical_assessment_form`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_pharmacy_transfers`
--
ALTER TABLE `order_pharmacy_transfers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
