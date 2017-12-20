-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 20, 2017 at 12:06 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shops`
--
CREATE DATABASE IF NOT EXISTS `shops` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shops`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1513725950, 1513725950),
('/admin/*', 2, NULL, NULL, NULL, 1513725922, 1513725922),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/default/*', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/default/index', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/menu/*', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/menu/create', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/menu/index', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/menu/update', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/menu/view', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/permission/*', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/permission/create', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/permission/index', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/permission/update', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/permission/view', 2, NULL, NULL, NULL, 1513725920, 1513725920),
('/admin/role/*', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/role/assign', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/role/create', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/role/delete', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/role/index', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/role/remove', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/role/update', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/role/view', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/route/*', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/route/assign', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/route/create', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/route/index', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/route/remove', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/rule/*', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/rule/create', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/rule/index', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/rule/update', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/rule/view', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/user/*', 2, NULL, NULL, NULL, 1513725922, 1513725922),
('/admin/user/activate', 2, NULL, NULL, NULL, 1513725922, 1513725922),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1513725922, 1513725922),
('/admin/user/delete', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/user/index', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/user/login', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/admin/user/logout', 2, NULL, NULL, NULL, 1513725922, 1513725922),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1513725922, 1513725922),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1513725922, 1513725922),
('/admin/user/signup', 2, NULL, NULL, NULL, 1513725922, 1513725922),
('/admin/user/view', 2, NULL, NULL, NULL, 1513725921, 1513725921),
('/gii/*', 2, NULL, NULL, NULL, 1513725950, 1513725950),
('/shop/*', 2, NULL, NULL, NULL, 1513725950, 1513725950),
('/shop/create', 2, NULL, NULL, NULL, 1513725950, 1513725950),
('/shop/delete', 2, NULL, NULL, NULL, 1513725950, 1513725950),
('/shop/index', 2, NULL, NULL, NULL, 1513725950, 1513725950),
('/shop/update', 2, NULL, NULL, NULL, 1513725950, 1513725950),
('/shop/view', 2, NULL, NULL, NULL, 1513725950, 1513725950),
('/site/*', 2, NULL, NULL, NULL, 1513725950, 1513725950),
('/site/error', 2, NULL, NULL, NULL, 1513725950, 1513725950),
('/site/index', 2, NULL, NULL, NULL, 1513725950, 1513725950),
('/site/login', 2, NULL, NULL, NULL, 1513725950, 1513725950),
('/site/logout', 2, NULL, NULL, NULL, 1513725950, 1513725950),
('/user/*', 2, NULL, NULL, NULL, 1513725895, 1513725895),
('/user/create', 2, NULL, NULL, NULL, 1513725895, 1513725895),
('/user/delete', 2, NULL, NULL, NULL, 1513725895, 1513725895),
('/user/index', 2, NULL, NULL, NULL, 1513725895, 1513725895),
('/user/update', 2, NULL, NULL, NULL, 1513725895, 1513725895),
('/user/view', 2, NULL, NULL, NULL, 1513725895, 1513725895),
('Admin', 1, 'Administrator', NULL, NULL, 1513725805, 1513726061),
('Customer', 1, 'Customer', NULL, NULL, 1513725841, 1513726381);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Admin', '/shop/*'),
('Admin', '/shop/create'),
('Admin', '/shop/delete'),
('Admin', '/shop/index'),
('Admin', '/shop/update'),
('Admin', '/shop/view'),
('Admin', '/site/*'),
('Customer', '/site/*'),
('Admin', '/site/error'),
('Customer', '/site/error'),
('Admin', '/site/index'),
('Customer', '/site/index'),
('Admin', '/site/login'),
('Customer', '/site/login'),
('Admin', '/site/logout'),
('Customer', '/site/logout'),
('Admin', '/user/*'),
('Admin', '/user/create'),
('Admin', '/user/delete'),
('Admin', '/user/index'),
('Admin', '/user/update'),
('Admin', '/user/view');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

DROP TABLE IF EXISTS `like`;
CREATE TABLE IF NOT EXISTS `like` (
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`user_id`,`shop_id`),
  KEY `user_id` (`user_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1513440535),
('m130524_201442_init', 1513440734),
('m140602_111327_create_menu_table', 1513722494),
('m160312_050000_create_user', 1513722494);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
CREATE TABLE IF NOT EXISTS `shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_oid` varchar(100) NOT NULL,
  `shop_picture` varchar(250) NOT NULL,
  `shop_name` varchar(100) NOT NULL,
  `shop_email` varchar(100) NOT NULL,
  `shop_city` varchar(50) NOT NULL,
  `shop_location_type` varchar(100) NOT NULL,
  `shop_location_coordinates` varchar(100) NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_oid`, `shop_picture`, `shop_name`, `shop_email`, `shop_city`, `shop_location_type`, `shop_location_coordinates`) VALUES
(1, '5a0c6711fb3aac66aafe26c4', 'http://placehold.it/150x150', 'Gushkool', 'leilaware@gushkool.com', 'Rabat', 'Point', '-6.81134,33.95564'),
(2, '5a0c6711fb3aac66aafe26c5', 'http://placehold.it/150x150', 'Datagene', 'leilaware@datagene.com', 'Rabat', 'Point', '-6.83746,33.91183'),
(3, '5a0c6711fb3aac66aafe26c6', 'http://placehold.it/150x150', 'Silodyne', 'leilaware@silodyne.com', 'Rabat', 'Point', '-6.75175,33.96853'),
(4, '5a0c6711fb3aac66aafe26c7', 'http://placehold.it/150x150', 'Canopoly', 'leilaware@canopoly.com', 'Rabat', 'Point', '-6.77404,33.80354'),
(5, '5a0c6711fb3aac66aafe26c8', 'http://placehold.it/150x150', 'Sonique', 'leilaware@sonique.com', 'Rabat', 'Point', '-6.74938,33.83436'),
(6, '5a0c6711fb3aac66aafe26c9', 'http://placehold.it/150x150', 'Quiltigen', 'leilaware@quiltigen.com', 'Rabat', 'Point', '-6.84286,33.96579'),
(7, '5a0c6711fb3aac66aafe26ca', 'http://placehold.it/150x150', 'Infotrips', 'leilaware@infotrips.com', 'Rabat', 'Point', '-6.80604,33.94889'),
(8, '5a0c6711fb3aac66aafe26cb', 'http://placehold.it/150x150', 'Biflex', 'leilaware@biflex.com', 'Rabat', 'Point', '-6.8123,33.86261'),
(9, '5a0c6711fb3aac66aafe26cc', 'http://placehold.it/150x150', 'Permadyne', 'leilaware@permadyne.com', 'Rabat', 'Point', '-6.75058,33.81395'),
(10, '5a0c6711fb3aac66aafe26cd', 'http://placehold.it/150x150', 'Bunga', 'leilaware@bunga.com', 'Rabat', 'Point', '-6.77428,33.94109'),
(11, '5a0c6711fb3aac66aafe26ce', 'http://placehold.it/150x150', 'Vendblend', 'leilaware@vendblend.com', 'Rabat', 'Point', '-6.78522,33.89471'),
(12, '5a0c6711fb3aac66aafe26cf', 'http://placehold.it/150x150', 'Strezzo', 'leilaware@strezzo.com', 'Rabat', 'Point', '-6.78271,33.8021'),
(13, '5a0c6711fb3aac66aafe26d0', 'http://placehold.it/150x150', 'Multiflex', 'leilaware@multiflex.com', 'Rabat', 'Point', '-6.84318,33.91423'),
(14, '5a0c6711fb3aac66aafe26d1', 'http://placehold.it/150x150', 'Amtas', 'leilaware@amtas.com', 'Rabat', 'Point', '-6.76681,33.92546'),
(15, '5a0c6711fb3aac66aafe26d2', 'http://placehold.it/150x150', 'Medmex', 'leilaware@medmex.com', 'Rabat', 'Point', '-6.75185,33.89586'),
(16, '5a0c6711fb3aac66aafe26d3', 'http://placehold.it/150x150', 'Limozen', 'leilaware@limozen.com', 'Rabat', 'Point', '-6.84619,33.94625'),
(17, '5a0c6711fb3aac66aafe26d4', 'http://placehold.it/150x150', 'Securia', 'leilaware@securia.com', 'Rabat', 'Point', '-6.82966,33.94125'),
(18, '5a0c6748fb3aac66aafe26d5', 'http://placehold.it/150x150', 'Enerforce', 'leilaware@enerforce.com', 'Rabat', 'Point', '-6.79465,33.97383'),
(19, '5a0c6748fb3aac66aafe26d6', 'http://placehold.it/150x150', 'Earwax', 'leilaware@earwax.com', 'Rabat', 'Point', '-6.81943,33.87998'),
(20, '5a0c6748fb3aac66aafe26d7', 'http://placehold.it/150x150', 'Cablam', 'leilaware@cablam.com', 'Rabat', 'Point', '-6.75778,33.97468'),
(21, '5a0c6748fb3aac66aafe26d8', 'http://placehold.it/150x150', 'Emoltra', 'leilaware@emoltra.com', 'Rabat', 'Point', '-6.78269,33.91448'),
(22, '5a0c6748fb3aac66aafe26d9', 'http://placehold.it/150x150', 'Tubalum', 'leilaware@tubalum.com', 'Rabat', 'Point', '-6.79337,33.80098'),
(23, '5a0c6748fb3aac66aafe26da', 'http://placehold.it/150x150', 'Toyletry', 'leilaware@toyletry.com', 'Rabat', 'Point', '-6.75454,33.82381'),
(24, '5a0c6748fb3aac66aafe26db', 'http://placehold.it/150x150', 'Comveyor', 'leilaware@comveyor.com', 'Rabat', 'Point', '-6.75603,33.85214'),
(25, '5a0c6748fb3aac66aafe26dc', 'http://placehold.it/150x150', 'Techmania', 'leilaware@techmania.com', 'Rabat', 'Point', '-6.80777,33.98156'),
(26, '5a0c6748fb3aac66aafe26dd', 'http://placehold.it/150x150', 'Peticular', 'leilaware@peticular.com', 'Rabat', 'Point', '-6.78231,33.83055'),
(27, '5a0c6748fb3aac66aafe26de', 'http://placehold.it/150x150', 'Teraprene', 'leilaware@teraprene.com', 'Rabat', 'Point', '-6.84167,33.81279'),
(28, '5a0c6755fb3aac66aafe26df', 'http://placehold.it/150x150', 'Quarex', 'leilaware@quarex.com', 'Rabat', 'Point', '-6.78929,33.82861'),
(29, '5a0c6755fb3aac66aafe26e0', 'http://placehold.it/150x150', 'Kiggle', 'leilaware@kiggle.com', 'Rabat', 'Point', '-6.8244,33.80087'),
(30, '5a0c6755fb3aac66aafe26e1', 'http://placehold.it/150x150', 'Amtap', 'leilaware@amtap.com', 'Rabat', 'Point', '-6.77772,33.94732'),
(31, '5a0c6755fb3aac66aafe26e2', 'http://placehold.it/150x150', 'Maxemia', 'leilaware@maxemia.com', 'Rabat', 'Point', '-6.79656,33.82961'),
(32, '5a0c6789fd3eb67969316ccc', 'http://placehold.it/150x150', 'Splinx', 'leilaware@splinx.com', 'Rabat', 'Point', '-6.76639,33.96536'),
(33, '5a0c6789fd3eb67969316ccd', 'http://placehold.it/150x150', 'Plexia', 'leilaware@plexia.com', 'Rabat', 'Point', '-6.77151,33.97996'),
(34, '5a0c6789fd3eb67969316cce', 'http://placehold.it/150x150', 'Zytrax', 'leilaware@zytrax.com', 'Rabat', 'Point', '-6.75629,33.81514'),
(35, '5a0c6789fd3eb67969316ccf', 'http://placehold.it/150x150', 'Nebulean', 'leilaware@nebulean.com', 'Rabat', 'Point', '-6.80549,33.84752'),
(36, '5a0c6789fd3eb67969316cd0', 'http://placehold.it/150x150', 'Chillium', 'leilaware@chillium.com', 'Rabat', 'Point', '-6.80111,33.83202'),
(37, '5a0c6789fd3eb67969316cd1', 'http://placehold.it/150x150', 'Bitendrex', 'leilaware@bitendrex.com', 'Rabat', 'Point', '-6.80479,33.83069'),
(38, '5a0c6789fd3eb67969316cd2', 'http://placehold.it/150x150', 'Assitia', 'leilaware@assitia.com', 'Rabat', 'Point', '-6.75229,33.94719'),
(39, '5a0c6789fd3eb67969316cd3', 'http://placehold.it/150x150', 'Apexia', 'leilaware@apexia.com', 'Rabat', 'Point', '-6.81765,33.91963'),
(40, '5a0c6789fd3eb67969316cd4', 'http://placehold.it/150x150', 'Hopeli', 'leilaware@hopeli.com', 'Rabat', 'Point', '-6.75449,33.85677'),
(41, '5a0c6789fd3eb67969316cd5', 'http://placehold.it/150x150', 'Tingles', 'leilaware@tingles.com', 'Rabat', 'Point', '-6.8379,33.93353'),
(42, '5a0c6789fd3eb67969316cd6', 'http://placehold.it/150x150', 'Frosnex', 'leilaware@frosnex.com', 'Rabat', 'Point', '-6.76316,33.86427'),
(43, '5a0c6789fd3eb67969316cd7', 'http://placehold.it/150x150', 'Polarax', 'leilaware@polarax.com', 'Rabat', 'Point', '-6.77299,33.95444'),
(44, '5a0c6789fd3eb67969316cd8', 'http://placehold.it/150x150', 'Cujo', 'leilaware@cujo.com', 'Rabat', 'Point', '-6.83668,33.90277'),
(45, '5a0c6789fd3eb67969316cd9', 'http://placehold.it/150x150', 'Homelux', 'leilaware@homelux.com', 'Rabat', 'Point', '-6.82306,33.90954'),
(46, '5a0c6789fd3eb67969316cda', 'http://placehold.it/150x150', 'Corecom', 'leilaware@corecom.com', 'Rabat', 'Point', '-6.80748,33.82309'),
(47, '5a0c6797fd3eb67969316cdb', 'http://placehold.it/150x150', 'Aquazure', 'leilaware@aquazure.com', 'Rabat', 'Point', '-6.82145,33.8112'),
(48, '5a0c6797fd3eb67969316cdc', 'http://placehold.it/150x150', 'Bovis', 'leilaware@bovis.com', 'Rabat', 'Point', '-6.84044,33.812'),
(49, '5a0c6797fd3eb67969316cdd', 'http://placehold.it/150x150', 'Nixelt', 'leilaware@nixelt.com', 'Rabat', 'Point', '-6.7784,33.80491'),
(50, '5a0c6797fd3eb67969316cde', 'http://placehold.it/150x150', 'Combot', 'leilaware@combot.com', 'Rabat', 'Point', '-6.78045,33.8831'),
(51, '5a0c6797fd3eb67969316cdf', 'http://placehold.it/150x150', 'Radiantix', 'leilaware@radiantix.com', 'Rabat', 'Point', '-6.75229,33.95034'),
(52, '5a0c6797fd3eb67969316ce0', 'http://placehold.it/150x150', 'Musaphics', 'leilaware@musaphics.com', 'Rabat', 'Point', '-6.76087,33.92329'),
(53, '5a0c6797fd3eb67969316ce1', 'http://placehold.it/150x150', 'Zentury', 'leilaware@zentury.com', 'Rabat', 'Point', '-6.75854,33.87839'),
(54, '5a0c6797fd3eb67969316ce2', 'http://placehold.it/150x150', 'Genmom', 'leilaware@genmom.com', 'Rabat', 'Point', '-6.79387,33.83957'),
(55, '5a0c6797fd3eb67969316ce3', 'http://placehold.it/150x150', 'Dymi', 'leilaware@dymi.com', 'Rabat', 'Point', '-6.84418,33.85318'),
(56, '5a0c6797fd3eb67969316ce4', 'http://placehold.it/150x150', 'Exoswitch', 'leilaware@exoswitch.com', 'Rabat', 'Point', '-6.74934,33.82365'),
(57, '5a0c6797fd3eb67969316ce5', 'http://placehold.it/150x150', 'Verbus', 'leilaware@verbus.com', 'Rabat', 'Point', '-6.83603,33.89594'),
(58, '5a0c6797fd3eb67969316ce6', 'http://placehold.it/150x150', 'Inquala', 'leilaware@inquala.com', 'Rabat', 'Point', '-6.8438,33.8434'),
(59, '5a0c6797fd3eb67969316ce7', 'http://placehold.it/150x150', 'Fangold', 'leilaware@fangold.com', 'Rabat', 'Point', '-6.83297,33.96749'),
(60, '5a0c6797fd3eb67969316ce8', 'http://placehold.it/150x150', 'Lotron', 'leilaware@lotron.com', 'Rabat', 'Point', '-6.81209,33.87673'),
(61, '5a0c67cafd3eb67969316ce9', 'http://placehold.it/150x150', 'Gronk', 'leilaware@gronk.com', 'Rabat', 'Point', '-6.83079,33.9722'),
(62, '5a0c67cafd3eb67969316cea', 'http://placehold.it/150x150', 'Snorus', 'leilaware@snorus.com', 'Rabat', 'Point', '-6.84665,33.8618'),
(63, '5a0c67cafd3eb67969316ceb', 'http://placehold.it/150x150', 'Musaphics', 'leilaware@musaphics.com', 'Rabat', 'Point', '-6.78246,33.91788'),
(64, '5a0c67cafd3eb67969316cec', 'http://placehold.it/150x150', 'Zolavo', 'leilaware@zolavo.com', 'Rabat', 'Point', '-6.8301,33.82438'),
(65, '5a0c67cafd3eb67969316ced', 'http://placehold.it/150x150', 'Orbean', 'leilaware@orbean.com', 'Rabat', 'Point', '-6.83871,33.80629'),
(66, '5a0c67cafd3eb67969316cee', 'http://placehold.it/150x150', 'Scentric', 'leilaware@scentric.com', 'Rabat', 'Point', '-6.83326,33.96551'),
(67, '5a0c67cafd3eb67969316cef', 'http://placehold.it/150x150', 'Zorromop', 'leilaware@zorromop.com', 'Rabat', 'Point', '-6.83456,33.93267'),
(68, '5a0c67cafd3eb67969316cf0', 'http://placehold.it/150x150', 'Empirica', 'leilaware@empirica.com', 'Rabat', 'Point', '-6.79357,33.9909'),
(69, '5a0c67cafd3eb67969316cf1', 'http://placehold.it/150x150', 'Terragen', 'leilaware@terragen.com', 'Rabat', 'Point', '-6.79704,33.81158'),
(70, '5a0c67cafd3eb67969316cf2', 'http://placehold.it/150x150', 'Zaggles', 'leilaware@zaggles.com', 'Rabat', 'Point', '-6.79283,33.80759'),
(71, '5a0c67cafd3eb67969316cf3', 'http://placehold.it/150x150', 'Furnafix', 'leilaware@furnafix.com', 'Rabat', 'Point', '-6.82956,33.91959'),
(72, '5a0c67cafd3eb67969316cf4', 'http://placehold.it/150x150', 'Quilch', 'leilaware@quilch.com', 'Rabat', 'Point', '-6.80042,33.87388'),
(73, '5a0c67cafd3eb67969316cf5', 'http://placehold.it/150x150', 'Zentime', 'leilaware@zentime.com', 'Rabat', 'Point', '-6.81954,33.8559'),
(74, '5a0c67cafd3eb67969316cf6', 'http://placehold.it/150x150', 'Irack', 'leilaware@irack.com', 'Rabat', 'Point', '-6.79309,33.98909'),
(75, '5a0c67e9fd3eb67969316cf7', 'http://placehold.it/150x150', 'Multron', 'leilaware@multron.com', 'Rabat', 'Point', '-6.80932,33.97945'),
(76, '5a0c67e9fd3eb67969316cf8', 'http://placehold.it/150x150', 'Soprano', 'leilaware@soprano.com', 'Rabat', 'Point', '-6.75435,33.83201'),
(77, '5a0c67e9fd3eb67969316cf9', 'http://placehold.it/150x150', 'Kneedles', 'leilaware@kneedles.com', 'Rabat', 'Point', '-6.78704,33.90884'),
(78, '5a0c67e9fd3eb67969316cfa', 'http://placehold.it/150x150', 'Inear', 'leilaware@inear.com', 'Rabat', 'Point', '-6.79758,33.81992'),
(79, '5a0c67e9fd3eb67969316cfb', 'http://placehold.it/150x150', 'Zenco', 'leilaware@zenco.com', 'Rabat', 'Point', '-6.82355,33.93512'),
(80, '5a0c67e9fd3eb67969316cfc', 'http://placehold.it/150x150', 'Extragene', 'leilaware@extragene.com', 'Rabat', 'Point', '-6.83153,33.8133'),
(81, '5a0c67e9fd3eb67969316cfd', 'http://placehold.it/150x150', 'Megall', 'leilaware@megall.com', 'Rabat', 'Point', '-6.83357,33.93788'),
(82, '5a0c67e9fd3eb67969316cfe', 'http://placehold.it/150x150', 'Klugger', 'leilaware@klugger.com', 'Rabat', 'Point', '-6.79661,33.90053'),
(83, '5a0c67e9fd3eb67969316cff', 'http://placehold.it/150x150', 'Zipak', 'leilaware@zipak.com', 'Rabat', 'Point', '-6.74736,33.81514'),
(84, '5a0c67e9fd3eb67969316d00', 'http://placehold.it/150x150', 'Quotezart', 'leilaware@quotezart.com', 'Rabat', 'Point', '-6.78849,33.99337'),
(85, '5a0c67e9fd3eb67969316d01', 'http://placehold.it/150x150', 'Imaginart', 'leilaware@imaginart.com', 'Rabat', 'Point', '-6.81157,33.99564'),
(86, '5a0c67e9fd3eb67969316d02', 'http://placehold.it/150x150', 'Zenolux', 'leilaware@zenolux.com', 'Rabat', 'Point', '-6.76269,33.83833'),
(87, '5a0c67e9fd3eb67969316d03', 'http://placehold.it/150x150', 'Newcube', 'leilaware@newcube.com', 'Rabat', 'Point', '-6.83287,33.96337'),
(88, '5a0c67e9fd3eb67969316d04', 'http://placehold.it/150x150', 'Isodrive', 'leilaware@isodrive.com', 'Rabat', 'Point', '-6.84503,33.91952'),
(89, '5a0c67e9fd3eb67969316d05', 'http://placehold.it/150x150', 'Geekosis', 'leilaware@geekosis.com', 'Rabat', 'Point', '-6.81826,33.84792'),
(90, '5a0c67e9fd3eb67969316d06', 'http://placehold.it/150x150', 'Diginetic', 'leilaware@diginetic.com', 'Rabat', 'Point', '-6.84502,33.92325'),
(91, '5a0c67e9fd3eb67969316d07', 'http://placehold.it/150x150', 'Ultrimax', 'leilaware@ultrimax.com', 'Rabat', 'Point', '-6.75473,33.84333'),
(92, '5a0c680afd3eb67969316d08', 'http://placehold.it/150x150', 'Valreda', 'leilaware@valreda.com', 'Rabat', 'Point', '-6.83789,33.86515'),
(93, '5a0c680afd3eb67969316d09', 'http://placehold.it/150x150', 'Recritube', 'leilaware@recritube.com', 'Rabat', 'Point', '-6.78916,33.87576'),
(94, '5a0c680afd3eb67969316d0a', 'http://placehold.it/150x150', 'Datagen', 'leilaware@datagen.com', 'Rabat', 'Point', '-6.83263,33.91399'),
(95, '5a0c680afd3eb67969316d0b', 'http://placehold.it/150x150', 'Animalia', 'leilaware@animalia.com', 'Rabat', 'Point', '-6.7483,33.86793'),
(96, '5a0c680afd3eb67969316d0c', 'http://placehold.it/150x150', 'Limage', 'leilaware@limage.com', 'Rabat', 'Point', '-6.84039,33.97518'),
(97, '5a0c680afd3eb67969316d0d', 'http://placehold.it/150x150', 'Zanilla', 'leilaware@zanilla.com', 'Rabat', 'Point', '-6.79739,33.80084'),
(98, '5a0c680afd3eb67969316d0e', 'http://placehold.it/150x150', 'Proflex', 'leilaware@proflex.com', 'Rabat', 'Point', '-6.82649,33.80586'),
(99, '5a0c680afd3eb67969316d0f', 'http://placehold.it/150x150', 'Firewax', 'leilaware@firewax.com', 'Rabat', 'Point', '-6.76472,33.96184'),
(100, '5a0c680afd3eb67969316d10', 'http://placehold.it/150x150', 'Multiflex', 'leilaware@multiflex.com', 'Rabat', 'Point', '-6.78845,33.96487'),
(101, '5a0c680afd3eb67969316d11', 'http://placehold.it/150x150', 'Colaire', 'leilaware@colaire.com', 'Rabat', 'Point', '-6.84288,33.91697'),
(102, '5a0c680afd3eb67969316d12', 'http://placehold.it/150x150', 'Cinesanct', 'leilaware@cinesanct.com', 'Rabat', 'Point', '-6.82376,33.90647'),
(103, '5a0c680afd3eb67969316d13', 'http://placehold.it/150x150', 'Illumity', 'leilaware@illumity.com', 'Rabat', 'Point', '-6.77704,33.84155'),
(104, '5a0c680afd3eb67969316d14', 'http://placehold.it/150x150', 'Futuris', 'leilaware@futuris.com', 'Rabat', 'Point', '-6.74868,33.84807'),
(105, '5a0c680afd3eb67969316d15', 'http://placehold.it/150x150', 'Mediot', 'leilaware@mediot.com', 'Rabat', 'Point', '-6.80163,33.87195'),
(106, '5a0c680afd3eb67969316d16', 'http://placehold.it/150x150', 'Corporana', 'leilaware@corporana.com', 'Rabat', 'Point', '-6.77783,33.84444'),
(107, '5a0c680afd3eb67969316d17', 'http://placehold.it/150x150', 'Intergeek', 'leilaware@intergeek.com', 'Rabat', 'Point', '-6.83708,33.94228'),
(108, '5a0c6817fd3eb67969316d18', 'http://placehold.it/150x150', 'Quordate', 'leilaware@quordate.com', 'Rabat', 'Point', '-6.79025,33.88059'),
(109, '5a0c6817fd3eb67969316d19', 'http://placehold.it/150x150', 'Anarco', 'leilaware@anarco.com', 'Rabat', 'Point', '-6.76527,33.94852'),
(110, '5a0c6817fd3eb67969316d1a', 'http://placehold.it/150x150', 'Medalert', 'leilaware@medalert.com', 'Rabat', 'Point', '-6.83038,33.81058'),
(111, '5a0c6817fd3eb67969316d1b', 'http://placehold.it/150x150', 'Gonkle', 'leilaware@gonkle.com', 'Rabat', 'Point', '-6.76673,33.84282'),
(112, '5a0c6817fd3eb67969316d1c', 'http://placehold.it/150x150', 'Callflex', 'leilaware@callflex.com', 'Rabat', 'Point', '-6.84022,33.96167'),
(113, '5a0c6817fd3eb67969316d1d', 'http://placehold.it/150x150', 'Terascape', 'leilaware@terascape.com', 'Rabat', 'Point', '-6.82571,33.86166'),
(114, '5a0c6817fd3eb67969316d1e', 'http://placehold.it/150x150', 'Zilencio', 'leilaware@zilencio.com', 'Rabat', 'Point', '-6.77078,33.92877'),
(115, '5a0c6817fd3eb67969316d1f', 'http://placehold.it/150x150', 'Digiprint', 'leilaware@digiprint.com', 'Rabat', 'Point', '-6.82542,33.85383'),
(116, '5a0c6817fd3eb67969316d20', 'http://placehold.it/150x150', 'Navir', 'leilaware@navir.com', 'Rabat', 'Point', '-6.83166,33.93683'),
(117, '5a0c6817fd3eb67969316d21', 'http://placehold.it/150x150', 'Capscreen', 'leilaware@capscreen.com', 'Rabat', 'Point', '-6.76421,33.89753'),
(118, '5a0c6817fd3eb67969316d22', 'http://placehold.it/150x150', 'Bezal', 'leilaware@bezal.com', 'Rabat', 'Point', '-6.79756,33.92858'),
(119, '5a0c6817fd3eb67969316d23', 'http://placehold.it/150x150', 'Insurety', 'leilaware@insurety.com', 'Rabat', 'Point', '-6.84015,33.97918'),
(120, '5a0c6817fd3eb67969316d24', 'http://placehold.it/150x150', 'Deminimum', 'leilaware@deminimum.com', 'Rabat', 'Point', '-6.81579,33.80807'),
(121, '5a0c6817fd3eb67969316d25', 'http://placehold.it/150x150', 'Insectus', 'leilaware@insectus.com', 'Rabat', 'Point', '-6.77309,33.90475'),
(122, '5a0c6817fd3eb67969316d26', 'http://placehold.it/150x150', 'Slambda', 'leilaware@slambda.com', 'Rabat', 'Point', '-6.82149,33.92087'),
(123, '5a0c6817fd3eb67969316d27', 'http://placehold.it/150x150', 'Bisba', 'leilaware@bisba.com', 'Rabat', 'Point', '-6.79137,33.84051'),
(124, '5a0c6817fd3eb67969316d28', 'http://placehold.it/150x150', 'Zoarere', 'leilaware@zoarere.com', 'Rabat', 'Point', '-6.76169,33.96976'),
(125, '5a0c6817fd3eb67969316d29', 'http://placehold.it/150x150', 'Rubadub', 'leilaware@rubadub.com', 'Rabat', 'Point', '-6.75018,33.92082'),
(126, '5a0c6817fd3eb67969316d2a', 'http://placehold.it/150x150', 'Fitcore', 'leilaware@fitcore.com', 'Rabat', 'Point', '-6.81239,33.8375'),
(127, '5a0c6817fd3eb67969316d2b', 'http://placehold.it/150x150', 'Mixers', 'leilaware@mixers.com', 'Rabat', 'Point', '-6.84393,33.99179'),
(128, '5a0c687dfd3eb67969316d2c', 'http://placehold.it/150x150', 'Exozent', 'leilaware@exozent.com', 'Rabat', 'Point', '-6.79665,33.90796'),
(129, '5a0c687dfd3eb67969316d2d', 'http://placehold.it/150x150', 'Koffee', 'leilaware@koffee.com', 'Rabat', 'Point', '-6.80304,33.93513'),
(130, '5a0c687dfd3eb67969316d2e', 'http://placehold.it/150x150', 'Repetwire', 'leilaware@repetwire.com', 'Rabat', 'Point', '-6.7795,33.93867'),
(131, '5a0c687dfd3eb67969316d2f', 'http://placehold.it/150x150', 'Grupoli', 'leilaware@grupoli.com', 'Rabat', 'Point', '-6.82952,33.86433'),
(132, '5a0c687dfd3eb67969316d30', 'http://placehold.it/150x150', 'Comtrail', 'leilaware@comtrail.com', 'Rabat', 'Point', '-6.83662,33.92165'),
(133, '5a0c687dfd3eb67969316d31', 'http://placehold.it/150x150', 'Pasturia', 'leilaware@pasturia.com', 'Rabat', 'Point', '-6.7777,33.97911'),
(134, '5a0c687dfd3eb67969316d32', 'http://placehold.it/150x150', 'Mangelica', 'leilaware@mangelica.com', 'Rabat', 'Point', '-6.83451,33.85529'),
(135, '5a0c687dfd3eb67969316d33', 'http://placehold.it/150x150', 'Delphide', 'leilaware@delphide.com', 'Rabat', 'Point', '-6.78017,33.9075'),
(136, '5a0c687dfd3eb67969316d34', 'http://placehold.it/150x150', 'Franscene', 'leilaware@franscene.com', 'Rabat', 'Point', '-6.757,33.85657'),
(137, '5a0c687dfd3eb67969316d35', 'http://placehold.it/150x150', 'Comtest', 'leilaware@comtest.com', 'Rabat', 'Point', '-6.77214,33.98496'),
(138, '5a0c687dfd3eb67969316d36', 'http://placehold.it/150x150', 'Krag', 'leilaware@krag.com', 'Rabat', 'Point', '-6.79633,33.83348'),
(139, '5a0c687dfd3eb67969316d37', 'http://placehold.it/150x150', 'Isotronic', 'leilaware@isotronic.com', 'Rabat', 'Point', '-6.79018,33.86291'),
(140, '5a0c687dfd3eb67969316d38', 'http://placehold.it/150x150', 'Sultrax', 'leilaware@sultrax.com', 'Rabat', 'Point', '-6.79318,33.92908'),
(141, '5a0c687dfd3eb67969316d39', 'http://placehold.it/150x150', 'Veraq', 'leilaware@veraq.com', 'Rabat', 'Point', '-6.76394,33.88376'),
(142, '5a0c687dfd3eb67969316d3a', 'http://placehold.it/150x150', 'Plasmos', 'leilaware@plasmos.com', 'Rabat', 'Point', '-6.79591,33.83437'),
(143, '5a0c687dfd3eb67969316d3b', 'http://placehold.it/150x150', 'Comstruct', 'leilaware@comstruct.com', 'Rabat', 'Point', '-6.81188,33.83033'),
(144, '5a0c687dfd3eb67969316d3c', 'http://placehold.it/150x150', 'Isosphere', 'leilaware@isosphere.com', 'Rabat', 'Point', '-6.82254,33.80692'),
(145, '5a0c687dfd3eb67969316d3d', 'http://placehold.it/150x150', 'Diginetic', 'leilaware@diginetic.com', 'Rabat', 'Point', '-6.77412,33.94772'),
(146, '5a0c687dfd3eb67969316d3e', 'http://placehold.it/150x150', 'Digiprint', 'leilaware@digiprint.com', 'Rabat', 'Point', '-6.82925,33.91411'),
(147, '5a0c687dfd3eb67969316d3f', 'http://placehold.it/150x150', 'Zaj', 'leilaware@zaj.com', 'Rabat', 'Point', '-6.80406,33.9023'),
(148, '5a0c687dfd3eb67969316d40', 'http://placehold.it/150x150', 'Bluplanet', 'leilaware@bluplanet.com', 'Rabat', 'Point', '-6.78665,33.97746'),
(149, '5a0c687dfd3eb67969316d41', 'http://placehold.it/150x150', 'Zizzle', 'leilaware@zizzle.com', 'Rabat', 'Point', '-6.84065,33.96044'),
(150, '5a0c689efd3eb67969316d42', 'http://placehold.it/150x150', 'Viasia', 'leilaware@viasia.com', 'Rabat', 'Point', '-6.78266,33.8526'),
(151, '5a0c689efd3eb67969316d43', 'http://placehold.it/150x150', 'Skyplex', 'leilaware@skyplex.com', 'Rabat', 'Point', '-6.83191,33.95952'),
(152, '5a0c689efd3eb67969316d44', 'http://placehold.it/150x150', 'Capscreen', 'leilaware@capscreen.com', 'Rabat', 'Point', '-6.83952,33.90985'),
(153, '5a0c689efd3eb67969316d45', 'http://placehold.it/150x150', 'Zaya', 'leilaware@zaya.com', 'Rabat', 'Point', '-6.81268,33.91896'),
(154, '5a0c689efd3eb67969316d46', 'http://placehold.it/150x150', 'Elpro', 'leilaware@elpro.com', 'Rabat', 'Point', '-6.75786,33.86421'),
(155, '5a0c689efd3eb67969316d47', 'http://placehold.it/150x150', 'Ovium', 'leilaware@ovium.com', 'Rabat', 'Point', '-6.83239,33.97846'),
(156, '5a0c689efd3eb67969316d48', 'http://placehold.it/150x150', 'Sportan', 'leilaware@sportan.com', 'Rabat', 'Point', '-6.78146,33.80955'),
(157, '5a0c689efd3eb67969316d49', 'http://placehold.it/150x150', 'Imaginart', 'leilaware@imaginart.com', 'Rabat', 'Point', '-6.83928,33.80205'),
(158, '5a0c689efd3eb67969316d4a', 'http://placehold.it/150x150', 'Otherway', 'leilaware@otherway.com', 'Rabat', 'Point', '-6.8173,33.89579'),
(159, '5a0c689efd3eb67969316d4b', 'http://placehold.it/150x150', 'Nitracyr', 'leilaware@nitracyr.com', 'Rabat', 'Point', '-6.75817,33.90178'),
(160, '5a0c689efd3eb67969316d4c', 'http://placehold.it/150x150', 'Flyboyz', 'leilaware@flyboyz.com', 'Rabat', 'Point', '-6.84326,33.84391'),
(161, '5a0c689efd3eb67969316d4d', 'http://placehold.it/150x150', 'Ultrasure', 'leilaware@ultrasure.com', 'Rabat', 'Point', '-6.77748,33.84626'),
(162, '5a0c689efd3eb67969316d4e', 'http://placehold.it/150x150', 'Geekular', 'leilaware@geekular.com', 'Rabat', 'Point', '-6.7484,33.84443'),
(163, '5a0c689efd3eb67969316d4f', 'http://placehold.it/150x150', 'Bedlam', 'leilaware@bedlam.com', 'Rabat', 'Point', '-6.7963,33.81976'),
(164, '5a0c689efd3eb67969316d50', 'http://placehold.it/150x150', 'Speedbolt', 'leilaware@speedbolt.com', 'Rabat', 'Point', '-6.77091,33.86472'),
(165, '5a0c689efd3eb67969316d51', 'http://placehold.it/150x150', 'Zaggles', 'leilaware@zaggles.com', 'Rabat', 'Point', '-6.77643,33.90772'),
(166, '5a0c689efd3eb67969316d52', 'http://placehold.it/150x150', 'Anixang', 'leilaware@anixang.com', 'Rabat', 'Point', '-6.81077,33.89655'),
(167, '5a0c689efd3eb67969316d53', 'http://placehold.it/150x150', 'Gonkle', 'leilaware@gonkle.com', 'Rabat', 'Point', '-6.79612,33.84739'),
(168, '5a0c689efd3eb67969316d54', 'http://placehold.it/150x150', 'Besto', 'leilaware@besto.com', 'Rabat', 'Point', '-6.83368,33.95549'),
(169, '5a0c689efd3eb67969316d55', 'http://placehold.it/150x150', 'Nipaz', 'leilaware@nipaz.com', 'Rabat', 'Point', '-6.77913,33.98259'),
(170, '5a0c689efd3eb67969316d56', 'http://placehold.it/150x150', 'Tropoli', 'leilaware@tropoli.com', 'Rabat', 'Point', '-6.75627,33.87953'),
(171, '5a0c689efd3eb67969316d57', 'http://placehold.it/150x150', 'Quilch', 'leilaware@quilch.com', 'Rabat', 'Point', '-6.81153,33.96788'),
(172, '5a0c689efd3eb67969316d58', 'http://placehold.it/150x150', 'Waretel', 'leilaware@waretel.com', 'Rabat', 'Point', '-6.78895,33.97824'),
(173, '5a0c689efd3eb67969316d59', 'http://placehold.it/150x150', 'Senmao', 'leilaware@senmao.com', 'Rabat', 'Point', '-6.79473,33.8573'),
(174, '5a0c6b1dfd3eb67969316d5a', 'http://placehold.it/150x150', 'Datacator', 'leilaware@datacator.com', 'Rabat', 'Point', '-6.7827,33.95476'),
(175, '5a0c6b1dfd3eb67969316d5b', 'http://placehold.it/150x150', 'Zensure', 'leilaware@zensure.com', 'Rabat', 'Point', '-6.80316,33.94916'),
(176, '5a0c6b1dfd3eb67969316d5c', 'http://placehold.it/150x150', 'Zillidium', 'leilaware@zillidium.com', 'Rabat', 'Point', '-6.80883,33.96045'),
(177, '5a0c6b1dfd3eb67969316d5d', 'http://placehold.it/150x150', 'Apextri', 'leilaware@apextri.com', 'Rabat', 'Point', '-6.79806,33.90886'),
(178, '5a0c6b1dfd3eb67969316d5e', 'http://placehold.it/150x150', 'Bittor', 'leilaware@bittor.com', 'Rabat', 'Point', '-6.82572,33.86219'),
(179, '5a0c6b1dfd3eb67969316d5f', 'http://placehold.it/150x150', 'Elemantra', 'leilaware@elemantra.com', 'Rabat', 'Point', '-6.80786,33.87471'),
(180, '5a0c6b1dfd3eb67969316d60', 'http://placehold.it/150x150', 'Panzent', 'leilaware@panzent.com', 'Rabat', 'Point', '-6.82365,33.84756'),
(181, '5a0c6b1dfd3eb67969316d61', 'http://placehold.it/150x150', 'Inear', 'leilaware@inear.com', 'Rabat', 'Point', '-6.75358,33.91787'),
(182, '5a0c6b1dfd3eb67969316d62', 'http://placehold.it/150x150', 'Rockabye', 'leilaware@rockabye.com', 'Rabat', 'Point', '-6.74976,33.91279'),
(183, '5a0c6b1dfd3eb67969316d63', 'http://placehold.it/150x150', 'Dadabase', 'leilaware@dadabase.com', 'Rabat', 'Point', '-6.80423,33.86394'),
(184, '5a0c6b1dfd3eb67969316d64', 'http://placehold.it/150x150', 'Everest', 'leilaware@everest.com', 'Rabat', 'Point', '-6.7752,33.85257'),
(185, '5a0c6b1dfd3eb67969316d65', 'http://placehold.it/150x150', 'Colaire', 'leilaware@colaire.com', 'Rabat', 'Point', '-6.84071,33.92175'),
(186, '5a0c6b1dfd3eb67969316d66', 'http://placehold.it/150x150', 'Comcur', 'leilaware@comcur.com', 'Rabat', 'Point', '-6.80501,33.96619'),
(187, '5a0c6b1dfd3eb67969316d67', 'http://placehold.it/150x150', 'Pholio', 'leilaware@pholio.com', 'Rabat', 'Point', '-6.83499,33.94669'),
(188, '5a0c6b1dfd3eb67969316d68', 'http://placehold.it/150x150', 'Datagen', 'leilaware@datagen.com', 'Rabat', 'Point', '-6.76886,33.97208'),
(189, '5a0c6b1dfd3eb67969316d69', 'http://placehold.it/150x150', 'Progenex', 'leilaware@progenex.com', 'Rabat', 'Point', '-6.78666,33.86607'),
(190, '5a0c6b1dfd3eb67969316d6a', 'http://placehold.it/150x150', 'Nixelt', 'leilaware@nixelt.com', 'Rabat', 'Point', '-6.78839,33.82126'),
(191, '5a0c6b1dfd3eb67969316d6b', 'http://placehold.it/150x150', 'Kozgene', 'leilaware@kozgene.com', 'Rabat', 'Point', '-6.75328,33.84881'),
(192, '5a0c6b1dfd3eb67969316d6c', 'http://placehold.it/150x150', 'Buzzness', 'leilaware@buzzness.com', 'Rabat', 'Point', '-6.84414,33.93806'),
(193, '5a0c6b2dfd3eb67969316d6d', 'http://placehold.it/150x150', 'Mondicil', 'leilaware@mondicil.com', 'Rabat', 'Point', '-6.74722,33.85523'),
(194, '5a0c6b2dfd3eb67969316d6e', 'http://placehold.it/150x150', 'Filodyne', 'leilaware@filodyne.com', 'Rabat', 'Point', '-6.747,33.98196'),
(195, '5a0c6b2dfd3eb67969316d6f', 'http://placehold.it/150x150', 'Sultrax', 'leilaware@sultrax.com', 'Rabat', 'Point', '-6.77017,33.84833'),
(196, '5a0c6b2dfd3eb67969316d70', 'http://placehold.it/150x150', 'Orbixtar', 'leilaware@orbixtar.com', 'Rabat', 'Point', '-6.75851,33.90786'),
(197, '5a0c6b2dfd3eb67969316d71', 'http://placehold.it/150x150', 'Injoy', 'leilaware@injoy.com', 'Rabat', 'Point', '-6.76261,33.83654'),
(198, '5a0c6b2dfd3eb67969316d72', 'http://placehold.it/150x150', 'Corporana', 'leilaware@corporana.com', 'Rabat', 'Point', '-6.78686,33.97273'),
(199, '5a0c6b2dfd3eb67969316d73', 'http://placehold.it/150x150', 'Trollery', 'leilaware@trollery.com', 'Rabat', 'Point', '-6.84009,33.94218'),
(200, '5a0c6b2dfd3eb67969316d74', 'http://placehold.it/150x150', 'Suretech', 'leilaware@suretech.com', 'Rabat', 'Point', '-6.75684,33.92775'),
(201, '5a0c6b2dfd3eb67969316d75', 'http://placehold.it/150x150', 'Medicroix', 'leilaware@medicroix.com', 'Rabat', 'Point', '-6.81207,33.96851'),
(202, '5a0c6b2dfd3eb67969316d76', 'http://placehold.it/150x150', 'Zilidium', 'leilaware@zilidium.com', 'Rabat', 'Point', '-6.80404,33.88483'),
(203, '5a0c6b2dfd3eb67969316d77', 'http://placehold.it/150x150', 'Evidends', 'leilaware@evidends.com', 'Rabat', 'Point', '-6.78372,33.93306'),
(204, '5a0c6b2dfd3eb67969316d78', 'http://placehold.it/150x150', 'Obones', 'leilaware@obones.com', 'Rabat', 'Point', '-6.75019,33.89847'),
(205, '5a0c6b2dfd3eb67969316d79', 'http://placehold.it/150x150', 'Bovis', 'leilaware@bovis.com', 'Rabat', 'Point', '-6.81018,33.98705'),
(206, '5a0c6b2dfd3eb67969316d7a', 'http://placehold.it/150x150', 'Vitricomp', 'leilaware@vitricomp.com', 'Rabat', 'Point', '-6.77941,33.89834'),
(207, '5a0c6b2dfd3eb67969316d7b', 'http://placehold.it/150x150', 'Apextri', 'leilaware@apextri.com', 'Rabat', 'Point', '-6.75586,33.94091'),
(208, '5a0c6b2dfd3eb67969316d7c', 'http://placehold.it/150x150', 'Tropoli', 'leilaware@tropoli.com', 'Rabat', 'Point', '-6.83355,33.98069'),
(209, '5a0c6b2dfd3eb67969316d7d', 'http://placehold.it/150x150', 'Comvoy', 'leilaware@comvoy.com', 'Rabat', 'Point', '-6.79748,33.83104'),
(210, '5a0c6b2dfd3eb67969316d7e', 'http://placehold.it/150x150', 'Eyeris', 'leilaware@eyeris.com', 'Rabat', 'Point', '-6.79578,33.98654'),
(211, '5a0c6b2dfd3eb67969316d7f', 'http://placehold.it/150x150', 'Genesynk', 'leilaware@genesynk.com', 'Rabat', 'Point', '-6.78956,33.93169'),
(212, '5a0c6b2dfd3eb67969316d80', 'http://placehold.it/150x150', 'Hydrocom', 'leilaware@hydrocom.com', 'Rabat', 'Point', '-6.80956,33.82815'),
(213, '5a0c6b42fd3eb67969316d81', 'http://placehold.it/150x150', 'Mondicil', 'leilaware@mondicil.com', 'Rabat', 'Point', '-6.74722,33.85523'),
(214, '5a0c6b42fd3eb67969316d82', 'http://placehold.it/150x150', 'Filodyne', 'leilaware@filodyne.com', 'Rabat', 'Point', '-6.747,33.98196'),
(215, '5a0c6b42fd3eb67969316d83', 'http://placehold.it/150x150', 'Sultrax', 'leilaware@sultrax.com', 'Rabat', 'Point', '-6.77017,33.84833'),
(216, '5a0c6b42fd3eb67969316d84', 'http://placehold.it/150x150', 'Orbixtar', 'leilaware@orbixtar.com', 'Rabat', 'Point', '-6.75851,33.90786'),
(217, '5a0c6b42fd3eb67969316d85', 'http://placehold.it/150x150', 'Injoy', 'leilaware@injoy.com', 'Rabat', 'Point', '-6.76261,33.83654'),
(218, '5a0c6b42fd3eb67969316d86', 'http://placehold.it/150x150', 'Corporana', 'leilaware@corporana.com', 'Rabat', 'Point', '-6.78686,33.97273'),
(219, '5a0c6b42fd3eb67969316d87', 'http://placehold.it/150x150', 'Trollery', 'leilaware@trollery.com', 'Rabat', 'Point', '-6.84009,33.94218'),
(220, '5a0c6b42fd3eb67969316d88', 'http://placehold.it/150x150', 'Suretech', 'leilaware@suretech.com', 'Rabat', 'Point', '-6.75684,33.92775'),
(221, '5a0c6b42fd3eb67969316d89', 'http://placehold.it/150x150', 'Medicroix', 'leilaware@medicroix.com', 'Rabat', 'Point', '-6.81207,33.96851'),
(222, '5a0c6b42fd3eb67969316d8a', 'http://placehold.it/150x150', 'Zilidium', 'leilaware@zilidium.com', 'Rabat', 'Point', '-6.80404,33.88483'),
(223, '5a0c6b42fd3eb67969316d8b', 'http://placehold.it/150x150', 'Evidends', 'leilaware@evidends.com', 'Rabat', 'Point', '-6.78372,33.93306'),
(224, '5a0c6b42fd3eb67969316d8c', 'http://placehold.it/150x150', 'Obones', 'leilaware@obones.com', 'Rabat', 'Point', '-6.75019,33.89847'),
(225, '5a0c6b42fd3eb67969316d8d', 'http://placehold.it/150x150', 'Bovis', 'leilaware@bovis.com', 'Rabat', 'Point', '-6.81018,33.98705'),
(226, '5a0c6b42fd3eb67969316d8e', 'http://placehold.it/150x150', 'Vitricomp', 'leilaware@vitricomp.com', 'Rabat', 'Point', '-6.77941,33.89834'),
(227, '5a0c6b42fd3eb67969316d8f', 'http://placehold.it/150x150', 'Apextri', 'leilaware@apextri.com', 'Rabat', 'Point', '-6.75586,33.94091'),
(228, '5a0c6b42fd3eb67969316d90', 'http://placehold.it/150x150', 'Tropoli', 'leilaware@tropoli.com', 'Rabat', 'Point', '-6.83355,33.98069'),
(229, '5a0c6b42fd3eb67969316d91', 'http://placehold.it/150x150', 'Comvoy', 'leilaware@comvoy.com', 'Rabat', 'Point', '-6.79748,33.83104'),
(230, '5a0c6b42fd3eb67969316d92', 'http://placehold.it/150x150', 'Eyeris', 'leilaware@eyeris.com', 'Rabat', 'Point', '-6.79578,33.98654'),
(231, '5a0c6b42fd3eb67969316d93', 'http://placehold.it/150x150', 'Genesynk', 'leilaware@genesynk.com', 'Rabat', 'Point', '-6.78956,33.93169'),
(232, '5a0c6b42fd3eb67969316d94', 'http://placehold.it/150x150', 'Hydrocom', 'leilaware@hydrocom.com', 'Rabat', 'Point', '-6.80956,33.82815'),
(233, '5a0c6b55fd3eb67969316d95', 'http://placehold.it/150x150', 'Kage', 'leilaware@kage.com', 'Rabat', 'Point', '-6.81832,33.95645'),
(234, '5a0c6b55fd3eb67969316d96', 'http://placehold.it/150x150', 'Zedalis', 'leilaware@zedalis.com', 'Rabat', 'Point', '-6.80287,33.9575'),
(235, '5a0c6b55fd3eb67969316d97', 'http://placehold.it/150x150', 'Zillan', 'leilaware@zillan.com', 'Rabat', 'Point', '-6.77143,33.93771'),
(236, '5a0c6b55fd3eb67969316d98', 'http://placehold.it/150x150', 'Vurbo', 'leilaware@vurbo.com', 'Rabat', 'Point', '-6.80835,33.85408'),
(237, '5a0c6b55fd3eb67969316d99', 'http://placehold.it/150x150', 'Magnemo', 'leilaware@magnemo.com', 'Rabat', 'Point', '-6.75796,33.90401'),
(238, '5a0c6b55fd3eb67969316d9a', 'http://placehold.it/150x150', 'Providco', 'leilaware@providco.com', 'Rabat', 'Point', '-6.82018,33.96232'),
(239, '5a0c6b55fd3eb67969316d9b', 'http://placehold.it/150x150', 'Tubalum', 'leilaware@tubalum.com', 'Rabat', 'Point', '-6.77033,33.88405'),
(240, '5a0c6b55fd3eb67969316d9c', 'http://placehold.it/150x150', 'Gynko', 'leilaware@gynko.com', 'Rabat', 'Point', '-6.7661,33.86215'),
(241, '5a0c6b55fd3eb67969316d9d', 'http://placehold.it/150x150', 'Genekom', 'leilaware@genekom.com', 'Rabat', 'Point', '-6.74695,33.81594'),
(242, '5a0c6b55fd3eb67969316d9e', 'http://placehold.it/150x150', 'Acium', 'leilaware@acium.com', 'Rabat', 'Point', '-6.81221,33.94613'),
(243, '5a0c6b55fd3eb67969316d9f', 'http://placehold.it/150x150', 'Talkalot', 'leilaware@talkalot.com', 'Rabat', 'Point', '-6.83579,33.94983'),
(244, '5a0c6b55fd3eb67969316da0', 'http://placehold.it/150x150', 'Illumity', 'leilaware@illumity.com', 'Rabat', 'Point', '-6.79319,33.83036'),
(245, '5a0c6b55fd3eb67969316da1', 'http://placehold.it/150x150', 'Acrodance', 'leilaware@acrodance.com', 'Rabat', 'Point', '-6.75917,33.93589'),
(246, '5a0c6b55fd3eb67969316da2', 'http://placehold.it/150x150', 'Powernet', 'leilaware@powernet.com', 'Rabat', 'Point', '-6.84276,33.80035'),
(247, '5a0c6b55fd3eb67969316da3', 'http://placehold.it/150x150', 'Pyramia', 'leilaware@pyramia.com', 'Rabat', 'Point', '-6.75301,33.83085'),
(248, '5a0c6b55fd3eb67969316da4', 'http://placehold.it/150x150', 'Corporana', 'leilaware@corporana.com', 'Rabat', 'Point', '-6.82863,33.87765'),
(249, '5a0c6b55fd3eb67969316da5', 'http://placehold.it/150x150', 'Isotronic', 'leilaware@isotronic.com', 'Rabat', 'Point', '-6.81091,33.82032'),
(250, '5a0c6b55fd3eb67969316da6', 'http://placehold.it/150x150', 'Menbrain', 'leilaware@menbrain.com', 'Rabat', 'Point', '-6.79439,33.86054'),
(251, '5a0c6b55fd3eb67969316da7', 'http://placehold.it/150x150', 'Aquacine', 'leilaware@aquacine.com', 'Rabat', 'Point', '-6.7901,33.92195'),
(252, '5a0c6b55fd3eb67969316da8', 'http://placehold.it/150x150', 'Geekko', 'leilaware@geekko.com', 'Rabat', 'Point', '-6.77585,33.80125'),
(253, '5a0c6b55fd3eb67969316da9', 'http://placehold.it/150x150', 'Netility', 'leilaware@netility.com', 'Rabat', 'Point', '-6.82861,33.99216'),
(254, '5a0c6b55fd3eb67969316daa', 'http://placehold.it/150x150', 'Reversus', 'leilaware@reversus.com', 'Rabat', 'Point', '-6.74911,33.91049'),
(255, '5a0c6b61fd3eb67969316dab', 'http://placehold.it/150x150', 'Sureplex', 'leilaware@sureplex.com', 'Rabat', 'Point', '-6.75559,33.95303'),
(256, '5a0c6b61fd3eb67969316dac', 'http://placehold.it/150x150', 'Norali', 'leilaware@norali.com', 'Rabat', 'Point', '-6.7507,33.92841'),
(257, '5a0c6b61fd3eb67969316dad', 'http://placehold.it/150x150', 'Softmicro', 'leilaware@softmicro.com', 'Rabat', 'Point', '-6.83987,33.90291'),
(258, '5a0c6b61fd3eb67969316dae', 'http://placehold.it/150x150', 'Comcur', 'leilaware@comcur.com', 'Rabat', 'Point', '-6.79065,33.81963'),
(259, '5a0c6b61fd3eb67969316daf', 'http://placehold.it/150x150', 'Pyrami', 'leilaware@pyrami.com', 'Rabat', 'Point', '-6.76894,33.83578'),
(260, '5a0c6b61fd3eb67969316db0', 'http://placehold.it/150x150', 'Schoolio', 'leilaware@schoolio.com', 'Rabat', 'Point', '-6.768,33.81741'),
(261, '5a0c6b61fd3eb67969316db1', 'http://placehold.it/150x150', 'Scenty', 'leilaware@scenty.com', 'Rabat', 'Point', '-6.78666,33.91547'),
(262, '5a0c6b61fd3eb67969316db2', 'http://placehold.it/150x150', 'Malathion', 'leilaware@malathion.com', 'Rabat', 'Point', '-6.75076,33.86233'),
(263, '5a0c6b61fd3eb67969316db3', 'http://placehold.it/150x150', 'Zboo', 'leilaware@zboo.com', 'Rabat', 'Point', '-6.78859,33.98156'),
(264, '5a0c6b61fd3eb67969316db4', 'http://placehold.it/150x150', 'Handshake', 'leilaware@handshake.com', 'Rabat', 'Point', '-6.84079,33.95982'),
(265, '5a0c6b61fd3eb67969316db5', 'http://placehold.it/150x150', 'Edecine', 'leilaware@edecine.com', 'Rabat', 'Point', '-6.7764,33.86472'),
(266, '5a0c6b61fd3eb67969316db6', 'http://placehold.it/150x150', 'Terragen', 'leilaware@terragen.com', 'Rabat', 'Point', '-6.77284,33.93765'),
(267, '5a0c6b61fd3eb67969316db7', 'http://placehold.it/150x150', 'Prowaste', 'leilaware@prowaste.com', 'Rabat', 'Point', '-6.79311,33.99213'),
(268, '5a0c6b61fd3eb67969316db8', 'http://placehold.it/150x150', 'Blurrybus', 'leilaware@blurrybus.com', 'Rabat', 'Point', '-6.83983,33.92688'),
(269, '5a0c6b61fd3eb67969316db9', 'http://placehold.it/150x150', 'Avit', 'leilaware@avit.com', 'Rabat', 'Point', '-6.8143,33.84092'),
(270, '5a0c6b61fd3eb67969316dba', 'http://placehold.it/150x150', 'Zentia', 'leilaware@zentia.com', 'Rabat', 'Point', '-6.84568,33.94117'),
(271, '5a0c6b61fd3eb67969316dbb', 'http://placehold.it/150x150', 'Xerex', 'leilaware@xerex.com', 'Rabat', 'Point', '-6.79398,33.96065'),
(272, '5a0c6b61fd3eb67969316dbc', 'http://placehold.it/150x150', 'Architax', 'leilaware@architax.com', 'Rabat', 'Point', '-6.81079,33.9514'),
(273, '5a0c6b61fd3eb67969316dbd', 'http://placehold.it/150x150', 'Wazzu', 'leilaware@wazzu.com', 'Rabat', 'Point', '-6.81948,33.88568'),
(274, '5a0c6b61fd3eb67969316dbe', 'http://placehold.it/150x150', 'Parleynet', 'leilaware@parleynet.com', 'Rabat', 'Point', '-6.79371,33.80105'),
(275, '5a0c6b61fd3eb67969316dbf', 'http://placehold.it/150x150', 'Talkola', 'leilaware@talkola.com', 'Rabat', 'Point', '-6.80291,33.86063'),
(276, '5a0c6b61fd3eb67969316dc0', 'http://placehold.it/150x150', 'Housedown', 'leilaware@housedown.com', 'Rabat', 'Point', '-6.79566,33.94903'),
(277, '5a0c6b61fd3eb67969316dc1', 'http://placehold.it/150x150', 'Ovium', 'leilaware@ovium.com', 'Rabat', 'Point', '-6.8066,33.92018'),
(278, '5a0c6b61fd3eb67969316dc2', 'http://placehold.it/150x150', 'Reversus', 'leilaware@reversus.com', 'Rabat', 'Point', '-6.81053,33.99545'),
(279, '5a0c6b75fd3eb67969316dc3', 'http://placehold.it/150x150', 'Kiosk', 'leilaware@kiosk.com', 'Rabat', 'Point', '-6.76816,33.97174'),
(280, '5a0c6b75fd3eb67969316dc4', 'http://placehold.it/150x150', 'Unia', 'leilaware@unia.com', 'Rabat', 'Point', '-6.84483,33.93537'),
(281, '5a0c6b75fd3eb67969316dc5', 'http://placehold.it/150x150', 'Aquasseur', 'leilaware@aquasseur.com', 'Rabat', 'Point', '-6.76921,33.8083'),
(282, '5a0c6b75fd3eb67969316dc6', 'http://placehold.it/150x150', 'Duflex', 'leilaware@duflex.com', 'Rabat', 'Point', '-6.79208,33.87378'),
(283, '5a0c6b75fd3eb67969316dc7', 'http://placehold.it/150x150', 'Zenolux', 'leilaware@zenolux.com', 'Rabat', 'Point', '-6.77611,33.89991'),
(284, '5a0c6b75fd3eb67969316dc8', 'http://placehold.it/150x150', 'Voratak', 'leilaware@voratak.com', 'Rabat', 'Point', '-6.77635,33.81809'),
(285, '5a0c6b75fd3eb67969316dc9', 'http://placehold.it/150x150', 'Canopoly', 'leilaware@canopoly.com', 'Rabat', 'Point', '-6.78195,33.8258'),
(286, '5a0c6b75fd3eb67969316dca', 'http://placehold.it/150x150', 'Farmex', 'leilaware@farmex.com', 'Rabat', 'Point', '-6.77484,33.9227'),
(287, '5a0c6b75fd3eb67969316dcb', 'http://placehold.it/150x150', 'Digiprint', 'leilaware@digiprint.com', 'Rabat', 'Point', '-6.80967,33.94565'),
(288, '5a0c6b75fd3eb67969316dcc', 'http://placehold.it/150x150', 'Dentrex', 'leilaware@dentrex.com', 'Rabat', 'Point', '-6.82459,33.95482'),
(289, '5a0c6b75fd3eb67969316dcd', 'http://placehold.it/150x150', 'Securia', 'leilaware@securia.com', 'Rabat', 'Point', '-6.80041,33.90952'),
(290, '5a0c6b75fd3eb67969316dce', 'http://placehold.it/150x150', 'Ezent', 'leilaware@ezent.com', 'Rabat', 'Point', '-6.79328,33.86559'),
(291, '5a0c6b75fd3eb67969316dcf', 'http://placehold.it/150x150', 'Microluxe', 'leilaware@microluxe.com', 'Rabat', 'Point', '-6.80882,33.8099'),
(292, '5a0c6b75fd3eb67969316dd0', 'http://placehold.it/150x150', 'Rooforia', 'leilaware@rooforia.com', 'Rabat', 'Point', '-6.75874,33.85044'),
(293, '5a0c6b83fd3eb67969316dd1', 'http://placehold.it/150x150', 'Rugstars', 'leilaware@rugstars.com', 'Rabat', 'Point', '-6.82555,33.90534'),
(294, '5a0c6b83fd3eb67969316dd2', 'http://placehold.it/150x150', 'Futuris', 'leilaware@futuris.com', 'Rabat', 'Point', '-6.77191,33.92781'),
(295, '5a0c6b83fd3eb67969316dd3', 'http://placehold.it/150x150', 'Knowlysis', 'leilaware@knowlysis.com', 'Rabat', 'Point', '-6.78646,33.86774'),
(296, '5a0c6b83fd3eb67969316dd4', 'http://placehold.it/150x150', 'Sportan', 'leilaware@sportan.com', 'Rabat', 'Point', '-6.76351,33.92313'),
(297, '5a0c6b83fd3eb67969316dd5', 'http://placehold.it/150x150', 'Vendblend', 'leilaware@vendblend.com', 'Rabat', 'Point', '-6.76239,33.8156'),
(298, '5a0c6b83fd3eb67969316dd6', 'http://placehold.it/150x150', 'Gynko', 'leilaware@gynko.com', 'Rabat', 'Point', '-6.79011,33.98307'),
(299, '5a0c6b83fd3eb67969316dd7', 'http://placehold.it/150x150', 'Anivet', 'leilaware@anivet.com', 'Rabat', 'Point', '-6.75608,33.965'),
(300, '5a0c6b83fd3eb67969316dd8', 'http://placehold.it/150x150', 'Emoltra', 'leilaware@emoltra.com', 'Rabat', 'Point', '-6.82551,33.97388'),
(301, '5a0c6b83fd3eb67969316dd9', 'http://placehold.it/150x150', 'Illumity', 'leilaware@illumity.com', 'Rabat', 'Point', '-6.78832,33.96918'),
(302, '5a0c6b83fd3eb67969316dda', 'http://placehold.it/150x150', 'Austech', 'leilaware@austech.com', 'Rabat', 'Point', '-6.84007,33.92927'),
(303, '5a0c6b83fd3eb67969316ddb', 'http://placehold.it/150x150', 'Boink', 'leilaware@boink.com', 'Rabat', 'Point', '-6.83766,33.85683'),
(304, '5a0c6b83fd3eb67969316ddc', 'http://placehold.it/150x150', 'Recritube', 'leilaware@recritube.com', 'Rabat', 'Point', '-6.77595,33.86772'),
(305, '5a0c6b83fd3eb67969316ddd', 'http://placehold.it/150x150', 'Comtrak', 'leilaware@comtrak.com', 'Rabat', 'Point', '-6.75099,33.97885'),
(306, '5a0c6b83fd3eb67969316dde', 'http://placehold.it/150x150', 'Vicon', 'leilaware@vicon.com', 'Rabat', 'Point', '-6.79196,33.95231'),
(307, '5a0c6b83fd3eb67969316ddf', 'http://placehold.it/150x150', 'Strezzo', 'leilaware@strezzo.com', 'Rabat', 'Point', '-6.76705,33.94284'),
(308, '5a0c6b83fd3eb67969316de0', 'http://placehold.it/150x150', 'Qimonk', 'leilaware@qimonk.com', 'Rabat', 'Point', '-6.79774,33.83119'),
(309, '5a0c6b83fd3eb67969316de1', 'http://placehold.it/150x150', 'Isonus', 'leilaware@isonus.com', 'Rabat', 'Point', '-6.76168,33.80846'),
(310, '5a0c6b83fd3eb67969316de2', 'http://placehold.it/150x150', 'Utarian', 'leilaware@utarian.com', 'Rabat', 'Point', '-6.78927,33.96421'),
(311, '5a0c6b83fd3eb67969316de3', 'http://placehold.it/150x150', 'Harmoney', 'leilaware@harmoney.com', 'Rabat', 'Point', '-6.81684,33.9218'),
(312, '5a0c6b83fd3eb67969316de4', 'http://placehold.it/150x150', 'Isotrack', 'leilaware@isotrack.com', 'Rabat', 'Point', '-6.75823,33.96455'),
(313, '5a0c6b90fd3eb67969316de5', 'http://placehold.it/150x150', 'Syntac', 'leilaware@syntac.com', 'Rabat', 'Point', '-6.84369,33.996'),
(314, '5a0c6b90fd3eb67969316de6', 'http://placehold.it/150x150', 'Marvane', 'leilaware@marvane.com', 'Rabat', 'Point', '-6.78614,33.93422'),
(315, '5a0c6b90fd3eb67969316de7', 'http://placehold.it/150x150', 'Biotica', 'leilaware@biotica.com', 'Rabat', 'Point', '-6.8324,33.80065'),
(316, '5a0c6b90fd3eb67969316de8', 'http://placehold.it/150x150', 'Apex', 'leilaware@apex.com', 'Rabat', 'Point', '-6.8374,33.84035'),
(317, '5a0c6b90fd3eb67969316de9', 'http://placehold.it/150x150', 'Sustenza', 'leilaware@sustenza.com', 'Rabat', 'Point', '-6.81866,33.80756'),
(318, '5a0c6b90fd3eb67969316dea', 'http://placehold.it/150x150', 'Dreamia', 'leilaware@dreamia.com', 'Rabat', 'Point', '-6.79713,33.93098'),
(319, '5a0c6bd5fd3eb67969316deb', 'http://placehold.it/150x150', 'Concility', 'leilaware@concility.com', 'Rabat', 'Point', '-6.78478,33.96255'),
(320, '5a0c6bd5fd3eb67969316dec', 'http://placehold.it/150x150', 'Cogentry', 'leilaware@cogentry.com', 'Rabat', 'Point', '-6.83578,33.87532'),
(321, '5a0c6bd5fd3eb67969316ded', 'http://placehold.it/150x150', 'Zounds', 'leilaware@zounds.com', 'Rabat', 'Point', '-6.84032,33.96739'),
(322, '5a0c6bd5fd3eb67969316dee', 'http://placehold.it/150x150', 'Unq', 'leilaware@unq.com', 'Rabat', 'Point', '-6.76689,33.99387'),
(323, '5a0c6bd5fd3eb67969316def', 'http://placehold.it/150x150', 'Accusage', 'leilaware@accusage.com', 'Rabat', 'Point', '-6.75127,33.85952'),
(324, '5a0c6bd5fd3eb67969316df0', 'http://placehold.it/150x150', 'Corecom', 'leilaware@corecom.com', 'Rabat', 'Point', '-6.76395,33.9013'),
(325, '5a0c6bd5fd3eb67969316df1', 'http://placehold.it/150x150', 'Incubus', 'leilaware@incubus.com', 'Rabat', 'Point', '-6.8362,33.92331'),
(326, '5a0c6bd5fd3eb67969316df2', 'http://placehold.it/150x150', 'Venoflex', 'leilaware@venoflex.com', 'Rabat', 'Point', '-6.79674,33.88383'),
(327, '5a0c6bd5fd3eb67969316df3', 'http://placehold.it/150x150', 'Slambda', 'leilaware@slambda.com', 'Rabat', 'Point', '-6.84344,33.98877'),
(328, '5a0c6bd5fd3eb67969316df4', 'http://placehold.it/150x150', 'Ecraze', 'leilaware@ecraze.com', 'Rabat', 'Point', '-6.77147,33.8815'),
(329, '5a0c6bd5fd3eb67969316df5', 'http://placehold.it/150x150', 'Bullzone', 'leilaware@bullzone.com', 'Rabat', 'Point', '-6.81043,33.8252'),
(330, '5a0c6bd5fd3eb67969316df6', 'http://placehold.it/150x150', 'Enomen', 'leilaware@enomen.com', 'Rabat', 'Point', '-6.84344,33.95215'),
(331, '5a0c6bd5fd3eb67969316df7', 'http://placehold.it/150x150', 'Isoswitch', 'leilaware@isoswitch.com', 'Rabat', 'Point', '-6.759,33.86044'),
(332, '5a0c6bd5fd3eb67969316df8', 'http://placehold.it/150x150', 'Extragene', 'leilaware@extragene.com', 'Rabat', 'Point', '-6.81924,33.9895'),
(333, '5a0c6bd5fd3eb67969316df9', 'http://placehold.it/150x150', 'Eyeris', 'leilaware@eyeris.com', 'Rabat', 'Point', '-6.75822,33.93273'),
(334, '5a0c6bd5fd3eb67969316dfa', 'http://placehold.it/150x150', 'Verton', 'leilaware@verton.com', 'Rabat', 'Point', '-6.79216,33.81497'),
(335, '5a0c6bd5fd3eb67969316dfb', 'http://placehold.it/150x150', 'Conjurica', 'leilaware@conjurica.com', 'Rabat', 'Point', '-6.75162,33.91917'),
(336, '5a0c6bd5fd3eb67969316dfc', 'http://placehold.it/150x150', 'Sulfax', 'leilaware@sulfax.com', 'Rabat', 'Point', '-6.80167,33.9546'),
(337, '5a0c6bd5fd3eb67969316dfd', 'http://placehold.it/150x150', 'Bleendot', 'leilaware@bleendot.com', 'Rabat', 'Point', '-6.83393,33.92647'),
(338, '5a0c6bd5fd3eb67969316dfe', 'http://placehold.it/150x150', 'Kineticut', 'leilaware@kineticut.com', 'Rabat', 'Point', '-6.83193,33.98657'),
(339, '5a0c6bd5fd3eb67969316dff', 'http://placehold.it/150x150', 'Petigems', 'leilaware@petigems.com', 'Rabat', 'Point', '-6.76126,33.87188'),
(340, '5a0c6bd5fd3eb67969316e00', 'http://placehold.it/150x150', 'Adornica', 'leilaware@adornica.com', 'Rabat', 'Point', '-6.77999,33.84045'),
(341, '5a0c6bd5fd3eb67969316e01', 'http://placehold.it/150x150', 'Injoy', 'leilaware@injoy.com', 'Rabat', 'Point', '-6.76078,33.86574'),
(342, '5a0c6bd5fd3eb67969316e02', 'http://placehold.it/150x150', 'Flexigen', 'leilaware@flexigen.com', 'Rabat', 'Point', '-6.74693,33.83824');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'hakim', 'JRamlUy_nL4TNKN5RYJGv4xP8WCRXj39', '$2y$13$PvZEdj0WjF2MchkUtujR5O3baSrwANR6q40yv.VfDWdszf6r8kHSS', NULL, 'benallouhakim0@gmail.com', 10, 1513440751, 1513440751);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `like_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `like_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
