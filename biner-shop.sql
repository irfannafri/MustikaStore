-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2015 at 06:39 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `biner-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_settings`
--

CREATE TABLE IF NOT EXISTS `all_settings` (
`all_id` int(3) NOT NULL,
  `all_name_settings` varchar(60) NOT NULL,
  `all_value_settings` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `all_settings`
--

INSERT INTO `all_settings` (`all_id`, `all_name_settings`, `all_value_settings`) VALUES
(1, 'footer', 'Copyright © Binercenter.com 2015'),
(2, 'site_name', 'Biner Shop V.1');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
`gro_id` tinyint(1) NOT NULL,
  `gro_name` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`gro_id`, `gro_name`) VALUES
(1, 'admin'),
(2, 'c_admin'),
(3, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
`id` int(16) NOT NULL,
  `data` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `user_id` int(10) NOT NULL,
  `status` enum('paid','confirmed','unpaid','canceled','expired') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10001008 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(16) NOT NULL,
  `invoice_id` int(16) NOT NULL,
  `product_id` int(16) NOT NULL,
  `product_type` varchar(60) NOT NULL,
  `product_title` varchar(60) NOT NULL,
  `qty` int(3) NOT NULL,
  `price` int(9) NOT NULL,
  `options` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10001011 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`pro_id` int(16) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_title` varchar(20) NOT NULL,
  `pro_description` text NOT NULL,
  `pro_price` int(9) NOT NULL,
  `pro_stock` int(3) NOT NULL,
  `pro_image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `pro_name`, `pro_title`, `pro_description`, `pro_price`, `pro_stock`, `pro_image`) VALUES
