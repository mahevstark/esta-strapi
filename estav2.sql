-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 20, 2022 at 04:57 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.32
set sql_require_primary_key = off;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estav2`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int UNSIGNED NOT NULL,
  `house` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `block` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `near` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `rtl` tinyint(1) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `house`, `block`, `near`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `rtl`, `default`) VALUES
(2, '178', 'J1', 'no', '2022-09-19 13:06:55.384000', '2022-09-19 13:08:35.578000', NULL, 1, 0, NULL),
(3, 'MMMM', 'J1', 'no', '2022-09-19 13:08:56.854000', '2022-09-19 13:08:56.854000', NULL, NULL, 0, NULL),
(4, 'MMMM', 'J1', 'no', '2022-09-19 13:10:31.476000', '2022-09-19 13:10:31.476000', NULL, NULL, 0, NULL),
(6, 'MMMM', 'J1', 'no', '2022-09-23 20:18:41.761000', '2022-09-23 20:18:41.761000', NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `addresses_users_permissions_user_links`
--

CREATE TABLE `addresses_users_permissions_user_links` (
  `id` int UNSIGNED NOT NULL,
  `address_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses_users_permissions_user_links`
--

INSERT INTO `addresses_users_permissions_user_links` (`id`, `address_id`, `user_id`) VALUES
(7, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\": [\"title\", \"subtitle\", \"uid\", \"image\", \"opens_from\", \"opens_till\"]}', '[]', '2022-09-18 02:33:27.129000', '2022-09-18 10:04:44.383000', NULL, NULL),
(2, 'plugin::content-manager.explorer.create', 'api::sub-category.sub-category', '{\"fields\": [\"title\", \"subtitle\", \"image\", \"uid\"]}', '[]', '2022-09-18 02:33:27.133000', '2022-09-18 02:33:27.133000', NULL, NULL),
(3, 'plugin::content-manager.explorer.create', 'api::super-category.super-category', '{\"fields\": [\"title\", \"uid\", \"available\", \"not_available_reason\"]}', '[]', '2022-09-18 02:33:27.137000', '2022-10-02 22:58:06.792000', NULL, NULL),
(4, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\": [\"title\", \"subtitle\", \"uid\", \"image\", \"opens_from\", \"opens_till\"]}', '[]', '2022-09-18 02:33:27.140000', '2022-09-18 10:04:44.383000', NULL, NULL),
(5, 'plugin::content-manager.explorer.read', 'api::sub-category.sub-category', '{\"fields\": [\"title\", \"subtitle\", \"image\", \"uid\"]}', '[]', '2022-09-18 02:33:27.143000', '2022-09-18 02:33:27.143000', NULL, NULL),
(6, 'plugin::content-manager.explorer.read', 'api::super-category.super-category', '{\"fields\": [\"title\", \"uid\", \"available\", \"not_available_reason\"]}', '[]', '2022-09-18 02:33:27.148000', '2022-10-02 22:58:06.792000', NULL, NULL),
(7, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\": [\"title\", \"subtitle\", \"uid\", \"image\", \"opens_from\", \"opens_till\"]}', '[]', '2022-09-18 02:33:27.153000', '2022-09-18 10:04:44.383000', NULL, NULL),
(8, 'plugin::content-manager.explorer.update', 'api::sub-category.sub-category', '{\"fields\": [\"title\", \"subtitle\", \"image\", \"uid\"]}', '[]', '2022-09-18 02:33:27.156000', '2022-09-18 02:33:27.156000', NULL, NULL),
(9, 'plugin::content-manager.explorer.update', 'api::super-category.super-category', '{\"fields\": [\"title\", \"uid\", \"available\", \"not_available_reason\"]}', '[]', '2022-09-18 02:33:27.159000', '2022-10-02 22:58:06.792000', NULL, NULL),
(16, 'plugin::upload.read', NULL, '{}', '[]', '2022-09-18 02:33:27.183000', '2022-09-18 02:33:27.183000', NULL, NULL),
(17, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-09-18 02:33:27.187000', '2022-09-18 02:33:27.187000', NULL, NULL),
(18, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-09-18 02:33:27.190000', '2022-09-18 02:33:27.190000', NULL, NULL),
(19, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-09-18 02:33:27.193000', '2022-09-18 02:33:27.193000', NULL, NULL),
(20, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-09-18 02:33:27.197000', '2022-09-18 02:33:27.197000', NULL, NULL),
(21, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\": [\"title\", \"subtitle\", \"uid\", \"image\", \"opens_from\", \"opens_till\"]}', '[\"admin::is-creator\"]', '2022-09-18 02:33:27.201000', '2022-09-18 10:04:44.383000', NULL, NULL),
(22, 'plugin::content-manager.explorer.create', 'api::sub-category.sub-category', '{\"fields\": [\"title\", \"subtitle\", \"image\", \"uid\"]}', '[\"admin::is-creator\"]', '2022-09-18 02:33:27.205000', '2022-09-18 02:33:27.205000', NULL, NULL),
(23, 'plugin::content-manager.explorer.create', 'api::super-category.super-category', '{\"fields\": [\"title\", \"uid\", \"available\", \"not_available_reason\"]}', '[\"admin::is-creator\"]', '2022-09-18 02:33:27.209000', '2022-10-02 22:58:06.792000', NULL, NULL),
(24, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\": [\"title\", \"subtitle\", \"uid\", \"image\", \"opens_from\", \"opens_till\"]}', '[\"admin::is-creator\"]', '2022-09-18 02:33:27.212000', '2022-09-18 10:04:44.383000', NULL, NULL),
(25, 'plugin::content-manager.explorer.read', 'api::sub-category.sub-category', '{\"fields\": [\"title\", \"subtitle\", \"image\", \"uid\"]}', '[\"admin::is-creator\"]', '2022-09-18 02:33:27.215000', '2022-09-18 02:33:27.215000', NULL, NULL),
(26, 'plugin::content-manager.explorer.read', 'api::super-category.super-category', '{\"fields\": [\"title\", \"uid\", \"available\", \"not_available_reason\"]}', '[\"admin::is-creator\"]', '2022-09-18 02:33:27.218000', '2022-10-02 22:58:06.792000', NULL, NULL),
(27, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\": [\"title\", \"subtitle\", \"uid\", \"image\", \"opens_from\", \"opens_till\"]}', '[\"admin::is-creator\"]', '2022-09-18 02:33:27.223000', '2022-09-18 10:04:44.383000', NULL, NULL),
(28, 'plugin::content-manager.explorer.update', 'api::sub-category.sub-category', '{\"fields\": [\"title\", \"subtitle\", \"image\", \"uid\"]}', '[\"admin::is-creator\"]', '2022-09-18 02:33:27.226000', '2022-09-18 02:33:27.226000', NULL, NULL),
(29, 'plugin::content-manager.explorer.update', 'api::super-category.super-category', '{\"fields\": [\"title\", \"uid\", \"available\", \"not_available_reason\"]}', '[\"admin::is-creator\"]', '2022-09-18 02:33:27.230000', '2022-10-02 22:58:06.792000', NULL, NULL),
(33, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2022-09-18 02:33:27.244000', '2022-09-18 02:33:27.244000', NULL, NULL),
(34, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-09-18 02:33:27.248000', '2022-09-18 02:33:27.248000', NULL, NULL),
(35, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2022-09-18 02:33:27.251000', '2022-09-18 02:33:27.251000', NULL, NULL),
(36, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-09-18 02:33:27.254000', '2022-09-18 02:33:27.254000', NULL, NULL),
(37, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-09-18 02:33:27.257000', '2022-09-18 02:33:27.257000', NULL, NULL),
(50, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2022-09-18 02:33:27.321000', '2022-09-18 02:33:27.321000', NULL, NULL),
(51, 'plugin::content-manager.explorer.delete', 'api::category.category', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 09:26:23.055000', '2022-09-18 09:26:23.055000', NULL, NULL),
(52, 'plugin::content-manager.explorer.delete', 'api::sub-category.sub-category', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 09:26:23.058000', '2022-09-18 09:26:23.058000', NULL, NULL),
(53, 'plugin::content-manager.explorer.delete', 'api::super-category.super-category', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 09:26:23.062000', '2022-09-18 09:26:23.062000', NULL, NULL),
(54, 'plugin::content-manager.explorer.publish', 'api::category.category', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 09:26:23.065000', '2022-09-18 09:26:23.065000', NULL, NULL),
(55, 'plugin::content-manager.explorer.publish', 'api::sub-category.sub-category', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 09:26:23.069000', '2022-09-18 09:26:23.069000', NULL, NULL),
(56, 'plugin::content-manager.explorer.publish', 'api::super-category.super-category', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 09:26:23.073000', '2022-09-18 09:26:23.073000', NULL, NULL),
(57, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2022-09-18 02:33:27.344000', '2022-09-18 02:33:27.344000', NULL, NULL),
(58, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2022-09-18 02:33:27.347000', '2022-09-18 02:33:27.347000', NULL, NULL),
(59, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2022-09-18 02:33:27.350000', '2022-09-18 02:33:27.350000', NULL, NULL),
(60, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2022-09-18 02:33:27.353000', '2022-09-18 02:33:27.353000', NULL, NULL),
(61, 'plugin::email.settings.read', NULL, '{}', '[]', '2022-09-18 02:33:27.357000', '2022-09-18 02:33:27.357000', NULL, NULL),
(62, 'plugin::upload.read', NULL, '{}', '[]', '2022-09-18 02:33:27.360000', '2022-09-18 02:33:27.360000', NULL, NULL),
(63, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-09-18 02:33:27.363000', '2022-09-18 02:33:27.363000', NULL, NULL),
(64, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-09-18 02:33:27.367000', '2022-09-18 02:33:27.367000', NULL, NULL),
(65, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-09-18 02:33:27.370000', '2022-09-18 02:33:27.370000', NULL, NULL),
(66, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-09-18 02:33:27.373000', '2022-09-18 02:33:27.373000', NULL, NULL),
(67, 'plugin::upload.settings.read', NULL, '{}', '[]', '2022-09-18 02:33:27.376000', '2022-09-18 02:33:27.376000', NULL, NULL),
(68, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2022-09-18 02:33:27.380000', '2022-09-18 02:33:27.380000', NULL, NULL),
(69, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2022-09-18 02:33:27.383000', '2022-09-18 02:33:27.383000', NULL, NULL),
(70, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2022-09-18 02:33:27.386000', '2022-09-18 02:33:27.386000', NULL, NULL),
(71, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2022-09-18 02:33:27.389000', '2022-09-18 02:33:27.389000', NULL, NULL),
(72, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2022-09-18 02:33:27.392000', '2022-09-18 02:33:27.392000', NULL, NULL),
(73, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2022-09-18 02:33:27.395000', '2022-09-18 02:33:27.395000', NULL, NULL),
(74, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2022-09-18 02:33:27.398000', '2022-09-18 02:33:27.398000', NULL, NULL),
(75, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2022-09-18 02:33:27.401000', '2022-09-18 02:33:27.401000', NULL, NULL),
(76, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2022-09-18 02:33:27.406000', '2022-09-18 02:33:27.406000', NULL, NULL),
(77, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2022-09-18 02:33:27.410000', '2022-09-18 02:33:27.410000', NULL, NULL),
(78, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2022-09-18 02:33:27.414000', '2022-09-18 02:33:27.414000', NULL, NULL),
(79, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2022-09-18 02:33:27.417000', '2022-09-18 02:33:27.417000', NULL, NULL),
(80, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2022-09-18 02:33:27.420000', '2022-09-18 02:33:27.420000', NULL, NULL),
(81, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2022-09-18 02:33:27.424000', '2022-09-18 02:33:27.424000', NULL, NULL),
(82, 'admin::marketplace.read', NULL, '{}', '[]', '2022-09-18 02:33:27.428000', '2022-09-18 02:33:27.428000', NULL, NULL),
(83, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2022-09-18 02:33:27.431000', '2022-09-18 02:33:27.431000', NULL, NULL),
(84, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2022-09-18 02:33:27.434000', '2022-09-18 02:33:27.434000', NULL, NULL),
(85, 'admin::webhooks.create', NULL, '{}', '[]', '2022-09-18 02:33:27.437000', '2022-09-18 02:33:27.437000', NULL, NULL),
(86, 'admin::webhooks.read', NULL, '{}', '[]', '2022-09-18 02:33:27.441000', '2022-09-18 02:33:27.441000', NULL, NULL),
(87, 'admin::webhooks.update', NULL, '{}', '[]', '2022-09-18 02:33:27.447000', '2022-09-18 02:33:27.447000', NULL, NULL),
(88, 'admin::webhooks.delete', NULL, '{}', '[]', '2022-09-18 02:33:27.450000', '2022-09-18 02:33:27.450000', NULL, NULL),
(89, 'admin::users.create', NULL, '{}', '[]', '2022-09-18 02:33:27.453000', '2022-09-18 02:33:27.453000', NULL, NULL),
(90, 'admin::users.read', NULL, '{}', '[]', '2022-09-18 02:33:27.457000', '2022-09-18 02:33:27.457000', NULL, NULL),
(91, 'admin::users.update', NULL, '{}', '[]', '2022-09-18 02:33:27.461000', '2022-09-18 02:33:27.461000', NULL, NULL),
(92, 'admin::users.delete', NULL, '{}', '[]', '2022-09-18 02:33:27.464000', '2022-09-18 02:33:27.464000', NULL, NULL),
(93, 'admin::roles.create', NULL, '{}', '[]', '2022-09-18 02:33:27.467000', '2022-09-18 02:33:27.467000', NULL, NULL),
(94, 'admin::roles.read', NULL, '{}', '[]', '2022-09-18 02:33:27.470000', '2022-09-18 02:33:27.470000', NULL, NULL),
(95, 'admin::roles.update', NULL, '{}', '[]', '2022-09-18 02:33:27.473000', '2022-09-18 02:33:27.473000', NULL, NULL),
(96, 'admin::roles.delete', NULL, '{}', '[]', '2022-09-18 02:33:27.478000', '2022-09-18 02:33:27.478000', NULL, NULL),
(97, 'admin::api-tokens.create', NULL, '{}', '[]', '2022-09-18 02:33:27.481000', '2022-09-18 02:33:27.481000', NULL, NULL),
(98, 'admin::api-tokens.read', NULL, '{}', '[]', '2022-09-18 02:33:27.484000', '2022-09-18 02:33:27.484000', NULL, NULL),
(99, 'admin::api-tokens.update', NULL, '{}', '[]', '2022-09-18 02:33:27.487000', '2022-09-18 02:33:27.487000', NULL, NULL),
(100, 'admin::api-tokens.delete', NULL, '{}', '[]', '2022-09-18 02:33:27.490000', '2022-09-18 02:33:27.490000', NULL, NULL),
(101, 'admin::project-settings.update', NULL, '{}', '[]', '2022-09-18 02:33:27.494000', '2022-09-18 02:33:27.494000', NULL, NULL),
(102, 'admin::project-settings.read', NULL, '{}', '[]', '2022-09-18 02:33:27.497000', '2022-09-18 02:33:27.497000', NULL, NULL),
(112, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\": [\"title\", \"subtitle\", \"uid\", \"image\", \"opens_from\", \"opens_till\", \"super_category\", \"sub_categories\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:05:24.084000', '2022-09-18 10:05:24.084000', NULL, NULL),
(114, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\": [\"title\", \"subtitle\", \"uid\", \"image\", \"opens_from\", \"opens_till\", \"super_category\", \"sub_categories\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:05:24.093000', '2022-09-18 10:05:24.093000', NULL, NULL),
(116, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\": [\"title\", \"subtitle\", \"uid\", \"image\", \"opens_from\", \"opens_till\", \"super_category\", \"sub_categories\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:05:24.101000', '2022-09-18 10:05:24.101000', NULL, NULL),
(121, 'plugin::content-manager.explorer.delete', 'api::product.product', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:18:57.117000', '2022-09-18 10:18:57.117000', NULL, NULL),
(122, 'plugin::content-manager.explorer.publish', 'api::product.product', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:18:57.125000', '2022-09-18 10:18:57.125000', NULL, NULL),
(142, 'plugin::content-manager.explorer.delete', 'api::attribute.attribute', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:23:30.014000', '2022-09-18 10:23:30.014000', NULL, NULL),
(143, 'plugin::content-manager.explorer.publish', 'api::attribute.attribute', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:23:30.017000', '2022-09-18 10:23:30.017000', NULL, NULL),
(144, 'plugin::content-manager.explorer.create', 'api::attribute.attribute', '{\"fields\": [\"title\", \"product\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:24:32.877000', '2022-09-18 10:24:32.877000', NULL, NULL),
(146, 'plugin::content-manager.explorer.create', 'api::sub-category.sub-category', '{\"fields\": [\"title\", \"subtitle\", \"image\", \"uid\", \"category\", \"products\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:24:32.886000', '2022-09-18 10:24:32.886000', NULL, NULL),
(147, 'plugin::content-manager.explorer.read', 'api::attribute.attribute', '{\"fields\": [\"title\", \"product\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:24:32.890000', '2022-09-18 10:24:32.890000', NULL, NULL),
(149, 'plugin::content-manager.explorer.read', 'api::sub-category.sub-category', '{\"fields\": [\"title\", \"subtitle\", \"image\", \"uid\", \"category\", \"products\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:24:32.897000', '2022-09-18 10:24:32.897000', NULL, NULL),
(150, 'plugin::content-manager.explorer.update', 'api::attribute.attribute', '{\"fields\": [\"title\", \"product\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:24:32.901000', '2022-09-18 10:24:32.901000', NULL, NULL),
(152, 'plugin::content-manager.explorer.update', 'api::sub-category.sub-category', '{\"fields\": [\"title\", \"subtitle\", \"image\", \"uid\", \"category\", \"products\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:24:32.910000', '2022-09-18 10:24:32.910000', NULL, NULL),
(159, 'plugin::content-manager.explorer.create', 'api::unit.unit', '{\"fields\": [\"title\", \"product\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:32:46.692000', '2022-09-18 10:32:46.692000', NULL, NULL),
(160, 'plugin::content-manager.explorer.read', 'api::unit.unit', '{\"fields\": [\"title\", \"product\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:32:46.697000', '2022-09-18 10:32:46.697000', NULL, NULL),
(161, 'plugin::content-manager.explorer.update', 'api::unit.unit', '{\"fields\": [\"title\", \"product\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:32:46.702000', '2022-09-18 10:32:46.702000', NULL, NULL),
(162, 'plugin::content-manager.explorer.delete', 'api::unit.unit', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:32:46.707000', '2022-09-18 10:32:46.707000', NULL, NULL),
(163, 'plugin::content-manager.explorer.publish', 'api::unit.unit', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 10:32:46.713000', '2022-09-18 10:32:46.713000', NULL, NULL),
(167, 'plugin::content-manager.explorer.delete', 'api::tempphone.tempphone', '{}', '[]', '2022-09-18 12:12:51.954000', '2022-09-18 12:12:51.954000', NULL, NULL),
(171, 'plugin::content-manager.explorer.create', 'api::tempphone.tempphone', '{\"fields\": [\"phoneNumber\", \"slip\", \"timestamp\", \"sid\"]}', '[]', '2022-09-18 14:01:01.715000', '2022-09-18 14:01:01.715000', NULL, NULL),
(172, 'plugin::content-manager.explorer.read', 'api::tempphone.tempphone', '{\"fields\": [\"phoneNumber\", \"slip\", \"timestamp\", \"sid\"]}', '[]', '2022-09-18 14:01:01.721000', '2022-09-18 14:01:01.721000', NULL, NULL),
(173, 'plugin::content-manager.explorer.update', 'api::tempphone.tempphone', '{\"fields\": [\"phoneNumber\", \"slip\", \"timestamp\", \"sid\"]}', '[]', '2022-09-18 14:01:01.725000', '2022-09-18 14:01:01.725000', NULL, NULL),
(177, 'plugin::content-manager.explorer.delete', 'api::city.city', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 14:46:31.716000', '2022-09-18 14:46:31.716000', NULL, NULL),
(178, 'plugin::content-manager.explorer.publish', 'api::city.city', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 14:46:31.720000', '2022-09-18 14:46:31.720000', NULL, NULL),
(180, 'plugin::content-manager.explorer.create', 'api::city.city', '{\"fields\": [\"title\", \"areas\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 14:47:03.270000', '2022-09-18 14:47:03.270000', NULL, NULL),
(182, 'plugin::content-manager.explorer.read', 'api::city.city', '{\"fields\": [\"title\", \"areas\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 14:47:03.277000', '2022-09-18 14:47:03.277000', NULL, NULL),
(184, 'plugin::content-manager.explorer.update', 'api::city.city', '{\"fields\": [\"title\", \"areas\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 14:47:03.286000', '2022-09-18 14:47:03.286000', NULL, NULL),
(185, 'plugin::content-manager.explorer.delete', 'api::area.area', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 14:47:03.289000', '2022-09-18 14:47:03.289000', NULL, NULL),
(186, 'plugin::content-manager.explorer.publish', 'api::area.area', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-09-18 14:47:03.293000', '2022-09-18 14:47:03.293000', NULL, NULL),
(196, 'plugin::documentation.read', NULL, '{}', '[]', '2022-09-18 21:39:40.325000', '2022-09-18 21:39:40.325000', NULL, NULL),
(197, 'plugin::documentation.settings.update', NULL, '{}', '[]', '2022-09-18 21:39:40.336000', '2022-09-18 21:39:40.336000', NULL, NULL),
(198, 'plugin::documentation.settings.regenerate', NULL, '{}', '[]', '2022-09-18 21:39:40.342000', '2022-09-18 21:39:40.342000', NULL, NULL),
(199, 'plugin::documentation.settings.read', NULL, '{}', '[]', '2022-09-18 21:39:40.350000', '2022-09-18 21:39:40.350000', NULL, NULL),
(216, 'plugin::content-manager.explorer.delete', 'api::address.address', '{}', '[]', '2022-09-19 12:50:30.373000', '2022-09-19 12:50:30.373000', NULL, NULL),
(227, 'plugin::content-manager.explorer.create', 'api::favorite.favorite', '{\"fields\": [\"product\", \"users_permissions_user\"]}', '[]', '2022-09-22 15:58:01.142000', '2022-09-22 15:58:01.142000', NULL, NULL),
(230, 'plugin::content-manager.explorer.read', 'api::favorite.favorite', '{\"fields\": [\"product\", \"users_permissions_user\"]}', '[]', '2022-09-22 15:58:01.157000', '2022-09-22 15:58:01.157000', NULL, NULL),
(233, 'plugin::content-manager.explorer.update', 'api::favorite.favorite', '{\"fields\": [\"product\", \"users_permissions_user\"]}', '[]', '2022-09-22 15:58:01.173000', '2022-09-22 15:58:01.173000', NULL, NULL),
(235, 'plugin::content-manager.explorer.delete', 'api::favorite.favorite', '{}', '[]', '2022-09-22 15:58:01.185000', '2022-09-22 15:58:01.185000', NULL, NULL),
(236, 'plugin::content-manager.explorer.publish', 'api::favorite.favorite', '{}', '[]', '2022-09-22 15:58:01.190000', '2022-09-22 15:58:01.190000', NULL, NULL),
(243, 'plugin::content-manager.explorer.delete', 'api::order.order', '{}', '[]', '2022-09-22 20:59:08.137000', '2022-09-22 20:59:08.137000', NULL, NULL),
(244, 'plugin::content-manager.explorer.publish', 'api::order.order', '{}', '[]', '2022-09-22 20:59:08.142000', '2022-09-22 20:59:08.142000', NULL, NULL),
(260, 'plugin::content-manager.explorer.delete', 'api::order-product.order-product', '{}', '[]', '2022-09-22 21:05:22.008000', '2022-09-22 21:05:22.008000', NULL, NULL),
(261, 'plugin::content-manager.explorer.publish', 'api::order-product.order-product', '{}', '[]', '2022-09-22 21:05:22.013000', '2022-09-22 21:05:22.013000', NULL, NULL),
(262, 'plugin::content-manager.explorer.create', 'api::address.address', '{\"fields\": [\"house\", \"block\", \"near\", \"users_permissions_user\", \"rtl\", \"default\", \"order\"]}', '[]', '2022-09-22 21:06:14.458000', '2022-09-22 21:06:14.458000', NULL, NULL),
(264, 'plugin::content-manager.explorer.read', 'api::address.address', '{\"fields\": [\"house\", \"block\", \"near\", \"users_permissions_user\", \"rtl\", \"default\", \"order\"]}', '[]', '2022-09-22 21:06:14.470000', '2022-09-22 21:06:14.470000', NULL, NULL),
(266, 'plugin::content-manager.explorer.update', 'api::address.address', '{\"fields\": [\"house\", \"block\", \"near\", \"users_permissions_user\", \"rtl\", \"default\", \"order\"]}', '[]', '2022-09-22 21:06:14.479000', '2022-09-22 21:06:14.479000', NULL, NULL),
(271, 'plugin::content-manager.explorer.delete', 'api::boy.boy', '{}', '[]', '2022-09-22 21:13:09.724000', '2022-09-22 21:13:09.724000', NULL, NULL),
(272, 'plugin::content-manager.explorer.publish', 'api::boy.boy', '{}', '[]', '2022-09-22 21:13:09.732000', '2022-09-22 21:13:09.732000', NULL, NULL),
(285, 'plugin::content-manager.explorer.create', 'api::coupon.coupon', '{\"fields\": [\"title\", \"code\", \"discount.discount_type\", \"discount.discount\", \"discount.label\", \"discount.description\", \"usage_count\", \"max_count\"]}', '[]', '2022-09-22 21:21:43.593000', '2022-09-22 21:21:43.593000', NULL, NULL),
(286, 'plugin::content-manager.explorer.read', 'api::coupon.coupon', '{\"fields\": [\"title\", \"code\", \"discount.discount_type\", \"discount.discount\", \"discount.label\", \"discount.description\", \"usage_count\", \"max_count\"]}', '[]', '2022-09-22 21:21:43.601000', '2022-09-22 21:21:43.601000', NULL, NULL),
(287, 'plugin::content-manager.explorer.update', 'api::coupon.coupon', '{\"fields\": [\"title\", \"code\", \"discount.discount_type\", \"discount.discount\", \"discount.label\", \"discount.description\", \"usage_count\", \"max_count\"]}', '[]', '2022-09-22 21:21:43.607000', '2022-09-22 21:21:43.607000', NULL, NULL),
(288, 'plugin::content-manager.explorer.delete', 'api::coupon.coupon', '{}', '[]', '2022-09-22 21:21:43.612000', '2022-09-22 21:21:43.612000', NULL, NULL),
(289, 'plugin::content-manager.explorer.publish', 'api::coupon.coupon', '{}', '[]', '2022-09-22 21:21:43.617000', '2022-09-22 21:21:43.617000', NULL, NULL),
(296, 'plugin::content-manager.explorer.delete', 'api::job.job', '{}', '[]', '2022-09-22 21:25:56.767000', '2022-09-22 21:25:56.767000', NULL, NULL),
(297, 'plugin::content-manager.explorer.create', 'api::job.job', '{\"fields\": [\"comment\", \"order\", \"boy\", \"status\", \"job_updates\"]}', '[]', '2022-09-22 21:28:51.823000', '2022-09-22 21:28:51.823000', NULL, NULL),
(298, 'plugin::content-manager.explorer.create', 'api::job-update.job-update', '{\"fields\": [\"label\", \"job\", \"private_label\"]}', '[]', '2022-09-22 21:28:51.827000', '2022-09-22 21:28:51.827000', NULL, NULL),
(299, 'plugin::content-manager.explorer.read', 'api::job.job', '{\"fields\": [\"comment\", \"order\", \"boy\", \"status\", \"job_updates\"]}', '[]', '2022-09-22 21:28:51.833000', '2022-09-22 21:28:51.833000', NULL, NULL),
(300, 'plugin::content-manager.explorer.read', 'api::job-update.job-update', '{\"fields\": [\"label\", \"job\", \"private_label\"]}', '[]', '2022-09-22 21:28:51.838000', '2022-09-22 21:28:51.838000', NULL, NULL),
(301, 'plugin::content-manager.explorer.update', 'api::job.job', '{\"fields\": [\"comment\", \"order\", \"boy\", \"status\", \"job_updates\"]}', '[]', '2022-09-22 21:28:51.843000', '2022-09-22 21:28:51.843000', NULL, NULL),
(302, 'plugin::content-manager.explorer.update', 'api::job-update.job-update', '{\"fields\": [\"label\", \"job\", \"private_label\"]}', '[]', '2022-09-22 21:28:51.847000', '2022-09-22 21:28:51.847000', NULL, NULL),
(303, 'plugin::content-manager.explorer.delete', 'api::job-update.job-update', '{}', '[]', '2022-09-22 21:28:51.851000', '2022-09-22 21:28:51.851000', NULL, NULL),
(330, 'plugin::content-manager.explorer.delete', 'api::charge.charge', '{}', '[]', '2022-09-24 01:18:28.548000', '2022-09-24 01:18:28.548000', NULL, NULL),
(331, 'plugin::content-manager.explorer.publish', 'api::charge.charge', '{}', '[]', '2022-09-24 01:18:28.552000', '2022-09-24 01:18:28.552000', NULL, NULL),
(344, 'plugin::content-manager.explorer.create', 'api::order.order', '{\"fields\": [\"users_permissions_user\", \"total_price\", \"tax\", \"delivery_charges\", \"discount\", \"status\", \"service_fee\", \"payment_method\", \"order_products\", \"address\", \"address_text\", \"phone_number\", \"payment_snapshot\", \"scheduled\", \"scheduled_for\", \"job\", \"notes\", \"order_uid\", \"area\", \"bill\", \"order_complain\"]}', '[]', '2022-09-24 19:39:51.704000', '2022-09-24 19:39:51.704000', NULL, NULL),
(346, 'plugin::content-manager.explorer.create', 'api::order-product.order-product', '{\"fields\": [\"order\", \"product\", \"qty\", \"price\", \"total\", \"discount\", \"notes\", \"order_complain\"]}', '[]', '2022-09-24 19:39:51.713000', '2022-09-24 19:39:51.713000', NULL, NULL),
(347, 'plugin::content-manager.explorer.read', 'api::order.order', '{\"fields\": [\"users_permissions_user\", \"total_price\", \"tax\", \"delivery_charges\", \"discount\", \"status\", \"service_fee\", \"payment_method\", \"order_products\", \"address\", \"address_text\", \"phone_number\", \"payment_snapshot\", \"scheduled\", \"scheduled_for\", \"job\", \"notes\", \"order_uid\", \"area\", \"bill\", \"order_complain\"]}', '[]', '2022-09-24 19:39:51.716000', '2022-09-24 19:39:51.716000', NULL, NULL),
(349, 'plugin::content-manager.explorer.read', 'api::order-product.order-product', '{\"fields\": [\"order\", \"product\", \"qty\", \"price\", \"total\", \"discount\", \"notes\", \"order_complain\"]}', '[]', '2022-09-24 19:39:51.723000', '2022-09-24 19:39:51.723000', NULL, NULL),
(350, 'plugin::content-manager.explorer.update', 'api::order.order', '{\"fields\": [\"users_permissions_user\", \"total_price\", \"tax\", \"delivery_charges\", \"discount\", \"status\", \"service_fee\", \"payment_method\", \"order_products\", \"address\", \"address_text\", \"phone_number\", \"payment_snapshot\", \"scheduled\", \"scheduled_for\", \"job\", \"notes\", \"order_uid\", \"area\", \"bill\", \"order_complain\"]}', '[]', '2022-09-24 19:39:51.727000', '2022-09-24 19:39:51.727000', NULL, NULL),
(352, 'plugin::content-manager.explorer.update', 'api::order-product.order-product', '{\"fields\": [\"order\", \"product\", \"qty\", \"price\", \"total\", \"discount\", \"notes\", \"order_complain\"]}', '[]', '2022-09-24 19:39:51.736000', '2022-09-24 19:39:51.736000', NULL, NULL),
(353, 'plugin::content-manager.explorer.delete', 'api::order-complain.order-complain', '{}', '[]', '2022-09-24 19:39:51.739000', '2022-09-24 19:39:51.739000', NULL, NULL),
(355, 'plugin::content-manager.explorer.create', 'api::order-complain.order-complain', '{\"fields\": [\"order\", \"order_product\", \"status\", \"complain\", \"complain_comment\"]}', '[]', '2022-09-24 19:58:11.701000', '2022-09-24 19:58:11.701000', NULL, NULL),
(357, 'plugin::content-manager.explorer.read', 'api::order-complain.order-complain', '{\"fields\": [\"order\", \"order_product\", \"status\", \"complain\", \"complain_comment\"]}', '[]', '2022-09-24 19:58:11.710000', '2022-09-24 19:58:11.710000', NULL, NULL),
(359, 'plugin::content-manager.explorer.update', 'api::order-complain.order-complain', '{\"fields\": [\"order\", \"order_product\", \"status\", \"complain\", \"complain_comment\"]}', '[]', '2022-09-24 19:58:11.719000', '2022-09-24 19:58:11.719000', NULL, NULL),
(360, 'plugin::content-manager.explorer.delete', 'api::complain-comment.complain-comment', '{}', '[]', '2022-09-24 19:58:11.723000', '2022-09-24 19:58:11.723000', NULL, NULL),
(361, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"phoneNumber\", \"complete\", \"name\", \"area\", \"addresses\", \"favorite\", \"orders\", \"complain_comment\"]}', '[]', '2022-09-24 19:59:40.772000', '2022-09-24 19:59:40.772000', NULL, NULL),
(362, 'plugin::content-manager.explorer.create', 'api::complain-comment.complain-comment', '{\"fields\": [\"comment\", \"order_complain\", \"users_permissions_user\"]}', '[]', '2022-09-24 19:59:40.777000', '2022-09-24 19:59:40.777000', NULL, NULL),
(363, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"phoneNumber\", \"complete\", \"name\", \"area\", \"addresses\", \"favorite\", \"orders\", \"complain_comment\"]}', '[]', '2022-09-24 19:59:40.781000', '2022-09-24 19:59:40.781000', NULL, NULL),
(364, 'plugin::content-manager.explorer.read', 'api::complain-comment.complain-comment', '{\"fields\": [\"comment\", \"order_complain\", \"users_permissions_user\"]}', '[]', '2022-09-24 19:59:40.785000', '2022-09-24 19:59:40.785000', NULL, NULL),
(365, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"phoneNumber\", \"complete\", \"name\", \"area\", \"addresses\", \"favorite\", \"orders\", \"complain_comment\"]}', '[]', '2022-09-24 19:59:40.789000', '2022-09-24 19:59:40.789000', NULL, NULL),
(366, 'plugin::content-manager.explorer.update', 'api::complain-comment.complain-comment', '{\"fields\": [\"comment\", \"order_complain\", \"users_permissions_user\"]}', '[]', '2022-09-24 19:59:40.792000', '2022-09-24 19:59:40.792000', NULL, NULL),
(367, 'plugin::content-manager.explorer.create', 'api::boy.boy', '{\"fields\": [\"name\", \"phone\", \"cnic\", \"driving_license\", \"license_type\", \"license_images\", \"cninc_images\", \"nickname\", \"permanent_address\", \"current_address\", \"relative.name\", \"relative.phone\", \"relative.cnic\", \"relative.current_address\", \"relative.permanent_address\", \"relative.email\", \"relative.image\", \"images\", \"profile_picture\", \"boy_uid\", \"account_type\", \"account_status\", \"password\", \"reset_token\", \"token\", \"online\"]}', '[]', '2022-09-25 01:09:24.034000', '2022-09-25 01:09:24.034000', NULL, NULL),
(368, 'plugin::content-manager.explorer.read', 'api::boy.boy', '{\"fields\": [\"name\", \"phone\", \"cnic\", \"driving_license\", \"license_type\", \"license_images\", \"cninc_images\", \"nickname\", \"permanent_address\", \"current_address\", \"relative.name\", \"relative.phone\", \"relative.cnic\", \"relative.current_address\", \"relative.permanent_address\", \"relative.email\", \"relative.image\", \"images\", \"profile_picture\", \"boy_uid\", \"account_type\", \"account_status\", \"password\", \"reset_token\", \"token\", \"online\"]}', '[]', '2022-09-25 01:09:24.040000', '2022-09-25 01:09:24.040000', NULL, NULL),
(369, 'plugin::content-manager.explorer.update', 'api::boy.boy', '{\"fields\": [\"name\", \"phone\", \"cnic\", \"driving_license\", \"license_type\", \"license_images\", \"cninc_images\", \"nickname\", \"permanent_address\", \"current_address\", \"relative.name\", \"relative.phone\", \"relative.cnic\", \"relative.current_address\", \"relative.permanent_address\", \"relative.email\", \"relative.image\", \"images\", \"profile_picture\", \"boy_uid\", \"account_type\", \"account_status\", \"password\", \"reset_token\", \"token\", \"online\"]}', '[]', '2022-09-25 01:09:24.045000', '2022-09-25 01:09:24.045000', NULL, NULL),
(370, 'plugin::content-manager.explorer.create', 'api::slider.slider', '{\"fields\": [\"title\", \"image\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-02 22:02:12.399000', '2022-10-02 22:02:12.399000', NULL, NULL),
(371, 'plugin::content-manager.explorer.read', 'api::slider.slider', '{\"fields\": [\"title\", \"image\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-02 22:02:12.407000', '2022-10-02 22:02:12.407000', NULL, NULL),
(372, 'plugin::content-manager.explorer.update', 'api::slider.slider', '{\"fields\": [\"title\", \"image\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-02 22:02:12.413000', '2022-10-02 22:02:12.413000', NULL, NULL),
(373, 'plugin::content-manager.explorer.delete', 'api::slider.slider', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-02 22:02:12.419000', '2022-10-02 22:02:12.419000', NULL, NULL),
(374, 'plugin::content-manager.explorer.publish', 'api::slider.slider', '{\"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-02 22:02:12.425000', '2022-10-02 22:02:12.425000', NULL, NULL),
(378, 'plugin::content-manager.explorer.create', 'api::super-category.super-category', '{\"fields\": [\"title\", \"image\", \"uid\", \"available\", \"not_available_reason\", \"categories\", \"subtitle\", \"icon\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-03 11:46:40.374000', '2022-10-03 11:46:40.374000', NULL, NULL),
(379, 'plugin::content-manager.explorer.read', 'api::super-category.super-category', '{\"fields\": [\"title\", \"image\", \"uid\", \"available\", \"not_available_reason\", \"categories\", \"subtitle\", \"icon\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-03 11:46:40.382000', '2022-10-03 11:46:40.382000', NULL, NULL),
(380, 'plugin::content-manager.explorer.update', 'api::super-category.super-category', '{\"fields\": [\"title\", \"image\", \"uid\", \"available\", \"not_available_reason\", \"categories\", \"subtitle\", \"icon\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-03 11:46:40.386000', '2022-10-03 11:46:40.386000', NULL, NULL),
(381, 'plugin::content-manager.explorer.create', 'api::product.product', '{\"fields\": [\"title\", \"subtitle\", \"available\", \"unit\", \"attributes\", \"sub_category\", \"purchase_price\", \"sale_price\", \"stock\", \"discount_type\", \"discount\", \"image\", \"images\", \"tags\", \"favorite\", \"order_product\", \"background_color\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-16 23:24:51.206000', '2022-10-16 23:24:51.206000', NULL, NULL),
(382, 'plugin::content-manager.explorer.read', 'api::product.product', '{\"fields\": [\"title\", \"subtitle\", \"available\", \"unit\", \"attributes\", \"sub_category\", \"purchase_price\", \"sale_price\", \"stock\", \"discount_type\", \"discount\", \"image\", \"images\", \"tags\", \"favorite\", \"order_product\", \"background_color\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-16 23:24:51.211000', '2022-10-16 23:24:51.211000', NULL, NULL),
(383, 'plugin::content-manager.explorer.update', 'api::product.product', '{\"fields\": [\"title\", \"subtitle\", \"available\", \"unit\", \"attributes\", \"sub_category\", \"purchase_price\", \"sale_price\", \"stock\", \"discount_type\", \"discount\", \"image\", \"images\", \"tags\", \"favorite\", \"order_product\", \"background_color\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-16 23:24:51.216000', '2022-10-16 23:24:51.216000', NULL, NULL),
(384, 'plugin::content-manager.explorer.create', 'api::area.area', '{\"fields\": [\"title\", \"city\", \"user\", \"charge\", \"order\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-18 23:08:08.294000', '2022-10-18 23:08:08.294000', NULL, NULL),
(385, 'plugin::content-manager.explorer.create', 'api::charge.charge', '{\"fields\": [\"label\", \"tax\", \"delivery_charges\", \"service_fee\", \"available\", \"areas\"]}', '[]', '2022-10-18 23:08:08.303000', '2022-10-18 23:08:08.303000', NULL, NULL),
(386, 'plugin::content-manager.explorer.read', 'api::area.area', '{\"fields\": [\"title\", \"city\", \"user\", \"charge\", \"order\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-18 23:08:08.308000', '2022-10-18 23:08:08.308000', NULL, NULL),
(387, 'plugin::content-manager.explorer.read', 'api::charge.charge', '{\"fields\": [\"label\", \"tax\", \"delivery_charges\", \"service_fee\", \"available\", \"areas\"]}', '[]', '2022-10-18 23:08:08.312000', '2022-10-18 23:08:08.312000', NULL, NULL),
(388, 'plugin::content-manager.explorer.update', 'api::area.area', '{\"fields\": [\"title\", \"city\", \"user\", \"charge\", \"order\"], \"locales\": [\"en\", \"ur-PK\"]}', '[]', '2022-10-18 23:08:08.316000', '2022-10-18 23:08:08.316000', NULL, NULL),
(389, 'plugin::content-manager.explorer.update', 'api::charge.charge', '{\"fields\": [\"label\", \"tax\", \"delivery_charges\", \"service_fee\", \"available\", \"areas\"]}', '[]', '2022-10-18 23:08:08.321000', '2022-10-18 23:08:08.321000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 3),
(22, 22, 3),
(23, 23, 3),
(24, 24, 3),
(25, 25, 3),
(26, 26, 3),
(27, 27, 3),
(28, 28, 3),
(29, 29, 3),
(33, 33, 3),
(34, 34, 3),
(35, 35, 3),
(36, 36, 3),
(37, 37, 3),
(50, 50, 1),
(57, 57, 1),
(58, 58, 1),
(59, 59, 1),
(60, 60, 1),
(61, 61, 1),
(62, 62, 1),
(63, 63, 1),
(64, 64, 1),
(65, 65, 1),
(66, 66, 1),
(67, 67, 1),
(68, 68, 1),
(69, 69, 1),
(70, 70, 1),
(71, 71, 1),
(72, 72, 1),
(73, 73, 1),
(74, 74, 1),
(75, 75, 1),
(76, 76, 1),
(77, 77, 1),
(78, 78, 1),
(79, 79, 1),
(80, 80, 1),
(81, 81, 1),
(82, 82, 1),
(83, 83, 1),
(84, 84, 1),
(85, 85, 1),
(86, 86, 1),
(87, 87, 1),
(88, 88, 1),
(89, 89, 1),
(90, 90, 1),
(91, 91, 1),
(92, 92, 1),
(93, 93, 1),
(94, 94, 1),
(95, 95, 1),
(96, 96, 1),
(97, 97, 1),
(98, 98, 1),
(99, 99, 1),
(100, 100, 1),
(101, 101, 1),
(102, 102, 1),
(112, 51, 1),
(113, 52, 1),
(114, 53, 1),
(115, 54, 1),
(116, 55, 1),
(117, 56, 1),
(127, 112, 1),
(129, 114, 1),
(131, 116, 1),
(136, 121, 1),
(137, 122, 1),
(157, 142, 1),
(158, 143, 1),
(159, 144, 1),
(161, 146, 1),
(162, 147, 1),
(164, 149, 1),
(165, 150, 1),
(167, 152, 1),
(174, 159, 1),
(175, 160, 1),
(176, 161, 1),
(177, 162, 1),
(178, 163, 1),
(182, 167, 1),
(186, 171, 1),
(187, 172, 1),
(188, 173, 1),
(192, 177, 1),
(193, 178, 1),
(195, 180, 1),
(197, 182, 1),
(199, 184, 1),
(200, 185, 1),
(201, 186, 1),
(211, 196, 1),
(212, 197, 1),
(213, 198, 1),
(214, 199, 1),
(231, 216, 1),
(242, 227, 1),
(245, 230, 1),
(248, 233, 1),
(250, 235, 1),
(251, 236, 1),
(258, 243, 1),
(259, 244, 1),
(275, 260, 1),
(276, 261, 1),
(277, 262, 1),
(279, 264, 1),
(281, 266, 1),
(286, 271, 1),
(287, 272, 1),
(300, 285, 1),
(301, 286, 1),
(302, 287, 1),
(303, 288, 1),
(304, 289, 1),
(311, 296, 1),
(312, 297, 1),
(313, 298, 1),
(314, 299, 1),
(315, 300, 1),
(316, 301, 1),
(317, 302, 1),
(318, 303, 1),
(345, 330, 1),
(346, 331, 1),
(359, 344, 1),
(361, 346, 1),
(362, 347, 1),
(364, 349, 1),
(365, 350, 1),
(367, 352, 1),
(368, 353, 1),
(370, 355, 1),
(372, 357, 1),
(374, 359, 1),
(375, 360, 1),
(376, 361, 1),
(377, 362, 1),
(378, 363, 1),
(379, 364, 1),
(380, 365, 1),
(381, 366, 1),
(382, 367, 1),
(383, 368, 1),
(384, 369, 1),
(385, 370, 1),
(386, 371, 1),
(387, 372, 1),
(388, 373, 1),
(389, 374, 1),
(393, 378, 1),
(394, 379, 1),
(395, 380, 1),
(396, 381, 1),
(397, 382, 1),
(398, 383, 1),
(399, 384, 1),
(400, 385, 1),
(401, 386, 1),
(402, 387, 1),
(403, 388, 1),
(404, 389, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2022-09-18 02:33:27.116000', '2022-09-18 02:33:27.116000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2022-09-18 02:33:27.120000', '2022-09-18 02:33:27.120000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2022-09-18 02:33:27.123000', '2022-09-18 02:33:27.123000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `registration_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Faisal', 'Shahzad', NULL, 'csgenius786@gmail.com', '$2a$10$EcWJ3NX2XRZrmf.v8I2gHO7/J/iJU5XtvKXoPq7Sf2MsGOPd4X4Oi', NULL, NULL, 1, 0, NULL, '2022-09-18 02:33:51.290000', '2022-09-18 02:33:51.290000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `title`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'Johar Town', '2022-09-18 14:49:26.383000', '2022-10-18 23:08:24.641000', '2022-09-18 14:49:40.517000', 1, 1, 'en'),
(2, 'جوہر ٹاؤن', '2022-09-18 14:49:33.996000', '2022-09-18 14:49:36.795000', '2022-09-18 14:49:34.511000', 1, 1, 'ur-PK'),
(3, 'Fake Area', '2022-09-19 12:37:37.224000', '2022-10-18 23:08:19.400000', '2022-09-19 12:37:39.016000', 1, 1, 'en'),
(4, 'Jali area', '2022-09-19 12:37:45.776000', '2022-09-19 12:37:46.453000', '2022-09-19 12:37:46.451000', 1, 1, 'ur-PK');

