-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2024 at 08:28 PM
-- Server version: 8.0.40-cll-lve
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `growworl_sanjit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int NOT NULL,
  `admin_type` enum('3','2') NOT NULL DEFAULT '2',
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_email` text,
  `username` varchar(225) DEFAULT NULL,
  `password` text NOT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` varchar(999) NOT NULL,
  `mode` varchar(225) NOT NULL,
  `two_factor` enum('0','1') NOT NULL DEFAULT '0',
  `two_factor_secret_key` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_type`, `admin_name`, `admin_email`, `username`, `password`, `telephone`, `register_date`, `login_date`, `login_ip`, `client_type`, `access`, `mode`, `two_factor`, `two_factor_secret_key`) VALUES
(1, '3', 'Admin', 'sketchleader.official@gmail.com', 'sanjit', 'sanjit@123', '+918677014327', '2021-09-08 10:19:05', '2024-12-16 20:23:17', '152.58.191.19', '2', '{\"admin_access\":1,\"users\":1,\"services\":1,\"update-prices\":1,\"bulk\":1,\"synced-logs\":1,\"orders\":1,\"subscriptions\":1,\"dripfeed\":1,\"tasks\":1,\"payments\":1,\"tickets\":1,\"additionals\":1,\"referral\":1,\"broadcast\":1,\"logs\":1,\"reports\":1,\"videop\":1,\"coupon\":1,\"child-panels\":1,\"updates\":1,\"appearance\":1,\"themes\":1,\"new_year\":1,\"pages\":1,\"news\":1,\"meta\":1,\"blog\":1,\"menu\":1,\"inte\":1,\"language\":1,\"files\":1,\"settings\":1,\"general_settings\":1,\"providers\":1,\"payments_settings\":1,\"bank_accounts\":1,\"modules\":1,\"subject\":1,\"payments_bonus\":1,\"currency-manager\":1,\"alert_settings\":1,\"site_count\":1,\"manager\":1,\"super_admin\":1}', 'sun', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_constants`
--

CREATE TABLE `admin_constants` (
  `id` int NOT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `paidRent` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admin_constants`
--

INSERT INTO `admin_constants` (`id`, `brand_logo`, `paidRent`) VALUES
(1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `image_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int NOT NULL,
  `bank_name` varchar(225) NOT NULL,
  `bank_sube` varchar(225) NOT NULL,
  `bank_hesap` varchar(225) NOT NULL,
  `bank_iban` text NOT NULL,
  `bank_alici` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` datetime NOT NULL,
  `image_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `blog_get` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bulkedit`
--

CREATE TABLE `bulkedit` (
  `id` int NOT NULL,
  `service_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_name` text COLLATE utf8mb4_bin NOT NULL,
  `category_name_lang` longtext COLLATE utf8mb4_bin,
  `category_line` double NOT NULL,
  `category_type` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '2',
  `category_secret` enum('1','2') COLLATE utf8mb4_bin NOT NULL DEFAULT '2',
  `category_icon` text COLLATE utf8mb4_bin NOT NULL,
  `is_refill` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1',
  `category_deleted` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_name_lang`, `category_line`, `category_type`, `category_secret`, `category_icon`, `is_refill`, `category_deleted`) VALUES
(1, 'Instagram |- Cheap Server', '{\"en\":\"Instagram |- Cheap Server\"}', 1, '2', '2', '', '1', '1'),
(2, '👥IG Followers |📡 𝐀𝐧𝐭𝐢 𝐔𝐩𝐝𝐚𝐭𝐞 / Fast', '{\"en\":\"\\ud83d\\udc65IG Followers |\\ud83d\\udce1 \\ud835\\udc00\\ud835\\udc27\\ud835\\udc2d\\ud835\\udc22 \\ud835\\udc14\\ud835\\udc29\\ud835\\udc1d\\ud835\\udc1a\\ud835\\udc2d\\ud835\\udc1e \\/ Fast\"}', 2, '2', '2', '', '1', '1'),
(3, ' 👥IG Followers | 365 Days Refill ', '{\"en\":\" \\ud83d\\udc65IG Followers | 365 Days Refill \"}', 3, '2', '2', '', '1', '1'),
(4, '👥IG Followers | Lifetime', '{\"en\":\"\\ud83d\\udc65IG Followers | Lifetime\"}', 4, '2', '2', '', '1', '1'),
(5, '👥IG Followers | 30 - 90 Days Refill', '{\"en\":\"\\ud83d\\udc65IG Followers | 30 - 90 Days Refill\"}', 5, '2', '2', '', '1', '1'),
(6, '👥IG Followers | 🇮🇳 𝗜𝗻𝗱𝗶𝗮𝗻 ', '{\"en\":\"\\ud83d\\udc65IG Followers | \\ud83c\\uddee\\ud83c\\uddf3 \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb \"}', 6, '2', '2', '', '1', '1'),
(7, 'Instagram |- Cheap Server', '{\"en\":\"Instagram |- Cheap Server\"}', 7, '2', '2', '', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `childpanels`
--

CREATE TABLE `childpanels` (
  `id` int NOT NULL,
  `client_id` int NOT NULL,
  `domain` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `child_panel_currency` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `child_panel_username` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `child_panel_password` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `charged_amount` float NOT NULL,
  `child_panel_status` enum('Pending','Active','Frozen','Suspended') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Pending',
  `renewal_date` date NOT NULL,
  `created_on` datetime NOT NULL,
  `child_panel_uqid` varchar(225) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) DEFAULT NULL,
  `admin_type` enum('1','2') NOT NULL DEFAULT '2',
  `password` text NOT NULL,
  `telephone` varchar(225) DEFAULT NULL,
  `balance` decimal(21,4) NOT NULL DEFAULT '0.0000',
  `spent` decimal(21,4) NOT NULL DEFAULT '0.0000',
  `balance_type` enum('1','2') NOT NULL DEFAULT '2',
  `debit_limit` double DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `apikey` text NOT NULL,
  `tel_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `email_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` text,
  `lang` varchar(255) NOT NULL DEFAULT 'tr',
  `timezone` double NOT NULL DEFAULT '0',
  `currency_type` varchar(10) DEFAULT NULL,
  `ref_code` text NOT NULL,
  `ref_by` text,
  `change_email` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int NOT NULL DEFAULT '3',
  `currency` varchar(225) NOT NULL DEFAULT '1',
  `passwordreset_token` varchar(225) NOT NULL,
  `discount_percentage` int NOT NULL,
  `broadcast_id` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `name`, `email`, `username`, `admin_type`, `password`, `telephone`, `balance`, `spent`, `balance_type`, `debit_limit`, `register_date`, `login_date`, `login_ip`, `apikey`, `tel_type`, `email_type`, `client_type`, `access`, `lang`, `timezone`, `currency_type`, `ref_code`, `ref_by`, `change_email`, `resend_max`, `currency`, `passwordreset_token`, `discount_percentage`, `broadcast_id`) VALUES
(1, 'Asd Asd', 'tsdyfu@gmail.com', 'amitbhatijsm', '1', '25f9e794323b453885f5181f1b624d0b', '63504309796', 56.2612, 3.7388, '2', NULL, '2023-09-01 18:40:21', '2023-09-05 19:39:38', '122.161.61.242', 'ff742bf2251283a146d27b0ac0e42eb1', '1', '2', '2', NULL, 'en', 0, 'INR', '612682', NULL, '2', 3, '1', '', 50, '0');

-- --------------------------------------------------------

--
-- Table structure for table `clients_category`
--

CREATE TABLE `clients_category` (
  `id` int NOT NULL,
  `client_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `clients_price`
--

CREATE TABLE `clients_price` (
  `id` int NOT NULL,
  `client_id` int NOT NULL,
  `service_id` int NOT NULL,
  `service_price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `clients_service`
--

CREATE TABLE `clients_service` (
  `id` int NOT NULL,
  `client_id` int NOT NULL,
  `service_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `client_report`
--

CREATE TABLE `client_report` (
  `id` int NOT NULL,
  `client_id` int NOT NULL,
  `action` text NOT NULL,
  `report_ip` varchar(225) NOT NULL,
  `report_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `client_report`
--

INSERT INTO `client_report` (`id`, `client_id`, `action`, `report_ip`, `report_date`) VALUES
(1, 1, '\r\n    User registered.', '122.177.216.106', '2023-09-01 18:40:21'),
(2, 1, 'Member logged in.', '122.177.216.106', '2023-09-01 18:41:43'),
(3, 1, 'Member logged in.', '122.177.216.106', '2023-09-01 21:15:50'),
(4, 1, 'Member logged in.', '122.177.216.106', '2023-09-02 11:23:42'),
(5, 1, 'Member logged in.', '122.177.216.106', '2023-09-02 12:02:38'),
(6, 1, 'Member logged in.', '122.177.216.106', '2023-09-02 13:30:20'),
(7, 1, '2.5285 New Order #1.', '122.177.216.106', '2023-09-02 15:13:50'),
(8, 1, '0.8645 New Order #2.', '122.177.216.106', '2023-09-02 16:13:29'),
(9, 1, '#2 Order number of has been completed.', '127.0.0.1', '2023-09-02 16:39:02'),
(10, 1, '0.3458 New Order #3.', '122.177.216.106', '2023-09-02 17:14:59'),
(11, 1, '#3 Order number of has been completed.', '127.0.0.1', '2023-09-02 17:39:07'),
(12, 1, '#1 Order number of has been completed.', '127.0.0.1', '2023-09-03 01:01:02'),
(13, 1, 'Member logged in.', '122.161.61.242', '2023-09-04 21:26:42'),
(14, 1, 'Member logged in.', '122.161.61.242', '2023-09-05 19:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int NOT NULL,
  `currency_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_position` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'left',
  `currency_rate` double NOT NULL,
  `currency_inverse_rate` double NOT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT '0',
  `currency_hash` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_name`, `currency_code`, `currency_symbol`, `symbol_position`, `currency_rate`, `currency_inverse_rate`, `is_enable`, `currency_hash`) VALUES
(1, 'Indian Rupee', 'INR', '₹', 'left', 1, 1, 1, 'a4956249500ba31bc01c4b302cfa8e1a22b8a801'),
(2, 'U.S. Dollar', 'USD', '$', 'left', 0.011786959631089, 84.839520223892, 1, '8909c4c6bc52fe2357bd35e6b3fc209a2476399a'),
(3, 'Euro', 'EUR', '€', 'left', 0.011215925226161, 89.15893961806, 1, '185d31d64c6feb611b6a2ab50b634ba00e43e586'),
(4, 'Turkish Lira', 'TRY', '₺', 'left', 0.41231932800731, 2.4253046900151, 1, '349f7b9ebdeb631986de1a85faa303032f206147'),
(5, 'Russian Rouble', 'RUB', '₽', 'left', 1.2234861460572, 0.81733659447033, 1, '5fe6bfdce0b90e9caf56a80fd25f33d0f20159f1'),
(6, 'Brazilian Real', 'BRL', 'R$', 'left', 0.071414321337339, 14.002793575203, 1, 'e50baf88aed2020b6073f40a8ca26d7d1b0fb765'),
(7, 'South Korean Won', 'KRW', '₩', 'left', 16.927600349533, 0.05907511870267, 1, 'e676515c1847b4376de8a04c370e0bf201fc34ca'),
(8, 'Saudi Riyal', 'SAR', '﷼', 'left', 0.044446864370465, 22.498774979152, 1, 'd7f247a574a692b15fc7e9dadf1fa4883c9a6e2d'),
(9, 'Chinese Yuan', 'CNY', '¥', 'left', 0.085806248938856, 11.654162865371, 1, '06c7a274a673ed9037f1d4ad04f3a737b3024d75'),
(10, 'Vietnamese Dong', 'VND', '₫', 'left', 299.24289074812, 0.003341766942232, 1, '4f2780b924554c2e51c34013c102c1119d9fbfb9'),
(11, 'Kuwaiti Dinar', 'KWD', 'د.ك', 'left', 0.0036279932414005, 275.63447158296, 1, 'dcf8a0dd3ddfaca27e99475560a40ff4a780f070'),
(12, 'Egyptian Pound', 'EGP', '£', 'left', 0.59949580396127, 1.6680683891235, 1, 'a0d874f915b1733bf25be06df757cb843ad07fbe'),
(13, 'Pakistani Rupee', 'PKR', '₨', 'left', 3.2887114377644, 0.30407046009479, 1, '4829c93dadf334b7298def05bbfdd8642142f378'),
(14, 'Nigerian Naira', 'NGN', '₦', 'left', 18.250022709295, 0.054794452364746, 1, '36577516307566a0725f97fdc8797b27ea1ef78d');

-- --------------------------------------------------------

--
-- Table structure for table `custom_settings`
--

CREATE TABLE `custom_settings` (
  `id` int NOT NULL,
  `snow_data` text COLLATE utf8mb4_general_ci NOT NULL,
  `snow_data_array` text COLLATE utf8mb4_general_ci NOT NULL,
  `snow_status` enum('1','2') COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '1 - inactive , 2 - active',
  `start_count_parser` text COLLATE utf8mb4_general_ci NOT NULL,
  `orders_count_increase` varchar(225) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_settings`
--

INSERT INTO `custom_settings` (`id`, `snow_data`, `snow_data_array`, `snow_status`, `start_count_parser`, `orders_count_increase`) VALUES
(1, '\"snow\":{\"init\":false,\"options\":{\"particles\":{\"move\":{\"speed\":,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":10,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\":{\"init\":false,\"options\":{\"count\":100,\"speed\":1,\"images\":[],\"maxSize\":30,\"launches\":\"1\"}},\"garland\":{\"init\":false,\"options\":{\"type\":\"\",\"style\":\"\"}},\"fireworks\":{\"init\":false,\"options\":{\"delay\":{\"max\":30,\"min\":30},\"friction\":,\"launches\":1,}}', '{\"snow_fall\":\"true\",\"snowflakes\":\"20\",\"snow_speed\":\"3\",\"garlands\":\"true\",\"gar_shape\":\"apple\",\"gar_style\":\"style1\",\"fire_works\":\"true\",\"fire_size\":\"0.95\",\"fire_speed\":\"slow\",\"toy_size\":\"80\",\"toy_quantity\":\"100\",\"toy_speed\":\"6\",\"toy_launch\":\"infinite\"}', '1', '{\"none\":\"Catch from supplier\",\"instagram_follower\":\"Instagram followers\",\"instagram_photo\":\"Instagram likes\",\"instagram_comments\":\"Instagram comments\",\"youtube_views\":\"Youtube views\",\"youtube_likes\":\"Youtube likes\",\"youtube_comments\":\"Youtube comments\",\"youtube_subscribers\":\"Youtube subscribers\"}', '0:0');

-- --------------------------------------------------------

--
-- Table structure for table `decoration`
--

CREATE TABLE `decoration` (
  `id` int NOT NULL,
  `snow_effect` int NOT NULL,
  `snow_colour` text NOT NULL,
  `diwali_lights` int NOT NULL,
  `video_link` text NOT NULL,
  `christmas_deco` varchar(5000) NOT NULL,
  `action_link` text NOT NULL,
  `pop_noti` int NOT NULL,
  `pop_title` text NOT NULL,
  `pop_desc` text NOT NULL,
  `action_text` varchar(10) NOT NULL,
  `action_button` int NOT NULL,
  `snow_fall` varchar(500) DEFAULT NULL,
  `garlands` text,
  `fire_works` text,
  `toys` text,
  `snowflakes` int NOT NULL,
  `snow_speed` int NOT NULL,
  `gar_shape` text NOT NULL,
  `gar_style` text NOT NULL,
  `fire_size` varchar(100) NOT NULL,
  `fire_speed` text NOT NULL,
  `toy_size` int NOT NULL,
  `toy_quantity` int NOT NULL,
  `toy_speed` int NOT NULL,
  `toy_launch` varchar(100) NOT NULL,
  `toy_a` varchar(50) NOT NULL,
  `toy_b` varchar(50) NOT NULL,
  `toy_c` varchar(50) NOT NULL,
  `toy_d` varchar(50) NOT NULL,
  `toy_e` varchar(50) NOT NULL,
  `toy_f` varchar(50) NOT NULL,
  `toy_g` varchar(50) NOT NULL,
  `toy_h` varchar(50) NOT NULL,
  `toy_i` varchar(50) NOT NULL,
  `toy_j` varchar(50) NOT NULL,
  `toy_k` varchar(50) NOT NULL,
  `psw_license` text NOT NULL,
  `toy_l` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `decoration`
--

INSERT INTO `decoration` (`id`, `snow_effect`, `snow_colour`, `diwali_lights`, `video_link`, `christmas_deco`, `action_link`, `pop_noti`, `pop_title`, `pop_desc`, `action_text`, `action_button`, `snow_fall`, `garlands`, `fire_works`, `toys`, `snowflakes`, `snow_speed`, `gar_shape`, `gar_style`, `fire_size`, `fire_speed`, `toy_size`, `toy_quantity`, `toy_speed`, `toy_launch`, `toy_a`, `toy_b`, `toy_c`, `toy_d`, `toy_e`, `toy_f`, `toy_g`, `toy_h`, `toy_i`, `toy_j`, `toy_k`, `psw_license`, `toy_l`) VALUES
(1, 0, '#004a00', 0, '', '\n<style>.particle-snow{position:fixed;top:0;left:0;width:100%;height:100%;z-index:1;pointer-events:none}.particle-snow canvas{position:fixed;top:0;left:0;width:100%;height:100%;pointer-events:none}.christmas-garland{text-align:center;white-space:nowrap;overflow:hidden;position:absolute;z-index:1;padding:0;pointer-events:none;width:100%;height:85px}.christmas-garland .christmas-garland__item{position:relative;width:28px;height:28px;border-radius:50%;display:inline-block;margin-left:20px}.christmas-garland .christmas-garland__item .shape{-webkit-animation-fill-mode:both;animation-fill-mode:both;-webkit-animation-iteration-count:infinite;animation-iteration-count:infinite;-webkit-animation-name:flash-1;animation-name:flash-1;-webkit-animation-duration:2s;animation-duration:2s}.christmas-garland .christmas-garland__item .apple{width:22px;height:22px;border-radius:50%;margin-left:auto;margin-right:auto;margin-top:8px}.christmas-garland .christmas-garland__item .pear{width:12px;height:28px;border-radius:50%;margin-left:auto;margin-right:auto;margin-top:6px}.christmas-garland .christmas-garland__item:nth-child(2n+1) .shape{-webkit-animation-name:flash-2;animation-name:flash-2;-webkit-animation-duration:.4s;animation-duration:.4s}.christmas-garland .christmas-garland__item:nth-child(4n+2) .shape{-webkit-animation-name:flash-3;animation-name:flash-3;-webkit-animation-duration:1.1s;animation-duration:1.1s}.christmas-garland .christmas-garland__item:nth-child(odd) .shape{-webkit-animation-duration:1.8s;animation-duration:1.8s}.christmas-garland .christmas-garland__item:nth-child(3n+1) .shape{-webkit-animation-duration:1.4s;animation-duration:1.4s}.christmas-garland .christmas-garland__item:before{content:\"\";position:absolute;background:#222;width:10px;height:10px;border-radius:3px;top:-1px;left:9px}.christmas-garland .christmas-garland__item:after{content:\"\";top:-9px;left:14px;position:absolute;width:52px;height:18px;border-bottom:solid #222 2px;border-radius:50%}.christmas-garland .christmas-garland__item:last-child:after{content:none}.christmas-garland .christmas-garland__item:first-child{margin-left:-40px}</style>\n<!-- developed by Raj Patel-->\n      \n<!-- developed by Raj Patel-->  \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/libs/jquery/1.12.4/jquery.min.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/flpbonhmkq9tsp29.js\">\n          </script>\n    \n        \n<!-- developed by Raj Patel-->\n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/a4kdpfesx15uh7ae.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/596z6ya3isgxcipy.js\">\n          </script>\n    \n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/39j8e9yrxs283d1x.js\">\n          </script>\n    \n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/33srijdbqcgk6lsz.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/52pp7z/wxbh27w4jdzpslxn.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/52pp7z/angedasgma230hxr.js\">\n          </script>\n    \n        \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n    <script type=\"text/javascript\" >\n       window.modules.layouts = {\"theme_id\":1,\"auth\":0,\"live\":true};     </script>\n    \n        \n    <script type=\"text/javascript\" >\n       window.modules.signin = [];     </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" >\n       document.addEventListener(\'DOMContentLoaded\', function() { \nvar newYearEvent = new window.NewYearEvent({\"snow\":{\"init\":true,\"options\":{\"particles\":{\"move\":{\"speed\":3,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":5,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":100,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\"', '', 0, '', '', '', 0, 'true', NULL, NULL, NULL, 50, 10, 'apple', 'style2', '0.95', 'slow', 80, 100, 6, 'infinite', '', '', '', '', '', '1', '', '', '', '1', '1', 'dukesmm.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `earn`
--

CREATE TABLE `earn` (
  `earn_id` int NOT NULL,
  `client_id` int NOT NULL,
  `link` text NOT NULL,
  `earn_note` text NOT NULL,
  `status` enum('Pending','Under Review','Funds Granted','Rejected','Not Eligible') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `link` text,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `General_options`
--

CREATE TABLE `General_options` (
  `id` int NOT NULL,
  `coupon_status` enum('1','2') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '1',
  `updates_show` enum('1','2') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '1',
  `panel_status` enum('Pending','Active','Frozen','Suspended') COLLATE utf8mb3_unicode_ci NOT NULL,
  `panel_orders` int NOT NULL,
  `panel_thismonthorders` int NOT NULL,
  `massorder` enum('1','2') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '2',
  `balance_format` enum('0.0','0.00','0.000','0.0000') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0.0',
  `currency_format` enum('0','2','3','4') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '3',
  `ticket_system` enum('1','2') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `General_options`
--

INSERT INTO `General_options` (`id`, `coupon_status`, `updates_show`, `panel_status`, `panel_orders`, `panel_thismonthorders`, `massorder`, `balance_format`, `currency_format`, `ticket_system`) VALUES
(1, '', '2', 'Active', 1024, 20, '2', '', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `integrations`
--

CREATE TABLE `integrations` (
  `id` int NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `icon_url` varchar(225) NOT NULL,
  `code` text NOT NULL,
  `visibility` int NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `integrations`
--

INSERT INTO `integrations` (`id`, `name`, `description`, `icon_url`, `code`, `visibility`, `status`) VALUES
(1, 'Beamer', 'Announce updates and get feedback with in-app notification center, widgets and changelog', '/img/integrations/Beamer.svg', '', 1, 1),
(2, 'Getsitecontrol', 'It helps you prevent website visitors from leaving your website without taking any action.', '/img/integrations/Getsitecontrol.svg', '<html>\r\n<body style=\'background-color:black\'>\r\n<canvas id=\'myCanvas\' width=\'800\' height=\'800\'></canvas>\r\n<script>\r\nconst max_fireworks = 5,\r\n  max_sparks = 50;\r\nlet canvas = document.getElementById(\'myCanvas\');\r\nlet context = canvas.getContext(\'2d\');\r\nlet fireworks = [];\r\n \r\nfor (let i = 0; i < max_fireworks; i++) {\r\n  let firework = {\r\n    sparks: []\r\n  };\r\n  for (let n = 0; n < max_sparks; n++) {\r\n    let spark = {\r\n      vx: Math.random() * 5 + .5,\r\n      vy: Math.random() * 5 + .5,\r\n      weight: Math.random() * .3 + .03,\r\n      red: Math.floor(Math.random() * 2),\r\n      green: Math.floor(Math.random() * 2),\r\n      blue: Math.floor(Math.random() * 2)\r\n    };\r\n    if (Math.random() > .5) spark.vx = -spark.vx;\r\n    if (Math.random() > .5) spark.vy = -spark.vy;\r\n    firework.sparks.push(spark);\r\n  }\r\n  fireworks.push(firework);\r\n  resetFirework(firework);\r\n}\r\nwindow.requestAnimationFrame(explode);\r\n \r\nfunction resetFirework(firework) {\r\n  firework.x = Math.floor(Math.random() * canvas.width);\r\n  firework.y = canvas.height;\r\n  firework.age = 0;\r\n  firework.phase = \'fly\';\r\n}\r\n \r\nfunction explode() {\r\n  context.clearRect(0, 0, canvas.width, canvas.height);\r\n  fireworks.forEach((firework,index) => {\r\n    if (firework.phase == \'explode\') {\r\n        firework.sparks.forEach((spark) => {\r\n        for (let i = 0; i < 10; i++) {\r\n          let trailAge = firework.age + i;\r\n          let x = firework.x + spark.vx * trailAge;\r\n          let y = firework.y + spark.vy * trailAge + spark.weight * trailAge * spark.weight * trailAge;\r\n          let fade = i * 20 - firework.age * 2;\r\n          let r = Math.floor(spark.red * fade);\r\n          let g = Math.floor(spark.green * fade);\r\n          let b = Math.floor(spark.blue * fade);\r\n          context.beginPath();\r\n          context.fillStyle = \'rgba(\' + r + \',\' + g + \',\' + b + \',1)\';\r\n          context.rect(x, y, 4, 4);\r\n          context.fill();\r\n        }\r\n      });\r\n      firework.age++;\r\n      if (firework.age > 100 && Math.random() < .05) {\r\n        resetFirework(firework);\r\n      }\r\n    } else {\r\n      firework.y = firework.y - 10;\r\n      for (let spark = 0; spark < 15; spark++) {\r\n        context.beginPath();\r\n        context.fillStyle = \'rgba(\' + index * 50 + \',\' + spark * 17 + \',0,1)\';\r\n        context.rect(firework.x + Math.random() * spark - spark / 2, firework.y + spark * 4, 4, 4);\r\n        context.fill();\r\n      }\r\n      if (Math.random() < .001 || firework.y < 200) firework.phase = \'explode\';\r\n    }\r\n  });\r\n  window.requestAnimationFrame(explode);\r\n}\r\n</script>\r\n</body>\r\n</html>', 1, 1),
(3, 'Google Analytics', 'Statistics and basic analytical tools for search engine optimization (SEO) and marketing purposes', '/img/integrations/Google%20Analytics.svg', '', 1, 1),
(4, 'Google Tag manager', 'Manage all your website tags without editing the code using simple tag management solutions', '/img/integrations/Google%20Tag%20manager.svg', '', 1, 1),
(5, 'JivoChat', 'All-in-one business messenger to talk to customers: live chat, phone, email and social', '/img/integrations/JivoChat.svg', '', 1, 1),
(6, 'Onesignal', 'Leader in customer engagement, empowers mobile push, web push, email, in-app messages', '/img/integrations/Onesignal.svg', '', 1, 1),
(7, 'Push alert', 'Increase reach, revenue, retarget users with Push Notifications on desktop and mobile', '/img/integrations/Push%20alert.svg', '', 1, 1),
(8, 'Smartsupp', 'Live chat, email inbox and Facebook Messenger in one customer messaging platform', '/img/integrations/Smartsupp.svg', '', 1, 1),
(9, 'Tawk.to', 'Track and chat with visitors on your website, mobile app or a free customizable page', '/img/integrations/Tawk.to.svg', '', 1, 1),
(10, 'Tidio', 'Communicator for businesses that keep live chat, chatbots, Messenger and email in one place', '/img/integrations/Tidio.svg', '', 1, 1),
(11, 'Zendesk Chat', 'Helps respond quickly to customer questions, reduce wait times and increase sales', '/img/integrations/Zendesk%20Chat.svg', '', 1, 1),
(12, 'Getbutton.io', 'Chat with website visitors through popular messaging apps. Whatsapp, messenger etc. contact button.', '/img/integrations/Getbutton.svg', '', 1, 1),
(13, 'Google reCAPTCHA v2', 'It uses an advanced risk analysis engine and adaptive challenges to prevent malware from engaging in abusive activities on your website.', '/img/integrations/reCAPTCHA.svg', '', 1, 1),
(14, 'Whatsapp', 'Whatsapp is for Personal Support of your Users', '/img/integrations/whatsapp.svg', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kuponlar`
--

CREATE TABLE `kuponlar` (
  `id` int NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `adet` int NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kupon_kullananlar`
--

CREATE TABLE `kupon_kullananlar` (
  `id` int NOT NULL,
  `uye_id` int NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int NOT NULL,
  `language_name` varchar(225) NOT NULL,
  `language_code` varchar(225) NOT NULL,
  `language_type` enum('2','1') NOT NULL DEFAULT '2',
  `default_language` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `language_code`, `language_type`, `default_language`) VALUES
(1, 'English', 'en', '2', '1'),
(2, 'Arabic', 'ar', '2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `Mailforms`
--

CREATE TABLE `Mailforms` (
  `id` int NOT NULL,
  `subject` varchar(225) NOT NULL,
  `message` varchar(225) NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `header` varchar(225) NOT NULL,
  `footer` varchar(225) NOT NULL,
  `type` enum('Admins','Users') NOT NULL DEFAULT 'Users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int NOT NULL,
  `name` text COLLATE utf8mb4_bin NOT NULL,
  `menu_name_lang` longtext COLLATE utf8mb4_bin,
  `menu_line` double NOT NULL,
  `type` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '2',
  `slug` varchar(225) COLLATE utf8mb4_bin NOT NULL DEFAULT '2',
  `icon` varchar(225) COLLATE utf8mb4_bin DEFAULT NULL,
  `menu_status` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1',
  `visible` enum('Internal','External') COLLATE utf8mb4_bin NOT NULL DEFAULT 'Internal',
  `active` varchar(225) COLLATE utf8mb4_bin NOT NULL,
  `tiptext` varchar(225) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `menu_name_lang`, `menu_line`, `type`, `slug`, `icon`, `menu_status`, `visible`, `active`, `tiptext`) VALUES
(1, 'New Order', '{\"en\": \"New Order\"}', 1, '2', '/', 'fa fa-shopping-bag', '1', 'Internal', 'neworder', ''),
(2, 'Mass Order', '{\"en\": \"Mass Order\"}', 2, '2', '/massorder', 'fas fa-cart-plus', '1', 'Internal', 'massorder', 'Shown only if Mass Order system enabled for use'),
(3, 'Orders ', '{\"en\": \"Orders \"}', 3, '2', '/orders', 'fas fa-server', '1', 'Internal', 'orders', ''),
(6, 'Services', '{\"en\": \"Services\"}', 5, '2', '/services', 'fas fa-file-alt', '1', 'Internal', 'services', ''),
(7, 'Add Funds', '{\"en\": \"Add Funds\"}', 6, '2', '/addfunds', 'fab fa-cc-amazon-pay', '1', 'Internal', 'addfunds', ''),
(8, 'Api', '{\"en\": \"Api\"}', 9, '2', '/api', 'fal fa-plug', '1', 'Internal', 'api', ''),
(9, 'Tickets ', '{\"en\": \"Tickets \"}', 8, '2', '/tickets', 'fas fa-headset', '1', 'Internal', 'tickets', ''),
(10, 'Child Panels', '{\"en\": \"Child Panels\"}', 10, '2', '/child-panels', 'fas fa-child', '1', 'Internal', 'child-panels', 'Shown only if child panels selling enabled'),
(11, 'Refer & Earn', '{\"en\": \"Refer & Earn\"}', 11, '2', '/refer', 'fas fa-bezier-curve', '1', 'Internal', 'refer', 'Shown only if affiliate system enabled for use'),
(13, 'Terms', '{\"en\": \"Terms\"}', 12, '2', '/terms', 'fas fa-exclamation-triangle', '1', 'Internal', 'terms', ''),
(14, 'Signup ', '{\"en\": \"Signup\"}', 2, '2', '/signup', 'fas fa-arrow-right', '1', 'External', 'signup', 'Shown only if Signup system enabled for use'),
(15, 'Api', '{\"en\": \"Api\"}', 4, '2', '/api', 'fal fa-plug', '1', 'External', 'api', ''),
(17, 'Daily Updates', '{\"en\": \"Daily Updates\"}', 13, '2', '/updates', 'fas fa-bell', '1', 'Internal', '', 'Shown only if Updates System enabled'),
(18, 'Terms', '{\"en\": \"Terms\"}', 3, '2', '/terms', 'fas fa-exclamation-triangle', '1', 'External', 'terms', ''),
(32, 'blogs', '{\"en\": \"blogs\"}', 16, '2', '/blog', 'fab fa-500px', '1', 'Internal', 'blog', ''),
(24, 'Services', '{\"en\": \"Services\"}', 14, '2', '/services', 'fas fa-file-alt', '1', 'External', 'services', ''),
(28, 'Transfer Funds ', '{\"en\": \"Transfer Funds \"}', 14, '2', '/transferfunds', 'fas fa-grip-vertical', '1', 'Internal', 'Transfer Funds ', ''),
(31, 'blogs', '{\"en\": \"blogs\"}', 15, '2', '/blog', '', '1', 'External', 'blog', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `news_icon` varchar(225) NOT NULL,
  `news_title` varchar(225) NOT NULL,
  `news_title_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `news_content` varchar(225) NOT NULL,
  `news_content_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `news_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `notifications_popup`
--

CREATE TABLE `notifications_popup` (
  `id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` text,
  `action_link` text,
  `isAllUser` enum('1','0') NOT NULL DEFAULT '0',
  `expiry_date` date NOT NULL,
  `status` enum('1','2','0') NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `action_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `client_id` int NOT NULL,
  `service_id` int NOT NULL,
  `api_orderid` int NOT NULL DEFAULT '0',
  `order_error` text NOT NULL,
  `order_detail` text,
  `order_api` int NOT NULL DEFAULT '0',
  `api_serviceid` int NOT NULL DEFAULT '0',
  `api_charge` double NOT NULL DEFAULT '0',
  `api_currencycharge` double DEFAULT '1',
  `order_profit` double NOT NULL,
  `order_quantity` double NOT NULL,
  `order_extras` text NOT NULL,
  `order_charge` double NOT NULL,
  `dripfeed` enum('1','2','3') DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_id` double NOT NULL DEFAULT '0',
  `subscriptions_id` double NOT NULL DEFAULT '0',
  `subscriptions_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_totalcharges` double DEFAULT NULL,
  `dripfeed_runs` double DEFAULT NULL,
  `dripfeed_delivery` double NOT NULL DEFAULT '0',
  `dripfeed_interval` double DEFAULT NULL,
  `dripfeed_totalquantity` double DEFAULT NULL,
  `dripfeed_status` enum('active','completed','canceled') NOT NULL DEFAULT 'active',
  `order_url` text NOT NULL,
  `order_start` double NOT NULL DEFAULT '0',
  `order_finish` double NOT NULL DEFAULT '0',
  `order_remains` double NOT NULL DEFAULT '0',
  `order_create` datetime NOT NULL,
  `order_status` enum('pending','inprogress','completed','partial','processing','canceled') NOT NULL DEFAULT 'pending',
  `subscriptions_status` enum('active','paused','completed','canceled','expired','limit') NOT NULL DEFAULT 'active',
  `subscriptions_username` text,
  `subscriptions_posts` double DEFAULT NULL,
  `subscriptions_delivery` double NOT NULL DEFAULT '0',
  `subscriptions_delay` double DEFAULT NULL,
  `subscriptions_min` double DEFAULT NULL,
  `subscriptions_max` double DEFAULT NULL,
  `subscriptions_expiry` date DEFAULT NULL,
  `last_check` datetime NOT NULL,
  `order_where` enum('site','api') NOT NULL DEFAULT 'site',
  `refill_status` enum('Pending','Refilling','Completed','Rejected','Error') NOT NULL DEFAULT 'Pending',
  `is_refill` enum('1','2') NOT NULL DEFAULT '1',
  `refill` varchar(225) NOT NULL DEFAULT '1',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'true',
  `api_refillid` double NOT NULL DEFAULT '0',
  `avg_done` enum('0','1') NOT NULL DEFAULT '1',
  `order_increase` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `client_id`, `service_id`, `api_orderid`, `order_error`, `order_detail`, `order_api`, `api_serviceid`, `api_charge`, `api_currencycharge`, `order_profit`, `order_quantity`, `order_extras`, `order_charge`, `dripfeed`, `dripfeed_id`, `subscriptions_id`, `subscriptions_type`, `dripfeed_totalcharges`, `dripfeed_runs`, `dripfeed_delivery`, `dripfeed_interval`, `dripfeed_totalquantity`, `dripfeed_status`, `order_url`, `order_start`, `order_finish`, `order_remains`, `order_create`, `order_status`, `subscriptions_status`, `subscriptions_username`, `subscriptions_posts`, `subscriptions_delivery`, `subscriptions_delay`, `subscriptions_min`, `subscriptions_max`, `subscriptions_expiry`, `last_check`, `order_where`, `refill_status`, `is_refill`, `refill`, `cancelbutton`, `show_refill`, `api_refillid`, `avg_done`, `order_increase`) VALUES
(1, 1, 5, 4310722, '-', '{\"currency\":\"INR\",\"start_count\":\"12595\",\"remains\":0,\"status\":\"Completed\",\"charge\":1.9450000000000000621724893790087662637233734130859375}', 1, 1571, 1.945, NULL, 0.5835, 50, '', 2.5285, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://instagram.com/rebel__058?igshid=MzRlODBiNWFlZA==', 12595, 0, 0, '2023-09-02 15:13:50', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2023-09-03 01:01:02', 'site', 'Pending', '1', '1', '1', 'true', 0, '1', 0),
(2, 1, 4, 4311867, '-', '{\"currency\":\"INR\",\"start_count\":\"2105\",\"remains\":0,\"status\":\"Completed\",\"charge\":1.3300000000000000710542735760100185871124267578125}', 1, 1806, 1.33, NULL, -0.4655, 50, '', 0.8645, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://instagram.com/no1_boost?igshid=MzRlODBiNWFlZA==', 2105, 0, 0, '2023-09-02 16:13:29', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2023-09-02 16:39:02', 'site', 'Pending', '1', '1', '1', 'true', 0, '1', 0),
(3, 1, 4, 4313020, '-', '{\"currency\":\"INR\",\"start_count\":\"2155\",\"remains\":0,\"status\":\"Completed\",\"charge\":0.532000000000000028421709430404007434844970703125}', 1, 1806, 0.532, NULL, -0.1862, 20, '', 0.3458, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://instagram.com/no1_boost?igshid=MzRlODBiNWFlZA==', 2155, 0, 0, '2023-09-02 17:14:59', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2023-09-02 17:39:07', 'site', 'Pending', '1', '1', '1', 'true', 0, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `page_get` varchar(225) NOT NULL,
  `page_content` text NOT NULL,
  `page_status` enum('1','2') NOT NULL DEFAULT '1',
  `active` enum('1','2') NOT NULL DEFAULT '1',
  `seo_title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_keywords` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `last_modified` datetime NOT NULL,
  `del` varchar(255) NOT NULL DEFAULT '1',
  `page_content2` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `page_get`, `page_content`, `page_status`, `active`, `seo_title`, `seo_keywords`, `seo_description`, `last_modified`, `del`, `page_content2`) VALUES
(2, 'Add funds', 'addfunds', '', '1', '1', '', '', '', '2023-07-27 09:55:56', '2', ''),
(787, 'Login', 'auth', '', '1', '1', '', '', '', '2023-08-12 09:18:17', '2', ''),
(9, 'New Order', 'neworder', '', '1', '1', '', '', '', '2023-09-02 05:24:53', '2', ''),
(14, 'Terms', 'terms', '', '1', '1', '', '', '', '2022-02-07 08:41:16', '2', ''),
(789, 'Mass Order', 'massorder', '', '1', '1', '', '', '', '2022-02-07 08:43:06', '2', ''),
(790, 'Orders', 'orders', '', '1', '1', '', '', '', '2022-02-07 08:53:20', '2', ''),
(791, 'Services', 'services', '', '1', '1', '', '', '', '2022-01-26 07:22:09', '2', ''),
(792, 'Tickets', 'tickets', '', '1', '1', '', '', '', '2022-01-26 07:22:09', '2', ''),
(793, 'API', 'api', '', '1', '1', '', '', '', '2022-01-24 07:21:07', '2', ''),
(794, 'Signup', 'signup', '', '1', '1', '', '', '', '2022-01-24 07:21:07', '2', ''),
(795, 'Blog', 'blog', '', '1', '1', '', '', '', '2022-01-24 07:21:07', '2', ''),
(909, 'success', 'success', '', '1', '1', '', '', '', '0000-00-00 00:00:00', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `panel_categories`
--

CREATE TABLE `panel_categories` (
  `id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '1 -> ENABLE, 0 -> DISABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `panel_info`
--

CREATE TABLE `panel_info` (
  `panel_id` int NOT NULL,
  `panel_domain` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `panel_plan` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `panel_status` enum('Pending','Active','Frozen','Suspended') COLLATE utf8mb3_unicode_ci NOT NULL,
  `panel_orders` int NOT NULL,
  `panel_thismonthorders` int NOT NULL,
  `date_created` datetime NOT NULL,
  `api_key` varchar(225) COLLATE utf8mb3_unicode_ci NOT NULL,
  `renewal_date` datetime NOT NULL,
  `panel_type` enum('Child','Main') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Main'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `panel_info`
--

INSERT INTO `panel_info` (`panel_id`, `panel_domain`, `panel_plan`, `panel_status`, `panel_orders`, `panel_thismonthorders`, `date_created`, `api_key`, `renewal_date`, `panel_type`) VALUES
(1, 'yourpanel.com', 'A', 'Active', 1453, 1453, '2022-01-24 10:58:08', 'b1fbedd6f1266a8990bf648919068680', '2025-02-23 10:58:08', 'Main');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethods`
--

CREATE TABLE `paymentmethods` (
  `methodId` int NOT NULL,
  `methodName` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `methodLogo` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `methodVisibleName` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `methodCallback` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `methodMin` int NOT NULL DEFAULT '1',
  `methodMax` int NOT NULL DEFAULT '1',
  `methodFee` float NOT NULL DEFAULT '0',
  `methodBonusPercentage` float NOT NULL DEFAULT '0',
  `methodBonusStartAmount` int NOT NULL DEFAULT '0',
  `methodCurrency` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `methodStatus` enum('0','1') COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '0 -> off, 1 -> on',
  `methodExtras` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `methodPosition` int DEFAULT NULL,
  `methodInstructions` longtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymentmethods`
--

INSERT INTO `paymentmethods` (`methodId`, `methodName`, `methodLogo`, `methodVisibleName`, `methodCallback`, `methodMin`, `methodMax`, `methodFee`, `methodBonusPercentage`, `methodBonusStartAmount`, `methodCurrency`, `methodStatus`, `methodExtras`, `methodPosition`, `methodInstructions`) VALUES
(1, 'PayTM Checkout', 'https://i.ibb.co/0VNTSLb/pngegg-2.png', 'PayTM Checkout', 'payTMCheckout', 1, 100000, 0, 0, 0, 'INR', '0', '{\"merchantId\":\"\",\"merchantKey\":\"\"}', 2, ''),
(2, 'PayTM Merchant', 'https://i.ibb.co/G0PxyPm/paytmpaymentgateway-3257-logo-1597644450-ayat1.png', 'PayTM Merchant', 'payTMMerchant', 1, 10000, 0, 0, 0, 'INR', '1', '{\"merchantId\":\"\"}', 1, '&lt;p&gt;&lt;strong class=&quot;ql-size-large&quot; style=&quot;background-color: rgb(230, 0, 0); color: rgb(255, 255, 0);&quot;&gt;&lt;em&gt;Paytm and Phone Pe only&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;'),
(3, 'Perfect Money', 'https://excelcdn.in/smm/admin/images/payment-methods/perfect-money.png', 'Perfect Money', 'perfectMoney', 10, 1000, 3, 0, 0, 'USD', '1', '{\"accountNumber\":\"\",\"alternatePassPhrase\":\"\"}', 3, ''),
(4, 'Coinbase Commerce', 'https://excelcdn.in/smm/admin/images/payment-methods/coinbase-commerce.png', 'Coinbase Commerce', 'coinbaseCommerce', 1, 1000, 0, 0, 0, 'USD', '0', '{\"APIKey\":\"\"}', 4, NULL),
(5, 'Kashier', 'https://excelcdn.in/smm/admin/images/payment-methods/kashier.png', 'Kashier', 'kashier', 1, 1000, 0, 0, 0, 'USD', '0', '{\"MID\":\"\",\"APIKey\":\"\",\"mode\":\"live\"}', 5, NULL),
(6, 'Razorpay', 'https://excelcdn.in/smm/admin/images/payment-methods/razorpay.png', 'Razorpay', 'razorPay', 1, 10000, 0, 0, 0, 'INR', '0', '{\"APIPublicKey\":\"\",\"APISecretKey\":\"\",\"gatewayThemeColour\":\"\"}', 6, NULL),
(7, 'PhonePe (Automatic)', 'https://excelcdn.in/smm/admin/images/payment-methods/phonepe.png', 'PhonePe (Automatic)', 'phonepe', 1, 10000, 0, 0, 0, 'INR', '1', '{\"email\":\"\",\"password\":\"\"}', 7, ''),
(8, 'Easypaisa (Automatic)', 'https://excelcdn.in/smm/admin/images/payment-methods/easypaisa.png', 'Easypaisa (Automatic)', 'easypaisa', 1, 50000, 0, 0, 0, 'PKR', '0', '{\"email\":\"\",\"password\":\"\",\"senderEmail\":\"\",\"emailSubject\":\"easypaisa\"}', 8, NULL),
(9, 'Jazzcash (Automatic)', 'https://excelcdn.in/smm/admin/images/payment-methods/jazzcash.png', 'Jazzcash (Automatic)', 'jazzcash', 1, 50000, 0, 0, 0, 'PKR', '0', '{\"email\":\"\",\"password\":\"\",\"senderEmail\":\"\",\"emailSubject\":\"jazzcash\"}', 9, NULL),
(10, 'Instamojo', 'https://excelcdn.in/smm/admin/images/payment-methods/instamojo.jpg', 'Instamojo', 'instamojo', 1, 1000, 0, 0, 0, 'INR', '0', '{\"APIKey\":\"\",\"authToken\":\"\"}', 10, NULL),
(11, 'Cashmaal', 'https://excelcdn.in/smm/admin/images/payment-methods/cashmaal.png', 'Cashmaal', 'cashmaal', 1, 50000, 0, 0, 0, 'PKR', '0', '{\"webId\":\"\"}', 11, NULL),
(12, 'Alipay', 'https://excelcdn.in/smm/admin/images/payment-methods/alipay.png', 'Alipay', 'alipay', 1, 10000, 0, 0, 0, 'USD', '0', '{\"partnerId\":\"\",\"privateKey\":\"\"}', 12, NULL),
(13, 'PayU', 'https://excelcdn.in/smm/admin/images/payment-methods/payu.png', 'PayU', 'payU', 1, 10000, 0, 0, 0, 'INR', '0', '{\"merchantKey\":\"\",\"merchantSalt\":\"\"}', 13, NULL),
(14, 'UpiApi', 'https://excelcdn.in/smm/admin/images/payment-methods/upiapi.png', 'UpiApi', 'upiapi', 1, 10000, 0, 0, 0, 'INR', '1', '{\"productionAPIToken\":\"\",\"productionAPISecretKey\":\"\"}', 2, ''),
(15, 'Opay Express Checkout', 'https://excelcdn.in/smm/admin/images/payment-methods/opay.png', 'Opay Express Checkout', 'opay', 1, 10000, 0, 0, 0, 'USD', '0', '{\"merchantId\":\"\",\"publicKey\":\"\",\"secretKey\":\"\"}', 3, ''),
(16, 'Flutterwave', 'https://excelcdn.in/smm/admin/images/payment-methods/flutterwave.png', 'Flutterwave', 'flutterwave', 1, 1000, 0, 0, 0, 'USD', '0', '{\"secretKey\":\"\"}', 3, ''),
(17, 'Stripe', 'https://excelcdn.in/smm/admin/images/payment-methods/stripe.png', 'Stripe', 'stripe', 1, 1000, 0, 0, 0, 'USD', '0', '{\"publishableKey\":\"\",\"secretKey\":\"\"}', 1, ''),
(18, 'Payeer', 'https://excelcdn.in/smm/admin/images/payment-methods/payeer.png', 'Payeer', 'payeer', 1, 1000, 0, 0, 0, 'USD', '0', '{\"shopId\":\"\",\"secretKey\":\"\"}', 1, ''),
(100, 'Manual One', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual One', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 2, NULL),
(101, 'Manual Two', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Two', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 3, NULL),
(102, 'Manual Three', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Three', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 4, NULL),
(103, 'Manual Four', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Four', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 2, NULL),
(104, 'Manual Five', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Five', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 18, NULL),
(105, 'Manual Six', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Six', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 19, NULL),
(106, 'Manual Seven', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Seven', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 20, NULL),
(107, 'Manual Eight', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Eight', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 21, NULL),
(108, 'Manual Nine', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Nine', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 22, NULL),
(109, 'Manual Ten', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Ten', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 23, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int NOT NULL,
  `client_id` int NOT NULL,
  `client_balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `payment_amount` decimal(15,4) NOT NULL,
  `payment_privatecode` double DEFAULT NULL,
  `payment_method` int NOT NULL,
  `payment_status` enum('1','2','3') NOT NULL DEFAULT '1',
  `payment_delivery` enum('1','2') NOT NULL DEFAULT '1',
  `payment_note` varchar(255) NOT NULL DEFAULT 'No',
  `payment_mode` enum('Manual','Automatic') NOT NULL DEFAULT 'Automatic',
  `payment_create_date` datetime NOT NULL,
  `payment_update_date` datetime NOT NULL,
  `payment_ip` varchar(225) NOT NULL,
  `payment_extra` text NOT NULL,
  `payment_bank` int NOT NULL,
  `t_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `client_id`, `client_balance`, `payment_amount`, `payment_privatecode`, `payment_method`, `payment_status`, `payment_delivery`, `payment_note`, `payment_mode`, `payment_create_date`, `payment_update_date`, `payment_ip`, `payment_extra`, `payment_bank`, `t_id`) VALUES
(1, 1, 46.26, 10.0000, NULL, 1, '3', '2', 'No', 'Manual', '2023-09-07 05:02:12', '0000-00-00 00:00:00', '27.57.99.60', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `referral_id` int NOT NULL,
  `referral_client_id` int NOT NULL,
  `referral_clicks` double NOT NULL DEFAULT '0',
  `referral_sign_up` double NOT NULL DEFAULT '0',
  `referral_totalFunds_byReffered` double NOT NULL DEFAULT '0',
  `referral_earned_commision` double DEFAULT '0',
  `referral_requested_commision` varchar(225) DEFAULT '0',
  `referral_total_commision` double DEFAULT '0',
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `referral_code` text NOT NULL,
  `referral_rejected_commision` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`referral_id`, `referral_client_id`, `referral_clicks`, `referral_sign_up`, `referral_totalFunds_byReffered`, `referral_earned_commision`, `referral_requested_commision`, `referral_total_commision`, `referral_status`, `referral_code`, `referral_rejected_commision`) VALUES
(1, 1, 0, 0, 0, 0, '0', 0, '1', '612682', 0);

-- --------------------------------------------------------

--
-- Table structure for table `referral_payouts`
--

CREATE TABLE `referral_payouts` (
  `r_p_id` int NOT NULL,
  `r_p_code` text NOT NULL,
  `r_p_status` enum('1','2','3','4','0') NOT NULL DEFAULT '0',
  `r_p_amount_requested` double NOT NULL,
  `r_p_requested_at` datetime NOT NULL,
  `r_p_updated_at` datetime NOT NULL,
  `client_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `serviceapi_alert`
--

CREATE TABLE `serviceapi_alert` (
  `id` int NOT NULL,
  `service_id` int NOT NULL,
  `serviceapi_alert` text NOT NULL,
  `servicealert_extra` text NOT NULL,
  `servicealert_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int NOT NULL,
  `service_api` int NOT NULL DEFAULT '0',
  `api_service` int NOT NULL DEFAULT '0',
  `api_servicetype` enum('1','2') NOT NULL DEFAULT '2',
  `api_detail` text NOT NULL,
  `category_id` int NOT NULL,
  `service_line` double NOT NULL,
  `service_type` enum('1','2') NOT NULL DEFAULT '2',
  `service_package` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17') NOT NULL,
  `service_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `service_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `service_price` varchar(225) NOT NULL,
  `service_min` double NOT NULL,
  `service_max` double NOT NULL,
  `service_dripfeed` enum('1','2') NOT NULL DEFAULT '1',
  `service_autotime` double NOT NULL DEFAULT '0',
  `service_autopost` double NOT NULL DEFAULT '0',
  `service_speed` enum('1','2','3','4') NOT NULL,
  `want_username` enum('1','2') NOT NULL DEFAULT '1',
  `service_secret` enum('1','2') NOT NULL DEFAULT '2',
  `price_type` enum('normal','percent','amount') NOT NULL DEFAULT 'normal',
  `price_cal` text,
  `instagram_second` enum('1','2') NOT NULL DEFAULT '2',
  `start_count` enum('none','instagram_follower','instagram_photo','') NOT NULL,
  `instagram_private` enum('1','2') NOT NULL,
  `name_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `description_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `time_lang` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `time` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'false',
  `service_profit` varchar(225) NOT NULL,
  `refill_days` varchar(225) NOT NULL DEFAULT '30',
  `refill_hours` varchar(225) NOT NULL DEFAULT '24',
  `avg_days` int NOT NULL,
  `avg_hours` int NOT NULL,
  `avg_minutes` int NOT NULL,
  `avg_many` int NOT NULL,
  `price_profit` int NOT NULL,
  `service_overflow` int NOT NULL DEFAULT '0',
  `service_sync` enum('0','1') NOT NULL DEFAULT '1',
  `service_deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_api`, `api_service`, `api_servicetype`, `api_detail`, `category_id`, `service_line`, `service_type`, `service_package`, `service_name`, `service_description`, `service_price`, `service_min`, `service_max`, `service_dripfeed`, `service_autotime`, `service_autopost`, `service_speed`, `want_username`, `service_secret`, `price_type`, `price_cal`, `instagram_second`, `start_count`, `instagram_private`, `name_lang`, `description_lang`, `time_lang`, `time`, `cancelbutton`, `show_refill`, `service_profit`, `refill_days`, `refill_hours`, `avg_days`, `avg_hours`, `avg_minutes`, `avg_many`, `price_profit`, `service_overflow`, `service_sync`, `service_deleted`) VALUES
(1, 1, 650, '2', '{\"min\":\"50\",\"max\":\"10000\",\"rate\":\"2.98\",\"currency\":\"INR\"}', 1, 1, '2', '1', 'Instagram |- Impressions + Reach from Explore', 'Start in - 0 - 5 Minutes\r\n\r\nSpeed After Start - 5K-10K/Day\r\n\r\nLess DIlivery  - No\r\n\r\nRefill - No\r\n\r\nCancel Button - Not Working\r\n\r\nLink - Post Link\r\n\r\n➕Addition Information\r\n📈Service Grade - A\r\n➡️No Less Delivery Issue \r\n➡️Working Smooth\r\n➡️Mostly Orders Completed Within 3 Hours\r\n➡️It Takes 3 - 6 Hours to Update ', '3.874', 50, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram |- Impressions + Reach from Explore\"}', '{\"en\":\"Start in - 0 - 5 Minutes\\r\\n\\r\\nSpeed After Start - 5K-10K\\/Day\\r\\n\\r\\nLess DIlivery  - No\\r\\n\\r\\nRefill - No\\r\\n\\r\\nCancel Button - Not Working\\r\\n\\r\\nLink - Post Link\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udcc8Service Grade - A\\r\\n\\u27a1\\ufe0fNo Less Delivery Issue \\r\\n\\u27a1\\ufe0fWorking Smooth\\r\\n\\u27a1\\ufe0fMostly Orders Completed Within 3 Hours\\r\\n\\u27a1\\ufe0fIt Takes 3 - 6 Hours to Update \"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(2, 1, 1131, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"2.87\",\"currency\":\"INR\"}', 1, 2, '2', '1', '❤️Instagram Likes |- From Old Profiles with 6 to 15 Posts', 'Start - Instant \r\n\r\nSpeed -  30K in Day Easily \r\n\r\nQuality - Old Profiles with 6 to 15 Posts\r\n\r\nDrop - No Drop\r\n\r\nRefill - Lifetime \r\n\r\n🔗Link  - Post Link\r\n\r\n➕Addition Information \r\n📊Service Grade - A Grade\r\n➡️Recommended For Resellers\r\n➡️Speed UP Also Possible \r\n➡️Mostly Orders Complete Within 30 Minutes ', '3.731', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\u2764\\ufe0fInstagram Likes |- From Old Profiles with 6 to 15 Posts\"}', '{\"en\":\"Start - Instant \\r\\n\\r\\nSpeed -  30K in Day Easily \\r\\n\\r\\nQuality - Old Profiles with 6 to 15 Posts\\r\\n\\r\\nDrop - No Drop\\r\\n\\r\\nRefill - Lifetime \\r\\n\\r\\n\\ud83d\\udd17Link  - Post Link\\r\\n\\r\\n\\u2795Addition Information \\r\\n\\ud83d\\udccaService Grade - A Grade\\r\\n\\u27a1\\ufe0fRecommended For Resellers\\r\\n\\u27a1\\ufe0fSpeed UP Also Possible \\r\\n\\u27a1\\ufe0fMostly Orders Complete Within 30 Minutes \"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(3, 1, 1705, '2', '{\"min\":\"10\",\"max\":\"3000\",\"rate\":\"5.87\",\"currency\":\"INR\"}', 1, 3, '2', '1', '👥Instagram Bot Followers |- No Refill', 'Start in - 0 - 2 Hours\r\n\r\nSpeed After Start - 1K-3K/Day\r\n\r\nQuality - Bot\r\n\r\nDrop Ratio - High Drop\r\n\r\nRefill - Not Possible \r\n\r\nCancel Button - Working\r\n\r\nLink - Profile Link\r\n\r\n➕Addition Information\r\n\r\n📈Service Grade - C\r\n➡️Have High Drop\r\n➡️Not Reccomended\r\n➡️Speed Up Psssible \r\n➡️Some Time Drops Starts Instantly', '7.631', 10, 3000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Bot Followers |- No Refill\"}', '{\"en\":\"Start in - 0 - 2 Hours\\r\\n\\r\\nSpeed After Start - 1K-3K\\/Day\\r\\n\\r\\nQuality - Bot\\r\\n\\r\\nDrop Ratio - High Drop\\r\\n\\r\\nRefill - Not Possible \\r\\n\\r\\nCancel Button - Working\\r\\n\\r\\nLink - Profile Link\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\r\\n\\ud83d\\udcc8Service Grade - C\\r\\n\\u27a1\\ufe0fHave High Drop\\r\\n\\u27a1\\ufe0fNot Reccomended\\r\\n\\u27a1\\ufe0fSpeed Up Psssible \\r\\n\\u27a1\\ufe0fSome Time Drops Starts Instantly\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(4, 1, 1806, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"26.6\",\"currency\":\"INR\"}', 1, 4, '2', '1', 'Instagram Followers |-💧 0 - 10% Drop Normally - 🇮🇳𝐌𝐨𝐬𝐭𝐥𝐲 𝐈𝐧𝐝𝐢𝐚𝐧 𝐍𝐚𝐦𝐞𝐬 - No Refill', 'Start -  0 - 5 Minutes Normally \r\n\r\nQuality - Mostly Old Indian Profiles \r\n\r\nSpeed - Easily 20K to 30K Per Day \r\n\r\nDrop Ratio - 0 - 10% Normally \r\n\r\nRefill - No Refill Possible \r\n\r\nCancel - Button Working  \r\n\r\n🔗Link - Account link \r\n\r\n➕Addition Information\r\n📊Service Grade - B+ Grade\r\n', '34.58', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |-\\ud83d\\udca7 0 - 10% Drop Normally - \\ud83c\\uddee\\ud83c\\uddf3\\ud835\\udc0c\\ud835\\udc28\\ud835\\udc2c\\ud835\\udc2d\\ud835\\udc25\\ud835\\udc32 \\ud835\\udc08\\ud835\\udc27\\ud835\\udc1d\\ud835\\udc22\\ud835\\udc1a\\ud835\\udc27 \\ud835\\udc0d\\ud835\\udc1a\\ud835\\udc26\\ud835\\udc1e\\ud835\\udc2c - No Refill\"}', '{\"en\":\"Start -  0 - 5 Minutes Normally \\r\\n\\r\\nQuality - Mostly Old Indian Profiles \\r\\n\\r\\nSpeed - Easily 20K to 30K Per Day \\r\\n\\r\\nDrop Ratio - 0 - 10% Normally \\r\\n\\r\\nRefill - No Refill Possible \\r\\n\\r\\nCancel - Button Working  \\r\\n\\r\\n\\ud83d\\udd17Link - Account link \\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - B+ Grade\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(5, 1, 1571, '2', '{\"min\":\"50\",\"max\":\"250000\",\"rate\":\"38.9\",\"currency\":\"INR\"}', 2, 5, '2', '1', 'Instagram Followers |-💧𝟭𝟬𝟬% 𝗡𝗼𝗻 𝗗𝗿𝗼𝗽 - 60K/Day - ♻️Lifetime  -🔥𝐀𝐥𝐰𝐚𝐲𝐬 𝐖𝐨𝐫𝐤𝐬', 'Start in - 0 - 2 Minutes Normally\r\n\r\nSpeed After Start - Approx. 50K - 60K/Day\r\n\r\nQuality - Old Accounts With Posts\r\n\r\nDrop - Non Drop\r\n\r\nRefill - Lifetime [ Button Working ]\r\n\r\nLook -World Wide\r\n\r\nBase - 250K\r\n\r\n🔗Link - Profile URL\r\n\r\n➕Addition Information\r\n📊Service Grade - 🅰+ Grade\r\n♻️Refill Button Always Working\r\n🤝Good Support In this Service ', '50.57', 50, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |-\\ud83d\\udca7\\ud835\\udfed\\ud835\\udfec\\ud835\\udfec% \\ud835\\udde1\\ud835\\uddfc\\ud835\\uddfb \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd - 60K\\/Day - \\u267b\\ufe0fLifetime  -\\ud83d\\udd25\\ud835\\udc00\\ud835\\udc25\\ud835\\udc30\\ud835\\udc1a\\ud835\\udc32\\ud835\\udc2c \\ud835\\udc16\\ud835\\udc28\\ud835\\udc2b\\ud835\\udc24\\ud835\\udc2c\"}', '{\"en\":\"Start in - 0 - 2 Minutes Normally\\r\\n\\r\\nSpeed After Start - Approx. 50K - 60K\\/Day\\r\\n\\r\\nQuality - Old Accounts With Posts\\r\\n\\r\\nDrop - Non Drop\\r\\n\\r\\nRefill - Lifetime [ Button Working ]\\r\\n\\r\\nLook -World Wide\\r\\n\\r\\nBase - 250K\\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70+ Grade\\r\\n\\u267b\\ufe0fRefill Button Always Working\\r\\n\\ud83e\\udd1dGood Support In this Service \"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(6, 1, 1777, '2', '{\"min\":\"10\",\"max\":\"300000\",\"rate\":\"33.3\",\"currency\":\"INR\"}', 2, 6, '2', '1', 'Instagram Followers |- Almost Stable -  20K Per Day -🔄️ 365 Days ', 'Service Last Updated in - 01-08-2023\r\n\r\nStart -  Almost Instant \r\n\r\nSpeed - Approx. 20K  Per Day \r\n\r\nDrop Ratio - Almost Stable \r\n\r\nRefill - 365 Days \r\n\r\nQuality - Real High \r\n\r\n\r\n🔗Link - Account link \r\n\r\n➕Addition Information\r\n📊Service Grade - 🅰Grade', '43.29', 10, 300000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |- Almost Stable -  20K Per Day -\\ud83d\\udd04\\ufe0f 365 Days \"}', '{\"en\":\"Service Last Updated in - 01-08-2023\\r\\n\\r\\nStart -  Almost Instant \\r\\n\\r\\nSpeed - Approx. 20K  Per Day \\r\\n\\r\\nDrop Ratio - Almost Stable \\r\\n\\r\\nRefill - 365 Days \\r\\n\\r\\nQuality - Real High \\r\\n\\r\\n\\r\\n\\ud83d\\udd17Link - Account link \\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70Grade\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(7, 1, 1435, '2', '{\"min\":\"100\",\"max\":\"3000000\",\"rate\":\"39.78\",\"currency\":\"INR\"}', 2, 7, '2', '1', 'Instagram Followers |- 👑𝐏𝐞𝐫𝐦𝐚𝐧𝐞𝐧𝐭', 'Start in - 1- 5 Minutes Normally\r\n\r\nQuality - Premium \r\n\r\nSpeed After Start - Approx. 40K - 60K/Day\r\n\r\nDrop Ratio -  Zero Present [ Duo To Daily Refill ]\r\n\r\nRefill - Lifetime \r\n\r\nLook - Real \r\n. \r\nLink - Profile URL\r\n\r\n➕Addition Information \r\n📊Service Grade - 🅰+Grade\r\n👑King of Market\r\n🌠Daily Refill At 2 Am\r\n💎No Drop From Last 2 Years', '51.714', 100, 3000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |- \\ud83d\\udc51\\ud835\\udc0f\\ud835\\udc1e\\ud835\\udc2b\\ud835\\udc26\\ud835\\udc1a\\ud835\\udc27\\ud835\\udc1e\\ud835\\udc27\\ud835\\udc2d\"}', '{\"en\":\"Start in - 1- 5 Minutes Normally\\r\\n\\r\\nQuality - Premium \\r\\n\\r\\nSpeed After Start - Approx. 40K - 60K\\/Day\\r\\n\\r\\nDrop Ratio -  Zero Present [ Duo To Daily Refill ]\\r\\n\\r\\nRefill - Lifetime \\r\\n\\r\\nLook - Real \\r\\n. \\r\\nLink - Profile URL\\r\\n\\r\\n\\u2795Addition Information \\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70+Grade\\r\\n\\ud83d\\udc51King of Market\\r\\n\\ud83c\\udf20Daily Refill At 2 Am\\r\\n\\ud83d\\udc8eNo Drop From Last 2 Years\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(8, 1, 1399, '2', '{\"min\":\"20\",\"max\":\"450000\",\"rate\":\"47.7\",\"currency\":\"INR\"}', 2, 8, '2', '1', 'Instagram Followers |- 🔥Non Drop - Old Accounts - Lifetime - 𝗙𝗮𝘀𝘁𝗲𝘀𝘁 𝗜𝗻 𝗠𝗮𝗿𝗸𝗲𝘁 ⚡⚡', '➡️Philippines Special Import\r\n➡️Service Grade - 🅰+Grade\r\n➡️Fastest Service in Market\r\n➡️Best For Big Orders \r\n\r\n▶️Start in- Instant\r\n\r\n⏳Speed After Start  - Approx. 200K/Day\r\n\r\n💎Quality - Premium \r\n\r\n🔥Drop - Non Drop\r\n\r\n♻️Refill - Lifetime ( Button Working ) \r\n\r\n📍Look - Englisher \r\n\r\n🐘Base - 450K\r\n\r\n✖️Cancel - Accepted Within 1 minutes\r\n\r\n🔗Link - Profile URL\r\n', '62.01', 20, 450000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |- \\ud83d\\udd25Non Drop - Old Accounts - Lifetime - \\ud835\\uddd9\\ud835\\uddee\\ud835\\ude00\\ud835\\ude01\\ud835\\uddf2\\ud835\\ude00\\ud835\\ude01 \\ud835\\udddc\\ud835\\uddfb \\ud835\\udde0\\ud835\\uddee\\ud835\\uddff\\ud835\\uddf8\\ud835\\uddf2\\ud835\\ude01 \\u26a1\\u26a1\"}', '{\"en\":\"\\u27a1\\ufe0fPhilippines Special Import\\r\\n\\u27a1\\ufe0fService Grade - \\ud83c\\udd70+Grade\\r\\n\\u27a1\\ufe0fFastest Service in Market\\r\\n\\u27a1\\ufe0fBest For Big Orders \\r\\n\\r\\n\\u25b6\\ufe0fStart in- Instant\\r\\n\\r\\n\\u23f3Speed After Start  - Approx. 200K\\/Day\\r\\n\\r\\n\\ud83d\\udc8eQuality - Premium \\r\\n\\r\\n\\ud83d\\udd25Drop - Non Drop\\r\\n\\r\\n\\u267b\\ufe0fRefill - Lifetime ( Button Working ) \\r\\n\\r\\n\\ud83d\\udccdLook - Englisher \\r\\n\\r\\n\\ud83d\\udc18Base - 450K\\r\\n\\r\\n\\u2716\\ufe0fCancel - Accepted Within 1 minutes\\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(9, 1, 1564, '2', '{\"min\":\"20\",\"max\":\"800000\",\"rate\":\"34.7\",\"currency\":\"INR\"}', 2, 9, '2', '1', 'Instagram Followers |-🔥Non Drop - All Old Accounts  - 100K+/Day [ LifeTime ] - 👑 𝗕𝗘𝗦𝗧 𝗦𝗘𝗟𝗟𝗘𝗥', '➡️Norway Special Import\r\n➡️Our Best Selling Service \r\n➡️Service Grade - 🅰+Grade\r\n➡️No Drop Issue \r\n\r\nStart in - Instant \r\n\r\nSpeed After Start - Approx. 100K/Day\r\n\r\nQuality - Old Accounts With Posts\r\n\r\nDrop - Non DROP\r\n\r\nRefill - Lifetime [ Button Working ]\r\n\r\nLook - World Wide \r\n\r\nCancel -  Accepted Within 15 Minutes\r\n\r\nBase - 800K\r\n\r\n🔗Link - Profile URL\r\n\r\n\r\n\r\n', '45.11', 20, 800000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |-\\ud83d\\udd25Non Drop - All Old Accounts  - 100K+\\/Day [ LifeTime ] - \\ud83d\\udc51 \\ud835\\uddd5\\ud835\\uddd8\\ud835\\udde6\\ud835\\udde7 \\ud835\\udde6\\ud835\\uddd8\\ud835\\udddf\\ud835\\udddf\\ud835\\uddd8\\ud835\\udde5\"}', '{\"en\":\"\\u27a1\\ufe0fNorway Special Import\\r\\n\\u27a1\\ufe0fOur Best Selling Service \\r\\n\\u27a1\\ufe0fService Grade - \\ud83c\\udd70+Grade\\r\\n\\u27a1\\ufe0fNo Drop Issue \\r\\n\\r\\nStart in - Instant \\r\\n\\r\\nSpeed After Start - Approx. 100K\\/Day\\r\\n\\r\\nQuality - Old Accounts With Posts\\r\\n\\r\\nDrop - Non DROP\\r\\n\\r\\nRefill - Lifetime [ Button Working ]\\r\\n\\r\\nLook - World Wide \\r\\n\\r\\nCancel -  Accepted Within 15 Minutes\\r\\n\\r\\nBase - 800K\\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\\r\\n\\r\\n\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(10, 1, 1363, '2', '{\"min\":\"10\",\"max\":\"250000\",\"rate\":\"50\",\"currency\":\"INR\"}', 3, 10, '2', '1', '👥Instagram Followers |-🔥Non Drop - 𝟮𝟬𝟬𝗞+ 𝗣𝗲𝗿 𝗗𝗮𝘆 - R365 - 𝐈𝐧𝐬𝐭𝐚𝐧𝐭 𝐂𝐨𝐦𝐩𝐥𝐞𝐭𝐞 ⚡⚡', '▶️Start in - Instant \r\n\r\n⏳Speed After Start - Approx. 200K+/Day\r\n\r\n💎Quality - Supper High\r\n\r\n🔥Drop - Non Drop\r\n\r\n♻️Refill -  365 Days [ Button Working ]\r\n\r\n📍Look - All Account With DP and Posts\r\n\r\n🔗Link - Profile URL\r\n\r\n➕Addition Information\r\n📊Service Grade - 🅰 Grade\r\n🔥Good For Big Orders\r\n♻️Refill Button Always Working\r\n🤝Fastest Service In The Market ', '65', 10, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |-\\ud83d\\udd25Non Drop - \\ud835\\udfee\\ud835\\udfec\\ud835\\udfec\\ud835\\uddde+ \\ud835\\udde3\\ud835\\uddf2\\ud835\\uddff \\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06 - R365 - \\ud835\\udc08\\ud835\\udc27\\ud835\\udc2c\\ud835\\udc2d\\ud835\\udc1a\\ud835\\udc27\\ud835\\udc2d \\ud835\\udc02\\ud835\\udc28\\ud835\\udc26\\ud835\\udc29\\ud835\\udc25\\ud835\\udc1e\\ud835\\udc2d\\ud835\\udc1e \\u26a1\\u26a1\"}', '{\"en\":\"\\u25b6\\ufe0fStart in - Instant \\r\\n\\r\\n\\u23f3Speed After Start - Approx. 200K+\\/Day\\r\\n\\r\\n\\ud83d\\udc8eQuality - Supper High\\r\\n\\r\\n\\ud83d\\udd25Drop - Non Drop\\r\\n\\r\\n\\u267b\\ufe0fRefill -  365 Days [ Button Working ]\\r\\n\\r\\n\\ud83d\\udccdLook - All Account With DP and Posts\\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70 Grade\\r\\n\\ud83d\\udd25Good For Big Orders\\r\\n\\u267b\\ufe0fRefill Button Always Working\\r\\n\\ud83e\\udd1dFastest Service In The Market \"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(11, 1, 1397, '2', '{\"min\":\"50\",\"max\":\"300000\",\"rate\":\"33.8\",\"currency\":\"INR\"}', 3, 11, '2', '1', '👥Instagram Followers |- 𝟰𝟬𝗞/𝗗𝗮𝘆 - 💧𝟬-𝟮% 𝗗𝗿𝗼𝗽 - 🔄️ Refill Button Working For 1 Year ', 'Start - 0 - 5 Minutes \r\n\r\nSpeed - Approx. 40K/Day \r\n\r\nQuality - Old Accounts Database \r\n\r\nDrop Ratio - 0-2% Normally \r\n\r\nRefill -  Button Working For 365 Day\\\'s \r\n\r\nLook - Short Name \r\n\r\nCancel - manual By Ticket\r\n\r\n🔗Link  - Profile URL', '43.94', 50, 300000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- \\ud835\\udff0\\ud835\\udfec\\ud835\\uddde\\/\\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06 - \\ud83d\\udca7\\ud835\\udfec-\\ud835\\udfee% \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd - \\ud83d\\udd04\\ufe0f Refill Button Working For 1 Year \"}', '{\"en\":\"Start - 0 - 5 Minutes \\r\\n\\r\\nSpeed - Approx. 40K\\/Day \\r\\n\\r\\nQuality - Old Accounts Database \\r\\n\\r\\nDrop Ratio - 0-2% Normally \\r\\n\\r\\nRefill -  Button Working For 365 Day\\\\\'s \\r\\n\\r\\nLook - Short Name \\r\\n\\r\\nCancel - manual By Ticket\\r\\n\\r\\n\\ud83d\\udd17Link  - Profile URL\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(12, 1, 1404, '2', '{\"min\":\"100\",\"max\":\"250000\",\"rate\":\"37.8\",\"currency\":\"INR\"}', 3, 12, '2', '1', '👥Instagram Followers |- Supper Stable - ♻️𝗥𝗲𝗮𝗹 𝟯𝟲𝟱 𝗗𝗮𝘆𝘀 𝗔𝘂𝘁𝗼 𝗥𝗲𝗳𝗶𝗹𝗹 ', '📊Service Grade - 🅰++Grade\r\n➡️Auto Refill  100% Working \r\n➡️Best Service In Update \r\n➡️Best Unstable  Accounts \r\n\r\n\r\nStart - 0 - 5 Minutes Normally \r\n\r\nSpeed - Approx. 30K - 50K/Day \r\n\r\nQuality - Old Account [ Best Database ]\r\n\r\nDrop - Zero Drop { No Drop Issue )\r\n\r\nRefill - 365 Days Auto Refill \r\n\r\nLook - Worldwide \r\n\r\nCancel - Manual By Ticket \r\n\r\nLink  - Profile URL\r\n', '49.14', 100, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- Supper Stable - \\u267b\\ufe0f\\ud835\\udde5\\ud835\\uddf2\\ud835\\uddee\\ud835\\uddf9 \\ud835\\udfef\\ud835\\udff2\\ud835\\udff1 \\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\ud835\\ude00 \\ud835\\uddd4\\ud835\\ude02\\ud835\\ude01\\ud835\\uddfc \\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 \"}', '{\"en\":\"\\ud83d\\udccaService Grade - \\ud83c\\udd70++Grade\\r\\n\\u27a1\\ufe0fAuto Refill  100% Working \\r\\n\\u27a1\\ufe0fBest Service In Update \\r\\n\\u27a1\\ufe0fBest Unstable  Accounts \\r\\n\\r\\n\\r\\nStart - 0 - 5 Minutes Normally \\r\\n\\r\\nSpeed - Approx. 30K - 50K\\/Day \\r\\n\\r\\nQuality - Old Account [ Best Database ]\\r\\n\\r\\nDrop - Zero Drop { No Drop Issue )\\r\\n\\r\\nRefill - 365 Days Auto Refill \\r\\n\\r\\nLook - Worldwide \\r\\n\\r\\nCancel - Manual By Ticket \\r\\n\\r\\nLink  - Profile URL\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(13, 1, 1417, '2', '{\"min\":\"10\",\"max\":\"650000\",\"rate\":\"33.5\",\"currency\":\"INR\"}', 4, 13, '2', '1', '👥Instagram Followers |-🔥Non Drop - 60K/Day - 𝗥𝗲𝘀𝗲𝗹𝗹𝗲𝗿𝘀 𝗖𝗵𝗼𝗶𝗰𝗲', '➡️Philippines Special Import\r\n📊Service Grade - 🅰+ Grade\r\n♻️Refill Button Always Working\r\n🤝Instant Cancel Available  \r\n\r\n\r\nStart in - Instant\r\n\r\nSpeed After Start - Approx. 70K - 80K/Day\r\n\r\nQuality - Supper High\r\n\r\nDrop -  Non Drop\r\n\r\nRefill - Lifetime (Button Working)\r\n\r\nLook - Worldwide \r\n\r\n✖️Cancel - Accepted Within 30 Seconds \r\n\r\n🐘Base - 650K\r\n\r\n🔗Link  - Profile URL', '43.55', 10, 650000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |-\\ud83d\\udd25Non Drop - 60K\\/Day - \\ud835\\udde5\\ud835\\uddf2\\ud835\\ude00\\ud835\\uddf2\\ud835\\uddf9\\ud835\\uddf9\\ud835\\uddf2\\ud835\\uddff\\ud835\\ude00 \\ud835\\uddd6\\ud835\\uddf5\\ud835\\uddfc\\ud835\\uddf6\\ud835\\uddf0\\ud835\\uddf2\"}', '{\"en\":\"\\u27a1\\ufe0fPhilippines Special Import\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70+ Grade\\r\\n\\u267b\\ufe0fRefill Button Always Working\\r\\n\\ud83e\\udd1dInstant Cancel Available  \\r\\n\\r\\n\\r\\nStart in - Instant\\r\\n\\r\\nSpeed After Start - Approx. 70K - 80K\\/Day\\r\\n\\r\\nQuality - Supper High\\r\\n\\r\\nDrop -  Non Drop\\r\\n\\r\\nRefill - Lifetime (Button Working)\\r\\n\\r\\nLook - Worldwide \\r\\n\\r\\n\\u2716\\ufe0fCancel - Accepted Within 30 Seconds \\r\\n\\r\\n\\ud83d\\udc18Base - 650K\\r\\n\\r\\n\\ud83d\\udd17Link  - Profile URL\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(14, 1, 1586, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"58.6\",\"currency\":\"INR\"}', 4, 14, '2', '1', '👥Instagram Followers |- Stable - 𝗔𝘀𝗶𝗮𝗻 𝗔𝗰𝗰𝗼𝘂𝗻𝘁𝘀 - Lifetime Refill♻️', 'Start in  - 0 - 2 Minutes \r\n\r\nSpeed - 50k-70k/Day \r\n\r\nQuality - Old Account [ With Posts ]\r\n\r\nDrop Ratio - Stable\r\n\r\nRefill - Lifetime Refill { Button Working }\r\n\r\nLook - Asian Mix \r\n\r\nBase - 10 Million \r\n\r\n🔗Link  - Profile Url\r\n\r\n➕Addition Information \r\n📊Service Grade - 🅰+ Grade\r\n➡️Refill Button Always Works\r\n➡️No Drop Issue in this service \r\n➡️Biggest Base Service', '76.18', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- Stable - \\ud835\\uddd4\\ud835\\ude00\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb \\ud835\\uddd4\\ud835\\uddf0\\ud835\\uddf0\\ud835\\uddfc\\ud835\\ude02\\ud835\\uddfb\\ud835\\ude01\\ud835\\ude00 - Lifetime Refill\\u267b\\ufe0f\"}', '{\"en\":\"Start in  - 0 - 2 Minutes \\r\\n\\r\\nSpeed - 50k-70k\\/Day \\r\\n\\r\\nQuality - Old Account [ With Posts ]\\r\\n\\r\\nDrop Ratio - Stable\\r\\n\\r\\nRefill - Lifetime Refill { Button Working }\\r\\n\\r\\nLook - Asian Mix \\r\\n\\r\\nBase - 10 Million \\r\\n\\r\\n\\ud83d\\udd17Link  - Profile Url\\r\\n\\r\\n\\u2795Addition Information \\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70+ Grade\\r\\n\\u27a1\\ufe0fRefill Button Always Works\\r\\n\\u27a1\\ufe0fNo Drop Issue in this service \\r\\n\\u27a1\\ufe0fBiggest Base Service\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(15, 1, 1394, '2', '{\"min\":\"200\",\"max\":\"2000000\",\"rate\":\"42.89\",\"currency\":\"INR\"}', 4, 15, '2', '1', '👥Instagram Followers |- 50K/Day - Lifetime -🔥𝗕𝗲𝘀𝘁 𝗙𝗼𝗿 𝗨𝗻𝘀𝘁𝗮𝗯𝗹𝗲 𝗔𝗰𝗰𝗼𝘂𝗻𝘁𝘀', '➕Addition Information \r\n📊Service Grade - 🅰+Grade\r\n➡️Best Service For Unstable Accounts \r\n➡️Trusted  By Admin\r\n➡️No Drop Issue In This Service \r\n➡️ Special Import From Spain \r\n \r\nStart in - 0 - 2 Minutes  Normally \r\n\r\nSpeed - 40K - 50K Per Day \r\n\r\nQuality - Best Old Data Base \r\n\r\nDrop - No Drop Issue \r\n\r\nRefill - Lifetime  [ 𝗥𝗲𝗳𝗶𝗹𝗹 𝗕𝘂𝘁𝘁𝗼𝗻 𝗔𝗹𝘄𝗮𝘆𝘀 𝗪𝗼𝗿𝗸𝘀 ]\r\n\r\n🔗Link  - Profile URL\r\n\r\n\r\n', '55.757', 200, 2000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- 50K\\/Day - Lifetime -\\ud83d\\udd25\\ud835\\uddd5\\ud835\\uddf2\\ud835\\ude00\\ud835\\ude01 \\ud835\\uddd9\\ud835\\uddfc\\ud835\\uddff \\ud835\\udde8\\ud835\\uddfb\\ud835\\ude00\\ud835\\ude01\\ud835\\uddee\\ud835\\uddef\\ud835\\uddf9\\ud835\\uddf2 \\ud835\\uddd4\\ud835\\uddf0\\ud835\\uddf0\\ud835\\uddfc\\ud835\\ude02\\ud835\\uddfb\\ud835\\ude01\\ud835\\ude00\"}', '{\"en\":\"\\u2795Addition Information \\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70+Grade\\r\\n\\u27a1\\ufe0fBest Service For Unstable Accounts \\r\\n\\u27a1\\ufe0fTrusted  By Admin\\r\\n\\u27a1\\ufe0fNo Drop Issue In This Service \\r\\n\\u27a1\\ufe0f Special Import From Spain \\r\\n \\r\\nStart in - 0 - 2 Minutes  Normally \\r\\n\\r\\nSpeed - 40K - 50K Per Day \\r\\n\\r\\nQuality - Best Old Data Base \\r\\n\\r\\nDrop - No Drop Issue \\r\\n\\r\\nRefill - Lifetime  [ \\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 \\ud835\\uddd5\\ud835\\ude02\\ud835\\ude01\\ud835\\ude01\\ud835\\uddfc\\ud835\\uddfb \\ud835\\uddd4\\ud835\\uddf9\\ud835\\ude04\\ud835\\uddee\\ud835\\ude06\\ud835\\ude00 \\ud835\\uddea\\ud835\\uddfc\\ud835\\uddff\\ud835\\uddf8\\ud835\\ude00 ]\\r\\n\\r\\n\\ud83d\\udd17Link  - Profile URL\\r\\n\\r\\n\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(16, 1, 1442, '2', '{\"min\":\"50\",\"max\":\"600000\",\"rate\":\"44.3\",\"currency\":\"INR\"}', 4, 16, '2', '1', '👥Instagram Followers |-💧𝟬% 𝗗𝗿𝗼𝗽 - ♻️Lifetime Refill - 𝗥𝗲𝗰𝗼𝗺𝗺𝗲𝗻𝗱𝗲𝗱 𝗕𝘆 𝗔𝗱𝗺𝗶𝗻', 'Recommended By Admin \r\nUnlimited Refill \r\nRefill Button Active For 365 Days\r\n\r\nStart in - 0 - 2 Minutes \r\n\r\nSpeed After Start - 60K - 70K/Day \r\n\r\nQuality - Supper High\r\n\r\nDrop Ratio - 0% Drop\r\n\r\nRefill - Lifetime ( Button Always Work )\r\n\r\nLook - English And Asian Mix\r\n\r\nCancel - manual Support \r\n\r\nLink - Profile URL\r\n', '57.59', 50, 600000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |-\\ud83d\\udca7\\ud835\\udfec% \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd - \\u267b\\ufe0fLifetime Refill - \\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf0\\ud835\\uddfc\\ud835\\uddfa\\ud835\\uddfa\\ud835\\uddf2\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf2\\ud835\\uddf1 \\ud835\\uddd5\\ud835\\ude06 \\ud835\\uddd4\\ud835\\uddf1\\ud835\\uddfa\\ud835\\uddf6\\ud835\\uddfb\"}', '{\"en\":\"Recommended By Admin \\r\\nUnlimited Refill \\r\\nRefill Button Active For 365 Days\\r\\n\\r\\nStart in - 0 - 2 Minutes \\r\\n\\r\\nSpeed After Start - 60K - 70K\\/Day \\r\\n\\r\\nQuality - Supper High\\r\\n\\r\\nDrop Ratio - 0% Drop\\r\\n\\r\\nRefill - Lifetime ( Button Always Work )\\r\\n\\r\\nLook - English And Asian Mix\\r\\n\\r\\nCancel - manual Support \\r\\n\\r\\nLink - Profile URL\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(17, 1, 1449, '2', '{\"min\":\"100\",\"max\":\"250000\",\"rate\":\"36.4\",\"currency\":\"INR\"}', 4, 17, '2', '1', '👥Instagram Followers |- Ultra Stable - Lifetime - 𝗨𝗻𝗹𝗶𝗺𝗶𝘁𝗲𝗱 𝗥𝗲𝗳𝗶𝗹𝗹', '▶️Start - 0 - 5 Minutes Normally\r\n\r\n⏳Speed - Approx. 50K Per Day\r\n\r\n💎Quality - Old Database\r\n\r\n🔥Drop Ratio - Stable \r\n\r\n♻️Refill - 365 Days [ Button Working ]\r\n\r\n📍Look - Asian Mix\r\n\r\n✖️Cancel - Take 12 - 24 hours\r\n\r\n🔗Link - Profile URL\r\n\r\n➕Addition Information\r\n📊Service Grade - 🅰+Grade\r\n🔥Good For Small Sellers\r\n💨Speed is Good \r\n♻️100% Refill guarantee By Admin', '47.32', 100, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- Ultra Stable - Lifetime - \\ud835\\udde8\\ud835\\uddfb\\ud835\\uddf9\\ud835\\uddf6\\ud835\\uddfa\\ud835\\uddf6\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddf1 \\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9\"}', '{\"en\":\"\\u25b6\\ufe0fStart - 0 - 5 Minutes Normally\\r\\n\\r\\n\\u23f3Speed - Approx. 50K Per Day\\r\\n\\r\\n\\ud83d\\udc8eQuality - Old Database\\r\\n\\r\\n\\ud83d\\udd25Drop Ratio - Stable \\r\\n\\r\\n\\u267b\\ufe0fRefill - 365 Days [ Button Working ]\\r\\n\\r\\n\\ud83d\\udccdLook - Asian Mix\\r\\n\\r\\n\\u2716\\ufe0fCancel - Take 12 - 24 hours\\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70+Grade\\r\\n\\ud83d\\udd25Good For Small Sellers\\r\\n\\ud83d\\udca8Speed is Good \\r\\n\\u267b\\ufe0f100% Refill guarantee By Admin\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(18, 1, 1563, '2', '{\"min\":\"10\",\"max\":\"250000\",\"rate\":\"28.98\",\"currency\":\"INR\"}', 5, 18, '2', '1', '👥Instagram Followers |- Old Account - 60K/Day - 30 Day Refill Button 🔂', 'Start in -  0 - 10 Minutes\r\n\r\nSpeed After Start - 50K-60K/Day \r\n\r\nQuality - Old Accounts \r\n\r\nDrop Ratio - 0-5%\r\n\r\nRefill - 30 Days [ Button Working ]\r\n\r\nCancel -  Button Works  \r\n\r\nBase - 250K\r\n\r\nLink  - Profile Link\r\n\r\n\r\n➕Addition Information \r\n📈Service Grade 🅰\r\n🔄Unlimited Refill Limit \r\n🔄Refill Button Works Instant & Automatically  \r\n', '37.674', 10, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- Old Account - 60K\\/Day - 30 Day Refill Button \\ud83d\\udd02\"}', '{\"en\":\"Start in -  0 - 10 Minutes\\r\\n\\r\\nSpeed After Start - 50K-60K\\/Day \\r\\n\\r\\nQuality - Old Accounts \\r\\n\\r\\nDrop Ratio - 0-5%\\r\\n\\r\\nRefill - 30 Days [ Button Working ]\\r\\n\\r\\nCancel -  Button Works  \\r\\n\\r\\nBase - 250K\\r\\n\\r\\nLink  - Profile Link\\r\\n\\r\\n\\r\\n\\u2795Addition Information \\r\\n\\ud83d\\udcc8Service Grade \\ud83c\\udd70\\r\\n\\ud83d\\udd04Unlimited Refill Limit \\r\\n\\ud83d\\udd04Refill Button Works Instant & Automatically  \\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(19, 1, 1161, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"26.89\",\"currency\":\"INR\"}', 5, 19, '2', '1', '👥Instagram Followers |- Less Drop  - Application Data - 30 Day Refill Button 🔂', 'Start in - 0 - 15 Minutes Normally\r\n\r\nSpeed After Start - Approx. 15K+/Day\r\n\r\nQuality - Real Mix Accounts\r\n\r\nDrop - Almost Stable\r\n\r\nRefill -  30 Days [ Button Working ] \r\n\r\nLook - Worldwide\r\n\r\n🔗Link - Profile URL\r\n\r\n➕Addition Information\r\n📊Service Grade - 🅱+ Grade\r\n♻️Refill Button Always Working\r\n🤞🏻Good For Small Orders', '34.957', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- Less Drop  - Application Data - 30 Day Refill Button \\ud83d\\udd02\"}', '{\"en\":\"Start in - 0 - 15 Minutes Normally\\r\\n\\r\\nSpeed After Start - Approx. 15K+\\/Day\\r\\n\\r\\nQuality - Real Mix Accounts\\r\\n\\r\\nDrop - Almost Stable\\r\\n\\r\\nRefill -  30 Days [ Button Working ] \\r\\n\\r\\nLook - Worldwide\\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd71+ Grade\\r\\n\\u267b\\ufe0fRefill Button Always Working\\r\\n\\ud83e\\udd1e\\ud83c\\udffbGood For Small Orders\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(20, 1, 1776, '2', '{\"min\":\"10\",\"max\":\"250000\",\"rate\":\"46.64\",\"currency\":\"INR\"}', 5, 20, '2', '1', '👥Instagram Followers |- Long Name [Old Data Base] - 30K/Day - 30 Day Refill  Button🔂', '▶️Start in -  Instant \r\n\r\n⏳Speed After Start - 30K/Day \r\n\r\n💎Quality - Long  Old Data base \r\n\r\n🔥Drop Ratio - Non Drop \r\n\r\n♻️Refill - 30 Days ( Button Always Work )\r\n\r\n✖️Cancel -  Button Working \r\n\r\n🐘Base - 250K\r\n\r\n🔗Link  - Profile Link\r\n\r\n\r\n➕Addition Information \r\n📈Service Grade A+\r\n🔄Refill Button Active After 30 minutes of order completion\r\n🔄Refill Button Works Instant & Automatically  \r\n', '60.632', 10, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- Long Name [Old Data Base] - 30K\\/Day - 30 Day Refill  Button\\ud83d\\udd02\"}', '{\"en\":\"\\u25b6\\ufe0fStart in -  Instant \\r\\n\\r\\n\\u23f3Speed After Start - 30K\\/Day \\r\\n\\r\\n\\ud83d\\udc8eQuality - Long  Old Data base \\r\\n\\r\\n\\ud83d\\udd25Drop Ratio - Non Drop \\r\\n\\r\\n\\u267b\\ufe0fRefill - 30 Days ( Button Always Work )\\r\\n\\r\\n\\u2716\\ufe0fCancel -  Button Working \\r\\n\\r\\n\\ud83d\\udc18Base - 250K\\r\\n\\r\\n\\ud83d\\udd17Link  - Profile Link\\r\\n\\r\\n\\r\\n\\u2795Addition Information \\r\\n\\ud83d\\udcc8Service Grade A+\\r\\n\\ud83d\\udd04Refill Button Active After 30 minutes of order completion\\r\\n\\ud83d\\udd04Refill Button Works Instant & Automatically  \\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(21, 1, 1532, '2', '{\"min\":\"10\",\"max\":\"200000\",\"rate\":\"36.7\",\"currency\":\"INR\"}', 5, 21, '2', '1', '👥Instagram Followers |-  𝗗𝗿𝗶𝗽 𝗙𝗲𝗲𝗱 𝗘𝗻𝗮𝗯𝗹𝗲 - 90 Days Refill ', 'Start - 0 -1 Hour Normally\r\n\r\nSpeed - 30K-50K/Day \r\n\r\nQuality - Old\r\n\r\nDrop Ratio - No\r\n\r\nRefill - 365 Days [ Button Working ]\r\n\r\nCancel - Button Working \r\n\r\n🔗Link - Profile URL\r\n\r\n➕Addition Information\r\n📊Service Grade - AGrade', '47.71', 10, 200000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |-  \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddf6\\ud835\\uddfd \\ud835\\uddd9\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 \\ud835\\uddd8\\ud835\\uddfb\\ud835\\uddee\\ud835\\uddef\\ud835\\uddf9\\ud835\\uddf2 - 90 Days Refill \"}', '{\"en\":\"Start - 0 -1 Hour Normally\\r\\n\\r\\nSpeed - 30K-50K\\/Day \\r\\n\\r\\nQuality - Old\\r\\n\\r\\nDrop Ratio - No\\r\\n\\r\\nRefill - 365 Days [ Button Working ]\\r\\n\\r\\nCancel - Button Working \\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - AGrade\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(22, 1, 1805, '2', '{\"min\":\"10\",\"max\":\"300000\",\"rate\":\"29.96\",\"currency\":\"INR\"}', 5, 22, '2', '1', 'Instagram Followers |- No Drop - 𝟳 𝘁𝗼 𝟵 𝗣𝗼𝘀𝘁 𝗔𝗰𝗰𝗼𝘂𝗻𝘁𝘀 -🔄️ 30 Days Refill With Button', 'Start -  0 - 5 Minutes Normally \r\n\r\nSpeed - Approx. 15K to 30K Per Day \r\n\r\nDrop Ratio - No Drop\r\n\r\nRefill - 30 Days  With Button \r\n\r\nQuality - Worldwide\r\n\r\nCancel - Button Working  \r\n\r\n🔗Link - Account link \r\n\r\n➕Addition Information\r\n📊Service Grade - 🅰 Grade\r\nDiscount not Possible In this Service ', '38.948', 10, 300000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |- No Drop - \\ud835\\udff3 \\ud835\\ude01\\ud835\\uddfc \\ud835\\udff5 \\ud835\\udde3\\ud835\\uddfc\\ud835\\ude00\\ud835\\ude01 \\ud835\\uddd4\\ud835\\uddf0\\ud835\\uddf0\\ud835\\uddfc\\ud835\\ude02\\ud835\\uddfb\\ud835\\ude01\\ud835\\ude00 -\\ud83d\\udd04\\ufe0f 30 Days Refill With Button\"}', '{\"en\":\"Start -  0 - 5 Minutes Normally \\r\\n\\r\\nSpeed - Approx. 15K to 30K Per Day \\r\\n\\r\\nDrop Ratio - No Drop\\r\\n\\r\\nRefill - 30 Days  With Button \\r\\n\\r\\nQuality - Worldwide\\r\\n\\r\\nCancel - Button Working  \\r\\n\\r\\n\\ud83d\\udd17Link - Account link \\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70 Grade\\r\\nDiscount not Possible In this Service \"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(23, 1, 1804, '2', '{\"min\":\"10\",\"max\":\"500000\",\"rate\":\"37.5\",\"currency\":\"INR\"}', 5, 23, '2', '1', 'Instagram Followers |- 🔥𝗡𝗼 𝗗𝗿𝗼𝗽 𝗜𝘀𝘀𝘂𝗲 - Old Accounts - ⚡𝗜𝗻𝘀𝘁𝗮𝗻𝘁 𝗦𝘁𝗮𝗿𝘁 -  Refill Button Working For  90 Days', 'Start - Normally Instantly\r\n\r\nSpeed After Start - Approx.30K To 50 In Day\r\n\r\nQuality - All Old Accounts \r\n\r\nDrop - No Drop Issue \r\n\r\nRefill - 90 Days Button + (275 Days Manual By Ticket)\r\n\r\nLook - English\r\n\r\n🔗Link  - Profile Link\r\n\r\n➕Addition Information\r\n📊Service Grade - A Grade\r\n🤝Good Support In this Service', '48.75', 10, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |- \\ud83d\\udd25\\ud835\\udde1\\ud835\\uddfc \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd \\ud835\\udddc\\ud835\\ude00\\ud835\\ude00\\ud835\\ude02\\ud835\\uddf2 - Old Accounts - \\u26a1\\ud835\\udddc\\ud835\\uddfb\\ud835\\ude00\\ud835\\ude01\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01 \\ud835\\udde6\\ud835\\ude01\\ud835\\uddee\\ud835\\uddff\\ud835\\ude01 -  Refill Button Working For  90 Days\"}', '{\"en\":\"Start - Normally Instantly\\r\\n\\r\\nSpeed After Start - Approx.30K To 50 In Day\\r\\n\\r\\nQuality - All Old Accounts \\r\\n\\r\\nDrop - No Drop Issue \\r\\n\\r\\nRefill - 90 Days Button + (275 Days Manual By Ticket)\\r\\n\\r\\nLook - English\\r\\n\\r\\n\\ud83d\\udd17Link  - Profile Link\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - A Grade\\r\\n\\ud83e\\udd1dGood Support In this Service\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(24, 1, 330, '2', '{\"min\":\"50\",\"max\":\"200000\",\"rate\":\"39.7\",\"currency\":\"INR\"}', 6, 24, '2', '1', '𝗠𝗶𝘅 INDIAN Followers | 🔃R99', '⏰𝗦𝘁𝗮𝗿𝘁 - 𝗤𝘂𝗶𝗰𝗸 [𝟬-𝟭𝟬 𝗺𝗶𝗻𝘂𝘁𝗲𝘀 ]\r\n🔰𝗤𝘂𝗮𝗹𝗶𝘁𝘆 - 𝗜𝗻𝗱𝗶𝗮𝗻 𝗠𝗶𝘅\r\n⏳𝗦𝗽𝗲𝗲𝗱 - 𝟯𝟬-𝟰𝟬𝗞 / 𝗗𝗮𝘆\r\n🎗️𝗗𝗿𝗼𝗽 𝗥𝗮𝘁𝗶𝗼 - 𝟬-𝟭𝟬% [ 𝗗𝗼𝗻\\\'𝘁 𝗪𝗼𝗿𝗿𝘆 𝗜𝗻𝘀𝘁𝗮𝗻𝘁 𝗥𝗲𝗳𝗶𝗹𝗹 ]\r\n🔄𝗥𝗲𝗳𝗶𝗹𝗹 - 𝟵𝟵 𝗗𝗮𝘆𝘀 [ 𝗚𝘂𝗮𝗿𝗮𝗻𝘁𝗲𝗲𝗱 ]\r\n📍𝗟𝗼𝗰𝗮𝘁𝗶𝗼𝗻 - 𝗜𝗻𝗱𝗶𝗮𝗻\r\n🔗𝗟𝗶𝗻𝗸 - 𝗣𝗿𝗼𝗳𝗶𝗹𝗲 𝗨𝗥𝗟\r\n', '51.61', 50, 200000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud835\\udde0\\ud835\\uddf6\\ud835\\ude05 INDIAN Followers | \\ud83d\\udd03R99\"}', '{\"en\":\"\\u23f0\\ud835\\udde6\\ud835\\ude01\\ud835\\uddee\\ud835\\uddff\\ud835\\ude01 - \\ud835\\udde4\\ud835\\ude02\\ud835\\uddf6\\ud835\\uddf0\\ud835\\uddf8 [\\ud835\\udfec-\\ud835\\udfed\\ud835\\udfec \\ud835\\uddfa\\ud835\\uddf6\\ud835\\uddfb\\ud835\\ude02\\ud835\\ude01\\ud835\\uddf2\\ud835\\ude00 ]\\r\\n\\ud83d\\udd30\\ud835\\udde4\\ud835\\ude02\\ud835\\uddee\\ud835\\uddf9\\ud835\\uddf6\\ud835\\ude01\\ud835\\ude06 - \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb \\ud835\\udde0\\ud835\\uddf6\\ud835\\ude05\\r\\n\\u23f3\\ud835\\udde6\\ud835\\uddfd\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 - \\ud835\\udfef\\ud835\\udfec-\\ud835\\udff0\\ud835\\udfec\\ud835\\uddde \\/ \\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\r\\n\\ud83c\\udf97\\ufe0f\\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd \\ud835\\udde5\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc - \\ud835\\udfec-\\ud835\\udfed\\ud835\\udfec% [ \\ud835\\uddd7\\ud835\\uddfc\\ud835\\uddfb\\\\\'\\ud835\\ude01 \\ud835\\uddea\\ud835\\uddfc\\ud835\\uddff\\ud835\\uddff\\ud835\\ude06 \\ud835\\udddc\\ud835\\uddfb\\ud835\\ude00\\ud835\\ude01\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01 \\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 ]\\r\\n\\ud83d\\udd04\\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 - \\ud835\\udff5\\ud835\\udff5 \\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\ud835\\ude00 [ \\ud835\\uddda\\ud835\\ude02\\ud835\\uddee\\ud835\\uddff\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 ]\\r\\n\\ud83d\\udccd\\ud835\\udddf\\ud835\\uddfc\\ud835\\uddf0\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc\\ud835\\uddfb - \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb\\r\\n\\ud83d\\udd17\\ud835\\udddf\\ud835\\uddf6\\ud835\\uddfb\\ud835\\uddf8 - \\ud835\\udde3\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf2 \\ud835\\udde8\\ud835\\udde5\\ud835\\udddf\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(25, 1, 331, '2', '{\"min\":\"100\",\"max\":\"50000\",\"rate\":\"54.6\",\"currency\":\"INR\"}', 6, 25, '2', '1', '𝗠𝗼𝘀𝘁𝗹𝘆 INDIAN Followers | 🔃R60', '⏰𝗦𝘁𝗮𝗿𝘁 - 𝗢𝗻𝗲 𝗖𝗹𝗶𝗰𝗸 [𝟬-𝟱 𝗺𝗶𝗻𝘂𝘁𝗲𝘀 ]\r\n🔰𝗤𝘂𝗮𝗹𝗶𝘁𝘆 - 𝗠𝗼𝘀𝘁𝗹𝘆 𝗜𝗻𝗱𝗶𝗮𝗻 [𝟳𝟬% 𝗶𝗻𝗱𝗶𝗮𝗻 𝗣𝗿𝗼𝗳𝗶𝗹𝗲𝘀 𝗪𝗶𝘁𝗵 𝗦𝗼𝗺𝗲 𝗦𝘁𝗼𝗿𝗶𝗲𝘀 ]\r\n⏳𝗦𝗽𝗲𝗲𝗱 -𝟭𝟬𝟬-𝟮𝟬𝟬𝗞𝗗𝗮𝘆\r\n🎗️𝗗𝗿𝗼𝗽 𝗥𝗮𝘁𝗶𝗼 - 𝟬-𝟭𝟬% [ 𝗗𝗼𝗻\\\'𝘁 𝗪𝗼𝗿𝗿𝘆 𝗜𝗻𝘀𝘁𝗮𝗻𝘁 𝗥𝗲𝗳𝗶𝗹𝗹 ]\r\n🔄𝗥𝗲𝗳𝗶𝗹𝗹 - 𝟲𝟬 𝗗𝗮𝘆𝘀 [ 𝗚𝘂𝗮𝗿𝗮𝗻𝘁𝗲𝗲𝗱 ]\r\n📍𝗟𝗼𝗰𝗮𝘁𝗶𝗼𝗻 - 𝗜𝗻𝗱𝗶𝗮𝗻\r\n🔗𝗟𝗶𝗻𝗸 - 𝗣𝗿𝗼𝗳𝗶𝗹𝗲 𝗨𝗥𝗟', '70.98', 100, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud835\\udde0\\ud835\\uddfc\\ud835\\ude00\\ud835\\ude01\\ud835\\uddf9\\ud835\\ude06 INDIAN Followers | \\ud83d\\udd03R60\"}', '{\"en\":\"\\u23f0\\ud835\\udde6\\ud835\\ude01\\ud835\\uddee\\ud835\\uddff\\ud835\\ude01 - \\ud835\\udde2\\ud835\\uddfb\\ud835\\uddf2 \\ud835\\uddd6\\ud835\\uddf9\\ud835\\uddf6\\ud835\\uddf0\\ud835\\uddf8 [\\ud835\\udfec-\\ud835\\udff1 \\ud835\\uddfa\\ud835\\uddf6\\ud835\\uddfb\\ud835\\ude02\\ud835\\ude01\\ud835\\uddf2\\ud835\\ude00 ]\\r\\n\\ud83d\\udd30\\ud835\\udde4\\ud835\\ude02\\ud835\\uddee\\ud835\\uddf9\\ud835\\uddf6\\ud835\\ude01\\ud835\\ude06 - \\ud835\\udde0\\ud835\\uddfc\\ud835\\ude00\\ud835\\ude01\\ud835\\uddf9\\ud835\\ude06 \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb [\\ud835\\udff3\\ud835\\udfec% \\ud835\\uddf6\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb \\ud835\\udde3\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf2\\ud835\\ude00 \\ud835\\uddea\\ud835\\uddf6\\ud835\\ude01\\ud835\\uddf5 \\ud835\\udde6\\ud835\\uddfc\\ud835\\uddfa\\ud835\\uddf2 \\ud835\\udde6\\ud835\\ude01\\ud835\\uddfc\\ud835\\uddff\\ud835\\uddf6\\ud835\\uddf2\\ud835\\ude00 ]\\r\\n\\u23f3\\ud835\\udde6\\ud835\\uddfd\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 -\\ud835\\udfed\\ud835\\udfec\\ud835\\udfec-\\ud835\\udfee\\ud835\\udfec\\ud835\\udfec\\ud835\\uddde\\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\r\\n\\ud83c\\udf97\\ufe0f\\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd \\ud835\\udde5\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc - \\ud835\\udfec-\\ud835\\udfed\\ud835\\udfec% [ \\ud835\\uddd7\\ud835\\uddfc\\ud835\\uddfb\\\\\'\\ud835\\ude01 \\ud835\\uddea\\ud835\\uddfc\\ud835\\uddff\\ud835\\uddff\\ud835\\ude06 \\ud835\\udddc\\ud835\\uddfb\\ud835\\ude00\\ud835\\ude01\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01 \\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 ]\\r\\n\\ud83d\\udd04\\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 - \\ud835\\udff2\\ud835\\udfec \\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\ud835\\ude00 [ \\ud835\\uddda\\ud835\\ude02\\ud835\\uddee\\ud835\\uddff\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 ]\\r\\n\\ud83d\\udccd\\ud835\\udddf\\ud835\\uddfc\\ud835\\uddf0\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc\\ud835\\uddfb - \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb\\r\\n\\ud83d\\udd17\\ud835\\udddf\\ud835\\uddf6\\ud835\\uddfb\\ud835\\uddf8 - \\ud835\\udde3\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf2 \\ud835\\udde8\\ud835\\udde5\\ud835\\udddf\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(26, 1, 332, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"86.3\",\"currency\":\"INR\"}', 6, 26, '2', '1', '𝗣𝗲𝗿𝗳𝗲𝗰𝘁𝗹𝘆 INDIAN Followers | 🔃R365', '⏰𝗦𝘁𝗮𝗿𝘁 - 𝗢𝗻𝗲 𝗖𝗹𝗶𝗰𝗸 [𝟬-𝟱 𝗺𝗶𝗻𝘂𝘁𝗲𝘀 ]\r\n🔰𝗤𝘂𝗮𝗹𝗶𝘁𝘆 - 𝗣𝗲𝗿𝗳𝗲𝗰𝘁𝗹𝘆 𝗜𝗻𝗱𝗶𝗮𝗻 \r\n⏳𝗦𝗽𝗲𝗲𝗱 - 𝟰𝟬-𝟲𝟬𝗞𝗗𝗮𝘆\r\n🎗️𝗗𝗿𝗼𝗽 𝗥𝗮𝘁𝗶𝗼 - 𝗡𝗼𝗻 𝗗𝗿𝗼𝗽 \r\n🔄𝗥𝗲𝗳𝗶𝗹𝗹 - 𝟯𝟲𝟱 𝗗𝗮𝘆𝘀 [ 𝗚𝘂𝗮𝗿𝗮𝗻𝘁𝗲𝗲𝗱 ]\r\n📍𝗟𝗼𝗰𝗮𝘁𝗶𝗼𝗻 - 𝗜𝗻𝗱𝗶𝗮𝗻\r\n🔗𝗟𝗶𝗻𝗸 - 𝗣𝗿𝗼𝗳𝗶𝗹𝗲 𝗨𝗥𝗟\r\n', '112.19', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud835\\udde3\\ud835\\uddf2\\ud835\\uddff\\ud835\\uddf3\\ud835\\uddf2\\ud835\\uddf0\\ud835\\ude01\\ud835\\uddf9\\ud835\\ude06 INDIAN Followers | \\ud83d\\udd03R365\"}', '{\"en\":\"\\u23f0\\ud835\\udde6\\ud835\\ude01\\ud835\\uddee\\ud835\\uddff\\ud835\\ude01 - \\ud835\\udde2\\ud835\\uddfb\\ud835\\uddf2 \\ud835\\uddd6\\ud835\\uddf9\\ud835\\uddf6\\ud835\\uddf0\\ud835\\uddf8 [\\ud835\\udfec-\\ud835\\udff1 \\ud835\\uddfa\\ud835\\uddf6\\ud835\\uddfb\\ud835\\ude02\\ud835\\ude01\\ud835\\uddf2\\ud835\\ude00 ]\\r\\n\\ud83d\\udd30\\ud835\\udde4\\ud835\\ude02\\ud835\\uddee\\ud835\\uddf9\\ud835\\uddf6\\ud835\\ude01\\ud835\\ude06 - \\ud835\\udde3\\ud835\\uddf2\\ud835\\uddff\\ud835\\uddf3\\ud835\\uddf2\\ud835\\uddf0\\ud835\\ude01\\ud835\\uddf9\\ud835\\ude06 \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb \\r\\n\\u23f3\\ud835\\udde6\\ud835\\uddfd\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 - \\ud835\\udff0\\ud835\\udfec-\\ud835\\udff2\\ud835\\udfec\\ud835\\uddde\\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\r\\n\\ud83c\\udf97\\ufe0f\\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd \\ud835\\udde5\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc - \\ud835\\udde1\\ud835\\uddfc\\ud835\\uddfb \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd \\r\\n\\ud83d\\udd04\\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 - \\ud835\\udfef\\ud835\\udff2\\ud835\\udff1 \\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\ud835\\ude00 [ \\ud835\\uddda\\ud835\\ude02\\ud835\\uddee\\ud835\\uddff\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 ]\\r\\n\\ud83d\\udccd\\ud835\\udddf\\ud835\\uddfc\\ud835\\uddf0\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc\\ud835\\uddfb - \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb\\r\\n\\ud83d\\udd17\\ud835\\udddf\\ud835\\uddf6\\ud835\\uddfb\\ud835\\uddf8 - \\ud835\\udde3\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf2 \\ud835\\udde8\\ud835\\udde5\\ud835\\udddf\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(27, 1, 643, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"38.6\",\"currency\":\"INR\"}', 6, 27, '2', '1', '👥Insta Followers -🇮🇳𝗜𝗡𝗗𝗜𝗔𝗡 𝗠𝗜𝗫 -🔃LifeTime Refill', '⏰𝗦𝘁𝗮𝗿𝘁 - 𝟬-𝟱 𝗠𝗶𝗻𝘂𝘁𝗲𝘀\r\n💎𝗤𝘂𝗮𝗹𝗶𝘁𝘆 - 𝗜𝗻𝗱𝗶𝗮𝗻 𝗠𝗶𝘅 [𝟭𝟱+𝗣𝗼𝘀𝘁𝘀]\r\n⏳𝗦𝗽𝗲𝗲𝗱 - 𝟓𝟎𝐤+/ 𝐃𝐚𝐲\r\n🔥𝗗𝗿𝗼𝗽 𝗥𝗮𝘁𝗶𝗼 -[𝗡𝗼𝗻 𝗗𝗿𝗼𝗽]\r\n♻️𝗥𝗲𝗳𝗶𝗹𝗹 -  𝗟𝗶𝗳𝗲𝗧𝗶𝗺𝗲 𝟭𝟬𝟬% 𝗚𝘂𝗮𝗿𝗮𝗻𝘁𝗲𝗲\r\n📍𝗟𝗼𝗰𝗮𝘁𝗶𝗼𝗻 - 𝗔𝗹𝗺𝗼𝘀𝘁 𝗔𝘀𝗶𝗮𝗻\r\n🔗𝗟𝗶𝗻𝗸 - 𝗣𝗿𝗼𝗳𝗶𝗹𝗲 𝗨𝗥𝗟\r\n\r\n🌈𝗥𝗲𝗳𝗶𝗹𝗹 𝗜𝘀 𝗩𝗮𝗹𝗶𝗱 𝗔𝗳𝘁𝗲𝗿 𝗦𝗲𝗿𝘃𝗶𝗰𝗲 𝗗𝗶𝘀𝗮𝗯𝗹𝗲\r\n🌈𝗜𝗻 𝘁𝗵𝗶𝘀 𝘀𝗲𝗿𝘃𝗲𝗿 𝘄𝗲 𝗰𝗮𝗻\\\'𝘁 𝗰𝗮𝗻𝗰𝗲𝗹 𝗮𝗳𝘁𝗲𝗿 𝗼𝗿𝗱𝗲𝗿 𝘀𝗼 𝗯𝗲 𝗰𝗮𝗿𝗲𝗳𝘂𝗹', '50.18', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Insta Followers -\\ud83c\\uddee\\ud83c\\uddf3\\ud835\\udddc\\ud835\\udde1\\ud835\\uddd7\\ud835\\udddc\\ud835\\uddd4\\ud835\\udde1 \\ud835\\udde0\\ud835\\udddc\\ud835\\uddeb -\\ud83d\\udd03LifeTime Refill\"}', '{\"en\":\"\\u23f0\\ud835\\udde6\\ud835\\ude01\\ud835\\uddee\\ud835\\uddff\\ud835\\ude01 - \\ud835\\udfec-\\ud835\\udff1 \\ud835\\udde0\\ud835\\uddf6\\ud835\\uddfb\\ud835\\ude02\\ud835\\ude01\\ud835\\uddf2\\ud835\\ude00\\r\\n\\ud83d\\udc8e\\ud835\\udde4\\ud835\\ude02\\ud835\\uddee\\ud835\\uddf9\\ud835\\uddf6\\ud835\\ude01\\ud835\\ude06 - \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb \\ud835\\udde0\\ud835\\uddf6\\ud835\\ude05 [\\ud835\\udfed\\ud835\\udff1+\\ud835\\udde3\\ud835\\uddfc\\ud835\\ude00\\ud835\\ude01\\ud835\\ude00]\\r\\n\\u23f3\\ud835\\udde6\\ud835\\uddfd\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 - \\ud835\\udfd3\\ud835\\udfce\\ud835\\udc24+\\/ \\ud835\\udc03\\ud835\\udc1a\\ud835\\udc32\\r\\n\\ud83d\\udd25\\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd \\ud835\\udde5\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc -[\\ud835\\udde1\\ud835\\uddfc\\ud835\\uddfb \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd]\\r\\n\\u267b\\ufe0f\\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 -  \\ud835\\udddf\\ud835\\uddf6\\ud835\\uddf3\\ud835\\uddf2\\ud835\\udde7\\ud835\\uddf6\\ud835\\uddfa\\ud835\\uddf2 \\ud835\\udfed\\ud835\\udfec\\ud835\\udfec% \\ud835\\uddda\\ud835\\ude02\\ud835\\uddee\\ud835\\uddff\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddf2\\r\\n\\ud83d\\udccd\\ud835\\udddf\\ud835\\uddfc\\ud835\\uddf0\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc\\ud835\\uddfb - \\ud835\\uddd4\\ud835\\uddf9\\ud835\\uddfa\\ud835\\uddfc\\ud835\\ude00\\ud835\\ude01 \\ud835\\uddd4\\ud835\\ude00\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb\\r\\n\\ud83d\\udd17\\ud835\\udddf\\ud835\\uddf6\\ud835\\uddfb\\ud835\\uddf8 - \\ud835\\udde3\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf2 \\ud835\\udde8\\ud835\\udde5\\ud835\\udddf\\r\\n\\r\\n\\ud83c\\udf08\\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 \\ud835\\udddc\\ud835\\ude00 \\ud835\\udde9\\ud835\\uddee\\ud835\\uddf9\\ud835\\uddf6\\ud835\\uddf1 \\ud835\\uddd4\\ud835\\uddf3\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddff \\ud835\\udde6\\ud835\\uddf2\\ud835\\uddff\\ud835\\ude03\\ud835\\uddf6\\ud835\\uddf0\\ud835\\uddf2 \\ud835\\uddd7\\ud835\\uddf6\\ud835\\ude00\\ud835\\uddee\\ud835\\uddef\\ud835\\uddf9\\ud835\\uddf2\\r\\n\\ud83c\\udf08\\ud835\\udddc\\ud835\\uddfb \\ud835\\ude01\\ud835\\uddf5\\ud835\\uddf6\\ud835\\ude00 \\ud835\\ude00\\ud835\\uddf2\\ud835\\uddff\\ud835\\ude03\\ud835\\uddf2\\ud835\\uddff \\ud835\\ude04\\ud835\\uddf2 \\ud835\\uddf0\\ud835\\uddee\\ud835\\uddfb\\\\\'\\ud835\\ude01 \\ud835\\uddf0\\ud835\\uddee\\ud835\\uddfb\\ud835\\uddf0\\ud835\\uddf2\\ud835\\uddf9 \\ud835\\uddee\\ud835\\uddf3\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddff \\ud835\\uddfc\\ud835\\uddff\\ud835\\uddf1\\ud835\\uddf2\\ud835\\uddff \\ud835\\ude00\\ud835\\uddfc \\ud835\\uddef\\ud835\\uddf2 \\ud835\\uddf0\\ud835\\uddee\\ud835\\uddff\\ud835\\uddf2\\ud835\\uddf3\\ud835\\ude02\\ud835\\uddf9\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(28, 1, 944, '2', '{\"min\":\"30\",\"max\":\"20000\",\"rate\":\"343\",\"currency\":\"INR\"}', 6, 28, '2', '1', 'Insta Followers -🇮🇳𝗢𝗻𝗹𝘆 𝗜𝗻𝗱𝗶𝗮𝗻𝘀', '100% Indian', '445.9', 30, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Insta Followers -\\ud83c\\uddee\\ud83c\\uddf3\\ud835\\udde2\\ud835\\uddfb\\ud835\\uddf9\\ud835\\ude06 \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude00\"}', '{\"en\":\"100% Indian\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(29, 1, 1585, '2', '{\"min\":\"50\",\"max\":\"200000\",\"rate\":\"99\",\"currency\":\"INR\"}', 6, 29, '2', '1', '𝗣𝗲𝗿𝗳𝗲𝗰𝘁𝗹𝘆 INDIAN Followers + Story Accounts  | 🔃R365', '', '128.7', 50, 200000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud835\\udde3\\ud835\\uddf2\\ud835\\uddff\\ud835\\uddf3\\ud835\\uddf2\\ud835\\uddf0\\ud835\\ude01\\ud835\\uddf9\\ud835\\ude06 INDIAN Followers + Story Accounts  | \\ud83d\\udd03R365\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1');
INSERT INTO `services` (`service_id`, `service_api`, `api_service`, `api_servicetype`, `api_detail`, `category_id`, `service_line`, `service_type`, `service_package`, `service_name`, `service_description`, `service_price`, `service_min`, `service_max`, `service_dripfeed`, `service_autotime`, `service_autopost`, `service_speed`, `want_username`, `service_secret`, `price_type`, `price_cal`, `instagram_second`, `start_count`, `instagram_private`, `name_lang`, `description_lang`, `time_lang`, `time`, `cancelbutton`, `show_refill`, `service_profit`, `refill_days`, `refill_hours`, `avg_days`, `avg_hours`, `avg_minutes`, `avg_many`, `price_profit`, `service_overflow`, `service_sync`, `service_deleted`) VALUES
(30, 1, 650, '2', '{\"min\":\"50\",\"max\":\"10000\",\"rate\":\"2.98\",\"currency\":\"INR\"}', 7, 30, '2', '1', 'Instagram |- Impressions + Reach from Explore', 'Start in - 0 - 5 Minutes\r\n\r\nSpeed After Start - 5K-10K/Day\r\n\r\nLess DIlivery  - No\r\n\r\nRefill - No\r\n\r\nCancel Button - Not Working\r\n\r\nLink - Post Link\r\n\r\n➕Addition Information\r\n📈Service Grade - A\r\n➡️No Less Delivery Issue \r\n➡️Working Smooth\r\n➡️Mostly Orders Completed Within 3 Hours\r\n➡️It Takes 3 - 6 Hours to Update ', '3.278', 50, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram |- Impressions + Reach from Explore\"}', '{\"en\":\"Start in - 0 - 5 Minutes\\r\\n\\r\\nSpeed After Start - 5K-10K\\/Day\\r\\n\\r\\nLess DIlivery  - No\\r\\n\\r\\nRefill - No\\r\\n\\r\\nCancel Button - Not Working\\r\\n\\r\\nLink - Post Link\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udcc8Service Grade - A\\r\\n\\u27a1\\ufe0fNo Less Delivery Issue \\r\\n\\u27a1\\ufe0fWorking Smooth\\r\\n\\u27a1\\ufe0fMostly Orders Completed Within 3 Hours\\r\\n\\u27a1\\ufe0fIt Takes 3 - 6 Hours to Update \"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 10, 0, '1', '1'),
(31, 1, 1131, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"2.87\",\"currency\":\"INR\"}', 7, 31, '2', '1', '❤️Instagram Likes |- From Old Profiles with 6 to 15 Posts', 'Start - Instant \r\n\r\nSpeed -  30K in Day Easily \r\n\r\nQuality - Old Profiles with 6 to 15 Posts\r\n\r\nDrop - No Drop\r\n\r\nRefill - Lifetime \r\n\r\n🔗Link  - Post Link\r\n\r\n➕Addition Information \r\n📊Service Grade - A Grade\r\n➡️Recommended For Resellers\r\n➡️Speed UP Also Possible \r\n➡️Mostly Orders Complete Within 30 Minutes ', '3.157', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\u2764\\ufe0fInstagram Likes |- From Old Profiles with 6 to 15 Posts\"}', '{\"en\":\"Start - Instant \\r\\n\\r\\nSpeed -  30K in Day Easily \\r\\n\\r\\nQuality - Old Profiles with 6 to 15 Posts\\r\\n\\r\\nDrop - No Drop\\r\\n\\r\\nRefill - Lifetime \\r\\n\\r\\n\\ud83d\\udd17Link  - Post Link\\r\\n\\r\\n\\u2795Addition Information \\r\\n\\ud83d\\udccaService Grade - A Grade\\r\\n\\u27a1\\ufe0fRecommended For Resellers\\r\\n\\u27a1\\ufe0fSpeed UP Also Possible \\r\\n\\u27a1\\ufe0fMostly Orders Complete Within 30 Minutes \"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 10, 0, '1', '1'),
(32, 1, 1705, '2', '{\"min\":\"10\",\"max\":\"3000\",\"rate\":\"5.87\",\"currency\":\"INR\"}', 7, 32, '2', '1', '👥Instagram Bot Followers |- No Refill', 'Start in - 0 - 2 Hours\r\n\r\nSpeed After Start - 1K-3K/Day\r\n\r\nQuality - Bot\r\n\r\nDrop Ratio - High Drop\r\n\r\nRefill - Not Possible \r\n\r\nCancel Button - Working\r\n\r\nLink - Profile Link\r\n\r\n➕Addition Information\r\n\r\n📈Service Grade - C\r\n➡️Have High Drop\r\n➡️Not Reccomended\r\n➡️Speed Up Psssible \r\n➡️Some Time Drops Starts Instantly', '6.457', 10, 3000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Bot Followers |- No Refill\"}', '{\"en\":\"Start in - 0 - 2 Hours\\r\\n\\r\\nSpeed After Start - 1K-3K\\/Day\\r\\n\\r\\nQuality - Bot\\r\\n\\r\\nDrop Ratio - High Drop\\r\\n\\r\\nRefill - Not Possible \\r\\n\\r\\nCancel Button - Working\\r\\n\\r\\nLink - Profile Link\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\r\\n\\ud83d\\udcc8Service Grade - C\\r\\n\\u27a1\\ufe0fHave High Drop\\r\\n\\u27a1\\ufe0fNot Reccomended\\r\\n\\u27a1\\ufe0fSpeed Up Psssible \\r\\n\\u27a1\\ufe0fSome Time Drops Starts Instantly\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 10, 0, '1', '1'),
(33, 1, 1806, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"26.6\",\"currency\":\"INR\"}', 7, 33, '2', '1', 'Instagram Followers |-💧 0 - 10% Drop Normally - 🇮🇳𝐌𝐨𝐬𝐭𝐥𝐲 𝐈𝐧𝐝𝐢𝐚𝐧 𝐍𝐚𝐦𝐞𝐬 - No Refill', 'Start -  0 - 5 Minutes Normally \r\n\r\nQuality - Mostly Old Indian Profiles \r\n\r\nSpeed - Easily 20K to 30K Per Day \r\n\r\nDrop Ratio - 0 - 10% Normally \r\n\r\nRefill - No Refill Possible \r\n\r\nCancel - Button Working  \r\n\r\n🔗Link - Account link \r\n\r\n➕Addition Information\r\n📊Service Grade - B+ Grade\r\n', '29.26', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |-\\ud83d\\udca7 0 - 10% Drop Normally - \\ud83c\\uddee\\ud83c\\uddf3\\ud835\\udc0c\\ud835\\udc28\\ud835\\udc2c\\ud835\\udc2d\\ud835\\udc25\\ud835\\udc32 \\ud835\\udc08\\ud835\\udc27\\ud835\\udc1d\\ud835\\udc22\\ud835\\udc1a\\ud835\\udc27 \\ud835\\udc0d\\ud835\\udc1a\\ud835\\udc26\\ud835\\udc1e\\ud835\\udc2c - No Refill\"}', '{\"en\":\"Start -  0 - 5 Minutes Normally \\r\\n\\r\\nQuality - Mostly Old Indian Profiles \\r\\n\\r\\nSpeed - Easily 20K to 30K Per Day \\r\\n\\r\\nDrop Ratio - 0 - 10% Normally \\r\\n\\r\\nRefill - No Refill Possible \\r\\n\\r\\nCancel - Button Working  \\r\\n\\r\\n\\ud83d\\udd17Link - Account link \\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - B+ Grade\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 10, 0, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `service_api`
--

CREATE TABLE `service_api` (
  `id` int NOT NULL,
  `api_name` varchar(225) NOT NULL,
  `api_url` text NOT NULL,
  `api_key` varchar(225) NOT NULL,
  `api_type` int NOT NULL,
  `api_limit` double NOT NULL DEFAULT '0',
  `currency` varchar(200) DEFAULT NULL,
  `api_alert` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> Gönder, 1 -> Gönderildi',
  `status` enum('1','2') NOT NULL DEFAULT '2',
  `api_sync` enum('0','1') NOT NULL DEFAULT '1',
  `api_login_credentials` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `service_api`
--

INSERT INTO `service_api` (`id`, `api_name`, `api_url`, `api_key`, `api_type`, `api_limit`, `currency`, `api_alert`, `status`, `api_sync`, `api_login_credentials`) VALUES
(2, 'aapkasmmstore.space', 'https://aapkasmmstore.space/api/v2', 'etdvwybusnkml,l5e46fer', 1, 0, NULL, '1', '2', '1', '{\"username\":\"username\",\"password\":\"password\"}');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `site_seo` text NOT NULL,
  `site_title` text,
  `site_description` text,
  `site_keywords` text,
  `site_logo` text,
  `site_name` text,
  `site_currency` varchar(2555) NOT NULL DEFAULT 'try',
  `site_base_currency` varchar(20) DEFAULT NULL,
  `site_currency_converter` tinyint(1) NOT NULL DEFAULT '0',
  `site_update_rates_automatically` int NOT NULL DEFAULT '0',
  `last_updated_currency_rates` datetime DEFAULT NULL,
  `favicon` text,
  `site_language` varchar(225) NOT NULL DEFAULT 'tr',
  `site_theme` text NOT NULL,
  `site_theme_alt` text,
  `recaptcha` enum('1','2') NOT NULL DEFAULT '1',
  `recaptcha_key` text,
  `recaptcha_secret` text,
  `custom_header` text,
  `custom_footer` text,
  `ticket_system` enum('1','2') NOT NULL DEFAULT '2',
  `register_page` enum('1','2') NOT NULL DEFAULT '2',
  `service_speed` enum('1','2') NOT NULL,
  `service_list` enum('1','2') NOT NULL,
  `dolar_charge` double NOT NULL,
  `euro_charge` double NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pass` text NOT NULL,
  `smtp_server` text NOT NULL,
  `smtp_port` varchar(225) NOT NULL,
  `smtp_protocol` enum('0','ssl','tls') NOT NULL,
  `alert_type` enum('1','2','3') NOT NULL,
  `alert_apimail` enum('1','2') NOT NULL,
  `alert_newmanuelservice` enum('1','2') NOT NULL,
  `alert_newticket` enum('1','2') NOT NULL,
  `alert_apibalance` enum('1','2') NOT NULL,
  `alert_serviceapialert` enum('1','2') NOT NULL,
  `sms_provider` varchar(225) NOT NULL,
  `sms_title` varchar(225) NOT NULL,
  `sms_user` varchar(225) NOT NULL,
  `sms_pass` varchar(225) NOT NULL,
  `sms_validate` enum('0','1') NOT NULL DEFAULT '0' COMMENT '1 -> OK, 0 -> NO',
  `admin_mail` varchar(225) NOT NULL,
  `admin_telephone` varchar(225) NOT NULL,
  `resetpass_page` enum('1','2') NOT NULL,
  `resetpass_sms` enum('1','2') NOT NULL,
  `resetpass_email` enum('1','2') NOT NULL,
  `site_maintenance` enum('1','2') NOT NULL DEFAULT '2',
  `servis_siralama` varchar(255) NOT NULL,
  `bronz_statu` int NOT NULL,
  `silver_statu` int NOT NULL,
  `gold_statu` int NOT NULL,
  `bayi_statu` int NOT NULL,
  `child_panel_nameservers` varchar(255) NOT NULL DEFAULT '{"ns1":"ns1.scriptlux.com","ns2":"ns2.scriptlux.com"}',
  `childpanel_price` double DEFAULT NULL,
  `snow_effect` enum('1','2') NOT NULL DEFAULT '2',
  `snow_colour` text NOT NULL,
  `promotion` enum('1','2') DEFAULT '2',
  `referral_commision` double NOT NULL,
  `referral_payout` double NOT NULL,
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `childpanel_selling` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> OFF , 2 -> ON',
  `tickets_per_user` double NOT NULL DEFAULT '5',
  `name_fileds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `skype_feilds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `otp_login` enum('1','2','0') NOT NULL DEFAULT '0',
  `auto_deactivate_payment` enum('1','2') NOT NULL DEFAULT '1',
  `service_avg_time` enum('1','0') NOT NULL DEFAULT '0',
  `alert_orderfail` enum('1','2') NOT NULL DEFAULT '2',
  `alert_welcomemail` enum('1','2') NOT NULL DEFAULT '2',
  `freebalance` enum('1','2') NOT NULL DEFAULT '1',
  `freeamount` double DEFAULT '0',
  `alert_newmessage` enum('1','2') NOT NULL DEFAULT '1',
  `email_confirmation` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `fundstransfer_fees` varchar(10) NOT NULL,
  `permissions` text,
  `fake_order_service_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `fake_order_min` int DEFAULT NULL,
  `fake_order_max` int DEFAULT NULL,
  `panel_orders` int DEFAULT NULL,
  `panel_orders_pattern` varchar(255) NOT NULL DEFAULT '{"panel_orders_prefix":"","panel_orders_suffix":""}',
  `downloaded_category_icons` tinyint(1) NOT NULL DEFAULT '0',
  `summary_card_background_color` varchar(100) DEFAULT 'theme_colour',
  `google_login` varchar(100) NOT NULL DEFAULT '{"purchased":"1","status":"1"}',
  `services_average_time` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_seo`, `site_title`, `site_description`, `site_keywords`, `site_logo`, `site_name`, `site_currency`, `site_base_currency`, `site_currency_converter`, `site_update_rates_automatically`, `last_updated_currency_rates`, `favicon`, `site_language`, `site_theme`, `site_theme_alt`, `recaptcha`, `recaptcha_key`, `recaptcha_secret`, `custom_header`, `custom_footer`, `ticket_system`, `register_page`, `service_speed`, `service_list`, `dolar_charge`, `euro_charge`, `smtp_user`, `smtp_pass`, `smtp_server`, `smtp_port`, `smtp_protocol`, `alert_type`, `alert_apimail`, `alert_newmanuelservice`, `alert_newticket`, `alert_apibalance`, `alert_serviceapialert`, `sms_provider`, `sms_title`, `sms_user`, `sms_pass`, `sms_validate`, `admin_mail`, `admin_telephone`, `resetpass_page`, `resetpass_sms`, `resetpass_email`, `site_maintenance`, `servis_siralama`, `bronz_statu`, `silver_statu`, `gold_statu`, `bayi_statu`, `child_panel_nameservers`, `childpanel_price`, `snow_effect`, `snow_colour`, `promotion`, `referral_commision`, `referral_payout`, `referral_status`, `childpanel_selling`, `tickets_per_user`, `name_fileds`, `skype_feilds`, `otp_login`, `auto_deactivate_payment`, `service_avg_time`, `alert_orderfail`, `alert_welcomemail`, `freebalance`, `freeamount`, `alert_newmessage`, `email_confirmation`, `resend_max`, `status`, `fundstransfer_fees`, `permissions`, `fake_order_service_enabled`, `fake_order_min`, `fake_order_max`, `panel_orders`, `panel_orders_pattern`, `downloaded_category_icons`, `summary_card_background_color`, `google_login`, `services_average_time`) VALUES
(1, 'AAPKA SMM STORE', 'AAPKA SMM STORE', 'AAPKA SMM STORE is the  Best and Cheap SMM Panel for Instagram, Tiktok, Facebook, Youtube and Twitter. Buy IG Reels views and Followers, Buy Instagram Likes, Views and Comments, Buy TikTok Likes and Followers, Buy Facebook Likes and Comments, Buy Youtube Likes, Views and Subscribers.', 'AAPKA SMM STORE smm panel,smmpanel,SMM Panel India,SMM Panel Paytm,SMM Panel Cheap India,SMM Reseller Panel,SMM Reseller Panel India,Cheap SMM Panel,cheapest SMM panel,cheap SMM panel india,Cheapest SMM Reseller Panel,Cheapest SMM Panel Paytm,Cheapest SMM Panel Paytm,indian smm panel,IndianSMM Reseller Panel,Best SMM panel,Best SMM Panel India,Top SMM Panel', '', 'AAPKA SMM STORE ', '', 'INR', 1, 1, '2024-12-16 20:27:08', '', 'en', 'Eternity', 'pink', '1', '', '', '', '', '1', '2', '1', '2', 0, 0, '', '', '', '', '0', '2', '2', '2', '2', '2', '2', 'bizimsms', '', '', '', '1', '', '', '2', '1', '2', '2', 'asc', 500, 2500, 10000, 15000, '{\"ns1\":\"ns1.sketchleader.com\",\"ns2\":\"ns2.sketchleader.com\"}', 100, '', '', '2', 10, 10, '2', '2', 9999999999, '1', '1', '0', '1', '1', '2', '2', '1', 2, '2', '2', 2, '0', '3', '{\"admin access\":{\"admin_access\":{\"name\":\"Admin Access\",\"value\":\"admin_access\"}},\"pages\":{\"users\":{\"name\":\"Users\",\"value\":\"users\"},\"services\":{\"name\":\"Services\",\"value\":\"services\"},\"update-prices\":{\"name\":\"Update Prices\",\"value\":\"update-prices\"},\"bulk\":{\"name\":\"Bulk Services Editor\",\"value\":\"bulk\"},\"bulkc\":{\"name\":\"Bulk Category Editor\",\"value\":\"services\"},\"synced-logs\":{\"name\":\"Seller Sync Logs\",\"value\":\"synced-logs\"},\"orders\":{\"name\":\"Orders\",\"value\":\"orders\"},\"subscriptions\":{\"name\":\"Subscriptions\",\"value\":\"subscriptions\"},\"dripfeed\":{\"name\":\"Dripfeed\",\"value\":\"dripfeed\"},\"tasks\":{\"name\":\"Order Refill and Cancel Tasks\",\"value\":\"tasks\"},\"payments\":{\"name\":\"Payments\",\"value\":\"payments\"},\"tickets\":{\"name\":\"Tickets\",\"value\":\"tickets\"}},\"additionals\":{\"additionals\":{\"name\":\"Additionals\",\"value\":\"additionals\"},\"referral\":{\"name\":\"Affiliates\",\"value\":\"referral\"},\"broadcast\":{\"name\":\"Broadcasts\",\"value\":\"broadcast\"},\"logs\":{\"name\":\"Panel Logs\",\"value\":\"logs\"},\"reports\":{\"name\":\"Reports\",\"value\":\"reports\"},\"videop\":{\"name\":\"Promotion\",\"value\":\"videop\"},\"coupon\":{\"name\":\"Coupons\",\"value\":\"coupon\"},\"child-panels\":{\"name\":\"Child Panels\",\"value\":\"child-panels\"},\"updates\":{\"name\":\"Updates\",\"value\":\"updates\"}},\"appearance\":{\"appearance\":{\"name\":\"Appearance\",\"value\":\"appearance\"},\"themes\":{\"name\":\"Themes\",\"value\":\"themes\"},\"new_year\":{\"name\":\"New Year\",\"value\":\"new_year\"},\"pages\":{\"name\":\"Pages\",\"value\":\"pages\"},\"news\":{\"name\":\"Announcements\",\"value\":\"news\"},\"meta\":{\"name\":\"Meta (SEO) Settings\",\"value\":\"meta\"},\"blog\":{\"name\":\"Blogs\",\"value\":\"blog\"},\"menu\":{\"name\":\"Menu\",\"value\":\"menu\"},\"inte\":{\"name\":\"Integrations\",\"value\":\"inte\"},\"language\":{\"name\":\"Languages\",\"value\":\"language\"},\"files\":{\"name\":\"Uploaded Images\",\"value\":\"files\"}},\"settings\":{\"settings\":{\"name\":\"Settings\",\"value\":\"settings\"},\"general_settings\":{\"name\":\"General Settings\",\"value\":\"general_settings\"},\"providers\":{\"name\":\"Sellers\",\"value\":\"providers\"},\"payments_settings\":{\"name\":\"Payment Methods\",\"value\":\"payments_settings\"},\"bank_accounts\":{\"name\":\"Bank Accounts\",\"value\":\"bank_accounts\"},\"modules\":{\"name\":\"Modules\",\"value\":\"modules\"},\"subject\":{\"name\":\"Support Settings\",\"value\":\"subject\"},\"payments_bonus\":{\"name\":\"Payment Bonuses\",\"value\":\"payments_bonus\"},\"currency-manager\":{\"name\":\"Site Currency Manager\",\"value\":\"currency-manager\"},\"alert_settings\":{\"name\":\"Notification Settings\",\"value\":\"alert_settings\"},\"site_count\":{\"name\":\"Fake Orders\",\"value\":\"site_count\"},\"manager\":{\"name\":\"Manager\",\"value\":\"manager\"}}}', 0, 1, 3, 3, '{\"panel_orders_prefix\":\"\",\"panel_orders_suffix\":\"\"}', 0, 'fixed_colour', '{\"purchased\":\"1\",\"status\":\"1\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sync_logs`
--

CREATE TABLE `sync_logs` (
  `id` int NOT NULL,
  `service_id` int NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) NOT NULL,
  `api_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int NOT NULL,
  `client_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `task_api` int DEFAULT NULL,
  `task_type` varchar(225) DEFAULT NULL,
  `task_status` varchar(225) DEFAULT 'pending',
  `task_response` text,
  `task_created_at` datetime DEFAULT NULL,
  `task_updated_at` datetime DEFAULT NULL,
  `task_by` text,
  `check_refill_status` int DEFAULT NULL,
  `refill_orderid` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int NOT NULL,
  `theme_name` text NOT NULL,
  `theme_dirname` text NOT NULL,
  `theme_extras` text NOT NULL,
  `last_modified` datetime NOT NULL,
  `newpage` text NOT NULL,
  `colour` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme_name`, `theme_dirname`, `theme_extras`, `last_modified`, `newpage`, `colour`) VALUES
(1, 'Simplify', 'Simplify', '', '2022-11-16 09:28:01', '{% include \'header.twig\' %}\r\n	<br><br><br>\r\n	\r\n	<div class=\"container-fluid container-fluid-spacious\">\r\n		<div class=\"row\">\r\n			<div class=\"col-md-12\">\r\n			{% if contentText %}\r\n{{ contentText }}\r\n{% endif %}\r\n				{% if contentText2 %}\r\n{{ contentText2 }}\r\n{% endif %}\r\n				\r\n			</div>\r\n		</div>\r\n	</div>\r\n   \r\n      \r\n        \r\n   ', '2'),
(4, 'Eternity', 'Eternity', '', '0000-00-00 00:00:00', '', '2'),
(2, 'Clementine', 'pitchy', '{\"stylesheets\":[\"public/pitchy/bootstrap.css\",\"public/pitchy/black.css\",\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\",\"public/datepicker/css/bootstrap-datepicker3.min.css\"],\"scripts\":[\"https://code.jquery.com/jquery-3.3.1.min.js\",\"public/pitchy/js/script.js\",\"public/pitchy/js/snowfall.min.js\",\"public/pitchy/js/bundle.js\",\"public/pitchy/js/main.js\",\"public/ajax.js\",\"public/datepicker/js/bootstrap-datepicker.min.js\"]}', '2022-11-21 09:29:47', '', '2'),
(5, 'X Blur', 'xblur', '', '2023-11-07 09:29:47', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int NOT NULL,
  `client_id` int NOT NULL,
  `subject` varchar(225) NOT NULL,
  `time` datetime NOT NULL,
  `lastupdate_time` datetime NOT NULL,
  `client_new` enum('1','2') NOT NULL DEFAULT '2',
  `status` enum('pending','answered','closed') NOT NULL DEFAULT 'pending',
  `support_new` enum('1','2') NOT NULL DEFAULT '1',
  `canmessage` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reply`
--

CREATE TABLE `ticket_reply` (
  `id` int NOT NULL,
  `ticket_id` int NOT NULL,
  `client_id` int NOT NULL,
  `time` datetime NOT NULL,
  `support` enum('1','2') NOT NULL DEFAULT '1',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `readed` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_subjects`
--

CREATE TABLE `ticket_subjects` (
  `subject_id` int NOT NULL,
  `subject` varchar(225) NOT NULL,
  `content` text,
  `auto_reply` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ticket_subjects`
--

INSERT INTO `ticket_subjects` (`subject_id`, `subject`, `content`, `auto_reply`) VALUES
(1, 'Order', '', '0'),
(2, 'Payment', '', '0'),
(4, 'Complaint & Suggestion', '', '0'),
(6, 'Others', 'You will be answered within minutes', '1');

-- --------------------------------------------------------

--
-- Table structure for table `units_per_page`
--

CREATE TABLE `units_per_page` (
  `id` int NOT NULL,
  `unit` int NOT NULL,
  `page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `units_per_page`
--

INSERT INTO `units_per_page` (`id`, `unit`, `page`) VALUES
(1, 50, 'clients'),
(2, 50, 'orders'),
(3, 50, 'payments'),
(4, 50, 'refill'),
(5, 50, 'bulk'),
(6, 8, 'services');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `u_id` int NOT NULL,
  `service_id` int NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'Not enough data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_constants`
--
ALTER TABLE `admin_constants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulkedit`
--
ALTER TABLE `bulkedit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `childpanels`
--
ALTER TABLE `childpanels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `clients_category`
--
ALTER TABLE `clients_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_price`
--
ALTER TABLE `clients_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_service`
--
ALTER TABLE `clients_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_report`
--
ALTER TABLE `client_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decoration`
--
ALTER TABLE `decoration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earn`
--
ALTER TABLE `earn`
  ADD PRIMARY KEY (`earn_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `General_options`
--
ALTER TABLE `General_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `integrations`
--
ALTER TABLE `integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuponlar`
--
ALTER TABLE `kuponlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mailforms`
--
ALTER TABLE `Mailforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `panel_categories`
--
ALTER TABLE `panel_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel_info`
--
ALTER TABLE `panel_info`
  ADD PRIMARY KEY (`panel_id`);

--
-- Indexes for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD PRIMARY KEY (`methodId`),
  ADD KEY `methodId` (`methodId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`referral_id`);

--
-- Indexes for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  ADD PRIMARY KEY (`r_p_id`);

--
-- Indexes for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_api`
--
ALTER TABLE `service_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sync_logs`
--
ALTER TABLE `sync_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `units_per_page`
--
ALTER TABLE `units_per_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bulkedit`
--
ALTER TABLE `bulkedit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `childpanels`
--
ALTER TABLE `childpanels`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients_category`
--
ALTER TABLE `clients_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_price`
--
ALTER TABLE `clients_price`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `clients_service`
--
ALTER TABLE `clients_service`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_report`
--
ALTER TABLE `client_report`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `earn`
--
ALTER TABLE `earn`
  MODIFY `earn_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `General_options`
--
ALTER TABLE `General_options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `integrations`
--
ALTER TABLE `integrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kuponlar`
--
ALTER TABLE `kuponlar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Mailforms`
--
ALTER TABLE `Mailforms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=913;

--
-- AUTO_INCREMENT for table `panel_categories`
--
ALTER TABLE `panel_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel_info`
--
ALTER TABLE `panel_info`
  MODIFY `panel_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `methodId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `referral_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  MODIFY `r_p_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53367;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `service_api`
--
ALTER TABLE `service_api`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sync_logs`
--
ALTER TABLE `sync_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  MODIFY `subject_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `units_per_page`
--
ALTER TABLE `units_per_page`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `u_id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