(6, 'Kopi-Gayo', 'Kopi', 'Kopi Gayo', 6, 3, 'Untitled.jpg'),
(7, 'Baju', 'Kaos Motif', 'Kerang Gayo', 90, 55, '12.jpg'),
(8, 'Baju', 'Jean', 'Jaket Jean', 300, 3, 'Hydrangeas.jpg'),
(9, 'Kopi-Gayo', 'Lakun Kopi', 'Arabika Specialty', 140000, 54, 'Lighthouse.jpg'),
(10, 'Mobile', 'Nokia', 'Jadul', 16000, 32, 'Tulips.jpg'),
(11, 'Baju', 'Koko', 'sda', 23344, 23, 'Chrysanthemum.jpg'),
(12, 'Jean', 'Celana', 'sdsfs', 100000, 6, 'Penguins.jpg'),
(13, 'Jean', 'Ponggol', 'sfsdf', 90000, 5, 'Jellyfish.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
`rep_id` int(9) NOT NULL,
  `rep_name` varchar(60) NOT NULL,
  `rep_id_product` int(9) NOT NULL,
  `rep_title_product` varchar(60) NOT NULL,
  `rep_usr_name` varchar(60) NOT NULL,
  `rep_usr_group` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shop_session`
--

CREATE TABLE IF NOT EXISTS `shop_session` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_session`
--

INSERT INTO `shop_session` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('02454e56bc6f927d45564b16c46c04d286d98965', '::1', 1431592465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539323436353b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('03f1ca4ae4eaa23830e2569099eeb20cb6045536', '::1', 1431590570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539303537303b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('0438ebe740ef806609b5d6dd135c4981bc0bafaa', '::1', 1431437437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313433373330313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('046c05f2a9187acac03303698c15e208cf350482', '::1', 1431443332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434333333323b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('051d211843fe99001c21fa82fe1364ff433b59c2', '::1', 1431434676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313433343637363b),
('0721f2ca412df8fae13d524bdafd1a2441a07b6b', '::1', 1431440779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434303737383b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('07c392963a173889c20875600e30fecfb4f427df', '::1', 1431443024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434333032343b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('09e7b9ea74d4ac11171c35787f7ad1c05deabc77', '::1', 1431479138, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437393133383b),
('0ddbea21505ad502b118e7e7c54c93d06727d40e', '::1', 1437490161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433373439303136303b),
('1340e33c8ea519717cd46daca6ecfc9dcfa375ba', '::1', 1431468170, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313436383135313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('1466bcd61bdd1e9787a6ed6c2e554a7a8611636f', '::1', 1431597986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539373938363b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('162bb9759b4dfcbea5c12ccb6068efe82a1f14e4', '::1', 1431498777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313439383737373b),
('17f5f3925d03c2daede0bd25ebe29d1e6fe7c763', '::1', 1434896373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433343839363337333b),
('1c1b3d322391a9f228e62d86ad37182088626a2b', '::1', 1431402532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313430323533323b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('1ea4c8628c928e81231728cd714bb9b957ed0e5f', '::1', 1431599312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539393331323b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('1f6b51ae90cf2b18dd633218a6ca9c1ce0ffe84c', '::1', 1431478322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437383332323b),
('2523b762386d5ebd51b4dc16a79c3d040f93ad57', '::1', 1431505248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313530353234383b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('258eddbee06e42db2c05d3610a96ad876de5cf2d', '::1', 1431474569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437343536393b),
('2748555a8c3b2dbc0fba9546d573cc81ebd49315', '::1', 1431599627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539393632373b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('28466f419050238b73087b1f36bdbcefb64ef754', '::1', 1431446036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434363033363b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('2847d0b5daf905ed1c96d84d0a4e897194ca2014', '::1', 1431475428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437353432383b),
('296625390a9642115c1551a16c0c32c1617a2276', '::1', 1431593086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539333038363b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('29c2a80deefd93bcf7d1ad0b18df8dc929450bc9', '::1', 1431402958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313430323935383b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('3155252182db4e876c2e4d200a935297661282c2', '::1', 1431500722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313530303731333b),
('357a8722c15f2f13a4bd665968454f99cb5dff94', '::1', 1438699504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383639393530333b),
('362a74fdaac886c0b5fd05e82b321616ea0c8e69', '::1', 1431595571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539353537313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('3761da4ca6ba969650b2feed93f9ba28d85f7ad2', '::1', 1431484321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313438343332313b),
('38d9a58d2365fbcd834165945dd5cf7ba4fbee11', '::1', 1431501535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313530313533353b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('392329059a3c949f6074610c4d85ac738dc0ce10', '::1', 1431445444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434353433333b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('3b47abec60a0a9465a28785f7803a032f3f497c7', '::1', 1431596552, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539363535323b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('412e7e3cfff901be348a108afab41a87d77ff2a2', '::1', 1431445734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434353733343b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('437e4882a8383de2f28cd42ead8d9cb2b00c3802', '::1', 1431442274, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434323237343b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('4cab25a5064392e444813238e644c3367feaf0d4', '::1', 1431696158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313639363036333b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3134313030303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226138376666363739613266336537316439313831613637623735343231323263223b613a373a7b733a323a226964223b733a313a2234223b733a333a22717479223b643a313b733a353a227072696365223b643a34353030303b733a343a226e616d65223b733a363a224d6f62696c65223b733a353a227469746c65223b733a31363a224854432073656e736174696f6e20584c223b733a353a22726f776964223b733a33323a226138376666363739613266336537316439313831613637623735343231323263223b733a383a22737562746f74616c223b643a34353030303b7d733a33323a226534646133623766626263653233343564373737326230363734613331386435223b613a373a7b733a323a226964223b733a313a2235223b733a333a22717479223b643a313b733a353a227072696365223b643a34363030303b733a343a226e616d65223b733a363a224d6f62696c65223b733a353a227469746c65223b733a383a224970686f6e652036223b733a353a22726f776964223b733a33323a226534646133623766626263653233343564373737326230363734613331386435223b733a383a22737562746f74616c223b643a34363030303b7d733a33323a226338316537323864396434633266363336663036376638396363313438363263223b613a373a7b733a323a226964223b733a313a2232223b733a333a22717479223b643a313b733a353a227072696365223b643a35303030303b733a343a226e616d65223b733a363a224c6170746f70223b733a353a227469746c65223b733a373a22546f7368696261223b733a353a22726f776964223b733a33323a226338316537323864396434633266363336663036376638396363313438363263223b733a383a22737562746f74616c223b643a35303030303b7d7d),
('4cf954448710936feded1525f039eded3725de66', '::1', 1431574103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313537343130333b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('4d54e7e95ffc6e09081449ad953f752ec28d8bd4', '::1', 1431501839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313530313833393b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('4f017c5ff451ce5fb8f0c22247203c1fe8fd25c8', '::1', 1431480671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313438303637313b),
('4f06b55a56fdf1e66aecda072eddc028d323027a', '::1', 1431473987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437333938373b),
('506a311d426ef4b6da4be8ab7ab58d4eb4c2c6c6', '::1', 1431485705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313438353636393b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('5204b6284ed0868ad400e0677a0e6b0a69b31e60', '::1', 1431435109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313433353130313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('522fd3cedd3078fc5465c33e324aa0f7e7451630', '::1', 1431606066, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313630363036363b),
('56896a05abced275b9cd8a8e57f4deebe1982220', '::1', 1431477289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437373238393b),
('5a89743972fe57c6d67d6bdfec5ba43d89828abd', '::1', 1431504581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313530343538313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('5cc5603e5d73f5f14b36be748f92e9a5710487bc', '::1', 1431763235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313736333233353b),
('5d7d3acf146549e706e4105f894b3c7ec3572409', '::1', 1431505864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313530353836343b),
('61a806bda81696045d21ccec8b4fe58317561060', '::1', 1431480264, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313438303236343b),
('635e04c34ed3f903ff7353531ccb4be37192c9d3', '::1', 1431598978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539383937383b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('637fd0e9452e8e9f65c26972dfb78de50847f8b8', '::1', 1431432223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313433323232333b),
('666d5b60ea230720eea5e45a87e5413207bddbcd', '::1', 1431444366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434343336363b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('73c87c37832a57603235528d4ba6d752df7c6e0d', '::1', 1431696380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313639363336373b757365726e616d657c733a393a22456d616b42696e6572223b67726f75707c733a313a2233223b),
('7bd3c0c636bc020cc4b8e4f201bb09a56f6fa34c', '::1', 1431422453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313432323435333b),
('7cb5aead3d7a7bea34af771ed5ca602f4dbdda12', '::1', 1431470791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437303739313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('7dfae9c5148874baa2b311f2188986e69189afb4', '::1', 1431403295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313430333238383b757365726e616d657c733a343a2264796161223b67726f75707c733a313a2233223b),
('7ea957ce6540d596fd4c7f7cd236995b8ba5db36', '::1', 1431422755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313432323735353b),
('800b64d7cc1147f04b6cfc9ba984fc793dd5a732', '::1', 1431433759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313433333735393b),
('8b810323020c4ed07af840fc9a17a45f0b739151', '::1', 1431596148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539363134383b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('8fda1a3f60155b8e1f6f4d595ae481ea4e238655', '::1', 1431433442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313433333434323b),
('90d648361e975eed85c4b12072d1f1f5455cb4a3', '::1', 1431500043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313530303034333b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a32333634343b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b613a373a7b733a323a226964223b733a323a223131223b733a333a22717479223b643a313b733a353a227072696365223b643a32333334343b733a343a226e616d65223b733a343a2242616a75223b733a353a227469746c65223b733a343a224b6f6b6f223b733a353a22726f776964223b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b733a383a22737562746f74616c223b643a32333334343b7d733a33323a226339663066383935666239386162393135396635316664303239376532333664223b613a373a7b733a323a226964223b733a313a2238223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a343a2242616a75223b733a353a227469746c65223b733a343a224a65616e223b733a353a22726f776964223b733a33323a226339663066383935666239386162393135396635316664303239376532333664223b733a383a22737562746f74616c223b643a3330303b7d7d),
('91b4137b185ba3385b61637b24dc78417a4fcd76', '::1', 1431478753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437383735333b),
('94db78eb08374ce427801018ab2b47d5958902e6', '::1', 1431593435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539333433353b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('99973379fd42136c97146b3b3b250a0ed7eb13bf', '::1', 1445056497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434353035363439313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('9bfd3b7f27446ef66d6e7141adfa32df47827570', '::1', 1433092269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433333039323236393b),
('9e345db250bafb464ed4f0e1d2ff2ba66ae87eb3', '::1', 1431607461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313630373436313b),
('9e67293e05a8650eee6831f6eb9d6f890f193d84', '::1', 1431401464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313430313435333b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('9e9314c7944092f4dad0a730b10aa95b04383215', '::1', 1431499234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313439393231363b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a32333634343b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b613a373a7b733a323a226964223b733a323a223131223b733a333a22717479223b643a313b733a353a227072696365223b643a32333334343b733a343a226e616d65223b733a343a2242616a75223b733a353a227469746c65223b733a343a224b6f6b6f223b733a353a22726f776964223b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b733a383a22737562746f74616c223b643a32333334343b7d733a33323a226339663066383935666239386162393135396635316664303239376532333664223b613a373a7b733a323a226964223b733a313a2238223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a343a2242616a75223b733a353a227469746c65223b733a343a224a65616e223b733a353a22726f776964223b733a33323a226339663066383935666239386162393135396635316664303239376532333664223b733a383a22737562746f74616c223b643a3330303b7d7d),
('9fddbf3a0eca77129df5b5584e11bff3af9bf85b', '::1', 1431442710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434323731303b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('a4af5232f68663f2d40a2bf61825dd090e7b172c', '::1', 1431421744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313432313734343b),
('a5c8f57adf75e265a81d440fba34678322386114', '::1', 1437491085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433373439313038353b),
('a6e90c8edad8ee49dc1c65285ce4937068d22b1a', '::1', 1431593805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539333830353b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('a8374deb9f671bafce7981a45576695387f301f0', '::1', 1431576289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313537363238393b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('ac069d28b0a5cd4e2e684145b583b33d5c37b33c', '::1', 1431443653, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434333635333b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('b0b9494fae4b68c884cf189695d063364422aabf', '::1', 1431423723, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313432333732333b),
('b263aebf39ed1ab9941528832286d61583a180fa', '::1', 1431589636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313538393633303b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('b31328c64b0d94ac84eb7a4d8f3455dd19c4677b', '::1', 1431437681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313433373638313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('b539c43abbbe149c45d8cfe5fe89244d04e670f8', '::1', 1431444698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434343639383b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('b6e20d644870275da99800d43e6c598ffc17d409', '::1', 1435068509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433353036383530383b),
('b88cbc6ec918edfb0ba2ee878ee58a206d38f83d', '::1', 1431470418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437303431383b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('b9cdb2f12aaea600ec1357c9108ffab9225a7a38', '::1', 1431444035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434343033353b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('ba77970fdcba38c925a75b105192c1b63e4818a9', '::1', 1431473063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437333036333b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('c0a34f960eb747f865a4a6ae49ada0947d244b7a', '127.0.0.1', 1431472461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437323436313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('c7d3d29749a3cf2f902963c9ace352c699550a8d', '::1', 1431472030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437323033303b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('c8acc25ab1e76ba3f83f885b827e326d82bb061b', '::1', 1431587864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313538373836343b),
('c97e1831226a09aac2e55c1f3e65cba57cf4de38', '::1', 1431441556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434313535363b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('ca8a42d8257d354d97bb350537b9a11870ad6339', '::1', 1431441093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434313039333b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('cb5feea5e617c6bfbda397caf53afb5bac3f0345', '::1', 1431403706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313430333730303b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('d16565fb973a692c79378b142d5d3a3d508809dc', '::1', 1431501222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313530313136333b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('d4705ac6d40f83af16c93ff74acec2ccb1214842', '::1', 1431598352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539383335323b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('d89bb983993d01977f86ad140448e900d8ceffb8', '::1', 1431471590, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437313539303b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('d98f7f821117d6ae270850963ac5240042c261e7', '::1', 1431422998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313432323939383b),
('daafbf8a5b6105a454eb9fa4a9d78aafdad4e191', '127.0.0.1', 1431473680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437333638303b),
('e01a9b134f01c1e3b25190ad8d8bcdce19427459', '::1', 1431479909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437393930393b),
('e17aa461162d47bcb574eb5cbcfc95f25c4d0825', '::1', 1431571755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313537313735343b),
('e2f1982fa35b983c6cc220b0d09e3cafd0062c78', '::1', 1431594752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539343735323b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('e41caed2d173a3435e828415652593d2f4da80b5', '::1', 1431421430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313432313433303b),
('e5aef612449fcdcc30d33723ac79ee9e255e4b79', '::1', 1431401761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313430313736313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('e6df65c2faa9b3abeb8c7d3f65fc005e9c8cab0e', '::1', 1432895972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433323839353937313b),
('e7fa541dd9636cf116aa76e7bf77ad3cf52376a6', '::1', 1431597660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539373636303b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('e82ba570bb7a20e628c587fba64f1ea20067c4da', '::1', 1431504917, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313530343931373b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('e934ac1fc8f670810382536a1e89768f4a93a8d0', '::1', 1431499698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313439393639383b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a32333634343b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b613a373a7b733a323a226964223b733a323a223131223b733a333a22717479223b643a313b733a353a227072696365223b643a32333334343b733a343a226e616d65223b733a343a2242616a75223b733a353a227469746c65223b733a343a224b6f6b6f223b733a353a22726f776964223b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b733a383a22737562746f74616c223b643a32333334343b7d733a33323a226339663066383935666239386162393135396635316664303239376532333664223b613a373a7b733a323a226964223b733a313a2238223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a343a2242616a75223b733a353a227469746c65223b733a343a224a65616e223b733a353a22726f776964223b733a33323a226339663066383935666239386162393135396635316664303239376532333664223b733a383a22737562746f74616c223b643a3330303b7d7d),
('ea8a533be4cf22230885e3a8b1c5a2c78ecbbd4c', '::1', 1431441887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313434313838373b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('eca9a63d47d95fbc14cf837dfc76bd70a75cc794', '::1', 1431597056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313539373035363b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('ed5cf2b24f5baba138fd78588d598c01ed844a16', '127.0.0.1', 1431486257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313438363231393b757365726e616d657c733a363a226361646d696e223b67726f75707c733a313a2232223b),
('f23970fba303687223a277a9bf6bb52cf99ef969', '::1', 1431432992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313433323939323b),
('f468ad1945e953ec06c521f7d55d31f74adea89f', '::1', 1431498403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313439383430333b),
('f508ac879ab82eb9a20378880a6e9bf010259d86', '::1', 1431573499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313537333439333b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('f55e7d485efeaf1e0e635f6da1cb5c66f5acba19', '::1', 1431468753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313436383735333b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('f6a72c5c29a746560b203ce0a062cd39fc53d01b', '::1', 1431470090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437303039303b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('f70b24c9cf4844db9a494cea3b761cdbfb486c90', '::1', 1433092745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433333039323732323b757365726e616d657c733a353a2242696e6572223b67726f75707c733a313a2233223b),
('f8b52d60ce87f83174b00a97c6ac676a0a90c4b6', '::1', 1431589990, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313538393939303b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('faded44d12eebad25ce0156005942bf25d7ee138', '::1', 1431479539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313437393533393b),
('fbc237f9e82f42cf500483c5129ba95fdf469317', '::1', 1431436900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313433363930303b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('fd18d01a969a6f1865543b7d2725949cc05e8f90', '::1', 1431500368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313530303336383b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a32333634343b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b613a373a7b733a323a226964223b733a323a223131223b733a333a22717479223b643a313b733a353a227072696365223b643a32333334343b733a343a226e616d65223b733a343a2242616a75223b733a353a227469746c65223b733a343a224b6f6b6f223b733a353a22726f776964223b733a33323a223635313262643433643963616136653032633939306230613832363532646361223b733a383a22737562746f74616c223b643a32333334343b7d733a33323a226339663066383935666239386162393135396635316664303239376532333664223b613a373a7b733a323a226964223b733a313a2238223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a343a2242616a75223b733a353a227469746c65223b733a343a224a65616e223b733a353a22726f776964223b733a33323a226339663066383935666239386162393135396635316664303239376532333664223b733a383a22737562746f74616c223b643a3330303b7d7d),
('ff3a08b14c1404b3e5b2d676ba96633056fb6a4f', '::1', 1431469107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313436393130373b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b),
('ffe8db00bef9128a8fed7f414ac2dede7e097967', '::1', 1431505561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433313530353536313b757365726e616d657c733a353a2261646d696e223b67726f75707c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`usr_id` int(10) NOT NULL,
  `usr_name` varchar(25) NOT NULL,
  `usr_password` varchar(60) NOT NULL,
  `usr_group` tinyint(1) NOT NULL,
  `stuts` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usr_id`, `usr_name`, `usr_password`, `usr_group`, `stuts`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1),
(4, 'Biner', 'e10adc3949ba59abbe56e057f20f883e', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_settings`
--
ALTER TABLE `all_settings`
 ADD PRIMARY KEY (`all_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
 ADD PRIMARY KEY (`gro_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
 ADD PRIMARY KEY (`rep_id`);

--
-- Indexes for table `shop_session`
--
ALTER TABLE `shop_session`
 ADD PRIMARY KEY (`id`), ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_settings`
--
ALTER TABLE `all_settings`
MODIFY `all_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
MODIFY `gro_id` tinyint(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10001008;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10001011;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `pro_id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
MODIFY `rep_id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `usr_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