-- --------------------------------------------------------

--
-- Table structure for table `areas_charge_links`
--

CREATE TABLE `areas_charge_links` (
  `id` int UNSIGNED NOT NULL,
  `area_id` int UNSIGNED DEFAULT NULL,
  `charge_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `areas_charge_links`
--

INSERT INTO `areas_charge_links` (`id`, `area_id`, `charge_id`) VALUES
(1, 3, 1),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `areas_city_links`
--

CREATE TABLE `areas_city_links` (
  `id` int UNSIGNED NOT NULL,
  `area_id` int UNSIGNED DEFAULT NULL,
  `city_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `areas_city_links`
--

INSERT INTO `areas_city_links` (`id`, `area_id`, `city_id`) VALUES
(2, 2, 2),
(7, 3, 1),
(8, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `areas_localizations_links`
--

CREATE TABLE `areas_localizations_links` (
  `id` int UNSIGNED NOT NULL,
  `area_id` int UNSIGNED DEFAULT NULL,
  `inv_area_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `areas_localizations_links`
--

INSERT INTO `areas_localizations_links` (`id`, `area_id`, `inv_area_id`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 4, 3),
(4, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `areas_user_links`
--

CREATE TABLE `areas_user_links` (
  `id` int UNSIGNED NOT NULL,
  `area_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `areas_user_links`
--

INSERT INTO `areas_user_links` (`id`, `area_id`, `user_id`) VALUES
(3, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `title`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'not for pregnant women', '2022-09-18 10:33:29.149000', '2022-09-18 10:33:51.652000', '2022-09-18 10:33:51.649000', 1, 1, 'en'),
(2, 'حاملہ خواتین کے لیے نہیں۔', '2022-09-18 10:33:40.783000', '2022-09-18 10:33:55.323000', '2022-09-18 10:33:55.320000', 1, 1, 'ur-PK'),
(3, 'Best Quality', '2022-09-18 10:34:17.850000', '2022-09-18 10:34:31.181000', '2022-09-18 10:34:31.179000', 1, 1, 'en'),
(4, 'بہترین معیار', '2022-09-18 10:34:25.839000', '2022-09-18 10:34:28.825000', '2022-09-18 10:34:28.822000', 1, 1, 'ur-PK'),
(5, 'Low Quality', '2022-09-18 10:34:38.128000', '2022-09-18 10:34:48.547000', '2022-09-18 10:34:48.544000', 1, 1, 'en'),
(6, 'کم معیار', '2022-09-18 10:34:45.183000', '2022-09-18 10:34:46.646000', '2022-09-18 10:34:46.644000', 1, 1, 'ur-PK'),
(7, 'Medium Quality', '2022-09-18 10:35:06.850000', '2022-09-18 10:35:24.687000', '2022-09-18 10:35:24.685000', 1, 1, 'en'),
(8, 'درمیانہ معیار', '2022-09-18 10:35:21.430000', '2022-09-18 10:35:23.129000', '2022-09-18 10:35:23.127000', 1, 1, 'ur-PK'),
(9, 'Good Quality', '2022-09-18 10:35:38.405000', '2022-09-18 11:00:59.770000', '2022-09-18 11:00:59.768000', 1, 1, 'en'),
(10, 'اچھے معیار', '2022-09-18 10:35:52.257000', '2022-09-18 10:35:52.257000', NULL, 1, 1, 'ur-PK');

-- --------------------------------------------------------

--
-- Table structure for table `attributes_localizations_links`
--

CREATE TABLE `attributes_localizations_links` (
  `id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED DEFAULT NULL,
  `inv_attribute_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attributes_localizations_links`
--

INSERT INTO `attributes_localizations_links` (`id`, `attribute_id`, `inv_attribute_id`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 4, 3),
(4, 3, 4),
(5, 6, 5),
(6, 5, 6),
(7, 8, 7),
(8, 7, 8),
(9, 10, 9),
(10, 9, 10);

-- --------------------------------------------------------

--
-- Table structure for table `attributes_product_links`
--

CREATE TABLE `attributes_product_links` (
  `id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attributes_product_links`
--

INSERT INTO `attributes_product_links` (`id`, `attribute_id`, `product_id`) VALUES
(3, 4, 2),
(8, 8, 4),
(20, 9, 12),
(22, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `boys`
--

CREATE TABLE `boys` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cnic` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `driving_license` longtext COLLATE utf8mb4_general_ci,
  `license_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `permanent_address` longtext COLLATE utf8mb4_general_ci,
  `current_address` longtext COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `boy_uid` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` longtext COLLATE utf8mb4_general_ci,
  `reset_token` longtext COLLATE utf8mb4_general_ci,
  `token` longtext COLLATE utf8mb4_general_ci,
  `online` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boys`
--

INSERT INTO `boys` (`id`, `name`, `phone`, `cnic`, `driving_license`, `license_type`, `nickname`, `permanent_address`, `current_address`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `boy_uid`, `account_type`, `account_status`, `password`, `reset_token`, `token`, `online`) VALUES
(1, 'Delivery Boy', '03009550284', '31103-5345564-1', '31103-5345564-1', 'final', 'booye', 'IT tower Lahore pakistan, P1-45, P1-45, P1-45', 'P1-45', '2022-09-24 20:15:21.162000', '2022-09-25 01:07:29.437000', '2022-09-25 01:07:29.432000', 1, 1, 'boy', 'friend', 'active', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `boys_components`
--

CREATE TABLE `boys_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order` int UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boys_components`
--

INSERT INTO `boys_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'relative.relative', 'relative', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opens_from` time(3) DEFAULT NULL,
  `opens_till` time(3) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `subtitle`, `uid`, `opens_from`, `opens_till`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'Fresh', 'Vegetables, Fruits, Meat, Mutton, Chicken', NULL, NULL, NULL, '2022-09-18 09:34:27.196000', '2022-09-18 09:34:58.002000', '2022-09-18 09:34:58.000000', 1, 1, 'en'),
(2, 'تازه', 'سبزیاں، پھل، گوشت، مٹن، چکن', NULL, NULL, NULL, '2022-09-18 09:34:53.883000', '2022-09-18 09:34:54.667000', '2022-09-18 09:34:54.664000', 1, 1, 'ur-PK'),
(3, 'Dairy', 'Milk, Butter, Cheese, Yogurt ', NULL, NULL, NULL, '2022-09-18 09:38:17.150000', '2022-09-18 09:39:04.856000', '2022-09-18 09:39:04.854000', 1, 1, 'en'),
(4, 'ڈیری', 'دودھ، مکھن، پنیر، دہی', NULL, NULL, NULL, '2022-09-18 09:39:00.897000', '2022-09-18 09:39:02.722000', '2022-09-18 09:39:02.719000', 1, 1, 'ur-PK'),
(5, 'Cooking Essentials', 'Rice, Floor, Ghee, Spices', NULL, NULL, NULL, '2022-09-18 09:47:14.845000', '2022-09-18 09:48:00.766000', '2022-09-18 09:48:00.763000', 1, 1, 'en'),
(6, 'کھانا پکانے کے لوازمات', 'چاول، فرش، گھی، مصالحہ', NULL, NULL, NULL, '2022-09-18 09:47:58.366000', '2022-09-18 09:47:58.876000', '2022-09-18 09:47:58.873000', 1, 1, 'ur-PK'),
(7, 'Cosmetics', 'Makeup, lipsticks, Nails, Hair colors', NULL, NULL, NULL, '2022-09-18 09:50:01.893000', '2022-09-18 09:51:04.091000', '2022-09-18 09:51:04.088000', 1, 1, 'en'),
(8, 'Cosmetics', 'میک اپ، لپ اسٹکس، بالوں کا رنگ', NULL, NULL, NULL, '2022-09-18 09:50:21.528000', '2022-09-18 09:51:02.244000', '2022-09-18 09:51:02.241000', 1, 1, 'ur-PK'),
(9, 'Breakfast', 'lorem ipsum, breakfast', NULL, NULL, NULL, '2022-09-18 09:52:09.612000', '2022-09-18 09:53:04.605000', '2022-09-18 09:53:04.603000', 1, 1, 'en'),
(10, 'Breakfast', 'کھانا، پینا، لطف اندوز ہونا', NULL, NULL, NULL, '2022-09-18 09:52:55.567000', '2022-09-20 10:52:07.251000', '2022-09-18 09:53:01.693000', 1, 1, 'ur-PK'),
(11, 'Personal Care', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 09:54:25.618000', '2022-09-18 09:54:41.956000', '2022-09-18 09:54:41.952000', 1, 1, 'en'),
(12, 'ذاتی نگہداشت', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 09:54:39.686000', '2022-09-18 09:54:44.104000', '2022-09-18 09:54:44.102000', 1, 1, 'ur-PK'),
(13, 'Baby Care', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 09:55:50.820000', '2022-09-18 10:05:54.102000', '2022-09-18 09:56:13.804000', 1, 1, 'en'),
(14, 'بچے کی دیکھ بھال', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 09:56:11.454000', '2022-09-20 10:21:24.648000', '2022-09-18 09:56:12.011000', 1, 1, 'ur-PK'),
(15, 'Pantry', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 09:56:28.078000', '2022-09-18 10:00:11.528000', '2022-09-18 10:00:11.525000', 1, 1, 'en'),
(16, 'پینٹری', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 09:56:45.307000', '2022-09-18 09:56:45.845000', '2022-09-18 09:56:45.842000', 1, 1, 'ur-PK'),
(17, 'Cleaning', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 09:57:06.391000', '2022-09-18 09:57:20.285000', '2022-09-18 09:57:08.541000', 1, 1, 'en'),
(18, 'صفائی', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 09:57:20.272000', '2022-09-18 09:57:20.903000', '2022-09-18 09:57:20.901000', 1, 1, 'ur-PK'),
(19, 'Frozen', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 10:00:33.887000', '2022-09-18 10:01:57.792000', '2022-09-18 10:01:57.789000', 1, 1, 'en'),
(20, 'منجمد', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 10:01:51.571000', '2022-09-18 10:01:55.766000', '2022-09-18 10:01:55.763000', 1, 1, 'ur-PK'),
(21, 'Pet Care', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 10:02:08.491000', '2022-09-18 10:02:25.506000', '2022-09-18 10:02:25.503000', 1, 1, 'en'),
(22, 'جانوروں کی دیکھ بھال', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 10:02:20.110000', '2022-09-18 10:02:23.028000', '2022-09-18 10:02:23.026000', 1, 1, 'ur-PK'),
(23, 'Snacks', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 10:02:51.109000', '2022-09-18 10:03:07.602000', '2022-09-18 10:03:07.599000', 1, 1, 'en'),
(24, 'نمکین', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-09-18 10:03:05.390000', '2022-09-18 10:03:05.827000', '2022-09-18 10:03:05.825000', 1, 1, 'ur-PK'),
(25, 'cate1', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-10-20 18:25:19.023000', '2022-10-20 18:25:47.958000', '2022-10-20 18:25:47.956000', 1, 1, 'en'),
(26, 'urdu cat 1', 'Food, Drink, Enjoy', NULL, NULL, NULL, '2022-10-20 18:25:35.501000', '2022-10-20 18:25:45.057000', '2022-10-20 18:25:45.055000', 1, 1, 'ur-PK');

-- --------------------------------------------------------

--
-- Table structure for table `categories_localizations_links`
--

CREATE TABLE `categories_localizations_links` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `inv_category_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories_localizations_links`
--

INSERT INTO `categories_localizations_links` (`id`, `category_id`, `inv_category_id`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 4, 3),
(4, 3, 4),
(5, 6, 5),
(6, 5, 6),
(7, 8, 7),
(8, 7, 8),
(9, 10, 9),
(10, 9, 10),
(11, 12, 11),
(12, 11, 12),
(13, 14, 13),
(14, 13, 14),
(15, 16, 15),
(16, 15, 16),
(17, 18, 17),
(18, 17, 18),
(19, 20, 19),
(20, 19, 20),
(21, 22, 21),
(22, 21, 22),
(23, 24, 23),
(24, 23, 24),
(25, 26, 25),
(26, 25, 26);

-- --------------------------------------------------------

--
-- Table structure for table `categories_super_category_links`
--

CREATE TABLE `categories_super_category_links` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `super_category_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories_super_category_links`
--

INSERT INTO `categories_super_category_links` (`id`, `category_id`, `super_category_id`) VALUES
(66, 13, 1),
(67, 23, 1),
(68, 3, 1),
(69, 1, 1),
(70, 5, 1),
(71, 7, 1),
(72, 9, 1),
(73, 11, 1),
(74, 15, 1),
(75, 17, 1),
(76, 19, 1),
(77, 21, 1),
(78, 14, 2),
(79, 10, 2),
(80, 2, 2),
(81, 4, 2),
(82, 6, 2),
(83, 8, 2),
(84, 16, 2),
(85, 18, 2),
(86, 12, 2),
(87, 20, 2),
(88, 22, 2),
(89, 24, 2);

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` int UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `delivery_charges` int DEFAULT NULL,
  `service_fee` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`id`, `label`, `tax`, `delivery_charges`, `service_fee`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `available`) VALUES
(1, 'test', '17.00', 99, 1, '2022-09-24 01:19:11.875000', '2022-09-24 01:20:25.851000', '2022-09-24 01:19:20.237000', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `title`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'Lahore', '2022-09-18 14:48:52.395000', '2022-09-18 14:49:09.063000', '2022-09-18 14:49:09.061000', 1, 1, 'en'),
(2, 'لاہور', '2022-09-18 14:49:05.738000', '2022-09-18 14:49:06.378000', '2022-09-18 14:49:06.375000', 1, 1, 'ur-PK');

-- --------------------------------------------------------

--
-- Table structure for table `cities_localizations_links`
--

CREATE TABLE `cities_localizations_links` (
  `id` int UNSIGNED NOT NULL,
  `city_id` int UNSIGNED DEFAULT NULL,
  `inv_city_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities_localizations_links`
--

INSERT INTO `cities_localizations_links` (`id`, `city_id`, `inv_city_id`) VALUES
(1, 2, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `complain_comments`
--

CREATE TABLE `complain_comments` (
  `id` int UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complain_comments`
--

INSERT INTO `complain_comments` (`id`, `comment`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'we are working on it', '2022-09-24 20:17:30.199000', '2022-09-24 20:17:30.199000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `complain_comments_order_complain_links`
--

CREATE TABLE `complain_comments_order_complain_links` (
  `id` int UNSIGNED NOT NULL,
  `complain_comment_id` int UNSIGNED DEFAULT NULL,
  `order_complain_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complain_comments_order_complain_links`
--

INSERT INTO `complain_comments_order_complain_links` (`id`, `complain_comment_id`, `order_complain_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `complain_comments_users_permissions_user_links`
--

CREATE TABLE `complain_comments_users_permissions_user_links` (
  `id` int UNSIGNED NOT NULL,
  `complain_comment_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complain_comments_users_permissions_user_links`
--

INSERT INTO `complain_comments_users_permissions_user_links` (`id`, `complain_comment_id`, `user_id`) VALUES
(1, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `components_discount_discounts`
--

CREATE TABLE `components_discount_discounts` (
  `id` int UNSIGNED NOT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_relative_relatives`
--

CREATE TABLE `components_relative_relatives` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cnic` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `current_address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_relative_relatives`
--

INSERT INTO `components_relative_relatives` (`id`, `name`, `phone`, `cnic`, `current_address`, `permanent_address`, `email`) VALUES
(1, 'Brother', '03009550284', '31103-546565656', '65656', 'final address', 'email');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `usage_count` int DEFAULT NULL,
  `max_count` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons_components`
--

CREATE TABLE `coupons_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order` int UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(10, '2022-09-22 19:13:33.082000', '2022-09-22 19:13:33.082000', '2022-09-22 19:13:33.078000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alternative_text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `preview_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'grocery.jpg', 'grocery.jpg', 'grocery.jpg', 400, 300, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_grocery_887fea139e.jpg\", \"hash\": \"thumbnail_grocery_887fea139e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_grocery.jpg\", \"path\": null, \"size\": 12.61, \"width\": 208, \"height\": 156}}', 'grocery_887fea139e', '.jpg', 'image/jpeg', '40.98', 'https://esta-v2.s3.ap-south-1.amazonaws.com/grocery_887fea139e.jpg', NULL, 'aws-s3', NULL, '/', '2022-09-18 09:26:02.973000', '2022-09-18 09:26:02.973000', 1, 1),
(2, 'pharma.jpg', 'pharma.jpg', 'pharma.jpg', 400, 264, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_pharma_4979707323.jpg\", \"hash\": \"thumbnail_pharma_4979707323\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_pharma.jpg\", \"path\": null, \"size\": 11.93, \"width\": 236, \"height\": 156}}', 'pharma_4979707323', '.jpg', 'image/jpeg', '29.63', 'https://esta-v2.s3.ap-south-1.amazonaws.com/pharma_4979707323.jpg', NULL, 'aws-s3', NULL, '/', '2022-09-18 09:30:44.573000', '2022-09-18 09:30:44.573000', 1, 1),
(3, 'dairy.jpg', 'dairy.jpg', 'dairy.jpg', 400, 267, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_dairy_b1bfb78072.jpg\", \"hash\": \"thumbnail_dairy_b1bfb78072\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_dairy.jpg\", \"path\": null, \"size\": 2.02, \"width\": 234, \"height\": 156}}', 'dairy_b1bfb78072', '.jpg', 'image/jpeg', '4.12', 'https://esta-v2.s3.ap-south-1.amazonaws.com/dairy_b1bfb78072.jpg', NULL, 'aws-s3', NULL, '/', '2022-09-18 09:38:12.334000', '2022-09-18 09:38:12.334000', 1, 1),
(4, 'cooking (1).jpg', 'cooking (1).jpg', 'cooking (1).jpg', 400, 528, '{\"small\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_cooking_1_bb36d3f585.jpg\", \"hash\": \"small_cooking_1_bb36d3f585\", \"mime\": \"image/jpeg\", \"name\": \"small_cooking (1).jpg\", \"path\": null, \"size\": 23.16, \"width\": 379, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_cooking_1_bb36d3f585.jpg\", \"hash\": \"thumbnail_cooking_1_bb36d3f585\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cooking (1).jpg\", \"path\": null, \"size\": 4.59, \"width\": 118, \"height\": 156}}', 'cooking_1_bb36d3f585', '.jpg', 'image/jpeg', '24.35', 'https://esta-v2.s3.ap-south-1.amazonaws.com/cooking_1_bb36d3f585.jpg', NULL, 'aws-s3', NULL, '/', '2022-09-18 09:47:09.159000', '2022-09-18 09:47:09.159000', 1, 1),
(5, 'cosmetics (1).jpg', 'cosmetics (1).jpg', 'cosmetics (1).jpg', 400, 400, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_cosmetics_1_3163a4751d.jpg\", \"hash\": \"thumbnail_cosmetics_1_3163a4751d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cosmetics (1).jpg\", \"path\": null, \"size\": 5.5, \"width\": 156, \"height\": 156}}', 'cosmetics_1_3163a4751d', '.jpg', 'image/jpeg', '22.67', 'https://esta-v2.s3.ap-south-1.amazonaws.com/cosmetics_1_3163a4751d.jpg', NULL, 'aws-s3', NULL, '/', '2022-09-18 09:49:57.137000', '2022-09-18 09:49:57.137000', 1, 1),
(6, 'coke half.jpg', 'coke half.jpg', 'coke half.jpg', 400, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_coke_half_bff0482cd2.jpg\", \"hash\": \"thumbnail_coke_half_bff0482cd2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_coke half.jpg\", \"path\": null, \"size\": 3.25, \"width\": 125, \"height\": 156}}', 'coke_half_bff0482cd2', '.jpg', 'image/jpeg', '18.50', 'https://esta-v2.s3.ap-south-1.amazonaws.com/coke_half_bff0482cd2.jpg', NULL, 'aws-s3', NULL, '/', '2022-09-18 10:41:34.636000', '2022-09-18 10:41:34.636000', 1, 1),
(7, 'default-banner.jpg', 'default-banner.jpg', 'default-banner.jpg', 1024, 500, '{\"large\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_default_banner_e4fa89a282.jpg\", \"hash\": \"large_default_banner_e4fa89a282\", \"mime\": \"image/jpeg\", \"name\": \"large_default-banner.jpg\", \"path\": null, \"size\": 112.5, \"width\": 1000, \"height\": 488}, \"small\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_default_banner_e4fa89a282.jpg\", \"hash\": \"small_default_banner_e4fa89a282\", \"mime\": \"image/jpeg\", \"name\": \"small_default-banner.jpg\", \"path\": null, \"size\": 33.79, \"width\": 500, \"height\": 244}, \"medium\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_default_banner_e4fa89a282.jpg\", \"hash\": \"medium_default_banner_e4fa89a282\", \"mime\": \"image/jpeg\", \"name\": \"medium_default-banner.jpg\", \"path\": null, \"size\": 67.41, \"width\": 750, \"height\": 366}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_default_banner_e4fa89a282.jpg\", \"hash\": \"thumbnail_default_banner_e4fa89a282\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_default-banner.jpg\", \"path\": null, \"size\": 10.09, \"width\": 245, \"height\": 120}}', 'default_banner_e4fa89a282', '.jpg', 'image/jpeg', '123.85', 'https://esta-v2.s3.ap-south-1.amazonaws.com/default_banner_e4fa89a282.jpg', NULL, 'aws-s3', NULL, '/', '2022-10-02 22:03:11.241000', '2022-10-02 22:03:11.241000', 1, 1),
(8, 'default-banner.jpg', 'default-banner.jpg', 'default-banner.jpg', 1024, 500, '{\"large\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_default_banner_6675baa41e.jpg\", \"hash\": \"large_default_banner_6675baa41e\", \"mime\": \"image/jpeg\", \"name\": \"large_default-banner.jpg\", \"path\": null, \"size\": 112.5, \"width\": 1000, \"height\": 488}, \"small\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_default_banner_6675baa41e.jpg\", \"hash\": \"small_default_banner_6675baa41e\", \"mime\": \"image/jpeg\", \"name\": \"small_default-banner.jpg\", \"path\": null, \"size\": 33.79, \"width\": 500, \"height\": 244}, \"medium\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_default_banner_6675baa41e.jpg\", \"hash\": \"medium_default_banner_6675baa41e\", \"mime\": \"image/jpeg\", \"name\": \"medium_default-banner.jpg\", \"path\": null, \"size\": 67.41, \"width\": 750, \"height\": 366}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_default_banner_6675baa41e.jpg\", \"hash\": \"thumbnail_default_banner_6675baa41e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_default-banner.jpg\", \"path\": null, \"size\": 10.09, \"width\": 245, \"height\": 120}}', 'default_banner_6675baa41e', '.jpg', 'image/jpeg', '123.85', 'https://esta-v2.s3.ap-south-1.amazonaws.com/default_banner_6675baa41e.jpg', NULL, 'aws-s3', NULL, '/', '2022-10-02 22:03:24.566000', '2022-10-02 22:03:24.566000', 1, 1),
(9, 'joshua-rawson-harris-YNaSz-E7Qss-unsplash (1).jpg', 'joshua-rawson-harris-YNaSz-E7Qss-unsplash (1).jpg', 'joshua-rawson-harris-YNaSz-E7Qss-unsplash (1).jpg', 1024, 500, '{\"large\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_1_81b78c758b.jpg\", \"hash\": \"large_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_1_81b78c758b\", \"mime\": \"image/jpeg\", \"name\": \"large_joshua-rawson-harris-YNaSz-E7Qss-unsplash (1).jpg\", \"path\": null, \"size\": 80.22, \"width\": 1000, \"height\": 488}, \"small\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_1_81b78c758b.jpg\", \"hash\": \"small_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_1_81b78c758b\", \"mime\": \"image/jpeg\", \"name\": \"small_joshua-rawson-harris-YNaSz-E7Qss-unsplash (1).jpg\", \"path\": null, \"size\": 28.3, \"width\": 500, \"height\": 244}, \"medium\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_1_81b78c758b.jpg\", \"hash\": \"medium_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_1_81b78c758b\", \"mime\": \"image/jpeg\", \"name\": \"medium_joshua-rawson-harris-YNaSz-E7Qss-unsplash (1).jpg\", \"path\": null, \"size\": 51.63, \"width\": 750, \"height\": 366}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_1_81b78c758b.jpg\", \"hash\": \"thumbnail_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_1_81b78c758b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_joshua-rawson-harris-YNaSz-E7Qss-unsplash (1).jpg\", \"path\": null, \"size\": 9.55, \"width\": 245, \"height\": 120}}', 'joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_1_81b78c758b', '.jpg', 'image/jpeg', '87.56', 'https://esta-v2.s3.ap-south-1.amazonaws.com/joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_1_81b78c758b.jpg', NULL, 'aws-s3', NULL, '/', '2022-10-02 22:04:55.397000', '2022-10-02 22:04:55.397000', 1, 1),
(10, 'joshua-rawson-harris-YNaSz-E7Qss-unsplash (2).jpg', 'joshua-rawson-harris-YNaSz-E7Qss-unsplash (2).jpg', 'joshua-rawson-harris-YNaSz-E7Qss-unsplash (2).jpg', 1024, 500, '{\"large\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/large_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_2_4a687c55a5.jpg\", \"hash\": \"large_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_2_4a687c55a5\", \"mime\": \"image/jpeg\", \"name\": \"large_joshua-rawson-harris-YNaSz-E7Qss-unsplash (2).jpg\", \"path\": null, \"size\": 80.83, \"width\": 1000, \"height\": 488}, \"small\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/small_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_2_4a687c55a5.jpg\", \"hash\": \"small_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_2_4a687c55a5\", \"mime\": \"image/jpeg\", \"name\": \"small_joshua-rawson-harris-YNaSz-E7Qss-unsplash (2).jpg\", \"path\": null, \"size\": 28.56, \"width\": 500, \"height\": 244}, \"medium\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/medium_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_2_4a687c55a5.jpg\", \"hash\": \"medium_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_2_4a687c55a5\", \"mime\": \"image/jpeg\", \"name\": \"medium_joshua-rawson-harris-YNaSz-E7Qss-unsplash (2).jpg\", \"path\": null, \"size\": 52.03, \"width\": 750, \"height\": 366}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://esta-v2.s3.ap-south-1.amazonaws.com/thumbnail_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_2_4a687c55a5.jpg\", \"hash\": \"thumbnail_joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_2_4a687c55a5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_joshua-rawson-harris-YNaSz-E7Qss-unsplash (2).jpg\", \"path\": null, \"size\": 9.59, \"width\": 245, \"height\": 120}}', 'joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_2_4a687c55a5', '.jpg', 'image/jpeg', '88.23', 'https://esta-v2.s3.ap-south-1.amazonaws.com/joshua_rawson_harris_Y_Na_Sz_E7_Qss_unsplash_2_4a687c55a5.jpg', NULL, 'aws-s3', NULL, '/', '2022-10-02 22:06:04.451000', '2022-10-02 22:06:04.451000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `related_id` int UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(3, 2, 3, 'api::super-category.super-category', 'images', 1),
(4, 2, 4, 'api::super-category.super-category', 'images', 1),
(5, 1, 1, 'api::category.category', 'image', 1),
(6, 1, 2, 'api::category.category', 'image', 1),
(7, 3, 3, 'api::category.category', 'image', 1),
(8, 3, 4, 'api::category.category', 'image', 1),
(9, 4, 5, 'api::category.category', 'image', 1),
(10, 4, 6, 'api::category.category', 'image', 1),
(11, 5, 7, 'api::category.category', 'image', 1),
(13, 5, 8, 'api::category.category', 'image', 1),
(14, 5, 9, 'api::category.category', 'image', 1),
(16, 5, 11, 'api::category.category', 'image', 1),
(17, 5, 12, 'api::category.category', 'image', 1),
(20, 5, 15, 'api::category.category', 'image', 1),
(21, 5, 16, 'api::category.category', 'image', 1),
(22, 5, 17, 'api::category.category', 'image', 1),
(23, 5, 18, 'api::category.category', 'image', 1),
(24, 5, 19, 'api::category.category', 'image', 1),
(25, 5, 20, 'api::category.category', 'image', 1),
(26, 5, 21, 'api::category.category', 'image', 1),
(27, 5, 22, 'api::category.category', 'image', 1),
(28, 5, 23, 'api::category.category', 'image', 1),
(29, 5, 24, 'api::category.category', 'image', 1),
(30, 5, 13, 'api::category.category', 'image', 1),
(33, 1, 1, 'api::super-category.super-category', 'images', 1),
(48, 5, 14, 'api::category.category', 'image', 1),
(49, 5, 10, 'api::category.category', 'image', 1),
(50, 1, 2, 'api::super-category.super-category', 'images', 1),
(59, 6, 1, 'relative.relative', 'image', 1),
(60, 6, 1, 'api::boy.boy', 'license_images', 1),
(61, 6, 1, 'api::boy.boy', 'cninc_images', 1),
(62, 6, 1, 'api::boy.boy', 'images', 1),
(63, 5, 1, 'api::boy.boy', 'images', 2),
(64, 4, 1, 'api::boy.boy', 'images', 3),
(65, 6, 1, 'api::boy.boy', 'profile_picture', 1),
(66, 7, 1, 'api::slider.slider', 'image', 1),
(67, 8, 2, 'api::slider.slider', 'image', 1),
(68, 9, 3, 'api::slider.slider', 'image', 1),
(69, 10, 4, 'api::slider.slider', 'image', 1),
(72, 2, 3, 'api::super-category.super-category', 'image', 1),
(73, 2, 4, 'api::super-category.super-category', 'image', 1),
(76, 9, 5, 'api::super-category.super-category', 'image', 1),
(78, 10, 6, 'api::super-category.super-category', 'image', 1),
(79, 1, 1, 'api::super-category.super-category', 'image', 1),
(80, 10, 2, 'api::super-category.super-category', 'image', 1),
(81, 5, 1, 'api::sub-category.sub-category', 'image', 1),
(82, 5, 2, 'api::sub-category.sub-category', 'image', 1),
(83, 5, 3, 'api::sub-category.sub-category', 'image', 1),
(84, 5, 4, 'api::sub-category.sub-category', 'image', 1),
(94, 6, 6, 'api::product.product', 'image', 1),
(95, 6, 7, 'api::product.product', 'image', 1),
(96, 6, 8, 'api::product.product', 'image', 1),
(97, 6, 9, 'api::product.product', 'image', 1),
(98, 6, 10, 'api::product.product', 'image', 1),
(99, 6, 11, 'api::product.product', 'image', 1),
(101, 6, 13, 'api::product.product', 'image', 1),
(102, 6, 14, 'api::product.product', 'image', 1),
(103, 6, 15, 'api::product.product', 'image', 1),
(110, 6, 12, 'api::product.product', 'image', 1),
(113, 6, 3, 'api::product.product', 'image', 1),
(114, 6, 4, 'api::product.product', 'image', 1),
(115, 6, 5, 'api::product.product', 'image', 1),
(116, 6, 1, 'api::product.product', 'image', 1),
(117, 6, 2, 'api::product.product', 'image', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2022-09-18 02:33:27.027000', '2022-09-18 02:33:27.027000', NULL, NULL),
(2, 'Urdu (Pakistan) (ur-PK)', 'ur-PK', '2022-09-18 09:26:22.959000', '2022-09-18 09:26:22.959000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8mb4_general_ci,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `comment`, `status`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'start working', 'accepted', '2022-09-24 20:15:57.709000', '2022-09-24 20:15:57.709000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_boy_links`
--

CREATE TABLE `jobs_boy_links` (
  `id` int UNSIGNED NOT NULL,
  `job_id` int UNSIGNED DEFAULT NULL,
  `boy_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs_boy_links`
--

INSERT INTO `jobs_boy_links` (`id`, `job_id`, `boy_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_updates`
--

CREATE TABLE `job_updates` (
  `id` int UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `private_label` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_updates_job_links`
--

CREATE TABLE `job_updates_job_links` (
  `id` int UNSIGNED NOT NULL,
  `job_update_id` int UNSIGNED DEFAULT NULL,
  `job_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `delivery_charges` int DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `service_fee` int DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order_uid` bigint DEFAULT NULL,
  `address_text` longtext COLLATE utf8mb4_general_ci,
  `phone_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_snapshot` json DEFAULT NULL,
  `scheduled` tinyint(1) DEFAULT NULL,
  `scheduled_for` datetime(6) DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_general_ci,
  `bill` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total_price`, `tax`, `delivery_charges`, `discount`, `status`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `service_fee`, `payment_method`, `order_uid`, `address_text`, `phone_number`, `payment_snapshot`, `scheduled`, `scheduled_for`, `notes`, `bill`) VALUES
(9, '451.00', '51.00', 99, '0.00', 'cancelled_by_user', '2022-09-24 01:35:21.529000', '2022-09-24 18:23:53.545000', '2022-09-24 01:35:21.523000', NULL, NULL, 1, 'cod', 1, 'MMMM, J1, no', NULL, NULL, 0, '1970-01-20 11:12:45.321000', 'Hello, please deliver fast', '300.00'),
(10, '451.00', '51.00', 99, '0.00', 'cancelled_by_user', '2022-09-24 02:14:23.426000', '2022-09-24 18:26:11.154000', '2022-09-24 02:14:23.420000', NULL, NULL, 1, 'cod', 2, 'MMMM, J1, no', NULL, NULL, 0, '1970-01-20 11:12:47.663000', 'Hello, please deliver fast', '300.00'),
(11, '451.00', '51.00', 99, '0.00', 'cancelled_by_user', '2022-09-24 02:14:24.724000', '2022-09-24 18:26:50.719000', '2022-09-24 02:14:24.720000', NULL, NULL, 1, 'cod', 3, 'MMMM, J1, no', NULL, NULL, 0, '1970-01-20 11:12:47.665000', 'Hello, please deliver fast', '300.00'),
(12, '451.00', '51.00', 99, '0.00', 'confirmed', '2022-09-24 20:11:33.167000', '2022-10-20 18:37:49.174000', '2022-09-24 20:11:33.160000', NULL, 1, 1, 'cod', 4, 'MMMM, J1, no', NULL, NULL, 0, '1970-01-20 11:13:52.293000', 'Hello, please deliver fast', '300.00');

-- --------------------------------------------------------

--
-- Table structure for table `orders_address_links`
--

CREATE TABLE `orders_address_links` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `address_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_address_links`
--

INSERT INTO `orders_address_links` (`id`, `order_id`, `address_id`) VALUES
(14, 12, 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders_area_links`
--

CREATE TABLE `orders_area_links` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `area_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_area_links`
--

INSERT INTO `orders_area_links` (`id`, `order_id`, `area_id`) VALUES
(8, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_job_links`
--

CREATE TABLE `orders_job_links` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `job_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_job_links`
--

INSERT INTO `orders_job_links` (`id`, `order_id`, `job_id`) VALUES
(3, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_order_complain_links`
--

CREATE TABLE `orders_order_complain_links` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `order_complain_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_users_permissions_user_links`
--

CREATE TABLE `orders_users_permissions_user_links` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_users_permissions_user_links`
--

INSERT INTO `orders_users_permissions_user_links` (`id`, `order_id`, `user_id`) VALUES
(9, 9, 7),
(10, 10, 7),
(11, 11, 7),
(14, 12, 7);

-- --------------------------------------------------------

--
-- Table structure for table `order_complains`
--

CREATE TABLE `order_complains` (
  `id` int UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `complain` longtext COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_complains`
--

INSERT INTO `order_complains` (`id`, `status`, `complain`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'working', 'this product wasnot deliverd', '2022-09-24 20:16:33.289000', '2022-09-24 20:16:33.289000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_complains_order_links`
--

CREATE TABLE `order_complains_order_links` (
  `id` int UNSIGNED NOT NULL,
  `order_complain_id` int UNSIGNED DEFAULT NULL,
  `order_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_complains_order_links`
--

INSERT INTO `order_complains_order_links` (`id`, `order_complain_id`, `order_id`) VALUES
(2, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `order_complains_order_product_links`
--

CREATE TABLE `order_complains_order_product_links` (
  `id` int UNSIGNED NOT NULL,
  `order_complain_id` int UNSIGNED DEFAULT NULL,
  `order_product_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int UNSIGNED NOT NULL,
  `qty` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `qty`, `price`, `total`, `discount`, `notes`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 2, '60.00', '120.00', '0.00', '', '2022-09-23 13:24:12.666000', '2022-09-23 13:24:12.666000', '2022-09-23 13:24:12.663000', NULL, NULL),
(2, 3, '60.00', '180.00', '0.00', '', '2022-09-23 13:24:12.666000', '2022-09-23 13:24:12.666000', '2022-09-23 13:24:12.663000', NULL, NULL),
(3, 3, '60.00', '180.00', '0.00', '', '2022-09-23 20:18:47.883000', '2022-09-23 20:18:47.883000', '2022-09-23 20:18:47.881000', NULL, NULL),
(4, 2, '60.00', '120.00', '0.00', '', '2022-09-23 20:18:47.883000', '2022-09-23 20:18:47.883000', '2022-09-23 20:18:47.881000', NULL, NULL),
(5, 3, '60.00', '180.00', '0.00', '', '2022-09-24 01:35:21.553000', '2022-09-24 01:35:21.553000', '2022-09-24 01:35:21.549000', NULL, NULL),
(6, 2, '60.00', '120.00', '0.00', '', '2022-09-24 01:35:21.553000', '2022-09-24 01:35:21.553000', '2022-09-24 01:35:21.549000', NULL, NULL),
(7, 2, '60.00', '120.00', '0.00', '', '2022-09-24 02:14:23.462000', '2022-09-24 02:14:23.462000', '2022-09-24 02:14:23.457000', NULL, NULL),
(8, 3, '60.00', '180.00', '0.00', '', '2022-09-24 02:14:23.462000', '2022-09-24 02:14:23.462000', '2022-09-24 02:14:23.457000', NULL, NULL),
(9, 2, '60.00', '120.00', '0.00', '', '2022-09-24 02:14:24.750000', '2022-09-24 02:14:24.750000', '2022-09-24 02:14:24.747000', NULL, NULL),
(10, 3, '60.00', '180.00', '0.00', '', '2022-09-24 02:14:24.750000', '2022-09-24 02:14:24.750000', '2022-09-24 02:14:24.748000', NULL, NULL),
(11, 3, '60.00', '180.00', '0.00', '', '2022-09-24 20:11:33.203000', '2022-09-24 20:11:33.203000', '2022-09-24 20:11:33.200000', NULL, NULL),
(12, 2, '60.00', '120.00', '0.00', '', '2022-09-24 20:11:33.203000', '2022-09-24 20:11:33.203000', '2022-09-24 20:11:33.200000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_products_order_complain_links`
--

CREATE TABLE `order_products_order_complain_links` (
  `id` int UNSIGNED NOT NULL,
  `order_product_id` int UNSIGNED DEFAULT NULL,
  `order_complain_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_products_order_complain_links`
--

INSERT INTO `order_products_order_complain_links` (`id`, `order_product_id`, `order_complain_id`) VALUES
(1, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_products_order_links`
--

CREATE TABLE `order_products_order_links` (
  `id` int UNSIGNED NOT NULL,
  `order_product_id` int UNSIGNED DEFAULT NULL,
  `order_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_products_order_links`
--

INSERT INTO `order_products_order_links` (`id`, `order_product_id`, `order_id`) VALUES
(5, 5, 9),
(6, 6, 9),
(7, 7, 10),
(8, 8, 10),
(9, 9, 11),
(10, 10, 11),
(15, 11, 12),
(16, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `background_color` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `subtitle`, `available`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `purchase_price`, `sale_price`, `stock`, `discount_type`, `discount`, `tags`, `background_color`) VALUES
(1, 'Coke half liter', 'liter', 1, '2022-09-18 10:42:00.835000', '2022-10-16 23:26:02.032000', '2022-09-18 11:01:09.956000', 1, 1, 'en', '45.00', '60.00', 6, 'none', '0.00', 'fuckk', '#ffcc66'),
(2, 'کوک آدھا لیٹر', NULL, 1, '2022-09-18 10:58:34.053000', '2022-10-16 23:26:02.081000', '2022-09-18 11:01:13.899000', 1, 1, 'ur-PK', '45.00', '60.00', 6, 'none', '0.00', NULL, '#ffcc66'),
(3, 'Coke half liter + 2', NULL, 1, '2022-10-13 14:32:27.509000', '2022-10-16 02:04:19.663000', '2022-10-13 14:32:28.309000', 1, 1, 'en', '45.00', '60.00', 6, 'none', '0.00', 'fuckk', NULL),
(4, 'ff', NULL, 1, '2022-10-13 14:32:46.828000', '2022-10-16 02:04:19.708000', '2022-10-13 14:33:04.633000', 1, 1, 'ur-PK', '45.00', '60.00', 6, 'none', '0.00', NULL, NULL),
(5, 'Coke half liter + 3', NULL, 1, '2022-10-13 14:33:19.057000', '2022-10-16 02:58:52.753000', '2022-10-13 14:33:21.471000', 1, 1, 'en', '45.00', '60.00', 6, 'none', '0.00', 'fuckk', NULL),
(6, 'Coke half liter + 4', NULL, 0, '2022-10-13 14:33:30.712000', '2022-10-13 14:33:31.598000', '2022-10-13 14:33:31.594000', 1, 1, 'en', '45.00', '60.00', 6, 'none', '0.00', 'fuckk', NULL),
(7, 'Coke half liter + 5', NULL, 0, '2022-10-13 14:33:43.610000', '2022-10-13 14:33:45.002000', '2022-10-13 14:33:44.998000', 1, 1, 'en', '45.00', '60.00', 6, 'none', '0.00', 'fuckk', NULL),
(8, 'Coke half liter + 6', NULL, 0, '2022-10-13 14:33:53.798000', '2022-10-13 14:33:55.526000', '2022-10-13 14:33:55.523000', 1, 1, 'en', '45.00', '60.00', 6, 'none', '0.00', 'fuckk', NULL),
(9, 'Coke half liter + 7', NULL, 0, '2022-10-13 14:34:02.821000', '2022-10-13 14:34:04.231000', '2022-10-13 14:34:04.228000', 1, 1, 'en', '45.00', '60.00', 6, 'none', '0.00', 'fuckk', NULL),
(10, 'Coke half liter + 8', NULL, 0, '2022-10-13 14:34:10.060000', '2022-10-13 14:34:11.363000', '2022-10-13 14:34:11.360000', 1, 1, 'en', '45.00', '60.00', 6, 'none', '0.00', 'fuckk', NULL),
(11, 'Coke half liter + 9', NULL, 0, '2022-10-13 14:34:28.826000', '2022-10-13 14:34:30.439000', '2022-10-13 14:34:30.435000', 1, 1, 'en', '45.00', '60.00', 6, 'none', '0.00', 'fuckk', NULL),
(12, 'Coke half liter + 10 Coke half liter + 10 Coke half liter + 10', 'sub title coke this ye wo that now when kab tab', 0, '2022-10-13 14:34:42.332000', '2022-10-15 12:24:59.405000', '2022-10-13 14:34:43.543000', 1, 1, 'en', '45.00', '60.00', 6, 'none', '0.00', 'fuckk', NULL),
(13, 'Coke half liter + 11', NULL, 0, '2022-10-13 14:35:00.541000', '2022-10-13 14:35:02.081000', '2022-10-13 14:35:02.073000', 1, 1, 'en', '45.00', '60.00', 6, 'none', '0.00', 'fuckk', NULL),
(14, 'Coke half liter + 12', NULL, 0, '2022-10-13 14:35:11.886000', '2022-10-13 14:35:13.785000', '2022-10-13 14:35:13.782000', 1, 1, 'en', '45.00', '60.00', 6, 'none', '0.00', 'fuckk', NULL),
(15, 'Coke half liter + 14', NULL, 0, '2022-10-13 14:35:23.389000', '2022-10-13 14:35:24.581000', '2022-10-13 14:35:24.575000', 1, 1, 'en', '45.00', '60.00', 6, 'none', '0.00', 'fuckk', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_favorite_links`
--

CREATE TABLE `products_favorite_links` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `favorite_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_favorite_links`
--

INSERT INTO `products_favorite_links` (`id`, `product_id`, `favorite_id`) VALUES
(13, 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `products_localizations_links`
--

CREATE TABLE `products_localizations_links` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `inv_product_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_localizations_links`
--

INSERT INTO `products_localizations_links` (`id`, `product_id`, `inv_product_id`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 4, 3),
(4, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products_order_product_links`
--

CREATE TABLE `products_order_product_links` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `order_product_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_order_product_links`
--

INSERT INTO `products_order_product_links` (`id`, `product_id`, `order_product_id`) VALUES
(11, 2, 11),
(23, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `products_sub_category_links`
--

CREATE TABLE `products_sub_category_links` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `sub_category_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_sub_category_links`
--

INSERT INTO `products_sub_category_links` (`id`, `product_id`, `sub_category_id`) VALUES
(7, 2, 2),
(11, 4, 2),
(13, 6, 1),
(14, 7, 1),
(15, 8, 1),
(16, 9, 1),
(17, 10, 1),
(18, 11, 1),
(20, 13, 3),
(21, 14, 3),
(22, 15, 3),
(26, 12, 1),
(28, 3, 1),
(29, 5, 1),
(30, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_unit_links`
--

CREATE TABLE `products_unit_links` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `unit_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_unit_links`
--

INSERT INTO `products_unit_links` (`id`, `product_id`, `unit_id`) VALUES
(7, 4, 2),
(19, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'home', '2022-10-02 22:03:16.531000', '2022-10-02 22:03:31.407000', '2022-10-02 22:03:31.405000', 1, 1, 'en'),
(2, 's', '2022-10-02 22:03:27.181000', '2022-10-02 22:03:29.017000', '2022-10-02 22:03:29.013000', 1, 1, 'ur-PK'),
(3, 'f', '2022-10-02 22:04:58.672000', '2022-10-02 22:06:16.014000', '2022-10-02 22:06:16.012000', 1, 1, 'en'),
(4, 'UR', '2022-10-02 22:06:10.570000', '2022-10-02 22:06:11.318000', '2022-10-02 22:06:11.314000', 1, 1, 'ur-PK');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_localizations_links`
--

CREATE TABLE `sliders_localizations_links` (
  `id` int UNSIGNED NOT NULL,
  `slider_id` int UNSIGNED DEFAULT NULL,
  `inv_slider_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders_localizations_links`
--

INSERT INTO `sliders_localizations_links` (`id`, `slider_id`, `inv_slider_id`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 4, 3),
(4, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access_key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_general_ci,
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `environment` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"phoneNumber\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"complete\":{\"type\":\"boolean\"},\"name\":{\"type\":\"string\"},\"area\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::area.area\",\"mappedBy\":\"user\"},\"addresses\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::address.address\",\"mappedBy\":\"users_permissions_user\"},\"favorite\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::favorite.favorite\",\"inversedBy\":\"users_permissions_user\"},\"orders\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::order.order\",\"mappedBy\":\"users_permissions_user\"},\"complain_comment\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::complain-comment.complain-comment\",\"inversedBy\":\"users_permissions_user\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"phoneNumber\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"complete\":{\"type\":\"boolean\"},\"name\":{\"type\":\"string\"},\"area\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::area.area\",\"mappedBy\":\"user\"},\"addresses\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::address.address\",\"mappedBy\":\"users_permissions_user\"},\"favorite\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::favorite.favorite\",\"inversedBy\":\"users_permissions_user\"},\"orders\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::order.order\",\"mappedBy\":\"users_permissions_user\"},\"complain_comment\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::complain-comment.complain-comment\",\"inversedBy\":\"users_permissions_user\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::address.address\":{\"kind\":\"collectionType\",\"collectionName\":\"addresses\",\"info\":{\"singularName\":\"address\",\"pluralName\":\"addresses\",\"displayName\":\"address\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"house\":{\"type\":\"string\"},\"block\":{\"type\":\"string\"},\"near\":{\"type\":\"string\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"addresses\"},\"rtl\":{\"type\":\"boolean\",\"default\":false},\"default\":{\"type\":\"boolean\",\"default\":false},\"order\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order.order\",\"mappedBy\":\"address\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"addresses\",\"info\":{\"singularName\":\"address\",\"pluralName\":\"addresses\",\"displayName\":\"address\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"house\":{\"type\":\"string\"},\"block\":{\"type\":\"string\"},\"near\":{\"type\":\"string\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"addresses\"},\"rtl\":{\"type\":\"boolean\",\"default\":false},\"default\":{\"type\":\"boolean\",\"default\":false},\"order\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order.order\",\"mappedBy\":\"address\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"address\",\"connection\":\"default\",\"uid\":\"api::address.address\",\"apiName\":\"address\",\"globalId\":\"Address\",\"actions\":{},\"lifecycles\":{}},\"api::area.area\":{\"kind\":\"collectionType\",\"collectionName\":\"areas\",\"info\":{\"singularName\":\"area\",\"pluralName\":\"areas\",\"displayName\":\"area\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true},\"city\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::city.city\",\"inversedBy\":\"areas\"},\"user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"area\"},\"charge\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::charge.charge\",\"inversedBy\":\"areas\"},\"order\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order.order\",\"mappedBy\":\"area\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::area.area\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"areas\",\"info\":{\"singularName\":\"area\",\"pluralName\":\"areas\",\"displayName\":\"area\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true},\"city\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::city.city\",\"inversedBy\":\"areas\"},\"user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"area\"},\"charge\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::charge.charge\",\"inversedBy\":\"areas\"},\"order\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order.order\",\"mappedBy\":\"area\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"area\",\"connection\":\"default\",\"uid\":\"api::area.area\",\"apiName\":\"area\",\"globalId\":\"Area\",\"actions\":{},\"lifecycles\":{}},\"api::attribute.attribute\":{\"kind\":\"collectionType\",\"collectionName\":\"attributes\",\"info\":{\"singularName\":\"attribute\",\"pluralName\":\"attributes\",\"displayName\":\"attribute\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"type\":\"string\",\"unique\":true,\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"product\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::product.product\",\"inversedBy\":\"attributes\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::attribute.attribute\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"attributes\",\"info\":{\"singularName\":\"attribute\",\"pluralName\":\"attributes\",\"displayName\":\"attribute\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"type\":\"string\",\"unique\":true,\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"product\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::product.product\",\"inversedBy\":\"attributes\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"attribute\",\"connection\":\"default\",\"uid\":\"api::attribute.attribute\",\"apiName\":\"attribute\",\"globalId\":\"Attribute\",\"actions\":{},\"lifecycles\":{}},\"api::boy.boy\":{\"kind\":\"collectionType\",\"collectionName\":\"boys\",\"info\":{\"singularName\":\"boy\",\"pluralName\":\"boys\",\"displayName\":\"boy\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"phone\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"cnic\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"driving_license\":{\"type\":\"text\"},\"license_type\":{\"type\":\"enumeration\",\"enum\":[\"final\",\"learning\"],\"default\":\"learning\",\"required\":true},\"license_images\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\",\"videos\",\"audios\",\"files\"]},\"cninc_images\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"nickname\":{\"type\":\"string\"},\"permanent_address\":{\"type\":\"text\"},\"current_address\":{\"type\":\"text\"},\"relative\":{\"displayName\":\"relative\",\"type\":\"component\",\"repeatable\":true,\"component\":\"relative.relative\"},\"images\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"profile_picture\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"boy_uid\":{\"type\":\"uid\",\"required\":true},\"account_type\":{\"type\":\"enumeration\",\"enum\":[\"basic\",\"friend\",\"loyal\",\"family\"],\"default\":\"basic\"},\"account_status\":{\"type\":\"enumeration\",\"enum\":[\"pending\",\"active\",\"inactive\",\"temprary_banned\",\"banned\"],\"default\":\"pending\",\"required\":true},\"password\":{\"type\":\"text\",\"private\":true,\"required\":true},\"reset_token\":{\"type\":\"text\",\"private\":true},\"token\":{\"type\":\"text\"},\"online\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"boys\",\"info\":{\"singularName\":\"boy\",\"pluralName\":\"boys\",\"displayName\":\"boy\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"phone\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"cnic\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"driving_license\":{\"type\":\"text\"},\"license_type\":{\"type\":\"enumeration\",\"enum\":[\"final\",\"learning\"],\"default\":\"learning\",\"required\":true},\"license_images\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\",\"videos\",\"audios\",\"files\"]},\"cninc_images\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"nickname\":{\"type\":\"string\"},\"permanent_address\":{\"type\":\"text\"},\"current_address\":{\"type\":\"text\"},\"relative\":{\"displayName\":\"relative\",\"type\":\"component\",\"repeatable\":true,\"component\":\"relative.relative\"},\"images\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"profile_picture\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"boy_uid\":{\"type\":\"uid\",\"required\":true},\"account_type\":{\"type\":\"enumeration\",\"enum\":[\"basic\",\"friend\",\"loyal\",\"family\"],\"default\":\"basic\"},\"account_status\":{\"type\":\"enumeration\",\"enum\":[\"pending\",\"active\",\"inactive\",\"temprary_banned\",\"banned\"],\"default\":\"pending\",\"required\":true},\"password\":{\"type\":\"text\",\"private\":true,\"required\":true},\"reset_token\":{\"type\":\"text\",\"private\":true},\"token\":{\"type\":\"text\"},\"online\":{\"type\":\"boolean\",\"default\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"boy\",\"connection\":\"default\",\"uid\":\"api::boy.boy\",\"apiName\":\"boy\",\"globalId\":\"Boy\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true},\"subtitle\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"Food, Drink, Enjoy\"},\"uid\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"opens_from\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"time\"},\"opens_till\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"time\"},\"super_category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::super-category.super-category\",\"inversedBy\":\"categories\"},\"sub_categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::sub-category.sub-category\",\"mappedBy\":\"category\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true},\"subtitle\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"Food, Drink, Enjoy\"},\"uid\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"opens_from\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"time\"},\"opens_till\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"time\"},\"super_category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::super-category.super-category\",\"inversedBy\":\"categories\"},\"sub_categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::sub-category.sub-category\",\"mappedBy\":\"category\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::charge.charge\":{\"kind\":\"collectionType\",\"collectionName\":\"charges\",\"info\":{\"singularName\":\"charge\",\"pluralName\":\"charges\",\"displayName\":\"charge\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"label\":{\"type\":\"string\"},\"tax\":{\"type\":\"decimal\",\"default\":0,\"required\":true},\"delivery_charges\":{\"type\":\"integer\",\"default\":0,\"required\":true,\"min\":0},\"service_fee\":{\"type\":\"integer\",\"default\":0,\"min\":0,\"required\":true},\"available\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"areas\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::area.area\",\"mappedBy\":\"charge\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"charges\",\"info\":{\"singularName\":\"charge\",\"pluralName\":\"charges\",\"displayName\":\"charge\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"label\":{\"type\":\"string\"},\"tax\":{\"type\":\"decimal\",\"default\":0,\"required\":true},\"delivery_charges\":{\"type\":\"integer\",\"default\":0,\"required\":true,\"min\":0},\"service_fee\":{\"type\":\"integer\",\"default\":0,\"min\":0,\"required\":true},\"available\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"areas\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::area.area\",\"mappedBy\":\"charge\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"charge\",\"connection\":\"default\",\"uid\":\"api::charge.charge\",\"apiName\":\"charge\",\"globalId\":\"Charge\",\"actions\":{},\"lifecycles\":{}},\"api::city.city\":{\"kind\":\"collectionType\",\"collectionName\":\"cities\",\"info\":{\"singularName\":\"city\",\"pluralName\":\"cities\",\"displayName\":\"city\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":false,\"required\":true},\"areas\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::area.area\",\"mappedBy\":\"city\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::city.city\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"cities\",\"info\":{\"singularName\":\"city\",\"pluralName\":\"cities\",\"displayName\":\"city\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":false,\"required\":true},\"areas\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::area.area\",\"mappedBy\":\"city\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"city\",\"connection\":\"default\",\"uid\":\"api::city.city\",\"apiName\":\"city\",\"globalId\":\"City\",\"actions\":{},\"lifecycles\":{}},\"api::complain-comment.complain-comment\":{\"kind\":\"collectionType\",\"collectionName\":\"complain_comments\",\"info\":{\"singularName\":\"complain-comment\",\"pluralName\":\"complain-comments\",\"displayName\":\"complain comment\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"comment\":{\"type\":\"text\"},\"order_complain\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order-complain.order-complain\",\"inversedBy\":\"complain_comment\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"complain_comment\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"complain_comments\",\"info\":{\"singularName\":\"complain-comment\",\"pluralName\":\"complain-comments\",\"displayName\":\"complain comment\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"comment\":{\"type\":\"text\"},\"order_complain\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order-complain.order-complain\",\"inversedBy\":\"complain_comment\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"complain_comment\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"complain-comment\",\"connection\":\"default\",\"uid\":\"api::complain-comment.complain-comment\",\"apiName\":\"complain-comment\",\"globalId\":\"ComplainComment\",\"actions\":{},\"lifecycles\":{}},\"api::coupon.coupon\":{\"kind\":\"collectionType\",\"collectionName\":\"coupons\",\"info\":{\"singularName\":\"coupon\",\"pluralName\":\"coupons\",\"displayName\":\"coupon\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"code\":{\"type\":\"string\",\"required\":true,\"unique\":true,\"minLength\":3,\"maxLength\":10},\"discount\":{\"displayName\":\"discount\",\"type\":\"component\",\"repeatable\":false,\"component\":\"discount.discount\"},\"usage_count\":{\"type\":\"integer\",\"default\":0,\"required\":true},\"max_count\":{\"type\":\"integer\",\"default\":0,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"coupons\",\"info\":{\"singularName\":\"coupon\",\"pluralName\":\"coupons\",\"displayName\":\"coupon\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"code\":{\"type\":\"string\",\"required\":true,\"unique\":true,\"minLength\":3,\"maxLength\":10},\"discount\":{\"displayName\":\"discount\",\"type\":\"component\",\"repeatable\":false,\"component\":\"discount.discount\"},\"usage_count\":{\"type\":\"integer\",\"default\":0,\"required\":true},\"max_count\":{\"type\":\"integer\",\"default\":0,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"coupon\",\"connection\":\"default\",\"uid\":\"api::coupon.coupon\",\"apiName\":\"coupon\",\"globalId\":\"Coupon\",\"actions\":{},\"lifecycles\":{}},\"api::favorite.favorite\":{\"kind\":\"collectionType\",\"collectionName\":\"favorites\",\"info\":{\"singularName\":\"favorite\",\"pluralName\":\"favorites\",\"displayName\":\"favorite\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product.product\",\"mappedBy\":\"favorite\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"favorite\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"favorites\",\"info\":{\"singularName\":\"favorite\",\"pluralName\":\"favorites\",\"displayName\":\"favorite\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product.product\",\"mappedBy\":\"favorite\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"favorite\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"favorite\",\"connection\":\"default\",\"uid\":\"api::favorite.favorite\",\"apiName\":\"favorite\",\"globalId\":\"Favorite\",\"actions\":{},\"lifecycles\":{}},\"api::job.job\":{\"kind\":\"collectionType\",\"collectionName\":\"jobs\",\"info\":{\"singularName\":\"job\",\"pluralName\":\"jobs\",\"displayName\":\"job\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"comment\":{\"type\":\"text\"},\"order\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order.order\",\"mappedBy\":\"job\"},\"boy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::boy.boy\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"pending\",\"accepted\",\"rejected\",\"coming_to_pickup\",\"going_to_dropoff\",\"knocking\",\"dropped_off\",\"failed\"],\"default\":\"pending\",\"required\":true},\"job_updates\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::job-update.job-update\",\"mappedBy\":\"job\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"jobs\",\"info\":{\"singularName\":\"job\",\"pluralName\":\"jobs\",\"displayName\":\"job\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"comment\":{\"type\":\"text\"},\"order\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order.order\",\"mappedBy\":\"job\"},\"boy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::boy.boy\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"pending\",\"accepted\",\"rejected\",\"coming_to_pickup\",\"going_to_dropoff\",\"knocking\",\"dropped_off\",\"failed\"],\"default\":\"pending\",\"required\":true},\"job_updates\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::job-update.job-update\",\"mappedBy\":\"job\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"job\",\"connection\":\"default\",\"uid\":\"api::job.job\",\"apiName\":\"job\",\"globalId\":\"Job\",\"actions\":{},\"lifecycles\":{}},\"api::job-update.job-update\":{\"kind\":\"collectionType\",\"collectionName\":\"job_updates\",\"info\":{\"singularName\":\"job-update\",\"pluralName\":\"job-updates\",\"displayName\":\"job update\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"label\":{\"type\":\"string\"},\"job\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::job.job\",\"inversedBy\":\"job_updates\"},\"private_label\":{\"type\":\"string\",\"private\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"job_updates\",\"info\":{\"singularName\":\"job-update\",\"pluralName\":\"job-updates\",\"displayName\":\"job update\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"label\":{\"type\":\"string\"},\"job\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::job.job\",\"inversedBy\":\"job_updates\"},\"private_label\":{\"type\":\"string\",\"private\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"job-update\",\"connection\":\"default\",\"uid\":\"api::job-update.job-update\",\"apiName\":\"job-update\",\"globalId\":\"JobUpdate\",\"actions\":{},\"lifecycles\":{}},\"api::order.order\":{\"kind\":\"collectionType\",\"collectionName\":\"orders\",\"info\":{\"singularName\":\"order\",\"pluralName\":\"orders\",\"displayName\":\"order\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"orders\"},\"total_price\":{\"default\":0,\"type\":\"decimal\"},\"tax\":{\"type\":\"decimal\",\"default\":0},\"delivery_charges\":{\"type\":\"integer\",\"default\":0},\"discount\":{\"type\":\"decimal\",\"default\":0},\"status\":{\"type\":\"enumeration\",\"enum\":[\"processing\",\"confirmed\",\"assigning\",\"packing\",\"coming\",\"knocking\",\"delivered\",\"cancelled_by_user\",\"cancelled_by_store\"],\"default\":\"processing\",\"required\":true},\"service_fee\":{\"type\":\"integer\",\"default\":0},\"payment_method\":{\"type\":\"enumeration\",\"enum\":[\"cod\",\"card\",\"wallet\",\"mix\"]},\"order_products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::order-product.order-product\",\"mappedBy\":\"order\"},\"address\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::address.address\",\"inversedBy\":\"order\"},\"address_text\":{\"type\":\"text\"},\"phone_number\":{\"type\":\"string\"},\"payment_snapshot\":{\"type\":\"json\"},\"scheduled\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"scheduled_for\":{\"type\":\"datetime\"},\"job\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::job.job\",\"inversedBy\":\"order\"},\"notes\":{\"type\":\"text\"},\"order_uid\":{\"type\":\"biginteger\",\"default\":\"0\",\"unique\":true,\"required\":false},\"area\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::area.area\",\"inversedBy\":\"order\"},\"bill\":{\"type\":\"decimal\",\"default\":0,\"required\":true,\"min\":0},\"order_complain\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order-complain.order-complain\",\"inversedBy\":\"order\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"orders\",\"info\":{\"singularName\":\"order\",\"pluralName\":\"orders\",\"displayName\":\"order\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"orders\"},\"total_price\":{\"default\":0,\"type\":\"decimal\"},\"tax\":{\"type\":\"decimal\",\"default\":0},\"delivery_charges\":{\"type\":\"integer\",\"default\":0},\"discount\":{\"type\":\"decimal\",\"default\":0},\"status\":{\"type\":\"enumeration\",\"enum\":[\"processing\",\"confirmed\",\"assigning\",\"packing\",\"coming\",\"knocking\",\"delivered\",\"cancelled_by_user\",\"cancelled_by_store\"],\"default\":\"processing\",\"required\":true},\"service_fee\":{\"type\":\"integer\",\"default\":0},\"payment_method\":{\"type\":\"enumeration\",\"enum\":[\"cod\",\"card\",\"wallet\",\"mix\"]},\"order_products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::order-product.order-product\",\"mappedBy\":\"order\"},\"address\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::address.address\",\"inversedBy\":\"order\"},\"address_text\":{\"type\":\"text\"},\"phone_number\":{\"type\":\"string\"},\"payment_snapshot\":{\"type\":\"json\"},\"scheduled\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"scheduled_for\":{\"type\":\"datetime\"},\"job\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::job.job\",\"inversedBy\":\"order\"},\"notes\":{\"type\":\"text\"},\"order_uid\":{\"type\":\"biginteger\",\"default\":\"0\",\"unique\":true,\"required\":false},\"area\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::area.area\",\"inversedBy\":\"order\"},\"bill\":{\"type\":\"decimal\",\"default\":0,\"required\":true,\"min\":0},\"order_complain\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order-complain.order-complain\",\"inversedBy\":\"order\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"order\",\"connection\":\"default\",\"uid\":\"api::order.order\",\"apiName\":\"order\",\"globalId\":\"Order\",\"actions\":{},\"lifecycles\":{}},\"api::order-complain.order-complain\":{\"kind\":\"collectionType\",\"collectionName\":\"order_complains\",\"info\":{\"singularName\":\"order-complain\",\"pluralName\":\"order-complains\",\"displayName\":\"order complain\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"order\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order.order\",\"inversedBy\":\"order_complain\"},\"order_product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order-product.order-product\",\"inversedBy\":\"order_complain\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"working\",\"solved\",\"closed\"],\"default\":\"working\",\"required\":true},\"complain\":{\"type\":\"text\",\"required\":false},\"complain_comment\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::complain-comment.complain-comment\",\"mappedBy\":\"order_complain\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"order_complains\",\"info\":{\"singularName\":\"order-complain\",\"pluralName\":\"order-complains\",\"displayName\":\"order complain\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"order\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order.order\",\"inversedBy\":\"order_complain\"},\"order_product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order-product.order-product\",\"inversedBy\":\"order_complain\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"working\",\"solved\",\"closed\"],\"default\":\"working\",\"required\":true},\"complain\":{\"type\":\"text\",\"required\":false},\"complain_comment\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::complain-comment.complain-comment\",\"mappedBy\":\"order_complain\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"order-complain\",\"connection\":\"default\",\"uid\":\"api::order-complain.order-complain\",\"apiName\":\"order-complain\",\"globalId\":\"OrderComplain\",\"actions\":{},\"lifecycles\":{}},\"api::order-product.order-product\":{\"kind\":\"collectionType\",\"collectionName\":\"order_products\",\"info\":{\"singularName\":\"order-product\",\"pluralName\":\"order-products\",\"displayName\":\"order product\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"order\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::order.order\",\"inversedBy\":\"order_products\"},\"product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product.product\",\"mappedBy\":\"order_product\"},\"qty\":{\"default\":1,\"required\":true,\"type\":\"integer\"},\"price\":{\"type\":\"decimal\",\"default\":0,\"required\":true},\"total\":{\"type\":\"decimal\",\"default\":0,\"required\":true},\"discount\":{\"type\":\"decimal\",\"default\":0},\"notes\":{\"type\":\"text\"},\"order_complain\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order-complain.order-complain\",\"inversedBy\":\"order_product\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"order_products\",\"info\":{\"singularName\":\"order-product\",\"pluralName\":\"order-products\",\"displayName\":\"order product\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"order\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::order.order\",\"inversedBy\":\"order_products\"},\"product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product.product\",\"mappedBy\":\"order_product\"},\"qty\":{\"default\":1,\"required\":true,\"type\":\"integer\"},\"price\":{\"type\":\"decimal\",\"default\":0,\"required\":true},\"total\":{\"type\":\"decimal\",\"default\":0,\"required\":true},\"discount\":{\"type\":\"decimal\",\"default\":0},\"notes\":{\"type\":\"text\"},\"order_complain\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order-complain.order-complain\",\"inversedBy\":\"order_product\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"order-product\",\"connection\":\"default\",\"uid\":\"api::order-product.order-product\",\"apiName\":\"order-product\",\"globalId\":\"OrderProduct\",\"actions\":{},\"lifecycles\":{}},\"api::product.product\":{\"kind\":\"collectionType\",\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true,\"unique\":true},\"subtitle\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":false},\"available\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"boolean\",\"default\":true,\"required\":true},\"unit\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::unit.unit\",\"inversedBy\":\"product\"},\"attributes\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::attribute.attribute\",\"mappedBy\":\"product\"},\"sub_category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::sub-category.sub-category\",\"inversedBy\":\"products\"},\"purchase_price\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"decimal\",\"private\":true,\"min\":0,\"default\":0},\"sale_price\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"decimal\",\"required\":true,\"min\":0},\"stock\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"integer\",\"required\":true},\"discount_type\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"enumeration\",\"enum\":[\"none\",\"percentage\",\"flat\"],\"default\":\"flat\"},\"discount\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"decimal\",\"min\":0,\"default\":0},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"images\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"videos\"],\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"tags\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"favorite\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::favorite.favorite\",\"inversedBy\":\"product\"},\"order_product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order-product.order-product\",\"inversedBy\":\"product\"},\"background_color\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"default\":\"#ffcc66\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true,\"unique\":true},\"subtitle\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":false},\"available\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"boolean\",\"default\":true,\"required\":true},\"unit\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::unit.unit\",\"inversedBy\":\"product\"},\"attributes\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::attribute.attribute\",\"mappedBy\":\"product\"},\"sub_category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::sub-category.sub-category\",\"inversedBy\":\"products\"},\"purchase_price\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"decimal\",\"private\":true,\"min\":0,\"default\":0},\"sale_price\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"decimal\",\"required\":true,\"min\":0},\"stock\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"integer\",\"required\":true},\"discount_type\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"enumeration\",\"enum\":[\"none\",\"percentage\",\"flat\"],\"default\":\"flat\"},\"discount\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"decimal\",\"min\":0,\"default\":0},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"images\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"videos\"],\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"tags\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"favorite\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::favorite.favorite\",\"inversedBy\":\"product\"},\"order_product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order-product.order-product\",\"inversedBy\":\"product\"},\"background_color\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"default\":\"#ffcc66\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"product\",\"connection\":\"default\",\"uid\":\"api::product.product\",\"apiName\":\"product\",\"globalId\":\"Product\",\"actions\":{},\"lifecycles\":{}},\"api::slider.slider\":{\"kind\":\"collectionType\",\"collectionName\":\"sliders\",\"info\":{\"singularName\":\"slider\",\"pluralName\":\"sliders\",\"displayName\":\"slider\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::slider.slider\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"sliders\",\"info\":{\"singularName\":\"slider\",\"pluralName\":\"sliders\",\"displayName\":\"slider\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"slider\",\"connection\":\"default\",\"uid\":\"api::slider.slider\",\"apiName\":\"slider\",\"globalId\":\"Slider\",\"actions\":{},\"lifecycles\":{}},\"api::sub-category.sub-category\":{\"kind\":\"collectionType\",\"collectionName\":\"sub_categories\",\"info\":{\"singularName\":\"sub-category\",\"pluralName\":\"sub-categories\",\"displayName\":\"sub category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true,\"required\":true},\"subtitle\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"Food, Drink, Enjoy\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"uid\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true,\"required\":false},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"sub_categories\"},\"products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"sub_category\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::sub-category.sub-category\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"sub_categories\",\"info\":{\"singularName\":\"sub-category\",\"pluralName\":\"sub-categories\",\"displayName\":\"sub category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true,\"required\":true},\"subtitle\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"Food, Drink, Enjoy\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"uid\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true,\"required\":false},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"sub_categories\"},\"products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"sub_category\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"sub-category\",\"connection\":\"default\",\"uid\":\"api::sub-category.sub-category\",\"apiName\":\"sub-category\",\"globalId\":\"SubCategory\",\"actions\":{},\"lifecycles\":{}},\"api::super-category.super-category\":{\"kind\":\"collectionType\",\"collectionName\":\"super_categories\",\"info\":{\"singularName\":\"super-category\",\"pluralName\":\"super-categories\",\"displayName\":\"super category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true,\"required\":true},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"uid\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true,\"required\":true},\"available\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"boolean\"},\"not_available_reason\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\"},\"categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\",\"mappedBy\":\"super_category\"},\"subtitle\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"icon\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::super-category.super-category\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"super_categories\",\"info\":{\"singularName\":\"super-category\",\"pluralName\":\"super-categories\",\"displayName\":\"super category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true,\"required\":true},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"uid\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true,\"required\":true},\"available\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"boolean\"},\"not_available_reason\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\"},\"categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\",\"mappedBy\":\"super_category\"},\"subtitle\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"icon\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"super-category\",\"connection\":\"default\",\"uid\":\"api::super-category.super-category\",\"apiName\":\"super-category\",\"globalId\":\"SuperCategory\",\"actions\":{},\"lifecycles\":{}},\"api::tempphone.tempphone\":{\"kind\":\"collectionType\",\"collectionName\":\"tempphones\",\"info\":{\"singularName\":\"tempphone\",\"pluralName\":\"tempphones\",\"displayName\":\"tempphone\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"phoneNumber\":{\"type\":\"string\"},\"slip\":{\"type\":\"string\"},\"timestamp\":{\"type\":\"biginteger\"},\"sid\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"tempphones\",\"info\":{\"singularName\":\"tempphone\",\"pluralName\":\"tempphones\",\"displayName\":\"tempphone\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"phoneNumber\":{\"type\":\"string\"},\"slip\":{\"type\":\"string\"},\"timestamp\":{\"type\":\"biginteger\"},\"sid\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"tempphone\",\"connection\":\"default\",\"uid\":\"api::tempphone.tempphone\",\"apiName\":\"tempphone\",\"globalId\":\"Tempphone\",\"actions\":{},\"lifecycles\":{}},\"api::unit.unit\":{\"kind\":\"collectionType\",\"collectionName\":\"units\",\"info\":{\"singularName\":\"unit\",\"pluralName\":\"units\",\"displayName\":\"unit\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true,\"unique\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product.product\",\"mappedBy\":\"unit\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::unit.unit\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"units\",\"info\":{\"singularName\":\"unit\",\"pluralName\":\"units\",\"displayName\":\"unit\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true,\"unique\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product.product\",\"mappedBy\":\"unit\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"unit\",\"connection\":\"default\",\"uid\":\"api::unit.unit\",\"apiName\":\"unit\",\"globalId\":\"Unit\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"folder\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"editRelations\":[\"parent\",\"children\",\"files\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"phoneNumber\":{\"edit\":{\"label\":\"phoneNumber\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phoneNumber\",\"searchable\":true,\"sortable\":true}},\"complete\":{\"edit\":{\"label\":\"complete\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"complete\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"area\":{\"edit\":{\"label\":\"area\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"area\",\"searchable\":true,\"sortable\":true}},\"addresses\":{\"edit\":{\"label\":\"addresses\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"house\"},\"list\":{\"label\":\"addresses\",\"searchable\":false,\"sortable\":false}},\"favorite\":{\"edit\":{\"label\":\"favorite\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"favorite\",\"searchable\":true,\"sortable\":true}},\"orders\":{\"edit\":{\"label\":\"orders\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"orders\",\"searchable\":false,\"sortable\":false}},\"complain_comment\":{\"edit\":{\"label\":\"complain_comment\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"complain_comment\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"phoneNumber\",\"size\":6}],[{\"name\":\"complete\",\"size\":4},{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"role\",\"addresses\",\"favorite\",\"orders\",\"area\",\"complain_comment\"]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"uid\":\"api::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"uid\":{\"edit\":{\"label\":\"uid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"uid\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"opens_from\":{\"edit\":{\"label\":\"opens_from\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"opens_from\",\"searchable\":true,\"sortable\":true}},\"opens_till\":{\"edit\":{\"label\":\"opens_till\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"opens_till\",\"searchable\":true,\"sortable\":true}},\"super_category\":{\"edit\":{\"label\":\"super_category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"super_category\",\"searchable\":true,\"sortable\":true}},\"sub_categories\":{\"edit\":{\"label\":\"sub_categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"sub_categories\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"uid\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"uid\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"opens_from\",\"size\":4},{\"name\":\"opens_till\",\"size\":4}]],\"editRelations\":[\"super_category\",\"sub_categories\"]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::api::sub-category.sub-category', '{\"uid\":\"api::sub-category.sub-category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"uid\":{\"edit\":{\"label\":\"uid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"uid\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"image\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"image\",\"size\":6},{\"name\":\"uid\",\"size\":6}]],\"editRelations\":[\"category\",\"products\"]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::api::super-category.super-category', '{\"uid\":\"api::super-category.super-category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"uid\":{\"edit\":{\"label\":\"uid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"uid\",\"searchable\":true,\"sortable\":true}},\"available\":{\"edit\":{\"label\":\"available\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"available\",\"searchable\":true,\"sortable\":true}},\"not_available_reason\":{\"edit\":{\"label\":\"not_available_reason\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"not_available_reason\",\"searchable\":true,\"sortable\":true}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"uid\",\"image\",\"categories\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"uid\",\"size\":6},{\"name\":\"available\",\"size\":4}],[{\"name\":\"not_available_reason\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"subtitle\",\"size\":6},{\"name\":\"icon\",\"size\":6}]],\"editRelations\":[\"categories\"]}}', 'object', NULL, NULL),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(16, 'plugin_upload_metrics', '{\"weeklySchedule\":\"4 51 17 * * 4\",\"lastWeeklyUpdate\":1666270264036}', 'object', NULL, NULL),
(17, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(18, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', NULL, NULL),
(19, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(21, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(22, 'plugin_content_manager_configuration_content_types::api::product.product', '{\"uid\":\"api::product.product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"available\":{\"edit\":{\"label\":\"available\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"available\",\"searchable\":true,\"sortable\":true}},\"unit\":{\"edit\":{\"label\":\"unit\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"unit\",\"searchable\":true,\"sortable\":true}},\"attributes\":{\"edit\":{\"label\":\"attributes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"attributes\",\"searchable\":false,\"sortable\":false}},\"sub_category\":{\"edit\":{\"label\":\"sub_category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"sub_category\",\"searchable\":true,\"sortable\":true}},\"purchase_price\":{\"edit\":{\"label\":\"purchase_price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"purchase_price\",\"searchable\":true,\"sortable\":true}},\"sale_price\":{\"edit\":{\"label\":\"sale_price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sale_price\",\"searchable\":true,\"sortable\":true}},\"stock\":{\"edit\":{\"label\":\"stock\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stock\",\"searchable\":true,\"sortable\":true}},\"discount_type\":{\"edit\":{\"label\":\"discount_type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"discount_type\",\"searchable\":true,\"sortable\":true}},\"discount\":{\"edit\":{\"label\":\"discount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"discount\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"images\":{\"edit\":{\"label\":\"images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"images\",\"searchable\":false,\"sortable\":false}},\"tags\":{\"edit\":{\"label\":\"tags\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tags\",\"searchable\":true,\"sortable\":true}},\"favorite\":{\"edit\":{\"label\":\"favorite\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"favorite\",\"searchable\":true,\"sortable\":true}},\"order_product\":{\"edit\":{\"label\":\"order_product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"order_product\",\"searchable\":true,\"sortable\":true}},\"background_color\":{\"edit\":{\"label\":\"background_color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"background_color\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"available\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"available\",\"size\":4},{\"name\":\"purchase_price\",\"size\":4},{\"name\":\"sale_price\",\"size\":4}],[{\"name\":\"stock\",\"size\":4},{\"name\":\"discount_type\",\"size\":6}],[{\"name\":\"discount\",\"size\":4},{\"name\":\"image\",\"size\":6}],[{\"name\":\"images\",\"size\":6},{\"name\":\"tags\",\"size\":6}],[{\"name\":\"background_color\",\"size\":6}]],\"editRelations\":[\"unit\",\"attributes\",\"sub_category\",\"favorite\",\"order_product\"]}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::unit.unit', '{\"uid\":\"api::unit.unit\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"product\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"title\",\"size\":6}]],\"editRelations\":[\"product\"]}}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_content_types::api::attribute.attribute', '{\"uid\":\"api::attribute.attribute\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"product\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"title\",\"size\":6}]],\"editRelations\":[\"product\"]}}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::api::tempphone.tempphone', '{\"uid\":\"api::tempphone.tempphone\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"phoneNumber\",\"defaultSortBy\":\"phoneNumber\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"phoneNumber\":{\"edit\":{\"label\":\"phoneNumber\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phoneNumber\",\"searchable\":true,\"sortable\":true}},\"slip\":{\"edit\":{\"label\":\"slip\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slip\",\"searchable\":true,\"sortable\":true}},\"timestamp\":{\"edit\":{\"label\":\"timestamp\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"timestamp\",\"searchable\":true,\"sortable\":true}},\"sid\":{\"edit\":{\"label\":\"sid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sid\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"phoneNumber\",\"slip\",\"timestamp\"],\"edit\":[[{\"name\":\"phoneNumber\",\"size\":6},{\"name\":\"slip\",\"size\":6}],[{\"name\":\"timestamp\",\"size\":4},{\"name\":\"sid\",\"size\":6}]],\"editRelations\":[]}}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::api::city.city', '{\"uid\":\"api::city.city\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"areas\":{\"edit\":{\"label\":\"areas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"areas\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"title\",\"size\":6}]],\"editRelations\":[\"areas\"]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(28, 'plugin_content_manager_configuration_content_types::api::area.area', '{\"uid\":\"api::area.area\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"city\":{\"edit\":{\"label\":\"city\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"city\",\"searchable\":true,\"sortable\":true}},\"user\":{\"edit\":{\"label\":\"user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"user\",\"searchable\":true,\"sortable\":true}},\"charge\":{\"edit\":{\"label\":\"charge\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"label\"},\"list\":{\"label\":\"charge\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"phone_number\"},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"title\",\"size\":6}]],\"editRelations\":[\"city\",\"user\",\"order\",\"charge\"],\"list\":[\"id\",\"title\",\"city\",\"createdAt\",\"charge\"]}}', 'object', NULL, NULL),
(29, 'plugin_documentation_config', '{\"restrictedAccess\":false}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_content_types::api::address.address', '{\"uid\":\"api::address.address\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"house\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"DESC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"house\":{\"edit\":{\"label\":\"house\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"house\",\"searchable\":true,\"sortable\":true}},\"block\":{\"edit\":{\"label\":\"block\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"block\",\"searchable\":true,\"sortable\":true}},\"near\":{\"edit\":{\"label\":\"near\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"near\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"rtl\":{\"edit\":{\"label\":\"rtl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"rtl\",\"searchable\":true,\"sortable\":true}},\"default\":{\"edit\":{\"label\":\"default\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"default\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"order_uid\"},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"house\",\"block\",\"near\"],\"edit\":[[{\"name\":\"house\",\"size\":6},{\"name\":\"block\",\"size\":6}],[{\"name\":\"near\",\"size\":6},{\"name\":\"rtl\",\"size\":4}],[{\"name\":\"default\",\"size\":4}]],\"editRelations\":[\"users_permissions_user\",\"order\"]}}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::api::favorite.favorite', '{\"uid\":\"api::favorite.favorite\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"product\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"product\",\"users_permissions_user\",\"createdAt\"],\"editRelations\":[\"product\",\"users_permissions_user\"],\"edit\":[]}}', 'object', NULL, NULL),
(33, 'plugin_content_manager_configuration_content_types::api::order.order', '{\"uid\":\"api::order.order\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"DESC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"total_price\":{\"edit\":{\"label\":\"total_price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"total_price\",\"searchable\":true,\"sortable\":true}},\"tax\":{\"edit\":{\"label\":\"tax\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tax\",\"searchable\":true,\"sortable\":true}},\"delivery_charges\":{\"edit\":{\"label\":\"delivery_charges\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"delivery_charges\",\"searchable\":true,\"sortable\":true}},\"discount\":{\"edit\":{\"label\":\"discount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"discount\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"service_fee\":{\"edit\":{\"label\":\"service_fee\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"service_fee\",\"searchable\":true,\"sortable\":true}},\"payment_method\":{\"edit\":{\"label\":\"payment_method\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"payment_method\",\"searchable\":true,\"sortable\":true}},\"order_products\":{\"edit\":{\"label\":\"order_products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"order_products\",\"searchable\":false,\"sortable\":false}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"house\"},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"address_text\":{\"edit\":{\"label\":\"address_text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address_text\",\"searchable\":true,\"sortable\":true}},\"phone_number\":{\"edit\":{\"label\":\"phone_number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone_number\",\"searchable\":true,\"sortable\":true}},\"payment_snapshot\":{\"edit\":{\"label\":\"payment_snapshot\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"payment_snapshot\",\"searchable\":false,\"sortable\":false}},\"scheduled\":{\"edit\":{\"label\":\"scheduled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduled\",\"searchable\":true,\"sortable\":true}},\"scheduled_for\":{\"edit\":{\"label\":\"scheduled_for\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduled_for\",\"searchable\":true,\"sortable\":true}},\"job\":{\"edit\":{\"label\":\"job\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"job\",\"searchable\":true,\"sortable\":true}},\"notes\":{\"edit\":{\"label\":\"notes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"notes\",\"searchable\":true,\"sortable\":true}},\"order_uid\":{\"edit\":{\"label\":\"order_uid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order_uid\",\"searchable\":true,\"sortable\":true}},\"area\":{\"edit\":{\"label\":\"area\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"area\",\"searchable\":true,\"sortable\":true}},\"bill\":{\"edit\":{\"label\":\"bill\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bill\",\"searchable\":true,\"sortable\":true}},\"order_complain\":{\"edit\":{\"label\":\"order_complain\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"order_complain\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"total_price\",\"size\":4},{\"name\":\"tax\",\"size\":4},{\"name\":\"delivery_charges\",\"size\":4}],[{\"name\":\"discount\",\"size\":4},{\"name\":\"status\",\"size\":6}],[{\"name\":\"service_fee\",\"size\":4},{\"name\":\"payment_method\",\"size\":6}],[{\"name\":\"order_uid\",\"size\":6}],[{\"name\":\"address_text\",\"size\":6},{\"name\":\"phone_number\",\"size\":6}],[{\"name\":\"payment_snapshot\",\"size\":12}],[{\"name\":\"scheduled\",\"size\":4},{\"name\":\"scheduled_for\",\"size\":6}],[{\"name\":\"notes\",\"size\":6},{\"name\":\"bill\",\"size\":4}]],\"editRelations\":[\"users_permissions_user\",\"order_products\",\"address\",\"job\",\"area\",\"order_complain\"],\"list\":[\"order_uid\",\"total_price\",\"tax\",\"delivery_charges\",\"discount\",\"address_text\",\"users_permissions_user\",\"notes\",\"phone_number\",\"payment_method\"]}}', 'object', NULL, NULL),
(34, 'plugin_content_manager_configuration_content_types::api::order-product.order-product', '{\"uid\":\"api::order-product.order-product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"order_uid\"},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"product\",\"searchable\":true,\"sortable\":true}},\"qty\":{\"edit\":{\"label\":\"qty\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"qty\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"total\":{\"edit\":{\"label\":\"total\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"total\",\"searchable\":true,\"sortable\":true}},\"discount\":{\"edit\":{\"label\":\"discount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"discount\",\"searchable\":true,\"sortable\":true}},\"notes\":{\"edit\":{\"label\":\"notes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"notes\",\"searchable\":true,\"sortable\":true}},\"order_complain\":{\"edit\":{\"label\":\"order_complain\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"order_complain\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"order\",\"product\",\"qty\"],\"edit\":[[{\"name\":\"qty\",\"size\":4},{\"name\":\"price\",\"size\":4},{\"name\":\"total\",\"size\":4}],[{\"name\":\"discount\",\"size\":4},{\"name\":\"notes\",\"size\":6}]],\"editRelations\":[\"order\",\"product\",\"order_complain\"]}}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_components::relative.relative', '{\"uid\":\"relative.relative\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"cnic\":{\"edit\":{\"label\":\"cnic\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cnic\",\"searchable\":true,\"sortable\":true}},\"current_address\":{\"edit\":{\"label\":\"current_address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"current_address\",\"searchable\":true,\"sortable\":true}},\"permanent_address\":{\"edit\":{\"label\":\"permanent_address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"permanent_address\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"phone\",\"cnic\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"phone\",\"size\":6}],[{\"name\":\"cnic\",\"size\":6},{\"name\":\"current_address\",\"size\":6}],[{\"name\":\"permanent_address\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"image\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(36, 'plugin_content_manager_configuration_content_types::api::boy.boy', '{\"uid\":\"api::boy.boy\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"cnic\":{\"edit\":{\"label\":\"cnic\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cnic\",\"searchable\":true,\"sortable\":true}},\"driving_license\":{\"edit\":{\"label\":\"driving_license\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"driving_license\",\"searchable\":true,\"sortable\":true}},\"license_type\":{\"edit\":{\"label\":\"license_type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"license_type\",\"searchable\":true,\"sortable\":true}},\"license_images\":{\"edit\":{\"label\":\"license_images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"license_images\",\"searchable\":false,\"sortable\":false}},\"cninc_images\":{\"edit\":{\"label\":\"cninc_images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cninc_images\",\"searchable\":false,\"sortable\":false}},\"nickname\":{\"edit\":{\"label\":\"nickname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nickname\",\"searchable\":true,\"sortable\":true}},\"permanent_address\":{\"edit\":{\"label\":\"permanent_address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"permanent_address\",\"searchable\":true,\"sortable\":true}},\"current_address\":{\"edit\":{\"label\":\"current_address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"current_address\",\"searchable\":true,\"sortable\":true}},\"relative\":{\"edit\":{\"label\":\"relative\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"relative\",\"searchable\":false,\"sortable\":false}},\"images\":{\"edit\":{\"label\":\"images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"images\",\"searchable\":false,\"sortable\":false}},\"profile_picture\":{\"edit\":{\"label\":\"profile_picture\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"profile_picture\",\"searchable\":false,\"sortable\":false}},\"boy_uid\":{\"edit\":{\"label\":\"boy_uid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"boy_uid\",\"searchable\":true,\"sortable\":true}},\"account_type\":{\"edit\":{\"label\":\"account_type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"account_type\",\"searchable\":true,\"sortable\":true}},\"account_status\":{\"edit\":{\"label\":\"account_status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"account_status\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"reset_token\":{\"edit\":{\"label\":\"reset_token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"reset_token\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"online\":{\"edit\":{\"label\":\"online\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"online\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"phone\",\"cnic\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"nickname\",\"size\":6}],[{\"name\":\"phone\",\"size\":6}],[{\"name\":\"profile_picture\",\"size\":6},{\"name\":\"images\",\"size\":6}],[{\"name\":\"cnic\",\"size\":6}],[{\"name\":\"driving_license\",\"size\":6}],[{\"name\":\"license_type\",\"size\":6},{\"name\":\"license_images\",\"size\":6}],[{\"name\":\"cninc_images\",\"size\":6}],[{\"name\":\"permanent_address\",\"size\":6},{\"name\":\"current_address\",\"size\":6}],[{\"name\":\"relative\",\"size\":12}],[{\"name\":\"boy_uid\",\"size\":6},{\"name\":\"account_type\",\"size\":6}],[{\"name\":\"account_status\",\"size\":6},{\"name\":\"password\",\"size\":6}],[{\"name\":\"reset_token\",\"size\":6},{\"name\":\"token\",\"size\":6}],[{\"name\":\"online\",\"size\":4}]],\"editRelations\":[]}}', 'object', NULL, NULL),
(37, 'plugin_content_manager_configuration_components::discount.discount', '{\"uid\":\"discount.discount\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"label\",\"defaultSortBy\":\"label\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"discount_type\":{\"edit\":{\"label\":\"discount_type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"discount_type\",\"searchable\":true,\"sortable\":true}},\"discount\":{\"edit\":{\"label\":\"discount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"discount\",\"searchable\":true,\"sortable\":true}},\"label\":{\"edit\":{\"label\":\"label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"label\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"discount_type\",\"discount\",\"label\"],\"edit\":[[{\"name\":\"discount_type\",\"size\":6},{\"name\":\"discount\",\"size\":4}],[{\"name\":\"label\",\"size\":6},{\"name\":\"description\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(38, 'plugin_content_manager_configuration_content_types::api::coupon.coupon', '{\"uid\":\"api::coupon.coupon\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"discount\":{\"edit\":{\"label\":\"discount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"discount\",\"searchable\":false,\"sortable\":false}},\"usage_count\":{\"edit\":{\"label\":\"usage_count\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"usage_count\",\"searchable\":true,\"sortable\":true}},\"max_count\":{\"edit\":{\"label\":\"max_count\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"max_count\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"code\",\"discount\"],\"editRelations\":[],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"discount\",\"size\":12}],[{\"name\":\"usage_count\",\"size\":4},{\"name\":\"max_count\",\"size\":4}]]}}', 'object', NULL, NULL),
(39, 'plugin_content_manager_configuration_content_types::api::job.job', '{\"uid\":\"api::job.job\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"comment\":{\"edit\":{\"label\":\"comment\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"comment\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"order_uid\"},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"boy\":{\"edit\":{\"label\":\"boy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"boy\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"job_updates\":{\"edit\":{\"label\":\"job_updates\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"label\"},\"list\":{\"label\":\"job_updates\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"comment\",\"order\",\"boy\"],\"edit\":[[{\"name\":\"comment\",\"size\":6},{\"name\":\"status\",\"size\":6}]],\"editRelations\":[\"order\",\"boy\",\"job_updates\"]}}', 'object', NULL, NULL),
(40, 'plugin_content_manager_configuration_content_types::api::job-update.job-update', '{\"uid\":\"api::job-update.job-update\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"label\",\"defaultSortBy\":\"label\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"label\":{\"edit\":{\"label\":\"label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"label\",\"searchable\":true,\"sortable\":true}},\"job\":{\"edit\":{\"label\":\"job\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"job\",\"searchable\":true,\"sortable\":true}},\"private_label\":{\"edit\":{\"label\":\"private_label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"private_label\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"label\",\"job\",\"private_label\"],\"editRelations\":[\"job\"],\"edit\":[[{\"name\":\"label\",\"size\":6},{\"name\":\"private_label\",\"size\":6}]]}}', 'object', NULL, NULL),
(42, 'plugin_content_manager_configuration_content_types::api::charge.charge', '{\"uid\":\"api::charge.charge\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"label\",\"defaultSortBy\":\"label\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"label\":{\"edit\":{\"label\":\"label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"label\",\"searchable\":true,\"sortable\":true}},\"tax\":{\"edit\":{\"label\":\"tax\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tax\",\"searchable\":true,\"sortable\":true}},\"delivery_charges\":{\"edit\":{\"label\":\"delivery_charges\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"delivery_charges\",\"searchable\":true,\"sortable\":true}},\"service_fee\":{\"edit\":{\"label\":\"service_fee\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"service_fee\",\"searchable\":true,\"sortable\":true}},\"available\":{\"edit\":{\"label\":\"available\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"available\",\"searchable\":true,\"sortable\":true}},\"areas\":{\"edit\":{\"label\":\"areas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"areas\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"label\",\"tax\",\"areas\"],\"edit\":[[{\"name\":\"label\",\"size\":6},{\"name\":\"tax\",\"size\":4}],[{\"name\":\"delivery_charges\",\"size\":4},{\"name\":\"service_fee\",\"size\":4},{\"name\":\"available\",\"size\":4}]],\"editRelations\":[\"areas\"]}}', 'object', NULL, NULL),
(43, 'plugin_content_manager_configuration_content_types::api::order-complain.order-complain', '{\"uid\":\"api::order-complain.order-complain\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"phone_number\"},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"order_product\":{\"edit\":{\"label\":\"order_product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"order_product\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"complain\":{\"edit\":{\"label\":\"complain\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"complain\",\"searchable\":true,\"sortable\":true}},\"complain_comment\":{\"edit\":{\"label\":\"complain_comment\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"complain_comment\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"order\",\"order_product\",\"status\"],\"edit\":[[{\"name\":\"status\",\"size\":6},{\"name\":\"complain\",\"size\":6}]],\"editRelations\":[\"order\",\"order_product\",\"complain_comment\"]}}', 'object', NULL, NULL),
(44, 'plugin_content_manager_configuration_content_types::api::complain-comment.complain-comment', '{\"uid\":\"api::complain-comment.complain-comment\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"comment\":{\"edit\":{\"label\":\"comment\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"comment\",\"searchable\":true,\"sortable\":true}},\"order_complain\":{\"edit\":{\"label\":\"order_complain\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"order_complain\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"comment\",\"order_complain\",\"createdAt\"],\"edit\":[[{\"name\":\"comment\",\"size\":6}]],\"editRelations\":[\"order_complain\",\"users_permissions_user\"]}}', 'object', NULL, NULL),
(45, 'plugin_content_manager_configuration_content_types::api::slider.slider', '{\"uid\":\"api::slider.slider\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"image\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"image\",\"size\":6}]]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int UNSIGNED NOT NULL,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(58, '{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"phone_number\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"complete\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"addresses\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"house\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"block\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"near\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"rtl\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"default\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"addresses_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"addresses_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"addresses_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"addresses_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"areas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"areas_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"areas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"areas_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"areas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"attributes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"attributes_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"attributes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"attributes_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"attributes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"boys\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"phone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"cnic\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"driving_license\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"license_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"nickname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"permanent_address\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"current_address\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"boy_uid\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"account_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"account_status\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"password\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"reset_token\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"token\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"online\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"boys_boy_uid_unique\", \"type\": \"unique\", \"columns\": [\"boy_uid\"]}, {\"name\": \"boys_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"boys_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"boys_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"boys_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"uid\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"precision\": 3}], \"name\": \"opens_from\", \"type\": \"time\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"precision\": 3}], \"name\": \"opens_till\", \"type\": \"time\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"charges\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"label\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"tax\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"delivery_charges\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"service_fee\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"available\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"charges_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"charges_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"charges_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"charges_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cities\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cities_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"cities_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"cities_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cities_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"complain_comments\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"comment\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"complain_comments_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"complain_comments_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"complain_comments_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"complain_comments_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"coupons\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"usage_count\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"max_count\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"coupons_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"coupons_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"coupons_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"coupons_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"favorites\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"favorites_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"favorites_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"favorites_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"favorites_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"jobs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"comment\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"status\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"jobs_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"jobs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"jobs_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"jobs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"job_updates\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"label\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"private_label\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"job_updates_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"job_updates_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"job_updates_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"job_updates_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"orders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [10, 2], \"name\": \"total_price\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"tax\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"delivery_charges\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"discount\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"status\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"service_fee\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"payment_method\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"address_text\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"phone_number\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"payment_snapshot\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"scheduled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"scheduled_for\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"notes\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order_uid\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"bill\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"orders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"orders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"orders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"orders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"order_complains\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"status\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"complain\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"order_complains_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"order_complains_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"order_complains_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"order_complains_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"order_products\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"qty\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"price\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"total\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"discount\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"notes\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"order_products_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"order_products_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"order_products_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"order_products_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"available\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"purchase_price\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"sale_price\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"stock\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"discount_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"discount\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tags\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"background_color\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"products_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"products_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"products_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sliders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sliders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"sliders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"sliders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"sliders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sub_categories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"uid\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sub_categories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"sub_categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"sub_categories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"sub_categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"super_categories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"uid\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"available\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"not_available_reason\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"icon\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"super_categories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"super_categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"super_categories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"super_categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"tempphones\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"phone_number\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slip\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"timestamp\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sid\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"tempphones_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"tempphones_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"tempphones_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"tempphones_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"units\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"units_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"units_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"units_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"units_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_discount_discounts\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"discount_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"discount\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"label\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_relative_relatives\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"phone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"cnic\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"current_address\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permanent_address\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_favorite_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"favorite_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_favorite_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_favorite_links_inv_fk\", \"columns\": [\"favorite_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_favorite_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_favorite_links_inv_fk\", \"columns\": [\"favorite_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"favorites\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_complain_comment_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"complain_comment_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_complain_comment_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_complain_comment_links_inv_fk\", \"columns\": [\"complain_comment_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_complain_comment_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_complain_comment_links_inv_fk\", \"columns\": [\"complain_comment_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"complain_comments\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"addresses_users_permissions_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"address_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"addresses_users_permissions_user_links_fk\", \"columns\": [\"address_id\"]}, {\"name\": \"addresses_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"]}], \"foreignKeys\": [{\"name\": \"addresses_users_permissions_user_links_fk\", \"columns\": [\"address_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"addresses\", \"referencedColumns\": [\"id\"]}, {\"name\": \"addresses_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"areas_city_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"area_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"city_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"areas_city_links_fk\", \"columns\": [\"area_id\"]}, {\"name\": \"areas_city_links_inv_fk\", \"columns\": [\"city_id\"]}], \"foreignKeys\": [{\"name\": \"areas_city_links_fk\", \"columns\": [\"area_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"areas\", \"referencedColumns\": [\"id\"]}, {\"name\": \"areas_city_links_inv_fk\", \"columns\": [\"city_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cities\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"areas_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"area_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"areas_user_links_fk\", \"columns\": [\"area_id\"]}, {\"name\": \"areas_user_links_inv_fk\", \"columns\": [\"user_id\"]}], \"foreignKeys\": [{\"name\": \"areas_user_links_fk\", \"columns\": [\"area_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"areas\", \"referencedColumns\": [\"id\"]}, {\"name\": \"areas_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"areas_charge_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"area_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"charge_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"areas_charge_links_fk\", \"columns\": [\"area_id\"]}, {\"name\": \"areas_charge_links_inv_fk\", \"columns\": [\"charge_id\"]}], \"foreignKeys\": [{\"name\": \"areas_charge_links_fk\", \"columns\": [\"area_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"areas\", \"referencedColumns\": [\"id\"]}, {\"name\": \"areas_charge_links_inv_fk\", \"columns\": [\"charge_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"charges\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"areas_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"area_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_area_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"areas_localizations_links_fk\", \"columns\": [\"area_id\"]}, {\"name\": \"areas_localizations_links_inv_fk\", \"columns\": [\"inv_area_id\"]}], \"foreignKeys\": [{\"name\": \"areas_localizations_links_fk\", \"columns\": [\"area_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"areas\", \"referencedColumns\": [\"id\"]}, {\"name\": \"areas_localizations_links_inv_fk\", \"columns\": [\"inv_area_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"areas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"attributes_product_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"attribute_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"attributes_product_links_fk\", \"columns\": [\"attribute_id\"]}, {\"name\": \"attributes_product_links_inv_fk\", \"columns\": [\"product_id\"]}], \"foreignKeys\": [{\"name\": \"attributes_product_links_fk\", \"columns\": [\"attribute_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"attributes\", \"referencedColumns\": [\"id\"]}, {\"name\": \"attributes_product_links_inv_fk\", \"columns\": [\"product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"products\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"attributes_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"attribute_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_attribute_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"attributes_localizations_links_fk\", \"columns\": [\"attribute_id\"]}, {\"name\": \"attributes_localizations_links_inv_fk\", \"columns\": [\"inv_attribute_id\"]}], \"foreignKeys\": [{\"name\": \"attributes_localizations_links_fk\", \"columns\": [\"attribute_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"attributes\", \"referencedColumns\": [\"id\"]}, {\"name\": \"attributes_localizations_links_inv_fk\", \"columns\": [\"inv_attribute_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"attributes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"boys_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"boys_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"boys_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"boys_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"boys_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"boys\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories_super_category_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"super_category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_super_category_links_fk\", \"columns\": [\"category_id\"]}, {\"name\": \"categories_super_category_links_inv_fk\", \"columns\": [\"super_category_id\"]}], \"foreignKeys\": [{\"name\": \"categories_super_category_links_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_super_category_links_inv_fk\", \"columns\": [\"super_category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"super_categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_localizations_links_fk\", \"columns\": [\"category_id\"]}, {\"name\": \"categories_localizations_links_inv_fk\", \"columns\": [\"inv_category_id\"]}], \"foreignKeys\": [{\"name\": \"categories_localizations_links_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_localizations_links_inv_fk\", \"columns\": [\"inv_category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cities_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"city_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_city_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cities_localizations_links_fk\", \"columns\": [\"city_id\"]}, {\"name\": \"cities_localizations_links_inv_fk\", \"columns\": [\"inv_city_id\"]}], \"foreignKeys\": [{\"name\": \"cities_localizations_links_fk\", \"columns\": [\"city_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cities\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cities_localizations_links_inv_fk\", \"columns\": [\"inv_city_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cities\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"complain_comments_order_complain_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"complain_comment_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order_complain_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"complain_comments_order_complain_links_fk\", \"columns\": [\"complain_comment_id\"]}, {\"name\": \"complain_comments_order_complain_links_inv_fk\", \"columns\": [\"order_complain_id\"]}], \"foreignKeys\": [{\"name\": \"complain_comments_order_complain_links_fk\", \"columns\": [\"complain_comment_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"complain_comments\", \"referencedColumns\": [\"id\"]}, {\"name\": \"complain_comments_order_complain_links_inv_fk\", \"columns\": [\"order_complain_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"order_complains\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"complain_comments_users_permissions_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"complain_comment_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"complain_comments_users_permissions_user_links_fk\", \"columns\": [\"complain_comment_id\"]}, {\"name\": \"complain_comments_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"]}], \"foreignKeys\": [{\"name\": \"complain_comments_users_permissions_user_links_fk\", \"columns\": [\"complain_comment_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"complain_comments\", \"referencedColumns\": [\"id\"]}, {\"name\": \"complain_comments_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"coupons_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"coupons_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"coupons_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"coupons_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"coupons_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"coupons\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"jobs_boy_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"job_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"boy_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"jobs_boy_links_fk\", \"columns\": [\"job_id\"]}, {\"name\": \"jobs_boy_links_inv_fk\", \"columns\": [\"boy_id\"]}], \"foreignKeys\": [{\"name\": \"jobs_boy_links_fk\", \"columns\": [\"job_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"jobs\", \"referencedColumns\": [\"id\"]}, {\"name\": \"jobs_boy_links_inv_fk\", \"columns\": [\"boy_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"boys\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"job_updates_job_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"job_update_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"job_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"job_updates_job_links_fk\", \"columns\": [\"job_update_id\"]}, {\"name\": \"job_updates_job_links_inv_fk\", \"columns\": [\"job_id\"]}], \"foreignKeys\": [{\"name\": \"job_updates_job_links_fk\", \"columns\": [\"job_update_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"job_updates\", \"referencedColumns\": [\"id\"]}, {\"name\": \"job_updates_job_links_inv_fk\", \"columns\": [\"job_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"jobs\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"orders_users_permissions_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"order_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"orders_users_permissions_user_links_fk\", \"columns\": [\"order_id\"]}, {\"name\": \"orders_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"]}], \"foreignKeys\": [{\"name\": \"orders_users_permissions_user_links_fk\", \"columns\": [\"order_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"orders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"orders_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"orders_address_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"order_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"address_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"orders_address_links_fk\", \"columns\": [\"order_id\"]}, {\"name\": \"orders_address_links_inv_fk\", \"columns\": [\"address_id\"]}], \"foreignKeys\": [{\"name\": \"orders_address_links_fk\", \"columns\": [\"order_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"orders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"orders_address_links_inv_fk\", \"columns\": [\"address_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"addresses\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"orders_job_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"order_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"job_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"orders_job_links_fk\", \"columns\": [\"order_id\"]}, {\"name\": \"orders_job_links_inv_fk\", \"columns\": [\"job_id\"]}], \"foreignKeys\": [{\"name\": \"orders_job_links_fk\", \"columns\": [\"order_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"orders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"orders_job_links_inv_fk\", \"columns\": [\"job_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"jobs\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"orders_area_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"order_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"area_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"orders_area_links_fk\", \"columns\": [\"order_id\"]}, {\"name\": \"orders_area_links_inv_fk\", \"columns\": [\"area_id\"]}], \"foreignKeys\": [{\"name\": \"orders_area_links_fk\", \"columns\": [\"order_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"orders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"orders_area_links_inv_fk\", \"columns\": [\"area_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"areas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"orders_order_complain_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"order_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order_complain_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"orders_order_complain_links_fk\", \"columns\": [\"order_id\"]}, {\"name\": \"orders_order_complain_links_inv_fk\", \"columns\": [\"order_complain_id\"]}], \"foreignKeys\": [{\"name\": \"orders_order_complain_links_fk\", \"columns\": [\"order_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"orders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"orders_order_complain_links_inv_fk\", \"columns\": [\"order_complain_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"order_complains\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"order_complains_order_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"order_complain_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"order_complains_order_links_fk\", \"columns\": [\"order_complain_id\"]}, {\"name\": \"order_complains_order_links_inv_fk\", \"columns\": [\"order_id\"]}], \"foreignKeys\": [{\"name\": \"order_complains_order_links_fk\", \"columns\": [\"order_complain_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"order_complains\", \"referencedColumns\": [\"id\"]}, {\"name\": \"order_complains_order_links_inv_fk\", \"columns\": [\"order_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"orders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"order_complains_order_product_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"order_complain_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order_product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"order_complains_order_product_links_fk\", \"columns\": [\"order_complain_id\"]}, {\"name\": \"order_complains_order_product_links_inv_fk\", \"columns\": [\"order_product_id\"]}], \"foreignKeys\": [{\"name\": \"order_complains_order_product_links_fk\", \"columns\": [\"order_complain_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"order_complains\", \"referencedColumns\": [\"id\"]}, {\"name\": \"order_complains_order_product_links_inv_fk\", \"columns\": [\"order_product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"order_products\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"order_products_order_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"order_product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"order_products_order_links_fk\", \"columns\": [\"order_product_id\"]}, {\"name\": \"order_products_order_links_inv_fk\", \"columns\": [\"order_id\"]}], \"foreignKeys\": [{\"name\": \"order_products_order_links_fk\", \"columns\": [\"order_product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"order_products\", \"referencedColumns\": [\"id\"]}, {\"name\": \"order_products_order_links_inv_fk\", \"columns\": [\"order_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"orders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"order_products_order_complain_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"order_product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order_complain_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"order_products_order_complain_links_fk\", \"columns\": [\"order_product_id\"]}, {\"name\": \"order_products_order_complain_links_inv_fk\", \"columns\": [\"order_complain_id\"]}], \"foreignKeys\": [{\"name\": \"order_products_order_complain_links_fk\", \"columns\": [\"order_product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"order_products\", \"referencedColumns\": [\"id\"]}, {\"name\": \"order_products_order_complain_links_inv_fk\", \"columns\": [\"order_complain_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"order_complains\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products_unit_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"unit_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_unit_links_fk\", \"columns\": [\"product_id\"]}, {\"name\": \"products_unit_links_inv_fk\", \"columns\": [\"unit_id\"]}], \"foreignKeys\": [{\"name\": \"products_unit_links_fk\", \"columns\": [\"product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"products\", \"referencedColumns\": [\"id\"]}, {\"name\": \"products_unit_links_inv_fk\", \"columns\": [\"unit_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"units\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products_sub_category_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_sub_category_links_fk\", \"columns\": [\"product_id\"]}, {\"name\": \"products_sub_category_links_inv_fk\", \"columns\": [\"sub_category_id\"]}], \"foreignKeys\": [{\"name\": \"products_sub_category_links_fk\", \"columns\": [\"product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"products\", \"referencedColumns\": [\"id\"]}, {\"name\": \"products_sub_category_links_inv_fk\", \"columns\": [\"sub_category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sub_categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products_favorite_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"favorite_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_favorite_links_fk\", \"columns\": [\"product_id\"]}, {\"name\": \"products_favorite_links_inv_fk\", \"columns\": [\"favorite_id\"]}], \"foreignKeys\": [{\"name\": \"products_favorite_links_fk\", \"columns\": [\"product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"products\", \"referencedColumns\": [\"id\"]}, {\"name\": \"products_favorite_links_inv_fk\", \"columns\": [\"favorite_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"favorites\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products_order_product_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order_product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_order_product_links_fk\", \"columns\": [\"product_id\"]}, {\"name\": \"products_order_product_links_inv_fk\", \"columns\": [\"order_product_id\"]}], \"foreignKeys\": [{\"name\": \"products_order_product_links_fk\", \"columns\": [\"product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"products\", \"referencedColumns\": [\"id\"]}, {\"name\": \"products_order_product_links_inv_fk\", \"columns\": [\"order_product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"order_products\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_localizations_links_fk\", \"columns\": [\"product_id\"]}, {\"name\": \"products_localizations_links_inv_fk\", \"columns\": [\"inv_product_id\"]}], \"foreignKeys\": [{\"name\": \"products_localizations_links_fk\", \"columns\": [\"product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"products\", \"referencedColumns\": [\"id\"]}, {\"name\": \"products_localizations_links_inv_fk\", \"columns\": [\"inv_product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"products\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sliders_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"slider_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_slider_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sliders_localizations_links_fk\", \"columns\": [\"slider_id\"]}, {\"name\": \"sliders_localizations_links_inv_fk\", \"columns\": [\"inv_slider_id\"]}], \"foreignKeys\": [{\"name\": \"sliders_localizations_links_fk\", \"columns\": [\"slider_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sliders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"sliders_localizations_links_inv_fk\", \"columns\": [\"inv_slider_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sliders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sub_categories_category_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"sub_category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sub_categories_category_links_fk\", \"columns\": [\"sub_category_id\"]}, {\"name\": \"sub_categories_category_links_inv_fk\", \"columns\": [\"category_id\"]}], \"foreignKeys\": [{\"name\": \"sub_categories_category_links_fk\", \"columns\": [\"sub_category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sub_categories\", \"referencedColumns\": [\"id\"]}, {\"name\": \"sub_categories_category_links_inv_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sub_categories_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"sub_category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_sub_category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sub_categories_localizations_links_fk\", \"columns\": [\"sub_category_id\"]}, {\"name\": \"sub_categories_localizations_links_inv_fk\", \"columns\": [\"inv_sub_category_id\"]}], \"foreignKeys\": [{\"name\": \"sub_categories_localizations_links_fk\", \"columns\": [\"sub_category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sub_categories\", \"referencedColumns\": [\"id\"]}, {\"name\": \"sub_categories_localizations_links_inv_fk\", \"columns\": [\"inv_sub_category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sub_categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"super_categories_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"super_category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_super_category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"super_categories_localizations_links_fk\", \"columns\": [\"super_category_id\"]}, {\"name\": \"super_categories_localizations_links_inv_fk\", \"columns\": [\"inv_super_category_id\"]}], \"foreignKeys\": [{\"name\": \"super_categories_localizations_links_fk\", \"columns\": [\"super_category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"super_categories\", \"referencedColumns\": [\"id\"]}, {\"name\": \"super_categories_localizations_links_inv_fk\", \"columns\": [\"inv_super_category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"super_categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"units_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"unit_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_unit_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"units_localizations_links_fk\", \"columns\": [\"unit_id\"]}, {\"name\": \"units_localizations_links_inv_fk\", \"columns\": [\"inv_unit_id\"]}], \"foreignKeys\": [{\"name\": \"units_localizations_links_fk\", \"columns\": [\"unit_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"units\", \"referencedColumns\": [\"id\"]}, {\"name\": \"units_localizations_links_inv_fk\", \"columns\": [\"inv_unit_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"units\", \"referencedColumns\": [\"id\"]}]}]}', '2022-10-18 23:08:05', 'ca3fe87e22d6c088dab7cfe4b7cd574f');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` longtext COLLATE utf8mb4_general_ci,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `title`, `subtitle`, `uid`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'Fruits', 'Food, Drink, Enjoy', NULL, '2022-09-18 10:13:21.225000', '2022-10-13 14:07:14.111000', '2022-09-18 10:13:40.867000', 1, 1, 'en'),
(2, 'پھل', 'Food, Drink, Enjoy', NULL, '2022-09-18 10:13:38.199000', '2022-10-13 14:07:19.357000', '2022-09-18 10:13:38.913000', 1, 1, 'ur-PK'),
(3, 'Vegetables', 'Food, Drink, Enjoy', NULL, '2022-09-18 10:14:28.039000', '2022-10-13 14:07:40.949000', '2022-09-18 10:14:29.913000', 1, 1, 'en'),
(4, 'سبزیاں', 'Food, Drink, Enjoy', NULL, '2022-09-18 10:14:48.274000', '2022-10-13 14:07:45.747000', '2022-09-18 10:14:48.788000', 1, 1, 'ur-PK');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories_category_links`
--

CREATE TABLE `sub_categories_category_links` (
  `id` int UNSIGNED NOT NULL,
  `sub_category_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories_category_links`
--

INSERT INTO `sub_categories_category_links` (`id`, `sub_category_id`, `category_id`) VALUES
(5, 1, 3),
(6, 2, 4),
(7, 3, 3),
(8, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories_localizations_links`
--

CREATE TABLE `sub_categories_localizations_links` (
  `id` int UNSIGNED NOT NULL,
  `sub_category_id` int UNSIGNED DEFAULT NULL,
  `inv_sub_category_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories_localizations_links`
--

INSERT INTO `sub_categories_localizations_links` (`id`, `sub_category_id`, `inv_sub_category_id`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 4, 3),
(4, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `super_categories`
--

CREATE TABLE `super_categories` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL,
  `not_available_reason` longtext COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icon` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `super_categories`
--

INSERT INTO `super_categories` (`id`, `title`, `uid`, `available`, `not_available_reason`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `subtitle`, `icon`) VALUES
(1, 'Grocery', 'gr-sup', 1, NULL, '2022-09-18 09:26:08.359000', '2022-10-03 11:52:36.875000', '2022-09-18 09:27:26.733000', 1, 1, 'en', 'Vegetables, Fruits, Meat, Mutton, Chicken', NULL),
(2, 'گروسری', 'gr-sup-ur', 1, NULL, '2022-09-18 09:27:15.886000', '2022-10-03 11:52:43.343000', '2022-09-18 09:27:19.143000', 1, 1, 'ur-PK', 'سبزیاں، پھل، گوشت، مٹن، چکن', NULL),
(3, 'Pharma', 'pharma', 0, 'Pharmacy is a field where we need some intelligent minds working together, we are working very hard to achieve this goal ASAP.', '2022-09-18 09:30:51.266000', '2022-10-02 22:58:41.298000', '2022-09-18 09:31:50.782000', 1, 1, 'en', NULL, NULL),
(4, 'فارمیسی', 'pharma-ur', 0, 'فارمیسی ایک ایسا شعبہ ہے جہاں ہمیں کچھ ذہین ذہنوں کی ضرورت ہے جو مل کر کام کریں، ہم اس مقصد کو جلد از جلد حاصل کرنے کے لیے بہت محنت کر رہے ہیں۔', '2022-09-18 09:31:35.115000', '2022-10-02 22:58:50.838000', '2022-09-18 09:31:47.154000', 1, 1, 'ur-PK', NULL, NULL),
(5, 'Food', 'food', 0, 'Pharmacy is a field where we need some intelligent minds working together, we are working very hard to achieve this goal ASAP.', '2022-10-02 22:59:25.518000', '2022-10-02 23:00:52.197000', '2022-10-02 23:00:38.584000', 1, 1, 'en', NULL, NULL),
(6, 'کھانا', 'food-ur', 0, 'کھانا ایک ایسا شعبہ ہے جہاں ہمیں کچھ ذہین ذہنوں کی ضرورت ہے جو مل کر کام کریں، ہم اس مقصد کو جلد از جلد حاصل کرنے کے لیے بہت محنت کر رہے ہیں۔', '2022-10-02 23:00:36.111000', '2022-10-02 23:01:27.730000', '2022-10-02 23:00:36.678000', 1, 1, 'ur-PK', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `super_categories_localizations_links`
--

CREATE TABLE `super_categories_localizations_links` (
  `id` int UNSIGNED NOT NULL,
  `super_category_id` int UNSIGNED DEFAULT NULL,
  `inv_super_category_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `super_categories_localizations_links`
--

INSERT INTO `super_categories_localizations_links` (`id`, `super_category_id`, `inv_super_category_id`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 4, 3),
(4, 3, 4),
(5, 6, 5),
(6, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tempphones`
--

CREATE TABLE `tempphones` (
  `id` int UNSIGNED NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slip` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `timestamp` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `sid` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tempphones`
--

INSERT INTO `tempphones` (`id`, `phone_number`, `slip`, `timestamp`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `sid`) VALUES
(1, '03009550284', 'fuck', NULL, '2022-09-18 12:51:15.355000', '2022-09-18 12:51:15.355000', NULL, NULL, NULL),
(2, '03009550284', 'fuck', NULL, '2022-09-18 13:57:14.530000', '2022-09-18 13:57:14.530000', NULL, NULL, NULL),
(3, '03009550284', 'VAbd90b977e8c620840a097773ffc4ced0', NULL, '2022-09-18 14:12:01.424000', '2022-09-18 14:12:01.424000', NULL, NULL, 'VAbd90b977e8c620840a097773ffc4ced0'),
(4, '03009550284', 'VAf9988e2891be37413ade8cdb1f659331', NULL, '2022-09-18 14:35:09.943000', '2022-09-18 14:35:09.943000', NULL, NULL, 'VAf9988e2891be37413ade8cdb1f659331'),
(5, '03009550284', 'VA7206d9a69dbaedad85282e11c66dcb46', NULL, '2022-09-18 14:36:21.438000', '2022-09-18 14:36:21.438000', NULL, NULL, 'VA7206d9a69dbaedad85282e11c66dcb46'),
(6, '03009550284', 'VA5de9d6ed8134e0ddf79ae204f34b9922', NULL, '2022-09-18 14:37:14.184000', '2022-09-18 14:37:14.184000', NULL, NULL, 'VA5de9d6ed8134e0ddf79ae204f34b9922'),
(7, '03009550284', 'VAea31c1ab9e104b7806db0c96421c7ff0', NULL, '2022-09-18 14:38:00.142000', '2022-09-18 14:38:00.142000', NULL, NULL, 'VAea31c1ab9e104b7806db0c96421c7ff0'),
(8, '03009550284', 'VA74fd7bf1f10f5190ef6c50c7c93d38e4', NULL, '2022-09-18 14:39:39.224000', '2022-09-18 14:39:39.224000', NULL, NULL, 'VA74fd7bf1f10f5190ef6c50c7c93d38e4'),
(9, '03009550284', 'VAe898b368f3c78621791bf5a1c73128e1', NULL, '2022-09-18 14:42:40.923000', '2022-09-18 14:42:40.923000', NULL, NULL, 'VAe898b368f3c78621791bf5a1c73128e1'),
(10, '03009550284', 'VA53eb7bc58ade74c360b4bc5edd6ccc17', NULL, '2022-09-18 14:43:45.500000', '2022-09-18 14:43:45.500000', NULL, NULL, 'VA53eb7bc58ade74c360b4bc5edd6ccc17'),
(11, '03009550284', 'VAc65f21e0b3164c20f2c8d3ef3e0f5d46', NULL, '2022-09-18 14:44:38.255000', '2022-09-18 14:44:38.255000', NULL, NULL, 'VAc65f21e0b3164c20f2c8d3ef3e0f5d46'),
(12, '03009550284', 'VA6b129271116cf0fd8276ab8e7d1798ae', NULL, '2022-09-18 20:14:41.295000', '2022-09-18 20:14:41.295000', NULL, NULL, 'VA6b129271116cf0fd8276ab8e7d1798ae'),
(13, '03009550284', 'VA3a3c4cd3a11a1e41c0a869be843ad161', NULL, '2022-09-18 20:32:28.217000', '2022-09-18 20:32:28.217000', NULL, NULL, 'VA3a3c4cd3a11a1e41c0a869be843ad161'),
(14, '03009550284', 'VAb15df6820dec6842b645f53725d32177', NULL, '2022-09-18 20:55:09.774000', '2022-09-18 20:55:09.774000', NULL, NULL, 'VAb15df6820dec6842b645f53725d32177'),
(15, '03009550284', 'VA59bd66c406c62849848bebc2a4af34b0', NULL, '2022-09-18 20:56:23.073000', '2022-09-18 20:56:23.073000', NULL, NULL, 'VA59bd66c406c62849848bebc2a4af34b0'),
(16, '03009550284', 'VAdde8cddfd5f97d230d75e117906c9aa8', NULL, '2022-09-18 21:03:41.881000', '2022-09-18 21:03:41.881000', NULL, NULL, 'VAdde8cddfd5f97d230d75e117906c9aa8'),
(17, '03009550284', 'VA61f24efe5f7aacb0e61ab6edf9a99984', NULL, '2022-09-18 21:07:57.082000', '2022-09-18 21:07:57.082000', NULL, NULL, 'VA61f24efe5f7aacb0e61ab6edf9a99984'),
(18, '03009550284', 'VA70187ed3b8f06ee52fda2137b2944a6c', NULL, '2022-09-18 21:23:06.840000', '2022-09-18 21:23:06.840000', NULL, NULL, 'VA70187ed3b8f06ee52fda2137b2944a6c'),
(19, '03009550284', 'VA5950c274b985a08ab22e599052db28b5', NULL, '2022-09-18 21:24:38.791000', '2022-09-18 21:24:38.791000', NULL, NULL, 'VA5950c274b985a08ab22e599052db28b5'),
(20, '03009550284', 'VAaa680436efa8d7cfbec51477014d6da1', NULL, '2022-09-18 21:25:17.137000', '2022-09-18 21:25:17.137000', NULL, NULL, 'VAaa680436efa8d7cfbec51477014d6da1'),
(21, '03009550284', 'VAb7f57322d358f49fb730dabf2b558f3c', NULL, '2022-09-18 21:32:34.383000', '2022-09-18 21:32:34.383000', NULL, NULL, 'VAb7f57322d358f49fb730dabf2b558f3c'),
(22, '03009550284', 'VA01ca8ff83997e2d4fb3a0aaa788835ee', NULL, '2022-09-18 21:43:28.584000', '2022-09-18 21:43:28.584000', NULL, NULL, 'VA01ca8ff83997e2d4fb3a0aaa788835ee'),
(23, '03009550284', 'VA3e00e07cf4a95c3f206159e66e36ae34', NULL, '2022-09-18 22:05:20.181000', '2022-09-18 22:05:20.181000', NULL, NULL, 'VA3e00e07cf4a95c3f206159e66e36ae34'),
(24, '03009550284', 'VAfd48b0cf7bffceca912d913dc98a2697', NULL, '2022-09-18 23:58:03.765000', '2022-09-18 23:58:03.765000', NULL, NULL, 'VAfd48b0cf7bffceca912d913dc98a2697'),
(25, '03009550284', 'VAe2048dd26d8e701dba7b93fd31d68784', NULL, '2022-09-19 11:22:15.150000', '2022-09-19 11:22:15.150000', NULL, NULL, 'VAe2048dd26d8e701dba7b93fd31d68784'),
(26, '03009550284', 'VAf7922438576521f077225d5536dcb324', NULL, '2022-09-19 11:52:23.457000', '2022-09-19 11:52:23.457000', NULL, NULL, 'VAf7922438576521f077225d5536dcb324'),
(27, '03009550284', 'VA7996b3b3b16927c3288c57f6234f555a', NULL, '2022-09-19 13:18:54.360000', '2022-09-19 13:18:54.360000', NULL, NULL, 'VA7996b3b3b16927c3288c57f6234f555a'),
(28, '03009550284', 'VAd7a1fac57d3db27a91789e70ecfe32f7', NULL, '2022-09-23 20:14:05.225000', '2022-09-23 20:14:05.225000', NULL, NULL, 'VAd7a1fac57d3db27a91789e70ecfe32f7'),
(29, '03009550284', 'VAa70742ceed783736aac4f88842df2447', NULL, '2022-09-23 20:16:26.553000', '2022-09-23 20:16:26.553000', NULL, NULL, 'VAa70742ceed783736aac4f88842df2447');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `title`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, '500 ML', '2022-09-18 10:32:14.090000', '2022-09-18 10:36:02.837000', '2022-09-18 10:36:00.256000', 1, 1, 'en'),
(2, '500 ML', '2022-09-18 10:36:02.830000', '2022-09-18 10:36:54.943000', '2022-09-18 10:36:54.940000', 1, 1, 'ur-PK');

-- --------------------------------------------------------

--
-- Table structure for table `units_localizations_links`
--

CREATE TABLE `units_localizations_links` (
  `id` int UNSIGNED NOT NULL,
  `unit_id` int UNSIGNED DEFAULT NULL,
  `inv_unit_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `units_localizations_links`
--

INSERT INTO `units_localizations_links` (`id`, `unit_id`, `inv_unit_id`) VALUES
(1, 2, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int UNSIGNED NOT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `inv_folder_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2022-09-18 02:33:27.092000', '2022-09-18 02:33:27.092000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2022-09-18 02:33:27.092000', '2022-09-18 02:33:27.092000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2022-09-18 02:33:27.097000', '2022-09-18 02:33:27.097000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2022-09-18 02:33:27.097000', '2022-09-18 02:33:27.097000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2022-09-18 02:33:27.097000', '2022-09-18 02:33:27.097000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2022-09-18 02:33:27.097000', '2022-09-18 02:33:27.097000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2022-09-18 02:33:27.097000', '2022-09-18 02:33:27.097000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2022-09-18 02:33:27.097000', '2022-09-18 02:33:27.097000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2022-09-18 02:33:27.097000', '2022-09-18 02:33:27.097000', NULL, NULL),
(10, 'plugin::users-permissions.auth.register', '2022-09-18 12:18:52.290000', '2022-09-18 12:18:52.290000', NULL, NULL),
(11, 'plugin::users-permissions.auth.twillio', '2022-09-18 21:21:34.567000', '2022-09-18 21:21:34.567000', NULL, NULL),
(12, 'api::area.area.find', '2022-09-18 21:45:58.818000', '2022-09-18 21:45:58.818000', NULL, NULL),
(13, 'api::area.area.findOne', '2022-09-18 21:45:58.818000', '2022-09-18 21:45:58.818000', NULL, NULL),
(14, 'api::attribute.attribute.find', '2022-09-18 21:45:58.818000', '2022-09-18 21:45:58.818000', NULL, NULL),
(15, 'api::attribute.attribute.findOne', '2022-09-18 21:45:58.818000', '2022-09-18 21:45:58.818000', NULL, NULL),
(16, 'api::category.category.findOne', '2022-09-18 21:45:58.818000', '2022-09-18 21:45:58.818000', NULL, NULL),
(17, 'api::sub-category.sub-category.find', '2022-09-18 21:45:58.819000', '2022-09-18 21:45:58.819000', NULL, NULL),
(18, 'api::category.category.find', '2022-09-18 21:45:58.818000', '2022-09-18 21:45:58.818000', NULL, NULL),
(19, 'api::city.city.find', '2022-09-18 21:45:58.818000', '2022-09-18 21:45:58.818000', NULL, NULL),
(20, 'api::product.product.find', '2022-09-18 21:45:58.818000', '2022-09-18 21:45:58.818000', NULL, NULL),
(21, 'api::city.city.findOne', '2022-09-18 21:45:58.818000', '2022-09-18 21:45:58.818000', NULL, NULL),
(22, 'api::product.product.findOne', '2022-09-18 21:45:58.819000', '2022-09-18 21:45:58.819000', NULL, NULL),
(23, 'api::sub-category.sub-category.findOne', '2022-09-18 21:45:58.819000', '2022-09-18 21:45:58.819000', NULL, NULL),
(24, 'api::super-category.super-category.find', '2022-09-18 21:45:58.819000', '2022-09-18 21:45:58.819000', NULL, NULL),
(25, 'api::super-category.super-category.findOne', '2022-09-18 21:45:58.819000', '2022-09-18 21:45:58.819000', NULL, NULL),
(26, 'api::unit.unit.find', '2022-09-18 21:45:58.819000', '2022-09-18 21:45:58.819000', NULL, NULL),
(27, 'plugin::i18n.locales.listLocales', '2022-09-18 21:45:58.819000', '2022-09-18 21:45:58.819000', NULL, NULL),
(28, 'api::unit.unit.findOne', '2022-09-18 21:45:58.819000', '2022-09-18 21:45:58.819000', NULL, NULL),
(32, 'plugin::users-permissions.user.updateme3', '2022-09-18 22:11:12.902000', '2022-09-18 22:11:12.902000', NULL, NULL),
(33, 'plugin::users-permissions.user.find', '2022-09-18 22:14:59.710000', '2022-09-18 22:14:59.710000', NULL, NULL),
(34, 'plugin::users-permissions.user.findOne', '2022-09-18 22:14:59.710000', '2022-09-18 22:14:59.710000', NULL, NULL),
(35, 'plugin::users-permissions.role.findOne', '2022-09-18 22:14:59.710000', '2022-09-18 22:14:59.710000', NULL, NULL),
(36, 'plugin::users-permissions.role.find', '2022-09-18 22:14:59.710000', '2022-09-18 22:14:59.710000', NULL, NULL),
(37, 'plugin::users-permissions.permissions.getPermissions', '2022-09-18 22:14:59.710000', '2022-09-18 22:14:59.710000', NULL, NULL),
(50, 'api::address.address.find', '2022-09-19 13:03:10.100000', '2022-09-19 13:03:10.100000', NULL, NULL),
(51, 'api::address.address.getmine', '2022-09-19 13:18:05.995000', '2022-09-19 13:18:05.995000', NULL, NULL),
(52, 'api::address.address.createme', '2022-09-19 13:29:27.794000', '2022-09-19 13:29:27.794000', NULL, NULL),
(53, 'api::address.address.putmine', '2022-09-19 13:55:31.803000', '2022-09-19 13:55:31.803000', NULL, NULL),
(54, 'api::address.address.deletemine', '2022-09-19 16:14:24.101000', '2022-09-19 16:14:24.101000', NULL, NULL),
(55, 'api::category.category.forcategory', '2022-09-19 21:23:49.253000', '2022-09-19 21:23:49.253000', NULL, NULL),
(56, 'api::area.area.find', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(57, 'api::area.area.findOne', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(58, 'api::city.city.find', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(59, 'api::category.category.find', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(60, 'api::category.category.findOne', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(61, 'api::attribute.attribute.findOne', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(62, 'api::sub-category.sub-category.find', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(63, 'api::product.product.find', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(64, 'api::product.product.findOne', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(65, 'api::city.city.findOne', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(66, 'api::category.category.forcategory', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(67, 'api::attribute.attribute.find', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(68, 'api::sub-category.sub-category.findOne', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(69, 'api::super-category.super-category.findOne', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(70, 'api::unit.unit.find', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(71, 'api::super-category.super-category.find', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(72, 'api::unit.unit.findOne', '2022-09-21 08:52:07.659000', '2022-09-21 08:52:07.659000', NULL, NULL),
(73, 'api::favorite.favorite.createme', '2022-09-22 16:07:14.370000', '2022-09-22 16:07:14.370000', NULL, NULL),
(74, 'api::favorite.favorite.deletemine', '2022-09-22 16:07:14.370000', '2022-09-22 16:07:14.370000', NULL, NULL),
(75, 'api::favorite.favorite.deletemineall', '2022-09-22 16:07:14.370000', '2022-09-22 16:07:14.370000', NULL, NULL),
(76, 'api::favorite.favorite.getmine', '2022-09-22 16:07:14.370000', '2022-09-22 16:07:14.370000', NULL, NULL),
(77, 'api::order.order.createme', '2022-09-22 23:40:31.132000', '2022-09-22 23:40:31.132000', NULL, NULL),
(79, 'api::order.order.mine', '2022-09-24 02:09:57.025000', '2022-09-24 02:09:57.025000', NULL, NULL),
(80, 'api::order.order.cancelorder', '2022-09-24 18:16:04.576000', '2022-09-24 18:16:04.576000', NULL, NULL),
(81, 'api::category.category.forcategory', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(82, 'api::category.category.find', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(83, 'api::category.category.findOne', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(84, 'api::category.category.create', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(85, 'api::category.category.update', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(86, 'api::category.category.delete', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(87, 'api::category.category.createLocalization', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(88, 'api::order.order.createme', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(89, 'api::order.order.mine', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(90, 'api::order.order.cancelorder', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(91, 'api::order.order.find', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(92, 'api::order.order.findOne', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(93, 'api::order.order.create', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(94, 'api::order.order.update', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(95, 'api::order-complain.order-complain.find', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(96, 'api::order-complain.order-complain.findOne', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(97, 'api::order-complain.order-complain.create', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(98, 'api::order-complain.order-complain.update', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(99, 'api::order-complain.order-complain.delete', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(100, 'api::product.product.find', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(101, 'api::product.product.findOne', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(102, 'api::product.product.create', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(103, 'api::product.product.update', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(104, 'api::product.product.delete', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(105, 'api::product.product.createLocalization', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(106, 'api::sub-category.sub-category.find', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(107, 'api::sub-category.sub-category.findOne', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(108, 'api::sub-category.sub-category.create', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(109, 'api::sub-category.sub-category.update', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(110, 'api::sub-category.sub-category.delete', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(111, 'api::sub-category.sub-category.createLocalization', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(112, 'api::super-category.super-category.find', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(113, 'api::super-category.super-category.findOne', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(114, 'api::super-category.super-category.create', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(115, 'api::super-category.super-category.update', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(116, 'api::super-category.super-category.delete', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(117, 'api::super-category.super-category.createLocalization', '2022-09-24 19:41:57.296000', '2022-09-24 19:41:57.296000', NULL, NULL),
(118, 'api::order-complain.order-complain.createme', '2022-09-24 20:09:06.360000', '2022-09-24 20:09:06.360000', NULL, NULL),
(119, 'api::order-complain.order-complain.mine', '2022-09-24 20:09:06.360000', '2022-09-24 20:09:06.360000', NULL, NULL),
(120, 'api::slider.slider.find', '2022-10-02 22:02:26.520000', '2022-10-02 22:02:26.520000', NULL, NULL),
(121, 'api::slider.slider.find', '2022-10-02 22:37:18.861000', '2022-10-02 22:37:18.861000', NULL, NULL),
(122, 'api::super-category.super-category.all', '2022-10-02 23:24:40.789000', '2022-10-02 23:24:40.789000', NULL, NULL),
(123, 'api::super-category.super-category.all', '2022-10-02 23:24:50.027000', '2022-10-02 23:24:50.027000', NULL, NULL),
(124, 'api::charge.charge.find', '2022-10-18 23:15:14.732000', '2022-10-18 23:15:14.732000', NULL, NULL),
(125, 'api::charge.charge.findOne', '2022-10-18 23:15:14.732000', '2022-10-18 23:15:14.732000', NULL, NULL),
(126, 'api::charge.charge.find', '2022-10-18 23:15:44.888000', '2022-10-18 23:15:44.888000', NULL, NULL),
(127, 'api::charge.charge.findOne', '2022-10-18 23:15:44.888000', '2022-10-18 23:15:44.888000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 6, 2),
(6, 7, 2),
(7, 5, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 1),
(11, 11, 2),
(12, 12, 1),
(13, 14, 1),
(14, 13, 1),
(15, 15, 1),
(16, 16, 1),
(17, 19, 1),
(18, 17, 1),
(19, 20, 1),
(20, 21, 1),
(21, 22, 1),
(22, 18, 1),
(23, 24, 1),
(24, 23, 1),
(25, 26, 1),
(26, 25, 1),
(27, 27, 1),
(28, 28, 1),
(32, 32, 1),
(33, 33, 1),
(34, 34, 1),
(35, 37, 1),
(36, 35, 1),
(37, 36, 1),
(50, 50, 1),
(51, 51, 1),
(52, 52, 1),
(53, 53, 1),
(54, 54, 1),
(55, 55, 1),
(56, 56, 2),
(57, 57, 2),
(58, 58, 2),
(59, 59, 2),
(60, 60, 2),
(61, 61, 2),
(62, 62, 2),
(63, 67, 2),
(64, 64, 2),
(65, 66, 2),
(66, 63, 2),
(67, 65, 2),
(68, 68, 2),
(69, 69, 2),
(70, 70, 2),
(71, 71, 2),
(72, 72, 2),
(73, 73, 1),
(74, 75, 1),
(75, 74, 1),
(76, 76, 1),
(77, 77, 1),
(79, 79, 1),
(80, 80, 1),
(81, 81, 3),
(82, 82, 3),
(83, 83, 3),
(84, 84, 3),
(85, 88, 3),
(86, 85, 3),
(87, 87, 3),
(88, 86, 3),
(89, 93, 3),
(90, 91, 3),
(91, 89, 3),
(92, 94, 3),
(93, 90, 3),
(94, 92, 3),
(95, 95, 3),
(96, 96, 3),
(97, 97, 3),
(98, 98, 3),
(99, 99, 3),
(100, 100, 3),
(101, 103, 3),
(102, 102, 3),
(103, 101, 3),
(104, 104, 3),
(105, 105, 3),
(106, 106, 3),
(107, 107, 3),
(108, 108, 3),
(109, 109, 3),
(110, 110, 3),
(111, 111, 3),
(112, 114, 3),
(113, 112, 3),
(114, 113, 3),
(115, 115, 3),
(116, 117, 3),
(117, 116, 3),
(118, 118, 1),
(119, 119, 1),
(120, 120, 2),
(121, 121, 1),
(122, 122, 2),
(123, 123, 1),
(124, 124, 2),
(125, 125, 2),
(126, 126, 1),
(127, 127, 1);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2022-09-18 02:33:27.083000', '2022-10-18 23:15:44.882000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2022-09-18 02:33:27.086000', '2022-10-18 23:15:14.726000', NULL, NULL),
(3, 'manager', 'store managers', 'manager', '2022-09-24 19:41:57.291000', '2022-09-24 19:41:57.291000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `complete` tinyint(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `phone_number`, `complete`, `name`) VALUES
(7, '03009550284', 'user.03009550284@fictiondevelopers.com', 'twillio', '$2a$10$Wj3pEXvVEcqtMpW5ys5cnOeF8Li6d.9Ptesqr0RZTsnBBR/cjxDwi', NULL, NULL, 1, 0, '2022-09-23 20:16:41.878000', '2022-09-23 20:18:07.470000', NULL, NULL, '03009550284', 1, 'ffff'),
(8, 'manager', 'manager@gmail.com', 'local', '$2a$10$NkmxTyB7s9lSSZwv7TZllehwR8hpqCfRifthJvJLBXqfv.Ufp.W9W', NULL, NULL, 1, 0, '2022-09-24 19:58:55.537000', '2022-09-24 19:58:55.537000', 1, 1, '0300955028-', 1, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `up_users_complain_comment_links`
--

CREATE TABLE `up_users_complain_comment_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `complain_comment_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_users_favorite_links`
--

CREATE TABLE `up_users_favorite_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `favorite_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`) VALUES
(11, 7, 1),
(12, 8, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_created_by_id_fk` (`created_by_id`),
  ADD KEY `addresses_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `addresses_users_permissions_user_links`
--
ALTER TABLE `addresses_users_permissions_user_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_users_permissions_user_links_fk` (`address_id`),
  ADD KEY `addresses_users_permissions_user_links_inv_fk` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_created_by_id_fk` (`created_by_id`),
  ADD KEY `areas_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `areas_charge_links`
--
ALTER TABLE `areas_charge_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_charge_links_fk` (`area_id`),
  ADD KEY `areas_charge_links_inv_fk` (`charge_id`);

--
-- Indexes for table `areas_city_links`
--
ALTER TABLE `areas_city_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_city_links_fk` (`area_id`),
  ADD KEY `areas_city_links_inv_fk` (`city_id`);

--
-- Indexes for table `areas_localizations_links`
--
ALTER TABLE `areas_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_localizations_links_fk` (`area_id`),
  ADD KEY `areas_localizations_links_inv_fk` (`inv_area_id`);

--
-- Indexes for table `areas_user_links`
--
ALTER TABLE `areas_user_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_user_links_fk` (`area_id`),
  ADD KEY `areas_user_links_inv_fk` (`user_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_created_by_id_fk` (`created_by_id`),
  ADD KEY `attributes_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `attributes_localizations_links`
--
ALTER TABLE `attributes_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_localizations_links_fk` (`attribute_id`),
  ADD KEY `attributes_localizations_links_inv_fk` (`inv_attribute_id`);

--
-- Indexes for table `attributes_product_links`
--
ALTER TABLE `attributes_product_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_product_links_fk` (`attribute_id`),
  ADD KEY `attributes_product_links_inv_fk` (`product_id`);

--
-- Indexes for table `boys`
--
ALTER TABLE `boys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `boys_boy_uid_unique` (`boy_uid`),
  ADD KEY `boys_created_by_id_fk` (`created_by_id`),
  ADD KEY `boys_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `boys_components`
--
ALTER TABLE `boys_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boys_field_index` (`field`),
  ADD KEY `boys_component_type_index` (`component_type`),
  ADD KEY `boys_entity_fk` (`entity_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `categories_localizations_links`
--
ALTER TABLE `categories_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_localizations_links_fk` (`category_id`),
  ADD KEY `categories_localizations_links_inv_fk` (`inv_category_id`);

--
-- Indexes for table `categories_super_category_links`
--
ALTER TABLE `categories_super_category_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_super_category_links_fk` (`category_id`),
  ADD KEY `categories_super_category_links_inv_fk` (`super_category_id`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charges_created_by_id_fk` (`created_by_id`),
  ADD KEY `charges_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_created_by_id_fk` (`created_by_id`),
  ADD KEY `cities_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `cities_localizations_links`
--
ALTER TABLE `cities_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_localizations_links_fk` (`city_id`),
  ADD KEY `cities_localizations_links_inv_fk` (`inv_city_id`);

--
-- Indexes for table `complain_comments`
--
ALTER TABLE `complain_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complain_comments_created_by_id_fk` (`created_by_id`),
  ADD KEY `complain_comments_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `complain_comments_order_complain_links`
--
ALTER TABLE `complain_comments_order_complain_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complain_comments_order_complain_links_fk` (`complain_comment_id`),
  ADD KEY `complain_comments_order_complain_links_inv_fk` (`order_complain_id`);

--
-- Indexes for table `complain_comments_users_permissions_user_links`
--
ALTER TABLE `complain_comments_users_permissions_user_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complain_comments_users_permissions_user_links_fk` (`complain_comment_id`),
  ADD KEY `complain_comments_users_permissions_user_links_inv_fk` (`user_id`);

--
-- Indexes for table `components_discount_discounts`
--
ALTER TABLE `components_discount_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_relative_relatives`
--
ALTER TABLE `components_relative_relatives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_created_by_id_fk` (`created_by_id`),
  ADD KEY `coupons_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `coupons_components`
--
ALTER TABLE `coupons_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_field_index` (`field`),
  ADD KEY `coupons_component_type_index` (`component_type`),
  ADD KEY `coupons_entity_fk` (`entity_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_created_by_id_fk` (`created_by_id`),
  ADD KEY `favorites_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_created_by_id_fk` (`created_by_id`),
  ADD KEY `jobs_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `jobs_boy_links`
--
ALTER TABLE `jobs_boy_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_boy_links_fk` (`job_id`),
  ADD KEY `jobs_boy_links_inv_fk` (`boy_id`);

--
-- Indexes for table `job_updates`
--
ALTER TABLE `job_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_updates_created_by_id_fk` (`created_by_id`),
  ADD KEY `job_updates_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `job_updates_job_links`
--
ALTER TABLE `job_updates_job_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_updates_job_links_fk` (`job_update_id`),
  ADD KEY `job_updates_job_links_inv_fk` (`job_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_created_by_id_fk` (`created_by_id`),
  ADD KEY `orders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `orders_address_links`
--
ALTER TABLE `orders_address_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_address_links_fk` (`order_id`),
  ADD KEY `orders_address_links_inv_fk` (`address_id`);

--
-- Indexes for table `orders_area_links`
--
ALTER TABLE `orders_area_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_area_links_fk` (`order_id`),
  ADD KEY `orders_area_links_inv_fk` (`area_id`);

--
-- Indexes for table `orders_job_links`
--
ALTER TABLE `orders_job_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_job_links_fk` (`order_id`),
  ADD KEY `orders_job_links_inv_fk` (`job_id`);

--
-- Indexes for table `orders_order_complain_links`
--
ALTER TABLE `orders_order_complain_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_complain_links_fk` (`order_id`),
  ADD KEY `orders_order_complain_links_inv_fk` (`order_complain_id`);

--
-- Indexes for table `orders_users_permissions_user_links`
--
ALTER TABLE `orders_users_permissions_user_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_users_permissions_user_links_fk` (`order_id`),
  ADD KEY `orders_users_permissions_user_links_inv_fk` (`user_id`);

--
-- Indexes for table `order_complains`
--
ALTER TABLE `order_complains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_complains_created_by_id_fk` (`created_by_id`),
  ADD KEY `order_complains_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `order_complains_order_links`
--
ALTER TABLE `order_complains_order_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_complains_order_links_fk` (`order_complain_id`),
  ADD KEY `order_complains_order_links_inv_fk` (`order_id`);

--
-- Indexes for table `order_complains_order_product_links`
--
ALTER TABLE `order_complains_order_product_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_complains_order_product_links_fk` (`order_complain_id`),
  ADD KEY `order_complains_order_product_links_inv_fk` (`order_product_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_created_by_id_fk` (`created_by_id`),
  ADD KEY `order_products_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `order_products_order_complain_links`
--
ALTER TABLE `order_products_order_complain_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_complain_links_fk` (`order_product_id`),
  ADD KEY `order_products_order_complain_links_inv_fk` (`order_complain_id`);

--
-- Indexes for table `order_products_order_links`
--
ALTER TABLE `order_products_order_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_links_fk` (`order_product_id`),
  ADD KEY `order_products_order_links_inv_fk` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_created_by_id_fk` (`created_by_id`),
  ADD KEY `products_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `products_favorite_links`
--
ALTER TABLE `products_favorite_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_favorite_links_fk` (`product_id`),
  ADD KEY `products_favorite_links_inv_fk` (`favorite_id`);

--
-- Indexes for table `products_localizations_links`
--
ALTER TABLE `products_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_localizations_links_fk` (`product_id`),
  ADD KEY `products_localizations_links_inv_fk` (`inv_product_id`);

--
-- Indexes for table `products_order_product_links`
--
ALTER TABLE `products_order_product_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_order_product_links_fk` (`product_id`),
  ADD KEY `products_order_product_links_inv_fk` (`order_product_id`);

--
-- Indexes for table `products_sub_category_links`
--
ALTER TABLE `products_sub_category_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_sub_category_links_fk` (`product_id`),
  ADD KEY `products_sub_category_links_inv_fk` (`sub_category_id`);

--
-- Indexes for table `products_unit_links`
--
ALTER TABLE `products_unit_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_unit_links_fk` (`product_id`),
  ADD KEY `products_unit_links_inv_fk` (`unit_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_created_by_id_fk` (`created_by_id`),
  ADD KEY `sliders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `sliders_localizations_links`
--
ALTER TABLE `sliders_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_localizations_links_fk` (`slider_id`),
  ADD KEY `sliders_localizations_links_inv_fk` (`inv_slider_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `sub_categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `sub_categories_category_links`
--
ALTER TABLE `sub_categories_category_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_links_fk` (`sub_category_id`),
  ADD KEY `sub_categories_category_links_inv_fk` (`category_id`);

--
-- Indexes for table `sub_categories_localizations_links`
--
ALTER TABLE `sub_categories_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_localizations_links_fk` (`sub_category_id`),
  ADD KEY `sub_categories_localizations_links_inv_fk` (`inv_sub_category_id`);

--
-- Indexes for table `super_categories`
--
ALTER TABLE `super_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `super_categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `super_categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `super_categories_localizations_links`
--
ALTER TABLE `super_categories_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `super_categories_localizations_links_fk` (`super_category_id`),
  ADD KEY `super_categories_localizations_links_inv_fk` (`inv_super_category_id`);

--
-- Indexes for table `tempphones`
--
ALTER TABLE `tempphones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tempphones_created_by_id_fk` (`created_by_id`),
  ADD KEY `tempphones_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_created_by_id_fk` (`created_by_id`),
  ADD KEY `units_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `units_localizations_links`
--
ALTER TABLE `units_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_localizations_links_fk` (`unit_id`),
  ADD KEY `units_localizations_links_inv_fk` (`inv_unit_id`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_complain_comment_links`
--
ALTER TABLE `up_users_complain_comment_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_complain_comment_links_fk` (`user_id`),
  ADD KEY `up_users_complain_comment_links_inv_fk` (`complain_comment_id`);

--
-- Indexes for table `up_users_favorite_links`
--
ALTER TABLE `up_users_favorite_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_favorite_links_fk` (`user_id`),
  ADD KEY `up_users_favorite_links_inv_fk` (`favorite_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `addresses_users_permissions_user_links`
--
ALTER TABLE `addresses_users_permissions_user_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `areas_charge_links`
--
ALTER TABLE `areas_charge_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `areas_city_links`
--
ALTER TABLE `areas_city_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `areas_localizations_links`
--
ALTER TABLE `areas_localizations_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `areas_user_links`
--
ALTER TABLE `areas_user_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attributes_localizations_links`
--
ALTER TABLE `attributes_localizations_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attributes_product_links`
--
ALTER TABLE `attributes_product_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `boys`
--
ALTER TABLE `boys`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `boys_components`
--
ALTER TABLE `boys_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categories_localizations_links`
--
ALTER TABLE `categories_localizations_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categories_super_category_links`
--
ALTER TABLE `categories_super_category_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities_localizations_links`
--
ALTER TABLE `cities_localizations_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complain_comments`
--
ALTER TABLE `complain_comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complain_comments_order_complain_links`
--
ALTER TABLE `complain_comments_order_complain_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complain_comments_users_permissions_user_links`
--
ALTER TABLE `complain_comments_users_permissions_user_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_discount_discounts`
--
ALTER TABLE `components_discount_discounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_relative_relatives`
--
ALTER TABLE `components_relative_relatives`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons_components`
--
ALTER TABLE `coupons_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs_boy_links`
--
ALTER TABLE `jobs_boy_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_updates`
--
ALTER TABLE `job_updates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_updates_job_links`
--
ALTER TABLE `job_updates_job_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders_address_links`
--
ALTER TABLE `orders_address_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders_area_links`
--
ALTER TABLE `orders_area_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders_job_links`
--
ALTER TABLE `orders_job_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders_order_complain_links`
--
ALTER TABLE `orders_order_complain_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_users_permissions_user_links`
--
ALTER TABLE `orders_users_permissions_user_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_complains`
--
ALTER TABLE `order_complains`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_complains_order_links`
--
ALTER TABLE `order_complains_order_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_complains_order_product_links`
--
ALTER TABLE `order_complains_order_product_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_products_order_complain_links`
--
ALTER TABLE `order_products_order_complain_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_products_order_links`
--
ALTER TABLE `order_products_order_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products_favorite_links`
--
ALTER TABLE `products_favorite_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products_localizations_links`
--
ALTER TABLE `products_localizations_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_order_product_links`
--
ALTER TABLE `products_order_product_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products_sub_category_links`
--
ALTER TABLE `products_sub_category_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products_unit_links`
--
ALTER TABLE `products_unit_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders_localizations_links`
--
ALTER TABLE `sliders_localizations_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories_category_links`
--
ALTER TABLE `sub_categories_category_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_categories_localizations_links`
--
ALTER TABLE `sub_categories_localizations_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `super_categories`
--
ALTER TABLE `super_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `super_categories_localizations_links`
--
ALTER TABLE `super_categories_localizations_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tempphones`
--
ALTER TABLE `tempphones`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units_localizations_links`
--
ALTER TABLE `units_localizations_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `up_users_complain_comment_links`
--
ALTER TABLE `up_users_complain_comment_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_users_favorite_links`
--
ALTER TABLE `up_users_favorite_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `addresses_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `addresses_users_permissions_user_links`
--
ALTER TABLE `addresses_users_permissions_user_links`
  ADD CONSTRAINT `addresses_users_permissions_user_links_fk` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `areas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `areas_charge_links`
--
ALTER TABLE `areas_charge_links`
  ADD CONSTRAINT `areas_charge_links_fk` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `areas_charge_links_inv_fk` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `areas_city_links`
--
ALTER TABLE `areas_city_links`
  ADD CONSTRAINT `areas_city_links_fk` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `areas_city_links_inv_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `areas_localizations_links`
--
ALTER TABLE `areas_localizations_links`
  ADD CONSTRAINT `areas_localizations_links_fk` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `areas_localizations_links_inv_fk` FOREIGN KEY (`inv_area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `areas_user_links`
--
ALTER TABLE `areas_user_links`
  ADD CONSTRAINT `areas_user_links_fk` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `areas_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `attributes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `attributes_localizations_links`
--
ALTER TABLE `attributes_localizations_links`
  ADD CONSTRAINT `attributes_localizations_links_fk` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attributes_localizations_links_inv_fk` FOREIGN KEY (`inv_attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributes_product_links`
--
ALTER TABLE `attributes_product_links`
  ADD CONSTRAINT `attributes_product_links_fk` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attributes_product_links_inv_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `boys`
--
ALTER TABLE `boys`
  ADD CONSTRAINT `boys_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `boys_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `boys_components`
--
ALTER TABLE `boys_components`
  ADD CONSTRAINT `boys_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `boys` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categories_localizations_links`
--
ALTER TABLE `categories_localizations_links`
  ADD CONSTRAINT `categories_localizations_links_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_localizations_links_inv_fk` FOREIGN KEY (`inv_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories_super_category_links`
--
ALTER TABLE `categories_super_category_links`
  ADD CONSTRAINT `categories_super_category_links_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_super_category_links_inv_fk` FOREIGN KEY (`super_category_id`) REFERENCES `super_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `charges`
--
ALTER TABLE `charges`
  ADD CONSTRAINT `charges_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `charges_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cities_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cities_localizations_links`
--
ALTER TABLE `cities_localizations_links`
  ADD CONSTRAINT `cities_localizations_links_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cities_localizations_links_inv_fk` FOREIGN KEY (`inv_city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complain_comments`
--
ALTER TABLE `complain_comments`
  ADD CONSTRAINT `complain_comments_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `complain_comments_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `complain_comments_order_complain_links`
--
ALTER TABLE `complain_comments_order_complain_links`
  ADD CONSTRAINT `complain_comments_order_complain_links_fk` FOREIGN KEY (`complain_comment_id`) REFERENCES `complain_comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complain_comments_order_complain_links_inv_fk` FOREIGN KEY (`order_complain_id`) REFERENCES `order_complains` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complain_comments_users_permissions_user_links`
--
ALTER TABLE `complain_comments_users_permissions_user_links`
  ADD CONSTRAINT `complain_comments_users_permissions_user_links_fk` FOREIGN KEY (`complain_comment_id`) REFERENCES `complain_comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complain_comments_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `coupons_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `coupons_components`
--
ALTER TABLE `coupons_components`
  ADD CONSTRAINT `coupons_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `favorites_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `jobs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `jobs_boy_links`
--
ALTER TABLE `jobs_boy_links`
  ADD CONSTRAINT `jobs_boy_links_fk` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_boy_links_inv_fk` FOREIGN KEY (`boy_id`) REFERENCES `boys` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_updates`
--
ALTER TABLE `job_updates`
  ADD CONSTRAINT `job_updates_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `job_updates_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `job_updates_job_links`
--
ALTER TABLE `job_updates_job_links`
  ADD CONSTRAINT `job_updates_job_links_fk` FOREIGN KEY (`job_update_id`) REFERENCES `job_updates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_updates_job_links_inv_fk` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders_address_links`
--
ALTER TABLE `orders_address_links`
  ADD CONSTRAINT `orders_address_links_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_address_links_inv_fk` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders_area_links`
--
ALTER TABLE `orders_area_links`
  ADD CONSTRAINT `orders_area_links_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_area_links_inv_fk` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders_job_links`
--
ALTER TABLE `orders_job_links`
  ADD CONSTRAINT `orders_job_links_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_job_links_inv_fk` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders_order_complain_links`
--
ALTER TABLE `orders_order_complain_links`
  ADD CONSTRAINT `orders_order_complain_links_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_order_complain_links_inv_fk` FOREIGN KEY (`order_complain_id`) REFERENCES `order_complains` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders_users_permissions_user_links`
--
ALTER TABLE `orders_users_permissions_user_links`
  ADD CONSTRAINT `orders_users_permissions_user_links_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_complains`
--
ALTER TABLE `order_complains`
  ADD CONSTRAINT `order_complains_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_complains_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_complains_order_links`
--
ALTER TABLE `order_complains_order_links`
  ADD CONSTRAINT `order_complains_order_links_fk` FOREIGN KEY (`order_complain_id`) REFERENCES `order_complains` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_complains_order_links_inv_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_complains_order_product_links`
--
ALTER TABLE `order_complains_order_product_links`
  ADD CONSTRAINT `order_complains_order_product_links_fk` FOREIGN KEY (`order_complain_id`) REFERENCES `order_complains` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_complains_order_product_links_inv_fk` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_products_order_complain_links`
--
ALTER TABLE `order_products_order_complain_links`
  ADD CONSTRAINT `order_products_order_complain_links_fk` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_order_complain_links_inv_fk` FOREIGN KEY (`order_complain_id`) REFERENCES `order_complains` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products_order_links`
--
ALTER TABLE `order_products_order_links`
  ADD CONSTRAINT `order_products_order_links_fk` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_order_links_inv_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products_favorite_links`
--
ALTER TABLE `products_favorite_links`
  ADD CONSTRAINT `products_favorite_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_favorite_links_inv_fk` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_localizations_links`
--
ALTER TABLE `products_localizations_links`
  ADD CONSTRAINT `products_localizations_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_localizations_links_inv_fk` FOREIGN KEY (`inv_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_order_product_links`
--
ALTER TABLE `products_order_product_links`
  ADD CONSTRAINT `products_order_product_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_order_product_links_inv_fk` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_sub_category_links`
--
ALTER TABLE `products_sub_category_links`
  ADD CONSTRAINT `products_sub_category_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_links_inv_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_unit_links`
--
ALTER TABLE `products_unit_links`
  ADD CONSTRAINT `products_unit_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_unit_links_inv_fk` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sliders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sliders_localizations_links`
--
ALTER TABLE `sliders_localizations_links`
  ADD CONSTRAINT `sliders_localizations_links_fk` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sliders_localizations_links_inv_fk` FOREIGN KEY (`inv_slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sub_categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sub_categories_category_links`
--
ALTER TABLE `sub_categories_category_links`
  ADD CONSTRAINT `sub_categories_category_links_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_categories_category_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories_localizations_links`
--
ALTER TABLE `sub_categories_localizations_links`
  ADD CONSTRAINT `sub_categories_localizations_links_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_categories_localizations_links_inv_fk` FOREIGN KEY (`inv_sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `super_categories`
--
ALTER TABLE `super_categories`
  ADD CONSTRAINT `super_categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `super_categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `super_categories_localizations_links`
--
ALTER TABLE `super_categories_localizations_links`
  ADD CONSTRAINT `super_categories_localizations_links_fk` FOREIGN KEY (`super_category_id`) REFERENCES `super_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `super_categories_localizations_links_inv_fk` FOREIGN KEY (`inv_super_category_id`) REFERENCES `super_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tempphones`
--
ALTER TABLE `tempphones`
  ADD CONSTRAINT `tempphones_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tempphones_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `units_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `units_localizations_links`
--
ALTER TABLE `units_localizations_links`
  ADD CONSTRAINT `units_localizations_links_fk` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `units_localizations_links_inv_fk` FOREIGN KEY (`inv_unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_complain_comment_links`
--
ALTER TABLE `up_users_complain_comment_links`
  ADD CONSTRAINT `up_users_complain_comment_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_complain_comment_links_inv_fk` FOREIGN KEY (`complain_comment_id`) REFERENCES `complain_comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_users_favorite_links`
--
ALTER TABLE `up_users_favorite_links`
  ADD CONSTRAINT `up_users_favorite_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_favorite_links_inv_fk` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
